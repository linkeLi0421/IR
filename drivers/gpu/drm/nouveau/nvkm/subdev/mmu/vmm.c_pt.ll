; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.nvkm_vmm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [0 x %struct.nvkm_vmm_page] }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.124], i32, [16 x %struct.anon.125], ptr, %struct.anon.126, %struct.anon.126, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.124 = type { i8, i64 }
%struct.anon.125 = type { i8, i8 }
%struct.anon.126 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_vmm_desc = type { i32, i8, i8, i32, ptr }
%struct.nvkm_vmm_pt = type { [2 x ptr], [2 x i32], i8, i8, ptr, [0 x i8] }
%struct.nvkm_vmm_desc_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvkm_vmm_iter = type { ptr, ptr, ptr, i64, i16, i16, [5 x i32], [5 x ptr], i32 }
%struct.nvkm_mmu_pt = type { %union.anon, ptr, i8, i16, i64, %struct.list_head }
%union.anon = type { ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.1, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, i8, i32 }

@.str = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: %s: paged map %d %d %016llx %016llx\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"%s: %s: getref %d mapref %d sparse %d shift: %d align: %d size: %016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: %s: args %016llx %d %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: %s: page size required: %d %016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: %s: page %d %016llx\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nvkm_vmm_ctor._key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"&vmm->mutex\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"%s: %s: overrun %016llx %016llx %016llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%s: %s: invalid at any page size\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"%s: %s: invalid %d\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"%s: %s: trying %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"%s: %s: %d !VRAM\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"%s: %s: %d !HOST\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"%s: %s: alignment %016llx %016llx %016llx %d %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_vma_tail(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_vma, ptr %0, i32 0, i32 3
  %4 = load i56, ptr %3, align 8
  %5 = and i56 %4, 1125899906842623
  %6 = zext i56 %5 to i64
  %7 = icmp eq i64 %6, %1
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 765, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_vma, ptr %0, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 48) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %9
  %16 = sub i64 %6, %1
  %17 = add i64 %16, %11
  %18 = getelementptr inbounds %struct.nvkm_vma, ptr %13, i32 0, i32 2
  store i64 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nvkm_vma, ptr %13, i32 0, i32 3
  %20 = trunc i64 %1 to i56
  %21 = load i56, ptr %19, align 8
  %22 = and i56 %20, 1125899906842623
  %23 = and i56 %21, -36028797018963968
  %24 = or i56 %22, %23
  %25 = getelementptr inbounds %struct.nvkm_vma, ptr %13, i32 0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = load i56, ptr %3, align 8
  %28 = sub i56 %27, %20
  %29 = and i56 %28, 1125899906842623
  %30 = and i56 %27, -1125899906842624
  %31 = or i56 %29, %30
  store i56 %31, ptr %3, align 8
  %32 = and i56 %27, 34902897112121344
  %33 = or i56 %32, %24
  store i56 %33, ptr %19, align 8
  %34 = getelementptr inbounds %struct.nvkm_vma, ptr %0, i32 0, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %26, -128
  %37 = and i8 %35, 127
  %38 = or i8 %37, %36
  store i8 %38, ptr %25, align 1
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %13, ptr %40, align 4
  store ptr %39, ptr %13, align 8
  %41 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %0, ptr %41, align 4
  store volatile ptr %13, ptr %0, align 4
  br label %42

42:                                               ; preds = %15, %9
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nvkm_vmm_node_search(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %22, %2
  %7 = phi ptr [ %24, %22 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 16
  %9 = load i64, ptr %8, align 8
  %10 = icmp ugt i64 %9, %1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  br label %22

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %7, i32 24
  %15 = load i56, ptr %14, align 8
  %16 = and i56 %15, 1125899906842623
  %17 = zext i56 %16 to i64
  %18 = add i64 %9, %17
  %19 = icmp ugt i64 %18, %1
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  br label %22

22:                                               ; preds = %20, %11
  %23 = phi ptr [ %12, %11 ], [ %21, %20 ]
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %6

26:                                               ; preds = %13
  %27 = getelementptr i8, ptr %7, i32 -8
  br label %28

28:                                               ; preds = %26, %22, %2
  %29 = phi ptr [ %27, %26 ], [ null, %2 ], [ null, %22 ]
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_vmm_node_split(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = icmp eq i64 %6, %2
  br i1 %7, label %73, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %10 = load i56, ptr %9, align 8
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 48) #11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %153, label %14

14:                                               ; preds = %8
  %15 = sub i64 %6, %2
  %16 = and i56 %10, 1125899906842623
  %17 = getelementptr inbounds %struct.nvkm_vma, ptr %12, i32 0, i32 2
  store i64 %2, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nvkm_vma, ptr %12, i32 0, i32 3
  %19 = trunc i64 %15 to i56
  %20 = add i56 %16, %19
  %21 = load i56, ptr %18, align 8
  %22 = and i56 %20, 1125899906842623
  %23 = and i56 %21, -36028797018963968
  %24 = or i56 %23, %22
  %25 = getelementptr inbounds %struct.nvkm_vma, ptr %12, i32 0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = load i56, ptr %9, align 8
  %28 = sub i56 %27, %20
  %29 = and i56 %28, 1125899906842623
  %30 = and i56 %27, -1125899906842624
  %31 = or i56 %29, %30
  store i56 %31, ptr %9, align 8
  %32 = and i56 %27, 34902897112121344
  %33 = or i56 %24, %32
  store i56 %33, ptr %18, align 8
  %34 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %26, -128
  %37 = and i8 %35, 127
  %38 = or i8 %37, %36
  store i8 %38, ptr %25, align 1
  %39 = load ptr, ptr %1, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %12, ptr %40, align 4
  store ptr %39, ptr %12, align 8
  %41 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %1, ptr %41, align 4
  store volatile ptr %12, ptr %1, align 4
  %42 = load i8, ptr %25, align 1
  %43 = or i8 %42, 16
  store i8 %43, ptr %25, align 1
  %44 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %67, label %47

47:                                               ; preds = %14
  %48 = load i64, ptr %17, align 8
  br label %49

49:                                               ; preds = %61, %47
  %50 = phi ptr [ %45, %47 ], [ %63, %61 ]
  %51 = getelementptr i8, ptr %50, i32 16
  %52 = load i64, ptr %51, align 8
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 2
  br label %61

56:                                               ; preds = %49
  %57 = icmp ugt i64 %48, %52
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 1
  br label %61

60:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

61:                                               ; preds = %58, %54
  %62 = phi ptr [ %55, %54 ], [ %59, %58 ]
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %49

65:                                               ; preds = %61
  %66 = ptrtoint ptr %50 to i32
  br label %67

67:                                               ; preds = %65, %14
  %68 = phi i32 [ %66, %65 ], [ 0, %14 ]
  %69 = phi ptr [ %62, %65 ], [ %44, %14 ]
  %70 = getelementptr inbounds %struct.nvkm_vma, ptr %12, i32 0, i32 1
  store i32 %68, ptr %70, align 8
  %71 = getelementptr inbounds %struct.nvkm_vma, ptr %12, i32 0, i32 1, i32 1
  store ptr null, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nvkm_vma, ptr %12, i32 0, i32 1, i32 2
  store ptr null, ptr %72, align 8
  store ptr %70, ptr %69, align 4
  tail call void @rb_insert_color(ptr noundef %70, ptr noundef %44) #10
  br label %73

73:                                               ; preds = %67, %4
  %74 = phi ptr [ %12, %67 ], [ %1, %4 ]
  %75 = phi ptr [ %1, %67 ], [ null, %4 ]
  %76 = getelementptr inbounds %struct.nvkm_vma, ptr %74, i32 0, i32 3
  %77 = load i56, ptr %76, align 8
  %78 = and i56 %77, 1125899906842623
  %79 = zext i56 %78 to i64
  %80 = icmp eq i64 %79, %3
  br i1 %80, label %153, label %81

81:                                               ; preds = %73
  %82 = icmp eq i64 %3, 0
  br i1 %82, label %83, label %84, !prof !8

83:                                               ; preds = %81
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 765, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.nvkm_vma, ptr %74, i32 0, i32 2
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %88 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3520, i32 noundef 48) #11
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i56, ptr %76, align 8
  %92 = and i56 %91, 1125899906842623
  %93 = zext i56 %92 to i64
  %94 = tail call fastcc ptr @nvkm_vmm_node_merge(ptr noundef %0, ptr noundef %75, ptr noundef %74, ptr noundef null, i64 noundef %93)
  br label %153

95:                                               ; preds = %84
  %96 = add i64 %86, %3
  %97 = getelementptr inbounds %struct.nvkm_vma, ptr %88, i32 0, i32 2
  store i64 %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.nvkm_vma, ptr %88, i32 0, i32 3
  %99 = trunc i64 %3 to i56
  %100 = sub i56 %78, %99
  %101 = load i56, ptr %98, align 8
  %102 = and i56 %100, 1125899906842623
  %103 = and i56 %101, -36028797018963968
  %104 = or i56 %103, %102
  %105 = getelementptr inbounds %struct.nvkm_vma, ptr %88, i32 0, i32 4
  %106 = load i8, ptr %105, align 1
  %107 = load i56, ptr %76, align 8
  %108 = sub i56 %107, %100
  %109 = and i56 %108, 1125899906842623
  %110 = and i56 %107, -1125899906842624
  %111 = or i56 %109, %110
  store i56 %111, ptr %76, align 8
  %112 = and i56 %107, 34902897112121344
  %113 = or i56 %104, %112
  store i56 %113, ptr %98, align 8
  %114 = getelementptr inbounds %struct.nvkm_vma, ptr %74, i32 0, i32 4
  %115 = load i8, ptr %114, align 1
  %116 = and i8 %106, -128
  %117 = and i8 %115, 127
  %118 = or i8 %117, %116
  store i8 %118, ptr %105, align 1
  %119 = load ptr, ptr %74, align 4
  %120 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %88, ptr %120, align 4
  store ptr %119, ptr %88, align 8
  %121 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %74, ptr %121, align 4
  store volatile ptr %88, ptr %74, align 4
  %122 = load i8, ptr %105, align 1
  %123 = or i8 %122, 16
  store i8 %123, ptr %105, align 1
  %124 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %147, label %127

127:                                              ; preds = %95
  %128 = load i64, ptr %97, align 8
  br label %129

129:                                              ; preds = %141, %127
  %130 = phi ptr [ %125, %127 ], [ %143, %141 ]
  %131 = getelementptr i8, ptr %130, i32 16
  %132 = load i64, ptr %131, align 8
  %133 = icmp ult i64 %128, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.rb_node, ptr %130, i32 0, i32 2
  br label %141

136:                                              ; preds = %129
  %137 = icmp ugt i64 %128, %132
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.rb_node, ptr %130, i32 0, i32 1
  br label %141

140:                                              ; preds = %136
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

141:                                              ; preds = %138, %134
  %142 = phi ptr [ %135, %134 ], [ %139, %138 ]
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %129

145:                                              ; preds = %141
  %146 = ptrtoint ptr %130 to i32
  br label %147

147:                                              ; preds = %145, %95
  %148 = phi i32 [ %146, %145 ], [ 0, %95 ]
  %149 = phi ptr [ %142, %145 ], [ %124, %95 ]
  %150 = getelementptr inbounds %struct.nvkm_vma, ptr %88, i32 0, i32 1
  store i32 %148, ptr %150, align 8
  %151 = getelementptr inbounds %struct.nvkm_vma, ptr %88, i32 0, i32 1, i32 1
  store ptr null, ptr %151, align 4
  %152 = getelementptr inbounds %struct.nvkm_vma, ptr %88, i32 0, i32 1, i32 2
  store ptr null, ptr %152, align 8
  store ptr %150, ptr %149, align 4
  tail call void @rb_insert_color(ptr noundef %150, ptr noundef %124) #10
  br label %153

153:                                              ; preds = %147, %90, %73, %8
  %154 = phi ptr [ null, %90 ], [ %74, %147 ], [ %74, %73 ], [ null, %8 ]
  ret ptr %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nvkm_vmm_node_merge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %86, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.nvkm_vma, ptr %2, i32 0, i32 3
  %9 = load i56, ptr %8, align 8
  %10 = and i56 %9, 1125899906842623
  %11 = zext i56 %10 to i64
  %12 = icmp eq i64 %11, %4
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nvkm_vma, ptr %3, i32 0, i32 3
  %15 = load i56, ptr %14, align 8
  %16 = add i56 %15, %9
  %17 = and i56 %16, 1125899906842623
  %18 = and i56 %9, -1125899906842624
  %19 = or i56 %17, %18
  store i56 %19, ptr %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_vma, ptr %3, i32 0, i32 1
  %21 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %20, ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  tail call void @kfree(ptr noundef nonnull %3) #10
  %26 = icmp eq ptr %1, null
  br i1 %26, label %150, label %27

27:                                               ; preds = %13
  %28 = load i56, ptr %8, align 8
  %29 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %30 = load i56, ptr %29, align 8
  %31 = add i56 %30, %28
  %32 = and i56 %31, 1125899906842623
  %33 = and i56 %30, -1125899906842624
  %34 = or i56 %32, %33
  store i56 %34, ptr %29, align 8
  %35 = getelementptr inbounds %struct.nvkm_vma, ptr %2, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %35, ptr noundef %21) #10
  %36 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  tail call void @kfree(ptr noundef %2) #10
  br label %150

40:                                               ; preds = %7
  %41 = icmp eq ptr %1, null
  br i1 %41, label %43, label %42, !prof !11

42:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 896, 0\0A.popsection", ""() #10, !srcloc !12
  unreachable

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.nvkm_vma, ptr %3, i32 0, i32 1
  %45 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %44, ptr noundef %45) #10
  %46 = load i56, ptr %8, align 8
  %47 = trunc i64 %4 to i56
  %48 = sub i56 %46, %47
  %49 = and i56 %48, 1125899906842623
  %50 = and i56 %46, -1125899906842624
  %51 = or i56 %49, %50
  store i56 %51, ptr %8, align 8
  %52 = getelementptr inbounds %struct.nvkm_vma, ptr %3, i32 0, i32 2
  %53 = load i64, ptr %52, align 8
  %54 = sub i64 %53, %4
  store i64 %54, ptr %52, align 8
  %55 = getelementptr inbounds %struct.nvkm_vma, ptr %3, i32 0, i32 3
  %56 = load i56, ptr %55, align 8
  %57 = add i56 %56, %47
  %58 = and i56 %57, 1125899906842623
  %59 = and i56 %56, -1125899906842624
  %60 = or i56 %58, %59
  store i56 %60, ptr %55, align 8
  %61 = load ptr, ptr %45, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %81, label %63

63:                                               ; preds = %75, %43
  %64 = phi ptr [ %77, %75 ], [ %61, %43 ]
  %65 = getelementptr i8, ptr %64, i32 16
  %66 = load i64, ptr %65, align 8
  %67 = icmp ult i64 %54, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 2
  br label %75

70:                                               ; preds = %63
  %71 = icmp ugt i64 %54, %66
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 1
  br label %75

74:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

75:                                               ; preds = %72, %68
  %76 = phi ptr [ %69, %68 ], [ %73, %72 ]
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %63

79:                                               ; preds = %75
  %80 = ptrtoint ptr %64 to i32
  br label %81

81:                                               ; preds = %79, %43
  %82 = phi i32 [ %80, %79 ], [ 0, %43 ]
  %83 = phi ptr [ %76, %79 ], [ %45, %43 ]
  store i32 %82, ptr %44, align 4
  %84 = getelementptr inbounds %struct.nvkm_vma, ptr %3, i32 0, i32 1, i32 1
  store ptr null, ptr %84, align 4
  %85 = getelementptr inbounds %struct.nvkm_vma, ptr %3, i32 0, i32 1, i32 2
  store ptr null, ptr %85, align 4
  store ptr %44, ptr %83, align 4
  tail call void @rb_insert_color(ptr noundef %44, ptr noundef %45) #10
  br label %150

86:                                               ; preds = %5
  %87 = icmp eq ptr %1, null
  br i1 %87, label %150, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.nvkm_vma, ptr %2, i32 0, i32 3
  %90 = load i56, ptr %89, align 8
  %91 = and i56 %90, 1125899906842623
  %92 = zext i56 %91 to i64
  %93 = icmp eq i64 %92, %4
  br i1 %93, label %137, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.nvkm_vma, ptr %2, i32 0, i32 1
  %96 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %95, ptr noundef %96) #10
  %97 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %98 = load i56, ptr %97, align 8
  %99 = trunc i64 %4 to i56
  %100 = add i56 %98, %99
  %101 = and i56 %100, 1125899906842623
  %102 = and i56 %98, -1125899906842624
  %103 = or i56 %101, %102
  store i56 %103, ptr %97, align 8
  %104 = getelementptr inbounds %struct.nvkm_vma, ptr %2, i32 0, i32 2
  %105 = load i64, ptr %104, align 8
  %106 = add i64 %105, %4
  store i64 %106, ptr %104, align 8
  %107 = load i56, ptr %89, align 8
  %108 = sub i56 %107, %99
  %109 = and i56 %108, 1125899906842623
  %110 = and i56 %107, -1125899906842624
  %111 = or i56 %109, %110
  store i56 %111, ptr %89, align 8
  %112 = load ptr, ptr %96, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %132, label %114

114:                                              ; preds = %126, %94
  %115 = phi ptr [ %128, %126 ], [ %112, %94 ]
  %116 = getelementptr i8, ptr %115, i32 16
  %117 = load i64, ptr %116, align 8
  %118 = icmp ult i64 %106, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 2
  br label %126

121:                                              ; preds = %114
  %122 = icmp ugt i64 %106, %117
  br i1 %122, label %123, label %125

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 1
  br label %126

125:                                              ; preds = %121
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

126:                                              ; preds = %123, %119
  %127 = phi ptr [ %120, %119 ], [ %124, %123 ]
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %114

130:                                              ; preds = %126
  %131 = ptrtoint ptr %115 to i32
  br label %132

132:                                              ; preds = %130, %94
  %133 = phi i32 [ %131, %130 ], [ 0, %94 ]
  %134 = phi ptr [ %127, %130 ], [ %96, %94 ]
  store i32 %133, ptr %95, align 4
  %135 = getelementptr inbounds %struct.nvkm_vma, ptr %2, i32 0, i32 1, i32 1
  store ptr null, ptr %135, align 4
  %136 = getelementptr inbounds %struct.nvkm_vma, ptr %2, i32 0, i32 1, i32 2
  store ptr null, ptr %136, align 4
  store ptr %95, ptr %134, align 4
  tail call void @rb_insert_color(ptr noundef %95, ptr noundef %96) #10
  br label %150

137:                                              ; preds = %88
  %138 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %139 = load i56, ptr %138, align 8
  %140 = add i56 %139, %90
  %141 = and i56 %140, 1125899906842623
  %142 = and i56 %139, -1125899906842624
  %143 = or i56 %141, %142
  store i56 %143, ptr %138, align 8
  %144 = getelementptr inbounds %struct.nvkm_vma, ptr %2, i32 0, i32 1
  %145 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %144, ptr noundef %145) #10
  %146 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr %2, align 4
  %149 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  store ptr %147, ptr %149, align 4
  store volatile ptr %148, ptr %147, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %146, align 4
  tail call void @kfree(ptr noundef %2) #10
  br label %150

150:                                              ; preds = %137, %132, %86, %81, %27, %13
  %151 = phi ptr [ %1, %27 ], [ %3, %81 ], [ %2, %13 ], [ %1, %137 ], [ %1, %132 ], [ %2, %86 ]
  ret ptr %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) local_unnamed_addr #0 {
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 304) #11
  store ptr %11, ptr %8, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %354, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %0, i32 0, i32 8
  store ptr %0, ptr %11, align 8
  %15 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 1
  store ptr %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 2
  store ptr %7, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nvkm_mmu, ptr %1, i32 0, i32 1, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 3
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 4
  store volatile i32 1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 5
  %22 = icmp eq ptr %6, null
  %23 = select i1 %22, ptr @nvkm_vmm_ctor._key, ptr %6
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.7, ptr noundef %23) #10
  br label %24

24:                                               ; preds = %24, %13
  %25 = phi ptr [ %14, %13 ], [ %26, %24 ]
  %26 = getelementptr %struct.nvkm_vmm_page, ptr %25, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %24

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %25, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %31, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i8, ptr %25, align 4
  %37 = zext i8 %36 to i32
  %38 = getelementptr %struct.nvkm_vmm_desc, ptr %31, i32 -1
  br label %57

39:                                               ; preds = %39, %29
  %40 = phi i8 [ %49, %39 ], [ %33, %29 ]
  %41 = phi i32 [ %45, %39 ], [ 0, %29 ]
  %42 = phi i32 [ %47, %39 ], [ 0, %29 ]
  %43 = phi ptr [ %46, %39 ], [ %31, %29 ]
  %44 = zext i8 %40 to i32
  %45 = add i32 %41, %44
  %46 = getelementptr %struct.nvkm_vmm_desc, ptr %43, i32 1
  %47 = add i32 %42, 1
  %48 = getelementptr %struct.nvkm_vmm_desc, ptr %43, i32 1, i32 1
  %49 = load i8, ptr %48, align 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %39

51:                                               ; preds = %39
  %52 = load i8, ptr %25, align 4
  %53 = zext i8 %52 to i32
  %54 = add i32 %45, %53
  %55 = icmp sgt i32 %47, 5
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1065, i32 noundef 9, ptr noundef null) #10
  br label %354

57:                                               ; preds = %51, %35
  %58 = phi ptr [ %38, %35 ], [ %43, %51 ]
  %59 = phi i32 [ %37, %35 ], [ %54, %51 ]
  %60 = phi ptr [ %31, %35 ], [ %46, %51 ]
  %61 = getelementptr %struct.nvkm_vmm_desc, ptr %60, i32 -1, i32 1
  %62 = load i8, ptr %61, align 4
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 1, %63
  %65 = load i32, ptr %58, align 4
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = icmp eq i32 %65, 2
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = load ptr, ptr inttoptr (i32 -8 to ptr), align 8
  %71 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %70, i32 0, i32 1
  %72 = load i8, ptr %71, align 4
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 %63, %73
  %75 = lshr i32 %64, %74
  br label %76

76:                                               ; preds = %69, %67, %57
  %77 = phi i32 [ %75, %69 ], [ 0, %57 ], [ %64, %67 ]
  %78 = add i32 %77, 24
  %79 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %78, i32 noundef 3520) #12
  %80 = icmp eq ptr %79, null
  br i1 %80, label %99, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %79, i32 0, i32 2
  store i8 0, ptr %82, align 16
  %83 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %79, i32 0, i32 3
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, -2
  store i8 %85, ptr %83, align 1
  %86 = load i32, ptr %58, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %64, i32 4) #10
  %90 = extractvalue { i32, i1 } %89, 1
  br i1 %90, label %91, label %93, !prof !8

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %79, i32 0, i32 4
  store ptr null, ptr %92, align 4
  br label %98

93:                                               ; preds = %88
  %94 = extractvalue { i32, i1 } %89, 0
  %95 = tail call noalias ptr @kvmalloc_node(i32 noundef %94, i32 noundef 3520, i32 noundef -1) #12
  %96 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %79, i32 0, i32 4
  store ptr %95, ptr %96, align 4
  %97 = icmp eq ptr %95, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %93, %91
  tail call void @kfree(ptr noundef nonnull %79) #10
  br label %99

99:                                               ; preds = %98, %76
  %100 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 8
  store ptr null, ptr %100, align 8
  br label %354

101:                                              ; preds = %93, %81
  %102 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 8
  store ptr %79, ptr %102, align 8
  %103 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %79, i32 0, i32 1
  store i32 1, ptr %103, align 8
  %104 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 9
  store volatile ptr %104, ptr %104, align 4
  %105 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 9, i32 1
  store ptr %104, ptr %105, align 8
  %106 = getelementptr %struct.nvkm_vmm_desc, ptr %60, i32 -1, i32 2
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %101
  %110 = zext i8 %107 to i32
  %111 = load i8, ptr %61, align 4
  %112 = zext i8 %111 to i32
  %113 = shl i32 %110, %112
  %114 = add i32 %113, %2
  %115 = getelementptr %struct.nvkm_vmm_desc, ptr %60, i32 -1, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = tail call ptr @nvkm_mmu_ptc_get(ptr noundef %1, i32 noundef %114, i32 noundef %116, i1 noundef zeroext true) #10
  %118 = load ptr, ptr %102, align 8
  store ptr %117, ptr %118, align 4
  %119 = load ptr, ptr %102, align 8
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %354, label %122

122:                                              ; preds = %109, %101
  %123 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 10
  store volatile ptr %123, ptr %123, align 4
  %124 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 10, i32 1
  store ptr %123, ptr %124, align 8
  %125 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 11
  store ptr null, ptr %125, align 4
  %126 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 12
  store ptr null, ptr %126, align 8
  %127 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 6
  br i1 %3, label %128, label %282

128:                                              ; preds = %122
  store i64 0, ptr %127, align 8
  %129 = zext i32 %59 to i64
  %130 = shl nuw i64 1, %129
  %131 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 7
  store i64 %130, ptr %131, align 8
  %132 = add i64 %5, %4
  %133 = icmp ult i64 %132, %4
  %134 = icmp ugt i64 %132, %130
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %354, label %136

136:                                              ; preds = %128
  %137 = icmp eq i64 %4, 0
  br i1 %137, label %177, label %138

138:                                              ; preds = %136
  %139 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %140 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3520, i32 noundef 48) #11
  %141 = icmp eq ptr %140, null
  br i1 %141, label %354, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.nvkm_vma, ptr %140, i32 0, i32 2
  store i64 0, ptr %143, align 8
  %144 = getelementptr inbounds %struct.nvkm_vma, ptr %140, i32 0, i32 3
  %145 = trunc i64 %4 to i56
  %146 = load i56, ptr %144, align 8
  %147 = and i56 %145, 1125899906842623
  %148 = and i56 %146, -36028797018963968
  %149 = getelementptr inbounds %struct.nvkm_vma, ptr %140, i32 0, i32 4
  %150 = load i8, ptr %149, align 1
  %151 = or i56 %147, %148
  %152 = or i56 %151, 32651097298436096
  store i56 %152, ptr %144, align 8
  %153 = or i8 %150, 15
  store i8 %153, ptr %149, align 1
  %154 = load ptr, ptr %126, align 8
  %155 = icmp eq ptr %154, null
  br i1 %155, label %169, label %156

156:                                              ; preds = %161, %142
  %157 = phi ptr [ %163, %161 ], [ %154, %142 ]
  %158 = getelementptr i8, ptr %157, i32 16
  %159 = load i64, ptr %158, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.rb_node, ptr %157, i32 0, i32 2
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %156

165:                                              ; preds = %156
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.rb_node, ptr %157, i32 0, i32 2
  %168 = ptrtoint ptr %157 to i32
  br label %169

169:                                              ; preds = %166, %142
  %170 = phi i32 [ %168, %166 ], [ 0, %142 ]
  %171 = phi ptr [ %167, %166 ], [ %126, %142 ]
  %172 = getelementptr inbounds %struct.nvkm_vma, ptr %140, i32 0, i32 1
  store i32 %170, ptr %172, align 8
  %173 = getelementptr inbounds %struct.nvkm_vma, ptr %140, i32 0, i32 1, i32 1
  store ptr null, ptr %173, align 4
  %174 = getelementptr inbounds %struct.nvkm_vma, ptr %140, i32 0, i32 1, i32 2
  store ptr null, ptr %174, align 8
  store ptr %172, ptr %171, align 4
  tail call void @rb_insert_color(ptr noundef %172, ptr noundef %126) #10
  %175 = load ptr, ptr %124, align 8
  store ptr %140, ptr %124, align 8
  store ptr %123, ptr %140, align 8
  %176 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  store ptr %175, ptr %176, align 4
  store volatile ptr %140, ptr %175, align 4
  br label %177

177:                                              ; preds = %169, %136
  %178 = icmp eq i64 %5, 0
  br i1 %178, label %234, label %179

179:                                              ; preds = %177
  %180 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %181 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %180, i32 noundef 3520, i32 noundef 48) #11
  %182 = icmp eq ptr %181, null
  br i1 %182, label %354, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.nvkm_vma, ptr %181, i32 0, i32 2
  store i64 %4, ptr %184, align 8
  %185 = getelementptr inbounds %struct.nvkm_vma, ptr %181, i32 0, i32 3
  %186 = trunc i64 %5 to i56
  %187 = load i56, ptr %185, align 8
  %188 = and i56 %186, 1125899906842623
  %189 = and i56 %187, -32651097298436096
  %190 = or i56 %188, %189
  %191 = or i56 %190, 31525197391593472
  store i56 %191, ptr %185, align 8
  %192 = getelementptr inbounds %struct.nvkm_vma, ptr %181, i32 0, i32 4
  %193 = load i8, ptr %192, align 1
  %194 = or i8 %193, 7
  store i8 %194, ptr %192, align 1
  %195 = load ptr, ptr %125, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %226, label %197

197:                                              ; preds = %220, %183
  %198 = phi ptr [ %222, %220 ], [ %195, %183 ]
  %199 = getelementptr i8, ptr %198, i32 24
  %200 = load i56, ptr %199, align 8
  %201 = and i56 %200, 1125899906842623
  %202 = icmp ult i56 %188, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.rb_node, ptr %198, i32 0, i32 2
  br label %220

205:                                              ; preds = %197
  %206 = icmp ugt i56 %188, %201
  br i1 %206, label %207, label %209

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.rb_node, ptr %198, i32 0, i32 1
  br label %220

209:                                              ; preds = %205
  %210 = getelementptr i8, ptr %198, i32 16
  %211 = load i64, ptr %210, align 8
  %212 = icmp ugt i64 %211, %4
  br i1 %212, label %213, label %215

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.rb_node, ptr %198, i32 0, i32 2
  br label %220

215:                                              ; preds = %209
  %216 = icmp ult i64 %211, %4
  br i1 %216, label %217, label %219

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.rb_node, ptr %198, i32 0, i32 1
  br label %220

219:                                              ; preds = %215
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

220:                                              ; preds = %217, %213, %207, %203
  %221 = phi ptr [ %204, %203 ], [ %208, %207 ], [ %214, %213 ], [ %218, %217 ]
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %197

224:                                              ; preds = %220
  %225 = ptrtoint ptr %198 to i32
  br label %226

226:                                              ; preds = %224, %183
  %227 = phi i32 [ %225, %224 ], [ 0, %183 ]
  %228 = phi ptr [ %221, %224 ], [ %125, %183 ]
  %229 = getelementptr inbounds %struct.nvkm_vma, ptr %181, i32 0, i32 1
  store i32 %227, ptr %229, align 8
  %230 = getelementptr inbounds %struct.nvkm_vma, ptr %181, i32 0, i32 1, i32 1
  store ptr null, ptr %230, align 4
  %231 = getelementptr inbounds %struct.nvkm_vma, ptr %181, i32 0, i32 1, i32 2
  store ptr null, ptr %231, align 8
  store ptr %229, ptr %228, align 4
  tail call void @rb_insert_color(ptr noundef %229, ptr noundef %125) #10
  %232 = load ptr, ptr %124, align 8
  store ptr %181, ptr %124, align 8
  store ptr %123, ptr %181, align 8
  %233 = getelementptr inbounds %struct.list_head, ptr %181, i32 0, i32 1
  store ptr %232, ptr %233, align 4
  store volatile ptr %181, ptr %232, align 4
  br label %234

234:                                              ; preds = %226, %177
  %235 = load i64, ptr %131, align 8
  %236 = icmp eq i64 %235, %132
  br i1 %236, label %354, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %239 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %238, i32 noundef 3520, i32 noundef 48) #11
  %240 = icmp eq ptr %239, null
  br i1 %240, label %354, label %241

241:                                              ; preds = %237
  %242 = sub i64 %235, %132
  %243 = getelementptr inbounds %struct.nvkm_vma, ptr %239, i32 0, i32 2
  store i64 %132, ptr %243, align 8
  %244 = getelementptr inbounds %struct.nvkm_vma, ptr %239, i32 0, i32 3
  %245 = trunc i64 %242 to i56
  %246 = load i56, ptr %244, align 8
  %247 = and i56 %245, 1125899906842623
  %248 = and i56 %246, -36028797018963968
  %249 = getelementptr inbounds %struct.nvkm_vma, ptr %239, i32 0, i32 4
  %250 = load i8, ptr %249, align 1
  %251 = or i56 %247, %248
  %252 = or i56 %251, 32651097298436096
  store i56 %252, ptr %244, align 8
  %253 = or i8 %250, 15
  store i8 %253, ptr %249, align 1
  %254 = load ptr, ptr %126, align 8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %274, label %256

256:                                              ; preds = %268, %241
  %257 = phi ptr [ %270, %268 ], [ %254, %241 ]
  %258 = getelementptr i8, ptr %257, i32 16
  %259 = load i64, ptr %258, align 8
  %260 = icmp ugt i64 %259, %132
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.rb_node, ptr %257, i32 0, i32 2
  br label %268

263:                                              ; preds = %256
  %264 = icmp ult i64 %259, %132
  br i1 %264, label %265, label %267

265:                                              ; preds = %263
  %266 = getelementptr inbounds %struct.rb_node, ptr %257, i32 0, i32 1
  br label %268

267:                                              ; preds = %263
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

268:                                              ; preds = %265, %261
  %269 = phi ptr [ %262, %261 ], [ %266, %265 ]
  %270 = load ptr, ptr %269, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %256

272:                                              ; preds = %268
  %273 = ptrtoint ptr %257 to i32
  br label %274

274:                                              ; preds = %272, %241
  %275 = phi i32 [ %273, %272 ], [ 0, %241 ]
  %276 = phi ptr [ %269, %272 ], [ %126, %241 ]
  %277 = getelementptr inbounds %struct.nvkm_vma, ptr %239, i32 0, i32 1
  store i32 %275, ptr %277, align 8
  %278 = getelementptr inbounds %struct.nvkm_vma, ptr %239, i32 0, i32 1, i32 1
  store ptr null, ptr %278, align 4
  %279 = getelementptr inbounds %struct.nvkm_vma, ptr %239, i32 0, i32 1, i32 2
  store ptr null, ptr %279, align 8
  store ptr %277, ptr %276, align 4
  tail call void @rb_insert_color(ptr noundef %277, ptr noundef %126) #10
  %280 = load ptr, ptr %124, align 8
  store ptr %239, ptr %124, align 8
  store ptr %123, ptr %239, align 8
  %281 = getelementptr inbounds %struct.list_head, ptr %239, i32 0, i32 1
  store ptr %280, ptr %281, align 4
  store volatile ptr %239, ptr %280, align 4
  br label %354

282:                                              ; preds = %122
  store i64 %4, ptr %127, align 8
  %283 = icmp eq i64 %5, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %282
  %285 = add i64 %5, %4
  br label %289

286:                                              ; preds = %282
  %287 = zext i32 %59 to i64
  %288 = shl nuw i64 1, %287
  br label %289

289:                                              ; preds = %286, %284
  %290 = phi i64 [ %285, %284 ], [ %288, %286 ]
  %291 = getelementptr inbounds %struct.nvkm_vmm, ptr %11, i32 0, i32 7
  store i64 %290, ptr %291, align 8
  %292 = icmp ult i64 %290, %4
  br i1 %292, label %354, label %293

293:                                              ; preds = %289
  %294 = zext i32 %59 to i64
  %295 = shl nuw i64 1, %294
  %296 = icmp ugt i64 %290, %295
  br i1 %296, label %354, label %297

297:                                              ; preds = %293
  %298 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %299 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %298, i32 noundef 3520, i32 noundef 48) #11
  %300 = icmp eq ptr %299, null
  br i1 %300, label %354, label %301

301:                                              ; preds = %297
  %302 = sub i64 %290, %4
  %303 = getelementptr inbounds %struct.nvkm_vma, ptr %299, i32 0, i32 2
  store i64 %4, ptr %303, align 8
  %304 = getelementptr inbounds %struct.nvkm_vma, ptr %299, i32 0, i32 3
  %305 = trunc i64 %302 to i56
  %306 = load i56, ptr %304, align 8
  %307 = and i56 %305, 1125899906842623
  %308 = and i56 %306, -32651097298436096
  %309 = or i56 %307, %308
  %310 = or i56 %309, 31525197391593472
  store i56 %310, ptr %304, align 8
  %311 = getelementptr inbounds %struct.nvkm_vma, ptr %299, i32 0, i32 4
  %312 = load i8, ptr %311, align 1
  %313 = or i8 %312, 7
  store i8 %313, ptr %311, align 1
  %314 = load ptr, ptr %125, align 4
  %315 = icmp eq ptr %314, null
  br i1 %315, label %345, label %316

316:                                              ; preds = %339, %301
  %317 = phi ptr [ %341, %339 ], [ %314, %301 ]
  %318 = getelementptr i8, ptr %317, i32 24
  %319 = load i56, ptr %318, align 8
  %320 = and i56 %319, 1125899906842623
  %321 = icmp ult i56 %307, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 2
  br label %339

324:                                              ; preds = %316
  %325 = icmp ugt i56 %307, %320
  br i1 %325, label %326, label %328

326:                                              ; preds = %324
  %327 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 1
  br label %339

328:                                              ; preds = %324
  %329 = getelementptr i8, ptr %317, i32 16
  %330 = load i64, ptr %329, align 8
  %331 = icmp ugt i64 %330, %4
  br i1 %331, label %332, label %334

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 2
  br label %339

334:                                              ; preds = %328
  %335 = icmp ult i64 %330, %4
  br i1 %335, label %336, label %338

336:                                              ; preds = %334
  %337 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 1
  br label %339

338:                                              ; preds = %334
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

339:                                              ; preds = %336, %332, %326, %322
  %340 = phi ptr [ %323, %322 ], [ %327, %326 ], [ %333, %332 ], [ %337, %336 ]
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %316

343:                                              ; preds = %339
  %344 = ptrtoint ptr %317 to i32
  br label %345

345:                                              ; preds = %343, %301
  %346 = phi i32 [ %344, %343 ], [ 0, %301 ]
  %347 = phi ptr [ %340, %343 ], [ %125, %301 ]
  %348 = getelementptr inbounds %struct.nvkm_vma, ptr %299, i32 0, i32 1
  store i32 %346, ptr %348, align 8
  %349 = getelementptr inbounds %struct.nvkm_vma, ptr %299, i32 0, i32 1, i32 1
  store ptr null, ptr %349, align 4
  %350 = getelementptr inbounds %struct.nvkm_vma, ptr %299, i32 0, i32 1, i32 2
  store ptr null, ptr %350, align 8
  store ptr %348, ptr %347, align 4
  tail call void @rb_insert_color(ptr noundef %348, ptr noundef %125) #10
  %351 = load ptr, ptr %123, align 4
  %352 = getelementptr inbounds %struct.list_head, ptr %351, i32 0, i32 1
  store ptr %299, ptr %352, align 4
  store ptr %351, ptr %299, align 8
  %353 = getelementptr inbounds %struct.list_head, ptr %299, i32 0, i32 1
  store ptr %123, ptr %353, align 4
  store volatile ptr %299, ptr %123, align 4
  br label %354

354:                                              ; preds = %345, %297, %293, %289, %274, %237, %234, %179, %138, %128, %109, %99, %56, %9
  %355 = phi i32 [ -12, %9 ], [ -22, %56 ], [ -12, %109 ], [ -22, %128 ], [ -22, %293 ], [ -22, %289 ], [ -12, %99 ], [ -12, %138 ], [ -12, %237 ], [ 0, %274 ], [ 0, %234 ], [ 0, %345 ], [ -12, %179 ], [ -12, %297 ]
  ret i32 %355
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_pfn_unmap(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %89, label %7

7:                                                ; preds = %23, %3
  %8 = phi ptr [ %25, %23 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = load i64, ptr %9, align 8
  %11 = icmp ugt i64 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %23

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %8, i32 24
  %16 = load i56, ptr %15, align 8
  %17 = and i56 %16, 1125899906842623
  %18 = zext i56 %17 to i64
  %19 = add i64 %10, %18
  %20 = icmp ugt i64 %19, %1
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi ptr [ %13, %12 ], [ %22, %21 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %89, label %7

27:                                               ; preds = %14
  %28 = getelementptr i8, ptr %8, i32 -8
  %29 = add i64 %2, %1
  %30 = icmp eq ptr %28, null
  br i1 %30, label %89, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  br label %33

33:                                               ; preds = %85, %31
  %34 = phi i64 [ %87, %85 ], [ %1, %31 ]
  %35 = phi ptr [ %81, %85 ], [ %28, %31 ]
  %36 = getelementptr inbounds %struct.nvkm_vma, ptr %35, i32 0, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 64
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %79, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.nvkm_vma, ptr %35, i32 0, i32 5
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %79

44:                                               ; preds = %40
  %45 = sub i64 %29, %34
  %46 = getelementptr inbounds %struct.nvkm_vma, ptr %35, i32 0, i32 3
  %47 = load i56, ptr %46, align 8
  %48 = and i56 %47, 1125899906842623
  %49 = zext i56 %48 to i64
  %50 = getelementptr inbounds %struct.nvkm_vma, ptr %35, i32 0, i32 2
  %51 = load i64, ptr %50, align 8
  %52 = sub i64 %51, %34
  %53 = add i64 %52, %49
  %54 = tail call i64 @llvm.umin.i64(i64 %45, i64 %53)
  %55 = load ptr, ptr %0, align 8
  %56 = and i8 %37, 7
  %57 = zext i8 %56 to i32
  %58 = getelementptr %struct.nvkm_vmm_func, ptr %55, i32 0, i32 8, i32 %57
  %59 = getelementptr %struct.nvkm_vmm_func, ptr %55, i32 0, i32 8, i32 %57, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %60, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %44
  %66 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %62, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %44
  %69 = phi ptr [ %63, %44 ], [ %67, %65 ]
  %70 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %58, i64 noundef %34, i64 noundef %54, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %69) #10
  %71 = tail call fastcc ptr @nvkm_vmm_pfn_split_merge(ptr noundef %0, ptr noundef nonnull %35, i64 noundef %34, i64 noundef %54, i1 noundef zeroext false)
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74, !prof !8

73:                                               ; preds = %68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1191, i32 noundef 9, ptr noundef null) #10
  br label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.nvkm_vma, ptr %71, i32 0, i32 4
  %76 = load i8, ptr %75, align 1
  %77 = and i8 %76, -72
  %78 = or i8 %77, 7
  store i8 %78, ptr %75, align 1
  br label %79

79:                                               ; preds = %74, %73, %40, %33
  %80 = phi ptr [ %35, %40 ], [ %71, %74 ], [ %35, %33 ], [ %35, %73 ]
  %81 = load ptr, ptr %80, align 8
  %82 = icmp eq ptr %81, %32
  %83 = icmp eq ptr %81, null
  %84 = or i1 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.nvkm_vma, ptr %81, i32 0, i32 2
  %87 = load i64, ptr %86, align 8
  %88 = icmp ult i64 %87, %29
  br i1 %88, label %33, label %89

89:                                               ; preds = %85, %79, %27, %23, %3
  %90 = phi i32 [ -22, %27 ], [ -22, %3 ], [ 0, %79 ], [ 0, %85 ], [ -22, %23 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @nvkm_vmm_pfn_split_merge(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, %2
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  %18 = icmp eq ptr %16, %17
  %19 = icmp eq ptr %16, null
  %20 = or i1 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.nvkm_vma, ptr %16, i32 0, i32 5
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvkm_vma, ptr %16, i32 0, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, 64
  %29 = icmp eq i8 %28, 0
  %30 = xor i1 %29, %4
  br i1 %30, label %32, label %31

31:                                               ; preds = %25, %21
  br label %32

32:                                               ; preds = %31, %25, %14, %9, %5
  %33 = phi ptr [ null, %31 ], [ %16, %25 ], [ null, %14 ], [ null, %9 ], [ null, %5 ]
  %34 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %35 = load i56, ptr %34, align 8
  %36 = and i56 %35, 1125899906842623
  %37 = zext i56 %36 to i64
  %38 = add i64 %7, %37
  %39 = add i64 %3, %2
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %32
  %42 = load ptr, ptr %1, align 8
  %43 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  %44 = icmp eq ptr %42, %43
  %45 = icmp eq ptr %42, null
  %46 = or i1 %44, %45
  br i1 %46, label %60, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.nvkm_vma, ptr %42, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.nvkm_vma, ptr %42, i32 0, i32 5
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = and i8 %49, 64
  %58 = icmp eq i8 %57, 0
  %59 = xor i1 %58, %4
  br i1 %59, label %62, label %60

60:                                               ; preds = %56, %52, %47, %41, %32
  %61 = icmp eq ptr %33, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ null, %60 ], [ %42, %56 ]
  %64 = tail call fastcc ptr @nvkm_vmm_node_merge(ptr noundef %0, ptr noundef %33, ptr noundef %1, ptr noundef %63, i64 noundef %3)
  br label %67

65:                                               ; preds = %60
  %66 = tail call ptr @nvkm_vmm_node_split(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi ptr [ %64, %62 ], [ %66, %65 ]
  ret ptr %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_pfn_map(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.nvkm_vmm_map, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %7, i32 0, i32 8
  %9 = add i64 %3, %2
  %10 = zext i8 %1 to i32
  %11 = zext i8 %1 to i64
  %12 = lshr i64 %3, %11
  %13 = trunc i64 %12 to i32
  %14 = load i8, ptr %8, align 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %28, %5
  %17 = phi i8 [ %30, %28 ], [ %14, %5 ]
  %18 = phi ptr [ %29, %28 ], [ %8, %5 ]
  %19 = icmp eq i8 %17, %1
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %18, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %20, %16
  %29 = getelementptr %struct.nvkm_vmm_page, ptr %18, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %45, label %16

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %18, i32 0, i32 1
  %34 = shl nsw i64 -1, %11
  %35 = xor i64 %34, -1
  %36 = or i64 %3, %2
  %37 = and i64 %36, %35
  %38 = icmp ne i64 %37, 0
  %39 = icmp ult i64 %9, %2
  %40 = or i1 %39, %38
  br i1 %40, label %45, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 7
  %43 = load i64, ptr %42, align 8
  %44 = icmp ugt i64 %9, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41, %32, %28, %5
  %46 = phi i8 [ %1, %32 ], [ %1, %41 ], [ 0, %5 ], [ 0, %28 ]
  %47 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %50, label %261

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nvkm_mmu, ptr %52, i32 0, i32 1, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.nvkm_mmu, ptr %52, i32 0, i32 1, i32 4
  %58 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.1, ptr noundef %57, ptr noundef %59, i32 noundef %10, i32 noundef %60, i64 noundef %2, i64 noundef %3) #13
  br label %261

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %261, label %65

65:                                               ; preds = %81, %61
  %66 = phi ptr [ %83, %81 ], [ %63, %61 ]
  %67 = getelementptr i8, ptr %66, i32 16
  %68 = load i64, ptr %67, align 8
  %69 = icmp ugt i64 %68, %2
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.rb_node, ptr %66, i32 0, i32 2
  br label %81

72:                                               ; preds = %65
  %73 = getelementptr i8, ptr %66, i32 24
  %74 = load i56, ptr %73, align 8
  %75 = and i56 %74, 1125899906842623
  %76 = zext i56 %75 to i64
  %77 = add i64 %68, %76
  %78 = icmp ugt i64 %77, %2
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.rb_node, ptr %66, i32 0, i32 1
  br label %81

81:                                               ; preds = %79, %70
  %82 = phi ptr [ %71, %70 ], [ %80, %79 ]
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %261, label %65

85:                                               ; preds = %72
  %86 = getelementptr i8, ptr %66, i32 -8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %261, label %88

88:                                               ; preds = %85
  %89 = ptrtoint ptr %18 to i32
  %90 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %6, i32 0, i32 7
  %91 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %6, i32 0, i32 5
  %92 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  br label %93

93:                                               ; preds = %256, %88
  %94 = phi i32 [ %257, %256 ], [ 0, %88 ]
  %95 = phi i64 [ %228, %256 ], [ %2, %88 ]
  %96 = phi ptr [ %235, %256 ], [ %86, %88 ]
  %97 = getelementptr i64, ptr %4, i32 %94
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 1
  %100 = icmp ne i64 %99, 0
  %101 = trunc i64 %99 to i8
  %102 = getelementptr inbounds %struct.nvkm_vma, ptr %96, i32 0, i32 4
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, 64
  %105 = icmp eq i8 %104, 0
  %106 = sub i64 %9, %95
  %107 = trunc i64 %99 to i32
  %108 = icmp slt i32 %94, %13
  br i1 %108, label %109, label %125

109:                                              ; preds = %93
  %110 = sub i32 %13, %94
  %111 = trunc i64 %98 to i32
  %112 = and i32 %111, 1
  %113 = icmp eq i32 %112, %107
  br i1 %113, label %114, label %125

114:                                              ; preds = %118, %109
  %115 = phi i32 [ %116, %118 ], [ 0, %109 ]
  %116 = add i32 %115, 1
  %117 = icmp eq i32 %116, %110
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = add i32 %116, %94
  %120 = getelementptr i64, ptr %4, i32 %119
  %121 = load i64, ptr %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, %107
  br i1 %124, label %114, label %125

125:                                              ; preds = %118, %114, %109, %93
  %126 = phi i32 [ 0, %93 ], [ 0, %109 ], [ %110, %114 ], [ %116, %118 ]
  %127 = load i8, ptr %18, align 4
  %128 = zext i8 %127 to i32
  %129 = shl i32 %126, %128
  %130 = sext i32 %129 to i64
  %131 = call i64 @llvm.umin.i64(i64 %106, i64 %130)
  %132 = getelementptr inbounds %struct.nvkm_vma, ptr %96, i32 0, i32 3
  %133 = load i56, ptr %132, align 8
  %134 = and i56 %133, 1125899906842623
  %135 = zext i56 %134 to i64
  %136 = getelementptr inbounds %struct.nvkm_vma, ptr %96, i32 0, i32 2
  %137 = load i64, ptr %136, align 8
  %138 = sub i64 %137, %95
  %139 = add i64 %138, %135
  %140 = call i64 @llvm.umin.i64(i64 %131, i64 %139)
  %141 = and i56 %133, 1125899906842624
  %142 = icmp eq i56 %141, 0
  br i1 %142, label %218, label %143

143:                                              ; preds = %125
  %144 = getelementptr inbounds %struct.nvkm_vma, ptr %96, i32 0, i32 5
  %145 = load ptr, ptr %144, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %218

147:                                              ; preds = %143
  %148 = lshr exact i8 %104, 6
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %107, %149
  br i1 %150, label %175, label %151

151:                                              ; preds = %147
  %152 = call fastcc ptr @nvkm_vmm_pfn_split_merge(ptr noundef %0, ptr noundef %96, i64 noundef %95, i64 noundef %140, i1 noundef zeroext %100)
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %155, !prof !8

154:                                              ; preds = %151
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1274, i32 noundef 9, ptr noundef null) #10
  br label %218

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.nvkm_vma, ptr %152, i32 0, i32 4
  %157 = load i8, ptr %156, align 1
  %158 = shl nuw nsw i8 %101, 6
  %159 = and i8 %157, -65
  %160 = or i8 %159, %158
  store i8 %160, ptr %156, align 1
  br i1 %100, label %161, label %171

161:                                              ; preds = %155
  %162 = load ptr, ptr %0, align 8
  %163 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %162, i32 0, i32 8
  %164 = ptrtoint ptr %163 to i32
  %165 = sub i32 %89, %164
  %166 = sdiv exact i32 %165, 12
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 7
  %169 = and i8 %160, -8
  %170 = or i8 %168, %169
  br label %173

171:                                              ; preds = %155
  %172 = or i8 %160, 7
  br label %173

173:                                              ; preds = %171, %161
  %174 = phi i8 [ %172, %171 ], [ %170, %161 ]
  store i8 %174, ptr %156, align 1
  br label %175

175:                                              ; preds = %173, %147
  %176 = phi ptr [ %152, %173 ], [ %96, %147 ]
  br i1 %100, label %177, label %205

177:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %6, i8 0, i32 72, i1 false), !annotation !14
  store ptr %18, ptr %90, align 8
  store ptr %97, ptr %91, align 4
  %178 = load ptr, ptr %33, align 4
  %179 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %178, i32 0, i32 4
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %180, i32 0, i32 7
  %182 = load ptr, ptr %181, align 4
  br i1 %105, label %183, label %201

183:                                              ; preds = %177
  %184 = call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %18, i64 noundef %95, i64 noundef %140, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_ref_ptes, ptr noundef %182, ptr noundef nonnull %6, ptr noundef null) #10
  %185 = icmp eq i64 %184, -1
  br i1 %185, label %203, label %186

186:                                              ; preds = %183
  %187 = icmp eq i64 %184, %95
  br i1 %187, label %203, label %188

188:                                              ; preds = %186
  %189 = sub i64 %184, %95
  %190 = load ptr, ptr %33, align 4
  %191 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %190, i32 0, i32 4
  %192 = load ptr, ptr %191, align 4
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %192, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  br label %198

198:                                              ; preds = %195, %188
  %199 = phi ptr [ %193, %188 ], [ %197, %195 ]
  %200 = call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %18, i64 noundef %95, i64 noundef %189, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %199) #10
  br label %203

201:                                              ; preds = %177
  %202 = call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %18, i64 noundef %95, i64 noundef %140, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef %182, ptr noundef nonnull %6, ptr noundef null) #10
  br label %203

203:                                              ; preds = %201, %198, %186, %183
  %204 = phi i32 [ 0, %201 ], [ -12, %198 ], [ -12, %186 ], [ 0, %183 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #10
  br label %218

205:                                              ; preds = %175
  br i1 %105, label %218, label %206

206:                                              ; preds = %205
  %207 = load ptr, ptr %33, align 4
  %208 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %207, i32 0, i32 4
  %209 = load ptr, ptr %208, align 4
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %209, i32 0, i32 1
  %214 = load ptr, ptr %213, align 4
  br label %215

215:                                              ; preds = %212, %206
  %216 = phi ptr [ %210, %206 ], [ %214, %212 ]
  %217 = call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %18, i64 noundef %95, i64 noundef %140, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %216) #10
  br label %218

218:                                              ; preds = %215, %205, %203, %154, %143, %125
  %219 = phi i32 [ -22, %154 ], [ %204, %203 ], [ 0, %215 ], [ 0, %205 ], [ -22, %143 ], [ -22, %125 ]
  %220 = phi ptr [ %96, %154 ], [ %176, %203 ], [ %176, %215 ], [ %176, %205 ], [ %96, %143 ], [ %96, %125 ]
  %221 = getelementptr inbounds %struct.nvkm_vma, ptr %220, i32 0, i32 2
  %222 = load i64, ptr %221, align 8
  %223 = getelementptr inbounds %struct.nvkm_vma, ptr %220, i32 0, i32 3
  %224 = load i56, ptr %223, align 8
  %225 = and i56 %224, 1125899906842623
  %226 = zext i56 %225 to i64
  %227 = add i64 %222, %226
  %228 = add i64 %140, %95
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %234

230:                                              ; preds = %218
  %231 = load ptr, ptr %220, align 8
  %232 = icmp eq ptr %231, %92
  %233 = select i1 %232, ptr null, ptr %231
  br label %234

234:                                              ; preds = %230, %218
  %235 = phi ptr [ %233, %230 ], [ %220, %218 ]
  %236 = icmp eq i32 %219, 0
  br i1 %236, label %250, label %237

237:                                              ; preds = %234
  %238 = icmp eq i64 %140, 0
  br i1 %238, label %256, label %239

239:                                              ; preds = %239, %237
  %240 = phi i32 [ %242, %239 ], [ %94, %237 ]
  %241 = phi i64 [ %248, %239 ], [ %140, %237 ]
  %242 = add i32 %240, 1
  %243 = getelementptr i64, ptr %4, i32 %240
  store i64 0, ptr %243, align 8
  %244 = load i8, ptr %18, align 4
  %245 = zext i8 %244 to i32
  %246 = shl nuw i32 1, %245
  %247 = sext i32 %246 to i64
  %248 = sub i64 %241, %247
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %256, label %239

250:                                              ; preds = %234
  %251 = load i8, ptr %18, align 4
  %252 = zext i8 %251 to i64
  %253 = lshr i64 %140, %252
  %254 = trunc i64 %253 to i32
  %255 = add i32 %94, %254
  br label %256

256:                                              ; preds = %250, %239, %237
  %257 = phi i32 [ %255, %250 ], [ %94, %237 ], [ %242, %239 ]
  %258 = icmp ne ptr %235, null
  %259 = icmp ult i64 %228, %9
  %260 = select i1 %258, i1 %259, i1 false
  br i1 %260, label %93, label %261

261:                                              ; preds = %256, %85, %81, %61, %50, %45
  %262 = phi i32 [ -22, %50 ], [ -22, %45 ], [ -2, %85 ], [ -2, %61 ], [ 0, %256 ], [ -2, %81 ]
  ret i32 %262
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_unmap_region(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_mmu, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 6
  tail call void @nvkm_memory_tags_put(ptr noundef %4, ptr noundef %8, ptr noundef %9) #10
  tail call void @nvkm_memory_unref(ptr noundef %3) #10
  %10 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -65
  store i8 %12, ptr %10, align 1
  %13 = and i8 %11, 16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  %19 = icmp eq ptr %17, %18
  %20 = icmp eq ptr %17, null
  %21 = or i1 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.nvkm_vma, ptr %17, i32 0, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 64
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, ptr %17, ptr null
  br label %28

28:                                               ; preds = %22, %15, %2
  %29 = phi ptr [ %27, %22 ], [ null, %15 ], [ null, %2 ]
  %30 = load ptr, ptr %1, align 8
  %31 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  %32 = icmp eq ptr %30, %31
  %33 = icmp eq ptr %30, null
  %34 = or i1 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.nvkm_vma, ptr %30, i32 0, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 80
  %39 = icmp eq i8 %38, 16
  %40 = select i1 %39, ptr %30, ptr null
  br label %41

41:                                               ; preds = %35, %28
  %42 = phi ptr [ null, %28 ], [ %40, %35 ]
  %43 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %44 = load i56, ptr %43, align 8
  %45 = and i56 %44, 1125899906842623
  %46 = zext i56 %45 to i64
  %47 = tail call fastcc ptr @nvkm_vmm_node_merge(ptr noundef %0, ptr noundef %29, ptr noundef %1, ptr noundef %42, i64 noundef %46)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_tags_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_unmap_locked(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 7
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.nvkm_vmm_func, ptr %4, i32 0, i32 8, i32 %8
  %10 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %11 = load i56, ptr %10, align 8
  %12 = and i56 %11, 1125899906842624
  %13 = icmp eq i56 %12, 0
  %14 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i56 %11, 1125899906842623
  %17 = zext i56 %16 to i64
  %18 = and i56 %11, 2251799813685248
  %19 = icmp eq i56 %18, 0
  %20 = getelementptr %struct.nvkm_vmm_func, ptr %4, i32 0, i32 8, i32 %8, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  br i1 %13, label %40, label %24

24:                                               ; preds = %3
  br i1 %19, label %27, label %25

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %23, i32 0, i32 2
  br label %32

27:                                               ; preds = %24
  %28 = load ptr, ptr %23, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %23, i32 0, i32 1
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi ptr [ %31, %30 ], [ %26, %25 ]
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi ptr [ %28, %27 ], [ %34, %32 ]
  %37 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %9, i64 noundef %15, i64 noundef %17, i1 noundef zeroext false, i1 noundef zeroext %2, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %36) #10
  %38 = load i8, ptr %5, align 1
  %39 = or i8 %38, 7
  store i8 %39, ptr %5, align 1
  br label %54

40:                                               ; preds = %3
  br i1 %19, label %43, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %23, i32 0, i32 2
  br label %48

43:                                               ; preds = %40
  %44 = load ptr, ptr %23, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %23, i32 0, i32 1
  br label %48

48:                                               ; preds = %46, %41
  %49 = phi ptr [ %47, %46 ], [ %42, %41 ]
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi ptr [ %44, %43 ], [ %50, %48 ]
  %53 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %9, i64 noundef %15, i64 noundef %17, i1 noundef zeroext false, i1 noundef zeroext %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %52) #10
  br label %54

54:                                               ; preds = %51, %35
  tail call void @nvkm_vmm_unmap_region(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_unmap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %7) #10
  tail call void @nvkm_vmm_unmap_locked(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  tail call void @mutex_unlock(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i64 %10(ptr noundef %7) #10
  %12 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %15 = load i56, ptr %14, align 8
  %16 = and i56 %15, 1125899906842623
  %17 = zext i56 %16 to i64
  %18 = add i64 %13, %17
  %19 = icmp ult i64 %11, %18
  br i1 %19, label %20, label %43, !prof !8

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 3
  br i1 %23, label %24, label %285

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_mmu, ptr %26, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_mmu, ptr %26, i32 0, i32 1, i32 4
  %32 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_memory_func, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i64 %37(ptr noundef %34) #10
  %39 = load i64, ptr %12, align 8
  %40 = load i56, ptr %14, align 8
  %41 = and i56 %40, 1125899906842623
  %42 = zext i56 %41 to i64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.12, ptr noundef %31, ptr noundef %33, i64 noundef %38, i64 noundef %39, i64 noundef %42) #13
  br label %285

43:                                               ; preds = %5
  %44 = and i56 %15, 31525197391593472
  %45 = icmp eq i56 %44, 31525197391593472
  %46 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 4
  %47 = load i8, ptr %46, align 1
  %48 = and i8 %47, 7
  %49 = icmp eq i8 %48, 7
  %50 = select i1 %45, i1 %49, i1 false
  br i1 %50, label %51, label %125

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  store i32 0, ptr %52, align 4
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  store ptr %55, ptr %56, align 8
  %57 = load i8, ptr %55, align 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %61 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  br label %62

62:                                               ; preds = %78, %59
  %63 = phi i8 [ %57, %59 ], [ %81, %78 ]
  %64 = load i32, ptr %52, align 4
  %65 = icmp ugt i32 %64, 3
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load ptr, ptr %60, align 4
  %68 = getelementptr inbounds %struct.nvkm_mmu, ptr %67, i32 0, i32 1, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.nvkm_mmu, ptr %67, i32 0, i32 1, i32 4
  %73 = load ptr, ptr %61, align 8
  %74 = zext i8 %63 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.15, ptr noundef %72, ptr noundef %73, i32 noundef %74) #13
  br label %75

75:                                               ; preds = %66, %62
  %76 = tail call fastcc i32 @nvkm_vmm_map_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %56, align 8
  %80 = getelementptr %struct.nvkm_vmm_page, ptr %79, i32 1
  store ptr %80, ptr %56, align 8
  %81 = load i8, ptr %80, align 4
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %84, label %62

83:                                               ; preds = %75
  store i32 %53, ptr %52, align 4
  br label %155

84:                                               ; preds = %78, %51
  store i32 %53, ptr %52, align 4
  %85 = icmp ugt i32 %53, 3
  br i1 %85, label %86, label %96

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nvkm_mmu, ptr %88, i32 0, i32 1, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nvkm_device, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.nvkm_mmu, ptr %88, i32 0, i32 1, i32 4
  %94 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.13, ptr noundef %93, ptr noundef %95) #13
  br label %96

96:                                               ; preds = %86, %84
  %97 = load ptr, ptr %0, align 8
  %98 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %97, i32 0, i32 8
  store ptr %98, ptr %56, align 8
  %99 = load i8, ptr %98, align 4
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %285, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %103 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  br label %104

104:                                              ; preds = %120, %101
  %105 = phi i8 [ %99, %101 ], [ %123, %120 ]
  %106 = load i32, ptr %52, align 4
  %107 = icmp ugt i32 %106, 3
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load ptr, ptr %102, align 4
  %110 = getelementptr inbounds %struct.nvkm_mmu, ptr %109, i32 0, i32 1, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.nvkm_device, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.nvkm_mmu, ptr %109, i32 0, i32 1, i32 4
  %115 = load ptr, ptr %103, align 8
  %116 = zext i8 %105 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %113, ptr noundef nonnull @.str.15, ptr noundef %114, ptr noundef %115, i32 noundef %116) #13
  br label %117

117:                                              ; preds = %108, %104
  %118 = tail call fastcc i32 @nvkm_vmm_map_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #10
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %285, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %56, align 8
  %122 = getelementptr %struct.nvkm_vmm_page, ptr %121, i32 1
  store ptr %122, ptr %56, align 8
  %123 = load i8, ptr %122, align 4
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %285, label %104

125:                                              ; preds = %43
  br i1 %49, label %130, label %126

126:                                              ; preds = %125
  %127 = zext i8 %48 to i32
  %128 = load ptr, ptr %0, align 8
  %129 = getelementptr %struct.nvkm_vmm_func, ptr %128, i32 0, i32 8, i32 %127
  br label %136

130:                                              ; preds = %125
  %131 = load ptr, ptr %0, align 8
  %132 = lshr i56 %15, 52
  %133 = trunc i56 %132 to i32
  %134 = and i32 %133, 7
  %135 = getelementptr %struct.nvkm_vmm_func, ptr %131, i32 0, i32 8, i32 %134
  br label %136

136:                                              ; preds = %130, %126
  %137 = phi ptr [ %135, %130 ], [ %129, %126 ]
  %138 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  store ptr %137, ptr %138, align 8
  %139 = tail call fastcc i32 @nvkm_vmm_map_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #10
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = icmp ugt i32 %143, 3
  br i1 %144, label %145, label %285

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.nvkm_mmu, ptr %147, i32 0, i32 1, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.nvkm_device, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.nvkm_mmu, ptr %147, i32 0, i32 1, i32 4
  %153 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %154 = load ptr, ptr %153, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %151, ptr noundef nonnull @.str.14, ptr noundef %152, ptr noundef %154, i32 noundef %139) #13
  br label %285

155:                                              ; preds = %136, %83
  %156 = load i64, ptr %12, align 8
  %157 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 6
  store i64 %156, ptr %157, align 8
  %158 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 2
  %159 = load ptr, ptr %158, align 8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %184, label %161

161:                                              ; preds = %155
  %162 = icmp eq i64 %156, 0
  br i1 %162, label %176, label %163

163:                                              ; preds = %171, %161
  %164 = phi ptr [ %174, %171 ], [ %159, %161 ]
  %165 = phi i64 [ %172, %171 ], [ %156, %161 ]
  %166 = getelementptr inbounds %struct.nvkm_mm_node, ptr %164, i32 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = zext i32 %167 to i64
  %169 = shl nuw nsw i64 %168, 12
  %170 = icmp ult i64 %165, %169
  br i1 %170, label %176, label %171

171:                                              ; preds = %163
  %172 = sub i64 %165, %169
  store i64 %172, ptr %157, align 8
  %173 = getelementptr inbounds %struct.nvkm_mm_node, ptr %164, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  store ptr %174, ptr %158, align 8
  %175 = icmp eq i64 %172, 0
  br i1 %175, label %176, label %163

176:                                              ; preds = %171, %163, %161
  %177 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %180, i32 0, i32 4
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %182, i32 0, i32 4
  br label %224

184:                                              ; preds = %155
  %185 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %210, label %188

188:                                              ; preds = %184
  %189 = icmp eq i64 %156, 0
  br i1 %189, label %202, label %190

190:                                              ; preds = %197, %188
  %191 = phi ptr [ %199, %197 ], [ %186, %188 ]
  %192 = phi i64 [ %200, %197 ], [ %156, %188 ]
  %193 = getelementptr inbounds %struct.scatterlist, ptr %191, i32 0, i32 4
  %194 = load i32, ptr %193, align 4
  %195 = zext i32 %194 to i64
  %196 = icmp ult i64 %192, %195
  br i1 %196, label %202, label %197

197:                                              ; preds = %190
  %198 = sub i64 %192, %195
  store i64 %198, ptr %157, align 8
  %199 = tail call ptr @sg_next(ptr noundef %191) #10
  store ptr %199, ptr %185, align 4
  %200 = load i64, ptr %157, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %190

202:                                              ; preds = %197, %190, %188
  %203 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %204 = load ptr, ptr %203, align 8
  %205 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %204, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %206, i32 0, i32 4
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %208, i32 0, i32 6
  br label %224

210:                                              ; preds = %184
  %211 = lshr i64 %156, 12
  %212 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 4
  %213 = load ptr, ptr %212, align 8
  %214 = trunc i64 %211 to i32
  %215 = getelementptr i32, ptr %213, i32 %214
  store ptr %215, ptr %212, align 8
  %216 = and i64 %156, -4096
  store i64 %216, ptr %157, align 8
  %217 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %218 = load ptr, ptr %217, align 8
  %219 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %218, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %220, i32 0, i32 4
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %222, i32 0, i32 5
  br label %224

224:                                              ; preds = %210, %202, %176
  %225 = phi ptr [ %178, %176 ], [ %204, %202 ], [ %218, %210 ]
  %226 = phi ptr [ %183, %176 ], [ %209, %202 ], [ %223, %210 ]
  %227 = load ptr, ptr %226, align 4
  %228 = load i8, ptr %46, align 1
  %229 = and i8 %228, 7
  %230 = icmp eq i8 %229, 7
  %231 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  %232 = load i64, ptr %231, align 8
  %233 = load i56, ptr %14, align 8
  %234 = and i56 %233, 1125899906842623
  %235 = zext i56 %234 to i64
  br i1 %230, label %236, label %269

236:                                              ; preds = %224
  %237 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %225, i64 noundef %232, i64 noundef %235, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_ref_ptes, ptr noundef %227, ptr noundef %4, ptr noundef null) #10
  %238 = icmp eq i64 %237, -1
  br i1 %238, label %255, label %239

239:                                              ; preds = %236
  %240 = icmp eq i64 %237, %232
  br i1 %240, label %285, label %241

241:                                              ; preds = %239
  %242 = sub i64 %237, %232
  %243 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %225, i32 0, i32 1
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %244, i32 0, i32 4
  %246 = load ptr, ptr %245, align 4
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %246, i32 0, i32 1
  %251 = load ptr, ptr %250, align 4
  br label %252

252:                                              ; preds = %249, %241
  %253 = phi ptr [ %247, %241 ], [ %251, %249 ]
  %254 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %225, i64 noundef %232, i64 noundef %242, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %253) #10
  br label %285

255:                                              ; preds = %236
  %256 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %257 = load ptr, ptr %256, align 8
  %258 = load ptr, ptr %0, align 8
  %259 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %258, i32 0, i32 8
  %260 = ptrtoint ptr %257 to i32
  %261 = ptrtoint ptr %259 to i32
  %262 = sub i32 %260, %261
  %263 = sdiv exact i32 %262, 12
  %264 = trunc i32 %263 to i8
  %265 = load i8, ptr %46, align 1
  %266 = and i8 %264, 7
  %267 = and i8 %265, -8
  %268 = or i8 %266, %267
  store i8 %268, ptr %46, align 1
  br label %271

269:                                              ; preds = %224
  %270 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %225, i64 noundef %232, i64 noundef %235, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef null, ptr noundef %227, ptr noundef %4, ptr noundef null) #10
  br label %271

271:                                              ; preds = %269, %255
  %272 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 5
  %273 = load ptr, ptr %272, align 8
  %274 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr inbounds %struct.nvkm_mmu, ptr %275, i32 0, i32 1, i32 1
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 6
  tail call void @nvkm_memory_tags_put(ptr noundef %273, ptr noundef %277, ptr noundef %278) #10
  tail call void @nvkm_memory_unref(ptr noundef %272) #10
  %279 = load ptr, ptr %4, align 8
  %280 = tail call ptr @nvkm_memory_ref(ptr noundef %279) #10
  store ptr %280, ptr %272, align 8
  %281 = load i8, ptr %46, align 1
  %282 = or i8 %281, 64
  store i8 %282, ptr %46, align 1
  %283 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 8
  %284 = load ptr, ptr %283, align 4
  store ptr %284, ptr %278, align 4
  br label %285

285:                                              ; preds = %271, %252, %239, %145, %141, %120, %117, %96, %24, %20
  %286 = phi i32 [ 0, %271 ], [ -22, %24 ], [ -22, %20 ], [ %139, %145 ], [ %139, %141 ], [ -22, %96 ], [ -12, %252 ], [ -12, %239 ], [ -22, %120 ], [ -22, %117 ]
  %287 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 4
  %288 = load i8, ptr %287, align 1
  %289 = and i8 %288, -33
  store i8 %289, ptr %287, align 1
  tail call void @mutex_unlock(ptr noundef %6) #10
  ret i32 %286
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_put_locked(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %3, i32 0, i32 8
  %5 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1542, 0\0A.popsection", ""() #10, !srcloc !15
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %12 = load i56, ptr %11, align 8
  %13 = and i56 %12, 3377699720527872
  %14 = icmp eq i56 %13, 2251799813685248
  br i1 %14, label %114, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  br label %17

17:                                               ; preds = %107, %15
  %18 = phi i56 [ %111, %107 ], [ %12, %15 ]
  %19 = phi i8 [ %109, %107 ], [ %6, %15 ]
  %20 = phi ptr [ %68, %107 ], [ %1, %15 ]
  %21 = getelementptr inbounds %struct.nvkm_vma, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8
  %23 = icmp ne ptr %22, null
  %24 = and i8 %19, 64
  %25 = icmp eq i8 %24, 0
  %26 = and i8 %19, 7
  %27 = getelementptr inbounds %struct.nvkm_vma, ptr %20, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = and i56 %18, 1125899906842623
  %30 = zext i56 %29 to i64
  %31 = load ptr, ptr %20, align 8
  %32 = icmp eq ptr %31, %16
  %33 = icmp eq ptr %31, null
  %34 = or i1 %32, %33
  br i1 %34, label %66, label %35

35:                                               ; preds = %17
  %36 = lshr exact i8 %24, 6
  br label %37

37:                                               ; preds = %56, %35
  %38 = phi ptr [ %31, %35 ], [ %62, %56 ]
  %39 = phi i64 [ %30, %35 ], [ %61, %56 ]
  %40 = getelementptr inbounds %struct.nvkm_vma, ptr %38, i32 0, i32 4
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 16
  %43 = icmp ne i8 %42, 0
  %44 = lshr i8 %41, 6
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, %36
  %47 = select i1 %43, i1 %46, i1 false
  br i1 %47, label %48, label %66

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.nvkm_vma, ptr %38, i32 0, i32 5
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  %52 = xor i1 %23, %51
  %53 = and i8 %41, 7
  %54 = icmp eq i8 %53, %26
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.nvkm_vma, ptr %38, i32 0, i32 3
  %58 = load i56, ptr %57, align 8
  %59 = and i56 %58, 1125899906842623
  %60 = zext i56 %59 to i64
  %61 = add i64 %39, %60
  %62 = load ptr, ptr %38, align 8
  %63 = icmp eq ptr %62, %16
  %64 = icmp eq ptr %62, null
  %65 = or i1 %63, %64
  br i1 %65, label %66, label %37

66:                                               ; preds = %56, %48, %37, %17
  %67 = phi i64 [ %30, %17 ], [ %61, %56 ], [ %39, %37 ], [ %39, %48 ]
  %68 = phi ptr [ %31, %17 ], [ %62, %56 ], [ %38, %37 ], [ %38, %48 ]
  %69 = phi ptr [ null, %17 ], [ null, %56 ], [ %38, %37 ], [ %38, %48 ]
  %70 = phi i1 [ true, %17 ], [ true, %56 ], [ false, %37 ], [ false, %48 ]
  br i1 %25, label %95, label %71

71:                                               ; preds = %66
  %72 = zext i8 %26 to i32
  %73 = getelementptr %struct.nvkm_vmm_page, ptr %4, i32 %72
  %74 = load i56, ptr %11, align 8
  %75 = and i56 %74, 2251799813685248
  %76 = icmp eq i56 %75, 0
  %77 = xor i1 %23, true
  %78 = getelementptr %struct.nvkm_vmm_page, ptr %4, i32 %72, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  br i1 %76, label %84, label %82

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %81, i32 0, i32 2
  br label %89

84:                                               ; preds = %71
  %85 = load ptr, ptr %81, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %81, i32 0, i32 1
  br label %89

89:                                               ; preds = %87, %82
  %90 = phi ptr [ %88, %87 ], [ %83, %82 ]
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %85, %84 ], [ %91, %89 ]
  %94 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %73, i64 noundef %28, i64 noundef %67, i1 noundef zeroext false, i1 noundef zeroext %77, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %93) #10
  br label %101

95:                                               ; preds = %66
  %96 = icmp eq i8 %26, 7
  br i1 %96, label %101, label %97

97:                                               ; preds = %95
  %98 = zext i8 %26 to i32
  %99 = getelementptr %struct.nvkm_vmm_page, ptr %4, i32 %98
  %100 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %99, i64 noundef %28, i64 noundef %67, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br label %101

101:                                              ; preds = %97, %95, %92
  br i1 %70, label %112, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.nvkm_vma, ptr %69, i32 0, i32 4
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, 16
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.nvkm_vma, ptr %68, i32 0, i32 4
  %109 = load i8, ptr %108, align 1
  %110 = getelementptr inbounds %struct.nvkm_vma, ptr %68, i32 0, i32 3
  %111 = load i56, ptr %110, align 8
  br label %17

112:                                              ; preds = %102, %101
  %113 = load i8, ptr %5, align 1
  br label %114

114:                                              ; preds = %112, %10
  %115 = phi i8 [ %113, %112 ], [ %6, %10 ]
  %116 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  br label %117

117:                                              ; preds = %128, %114
  %118 = phi i8 [ %115, %114 ], [ %130, %128 ]
  %119 = phi ptr [ %1, %114 ], [ %124, %128 ]
  %120 = and i8 %118, 64
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  tail call void @nvkm_vmm_unmap_region(ptr noundef %0, ptr noundef %119)
  br label %123

123:                                              ; preds = %122, %117
  %124 = load ptr, ptr %1, align 8
  %125 = icmp eq ptr %124, %116
  %126 = icmp eq ptr %124, null
  %127 = or i1 %125, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.nvkm_vma, ptr %124, i32 0, i32 4
  %130 = load i8, ptr %129, align 1
  %131 = and i8 %130, 16
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %117

133:                                              ; preds = %128, %123
  %134 = load i56, ptr %11, align 8
  %135 = and i56 %134, 3377699720527872
  %136 = icmp eq i56 %135, 2251799813685248
  br i1 %136, label %137, label %158

137:                                              ; preds = %133
  %138 = load i8, ptr %5, align 1
  %139 = and i8 %138, 7
  %140 = zext i8 %139 to i32
  %141 = getelementptr %struct.nvkm_vmm_page, ptr %4, i32 %140
  %142 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  %143 = load i64, ptr %142, align 8
  %144 = and i56 %134, 1125899906842623
  %145 = zext i56 %144 to i64
  %146 = getelementptr %struct.nvkm_vmm_page, ptr %4, i32 %140, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %147, i32 0, i32 4
  %149 = load ptr, ptr %148, align 4
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %137
  %153 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %149, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  br label %155

155:                                              ; preds = %152, %137
  %156 = phi ptr [ %154, %152 ], [ %150, %137 ]
  %157 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %141, i64 noundef %143, i64 noundef %145, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %156) #10
  br label %167

158:                                              ; preds = %133
  %159 = and i56 %134, 2251799813685248
  %160 = icmp eq i56 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  %163 = load i64, ptr %162, align 8
  %164 = and i56 %134, 1125899906842623
  %165 = zext i56 %164 to i64
  %166 = tail call fastcc i32 @nvkm_vmm_ptes_sparse(ptr noundef %0, i64 noundef %163, i64 noundef %165, i1 noundef zeroext false)
  br label %167

167:                                              ; preds = %161, %158, %155
  %168 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 1
  %169 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  tail call void @rb_erase(ptr noundef %168, ptr noundef %169) #10
  %170 = load i56, ptr %11, align 8
  %171 = or i56 %170, 31525197391593472
  store i56 %171, ptr %11, align 8
  %172 = load i8, ptr %5, align 1
  %173 = and i8 %172, -16
  %174 = or i8 %173, 7
  store i8 %174, ptr %5, align 1
  tail call fastcc void @nvkm_vmm_put_region(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_vmm_ptes_sparse(ptr noundef %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %5, i32 0, i32 8
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %176, label %8

8:                                                ; preds = %172, %4
  %9 = phi i32 [ %13, %172 ], [ 0, %4 ]
  %10 = phi i64 [ %174, %172 ], [ %1, %4 ]
  %11 = phi i64 [ %173, %172 ], [ %2, %4 ]
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i32 [ %19, %12 ], [ %9, %8 ]
  %14 = getelementptr %struct.nvkm_vmm_page, ptr %6, i32 %13
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i64
  %17 = lshr i64 %11, %16
  %18 = icmp eq i64 %17, 0
  %19 = add i32 %13, 1
  br i1 %18, label %12, label %20

20:                                               ; preds = %12
  %21 = zext i8 %15 to i64
  %22 = shl nsw i64 -1, %21
  %23 = xor i64 %22, -1
  %24 = and i64 %10, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %26, %20
  %27 = phi i32 [ %28, %26 ], [ %13, %20 ]
  %28 = add i32 %27, 1
  %29 = getelementptr %struct.nvkm_vmm_page, ptr %6, i32 %28
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i64
  %32 = shl nsw i64 -1, %31
  %33 = xor i64 %32, -1
  %34 = and i64 %10, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %26

36:                                               ; preds = %26, %20
  %37 = phi i32 [ %13, %20 ], [ %28, %26 ]
  %38 = phi i64 [ %22, %20 ], [ %32, %26 ]
  %39 = getelementptr %struct.nvkm_vmm_page, ptr %6, i32 %37
  %40 = icmp eq i32 %37, %13
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = add i32 %37, -1
  %43 = getelementptr %struct.nvkm_vmm_page, ptr %6, i32 %42
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i64
  %46 = shl nuw i64 1, %45
  %47 = add i64 %10, -1
  %48 = add i64 %47, %46
  %49 = sub i64 0, %46
  %50 = and i64 %48, %49
  %51 = sub i64 %50, %10
  %52 = sub i64 %11, %51
  %53 = icmp ult i64 %52, %46
  %54 = select i1 %53, i64 %11, i64 %51
  br label %55

55:                                               ; preds = %41, %36
  %56 = phi i64 [ %54, %41 ], [ %11, %36 ]
  %57 = and i64 %56, %38
  br i1 %3, label %58, label %159

58:                                               ; preds = %55
  %59 = getelementptr %struct.nvkm_vmm_page, ptr %6, i32 %37, i32 2
  %60 = load i8, ptr %59, align 4
  %61 = and i8 %60, 1
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %87, label %63

63:                                               ; preds = %58
  %64 = getelementptr %struct.nvkm_vmm_page, ptr %6, i32 %37, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %65, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %39, i64 noundef %10, i64 noundef %57, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_ref_ptes, ptr noundef null, ptr noundef null, ptr noundef %69) #10
  %71 = icmp eq i64 %70, -1
  br i1 %71, label %172, label %72

72:                                               ; preds = %63
  %73 = icmp eq i64 %70, %10
  br i1 %73, label %87, label %74

74:                                               ; preds = %72
  %75 = sub i64 %70, %10
  %76 = load ptr, ptr %64, align 4
  %77 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %76, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %78, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %74
  %85 = phi ptr [ %83, %81 ], [ %79, %74 ]
  %86 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %39, i64 noundef %10, i64 noundef %75, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %85) #10
  br label %87

87:                                               ; preds = %84, %72, %58
  %88 = phi i32 [ -12, %72 ], [ -12, %84 ], [ -22, %58 ]
  %89 = sub i64 %10, %1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %176, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %0, align 8
  %93 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %92, i32 0, i32 8
  br label %94

94:                                               ; preds = %153, %91
  %95 = phi i32 [ 0, %91 ], [ %99, %153 ]
  %96 = phi i64 [ %1, %91 ], [ %157, %153 ]
  %97 = phi i64 [ %89, %91 ], [ %156, %153 ]
  br label %98

98:                                               ; preds = %98, %94
  %99 = phi i32 [ %105, %98 ], [ %95, %94 ]
  %100 = getelementptr %struct.nvkm_vmm_page, ptr %93, i32 %99
  %101 = load i8, ptr %100, align 4
  %102 = zext i8 %101 to i64
  %103 = lshr i64 %97, %102
  %104 = icmp eq i64 %103, 0
  %105 = add i32 %99, 1
  br i1 %104, label %98, label %106

106:                                              ; preds = %98
  %107 = zext i8 %101 to i64
  %108 = shl nsw i64 -1, %107
  %109 = xor i64 %108, -1
  %110 = and i64 %96, %109
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %112, %106
  %113 = phi i32 [ %114, %112 ], [ %99, %106 ]
  %114 = add i32 %113, 1
  %115 = getelementptr %struct.nvkm_vmm_page, ptr %93, i32 %114
  %116 = load i8, ptr %115, align 4
  %117 = zext i8 %116 to i64
  %118 = shl nsw i64 -1, %117
  %119 = xor i64 %118, -1
  %120 = and i64 %96, %119
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %112

122:                                              ; preds = %112, %106
  %123 = phi i32 [ %99, %106 ], [ %114, %112 ]
  %124 = phi i64 [ %108, %106 ], [ %118, %112 ]
  %125 = getelementptr %struct.nvkm_vmm_page, ptr %93, i32 %123
  %126 = icmp eq i32 %123, %99
  br i1 %126, label %141, label %127

127:                                              ; preds = %122
  %128 = add i32 %123, -1
  %129 = getelementptr %struct.nvkm_vmm_page, ptr %93, i32 %128
  %130 = load i8, ptr %129, align 4
  %131 = zext i8 %130 to i64
  %132 = shl nuw i64 1, %131
  %133 = add i64 %96, -1
  %134 = add i64 %133, %132
  %135 = sub i64 0, %132
  %136 = and i64 %134, %135
  %137 = sub i64 %136, %96
  %138 = sub i64 %97, %137
  %139 = icmp ult i64 %138, %132
  %140 = select i1 %139, i64 %97, i64 %137
  br label %141

141:                                              ; preds = %127, %122
  %142 = phi i64 [ %140, %127 ], [ %97, %122 ]
  %143 = and i64 %142, %124
  %144 = getelementptr %struct.nvkm_vmm_page, ptr %93, i32 %123, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %145, i32 0, i32 4
  %147 = load ptr, ptr %146, align 4
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %147, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %141
  %154 = phi ptr [ %152, %150 ], [ %148, %141 ]
  %155 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %125, i64 noundef %96, i64 noundef %143, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %154) #10
  %156 = sub i64 %97, %143
  %157 = add i64 %143, %96
  %158 = icmp eq i64 %156, 0
  br i1 %158, label %176, label %94

159:                                              ; preds = %55
  %160 = getelementptr %struct.nvkm_vmm_page, ptr %6, i32 %37, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %161, i32 0, i32 4
  %163 = load ptr, ptr %162, align 4
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %163, i32 0, i32 1
  %168 = load ptr, ptr %167, align 4
  br label %169

169:                                              ; preds = %166, %159
  %170 = phi ptr [ %168, %166 ], [ %164, %159 ]
  %171 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %39, i64 noundef %10, i64 noundef %57, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %170) #10
  br label %172

172:                                              ; preds = %169, %63
  %173 = sub i64 %11, %57
  %174 = add i64 %57, %10
  %175 = icmp eq i64 %173, 0
  br i1 %175, label %176, label %8

176:                                              ; preds = %172, %153, %87, %4
  %177 = phi i32 [ %88, %87 ], [ 0, %4 ], [ %88, %153 ], [ 0, %172 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_vmm_put_region(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  %6 = icmp eq ptr %4, %5
  %7 = icmp eq ptr %4, null
  %8 = or i1 %6, %7
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nvkm_vma, ptr %4, i32 0, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nvkm_vma, ptr %4, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  store i64 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nvkm_vma, ptr %4, i32 0, i32 3
  %19 = load i56, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %21 = load i56, ptr %20, align 8
  %22 = add i56 %21, %19
  %23 = and i56 %22, 1125899906842623
  %24 = and i56 %21, -1125899906842624
  %25 = or i56 %23, %24
  store i56 %25, ptr %20, align 8
  %26 = getelementptr inbounds %struct.nvkm_vma, ptr %4, i32 0, i32 1
  %27 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 11
  tail call void @rb_erase(ptr noundef %26, ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  tail call void @kfree(ptr noundef nonnull %4) #10
  br label %32

32:                                               ; preds = %14, %9, %2
  %33 = load ptr, ptr %1, align 8
  %34 = icmp eq ptr %33, %5
  %35 = icmp eq ptr %33, null
  %36 = or i1 %34, %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.nvkm_vma, ptr %33, i32 0, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.nvkm_vma, ptr %33, i32 0, i32 3
  %44 = load i56, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %46 = load i56, ptr %45, align 8
  %47 = add i56 %46, %44
  %48 = and i56 %47, 1125899906842623
  %49 = and i56 %46, -1125899906842624
  %50 = or i56 %48, %49
  store i56 %50, ptr %45, align 8
  %51 = getelementptr inbounds %struct.nvkm_vma, ptr %33, i32 0, i32 1
  %52 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 11
  tail call void @rb_erase(ptr noundef %51, ptr noundef %52) #10
  %53 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %33, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  tail call void @kfree(ptr noundef nonnull %33) #10
  br label %57

57:                                               ; preds = %42, %37, %32
  %58 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %96, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %63 = load i56, ptr %62, align 8
  %64 = and i56 %63, 1125899906842623
  %65 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  br label %66

66:                                               ; preds = %90, %61
  %67 = phi ptr [ %59, %61 ], [ %92, %90 ]
  %68 = getelementptr i8, ptr %67, i32 24
  %69 = load i56, ptr %68, align 8
  %70 = and i56 %69, 1125899906842623
  %71 = icmp ult i56 %64, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 2
  br label %90

74:                                               ; preds = %66
  %75 = icmp ugt i56 %64, %70
  br i1 %75, label %76, label %78

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 1
  br label %90

78:                                               ; preds = %74
  %79 = load i64, ptr %65, align 8
  %80 = getelementptr i8, ptr %67, i32 16
  %81 = load i64, ptr %80, align 8
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 2
  br label %90

85:                                               ; preds = %78
  %86 = icmp ugt i64 %79, %81
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 1
  br label %90

89:                                               ; preds = %85
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

90:                                               ; preds = %87, %83, %76, %72
  %91 = phi ptr [ %73, %72 ], [ %77, %76 ], [ %84, %83 ], [ %88, %87 ]
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %66

94:                                               ; preds = %90
  %95 = ptrtoint ptr %67 to i32
  br label %96

96:                                               ; preds = %94, %57
  %97 = phi i32 [ %95, %94 ], [ 0, %57 ]
  %98 = phi ptr [ %91, %94 ], [ %58, %57 ]
  %99 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 1
  store i32 %97, ptr %99, align 4
  %100 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 1, i32 1
  store ptr null, ptr %100, align 4
  %101 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 1, i32 2
  store ptr null, ptr %101, align 4
  store ptr %99, ptr %98, align 4
  tail call void @rb_insert_color(ptr noundef %99, ptr noundef %58) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_put(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #10
  tail call void @nvkm_vmm_put_locked(ptr noundef %0, ptr noundef nonnull %3)
  tail call void @mutex_unlock(ptr noundef %6) #10
  store ptr null, ptr %1, align 4
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_get_locked(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i64 noundef %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr %struct.nvkm_vmm_func, ptr %9, i32 3, i32 1
  %11 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 4
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_mmu, ptr %16, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_mmu, ptr %16, i32 0, i32 1, i32 4
  %22 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = zext i1 %1 to i32
  %25 = zext i1 %2 to i32
  %26 = zext i1 %3 to i32
  %27 = zext i8 %4 to i32
  %28 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.2, ptr noundef %21, ptr noundef %23, i32 noundef %24, i32 noundef %25, i32 noundef %26, i32 noundef %27, i32 noundef %28, i64 noundef %6) #13
  br label %29

29:                                               ; preds = %14, %8
  %30 = icmp eq i64 %6, 0
  %31 = or i1 %30, %1
  %32 = xor i1 %2, true
  %33 = and i1 %32, %3
  %34 = select i1 %31, i1 %30, i1 %33, !prof !16
  br i1 %34, label %35, label %51, !prof !8

35:                                               ; preds = %29
  %36 = load i32, ptr %11, align 4
  %37 = icmp ugt i32 %36, 3
  br i1 %37, label %38, label %493

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_mmu, ptr %40, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.nvkm_mmu, ptr %40, i32 0, i32 1, i32 4
  %46 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = zext i1 %1 to i32
  %49 = zext i1 %2 to i32
  %50 = zext i1 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.3, ptr noundef %45, ptr noundef %47, i64 noundef %6, i32 noundef %48, i32 noundef %49, i32 noundef %50) #13
  br label %493

51:                                               ; preds = %29
  br i1 %1, label %57, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %0, align 8
  %54 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %53, i32 0, i32 7
  %55 = load i64, ptr %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %52, %51
  %58 = icmp eq i8 %4, 0
  br i1 %58, label %61, label %59, !prof !8

59:                                               ; preds = %57
  %60 = load ptr, ptr %0, align 8
  br label %80

61:                                               ; preds = %57
  %62 = load i32, ptr %11, align 4
  %63 = icmp ugt i32 %62, 3
  br i1 %63, label %64, label %493

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_mmu, ptr %66, i32 0, i32 1, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nvkm_mmu, ptr %66, i32 0, i32 1, i32 4
  %72 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = zext i1 %1 to i32
  %75 = load ptr, ptr %0, align 8
  %76 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %75, i32 0, i32 7
  %77 = load i64, ptr %76, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.4, ptr noundef %71, ptr noundef %73, i32 noundef %74, i64 noundef %77) #13
  br label %493

78:                                               ; preds = %52
  %79 = icmp eq i8 %4, 0
  br i1 %79, label %113, label %80

80:                                               ; preds = %78, %59
  %81 = phi ptr [ %60, %59 ], [ %53, %78 ]
  %82 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %81, i32 0, i32 8
  br label %83

83:                                               ; preds = %83, %80
  %84 = phi ptr [ %82, %80 ], [ %89, %83 ]
  %85 = load i8, ptr %84, align 4
  %86 = icmp eq i8 %85, 0
  %87 = icmp eq i8 %85, %4
  %88 = or i1 %86, %87
  %89 = getelementptr %struct.nvkm_vmm_page, ptr %84, i32 1
  br i1 %88, label %90, label %83

90:                                               ; preds = %83
  br i1 %86, label %97, label %91

91:                                               ; preds = %90
  %92 = zext i8 %85 to i64
  %93 = shl nsw i64 -1, %92
  %94 = xor i64 %93, -1
  %95 = and i64 %94, %6
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %111, label %97

97:                                               ; preds = %91, %90
  %98 = load i32, ptr %11, align 4
  %99 = icmp ugt i32 %98, 3
  br i1 %99, label %100, label %493

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nvkm_mmu, ptr %102, i32 0, i32 1, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nvkm_mmu, ptr %102, i32 0, i32 1, i32 4
  %108 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %106, ptr noundef nonnull @.str.5, ptr noundef %107, ptr noundef %109, i32 noundef %110, i64 noundef %6) #13
  br label %493

111:                                              ; preds = %91
  %112 = tail call i8 @llvm.umax.i8(i8 %5, i8 %4)
  br label %115

113:                                              ; preds = %78
  %114 = tail call i8 @llvm.umax.i8(i8 %5, i8 12)
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi ptr [ %81, %111 ], [ %53, %113 ]
  %117 = phi ptr [ %84, %111 ], [ %10, %113 ]
  %118 = phi i8 [ %112, %111 ], [ %114, %113 ]
  %119 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 11
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %493, label %122

122:                                              ; preds = %122, %115
  %123 = phi ptr [ %134, %122 ], [ %120, %115 ]
  %124 = phi ptr [ %133, %122 ], [ null, %115 ]
  %125 = getelementptr i8, ptr %123, i32 24
  %126 = load i56, ptr %125, align 8
  %127 = and i56 %126, 1125899906842623
  %128 = zext i56 %127 to i64
  %129 = icmp ult i64 %128, %6
  %130 = getelementptr inbounds %struct.rb_node, ptr %123, i32 0, i32 1
  %131 = getelementptr inbounds %struct.rb_node, ptr %123, i32 0, i32 2
  %132 = select i1 %129, ptr %130, ptr %131
  %133 = select i1 %129, ptr %124, ptr %123
  %134 = load ptr, ptr %132, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %122

136:                                              ; preds = %122
  %137 = icmp eq ptr %133, null
  br i1 %137, label %493, label %138, !prof !8

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 10
  %140 = ptrtoint ptr %117 to i32
  %141 = zext i8 %118 to i64
  %142 = shl nsw i64 -1, %141
  %143 = xor i64 %142, -1
  br label %144

144:                                              ; preds = %208, %138
  %145 = phi ptr [ %209, %208 ], [ %116, %138 ]
  %146 = phi ptr [ %206, %208 ], [ %133, %138 ]
  %147 = getelementptr i8, ptr %146, i32 -8
  %148 = getelementptr i8, ptr %146, i32 -4
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, %139
  %151 = select i1 %150, ptr null, ptr %149
  %152 = load ptr, ptr %147, align 8
  %153 = icmp eq ptr %152, %139
  %154 = select i1 %153, ptr null, ptr %152
  %155 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %145, i32 0, i32 8
  %156 = ptrtoint ptr %155 to i32
  %157 = sub i32 %140, %156
  %158 = sdiv exact i32 %157, 12
  %159 = getelementptr i8, ptr %146, i32 16
  %160 = load i64, ptr %159, align 8
  %161 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %145, i32 0, i32 7
  %162 = load i64, ptr %161, align 8
  %163 = icmp ne i64 %162, 0
  %164 = icmp ne ptr %151, null
  %165 = select i1 %163, i1 %164, i1 false
  br i1 %165, label %166, label %178

166:                                              ; preds = %144
  %167 = getelementptr inbounds %struct.nvkm_vma, ptr %151, i32 0, i32 3
  %168 = load i56, ptr %167, align 8
  %169 = lshr i56 %168, 52
  %170 = trunc i56 %169 to i32
  %171 = and i32 %170, 7
  %172 = icmp eq i32 %171, %158
  br i1 %172, label %178, label %173

173:                                              ; preds = %166
  %174 = add i64 %160, -1
  %175 = add i64 %174, %162
  %176 = sub i64 0, %162
  %177 = and i64 %175, %176
  br label %178

178:                                              ; preds = %173, %166, %144
  %179 = phi i64 [ %177, %173 ], [ %160, %166 ], [ %160, %144 ]
  %180 = add i64 %179, %143
  %181 = and i64 %180, %142
  %182 = getelementptr i8, ptr %146, i32 24
  %183 = load i56, ptr %182, align 8
  %184 = and i56 %183, 1125899906842623
  %185 = zext i56 %184 to i64
  %186 = add i64 %160, %185
  %187 = icmp ne ptr %154, null
  %188 = select i1 %163, i1 %187, i1 false
  br i1 %188, label %189, label %199

189:                                              ; preds = %178
  %190 = getelementptr inbounds %struct.nvkm_vma, ptr %154, i32 0, i32 3
  %191 = load i56, ptr %190, align 8
  %192 = lshr i56 %191, 52
  %193 = trunc i56 %192 to i32
  %194 = and i32 %193, 7
  %195 = icmp eq i32 %194, %158
  br i1 %195, label %199, label %196

196:                                              ; preds = %189
  %197 = sub i64 0, %162
  %198 = and i64 %186, %197
  br label %199

199:                                              ; preds = %196, %189, %178
  %200 = phi i64 [ %198, %196 ], [ %186, %189 ], [ %186, %178 ]
  %201 = icmp ult i64 %200, %181
  %202 = sub i64 %200, %181
  %203 = icmp ult i64 %202, %6
  %204 = or i1 %201, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = tail call ptr @rb_next(ptr noundef nonnull %146) #10
  %207 = icmp eq ptr %206, null
  br i1 %207, label %493, label %208

208:                                              ; preds = %205
  %209 = load ptr, ptr %0, align 8
  br label %144

210:                                              ; preds = %199
  %211 = getelementptr i8, ptr %146, i32 -8
  %212 = getelementptr i8, ptr %146, i32 16
  %213 = getelementptr i8, ptr %146, i32 24
  tail call void @rb_erase(ptr noundef nonnull %146, ptr noundef %119) #10
  %214 = icmp eq ptr %211, null
  br i1 %214, label %493, label %215, !prof !8

215:                                              ; preds = %210
  %216 = load i64, ptr %212, align 8
  %217 = icmp eq i64 %216, %181
  br i1 %217, label %292, label %218

218:                                              ; preds = %215
  %219 = load i56, ptr %213, align 8
  %220 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %221 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %220, i32 noundef 3520, i32 noundef 48) #11
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  tail call fastcc void @nvkm_vmm_put_region(ptr noundef %0, ptr noundef nonnull %211)
  br label %493

224:                                              ; preds = %218
  %225 = sub i64 %216, %181
  %226 = and i56 %219, 1125899906842623
  %227 = getelementptr inbounds %struct.nvkm_vma, ptr %221, i32 0, i32 2
  store i64 %181, ptr %227, align 8
  %228 = getelementptr inbounds %struct.nvkm_vma, ptr %221, i32 0, i32 3
  %229 = trunc i64 %225 to i56
  %230 = add i56 %226, %229
  %231 = load i56, ptr %228, align 8
  %232 = and i56 %230, 1125899906842623
  %233 = and i56 %231, -36028797018963968
  %234 = or i56 %233, %232
  %235 = getelementptr inbounds %struct.nvkm_vma, ptr %221, i32 0, i32 4
  %236 = load i8, ptr %235, align 1
  %237 = load i56, ptr %213, align 8
  %238 = sub i56 %237, %230
  %239 = and i56 %238, 1125899906842623
  %240 = and i56 %237, -1125899906842624
  %241 = or i56 %239, %240
  store i56 %241, ptr %213, align 8
  %242 = and i56 %237, 34902897112121344
  %243 = or i56 %234, %242
  store i56 %243, ptr %228, align 8
  %244 = getelementptr i8, ptr %146, i32 31
  %245 = load i8, ptr %244, align 1
  %246 = and i8 %236, -128
  %247 = and i8 %245, 127
  %248 = or i8 %247, %246
  store i8 %248, ptr %235, align 1
  %249 = load ptr, ptr %211, align 4
  %250 = getelementptr inbounds %struct.list_head, ptr %249, i32 0, i32 1
  store ptr %221, ptr %250, align 4
  store ptr %249, ptr %221, align 8
  %251 = getelementptr inbounds %struct.list_head, ptr %221, i32 0, i32 1
  store ptr %211, ptr %251, align 4
  store volatile ptr %221, ptr %211, align 4
  %252 = load ptr, ptr %119, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %287, label %254

254:                                              ; preds = %224
  %255 = load i56, ptr %213, align 8
  %256 = and i56 %255, 1125899906842623
  br label %257

257:                                              ; preds = %281, %254
  %258 = phi ptr [ %252, %254 ], [ %283, %281 ]
  %259 = getelementptr i8, ptr %258, i32 24
  %260 = load i56, ptr %259, align 8
  %261 = and i56 %260, 1125899906842623
  %262 = icmp ult i56 %256, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.rb_node, ptr %258, i32 0, i32 2
  br label %281

265:                                              ; preds = %257
  %266 = icmp ugt i56 %256, %261
  br i1 %266, label %267, label %269

267:                                              ; preds = %265
  %268 = getelementptr inbounds %struct.rb_node, ptr %258, i32 0, i32 1
  br label %281

269:                                              ; preds = %265
  %270 = load i64, ptr %212, align 8
  %271 = getelementptr i8, ptr %258, i32 16
  %272 = load i64, ptr %271, align 8
  %273 = icmp ult i64 %270, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.rb_node, ptr %258, i32 0, i32 2
  br label %281

276:                                              ; preds = %269
  %277 = icmp ugt i64 %270, %272
  br i1 %277, label %278, label %280

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct.rb_node, ptr %258, i32 0, i32 1
  br label %281

280:                                              ; preds = %276
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

281:                                              ; preds = %278, %274, %267, %263
  %282 = phi ptr [ %264, %263 ], [ %268, %267 ], [ %275, %274 ], [ %279, %278 ]
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %285, label %257

285:                                              ; preds = %281
  %286 = ptrtoint ptr %258 to i32
  br label %287

287:                                              ; preds = %285, %224
  %288 = phi i32 [ %286, %285 ], [ 0, %224 ]
  %289 = phi ptr [ %282, %285 ], [ %119, %224 ]
  store i32 %288, ptr %146, align 4
  %290 = getelementptr i8, ptr %146, i32 4
  store ptr null, ptr %290, align 4
  %291 = getelementptr i8, ptr %146, i32 8
  store ptr null, ptr %291, align 4
  store ptr %146, ptr %289, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %146, ptr noundef %119) #10
  br label %292

292:                                              ; preds = %287, %215
  %293 = phi ptr [ %221, %287 ], [ %211, %215 ]
  %294 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 3
  %295 = load i56, ptr %294, align 8
  %296 = and i56 %295, 1125899906842623
  %297 = zext i56 %296 to i64
  %298 = icmp eq i64 %297, %6
  br i1 %298, label %376, label %299

299:                                              ; preds = %292
  br i1 %30, label %300, label %301, !prof !8

300:                                              ; preds = %299
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 765, 0\0A.popsection", ""() #10, !srcloc !9
  unreachable

301:                                              ; preds = %299
  %302 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 2
  %303 = load i64, ptr %302, align 8
  %304 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %305 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %304, i32 noundef 3520, i32 noundef 48) #11
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %308

307:                                              ; preds = %301
  tail call fastcc void @nvkm_vmm_put_region(ptr noundef %0, ptr noundef nonnull %293)
  br label %493

308:                                              ; preds = %301
  %309 = add i64 %303, %6
  %310 = getelementptr inbounds %struct.nvkm_vma, ptr %305, i32 0, i32 2
  store i64 %309, ptr %310, align 8
  %311 = getelementptr inbounds %struct.nvkm_vma, ptr %305, i32 0, i32 3
  %312 = trunc i64 %6 to i56
  %313 = sub i56 %296, %312
  %314 = load i56, ptr %311, align 8
  %315 = and i56 %313, 1125899906842623
  %316 = and i56 %314, -36028797018963968
  %317 = or i56 %316, %315
  %318 = getelementptr inbounds %struct.nvkm_vma, ptr %305, i32 0, i32 4
  %319 = load i8, ptr %318, align 1
  %320 = load i56, ptr %294, align 8
  %321 = sub i56 %320, %313
  %322 = and i56 %321, 1125899906842623
  %323 = and i56 %320, -1125899906842624
  %324 = or i56 %322, %323
  store i56 %324, ptr %294, align 8
  %325 = and i56 %320, 34902897112121344
  %326 = or i56 %317, %325
  store i56 %326, ptr %311, align 8
  %327 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 4
  %328 = load i8, ptr %327, align 1
  %329 = and i8 %319, -128
  %330 = and i8 %328, 127
  %331 = or i8 %330, %329
  store i8 %331, ptr %318, align 1
  %332 = load ptr, ptr %293, align 4
  %333 = getelementptr inbounds %struct.list_head, ptr %332, i32 0, i32 1
  store ptr %305, ptr %333, align 4
  store ptr %332, ptr %305, align 8
  %334 = getelementptr inbounds %struct.list_head, ptr %305, i32 0, i32 1
  store ptr %293, ptr %334, align 4
  store volatile ptr %305, ptr %293, align 4
  %335 = load ptr, ptr %119, align 4
  %336 = icmp eq ptr %335, null
  br i1 %336, label %370, label %337

337:                                              ; preds = %308
  %338 = load i56, ptr %311, align 8
  %339 = and i56 %338, 1125899906842623
  br label %340

340:                                              ; preds = %364, %337
  %341 = phi ptr [ %335, %337 ], [ %366, %364 ]
  %342 = getelementptr i8, ptr %341, i32 24
  %343 = load i56, ptr %342, align 8
  %344 = and i56 %343, 1125899906842623
  %345 = icmp ult i56 %339, %344
  br i1 %345, label %346, label %348

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.rb_node, ptr %341, i32 0, i32 2
  br label %364

348:                                              ; preds = %340
  %349 = icmp ugt i56 %339, %344
  br i1 %349, label %350, label %352

350:                                              ; preds = %348
  %351 = getelementptr inbounds %struct.rb_node, ptr %341, i32 0, i32 1
  br label %364

352:                                              ; preds = %348
  %353 = load i64, ptr %310, align 8
  %354 = getelementptr i8, ptr %341, i32 16
  %355 = load i64, ptr %354, align 8
  %356 = icmp ult i64 %353, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.rb_node, ptr %341, i32 0, i32 2
  br label %364

359:                                              ; preds = %352
  %360 = icmp ugt i64 %353, %355
  br i1 %360, label %361, label %363

361:                                              ; preds = %359
  %362 = getelementptr inbounds %struct.rb_node, ptr %341, i32 0, i32 1
  br label %364

363:                                              ; preds = %359
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 818, 0\0A.popsection", ""() #10, !srcloc !13
  unreachable

364:                                              ; preds = %361, %357, %350, %346
  %365 = phi ptr [ %347, %346 ], [ %351, %350 ], [ %358, %357 ], [ %362, %361 ]
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %340

368:                                              ; preds = %364
  %369 = ptrtoint ptr %341 to i32
  br label %370

370:                                              ; preds = %368, %308
  %371 = phi i32 [ %369, %368 ], [ 0, %308 ]
  %372 = phi ptr [ %365, %368 ], [ %119, %308 ]
  %373 = getelementptr inbounds %struct.nvkm_vma, ptr %305, i32 0, i32 1
  store i32 %371, ptr %373, align 8
  %374 = getelementptr inbounds %struct.nvkm_vma, ptr %305, i32 0, i32 1, i32 1
  store ptr null, ptr %374, align 4
  %375 = getelementptr inbounds %struct.nvkm_vma, ptr %305, i32 0, i32 1, i32 2
  store ptr null, ptr %375, align 8
  store ptr %373, ptr %372, align 4
  tail call void @rb_insert_color(ptr noundef %373, ptr noundef %119) #10
  br label %376

376:                                              ; preds = %370, %292
  %377 = xor i1 %1, true
  %378 = and i1 %1, %3
  br i1 %378, label %379, label %413

379:                                              ; preds = %376
  %380 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 2
  %381 = load i64, ptr %380, align 8
  %382 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %117, i32 0, i32 2
  %383 = load i8, ptr %382, align 4
  %384 = and i8 %383, 1
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %436, label %386

386:                                              ; preds = %379
  %387 = load i56, ptr %294, align 8
  %388 = and i56 %387, 1125899906842623
  %389 = zext i56 %388 to i64
  %390 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %117, i32 0, i32 1
  %391 = load ptr, ptr %390, align 4
  %392 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %391, i32 0, i32 4
  %393 = load ptr, ptr %392, align 4
  %394 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %393, i32 0, i32 2
  %395 = load ptr, ptr %394, align 4
  %396 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %117, i64 noundef %381, i64 noundef %389, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_ref_ptes, ptr noundef null, ptr noundef null, ptr noundef %395) #10
  %397 = icmp eq i64 %396, -1
  br i1 %397, label %438, label %398

398:                                              ; preds = %386
  %399 = icmp eq i64 %396, %381
  br i1 %399, label %436, label %400

400:                                              ; preds = %398
  %401 = sub i64 %396, %381
  %402 = load ptr, ptr %390, align 4
  %403 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %402, i32 0, i32 4
  %404 = load ptr, ptr %403, align 4
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %405, null
  br i1 %406, label %407, label %410

407:                                              ; preds = %400
  %408 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %404, i32 0, i32 1
  %409 = load ptr, ptr %408, align 4
  br label %410

410:                                              ; preds = %407, %400
  %411 = phi ptr [ %409, %407 ], [ %405, %400 ]
  %412 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %117, i64 noundef %381, i64 noundef %401, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_sparse_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef %411) #10
  br label %436

413:                                              ; preds = %376
  br i1 %3, label %428, label %414

414:                                              ; preds = %413
  br i1 %1, label %415, label %438

415:                                              ; preds = %414
  %416 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 2
  %417 = load i64, ptr %416, align 8
  %418 = load i56, ptr %294, align 8
  %419 = and i56 %418, 1125899906842623
  %420 = zext i56 %419 to i64
  %421 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %117, i64 noundef %417, i64 noundef %420, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_ref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %422 = icmp eq i64 %421, -1
  br i1 %422, label %438, label %423

423:                                              ; preds = %415
  %424 = icmp eq i64 %421, %417
  br i1 %424, label %436, label %425

425:                                              ; preds = %423
  %426 = sub i64 %421, %417
  %427 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %117, i64 noundef %417, i64 noundef %426, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br label %436

428:                                              ; preds = %413
  %429 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 2
  %430 = load i64, ptr %429, align 8
  %431 = load i56, ptr %294, align 8
  %432 = and i56 %431, 1125899906842623
  %433 = zext i56 %432 to i64
  %434 = tail call fastcc i32 @nvkm_vmm_ptes_sparse(ptr noundef %0, i64 noundef %430, i64 noundef %433, i1 noundef zeroext true)
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %438, label %436

436:                                              ; preds = %428, %425, %423, %410, %398, %379
  %437 = phi i32 [ %434, %428 ], [ -12, %423 ], [ -12, %425 ], [ -22, %379 ], [ -12, %398 ], [ -12, %410 ]
  tail call fastcc void @nvkm_vmm_put_region(ptr noundef %0, ptr noundef nonnull %293)
  br label %493

438:                                              ; preds = %428, %415, %414, %386
  %439 = and i1 %377, %2
  %440 = load i56, ptr %294, align 8
  %441 = select i1 %439, i56 1125899906842624, i56 0
  %442 = and i56 %440, -3377699720527873
  %443 = select i1 %3, i56 2251799813685248, i56 0
  %444 = or i56 %443, %441
  %445 = or i56 %444, %442
  store i56 %445, ptr %294, align 8
  %446 = load ptr, ptr %0, align 8
  %447 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %446, i32 0, i32 8
  %448 = ptrtoint ptr %447 to i32
  %449 = sub i32 %140, %448
  %450 = sdiv exact i32 %449, 12
  %451 = and i32 %450, 7
  %452 = zext i32 %451 to i56
  %453 = shl nuw nsw i56 %452, 52
  %454 = and i56 %445, -31525197391593473
  %455 = or i56 %453, %454
  store i56 %455, ptr %294, align 8
  %456 = trunc i32 %451 to i8
  %457 = select i1 %1, i8 %456, i8 7
  %458 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 4
  %459 = load i8, ptr %458, align 1
  %460 = and i8 %459, -16
  %461 = or i8 %460, %457
  %462 = or i8 %461, 8
  store i8 %462, ptr %458, align 1
  %463 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 12
  %464 = load ptr, ptr %463, align 4
  %465 = icmp eq ptr %464, null
  br i1 %465, label %487, label %466

466:                                              ; preds = %438
  %467 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 2
  %468 = load i64, ptr %467, align 8
  br label %469

469:                                              ; preds = %481, %466
  %470 = phi ptr [ %464, %466 ], [ %483, %481 ]
  %471 = getelementptr i8, ptr %470, i32 16
  %472 = load i64, ptr %471, align 8
  %473 = icmp ult i64 %468, %472
  br i1 %473, label %474, label %476

474:                                              ; preds = %469
  %475 = getelementptr inbounds %struct.rb_node, ptr %470, i32 0, i32 2
  br label %481

476:                                              ; preds = %469
  %477 = icmp ugt i64 %468, %472
  br i1 %477, label %478, label %480

478:                                              ; preds = %476
  %479 = getelementptr inbounds %struct.rb_node, ptr %470, i32 0, i32 1
  br label %481

480:                                              ; preds = %476
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/mmu/vmm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 854, 0\0A.popsection", ""() #10, !srcloc !10
  unreachable

481:                                              ; preds = %478, %474
  %482 = phi ptr [ %475, %474 ], [ %479, %478 ]
  %483 = load ptr, ptr %482, align 4
  %484 = icmp eq ptr %483, null
  br i1 %484, label %485, label %469

485:                                              ; preds = %481
  %486 = ptrtoint ptr %470 to i32
  br label %487

487:                                              ; preds = %485, %438
  %488 = phi i32 [ %486, %485 ], [ 0, %438 ]
  %489 = phi ptr [ %482, %485 ], [ %463, %438 ]
  %490 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 1
  store i32 %488, ptr %490, align 4
  %491 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 1, i32 1
  store ptr null, ptr %491, align 4
  %492 = getelementptr inbounds %struct.nvkm_vma, ptr %293, i32 0, i32 1, i32 2
  store ptr null, ptr %492, align 4
  store ptr %490, ptr %489, align 4
  tail call void @rb_insert_color(ptr noundef %490, ptr noundef %463) #10
  store ptr %293, ptr %7, align 4
  br label %493

493:                                              ; preds = %487, %436, %307, %223, %210, %205, %136, %115, %100, %97, %64, %61, %38, %35
  %494 = phi i32 [ %437, %436 ], [ 0, %487 ], [ -12, %307 ], [ -12, %223 ], [ -22, %38 ], [ -22, %35 ], [ -22, %64 ], [ -22, %61 ], [ -22, %100 ], [ -22, %97 ], [ -28, %136 ], [ -28, %210 ], [ -28, %115 ], [ -28, %205 ]
  ret i32 %494
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_get(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = tail call i32 @nvkm_vmm_get_locked(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, i8 noundef zeroext %1, i8 noundef zeroext 0, i64 noundef %2, ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_part(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef nonnull %0, ptr noundef nonnull %1) #10
  tail call void @mutex_unlock(ptr noundef %12) #10
  br label %16

16:                                               ; preds = %11, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_join(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %7) #10
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ %10, %6 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_boot(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %2, i32 0, i32 8
  %4 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 7
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 6
  %7 = load i64, ptr %6, align 8
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %10 = getelementptr %struct.nvkm_vmm_page, ptr %9, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %8

13:                                               ; preds = %8
  %14 = sub i64 %5, %7
  %15 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %9, i64 noundef %7, i64 noundef %14, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_ref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #10
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = icmp eq i64 %15, %7
  br i1 %18, label %26, label %19

19:                                               ; preds = %17
  %20 = sub i64 %15, %7
  %21 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %9, i64 noundef %7, i64 noundef %20, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br label %26

22:                                               ; preds = %13
  %23 = load i64, ptr %6, align 8
  %24 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %9, i64 noundef %23, i64 noundef %14, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_boot_ptes, ptr noundef null, ptr noundef null, ptr noundef null)
  %25 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 13
  store i8 1, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %19, %17
  %27 = phi i32 [ 0, %22 ], [ -12, %19 ], [ -12, %17 ]
  ret i32 %27
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @nvkm_vmm_iter(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef readonly %6, ptr noundef readonly %7, ptr noundef %8, ptr noundef readonly %9) unnamed_addr #6 {
  %11 = alloca %struct.nvkm_vmm_iter, align 8
  %12 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #10
  %14 = getelementptr inbounds i8, ptr %11, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %14, i8 0, i32 64, i1 false), !annotation !14
  %15 = load i8, ptr %1, align 4
  %16 = zext i8 %15 to i64
  store ptr %1, ptr %11, align 8
  %17 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 1
  store ptr %13, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 2
  store ptr %0, ptr %18, align 8
  %19 = lshr i64 %3, %16
  %20 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 3
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 8
  store i32 5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 5
  %23 = getelementptr %struct.nvkm_vmm_desc, ptr %13, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %48, label %26

26:                                               ; preds = %10
  %27 = lshr i64 %2, %16
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i8 [ %46, %28 ], [ %24, %26 ]
  %30 = phi ptr [ %45, %28 ], [ %23, %26 ]
  %31 = phi i32 [ %44, %28 ], [ 0, %26 ]
  %32 = phi i64 [ %42, %28 ], [ %27, %26 ]
  %33 = phi i16 [ %43, %28 ], [ 0, %26 ]
  %34 = zext i8 %29 to i32
  %35 = shl nsw i32 -1, %34
  %36 = xor i32 %35, -1
  %37 = trunc i64 %32 to i32
  %38 = and i32 %36, %37
  %39 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 6, i32 %31
  store i32 %38, ptr %39, align 4
  %40 = load i8, ptr %30, align 4
  %41 = zext i8 %40 to i64
  %42 = lshr i64 %32, %41
  %43 = add i16 %33, 1
  store i16 %43, ptr %22, align 2
  %44 = zext i16 %43 to i32
  %45 = getelementptr %struct.nvkm_vmm_desc, ptr %13, i32 %44, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %28

48:                                               ; preds = %28, %10
  %49 = phi i16 [ -1, %10 ], [ %33, %28 ]
  %50 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 4
  store i16 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 8
  %52 = load ptr, ptr %51, align 8
  %53 = zext i16 %49 to i32
  %54 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 7, i32 %53
  store ptr %52, ptr %54, align 4
  store i16 %49, ptr %22, align 2
  %55 = icmp eq i64 %19, 0
  br i1 %55, label %373, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 6
  %58 = icmp eq ptr %6, null
  %59 = icmp ne ptr %7, null
  %60 = icmp ne ptr %9, null
  %61 = or i1 %59, %60
  br label %62

62:                                               ; preds = %369, %56
  %63 = phi ptr [ %52, %56 ], [ %372, %369 ]
  %64 = phi i16 [ %49, %56 ], [ %367, %369 ]
  %65 = phi i64 [ %19, %56 ], [ %345, %369 ]
  %66 = load i32, ptr %13, align 4
  %67 = icmp eq i32 %66, 2
  %68 = zext i1 %67 to i32
  %69 = load i8, ptr %23, align 4
  %70 = zext i8 %69 to i32
  %71 = shl nuw i32 1, %70
  %72 = load i32, ptr %57, align 4
  %73 = sub i32 %71, %72
  %74 = zext i32 %73 to i64
  %75 = call i64 @llvm.umin.i64(i64 %65, i64 %74)
  %76 = trunc i64 %75 to i32
  %77 = icmp eq i16 %64, 0
  br i1 %77, label %320, label %78

78:                                               ; preds = %315, %62
  %79 = phi ptr [ %317, %315 ], [ %63, %62 ]
  %80 = phi i16 [ %318, %315 ], [ %64, %62 ]
  %81 = zext i16 %80 to i32
  %82 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 6, i32 %81
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %79, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr ptr, ptr %85, i32 %83
  %87 = load ptr, ptr %86, align 4
  br i1 %4, label %88, label %155

88:                                               ; preds = %78
  %89 = icmp eq ptr %87, null
  %90 = icmp ugt ptr %87, inttoptr (i32 -4096 to ptr)
  %91 = or i1 %89, %90
  br i1 %91, label %92, label %158

92:                                               ; preds = %88
  %93 = load ptr, ptr %17, align 4
  %94 = add nsw i32 %81, -1
  %95 = getelementptr %struct.nvkm_vmm_desc, ptr %93, i32 %94
  %96 = load ptr, ptr %11, align 8
  %97 = zext i1 %90 to i8
  %98 = getelementptr %struct.nvkm_vmm_desc, ptr %93, i32 %94, i32 1
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i32
  %101 = shl nuw i32 1, %100
  %102 = load i32, ptr %95, align 4
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %114

104:                                              ; preds = %92
  %105 = icmp eq i32 %102, 2
  br i1 %105, label %106, label %114

106:                                              ; preds = %104
  %107 = getelementptr %struct.nvkm_vmm_page, ptr %96, i32 -1, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %108, i32 0, i32 1
  %110 = load i8, ptr %109, align 4
  %111 = zext i8 %110 to i32
  %112 = sub nsw i32 %100, %111
  %113 = lshr i32 %101, %112
  br label %114

114:                                              ; preds = %106, %104, %92
  %115 = phi i32 [ %113, %106 ], [ 0, %92 ], [ %101, %104 ]
  %116 = add i32 %115, 24
  %117 = call noalias align 64 ptr @__kmalloc(i32 noundef %116, i32 noundef 3520) #12
  %118 = icmp eq ptr %117, null
  br i1 %118, label %143, label %119

119:                                              ; preds = %114
  %120 = icmp eq ptr %96, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  %122 = load i8, ptr %96, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i8 [ %122, %121 ], [ 0, %119 ]
  %125 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %117, i32 0, i32 2
  store i8 %124, ptr %125, align 16
  %126 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %117, i32 0, i32 3
  %127 = load i8, ptr %126, align 1
  %128 = and i8 %127, -2
  %129 = or i8 %128, %97
  store i8 %129, ptr %126, align 1
  %130 = load i32, ptr %95, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %147

132:                                              ; preds = %123
  %133 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %101, i32 4) #10
  %134 = extractvalue { i32, i1 } %133, 1
  br i1 %134, label %135, label %137, !prof !8

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %117, i32 0, i32 4
  store ptr null, ptr %136, align 4
  br label %142

137:                                              ; preds = %132
  %138 = extractvalue { i32, i1 } %133, 0
  %139 = call noalias ptr @kvmalloc_node(i32 noundef %138, i32 noundef 3520, i32 noundef -1) #12
  %140 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %117, i32 0, i32 4
  store ptr %139, ptr %140, align 4
  %141 = icmp eq ptr %139, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %137, %135
  call void @kfree(ptr noundef nonnull %117) #10
  br label %143

143:                                              ; preds = %142, %114
  %144 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %79, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %383, label %384

147:                                              ; preds = %137, %123
  %148 = load ptr, ptr %84, align 4
  %149 = getelementptr ptr, ptr %148, i32 %83
  store ptr %117, ptr %149, align 4
  %150 = load ptr, ptr %84, align 4
  %151 = getelementptr ptr, ptr %150, i32 %83
  %152 = load ptr, ptr %151, align 4
  %153 = load i16, ptr %22, align 2
  %154 = zext i16 %153 to i32
  br label %158

155:                                              ; preds = %78
  %156 = add nsw i32 %81, -1
  %157 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 7, i32 %156
  store ptr %87, ptr %157, align 4
  br label %315

158:                                              ; preds = %147, %88
  %159 = phi i32 [ %154, %147 ], [ %81, %88 ]
  %160 = phi i16 [ %153, %147 ], [ %80, %88 ]
  %161 = phi ptr [ %152, %147 ], [ %87, %88 ]
  %162 = add nsw i32 %159, -1
  %163 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 7, i32 %162
  store ptr %161, ptr %163, align 4
  %164 = getelementptr %struct.nvkm_vmm_desc, ptr %13, i32 %162
  %165 = load i32, ptr %164, align 4
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i32
  %168 = getelementptr %struct.nvkm_vmm_pt, ptr %161, i32 0, i32 1, i32 %167
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %315

171:                                              ; preds = %158
  %172 = load ptr, ptr %17, align 4
  %173 = getelementptr %struct.nvkm_vmm_desc, ptr %172, i32 %162
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 2
  %176 = zext i1 %175 to i32
  %177 = load ptr, ptr %84, align 4
  %178 = getelementptr ptr, ptr %177, i32 %83
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %179, i32 0, i32 3
  %181 = load i8, ptr %180, align 1
  %182 = and i8 %181, 1
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %171
  %185 = getelementptr %struct.nvkm_vmm_desc, ptr %172, i32 %162, i32 4
  %186 = load ptr, ptr %185, align 4
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br label %189

189:                                              ; preds = %184, %171
  %190 = phi i1 [ false, %171 ], [ %188, %184 ]
  %191 = load ptr, ptr %18, align 8
  %192 = getelementptr inbounds %struct.nvkm_vmm, ptr %191, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr %struct.nvkm_vmm_desc, ptr %172, i32 %162, i32 1
  %195 = load i8, ptr %194, align 4
  %196 = zext i8 %195 to i32
  %197 = shl nuw i32 1, %196
  %198 = getelementptr %struct.nvkm_vmm_desc, ptr %172, i32 %162, i32 2
  %199 = load i8, ptr %198, align 1
  %200 = zext i8 %199 to i32
  %201 = shl i32 %200, %196
  %202 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %79, i32 0, i32 1
  %203 = load i32, ptr %202, align 4
  %204 = add i32 %203, 1
  store i32 %204, ptr %202, align 4
  %205 = getelementptr %struct.nvkm_vmm_desc, ptr %172, i32 %162, i32 3
  %206 = load i32, ptr %205, align 4
  %207 = call ptr @nvkm_mmu_ptc_get(ptr noundef %193, i32 noundef %201, i32 noundef %206, i1 noundef zeroext %190) #10
  %208 = getelementptr [2 x ptr], ptr %179, i32 0, i32 %176
  store ptr %207, ptr %208, align 4
  %209 = icmp eq ptr %207, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %189
  %211 = load i16, ptr %22, align 2
  %212 = add i16 %211, -1
  store i16 %212, ptr %22, align 2
  br label %383

213:                                              ; preds = %189
  br i1 %190, label %299, label %214

214:                                              ; preds = %213
  %215 = load i32, ptr %173, align 4
  %216 = icmp eq i32 %215, 3
  br i1 %216, label %217, label %272

217:                                              ; preds = %214
  %218 = getelementptr %struct.nvkm_vmm_pt, ptr %179, i32 0, i32 1, i32 1
  %219 = load i32, ptr %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %272, label %221

221:                                              ; preds = %217
  %222 = getelementptr %struct.nvkm_vmm_desc, ptr %172, i32 %162, i32 4
  br label %223

223:                                              ; preds = %270, %221
  %224 = phi i32 [ 0, %221 ], [ %247, %270 ]
  %225 = getelementptr %struct.nvkm_vmm_pt, ptr %179, i32 0, i32 5, i32 %224
  %226 = load i8, ptr %225, align 1
  %227 = and i8 %226, 63
  %228 = icmp ne i8 %227, 0
  %229 = add nuw i32 %224, 1
  %230 = icmp ult i32 %229, %197
  br i1 %230, label %231, label %245

231:                                              ; preds = %223
  %232 = sub i32 %197, %224
  br label %233

233:                                              ; preds = %241, %231
  %234 = phi i32 [ %243, %241 ], [ %229, %231 ]
  %235 = phi i32 [ %242, %241 ], [ 1, %231 ]
  %236 = getelementptr %struct.nvkm_vmm_pt, ptr %179, i32 0, i32 5, i32 %234
  %237 = load i8, ptr %236, align 1
  %238 = and i8 %237, 63
  %239 = icmp eq i8 %238, 0
  %240 = xor i1 %228, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %233
  %242 = add i32 %235, 1
  %243 = add i32 %234, 1
  %244 = icmp eq i32 %243, %197
  br i1 %244, label %245, label %233

245:                                              ; preds = %241, %233, %223
  %246 = phi i32 [ 1, %223 ], [ %232, %241 ], [ %235, %233 ]
  %247 = phi i32 [ %229, %223 ], [ %197, %241 ], [ %234, %233 ]
  br i1 %228, label %256, label %248

248:                                              ; preds = %245
  %249 = load i8, ptr %180, align 1
  %250 = and i8 %249, 1
  %251 = icmp eq i8 %250, 0
  %252 = load ptr, ptr %222, align 4
  %253 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %252, i32 0, i32 2
  %254 = select i1 %251, ptr %252, ptr %253
  %255 = load ptr, ptr %254, align 4
  call void %255(ptr noundef %191, ptr noundef nonnull %207, i32 noundef %224, i32 noundef %246) #10
  call void @llvm.memset.p0.i32(ptr align 1 %225, i8 0, i32 %246, i1 false) #10
  br label %270

256:                                              ; preds = %245
  %257 = load ptr, ptr %222, align 4
  %258 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %257, i32 0, i32 1
  %259 = load ptr, ptr %258, align 4
  call void %259(ptr noundef %191, ptr noundef nonnull %207, i32 noundef %224, i32 noundef %246) #10
  %260 = icmp eq i32 %246, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %261, %256
  %262 = phi i32 [ %264, %261 ], [ %246, %256 ]
  %263 = phi i32 [ %265, %261 ], [ %224, %256 ]
  %264 = add i32 %262, -1
  %265 = add i32 %263, 1
  %266 = getelementptr %struct.nvkm_vmm_pt, ptr %179, i32 0, i32 5, i32 %263
  %267 = load i8, ptr %266, align 1
  %268 = or i8 %267, 64
  store i8 %268, ptr %266, align 1
  %269 = icmp eq i32 %264, 0
  br i1 %269, label %270, label %261

270:                                              ; preds = %261, %256, %248
  %271 = icmp ult i32 %247, %197
  br i1 %271, label %223, label %299

272:                                              ; preds = %217, %214
  %273 = load i8, ptr %180, align 1
  %274 = and i8 %273, 1
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %293, label %276

276:                                              ; preds = %272
  switch i32 %215, label %289 [
    i32 0, label %277
    i32 3, label %287
  ]

277:                                              ; preds = %276
  %278 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %179, i32 0, i32 4
  br label %279

279:                                              ; preds = %279, %277
  %280 = phi i32 [ %197, %277 ], [ %282, %279 ]
  %281 = phi i32 [ 0, %277 ], [ %284, %279 ]
  %282 = add i32 %280, -1
  %283 = load ptr, ptr %278, align 4
  %284 = add i32 %281, 1
  %285 = getelementptr ptr, ptr %283, i32 %281
  store ptr inttoptr (i32 -16 to ptr), ptr %285, align 4
  %286 = icmp eq i32 %282, 0
  br i1 %286, label %289, label %279

287:                                              ; preds = %276
  %288 = getelementptr %struct.nvkm_vmm_pt, ptr %179, i32 0, i32 5, i32 0
  call void @llvm.memset.p0.i32(ptr noundef align 1 %288, i8 -128, i32 %197, i1 false) #10
  br label %289

289:                                              ; preds = %287, %279, %276
  %290 = getelementptr %struct.nvkm_vmm_desc, ptr %172, i32 %162, i32 4
  %291 = load ptr, ptr %290, align 4
  %292 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %291, i32 0, i32 2
  br label %296

293:                                              ; preds = %272
  %294 = getelementptr %struct.nvkm_vmm_desc, ptr %172, i32 %162, i32 4
  %295 = load ptr, ptr %294, align 4
  br label %296

296:                                              ; preds = %293, %289
  %297 = phi ptr [ %295, %293 ], [ %292, %289 ]
  %298 = load ptr, ptr %297, align 4
  call void %298(ptr noundef %191, ptr noundef nonnull %207, i32 noundef 0, i32 noundef %197) #10
  br label %299

299:                                              ; preds = %296, %270, %213
  %300 = load ptr, ptr %17, align 4
  %301 = load i16, ptr %22, align 2
  %302 = zext i16 %301 to i32
  %303 = getelementptr %struct.nvkm_vmm_desc, ptr %300, i32 %302, i32 4
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %304, i32 0, i32 3
  %306 = load ptr, ptr %305, align 4
  %307 = load ptr, ptr %18, align 8
  call void %306(ptr noundef %307, ptr noundef %79, i32 noundef %83) #10
  %308 = load i32, ptr %21, align 4
  %309 = load i16, ptr %50, align 8
  %310 = zext i16 %309 to i32
  %311 = load i16, ptr %22, align 2
  %312 = zext i16 %311 to i32
  %313 = sub nsw i32 %310, %312
  %314 = call i32 @llvm.smin.i32(i32 %308, i32 %313) #10
  store i32 %314, ptr %21, align 4
  br label %315

315:                                              ; preds = %299, %158, %155
  %316 = phi i16 [ %311, %299 ], [ %160, %158 ], [ %80, %155 ]
  %317 = phi ptr [ %161, %299 ], [ %161, %158 ], [ %87, %155 ]
  %318 = add i16 %316, -1
  store i16 %318, ptr %22, align 2
  %319 = icmp eq i16 %318, 0
  br i1 %319, label %320, label %78

320:                                              ; preds = %315, %62
  %321 = phi ptr [ %63, %62 ], [ %317, %315 ]
  br i1 %58, label %324, label %322

322:                                              ; preds = %320
  %323 = call zeroext i1 %6(ptr noundef nonnull %11, i1 noundef zeroext %5, i32 noundef %72, i32 noundef %76) #10
  br i1 %323, label %324, label %338

324:                                              ; preds = %322, %320
  %325 = getelementptr [2 x ptr], ptr %321, i32 0, i32 %68
  %326 = load ptr, ptr %325, align 4
  br i1 %61, label %327, label %338

327:                                              ; preds = %324
  br i1 %59, label %328, label %329

328:                                              ; preds = %327
  call void %7(ptr noundef %0, ptr noundef %326, i32 noundef %72, i32 noundef %76, ptr noundef %8) #10
  br label %330

329:                                              ; preds = %327
  call void %9(ptr noundef %0, ptr noundef %326, i32 noundef %72, i32 noundef %76) #10
  br label %330

330:                                              ; preds = %329, %328
  %331 = load i32, ptr %21, align 4
  %332 = load i16, ptr %50, align 8
  %333 = zext i16 %332 to i32
  %334 = load i16, ptr %22, align 2
  %335 = zext i16 %334 to i32
  %336 = sub nsw i32 %333, %335
  %337 = call i32 @llvm.smin.i32(i32 %331, i32 %336) #10
  store i32 %337, ptr %21, align 4
  br label %338

338:                                              ; preds = %330, %324, %322
  %339 = load i16, ptr %22, align 2
  %340 = zext i16 %339 to i32
  %341 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 6, i32 %340
  %342 = load i32, ptr %341, align 4
  %343 = add i32 %342, %76
  store i32 %343, ptr %341, align 4
  %344 = load i64, ptr %20, align 8
  %345 = sub i64 %344, %75
  store i64 %345, ptr %20, align 8
  %346 = icmp eq i64 %344, %75
  br i1 %346, label %366, label %347

347:                                              ; preds = %338
  %348 = getelementptr %struct.nvkm_vmm_desc, ptr %13, i32 %340, i32 1
  %349 = load i8, ptr %348, align 4
  %350 = zext i8 %349 to i32
  %351 = shl nuw i32 1, %350
  %352 = icmp eq i32 %343, %351
  br i1 %352, label %353, label %366

353:                                              ; preds = %353, %347
  %354 = phi ptr [ %358, %353 ], [ %341, %347 ]
  %355 = phi i16 [ %356, %353 ], [ %339, %347 ]
  %356 = add i16 %355, 1
  store i16 %356, ptr %22, align 2
  store i32 0, ptr %354, align 4
  %357 = zext i16 %356 to i32
  %358 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 6, i32 %357
  %359 = load i32, ptr %358, align 4
  %360 = add i32 %359, 1
  store i32 %360, ptr %358, align 4
  %361 = getelementptr %struct.nvkm_vmm_desc, ptr %13, i32 %357, i32 1
  %362 = load i8, ptr %361, align 4
  %363 = zext i8 %362 to i32
  %364 = shl nuw i32 1, %363
  %365 = icmp eq i32 %360, %364
  br i1 %365, label %353, label %366

366:                                              ; preds = %353, %347, %338
  %367 = phi i16 [ %339, %347 ], [ %339, %338 ], [ %356, %353 ]
  %368 = icmp eq i64 %345, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %366
  %370 = zext i16 %367 to i32
  %371 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 7, i32 %370
  %372 = load ptr, ptr %371, align 4
  br label %62

373:                                              ; preds = %366, %48
  %374 = load i32, ptr %21, align 4
  %375 = icmp eq i32 %374, 5
  br i1 %375, label %411, label %376

376:                                              ; preds = %373
  %377 = load ptr, ptr %18, align 8
  %378 = load ptr, ptr %377, align 8
  %379 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %378, i32 0, i32 4
  %380 = load ptr, ptr %379, align 8
  %381 = icmp eq ptr %380, null
  br i1 %381, label %411, label %382

382:                                              ; preds = %376
  call void %380(ptr noundef %377, i32 noundef %374) #10
  br label %411

383:                                              ; preds = %210, %143
  call fastcc void @nvkm_vmm_unref_pdes(ptr noundef nonnull %11) #10
  br label %384

384:                                              ; preds = %383, %143
  %385 = load i16, ptr %50, align 8
  %386 = add i16 %385, -1
  store i16 %386, ptr %50, align 8
  %387 = zext i16 %385 to i32
  %388 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 6, i32 %387
  %389 = load i32, ptr %388, align 4
  %390 = zext i32 %389 to i64
  %391 = zext i16 %386 to i32
  br label %392

392:                                              ; preds = %392, %384
  %393 = phi i32 [ %406, %392 ], [ %391, %384 ]
  %394 = phi i64 [ %402, %392 ], [ %390, %384 ]
  %395 = getelementptr %struct.nvkm_vmm_desc, ptr %13, i32 %393, i32 1
  %396 = load i8, ptr %395, align 4
  %397 = zext i8 %396 to i64
  %398 = shl i64 %394, %397
  %399 = getelementptr %struct.nvkm_vmm_iter, ptr %11, i32 0, i32 6, i32 %393
  %400 = load i32, ptr %399, align 4
  %401 = zext i32 %400 to i64
  %402 = or i64 %398, %401
  %403 = trunc i32 %393 to i16
  %404 = add i16 %403, -1
  store i16 %404, ptr %50, align 8
  %405 = icmp eq i32 %393, 0
  %406 = add nsw i32 %393, -1
  br i1 %405, label %407, label %392

407:                                              ; preds = %392
  %408 = load i8, ptr %1, align 4
  %409 = zext i8 %408 to i64
  %410 = shl i64 %402, %409
  br label %411

411:                                              ; preds = %407, %382, %376, %373
  %412 = phi i64 [ %410, %407 ], [ -1, %373 ], [ -1, %382 ], [ -1, %376 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #10
  ret i64 %412
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_boot_ptes(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr [2 x ptr], ptr %11, i32 0, i32 %9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_memory_func, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  tail call void %18(ptr noundef %15, ptr noundef %20) #10
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_vmm_unref(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %85, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvkm_vmm, ptr %2, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #10, !srcloc !18
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #10, !srcloc !19
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %84, label %11, !prof !11

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #10
  br label %84

12:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !20
  %13 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 12
  %14 = tail call ptr @rb_first(ptr noundef %13) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 5
  br label %18

18:                                               ; preds = %23, %16
  %19 = phi ptr [ %14, %16 ], [ %24, %23 ]
  %20 = getelementptr i8, ptr %19, i32 -8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef %17) #10
  tail call void @nvkm_vmm_put_locked(ptr noundef nonnull %2, ptr noundef nonnull %20) #10
  tail call void @mutex_unlock(ptr noundef %17) #10
  br label %23

23:                                               ; preds = %22, %18
  %24 = tail call ptr @rb_first(ptr noundef %13) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %23, %12
  %27 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 13
  %28 = load i8, ptr %27, align 4, !range !21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 8
  %32 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %31, i32 0, i32 8
  %33 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 7
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 6
  %36 = load i64, ptr %35, align 8
  br label %37

37:                                               ; preds = %37, %30
  %38 = phi ptr [ %32, %30 ], [ %39, %37 ]
  %39 = getelementptr %struct.nvkm_vmm_page, ptr %38, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %37

42:                                               ; preds = %37
  %43 = sub i64 %34, %36
  %44 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void @nvkm_mmu_ptc_dump(ptr noundef %45) #10
  %46 = load i64, ptr %35, align 8
  %47 = tail call fastcc i64 @nvkm_vmm_iter(ptr noundef nonnull %2, ptr noundef %38, i64 noundef %46, i64 noundef %43, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull @nvkm_vmm_unref_ptes, ptr noundef null, ptr noundef null, ptr noundef null) #10
  br label %48

48:                                               ; preds = %42, %26
  %49 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %50, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store volatile ptr %53, ptr %52, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %51, align 4
  tail call void @kfree(ptr noundef %50) #10
  %55 = load volatile ptr, ptr %49, align 4
  %56 = icmp eq ptr %55, %49
  br i1 %56, label %58, label %57, !prof !11

57:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1003, i32 noundef 9, ptr noundef null) #10
  br label %58

58:                                               ; preds = %57, %48
  %59 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 16
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_mmu, ptr %64, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 15
  %70 = load i32, ptr %69, align 4
  tail call void @dma_free_attrs(ptr noundef %68, i32 noundef 16384, ptr noundef nonnull %60, i32 noundef %70, i32 noundef 0) #10
  br label %71

71:                                               ; preds = %62, %58
  %72 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 8
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %71
  %76 = getelementptr %struct.nvkm_vmm, ptr %2, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  tail call void @nvkm_mmu_ptc_put(ptr noundef %77, i1 noundef zeroext true, ptr noundef nonnull %73) #10
  %78 = load ptr, ptr %72, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %78, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  tail call void @kvfree(ptr noundef %82) #10
  tail call void @kfree(ptr noundef nonnull %78) #10
  store ptr null, ptr %72, align 4
  br label %83

83:                                               ; preds = %80, %75, %71
  tail call void @kfree(ptr noundef nonnull %2) #10
  br label %84

84:                                               ; preds = %83, %11, %9
  store ptr null, ptr %0, align 4
  br label %85

85:                                               ; preds = %84, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_vmm_ref(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #10, !srcloc !18
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #10, !srcloc !22
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !8

8:                                                ; preds = %3
  %9 = add i32 %6, 1
  %10 = or i32 %9, %6
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %8, %3
  %13 = phi i32 [ 2, %3 ], [ 1, %8 ]
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef %13) #10
  br label %14

14:                                               ; preds = %12, %8, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_vmm_new(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 35
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store ptr null, ptr %9, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %12, i32 0, i32 4, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %11, i1 noundef zeroext false, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %9) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %8
  call void @nvkm_vmm_unref(ptr noundef nonnull %9)
  br label %18

18:                                               ; preds = %17, %8
  %19 = load ptr, ptr %9, align 4
  store ptr %19, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_mmu_ptc_get(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_unref_ptes(ptr nocapture noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  br i1 %1, label %12, label %48

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %6, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr [2 x ptr], ptr %11, i32 0, i32 %9
  %20 = load ptr, ptr %19, align 4
  %21 = tail call zeroext i1 %16(ptr noundef %18, ptr noundef %20, i32 noundef %2, i32 noundef %3) #10
  br i1 %21, label %22, label %48

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 4
  %26 = load i16, ptr %25, align 8
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 5
  %29 = load i16, ptr %28, align 2
  %30 = zext i16 %29 to i32
  %31 = sub nsw i32 %27, %30
  %32 = tail call i32 @llvm.smin.i32(i32 %24, i32 %31) #10
  store i32 %32, ptr %23, align 4
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %42, label %34

34:                                               ; preds = %22
  %35 = load ptr, ptr %17, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %36, i32 0, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void %38(ptr noundef %35, i32 noundef %32) #10
  br label %41

41:                                               ; preds = %40, %34
  store i32 5, ptr %23, align 4
  br label %42

42:                                               ; preds = %41, %22
  %43 = load ptr, ptr %13, align 4
  %44 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %43, i32 0, i32 9
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %17, align 8
  %47 = load ptr, ptr %19, align 4
  tail call void %45(ptr noundef %46, ptr noundef %47, i32 noundef %2, i32 noundef %3) #10
  br label %48

48:                                               ; preds = %42, %12, %4
  %49 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 1, i32 %9
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %50, %3
  store i32 %51, ptr %49, align 4
  %52 = load i32, ptr %6, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %166

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 1, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %164, label %62

62:                                               ; preds = %58, %54
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr %struct.nvkm_vmm_page, ptr %63, i32 -1, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %6, i32 0, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %65, i32 0, i32 1
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  %72 = sub nsw i32 %68, %71
  %73 = shl nuw i32 1, %72
  %74 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = lshr i32 %2, %72
  %77 = icmp eq i32 %3, 0
  br i1 %77, label %164, label %78

78:                                               ; preds = %62
  %79 = add i32 %73, -1
  %80 = and i32 %79, %2
  %81 = sub i32 %73, %80
  %82 = tail call i32 @llvm.umin.i32(i32 %81, i32 %3) #10
  %83 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %76
  %84 = load i8, ptr %83, align 1
  %85 = trunc i32 %82 to i8
  %86 = sub i8 %84, %85
  store i8 %86, ptr %83, align 1
  %87 = sub i32 %3, %82
  %88 = add i32 %76, 1
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %90, %78
  %91 = phi i32 [ %98, %90 ], [ %87, %78 ]
  %92 = phi i32 [ %99, %90 ], [ %88, %78 ]
  %93 = tail call i32 @llvm.umin.i32(i32 %73, i32 %91) #10
  %94 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %92
  %95 = load i8, ptr %94, align 1
  %96 = trunc i32 %93 to i8
  %97 = sub i8 %95, %96
  store i8 %97, ptr %94, align 1
  %98 = sub i32 %91, %93
  %99 = add i32 %92, 1
  %100 = icmp eq i32 %98, 0
  br i1 %100, label %101, label %90, !llvm.loop !23

101:                                              ; preds = %90, %78
  %102 = phi i32 [ %88, %78 ], [ %99, %90 ]
  %103 = load i32, ptr %55, align 4
  %104 = icmp ne i32 %103, 0
  %105 = icmp ult i32 %76, %102
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %164

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %65, i32 0, i32 4
  br label %109

109:                                              ; preds = %161, %107
  %110 = phi i32 [ %76, %107 ], [ %162, %161 ]
  %111 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %110
  %112 = load i8, ptr %111, align 1
  %113 = and i8 %112, 63
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %119, %109
  %116 = phi i32 [ %117, %119 ], [ %110, %109 ]
  %117 = add i32 %116, 1
  %118 = icmp ult i32 %117, %102
  br i1 %118, label %119, label %164

119:                                              ; preds = %115
  %120 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %117
  %121 = load i8, ptr %120, align 1
  %122 = and i8 %121, 63
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %161, label %115

124:                                              ; preds = %109
  %125 = and i8 %112, -65
  store i8 %125, ptr %111, align 1
  %126 = add nuw i32 %110, 1
  %127 = icmp ult i32 %126, %102
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = sub i32 %102, %110
  br label %130

130:                                              ; preds = %137, %128
  %131 = phi i32 [ %140, %137 ], [ %126, %128 ]
  %132 = phi i32 [ %139, %137 ], [ 1, %128 ]
  %133 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %131
  %134 = load i8, ptr %133, align 1
  %135 = and i8 %134, 63
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = and i8 %134, -65
  store i8 %138, ptr %133, align 1
  %139 = add i32 %132, 1
  %140 = add i32 %131, 1
  %141 = icmp eq i32 %140, %102
  br i1 %141, label %142, label %130

142:                                              ; preds = %137, %130
  %143 = phi i32 [ %129, %137 ], [ %132, %130 ]
  %144 = phi i32 [ %102, %137 ], [ %131, %130 ]
  %145 = load i8, ptr %111, align 1
  br label %146

146:                                              ; preds = %142, %124
  %147 = phi i8 [ %125, %124 ], [ %145, %142 ]
  %148 = phi i32 [ 1, %124 ], [ %143, %142 ]
  %149 = phi i32 [ %126, %124 ], [ %144, %142 ]
  %150 = icmp sgt i8 %147, -1
  %151 = load ptr, ptr %108, align 4
  br i1 %150, label %155, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %151, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  br label %158

155:                                              ; preds = %146
  %156 = load ptr, ptr %151, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %155, %152
  %159 = phi ptr [ %154, %152 ], [ %156, %155 ]
  %160 = load ptr, ptr %11, align 4
  tail call void %159(ptr noundef %75, ptr noundef %160, i32 noundef %110, i32 noundef %148) #10
  br label %161

161:                                              ; preds = %158, %155, %119
  %162 = phi i32 [ %149, %155 ], [ %149, %158 ], [ %117, %119 ]
  %163 = icmp ult i32 %162, %102
  br i1 %163, label %109, label %164

164:                                              ; preds = %161, %115, %101, %62, %58
  %165 = load i32, ptr %49, align 4
  br label %166

166:                                              ; preds = %164, %48
  %167 = phi i32 [ %165, %164 ], [ %51, %48 ]
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  tail call fastcc void @nvkm_vmm_unref_pdes(ptr noundef %0)
  br label %170

170:                                              ; preds = %169, %166
  %171 = xor i1 %168, true
  ret i1 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_vmm_unref_pdes(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 5
  %6 = load i16, ptr %5, align 2
  %7 = zext i16 %6 to i32
  %8 = getelementptr %struct.nvkm_vmm_desc, ptr %4, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i32
  %12 = add nuw nsw i32 %7, 1
  %13 = getelementptr %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 7, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 7, i32 %7
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  %17 = getelementptr [2 x ptr], ptr %16, i32 0, i32 %11
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %2, align 4
  %19 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 6, i32 %12
  %22 = load i32, ptr %21, align 4
  %23 = add i16 %6, 1
  store i16 %23, ptr %5, align 2
  %24 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %14, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %24, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %86, label %28

28:                                               ; preds = %1
  %29 = load i16, ptr %5, align 2
  %30 = zext i16 %29 to i32
  %31 = getelementptr %struct.nvkm_vmm_desc, ptr %4, i32 %30, i32 4
  %32 = load ptr, ptr %31, align 4
  store ptr null, ptr %17, align 4
  %33 = xor i1 %10, true
  %34 = zext i1 %33 to i32
  %35 = getelementptr %struct.nvkm_vmm_pt, ptr %16, i32 0, i32 1, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %28
  %39 = load ptr, ptr %14, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %16, i32 0, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %32, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef %20, ptr noundef nonnull %39, i32 noundef %22, i32 noundef 1) #10
  %49 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %14, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr ptr, ptr %50, i32 %22
  store ptr inttoptr (i32 -16 to ptr), ptr %51, align 4
  br label %67

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %32, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %20, ptr noundef nonnull %39, i32 noundef %22, i32 noundef 1) #10
  %55 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %14, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr ptr, ptr %56, i32 %22
  store ptr null, ptr %57, align 4
  br label %67

58:                                               ; preds = %38
  %59 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %32, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  tail call void %60(ptr noundef %20, ptr noundef %14, i32 noundef %22) #10
  %61 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %14, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr ptr, ptr %62, i32 %22
  store ptr null, ptr %63, align 4
  br label %67

64:                                               ; preds = %28
  %65 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %32, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  tail call void %66(ptr noundef %20, ptr noundef %14, i32 noundef %22) #10
  br label %67

67:                                               ; preds = %64, %58, %52, %46
  %68 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 4
  %71 = load i16, ptr %70, align 8
  %72 = zext i16 %71 to i32
  %73 = load i16, ptr %5, align 2
  %74 = zext i16 %73 to i32
  %75 = sub nsw i32 %72, %74
  %76 = tail call i32 @llvm.smin.i32(i32 %69, i32 %75) #10
  store i32 %76, ptr %68, align 4
  %77 = icmp eq i32 %76, 5
  br i1 %77, label %89, label %78

78:                                               ; preds = %67
  %79 = load ptr, ptr %19, align 8
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %80, i32 0, i32 4
  %82 = load ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  tail call void %82(ptr noundef %79, i32 noundef %76) #10
  br label %85

85:                                               ; preds = %84, %78
  store i32 5, ptr %68, align 4
  br label %89

86:                                               ; preds = %1
  tail call fastcc void @nvkm_vmm_unref_pdes(ptr noundef %0)
  %87 = xor i1 %10, true
  %88 = zext i1 %87 to i32
  br label %89

89:                                               ; preds = %86, %85, %67
  %90 = phi i32 [ %34, %85 ], [ %34, %67 ], [ %88, %86 ]
  %91 = getelementptr inbounds %struct.nvkm_vmm, ptr %20, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nvkm_vmm, ptr %20, i32 0, i32 13
  %94 = load i8, ptr %93, align 4, !range !21
  %95 = icmp ne i8 %94, 0
  call void @nvkm_mmu_ptc_put(ptr noundef %92, i1 noundef zeroext %95, ptr noundef nonnull %2) #10
  %96 = getelementptr %struct.nvkm_vmm_pt, ptr %16, i32 0, i32 1, i32 %90
  %97 = load i32, ptr %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = icmp eq ptr %16, null
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %16, i32 0, i32 4
  %103 = load ptr, ptr %102, align 4
  call void @kvfree(ptr noundef %103) #10
  call void @kfree(ptr noundef nonnull %16) #10
  br label %104

104:                                              ; preds = %101, %89
  %105 = load i16, ptr %5, align 2
  %106 = add i16 %105, -1
  store i16 %106, ptr %5, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mmu_ptc_put(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_ref_ptes(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 2
  %9 = zext i1 %8 to i32
  %10 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 1, i32 %9
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %3
  store i32 %14, ptr %12, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %129

17:                                               ; preds = %4
  %18 = load ptr, ptr %0, align 8
  %19 = getelementptr %struct.nvkm_vmm_page, ptr %18, i32 -1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %6, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %20, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = sub nsw i32 %23, %26
  %28 = shl nuw i32 1, %27
  %29 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = lshr i32 %2, %27
  %32 = icmp eq i32 %3, 0
  br i1 %32, label %129, label %33

33:                                               ; preds = %17
  %34 = add i32 %28, -1
  %35 = and i32 %34, %2
  %36 = sub i32 %28, %35
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %3) #10
  %38 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %31
  %39 = load i8, ptr %38, align 1
  %40 = trunc i32 %37 to i8
  %41 = add i8 %39, %40
  store i8 %41, ptr %38, align 1
  %42 = sub i32 %3, %37
  %43 = add i32 %31, 1
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %45, %33
  %46 = phi i32 [ %53, %45 ], [ %42, %33 ]
  %47 = phi i32 [ %54, %45 ], [ %43, %33 ]
  %48 = tail call i32 @llvm.umin.i32(i32 %28, i32 %46) #10
  %49 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %47
  %50 = load i8, ptr %49, align 1
  %51 = trunc i32 %48 to i8
  %52 = add i8 %50, %51
  store i8 %52, ptr %49, align 1
  %53 = sub i32 %46, %48
  %54 = add i32 %47, 1
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %56, label %45, !llvm.loop !25

56:                                               ; preds = %45, %33
  %57 = phi i32 [ %43, %33 ], [ %54, %45 ]
  %58 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = icmp ult i32 %31, %57
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %129

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %6, i32 0, i32 4
  %65 = getelementptr [2 x ptr], ptr %11, i32 0, i32 1
  %66 = getelementptr inbounds %struct.nvkm_vmm_desc, ptr %20, i32 0, i32 4
  br label %67

67:                                               ; preds = %126, %63
  %68 = phi i32 [ %31, %63 ], [ %127, %126 ]
  %69 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 64
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %77, %67
  %74 = phi i32 [ %75, %77 ], [ %68, %67 ]
  %75 = add i32 %74, 1
  %76 = icmp ult i32 %75, %57
  br i1 %76, label %77, label %129

77:                                               ; preds = %73
  %78 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %75
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, 64
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %126, label %73

82:                                               ; preds = %67
  %83 = or i8 %70, 64
  store i8 %83, ptr %69, align 1
  %84 = add nuw i32 %68, 1
  %85 = icmp ult i32 %84, %57
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = sub i32 %57, %68
  br label %88

88:                                               ; preds = %95, %86
  %89 = phi i32 [ %98, %95 ], [ %84, %86 ]
  %90 = phi i32 [ %97, %95 ], [ 1, %86 ]
  %91 = getelementptr %struct.nvkm_vmm_pt, ptr %11, i32 0, i32 5, i32 %89
  %92 = load i8, ptr %91, align 1
  %93 = and i8 %92, 64
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = or i8 %92, 64
  store i8 %96, ptr %91, align 1
  %97 = add i32 %90, 1
  %98 = add i32 %89, 1
  %99 = icmp eq i32 %98, %57
  br i1 %99, label %100, label %88

100:                                              ; preds = %95, %88
  %101 = phi i32 [ %87, %95 ], [ %90, %88 ]
  %102 = phi i32 [ %57, %95 ], [ %89, %88 ]
  %103 = load i8, ptr %69, align 1
  br label %104

104:                                              ; preds = %100, %82
  %105 = phi i8 [ %83, %82 ], [ %103, %100 ]
  %106 = phi i32 [ 1, %82 ], [ %101, %100 ]
  %107 = phi i32 [ %84, %82 ], [ %102, %100 ]
  %108 = icmp sgt i8 %105, -1
  br i1 %108, label %117, label %109

109:                                              ; preds = %104
  %110 = shl i32 %68, %27
  %111 = shl i32 %106, %27
  %112 = load ptr, ptr %64, align 4
  %113 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %65, align 4
  tail call void %114(ptr noundef %30, ptr noundef %115, i32 noundef %110, i32 noundef %111) #10
  %116 = load ptr, ptr %66, align 4
  br label %121

117:                                              ; preds = %104
  %118 = load ptr, ptr %66, align 4
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %117, %109
  %122 = phi ptr [ %116, %109 ], [ %118, %117 ]
  %123 = getelementptr inbounds %struct.nvkm_vmm_desc_func, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = load ptr, ptr %11, align 4
  tail call void %124(ptr noundef %30, ptr noundef %125, i32 noundef %68, i32 noundef %106) #10
  br label %126

126:                                              ; preds = %121, %117, %77
  %127 = phi i32 [ %107, %117 ], [ %107, %121 ], [ %75, %77 ]
  %128 = icmp ult i32 %127, %57
  br i1 %128, label %67, label %129

129:                                              ; preds = %126, %73, %56, %17, %4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_vmm_map_valid(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %6) #10
  switch i32 %10, label %57 [
    i32 1, label %11
    i32 2, label %34
    i32 3, label %34
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %13, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp ugt i32 %20, 3
  br i1 %21, label %22, label %124

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_mmu, ptr %24, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_mmu, ptr %24, i32 0, i32 1, i32 4
  %30 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = load i8, ptr %13, align 4
  %33 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef %29, ptr noundef %31, i32 noundef %33) #13
  br label %124

34:                                               ; preds = %5, %5
  %35 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.nvkm_vmm_page, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %124

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_mmu, ptr %47, i32 0, i32 1, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nvkm_mmu, ptr %47, i32 0, i32 1, i32 4
  %53 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  %55 = load i8, ptr %36, align 4
  %56 = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.17, ptr noundef %52, ptr noundef %54, i32 noundef %56) #13
  br label %124

57:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1390, i32 noundef 9, ptr noundef null) #10
  br label %124

58:                                               ; preds = %34, %11
  %59 = phi ptr [ %36, %34 ], [ %13, %11 ]
  %60 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 7
  %63 = load i8, ptr %59, align 4
  %64 = zext i8 %63 to i64
  %65 = shl nsw i64 -1, %64
  %66 = xor i64 %65, -1
  %67 = and i64 %61, %66
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %71 = load i56, ptr %70, align 8
  %72 = and i56 %71, 1125899906842623
  %73 = zext i56 %72 to i64
  %74 = and i64 %73, %66
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 1
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, %66
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load ptr, ptr %4, align 8
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_memory_func, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = tail call zeroext i8 %85(ptr noundef %82) #10
  %87 = load ptr, ptr %62, align 8
  %88 = load i8, ptr %87, align 4
  %89 = icmp ult i8 %86, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %81, %76, %69, %58
  %91 = phi i8 [ %63, %58 ], [ %63, %69 ], [ %63, %76 ], [ %88, %81 ]
  %92 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = icmp ugt i32 %93, 3
  br i1 %94, label %95, label %124

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_mmu, ptr %97, i32 0, i32 1, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.nvkm_mmu, ptr %97, i32 0, i32 1, i32 4
  %103 = getelementptr inbounds %struct.nvkm_vmm, ptr %0, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = load i64, ptr %60, align 8
  %106 = getelementptr inbounds %struct.nvkm_vma, ptr %1, i32 0, i32 3
  %107 = load i56, ptr %106, align 8
  %108 = and i56 %107, 1125899906842623
  %109 = zext i56 %108 to i64
  %110 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %4, i32 0, i32 1
  %111 = load i64, ptr %110, align 8
  %112 = zext i8 %91 to i32
  %113 = load ptr, ptr %4, align 8
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nvkm_memory_func, ptr %114, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = tail call zeroext i8 %116(ptr noundef %113) #10
  %118 = zext i8 %117 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.18, ptr noundef %102, ptr noundef %104, i64 noundef %105, i64 noundef %109, i64 noundef %111, i32 noundef %112, i32 noundef %118) #13
  br label %124

119:                                              ; preds = %81
  %120 = load ptr, ptr %0, align 8
  %121 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %120, i32 0, i32 3
  %122 = load ptr, ptr %121, align 4
  %123 = tail call i32 %122(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef %4) #10
  br label %124

124:                                              ; preds = %119, %95, %90, %57, %45, %41, %22, %18
  %125 = phi i32 [ -38, %57 ], [ %123, %119 ], [ -22, %22 ], [ -22, %18 ], [ -22, %45 ], [ -22, %41 ], [ -22, %95 ], [ -22, %90 ]
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_memory_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_sparse_unref_ptes(ptr nocapture noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %17 [
    i32 0, label %10
    i32 3, label %15
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %6, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr ptr, ptr %12, i32 %2
  %14 = shl i32 %3, 2
  tail call void @llvm.memset.p0.i32(ptr align 4 %13, i8 0, i32 %14, i1 false)
  br label %17

15:                                               ; preds = %4
  %16 = getelementptr %struct.nvkm_vmm_pt, ptr %6, i32 0, i32 5, i32 %2
  tail call void @llvm.memset.p0.i32(ptr align 1 %16, i8 0, i32 %3, i1 false)
  br label %17

17:                                               ; preds = %15, %10, %4
  %18 = tail call zeroext i1 @nvkm_vmm_unref_ptes(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3)
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nvkm_vmm_sparse_ref_ptes(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_vmm_iter, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr %6, align 4
  switch i32 %9, label %24 [
    i32 0, label %10
    i32 3, label %22
  ]

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nvkm_vmm_pt, ptr %8, i32 0, i32 4
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %3, %12 ], [ %17, %14 ]
  %16 = phi i32 [ %2, %12 ], [ %19, %14 ]
  %17 = add i32 %15, -1
  %18 = load ptr, ptr %13, align 4
  %19 = add i32 %16, 1
  %20 = getelementptr ptr, ptr %18, i32 %16
  store ptr inttoptr (i32 -16 to ptr), ptr %20, align 4
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %24, label %14

22:                                               ; preds = %4
  %23 = getelementptr %struct.nvkm_vmm_pt, ptr %8, i32 0, i32 5, i32 %2
  tail call void @llvm.memset.p0.i32(ptr align 1 %23, i8 -128, i32 %3, i1 false) #10
  br label %24

24:                                               ; preds = %22, %14, %10, %4
  %25 = tail call zeroext i1 @nvkm_vmm_ref_ptes(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3)
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mmu_ptc_dump(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

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
!9 = !{i64 2154838132, i64 2154838642, i64 2154838169, i64 2154838225, i64 2154838259, i64 2154838283, i64 2154838324, i64 2154838345, i64 2154838373, i64 2154838407}
!10 = !{i64 2154843182, i64 2154843692, i64 2154843219, i64 2154843275, i64 2154843309, i64 2154843333, i64 2154843374, i64 2154843395, i64 2154843423, i64 2154843457}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154845439, i64 2154845949, i64 2154845476, i64 2154845532, i64 2154845566, i64 2154845590, i64 2154845631, i64 2154845652, i64 2154845680, i64 2154845714}
!13 = !{i64 2154840663, i64 2154841173, i64 2154840700, i64 2154840756, i64 2154840790, i64 2154840814, i64 2154840855, i64 2154840876, i64 2154840904, i64 2154840938}
!14 = !{!"auto-init"}
!15 = !{i64 2154892818, i64 2154893329, i64 2154892855, i64 2154892911, i64 2154892945, i64 2154892969, i64 2154893010, i64 2154893031, i64 2154893059, i64 2154893093}
!16 = !{!"branch_weights", i32 2002, i32 2000}
!17 = !{i64 2148437688}
!18 = !{i64 834622, i64 2148324593, i64 2148324619, i64 2148324666, i64 2148324688, i64 2148324716, i64 2148324736}
!19 = !{i64 2148339823, i64 2148339855, i64 2148339884, i64 2148339918, i64 2148339949, i64 2148339972}
!20 = !{i64 2149352578}
!21 = !{i8 0, i8 2}
!22 = !{i64 2148337466, i64 2148337498, i64 2148337527, i64 2148337561, i64 2148337592, i64 2148337615}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
!25 = distinct !{!25, !24}
