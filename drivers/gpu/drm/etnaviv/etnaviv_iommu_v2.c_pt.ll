; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.etnaviv_iommuv2_context = type { %struct.etnaviv_iommu_context, i16, ptr, i32, [1024 x ptr], [1024 x i32] }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.77 }
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@etnaviv_iommuv2_ops = dso_local local_unnamed_addr constant %struct.etnaviv_iommu_ops { ptr null, ptr @etnaviv_iommuv2_free, ptr @etnaviv_iommuv2_map, ptr @etnaviv_iommuv2_unmap, ptr @etnaviv_iommuv2_dump_size, ptr @etnaviv_iommuv2_dump, ptr @etnaviv_iommuv2_restore }, align 4
@etnaviv_iommuv2_context_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [15 x i8] c"&context->lock\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_iommu_v2.c\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unhandled GPU security mode\0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_iommuv2_get_mtlb_addr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @etnaviv_iommuv2_get_pta_id(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 1
  %3 = load i16, ptr %2, align 8
  ret i16 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_iommuv2_free(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 4
  tail call void @drm_mm_takedown(ptr noundef %2) #8
  %3 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %14, %1
  %5 = phi i32 [ 0, %1 ], [ %15, %14 ]
  %6 = getelementptr %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 4, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %3, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 5, i32 %5
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef 4096, ptr noundef nonnull %7, i32 noundef %13, i32 noundef 4) #8
  br label %14

14:                                               ; preds = %9, %4
  %15 = add nuw nsw i32 %5, 1
  %16 = icmp eq i32 %15, 1024
  br i1 %16, label %17, label %4

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 3
  %23 = load i32, ptr %22, align 8
  tail call void @dma_free_attrs(ptr noundef %19, i32 noundef 4096, ptr noundef %21, i32 noundef %23, i32 noundef 4) #8
  %24 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 1
  %25 = load i16, ptr %24, align 8
  %26 = zext i16 %25 to i32
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %27, i32 0, i32 8, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %26, ptr noundef %28) #8
  tail call void @vfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @etnaviv_iommuv2_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
  %6 = icmp eq i32 %3, 4096
  br i1 %6, label %7, label %36

7:                                                ; preds = %5
  %8 = and i32 %4, 2
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 1, i32 5
  %11 = or i32 %10, %2
  %12 = lshr i32 %1, 22
  %13 = getelementptr %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 4, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 5, i32 %12
  %21 = tail call ptr @dma_alloc_attrs(ptr noundef %19, i32 noundef 4096, ptr noundef %20, i32 noundef 3264, i32 noundef 4) #8
  store ptr %21, ptr %13, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %16
  %24 = tail call ptr @__memset32(ptr noundef nonnull %21, i32 noundef 2, i32 noundef 4096) #8
  %25 = load i32, ptr %20, align 4
  %26 = or i32 %25, 1
  %27 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i32, ptr %28, i32 %12
  store i32 %26, ptr %29, align 4
  %30 = load ptr, ptr %13, align 4
  br label %31

31:                                               ; preds = %23, %7
  %32 = phi ptr [ %30, %23 ], [ %14, %7 ]
  %33 = lshr i32 %1, 12
  %34 = and i32 %33, 1023
  %35 = getelementptr i32, ptr %32, i32 %34
  store i32 %11, ptr %35, align 4
  br label %36

36:                                               ; preds = %31, %16, %5
  %37 = phi i32 [ 0, %31 ], [ -22, %5 ], [ -12, %16 ]
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @etnaviv_iommuv2_unmap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 4096
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = lshr i32 %1, 22
  %7 = lshr i32 %1, 12
  %8 = and i32 %7, 1023
  %9 = getelementptr %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 4, i32 %6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i32, ptr %10, i32 %8
  store i32 2, ptr %11, align 4
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i32 [ 4096, %5 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @etnaviv_iommuv2_dump_size(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ 0, %1 ], [ %13, %4 ]
  %6 = phi i32 [ 4096, %1 ], [ %12, %4 ]
  %7 = getelementptr i32, ptr %3, i32 %5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = add i32 %6, 4096
  %12 = select i1 %10, i32 %6, i32 %11
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, 1024
  br i1 %14, label %15, label %4

15:                                               ; preds = %4
  ret i32 %12
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_iommuv2_dump(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(4096) %1, ptr noundef align 4 dereferenceable(4096) %4, i32 4096, i1 false)
  %5 = getelementptr i8, ptr %1, i32 4096
  br label %6

6:                                                ; preds = %18, %2
  %7 = phi i32 [ 0, %2 ], [ %20, %18 ]
  %8 = phi ptr [ %5, %2 ], [ %19, %18 ]
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i32, ptr %9, i32 %7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr %struct.etnaviv_iommuv2_context, ptr %0, i32 0, i32 4, i32 %7
  %16 = load ptr, ptr %15, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(4096) %8, ptr noundef align 4 dereferenceable(4096) %16, i32 4096, i1 false)
  %17 = getelementptr i8, ptr %8, i32 4096
  br label %18

18:                                               ; preds = %14, %6
  %19 = phi ptr [ %17, %14 ], [ %8, %6 ]
  %20 = add nuw nsw i32 %7, 1
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %6

22:                                               ; preds = %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @etnaviv_iommuv2_restore(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %102 [
    i32 0, label %5
    i32 1, label %40
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 396
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %103

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 30
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %14) #8
  br label %17

17:                                               ; preds = %16, %12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #8, !srcloc !10
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #8, !srcloc !11
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !12

21:                                               ; preds = %17
  %22 = add i32 %19, 1
  %23 = or i32 %22, %19
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %27, label %25, !prof !13

25:                                               ; preds = %21, %17
  %26 = phi i32 [ 2, %17 ], [ 1, %21 ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %26) #8
  br label %27

27:                                               ; preds = %25, %21
  store ptr %1, ptr %13, align 8
  %28 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %31, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = tail call zeroext i16 @etnaviv_buffer_config_mmuv2(ptr noundef %0, i32 noundef %29, i32 noundef %33) #8
  %35 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10
  %36 = tail call i32 @etnaviv_cmdbuf_get_pa(ptr noundef %35) #8
  tail call void @etnaviv_gpu_start_fe(ptr noundef %0, i32 noundef %36, i16 noundef zeroext %34) #8
  %37 = tail call i32 @etnaviv_gpu_wait_idle(ptr noundef %0, i32 noundef 100) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr i8, ptr %38, i32 396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #8, !srcloc !15
  br label %103

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 28
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr i8, ptr %42, i32 904
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #8, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !9
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %103

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 30
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void @etnaviv_iommu_context_put(ptr noundef nonnull %49) #8
  br label %52

52:                                               ; preds = %51, %47
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #8, !srcloc !10
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #8, !srcloc !11
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56, !prof !12

56:                                               ; preds = %52
  %57 = add i32 %54, 1
  %58 = or i32 %57, %54
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %62, label %60, !prof !13

60:                                               ; preds = %56, %52
  %61 = phi i32 [ 2, %52 ], [ 1, %56 ]
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef %61) #8
  br label %62

62:                                               ; preds = %60, %56
  store ptr %1, ptr %48, align 8
  %63 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %1, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %64, i32 0, i32 8, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %67 = load ptr, ptr %41, align 8
  %68 = getelementptr i8, ptr %67, i32 908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #8, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %69 = load ptr, ptr %41, align 8
  %70 = getelementptr i8, ptr %69, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 0) #8, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %71 = load ptr, ptr %41, align 8
  %72 = getelementptr i8, ptr %71, i32 916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 1) #8, !srcloc !15
  %73 = load ptr, ptr %63, align 4
  %74 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %73, i32 0, i32 6
  %75 = load i32, ptr %74, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %76 = load ptr, ptr %41, align 8
  %77 = getelementptr i8, ptr %76, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #8, !srcloc !15
  %78 = load ptr, ptr %63, align 4
  %79 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %78, i32 0, i32 6
  %80 = load i32, ptr %79, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %81 = load ptr, ptr %41, align 8
  %82 = getelementptr i8, ptr %81, i32 924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #8, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %83 = load ptr, ptr %41, align 8
  %84 = getelementptr i8, ptr %83, i32 928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #8, !srcloc !15
  %85 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %1, i32 0, i32 3
  %86 = load i32, ptr %85, align 8
  %87 = zext i32 %86 to i64
  %88 = load ptr, ptr %63, align 4
  %89 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %88, i32 0, i32 8
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %1, i32 0, i32 1
  %92 = load i16, ptr %91, align 8
  %93 = zext i16 %92 to i32
  %94 = getelementptr i64, ptr %90, i32 %93
  store i64 %87, ptr %94, align 8
  %95 = load i16, ptr %91, align 8
  %96 = tail call zeroext i16 @etnaviv_buffer_config_pta(ptr noundef %0, i16 noundef zeroext %95) #8
  %97 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10
  %98 = tail call i32 @etnaviv_cmdbuf_get_pa(ptr noundef %97) #8
  tail call void @etnaviv_gpu_start_fe(ptr noundef %0, i32 noundef %98, i16 noundef zeroext %96) #8
  %99 = tail call i32 @etnaviv_gpu_wait_idle(ptr noundef %0, i32 noundef 100) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %100 = load ptr, ptr %41, align 8
  %101 = getelementptr i8, ptr %100, i32 904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 1) #8, !srcloc !15
  br label %103

102:                                              ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 255, i32 noundef 9, ptr noundef nonnull @.str.2) #8
  br label %103

103:                                              ; preds = %102, %62, %40, %27, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @etnaviv_iommuv2_context_alloc(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call noalias ptr @vzalloc(i32 noundef 8560) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %0, i32 0, i32 8, i32 0, i32 3
  %8 = tail call i32 @_find_first_zero_bit_le(ptr noundef %7, i32 noundef 512) #8
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %2, i32 0, i32 1
  store i16 %9, ptr %10, align 8
  %11 = and i32 %8, 65535
  %12 = icmp ult i32 %11, 512
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  tail call void @_set_bit(i32 noundef %11, ptr noundef %7) #8
  tail call void @mutex_unlock(ptr noundef %5) #8
  %14 = load ptr, ptr %0, align 4
  %15 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %2, i32 0, i32 3
  %16 = tail call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef 4096, ptr noundef %15, i32 noundef 3264, i32 noundef 4) #8
  %17 = getelementptr inbounds %struct.etnaviv_iommuv2_context, ptr %2, i32 0, i32 2
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %33, label %20

19:                                               ; preds = %4
  tail call void @mutex_unlock(ptr noundef %5) #8
  br label %36

20:                                               ; preds = %13
  %21 = tail call ptr @__memset32(ptr noundef nonnull %16, i32 noundef 2, i32 noundef 4096) #8
  %22 = load i32, ptr %15, align 8
  %23 = zext i32 %22 to i64
  %24 = load ptr, ptr %6, align 4
  %25 = load i16, ptr %10, align 8
  %26 = zext i16 %25 to i32
  %27 = getelementptr i64, ptr %24, i32 %26
  store i64 %23, ptr %27, align 8
  %28 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %2, i32 0, i32 1
  store ptr %0, ptr %28, align 4
  store volatile i32 1, ptr %2, align 4
  %29 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %2, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @etnaviv_iommuv2_context_alloc.__key) #8
  %30 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %2, i32 0, i32 3
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %2, i32 0, i32 3, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %2, i32 0, i32 4
  tail call void @drm_mm_init(ptr noundef %32, i64 noundef 4096, i64 noundef 4294963200) #8
  br label %37

33:                                               ; preds = %13
  %34 = load i16, ptr %10, align 8
  %35 = zext i16 %34 to i32
  tail call void @_clear_bit(i32 noundef %35, ptr noundef %7) #8
  br label %36

36:                                               ; preds = %33, %19
  tail call void @vfree(ptr noundef nonnull %2) #8
  br label %37

37:                                               ; preds = %36, %20, %1
  %38 = phi ptr [ %2, %20 ], [ null, %36 ], [ null, %1 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @etnaviv_buffer_config_mmuv2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gpu_start_fe(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_pa(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_wait_idle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @etnaviv_buffer_config_pta(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{i64 4959604}
!9 = !{i64 2155183974}
!10 = !{i64 369969, i64 2147859940, i64 2147859966, i64 2147860013, i64 2147860035, i64 2147860063, i64 2147860083}
!11 = !{i64 2147873610, i64 2147873642, i64 2147873671, i64 2147873705, i64 2147873736, i64 2147873759}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2155183348}
!15 = !{i64 4959186}
