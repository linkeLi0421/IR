; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_dump.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_dump.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.etnaviv_gem_submit = type { %struct.drm_sched_job, %struct.kref, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.etnaviv_cmdbuf, i8, i32, i32, i32, ptr, i32, [0 x %struct.etnaviv_gem_submit_bo] }
%struct.drm_sched_job = type { %struct.spsc_node, %struct.list_head, ptr, ptr, %union.anon.72, i64, %struct.atomic_t, i32, ptr, %struct.dma_fence_cb, %struct.xarray, i32 }
%struct.spsc_node = type { ptr }
%union.anon.72 = type { %struct.irq_work }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.rcuwait = type { ptr }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_gem_submit_bo = type { i32, i64, ptr, ptr, ptr, i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.etnaviv_dump_object_header = type { i32, i32, i32, i32, i64, [2 x i32] }
%struct.etnaviv_dump_registers = type { i32, i32 }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }

@__param_str_dump_core = internal constant [10 x i8] c"dump_core\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@etnaviv_dump_core = internal global i8 1, align 1
@__param_dump_core = internal constant %struct.kernel_param { ptr @__param_str_dump_core, ptr @__this_module, ptr @param_ops_bool, i16 384, i8 -1, i8 0, %union.anon.64 { ptr @etnaviv_dump_core } }, section "__param", align 4
@__UNIQUE_ID_dump_coretype279 = internal constant [24 x i8] c"parmtype=dump_core:bool\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [37 x i8] c"failed to allocate devcoredump file\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@etnaviv_dump_registers = internal unnamed_addr constant [37 x i16] [i16 12, i16 0, i16 4, i16 8, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 44, i16 52, i16 56, i16 112, i16 256, i16 260, i16 264, i16 268, i16 1024, i16 1028, i16 1032, i16 1036, i16 1040, i16 1044, i16 1048, i16 1052, i16 1056, i16 1060, i16 1064, i16 1068, i16 1152, i16 1628, i16 1632, i16 1636, i16 1640, i16 1644, i16 1648], align 2
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_dump_coretype279, ptr @__param_dump_core], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_core_dump(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = load i8, ptr @etnaviv_dump_core, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %214, label %6

6:                                                ; preds = %1
  store i8 0, ptr @etnaviv_dump_core, align 1
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 30
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %8, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %9) #6
  %10 = load ptr, ptr %7, align 8
  %11 = tail call i32 @etnaviv_iommu_dump_size(ptr noundef %10) #6
  %12 = add i32 %11, 296
  %13 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 10
  %14 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 10, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %12, %15
  %17 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 10
  %18 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 10, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %16, %19
  %21 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 16
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %24, %6
  %25 = phi i32 [ %35, %24 ], [ 0, %6 ]
  %26 = phi i32 [ %32, %24 ], [ %20, %6 ]
  %27 = phi i32 [ %34, %24 ], [ 0, %6 ]
  %28 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %25, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.drm_gem_object, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 8
  %32 = add i32 %31, %26
  %33 = lshr i32 %31, 12
  %34 = add i32 %33, %27
  %35 = add nuw i32 %25, 1
  %36 = icmp eq i32 %35, %22
  br i1 %36, label %37, label %24

37:                                               ; preds = %24
  %38 = add i32 %22, 5
  br label %39

39:                                               ; preds = %37, %6
  %40 = phi i32 [ 5, %6 ], [ %38, %37 ]
  %41 = phi i32 [ 0, %6 ], [ %34, %37 ]
  %42 = phi i32 [ %20, %6 ], [ %32, %37 ]
  %43 = icmp eq i32 %41, 0
  %44 = shl i32 %41, 3
  %45 = xor i1 %43, true
  %46 = zext i1 %45 to i32
  %47 = add i32 %40, %46
  %48 = add i32 %42, %44
  %49 = shl i32 %47, 5
  %50 = add i32 %48, %49
  %51 = tail call noalias ptr @__vmalloc(i32 noundef %50, i32 noundef 76992) #7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %39
  %54 = load ptr, ptr %7, align 8
  %55 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %54, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %55) #6
  %56 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str) #8
  br label %214

58:                                               ; preds = %39
  %59 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 %47
  %60 = ptrtoint ptr %59 to i32
  tail call void @llvm.memset.p0.i32(ptr nonnull align 8 %51, i8 0, i32 %49, i1 false)
  %61 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 28
  br label %62

62:                                               ; preds = %62, %58
  %63 = phi i32 [ 0, %58 ], [ %72, %62 ]
  %64 = phi ptr [ %59, %58 ], [ %73, %62 ]
  %65 = getelementptr [37 x i16], ptr @etnaviv_dump_registers, i32 0, i32 %63
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  store i32 %67, ptr %64, align 4
  %68 = load ptr, ptr %61, align 8
  %69 = getelementptr i8, ptr %68, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %71 = getelementptr inbounds %struct.etnaviv_dump_registers, ptr %64, i32 0, i32 1
  store i32 %70, ptr %71, align 4
  %72 = add nuw nsw i32 %63, 1
  %73 = getelementptr %struct.etnaviv_dump_registers, ptr %64, i32 1
  %74 = icmp eq i32 %72, 37
  br i1 %74, label %75, label %62

75:                                               ; preds = %62
  %76 = ptrtoint ptr %51 to i32
  store i32 1095652421, ptr %51, align 8
  %77 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %51, i32 0, i32 1
  store i32 0, ptr %77, align 4
  %78 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %51, i32 0, i32 2
  store i32 %49, ptr %78, align 8
  %79 = ptrtoint ptr %73 to i32
  %80 = sub i32 %79, %60
  %81 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %51, i32 0, i32 3
  store i32 %80, ptr %81, align 4
  %82 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 1
  %83 = getelementptr i8, ptr %59, i32 %80
  %84 = load ptr, ptr %7, align 8
  tail call void @etnaviv_iommu_dump(ptr noundef %84, ptr noundef %83) #6
  %85 = getelementptr i8, ptr %83, i32 %11
  store i32 1095652421, ptr %82, align 8
  %86 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 1, i32 1
  store i32 1, ptr %86, align 4
  %87 = ptrtoint ptr %83 to i32
  %88 = sub i32 %87, %76
  %89 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 1, i32 2
  store i32 %88, ptr %89, align 8
  %90 = ptrtoint ptr %85 to i32
  %91 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 1, i32 3
  store i32 %11, ptr %91, align 4
  %92 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 2
  %93 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 10, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = load i32, ptr %14, align 4
  %96 = load ptr, ptr %7, align 8
  %97 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %96, i32 0, i32 6
  %98 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %13, ptr noundef %97) #6
  %99 = zext i32 %98 to i64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %85, ptr align 1 %94, i32 %95, i1 false) #6
  %100 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 2, i32 4
  store i64 %99, ptr %100, align 8
  %101 = getelementptr i8, ptr %85, i32 %95
  store i32 1095652421, ptr %92, align 8
  %102 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 2, i32 1
  store i32 2, ptr %102, align 4
  %103 = sub i32 %90, %76
  %104 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 2, i32 2
  store i32 %103, ptr %104, align 8
  %105 = ptrtoint ptr %101 to i32
  %106 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 2, i32 3
  store i32 %95, ptr %106, align 4
  %107 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 3
  %108 = getelementptr inbounds %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 10, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = load i32, ptr %18, align 4
  %111 = load ptr, ptr %7, align 8
  %112 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %111, i32 0, i32 6
  %113 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %17, ptr noundef %112) #6
  %114 = zext i32 %113 to i64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %101, ptr align 1 %109, i32 %110, i1 false) #6
  %115 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 3, i32 4
  store i64 %114, ptr %115, align 8
  %116 = getelementptr i8, ptr %101, i32 %110
  store i32 1095652421, ptr %107, align 8
  %117 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 3, i32 1
  store i32 3, ptr %117, align 4
  %118 = sub i32 %105, %76
  %119 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 3, i32 2
  store i32 %118, ptr %119, align 8
  %120 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 3, i32 3
  store i32 %110, ptr %120, align 4
  %121 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 4
  %122 = load ptr, ptr %7, align 8
  %123 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %122, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %123) #6
  br i1 %43, label %132, label %124

124:                                              ; preds = %75
  %125 = ptrtoint ptr %116 to i32
  tail call void @llvm.memset.p0.i32(ptr align 8 %116, i8 0, i32 %44, i1 false)
  %126 = getelementptr i64, ptr %116, i32 %41
  store i32 1095652421, ptr %121, align 8
  %127 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 4, i32 1
  store i32 4, ptr %127, align 4
  %128 = sub i32 %125, %76
  %129 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 4, i32 2
  store i32 %128, ptr %129, align 8
  %130 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 4, i32 3
  store i32 %44, ptr %130, align 4
  %131 = getelementptr %struct.etnaviv_dump_object_header, ptr %51, i32 5
  br label %132

132:                                              ; preds = %124, %75
  %133 = phi ptr [ %121, %75 ], [ %131, %124 ]
  %134 = phi ptr [ %116, %75 ], [ %126, %124 ]
  %135 = phi ptr [ null, %75 ], [ %116, %124 ]
  %136 = load i32, ptr %21, align 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %204, label %138

138:                                              ; preds = %132
  %139 = ptrtoint ptr %135 to i32
  br label %140

140:                                              ; preds = %191, %138
  %141 = phi i32 [ 0, %138 ], [ %201, %191 ]
  %142 = phi ptr [ %135, %138 ], [ %181, %191 ]
  %143 = phi ptr [ %134, %138 ], [ %194, %191 ]
  %144 = phi ptr [ %133, %138 ], [ %200, %191 ]
  %145 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %141, i32 2
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr %struct.etnaviv_gem_submit, ptr %0, i32 0, i32 17, i32 %141, i32 3
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %146, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %149) #6
  %150 = tail call ptr @etnaviv_gem_get_pages(ptr noundef %146) #6
  tail call void @mutex_unlock(ptr noundef %149) #6
  %151 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  br i1 %151, label %180, label %152

152:                                              ; preds = %140
  %153 = ptrtoint ptr %142 to i32
  %154 = sub i32 %153, %139
  %155 = ashr exact i32 %154, 3
  %156 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %144, i32 0, i32 5
  store i32 %155, ptr %156, align 8
  %157 = getelementptr inbounds %struct.drm_gem_object, ptr %146, i32 0, i32 5
  %158 = load i32, ptr %157, align 8
  %159 = icmp ult i32 %158, 4096
  br i1 %159, label %180, label %160

160:                                              ; preds = %160, %152
  %161 = phi i32 [ %176, %160 ], [ 0, %152 ]
  %162 = phi ptr [ %164, %160 ], [ %150, %152 ]
  %163 = phi ptr [ %175, %160 ], [ %142, %152 ]
  %164 = getelementptr ptr, ptr %162, i32 1
  %165 = load ptr, ptr %162, align 4
  %166 = load ptr, ptr @mem_map, align 4
  %167 = ptrtoint ptr %165 to i32
  %168 = ptrtoint ptr %166 to i32
  %169 = sub i32 %167, %168
  %170 = lshr exact i32 %169, 5
  %171 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %172 = add i32 %170, %171
  %173 = shl i32 %172, 12
  %174 = zext i32 %173 to i64
  %175 = getelementptr i64, ptr %163, i32 1
  store i64 %174, ptr %163, align 8
  %176 = add nuw nsw i32 %161, 1
  %177 = load i32, ptr %157, align 8
  %178 = lshr i32 %177, 12
  %179 = icmp ult i32 %176, %178
  br i1 %179, label %160, label %180

180:                                              ; preds = %160, %152, %140
  %181 = phi ptr [ %142, %140 ], [ %142, %152 ], [ %175, %160 ]
  %182 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %148, i32 0, i32 7
  %183 = load i32, ptr %182, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %144, i32 0, i32 4
  store i64 %184, ptr %185, align 8
  %186 = tail call ptr @etnaviv_gem_vmap(ptr noundef %146) #6
  %187 = icmp eq ptr %186, null
  br i1 %187, label %191, label %188

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.drm_gem_object, ptr %146, i32 0, i32 5
  %190 = load i32, ptr %189, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %143, ptr nonnull align 1 %186, i32 %190, i1 false)
  br label %191

191:                                              ; preds = %188, %180
  %192 = getelementptr inbounds %struct.drm_gem_object, ptr %146, i32 0, i32 5
  %193 = load i32, ptr %192, align 8
  %194 = getelementptr i8, ptr %143, i32 %193
  store i32 1095652421, ptr %144, align 8
  %195 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %144, i32 0, i32 1
  store i32 5, ptr %195, align 4
  %196 = ptrtoint ptr %143 to i32
  %197 = sub i32 %196, %76
  %198 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %144, i32 0, i32 2
  store i32 %197, ptr %198, align 8
  %199 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %144, i32 0, i32 3
  store i32 %193, ptr %199, align 4
  %200 = getelementptr %struct.etnaviv_dump_object_header, ptr %144, i32 1
  %201 = add nuw i32 %141, 1
  %202 = load i32, ptr %21, align 8
  %203 = icmp ult i32 %201, %202
  br i1 %203, label %140, label %204

204:                                              ; preds = %191, %132
  %205 = phi ptr [ %133, %132 ], [ %200, %191 ]
  %206 = phi ptr [ %134, %132 ], [ %194, %191 ]
  store i32 1095652421, ptr %205, align 8
  %207 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %205, i32 0, i32 1
  store i32 6, ptr %207, align 4
  %208 = ptrtoint ptr %206 to i32
  %209 = sub i32 %208, %76
  %210 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %205, i32 0, i32 2
  store i32 %209, ptr %210, align 8
  %211 = getelementptr inbounds %struct.etnaviv_dump_object_header, ptr %205, i32 0, i32 3
  store i32 0, ptr %211, align 4
  %212 = getelementptr inbounds %struct.etnaviv_gpu, ptr %3, i32 0, i32 2
  %213 = load ptr, ptr %212, align 8
  tail call void @dev_coredumpv(ptr noundef %213, ptr noundef %51, i32 noundef %209, i32 noundef 3264) #6
  br label %214

214:                                              ; preds = %204, %53, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommu_dump_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_va(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_get_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_vmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 4950865}
!10 = !{i64 2155138845}
