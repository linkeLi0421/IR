; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.140], i32, [16 x %struct.anon.141], ptr, %struct.anon.142, %struct.anon.142, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.140 = type { i8, i64 }
%struct.anon.141 = type { i8, i8 }
%struct.anon.142 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.gp100_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.134, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.134 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_vmm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [0 x %struct.nvkm_vmm_page] }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon.137, %struct.anon.138, %struct.anon.139, ptr, i8 }
%struct.anon.137 = type { %struct.nvkm_sclass }
%struct.anon.138 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.139 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.gp100_vmm_fault_cancel_v0 = type { i8, i8, i8, i8, [4 x i8], i64 }
%struct.gp100_vmm_v0 = type { i8, i8 }
%struct.nvkm_mmu_pt = type { %union.anon.143, ptr, i8, i16, i64, %struct.list_head }
%union.anon.143 = type { ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_vmm_pt = type { [2 x ptr], [2 x i32], i8, i8, ptr, [0 x i8] }
%struct.page = type { i32, %union.anon.1, %union.anon.64, %struct.atomic_t }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@gp100_vmm_desc_lpt = internal constant %struct.nvkm_vmm_desc_func { ptr @gp100_vmm_lpt_invalid, ptr @gf100_vmm_pgt_unmap, ptr @gp100_vmm_pgt_sparse, ptr null, ptr @gp100_vmm_pgt_mem, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gp100_vmm_desc_pd0 = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr @gp100_vmm_pd0_unmap, ptr @gp100_vmm_pd0_sparse, ptr @gp100_vmm_pd0_pde, ptr @gp100_vmm_pd0_mem, ptr null, ptr null, ptr @gp100_vmm_pd0_pfn, ptr @gp100_vmm_pd0_pfn_clear, ptr @gp100_vmm_pd0_pfn_unmap }, align 4
@gp100_vmm_desc_pd1 = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr @gp100_vmm_pgt_sparse, ptr @gp100_vmm_pd1_pde, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@gp100_vmm_desc_16 = dso_local constant [6 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 3, i8 5, i8 8, i32 256, ptr @gp100_vmm_desc_lpt }, %struct.nvkm_vmm_desc { i32 0, i8 8, i8 16, i32 4096, ptr @gp100_vmm_desc_pd0 }, %struct.nvkm_vmm_desc { i32 0, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc { i32 0, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc { i32 0, i8 2, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@gp100_vmm_desc_spt = internal constant %struct.nvkm_vmm_desc_func { ptr null, ptr @gf100_vmm_pgt_unmap, ptr @gp100_vmm_pgt_sparse, ptr null, ptr @gp100_vmm_pgt_mem, ptr @gp100_vmm_pgt_dma, ptr @gp100_vmm_pgt_sgl, ptr @gp100_vmm_pgt_pfn, ptr @gp100_vmm_pfn_clear, ptr @gp100_vmm_pfn_unmap }, align 4
@gp100_vmm_desc_12 = dso_local constant [6 x %struct.nvkm_vmm_desc] [%struct.nvkm_vmm_desc { i32 2, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_spt }, %struct.nvkm_vmm_desc { i32 0, i8 8, i8 16, i32 4096, ptr @gp100_vmm_desc_pd0 }, %struct.nvkm_vmm_desc { i32 0, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc { i32 0, i8 9, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc { i32 0, i8 2, i8 8, i32 4096, ptr @gp100_vmm_desc_pd1 }, %struct.nvkm_vmm_desc zeroinitializer], align 4
@.str = private unnamed_addr constant [14 x i8] c"%s: %s: args\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmmgp100.c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: %s: kind %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: %s: comp %d %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s: %s: comp %d\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@gp100_vmm = internal constant <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, [7 x %struct.nvkm_vmm_page] }> <{ ptr @gp100_vmm_join, ptr @gf100_vmm_part, ptr @gf100_vmm_aper, ptr @gp100_vmm_valid, ptr @gp100_vmm_flush, ptr @gp100_vmm_mthd, ptr @gp100_vmm_invalidate_pdb, [4 x i8] undef, i64 0, [7 x %struct.nvkm_vmm_page] [%struct.nvkm_vmm_page { i8 47, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 64), i8 1 }, %struct.nvkm_vmm_page { i8 38, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 48), i8 1 }, %struct.nvkm_vmm_page { i8 29, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 32), i8 1 }, %struct.nvkm_vmm_page { i8 21, ptr getelementptr (i8, ptr @gp100_vmm_desc_16, i64 16), i8 11 }, %struct.nvkm_vmm_page { i8 16, ptr @gp100_vmm_desc_16, i8 11 }, %struct.nvkm_vmm_page { i8 12, ptr @gp100_vmm_desc_12, i8 7 }, %struct.nvkm_vmm_page zeroinitializer] }>, align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %7) #4
  %12 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_mmu, ptr %15, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 0, ptr %6, align 4, !annotation !8
  %19 = load i8, ptr %13, align 4
  %20 = zext i8 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = lshr i64 %21, 4
  %23 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 9
  store i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 10
  store i64 0, ptr %24, align 8
  %25 = icmp ugt i32 %2, 4
  br i1 %25, label %26, label %45

26:                                               ; preds = %4
  %27 = load i8, ptr %1, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = icmp eq i32 %2, 5
  br i1 %30, label %31, label %49

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.gp100_vmm_map_v0, ptr %1, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = icmp ne i8 %33, 0
  %35 = getelementptr inbounds %struct.gp100_vmm_map_v0, ptr %1, i32 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  %38 = getelementptr inbounds %struct.gp100_vmm_map_v0, ptr %1, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  %41 = getelementptr inbounds %struct.gp100_vmm_map_v0, ptr %1, i32 0, i32 4
  %42 = load i8, ptr %41, align 1
  %43 = select i1 %37, i8 0, i8 64
  %44 = select i1 %40, i8 1, i8 33
  br label %63

45:                                               ; preds = %4
  %46 = icmp eq i32 %2, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = icmp eq i32 %11, 2
  br label %63

49:                                               ; preds = %45, %29, %26
  %50 = phi i32 [ -38, %45 ], [ -38, %26 ], [ -7, %29 ]
  %51 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %54, label %189

54:                                               ; preds = %49
  %55 = load ptr, ptr %14, align 4
  %56 = getelementptr inbounds %struct.nvkm_mmu, ptr %55, i32 0, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nvkm_mmu, ptr %55, i32 0, i32 1, i32 4
  %61 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %59, ptr noundef nonnull @.str, ptr noundef %60, ptr noundef %62) #5
  br label %189

63:                                               ; preds = %47, %31
  %64 = phi i8 [ 0, %47 ], [ %42, %31 ]
  %65 = phi i8 [ 1, %47 ], [ %44, %31 ]
  %66 = phi i8 [ 0, %47 ], [ %43, %31 ]
  %67 = phi i1 [ %48, %47 ], [ %34, %31 ]
  %68 = load ptr, ptr %0, align 8
  %69 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = tail call i32 %70(i32 noundef %11) #4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74, !prof !9

73:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 9, ptr noundef null) #4
  br label %189

74:                                               ; preds = %63
  %75 = load ptr, ptr %14, align 4
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %76, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = call ptr %78(ptr noundef %75, ptr noundef nonnull %6, ptr noundef nonnull %5) #4
  %80 = zext i8 %64 to i32
  %81 = load i32, ptr %6, align 4
  %82 = icmp sgt i32 %81, %80
  br i1 %82, label %83, label %88

83:                                               ; preds = %74
  %84 = getelementptr i8, ptr %79, i32 %80
  %85 = load i8, ptr %84, align 1
  %86 = load i8, ptr %5, align 1
  %87 = icmp eq i8 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %83, %74
  %89 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp ugt i32 %90, 3
  br i1 %91, label %92, label %189

92:                                               ; preds = %88
  %93 = load ptr, ptr %14, align 4
  %94 = getelementptr inbounds %struct.nvkm_mmu, ptr %93, i32 0, i32 1, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.nvkm_mmu, ptr %93, i32 0, i32 1, i32 4
  %99 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.2, ptr noundef %98, ptr noundef %100, i32 noundef %80) #5
  br label %189

101:                                              ; preds = %83
  %102 = icmp eq i8 %85, %64
  br i1 %102, label %175, label %103

103:                                              ; preds = %101
  %104 = load ptr, ptr %18, align 4
  %105 = getelementptr inbounds %struct.nvkm_memory_func, ptr %104, i32 0, i32 5
  %106 = load ptr, ptr %105, align 4
  %107 = call i64 %106(ptr noundef %18) #4
  %108 = lshr i64 %107, 16
  %109 = icmp eq i32 %71, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %13, i32 0, i32 2
  %112 = load i8, ptr %111, align 4
  %113 = and i8 %112, 8
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %110, %103
  %116 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = icmp ugt i32 %117, 3
  br i1 %118, label %119, label %189

119:                                              ; preds = %115
  %120 = load ptr, ptr %14, align 4
  %121 = getelementptr inbounds %struct.nvkm_mmu, ptr %120, i32 0, i32 1, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.nvkm_mmu, ptr %120, i32 0, i32 1, i32 4
  %126 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %13, i32 0, i32 2
  %129 = load i8, ptr %128, align 4
  %130 = zext i8 %129 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %124, ptr noundef nonnull @.str.3, ptr noundef %125, ptr noundef %127, i32 noundef %71, i32 noundef %130) #5
  br label %189

131:                                              ; preds = %110
  %132 = trunc i64 %108 to i32
  %133 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 8
  %134 = call i32 @nvkm_memory_tags_get(ptr noundef %18, ptr noundef %17, i32 noundef %132, ptr noundef nonnull @nvkm_ltc_tags_clear, ptr noundef %133) #4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %149, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = icmp ugt i32 %138, 3
  br i1 %139, label %140, label %189

140:                                              ; preds = %136
  %141 = load ptr, ptr %14, align 4
  %142 = getelementptr inbounds %struct.nvkm_mmu, ptr %141, i32 0, i32 1, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.nvkm_device, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8
  %146 = getelementptr inbounds %struct.nvkm_mmu, ptr %141, i32 0, i32 1, i32 4
  %147 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %145, ptr noundef nonnull @.str.4, ptr noundef %146, ptr noundef %148, i32 noundef %134) #5
  br label %189

149:                                              ; preds = %131
  %150 = load ptr, ptr %133, align 4
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %173, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.nvkm_mm_node, ptr %151, i32 0, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 1
  %158 = load i64, ptr %157, align 8
  %159 = lshr i64 %158, 16
  %160 = add nuw nsw i64 %159, %156
  %161 = load i8, ptr %13, align 4
  %162 = zext i8 %161 to i64
  %163 = shl i64 1048576, %162
  %164 = and i64 %163, -68719476736
  %165 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %3, i32 0, i32 11
  %166 = load i64, ptr %165, align 8
  %167 = or i64 %164, %166
  store i64 %167, ptr %165, align 8
  %168 = shl i64 %160, 36
  %169 = load i64, ptr %24, align 8
  %170 = or i64 %169, %168
  store i64 %170, ptr %24, align 8
  %171 = load i64, ptr %23, align 8
  %172 = or i64 %171, %167
  store i64 %172, ptr %23, align 8
  br label %175

173:                                              ; preds = %149
  %174 = load i8, ptr %84, align 1
  br label %175

175:                                              ; preds = %173, %153, %101
  %176 = phi i8 [ %64, %101 ], [ %64, %153 ], [ %174, %173 ]
  %177 = load i64, ptr %24, align 8
  %178 = zext i32 %71 to i64
  %179 = shl nuw nsw i64 %178, 1
  %180 = select i1 %67, i64 8, i64 0
  %181 = zext i8 %176 to i64
  %182 = shl nuw i64 %181, 56
  %183 = or i8 %65, %66
  %184 = zext i8 %183 to i64
  %185 = or i64 %180, %184
  %186 = or i64 %185, %179
  %187 = or i64 %186, %177
  %188 = or i64 %187, %182
  store i64 %188, ptr %24, align 8
  br label %189

189:                                              ; preds = %175, %140, %136, %119, %115, %92, %88, %73, %54, %49
  %190 = phi i32 [ %71, %73 ], [ 0, %175 ], [ %50, %54 ], [ %50, %49 ], [ -22, %92 ], [ -22, %88 ], [ %134, %136 ], [ %134, %140 ], [ -22, %115 ], [ -22, %119 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  ret i32 %190
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_tags_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ltc_tags_clear(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_mthd(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) #0 {
  switch i32 %2, label %58 [
    i32 128, label %6
    i32 129, label %9
  ]

6:                                                ; preds = %5
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %58

8:                                                ; preds = %6
  tail call void @gf100_vmm_invalidate(ptr noundef %0, i32 noundef 11) #4
  br label %58

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_mmu, ptr %11, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp ugt i32 %4, 15
  br i1 %14, label %15, label %58

15:                                               ; preds = %9
  %16 = load i8, ptr %3, align 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  %19 = icmp eq i32 %4, 16
  br i1 %19, label %20, label %58

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, ptr %3, i32 0, i32 5
  %22 = load i64, ptr %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = lshr i64 %22, 12
  %25 = shl i32 %23, 20
  %26 = and i32 %25, 805306368
  %27 = zext i32 %26 to i64
  %28 = or i64 %24, %27
  %29 = or i64 %28, 2147483648
  store i64 %29, ptr %21, align 8
  %30 = tail call i32 @nvkm_gr_ctxsw_pause(ptr noundef %13) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56, !prof !10

32:                                               ; preds = %20
  %33 = tail call i32 @nvkm_gr_ctxsw_inst(ptr noundef %13) #4
  %34 = zext i32 %33 to i64
  %35 = load i64, ptr %21, align 8
  %36 = icmp eq i64 %35, %34
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, ptr %3, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 20
  %42 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, ptr %3, i32 0, i32 2
  %43 = load i8, ptr %42, align 2
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 15
  %46 = getelementptr inbounds %struct.gp100_vmm_fault_cancel_v0, ptr %3, i32 0, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 9
  %50 = or i32 %41, %45
  %51 = or i32 %50, %49
  %52 = or i32 %51, 27
  tail call void @gf100_vmm_invalidate(ptr noundef %0, i32 noundef %52) #4
  br label %53

53:                                               ; preds = %37, %32
  %54 = tail call i32 @nvkm_gr_ctxsw_resume(ptr noundef %13) #4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !10

56:                                               ; preds = %53, %20
  %57 = phi i32 [ 504, %20 ], [ 512, %53 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef %57, i32 noundef 9, ptr noundef null) #4
  br label %58

58:                                               ; preds = %56, %53, %18, %15, %9, %8, %6, %5
  %59 = phi i32 [ -22, %5 ], [ 0, %8 ], [ -38, %6 ], [ 0, %53 ], [ -38, %9 ], [ -38, %15 ], [ -7, %18 ], [ 0, %56 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_vmm_invalidate_pdb(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = trunc i64 %1 to i32
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1051832
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #4, !srcloc !12
  %11 = lshr i64 %1, 32
  %12 = trunc i64 %11 to i32
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 1051884
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp100_vmm_flush(ptr noundef %0, i32 noundef %1) #0 {
  %3 = mul i32 %1, -16777216
  %4 = add i32 %3, 83886080
  %5 = getelementptr %struct.nvkm_vmm, ptr %0, i32 0, i32 14, i32 16
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = or i32 %4, 4
  %9 = select i1 %7, i32 %4, i32 %8
  %10 = or i32 %9, 1
  tail call void @gf100_vmm_invalidate(ptr noundef %0, i32 noundef %10) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_invalidate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_join(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 17
  %4 = load i8, ptr %3, align 4, !range !13
  %5 = icmp eq i8 %4, 0
  %6 = select i1 %5, i64 3072, i64 3120
  %7 = tail call i32 @gf100_vmm_join_(ptr noundef %0, ptr noundef %1, i64 noundef %6) #4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_join_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_new_(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef readonly %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #0 {
  %11 = icmp ugt i32 %6, 1
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = load i8, ptr %5, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = icmp eq i32 %6, 2
  br i1 %16, label %17, label %31

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.gp100_vmm_v0, ptr %5, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = icmp ne i8 %19, 0
  br label %23

21:                                               ; preds = %10
  %22 = icmp eq i32 %6, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %21, %17
  %24 = phi i1 [ %20, %17 ], [ false, %21 ]
  %25 = tail call i32 @nvkm_vmm_new_(ptr noundef %0, ptr noundef %1, i32 noundef 0, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noundef %7, ptr noundef %8, ptr noundef %9) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr inbounds %struct.nvkm_vmm, ptr %28, i32 0, i32 17
  %30 = zext i1 %24 to i8
  store i8 %30, ptr %29, align 4
  br label %31

31:                                               ; preds = %27, %23, %21, %15, %12
  %32 = phi i32 [ 0, %27 ], [ %25, %23 ], [ -38, %21 ], [ -38, %12 ], [ -7, %15 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new_(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp100_vmm_new(ptr noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
  %10 = icmp ugt i32 %5, 1
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = load i8, ptr %4, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = icmp eq i32 %5, 2
  br i1 %15, label %16, label %30

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.gp100_vmm_v0, ptr %4, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp ne i8 %18, 0
  br label %22

20:                                               ; preds = %9
  %21 = icmp eq i32 %5, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %20, %16
  %23 = phi i1 [ %19, %16 ], [ false, %20 ]
  %24 = tail call i32 @nvkm_vmm_new_(ptr noundef nonnull @gp100_vmm, ptr noundef %0, i32 noundef 0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %8) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr inbounds %struct.nvkm_vmm, ptr %27, i32 0, i32 17
  %29 = zext i1 %23 to i8
  store i8 %29, ptr %28, align 4
  br label %30

30:                                               ; preds = %26, %22, %20, %14, %11
  %31 = phi i32 [ 0, %26 ], [ %24, %22 ], [ -38, %20 ], [ -38, %11 ], [ -7, %14 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_lpt_invalid(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %2, 3
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = add i32 %5, %8
  %10 = zext i32 %9 to i64
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %13) #4
  %18 = icmp eq ptr %17, null
  %19 = icmp eq i32 %3, 0
  br i1 %18, label %20, label %21, !prof !9

20:                                               ; preds = %4
  br i1 %19, label %50, label %33

21:                                               ; preds = %4
  br i1 %19, label %50, label %22

22:                                               ; preds = %21
  %23 = lshr i64 %10, 3
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ %27, %24 ], [ %11, %22 ]
  %26 = phi i64 [ %28, %24 ], [ %23, %22 ]
  %27 = add nsw i64 %25, -1
  %28 = add nuw nsw i64 %26, 1
  %29 = trunc i64 %26 to i32
  %30 = getelementptr i64, ptr %17, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 32) #4, !srcloc !12
  %31 = getelementptr i32, ptr %30, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #4, !srcloc !12
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %50, label %24

33:                                               ; preds = %33, %20
  %34 = phi i64 [ %48, %33 ], [ %10, %20 ]
  %35 = phi i64 [ %47, %33 ], [ %11, %20 ]
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %36, i64 noundef %34, i32 noundef 32) #4
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = add nuw nsw i64 %34, 4
  tail call void %45(ptr noundef %41, i64 noundef %46, i32 noundef 0) #4
  %47 = add nsw i64 %35, -1
  %48 = add nuw nsw i64 %34, 8
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %33

50:                                               ; preds = %33, %24, %21, %20
  %51 = load ptr, ptr %12, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_func, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %51) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_pgt_unmap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_sparse(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %2, 3
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = add i32 %5, %8
  %10 = zext i32 %9 to i64
  %11 = zext i32 %3 to i64
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %13) #4
  %18 = icmp eq ptr %17, null
  %19 = icmp eq i32 %3, 0
  br i1 %18, label %20, label %21, !prof !9

20:                                               ; preds = %4
  br i1 %19, label %50, label %33

21:                                               ; preds = %4
  br i1 %19, label %50, label %22

22:                                               ; preds = %21
  %23 = lshr i64 %10, 3
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ %27, %24 ], [ %11, %22 ]
  %26 = phi i64 [ %28, %24 ], [ %23, %22 ]
  %27 = add nsw i64 %25, -1
  %28 = add nuw nsw i64 %26, 1
  %29 = trunc i64 %26 to i32
  %30 = getelementptr i64, ptr %17, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 8) #4, !srcloc !12
  %31 = getelementptr i32, ptr %30, i32 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #4, !srcloc !12
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %50, label %24

33:                                               ; preds = %33, %20
  %34 = phi i64 [ %48, %33 ], [ %10, %20 ]
  %35 = phi i64 [ %47, %33 ], [ %11, %20 ]
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %36, i64 noundef %34, i32 noundef 8) #4
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = add nuw nsw i64 %34, 4
  tail call void %45(ptr noundef %41, i64 noundef %46, i32 noundef 0) #4
  %47 = add nsw i64 %35, -1
  %48 = add nuw nsw i64 %34, 8
  %49 = icmp eq i64 %47, 0
  br i1 %49, label %50, label %33

50:                                               ; preds = %33, %24, %21, %20
  %51 = load ptr, ptr %12, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_func, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %51) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_mem(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %99, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %17 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 10
  %18 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 11
  %19 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %20 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 9
  br label %21

21:                                               ; preds = %94, %13
  %22 = phi i32 [ %2, %13 ], [ %96, %94 ]
  %23 = phi i32 [ %3, %13 ], [ %97, %94 ]
  %24 = load ptr, ptr %14, align 8
  %25 = getelementptr inbounds %struct.nvkm_mm_node, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 12
  %29 = load i64, ptr %15, align 8
  %30 = sub i64 %28, %29
  %31 = load ptr, ptr %16, align 8
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i64
  %34 = lshr i64 %30, %33
  %35 = getelementptr inbounds %struct.nvkm_mm_node, ptr %24, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 12
  %39 = add i64 %38, %29
  %40 = zext i32 %23 to i64
  %41 = icmp ugt i64 %34, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %21
  %43 = zext i8 %32 to i32
  %44 = shl i32 %23, %43
  %45 = zext i32 %44 to i64
  %46 = add i64 %29, %45
  store i64 %46, ptr %15, align 8
  %47 = load i64, ptr %17, align 8
  %48 = load i64, ptr %18, align 8
  %49 = mul i64 %48, %40
  %50 = add i64 %49, %47
  store i64 %50, ptr %17, align 8
  br label %61

51:                                               ; preds = %21
  store i64 0, ptr %15, align 8
  %52 = getelementptr inbounds %struct.nvkm_mm_node, ptr %24, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  store ptr %53, ptr %14, align 8
  %54 = trunc i64 %34 to i32
  %55 = and i64 %34, 4294967295
  %56 = load i64, ptr %17, align 8
  %57 = load i64, ptr %18, align 8
  %58 = mul i64 %57, %55
  %59 = add i64 %58, %56
  store i64 %59, ptr %17, align 8
  %60 = icmp eq i32 %54, 0
  br i1 %60, label %94, label %61

61:                                               ; preds = %51, %42
  %62 = phi i64 [ %47, %42 ], [ %56, %51 ]
  %63 = phi i32 [ %23, %42 ], [ %54, %51 ]
  %64 = lshr i64 %39, 4
  %65 = or i64 %62, %64
  br label %66

66:                                               ; preds = %66, %61
  %67 = phi i32 [ %22, %61 ], [ %71, %66 ]
  %68 = phi i32 [ %63, %61 ], [ %70, %66 ]
  %69 = phi i64 [ %65, %61 ], [ %92, %66 ]
  %70 = add i32 %68, -1
  %71 = add i32 %67, 1
  %72 = shl i32 %67, 3
  %73 = load i16, ptr %19, align 2
  %74 = zext i16 %73 to i32
  %75 = add i32 %72, %74
  %76 = zext i32 %75 to i64
  %77 = load ptr, ptr %6, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = trunc i64 %69 to i32
  tail call void %81(ptr noundef %77, i64 noundef %76, i32 noundef %82) #4
  %83 = load ptr, ptr %6, align 4
  %84 = getelementptr inbounds %struct.nvkm_memory, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = add nuw nsw i64 %76, 4
  %89 = lshr i64 %69, 32
  %90 = trunc i64 %89 to i32
  tail call void %87(ptr noundef %83, i64 noundef %88, i32 noundef %90) #4
  %91 = load i64, ptr %20, align 8
  %92 = add i64 %91, %69
  %93 = icmp eq i32 %70, 0
  br i1 %93, label %94, label %66

94:                                               ; preds = %66, %51
  %95 = phi i32 [ 0, %51 ], [ %63, %66 ]
  %96 = add i32 %95, %22
  %97 = sub i32 %23, %95
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %21

99:                                               ; preds = %94, %5
  %100 = load ptr, ptr %6, align 4
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvkm_memory_func, ptr %101, i32 0, i32 8
  %103 = load ptr, ptr %102, align 4
  tail call void %103(ptr noundef %100) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_unmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %6) #4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %4
  %13 = shl i32 %2, 4
  %14 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i32 [ %13, %12 ], [ %50, %15 ]
  %17 = phi i32 [ %3, %12 ], [ %18, %15 ]
  %18 = add i32 %17, -1
  %19 = load i16, ptr %14, align 2
  %20 = zext i16 %19 to i32
  %21 = add i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %23, i64 noundef %22, i32 noundef 0) #4
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = add nuw nsw i64 %22, 4
  tail call void %32(ptr noundef %28, i64 noundef %33, i32 noundef 0) #4
  %34 = load i16, ptr %14, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %16, 8
  %37 = add i32 %36, %35
  %38 = zext i32 %37 to i64
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %39, i64 noundef %38, i32 noundef 0) #4
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.nvkm_memory, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = add nuw nsw i64 %38, 4
  tail call void %48(ptr noundef %44, i64 noundef %49, i32 noundef 0) #4
  %50 = add i32 %16, 16
  %51 = icmp eq i32 %18, 0
  br i1 %51, label %52, label %15

52:                                               ; preds = %15, %4
  %53 = load ptr, ptr %5, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_memory_func, ptr %54, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %53) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_sparse(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %6) #4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %4
  %13 = shl i32 %2, 4
  %14 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i32 [ %13, %12 ], [ %50, %15 ]
  %17 = phi i32 [ %3, %12 ], [ %18, %15 ]
  %18 = add i32 %17, -1
  %19 = load i16, ptr %14, align 2
  %20 = zext i16 %19 to i32
  %21 = add i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.nvkm_memory, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %23, i64 noundef %22, i32 noundef 8) #4
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = add nuw nsw i64 %22, 4
  tail call void %32(ptr noundef %28, i64 noundef %33, i32 noundef 0) #4
  %34 = load i16, ptr %14, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %16, 8
  %37 = add i32 %36, %35
  %38 = zext i32 %37 to i64
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %39, i64 noundef %38, i32 noundef 0) #4
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.nvkm_memory, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = add nuw nsw i64 %38, 4
  tail call void %48(ptr noundef %44, i64 noundef %49, i32 noundef 0) #4
  %50 = add i32 %16, 16
  %51 = icmp eq i32 %18, 0
  br i1 %51, label %52, label %15

52:                                               ; preds = %15, %4
  %53 = load ptr, ptr %5, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_memory_func, ptr %54, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %53) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_pde(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 %2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %13) #4
  switch i32 %17, label %29 [
    i32 1, label %20
    i32 2, label %18
    i32 3, label %19
  ]

18:                                               ; preds = %11
  br label %20

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %18, %11
  %21 = phi i64 [ 6, %19 ], [ 12, %18 ], [ 2, %11 ]
  %22 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 4
  %23 = load i64, ptr %22, align 8
  %24 = lshr i64 %23, 4
  %25 = or i64 %24, %21
  %26 = trunc i64 %25 to i32
  %27 = lshr i64 %23, 36
  %28 = trunc i64 %27 to i32
  br label %30

29:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 228, i32 noundef 9, ptr noundef null) #4
  br label %101

30:                                               ; preds = %20, %3
  %31 = phi i32 [ 0, %3 ], [ %26, %20 ]
  %32 = phi i32 [ 0, %3 ], [ %28, %20 ]
  %33 = getelementptr [2 x ptr], ptr %7, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %55, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %34, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 %41(ptr noundef %38) #4
  switch i32 %42, label %54 [
    i32 1, label %45
    i32 2, label %43
    i32 3, label %44
  ]

43:                                               ; preds = %36
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %43, %36
  %46 = phi i64 [ 6, %44 ], [ 12, %43 ], [ 2, %36 ]
  %47 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %34, i32 0, i32 4
  %48 = load i64, ptr %47, align 8
  %49 = lshr i64 %48, 4
  %50 = or i64 %49, %46
  %51 = trunc i64 %50 to i32
  %52 = lshr i64 %48, 36
  %53 = trunc i64 %52 to i32
  br label %55

54:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 228, i32 noundef 9, ptr noundef null) #4
  br label %101

55:                                               ; preds = %45, %30
  %56 = phi i32 [ 0, %30 ], [ %51, %45 ]
  %57 = phi i32 [ 0, %30 ], [ %53, %45 ]
  %58 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %8, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_memory_func, ptr %60, i32 0, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = tail call ptr %62(ptr noundef %59) #4
  %64 = shl i32 %2, 4
  %65 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %8, i32 0, i32 3
  %66 = load i16, ptr %65, align 2
  %67 = zext i16 %66 to i32
  %68 = add i32 %64, %67
  %69 = zext i32 %68 to i64
  %70 = load ptr, ptr %58, align 4
  %71 = getelementptr inbounds %struct.nvkm_memory, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %70, i64 noundef %69, i32 noundef %31) #4
  %75 = load ptr, ptr %58, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = add nuw nsw i64 %69, 4
  tail call void %79(ptr noundef %75, i64 noundef %80, i32 noundef %32) #4
  %81 = load i16, ptr %65, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %64, 8
  %84 = add i32 %83, %82
  %85 = zext i32 %84 to i64
  %86 = load ptr, ptr %58, align 4
  %87 = getelementptr inbounds %struct.nvkm_memory, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %86, i64 noundef %85, i32 noundef %56) #4
  %91 = load ptr, ptr %58, align 4
  %92 = getelementptr inbounds %struct.nvkm_memory, ptr %91, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = add nuw nsw i64 %85, 4
  tail call void %95(ptr noundef %91, i64 noundef %96, i32 noundef %57) #4
  %97 = load ptr, ptr %58, align 4
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.nvkm_memory_func, ptr %98, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  tail call void %100(ptr noundef %97) #4
  br label %101

101:                                              ; preds = %55, %54, %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_mem(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %115, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %17 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 10
  %18 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 11
  %19 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %20 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 9
  br label %21

21:                                               ; preds = %110, %13
  %22 = phi i32 [ %2, %13 ], [ %112, %110 ]
  %23 = phi i32 [ %3, %13 ], [ %113, %110 ]
  %24 = load ptr, ptr %14, align 8
  %25 = getelementptr inbounds %struct.nvkm_mm_node, ptr %24, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = shl nuw nsw i64 %27, 12
  %29 = load i64, ptr %15, align 8
  %30 = sub i64 %28, %29
  %31 = load ptr, ptr %16, align 8
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i64
  %34 = lshr i64 %30, %33
  %35 = getelementptr inbounds %struct.nvkm_mm_node, ptr %24, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 12
  %39 = add i64 %38, %29
  %40 = zext i32 %23 to i64
  %41 = icmp ugt i64 %34, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %21
  %43 = zext i8 %32 to i32
  %44 = shl i32 %23, %43
  %45 = zext i32 %44 to i64
  %46 = add i64 %29, %45
  store i64 %46, ptr %15, align 8
  %47 = load i64, ptr %17, align 8
  %48 = load i64, ptr %18, align 8
  %49 = mul i64 %48, %40
  %50 = add i64 %49, %47
  store i64 %50, ptr %17, align 8
  br label %61

51:                                               ; preds = %21
  store i64 0, ptr %15, align 8
  %52 = getelementptr inbounds %struct.nvkm_mm_node, ptr %24, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  store ptr %53, ptr %14, align 8
  %54 = trunc i64 %34 to i32
  %55 = and i64 %34, 4294967295
  %56 = load i64, ptr %17, align 8
  %57 = load i64, ptr %18, align 8
  %58 = mul i64 %57, %55
  %59 = add i64 %58, %56
  store i64 %59, ptr %17, align 8
  %60 = icmp eq i32 %54, 0
  br i1 %60, label %110, label %61

61:                                               ; preds = %51, %42
  %62 = phi i64 [ %47, %42 ], [ %56, %51 ]
  %63 = phi i32 [ %23, %42 ], [ %54, %51 ]
  %64 = lshr i64 %39, 4
  %65 = or i64 %62, %64
  br label %66

66:                                               ; preds = %66, %61
  %67 = phi i32 [ %63, %61 ], [ %70, %66 ]
  %68 = phi i32 [ %22, %61 ], [ %106, %66 ]
  %69 = phi i64 [ %65, %61 ], [ %108, %66 ]
  %70 = add i32 %67, -1
  %71 = shl i32 %68, 4
  %72 = trunc i64 %69 to i32
  %73 = lshr i64 %69, 32
  %74 = trunc i64 %73 to i32
  %75 = load i16, ptr %19, align 2
  %76 = zext i16 %75 to i32
  %77 = add i32 %71, %76
  %78 = zext i32 %77 to i64
  %79 = load ptr, ptr %6, align 4
  %80 = getelementptr inbounds %struct.nvkm_memory, ptr %79, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  tail call void %83(ptr noundef %79, i64 noundef %78, i32 noundef %72) #4
  %84 = load ptr, ptr %6, align 4
  %85 = getelementptr inbounds %struct.nvkm_memory, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = add nuw nsw i64 %78, 4
  tail call void %88(ptr noundef %84, i64 noundef %89, i32 noundef %74) #4
  %90 = load i16, ptr %19, align 2
  %91 = zext i16 %90 to i32
  %92 = or i32 %71, 8
  %93 = add i32 %92, %91
  %94 = zext i32 %93 to i64
  %95 = load ptr, ptr %6, align 4
  %96 = getelementptr inbounds %struct.nvkm_memory, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  tail call void %99(ptr noundef %95, i64 noundef %94, i32 noundef 0) #4
  %100 = load ptr, ptr %6, align 4
  %101 = getelementptr inbounds %struct.nvkm_memory, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = add nuw nsw i64 %94, 4
  tail call void %104(ptr noundef %100, i64 noundef %105, i32 noundef 0) #4
  %106 = add i32 %68, 1
  %107 = load i64, ptr %20, align 8
  %108 = add i64 %107, %69
  %109 = icmp eq i32 %70, 0
  br i1 %109, label %110, label %66

110:                                              ; preds = %66, %51
  %111 = phi i32 [ 0, %51 ], [ %63, %66 ]
  %112 = add i32 %111, %22
  %113 = sub i32 %23, %111
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %21

115:                                              ; preds = %110, %5
  %116 = load ptr, ptr %6, align 4
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.nvkm_memory_func, ptr %117, i32 0, i32 8
  %119 = load ptr, ptr %118, align 4
  tail call void %119(ptr noundef %116) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_pfn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %13) #4
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 5
  %21 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %20, align 4
  br label %23

23:                                               ; preds = %81, %19
  %24 = phi ptr [ %22, %19 ], [ %85, %81 ]
  %25 = phi i32 [ %2, %19 ], [ %83, %81 ]
  %26 = phi i32 [ %3, %19 ], [ %84, %81 ]
  %27 = load i64, ptr %24, align 8
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %81, label %30

30:                                               ; preds = %23
  %31 = shl i64 %27, 5
  %32 = and i64 %31, 192
  %33 = xor i64 %32, 192
  %34 = and i64 %27, 16
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = lshr i64 %27, 12
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr @mem_map, align 4
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %41 = sub i32 %38, %40
  %42 = getelementptr %struct.page, ptr %39, i32 %41
  %43 = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %42, i32 noundef 0, i32 noundef 2097152, i32 noundef 0, i32 noundef 0) #4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47, !prof !9

45:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 335, i32 noundef 9, ptr noundef null) #4
  %46 = trunc i64 %33 to i32
  br label %60

47:                                               ; preds = %36
  %48 = trunc i64 %33 to i32
  %49 = lshr i32 %43, 4
  %50 = or i32 %49, %48
  %51 = or i32 %50, 13
  br label %60

52:                                               ; preds = %30
  %53 = lshr i64 %27, 4
  %54 = and i64 %53, 4294967040
  %55 = or i64 %33, %54
  %56 = trunc i64 %55 to i32
  %57 = or i32 %56, 1
  %58 = lshr i64 %27, 36
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %52, %47, %45
  %61 = phi i32 [ %57, %52 ], [ %46, %45 ], [ %51, %47 ]
  %62 = phi i32 [ %59, %52 ], [ 0, %45 ], [ 0, %47 ]
  %63 = add i32 %25, 1
  %64 = shl i32 %25, 4
  %65 = load i16, ptr %21, align 2
  %66 = zext i16 %65 to i32
  %67 = add i32 %64, %66
  %68 = zext i32 %67 to i64
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr inbounds %struct.nvkm_memory, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %69, i64 noundef %68, i32 noundef %61) #4
  %74 = load ptr, ptr %12, align 4
  %75 = getelementptr inbounds %struct.nvkm_memory, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = add nuw nsw i64 %68, 4
  tail call void %78(ptr noundef %74, i64 noundef %79, i32 noundef %62) #4
  %80 = load ptr, ptr %20, align 4
  br label %81

81:                                               ; preds = %60, %23
  %82 = phi ptr [ %80, %60 ], [ %24, %23 ]
  %83 = phi i32 [ %63, %60 ], [ %25, %23 ]
  %84 = add i32 %26, -1
  %85 = getelementptr i64, ptr %82, i32 1
  store ptr %85, ptr %20, align 4
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %87, label %23

87:                                               ; preds = %81, %5
  %88 = load ptr, ptr %12, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.nvkm_memory_func, ptr %89, i32 0, i32 8
  %91 = load ptr, ptr %90, align 4
  tail call void %91(ptr noundef %88) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @gp100_vmm_pd0_pfn_clear(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %6) #4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %14

14:                                               ; preds = %62, %12
  %15 = phi i32 [ %3, %12 ], [ %18, %62 ]
  %16 = phi i32 [ %2, %12 ], [ %64, %62 ]
  %17 = phi i1 [ false, %12 ], [ %63, %62 ]
  %18 = add i32 %15, -1
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.nvkm_memory, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = load i16, ptr %13, align 2
  %24 = zext i16 %23 to i32
  %25 = shl i32 %16, 4
  %26 = add i32 %25, %24
  %27 = zext i32 %26 to i64
  %28 = tail call i32 %22(ptr noundef %19, i64 noundef %27) #4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = load i16, ptr %13, align 2
  %34 = zext i16 %33 to i32
  %35 = or i32 %25, 4
  %36 = add i32 %35, %34
  %37 = zext i32 %36 to i64
  %38 = tail call i32 %32(ptr noundef %29, i64 noundef %37) #4
  %39 = zext i32 %28 to i64
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  %42 = and i64 %39, 6
  %43 = icmp eq i64 %42, 0
  %44 = or i1 %41, %43
  br i1 %44, label %62, label %45

45:                                               ; preds = %14
  %46 = and i32 %28, -2
  %47 = load i16, ptr %13, align 2
  %48 = zext i16 %47 to i32
  %49 = add i32 %25, %48
  %50 = zext i32 %49 to i64
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.nvkm_memory, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %51, i64 noundef %50, i32 noundef %46) #4
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.nvkm_memory, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = add nuw nsw i64 %50, 4
  tail call void %60(ptr noundef %56, i64 noundef %61, i32 noundef %38) #4
  br label %62

62:                                               ; preds = %45, %14
  %63 = phi i1 [ true, %45 ], [ %17, %14 ]
  %64 = add i32 %16, 1
  %65 = icmp eq i32 %18, 0
  br i1 %65, label %66, label %14

66:                                               ; preds = %62, %4
  %67 = phi i1 [ false, %4 ], [ %63, %62 ]
  %68 = load ptr, ptr %5, align 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_memory_func, ptr %69, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %68) #4
  ret i1 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pd0_pfn_unmap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_mmu, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr %15(ptr noundef %12) #4
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %20

20:                                               ; preds = %49, %18
  %21 = phi i32 [ %3, %18 ], [ %23, %49 ]
  %22 = phi i32 [ %2, %18 ], [ %50, %49 ]
  %23 = add i32 %21, -1
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.nvkm_memory, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = load i16, ptr %19, align 2
  %29 = zext i16 %28 to i32
  %30 = shl i32 %22, 4
  %31 = add i32 %30, %29
  %32 = zext i32 %31 to i64
  %33 = tail call i32 %27(ptr noundef %24, i64 noundef %32) #4
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds %struct.nvkm_memory, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = load i16, ptr %19, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %30, 4
  %41 = add i32 %40, %39
  %42 = zext i32 %41 to i64
  %43 = tail call i32 %37(ptr noundef %34, i64 noundef %42) #4
  %44 = and i32 %33, 6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %20
  %47 = shl i32 %33, 4
  %48 = and i32 %47, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %48, i32 noundef 2097152, i32 noundef 0, i32 noundef 0) #4
  br label %49

49:                                               ; preds = %46, %20
  %50 = add i32 %22, 1
  %51 = icmp eq i32 %23, 0
  br i1 %51, label %52, label %20

52:                                               ; preds = %49, %4
  %53 = load ptr, ptr %11, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_memory_func, ptr %54, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %53) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pd1_pde(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 %2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %1, align 4
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %11) #4
  switch i32 %15, label %18 [
    i32 1, label %19
    i32 2, label %16
    i32 3, label %17
  ]

16:                                               ; preds = %3
  br label %19

17:                                               ; preds = %3
  br label %19

18:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 228, i32 noundef 9, ptr noundef null) #4
  br label %55

19:                                               ; preds = %17, %16, %3
  %20 = phi i64 [ 6, %17 ], [ 12, %16 ], [ 2, %3 ]
  %21 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 4
  %22 = load i64, ptr %21, align 8
  %23 = lshr i64 %22, 4
  %24 = or i64 %23, %20
  %25 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_memory_func, ptr %27, i32 0, i32 7
  %29 = load ptr, ptr %28, align 4
  %30 = tail call ptr %29(ptr noundef %26) #4
  %31 = shl i32 %2, 3
  %32 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %8, i32 0, i32 3
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  %35 = add i32 %31, %34
  %36 = zext i32 %35 to i64
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr inbounds %struct.nvkm_memory, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = trunc i64 %24 to i32
  tail call void %41(ptr noundef %37, i64 noundef %36, i32 noundef %42) #4
  %43 = load ptr, ptr %25, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = add nuw nsw i64 %36, 4
  %49 = lshr i64 %22, 36
  %50 = trunc i64 %49 to i32
  tail call void %47(ptr noundef %43, i64 noundef %48, i32 noundef %50) #4
  %51 = load ptr, ptr %25, align 4
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_func, ptr %52, i32 0, i32 8
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %51) #4
  br label %55

55:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_dma(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %7 = load ptr, ptr %6, align 8
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 12
  %10 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %11) #4
  %16 = icmp eq i32 %3, 0
  br i1 %9, label %17, label %62

17:                                               ; preds = %5
  br i1 %16, label %141, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %20 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 10
  %21 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %22 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 11
  %23 = load i64, ptr %20, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i64 %23, 32
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %27, %18
  %28 = phi i32 [ %24, %18 ], [ %59, %27 ]
  %29 = phi i32 [ %26, %18 ], [ %61, %27 ]
  %30 = phi i32 [ %2, %18 ], [ %37, %27 ]
  %31 = phi i32 [ %3, %18 ], [ %32, %27 ]
  %32 = add i32 %31, -1
  %33 = load ptr, ptr %19, align 8
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %19, align 8
  %35 = load i32, ptr %33, align 4
  %36 = lshr i32 %35, 4
  %37 = add i32 %30, 1
  %38 = shl i32 %30, 3
  %39 = load i16, ptr %21, align 2
  %40 = zext i16 %39 to i32
  %41 = add i32 %38, %40
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %10, align 4
  %44 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = or i32 %36, %28
  tail call void %47(ptr noundef %43, i64 noundef %42, i32 noundef %48) #4
  %49 = load ptr, ptr %10, align 4
  %50 = getelementptr inbounds %struct.nvkm_memory, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = add nuw nsw i64 %42, 4
  tail call void %53(ptr noundef %49, i64 noundef %54, i32 noundef %29) #4
  %55 = load i64, ptr %22, align 8
  %56 = load i64, ptr %20, align 8
  %57 = add i64 %56, %55
  store i64 %57, ptr %20, align 8
  %58 = icmp eq i32 %32, 0
  %59 = trunc i64 %57 to i32
  %60 = lshr i64 %57, 32
  %61 = trunc i64 %60 to i32
  br i1 %58, label %141, label %27

62:                                               ; preds = %5
  br i1 %16, label %141, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %65 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %66 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 10
  %67 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 11
  %68 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %69 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 9
  br label %70

70:                                               ; preds = %136, %63
  %71 = phi i32 [ %2, %63 ], [ %138, %136 ]
  %72 = phi i32 [ %3, %63 ], [ %139, %136 ]
  %73 = load i64, ptr %64, align 8
  %74 = sub i64 4096, %73
  %75 = load ptr, ptr %6, align 8
  %76 = load i8, ptr %75, align 4
  %77 = zext i8 %76 to i64
  %78 = lshr i64 %74, %77
  %79 = load ptr, ptr %65, align 8
  %80 = load i32, ptr %79, align 4
  %81 = zext i32 %80 to i64
  %82 = add i64 %73, %81
  %83 = zext i32 %72 to i64
  %84 = icmp ugt i64 %78, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %70
  %86 = zext i8 %76 to i32
  %87 = shl i32 %72, %86
  %88 = zext i32 %87 to i64
  %89 = add i64 %73, %88
  store i64 %89, ptr %64, align 8
  %90 = load i64, ptr %66, align 8
  %91 = load i64, ptr %67, align 8
  %92 = mul i64 %91, %83
  %93 = add i64 %92, %90
  store i64 %93, ptr %66, align 8
  br label %103

94:                                               ; preds = %70
  store i64 0, ptr %64, align 8
  %95 = getelementptr i32, ptr %79, i32 1
  store ptr %95, ptr %65, align 8
  %96 = trunc i64 %78 to i32
  %97 = and i64 %78, 4294967295
  %98 = load i64, ptr %66, align 8
  %99 = load i64, ptr %67, align 8
  %100 = mul i64 %99, %97
  %101 = add i64 %100, %98
  store i64 %101, ptr %66, align 8
  %102 = icmp eq i32 %96, 0
  br i1 %102, label %136, label %103

103:                                              ; preds = %94, %85
  %104 = phi i64 [ %90, %85 ], [ %98, %94 ]
  %105 = phi i32 [ %72, %85 ], [ %96, %94 ]
  %106 = lshr i64 %82, 4
  %107 = or i64 %104, %106
  br label %108

108:                                              ; preds = %108, %103
  %109 = phi i32 [ %71, %103 ], [ %113, %108 ]
  %110 = phi i32 [ %105, %103 ], [ %112, %108 ]
  %111 = phi i64 [ %107, %103 ], [ %134, %108 ]
  %112 = add i32 %110, -1
  %113 = add i32 %109, 1
  %114 = shl i32 %109, 3
  %115 = load i16, ptr %68, align 2
  %116 = zext i16 %115 to i32
  %117 = add i32 %114, %116
  %118 = zext i32 %117 to i64
  %119 = load ptr, ptr %10, align 4
  %120 = getelementptr inbounds %struct.nvkm_memory, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = trunc i64 %111 to i32
  tail call void %123(ptr noundef %119, i64 noundef %118, i32 noundef %124) #4
  %125 = load ptr, ptr %10, align 4
  %126 = getelementptr inbounds %struct.nvkm_memory, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = add nuw nsw i64 %118, 4
  %131 = lshr i64 %111, 32
  %132 = trunc i64 %131 to i32
  tail call void %129(ptr noundef %125, i64 noundef %130, i32 noundef %132) #4
  %133 = load i64, ptr %69, align 8
  %134 = add i64 %133, %111
  %135 = icmp eq i32 %112, 0
  br i1 %135, label %136, label %108

136:                                              ; preds = %108, %94
  %137 = phi i32 [ 0, %94 ], [ %105, %108 ]
  %138 = add i32 %137, %71
  %139 = sub i32 %72, %137
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %70

141:                                              ; preds = %136, %62, %27, %17
  %142 = load ptr, ptr %10, align 4
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.nvkm_memory_func, ptr %143, i32 0, i32 8
  %145 = load ptr, ptr %144, align 4
  tail call void %145(ptr noundef %142) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_sgl(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr %10(ptr noundef %7) #4
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %96, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 3
  %15 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  %16 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %17 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 10
  %18 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 11
  %19 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %20 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 9
  br label %21

21:                                               ; preds = %91, %13
  %22 = phi i32 [ %2, %13 ], [ %93, %91 ]
  %23 = phi i32 [ %3, %13 ], [ %94, %91 ]
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, ptr %15, align 8
  %29 = sub i64 %27, %28
  %30 = load ptr, ptr %16, align 8
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i64
  %33 = lshr i64 %29, %32
  %34 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 %28, %36
  %38 = zext i32 %23 to i64
  %39 = icmp ugt i64 %33, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %21
  %41 = zext i8 %31 to i32
  %42 = shl i32 %23, %41
  %43 = zext i32 %42 to i64
  %44 = add i64 %28, %43
  store i64 %44, ptr %15, align 8
  %45 = load i64, ptr %17, align 8
  %46 = load i64, ptr %18, align 8
  %47 = mul i64 %46, %38
  %48 = add i64 %47, %45
  store i64 %48, ptr %17, align 8
  br label %58

49:                                               ; preds = %21
  store i64 0, ptr %15, align 8
  %50 = tail call ptr @sg_next(ptr noundef %24) #4
  store ptr %50, ptr %14, align 4
  %51 = trunc i64 %33 to i32
  %52 = and i64 %33, 4294967295
  %53 = load i64, ptr %17, align 8
  %54 = load i64, ptr %18, align 8
  %55 = mul i64 %54, %52
  %56 = add i64 %55, %53
  store i64 %56, ptr %17, align 8
  %57 = icmp eq i32 %51, 0
  br i1 %57, label %91, label %58

58:                                               ; preds = %49, %40
  %59 = phi i64 [ %45, %40 ], [ %53, %49 ]
  %60 = phi i32 [ %23, %40 ], [ %51, %49 ]
  %61 = lshr i64 %37, 4
  %62 = or i64 %59, %61
  br label %63

63:                                               ; preds = %63, %58
  %64 = phi i32 [ %22, %58 ], [ %68, %63 ]
  %65 = phi i32 [ %60, %58 ], [ %67, %63 ]
  %66 = phi i64 [ %62, %58 ], [ %89, %63 ]
  %67 = add i32 %65, -1
  %68 = add i32 %64, 1
  %69 = shl i32 %64, 3
  %70 = load i16, ptr %19, align 2
  %71 = zext i16 %70 to i32
  %72 = add i32 %69, %71
  %73 = zext i32 %72 to i64
  %74 = load ptr, ptr %6, align 4
  %75 = getelementptr inbounds %struct.nvkm_memory, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = trunc i64 %66 to i32
  tail call void %78(ptr noundef %74, i64 noundef %73, i32 noundef %79) #4
  %80 = load ptr, ptr %6, align 4
  %81 = getelementptr inbounds %struct.nvkm_memory, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = add nuw nsw i64 %73, 4
  %86 = lshr i64 %66, 32
  %87 = trunc i64 %86 to i32
  tail call void %84(ptr noundef %80, i64 noundef %85, i32 noundef %87) #4
  %88 = load i64, ptr %20, align 8
  %89 = add i64 %88, %66
  %90 = icmp eq i32 %67, 0
  br i1 %90, label %91, label %63

91:                                               ; preds = %63, %49
  %92 = phi i32 [ 0, %49 ], [ %60, %63 ]
  %93 = add i32 %92, %22
  %94 = sub i32 %23, %92
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %21

96:                                               ; preds = %91, %5
  %97 = load ptr, ptr %6, align 4
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.nvkm_memory_func, ptr %98, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  tail call void %100(ptr noundef %97) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pgt_pfn(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_memory_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr %16(ptr noundef %13) #4
  %18 = icmp eq i32 %3, 0
  br i1 %18, label %87, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 5
  %21 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %22 = load ptr, ptr %20, align 4
  br label %23

23:                                               ; preds = %81, %19
  %24 = phi ptr [ %22, %19 ], [ %85, %81 ]
  %25 = phi i32 [ %2, %19 ], [ %83, %81 ]
  %26 = phi i32 [ %3, %19 ], [ %84, %81 ]
  %27 = load i64, ptr %24, align 8
  %28 = and i64 %27, 1
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %81, label %30

30:                                               ; preds = %23
  %31 = shl i64 %27, 5
  %32 = and i64 %31, 192
  %33 = xor i64 %32, 192
  %34 = and i64 %27, 16
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = lshr i64 %27, 12
  %38 = trunc i64 %37 to i32
  %39 = load ptr, ptr @mem_map, align 4
  %40 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %41 = sub i32 %38, %40
  %42 = getelementptr %struct.page, ptr %39, i32 %41
  %43 = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %42, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47, !prof !9

45:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 98, i32 noundef 9, ptr noundef null) #4
  %46 = trunc i64 %33 to i32
  br label %60

47:                                               ; preds = %36
  %48 = trunc i64 %33 to i32
  %49 = lshr i32 %43, 4
  %50 = or i32 %49, %48
  %51 = or i32 %50, 13
  br label %60

52:                                               ; preds = %30
  %53 = lshr i64 %27, 4
  %54 = and i64 %53, 4294967040
  %55 = or i64 %33, %54
  %56 = trunc i64 %55 to i32
  %57 = or i32 %56, 1
  %58 = lshr i64 %27, 36
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %52, %47, %45
  %61 = phi i32 [ %57, %52 ], [ %46, %45 ], [ %51, %47 ]
  %62 = phi i32 [ %59, %52 ], [ 0, %45 ], [ 0, %47 ]
  %63 = add i32 %25, 1
  %64 = shl i32 %25, 3
  %65 = load i16, ptr %21, align 2
  %66 = zext i16 %65 to i32
  %67 = add i32 %64, %66
  %68 = zext i32 %67 to i64
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr inbounds %struct.nvkm_memory, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %73(ptr noundef %69, i64 noundef %68, i32 noundef %61) #4
  %74 = load ptr, ptr %12, align 4
  %75 = getelementptr inbounds %struct.nvkm_memory, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = add nuw nsw i64 %68, 4
  tail call void %78(ptr noundef %74, i64 noundef %79, i32 noundef %62) #4
  %80 = load ptr, ptr %20, align 4
  br label %81

81:                                               ; preds = %60, %23
  %82 = phi ptr [ %80, %60 ], [ %24, %23 ]
  %83 = phi i32 [ %63, %60 ], [ %25, %23 ]
  %84 = add i32 %26, -1
  %85 = getelementptr i64, ptr %82, i32 1
  store ptr %85, ptr %20, align 4
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %87, label %23

87:                                               ; preds = %81, %5
  %88 = load ptr, ptr %12, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.nvkm_memory_func, ptr %89, i32 0, i32 8
  %91 = load ptr, ptr %90, align 4
  tail call void %91(ptr noundef %88) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @gp100_vmm_pfn_clear(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr %9(ptr noundef %6) #4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %66, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %14

14:                                               ; preds = %62, %12
  %15 = phi i32 [ %3, %12 ], [ %18, %62 ]
  %16 = phi i32 [ %2, %12 ], [ %64, %62 ]
  %17 = phi i1 [ false, %12 ], [ %63, %62 ]
  %18 = add i32 %15, -1
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.nvkm_memory, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = load i16, ptr %13, align 2
  %24 = zext i16 %23 to i32
  %25 = shl i32 %16, 3
  %26 = add i32 %25, %24
  %27 = zext i32 %26 to i64
  %28 = tail call i32 %22(ptr noundef %19, i64 noundef %27) #4
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = load i16, ptr %13, align 2
  %34 = zext i16 %33 to i32
  %35 = or i32 %25, 4
  %36 = add i32 %35, %34
  %37 = zext i32 %36 to i64
  %38 = tail call i32 %32(ptr noundef %29, i64 noundef %37) #4
  %39 = zext i32 %28 to i64
  %40 = and i64 %39, 1
  %41 = icmp eq i64 %40, 0
  %42 = and i64 %39, 6
  %43 = icmp eq i64 %42, 0
  %44 = or i1 %41, %43
  br i1 %44, label %62, label %45

45:                                               ; preds = %14
  %46 = and i32 %28, -2
  %47 = load i16, ptr %13, align 2
  %48 = zext i16 %47 to i32
  %49 = add i32 %25, %48
  %50 = zext i32 %49 to i64
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.nvkm_memory, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void %55(ptr noundef %51, i64 noundef %50, i32 noundef %46) #4
  %56 = load ptr, ptr %5, align 4
  %57 = getelementptr inbounds %struct.nvkm_memory, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = add nuw nsw i64 %50, 4
  tail call void %60(ptr noundef %56, i64 noundef %61, i32 noundef %38) #4
  br label %62

62:                                               ; preds = %45, %14
  %63 = phi i1 [ true, %45 ], [ %17, %14 ]
  %64 = add i32 %16, 1
  %65 = icmp eq i32 %18, 0
  br i1 %65, label %66, label %14

66:                                               ; preds = %62, %4
  %67 = phi i1 [ false, %4 ], [ %63, %62 ]
  %68 = load ptr, ptr %5, align 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_memory_func, ptr %69, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  tail call void %71(ptr noundef %68) #4
  ret i1 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp100_vmm_pfn_unmap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_mmu, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr %15(ptr noundef %12) #4
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  br label %20

20:                                               ; preds = %49, %18
  %21 = phi i32 [ %3, %18 ], [ %23, %49 ]
  %22 = phi i32 [ %2, %18 ], [ %50, %49 ]
  %23 = add i32 %21, -1
  %24 = load ptr, ptr %11, align 4
  %25 = getelementptr inbounds %struct.nvkm_memory, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = load i16, ptr %19, align 2
  %29 = zext i16 %28 to i32
  %30 = shl i32 %22, 3
  %31 = add i32 %30, %29
  %32 = zext i32 %31 to i64
  %33 = tail call i32 %27(ptr noundef %24, i64 noundef %32) #4
  %34 = load ptr, ptr %11, align 4
  %35 = getelementptr inbounds %struct.nvkm_memory, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = load i16, ptr %19, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %30, 4
  %41 = add i32 %40, %39
  %42 = zext i32 %41 to i64
  %43 = tail call i32 %37(ptr noundef %34, i64 noundef %42) #4
  %44 = and i32 %33, 6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %20
  %47 = shl i32 %33, 4
  %48 = and i32 %47, -4096
  tail call void @dma_unmap_page_attrs(ptr noundef %10, i32 noundef %48, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #4
  br label %49

49:                                               ; preds = %46, %20
  %50 = add i32 %22, 1
  %51 = icmp eq i32 %23, 0
  br i1 %51, label %52, label %20

52:                                               ; preds = %49, %4
  %53 = load ptr, ptr %11, align 4
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_memory_func, ptr %54, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  tail call void %56(ptr noundef %53) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctxsw_pause(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctxsw_inst(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctxsw_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_vmm_part(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_vmm_aper(i32 noundef) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2151516026}
!12 = !{i64 3974933}
!13 = !{i8 0, i8 2}
