; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_buffer.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_buffer.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.77 }
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, i32, %struct.spinlock, [16 x i32] }

@.str = private unnamed_addr constant [37 x i8] c"\016stream link to 0x%08x @ 0x%08x %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"cmd \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\016link op: %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\016addr: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\016back: 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\016event: %d\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"virt %p phys 0x%08x free 0x%08x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @etnaviv_buffer_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 4
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %10 = load ptr, ptr %9, align 4
  store i32 939524296, ptr %10, align 4
  %11 = load i32, ptr %2, align 4
  %12 = add i32 %11, 4
  store i32 %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 30
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %14, i32 0, i32 6
  %16 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %8, ptr noundef %15) #3
  %17 = load i32, ptr %2, align 4
  %18 = add i32 %17, 7
  %19 = and i32 %18, -8
  store i32 %19, ptr %2, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %23, label %22, !prof !10

22:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

23:                                               ; preds = %7
  %24 = load ptr, ptr %9, align 4
  %25 = lshr exact i32 %19, 2
  %26 = getelementptr i32, ptr %24, i32 %25
  store i32 1073741826, ptr %26, align 4
  %27 = load i32, ptr %2, align 4
  %28 = add i32 %27, 4
  store i32 %28, ptr %2, align 4
  %29 = load i32, ptr %3, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %32, label %31, !prof !10

31:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

32:                                               ; preds = %23
  %33 = add i32 %16, -4
  %34 = add i32 %33, %17
  %35 = load ptr, ptr %9, align 4
  %36 = lshr i32 %28, 2
  %37 = getelementptr i32, ptr %35, i32 %36
  store i32 %34, ptr %37, align 4
  %38 = load i32, ptr %2, align 4
  %39 = add i32 %38, 4
  store i32 %39, ptr %2, align 4
  %40 = lshr i32 %39, 3
  %41 = trunc i32 %40 to i16
  ret i16 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_va(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @etnaviv_buffer_config_mmuv2(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 4
  %5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %105, label %9

9:                                                ; preds = %3
  store i32 0, ptr %4, align 4
  %10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %16 = load ptr, ptr %15, align 4
  store i32 134286848, ptr %16, align 4
  %17 = load i32, ptr %4, align 4
  %18 = add i32 %17, 4
  store i32 %18, ptr %4, align 4
  %19 = load i32, ptr %10, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %22, label %21, !prof !10

21:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

22:                                               ; preds = %14
  %23 = load ptr, ptr %15, align 4
  %24 = lshr i32 %18, 2
  %25 = getelementptr i32, ptr %23, i32 %24
  store i32 0, ptr %25, align 4
  %26 = load i32, ptr %4, align 4
  %27 = add i32 %26, 11
  %28 = and i32 %27, -8
  store i32 %28, ptr %4, align 4
  %29 = load i32, ptr %10, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %32, label %31, !prof !10

31:                                               ; preds = %22
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

32:                                               ; preds = %22
  %33 = load ptr, ptr %15, align 4
  %34 = lshr exact i32 %28, 2
  %35 = getelementptr i32, ptr %33, i32 %34
  store i32 134283361, ptr %35, align 4
  %36 = load i32, ptr %4, align 4
  %37 = add i32 %36, 4
  store i32 %37, ptr %4, align 4
  %38 = load i32, ptr %10, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %41, label %40, !prof !10

40:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

41:                                               ; preds = %32
  %42 = load ptr, ptr %15, align 4
  %43 = lshr i32 %37, 2
  %44 = getelementptr i32, ptr %42, i32 %43
  store i32 %1, ptr %44, align 4
  %45 = load i32, ptr %4, align 4
  %46 = add i32 %45, 11
  %47 = and i32 %46, -8
  store i32 %47, ptr %4, align 4
  %48 = load i32, ptr %10, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %51, label %50, !prof !10

50:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

51:                                               ; preds = %41
  %52 = load ptr, ptr %15, align 4
  %53 = lshr exact i32 %47, 2
  %54 = getelementptr i32, ptr %52, i32 %53
  store i32 134283360, ptr %54, align 4
  %55 = load i32, ptr %4, align 4
  %56 = add i32 %55, 4
  store i32 %56, ptr %4, align 4
  %57 = load i32, ptr %10, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %60, label %59, !prof !10

59:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

60:                                               ; preds = %51
  %61 = load ptr, ptr %15, align 4
  %62 = lshr i32 %56, 2
  %63 = getelementptr i32, ptr %61, i32 %62
  store i32 %2, ptr %63, align 4
  %64 = load i32, ptr %4, align 4
  %65 = add i32 %64, 11
  %66 = and i32 %65, -8
  store i32 %66, ptr %4, align 4
  %67 = load i32, ptr %10, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %70, label %69, !prof !10

69:                                               ; preds = %60
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

70:                                               ; preds = %60
  %71 = load ptr, ptr %15, align 4
  %72 = lshr exact i32 %66, 2
  %73 = getelementptr i32, ptr %71, i32 %72
  store i32 134286850, ptr %73, align 4
  %74 = load i32, ptr %4, align 4
  %75 = add i32 %74, 4
  store i32 %75, ptr %4, align 4
  %76 = load i32, ptr %10, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %79, label %78, !prof !10

78:                                               ; preds = %70
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

79:                                               ; preds = %70
  %80 = load ptr, ptr %15, align 4
  %81 = lshr i32 %75, 2
  %82 = getelementptr i32, ptr %80, i32 %81
  store i32 1793, ptr %82, align 4
  %83 = load i32, ptr %4, align 4
  %84 = add i32 %83, 11
  %85 = and i32 %84, -8
  store i32 %85, ptr %4, align 4
  %86 = load i32, ptr %10, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %89, label %88, !prof !10

88:                                               ; preds = %79
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

89:                                               ; preds = %79
  %90 = load ptr, ptr %15, align 4
  %91 = lshr exact i32 %85, 2
  %92 = getelementptr i32, ptr %90, i32 %91
  store i32 1207959552, ptr %92, align 4
  %93 = load i32, ptr %4, align 4
  %94 = add i32 %93, 4
  store i32 %94, ptr %4, align 4
  %95 = load i32, ptr %10, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %98, label %97, !prof !10

97:                                               ; preds = %89
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

98:                                               ; preds = %89
  %99 = load ptr, ptr %15, align 4
  %100 = lshr i32 %94, 2
  %101 = getelementptr i32, ptr %99, i32 %100
  store i32 1793, ptr %101, align 4
  %102 = load i32, ptr %4, align 4
  %103 = add i32 %102, 4
  %104 = load i32, ptr %5, align 4
  br label %105

105:                                              ; preds = %98, %3
  %106 = phi i32 [ %103, %98 ], [ 0, %3 ]
  %107 = phi i32 [ %104, %98 ], [ %6, %3 ]
  %108 = and i32 %107, 512
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %209, label %110

110:                                              ; preds = %105
  %111 = add i32 %106, 7
  %112 = and i32 %111, -8
  store i32 %112, ptr %4, align 4
  %113 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = icmp ult i32 %112, %114
  br i1 %115, label %117, label %116, !prof !10

116:                                              ; preds = %110
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = lshr exact i32 %112, 2
  %121 = getelementptr i32, ptr %119, i32 %120
  store i32 134286848, ptr %121, align 4
  %122 = load i32, ptr %4, align 4
  %123 = add i32 %122, 4
  store i32 %123, ptr %4, align 4
  %124 = load i32, ptr %113, align 4
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %127, label %126, !prof !10

126:                                              ; preds = %117
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

127:                                              ; preds = %117
  %128 = load ptr, ptr %118, align 4
  %129 = lshr i32 %123, 2
  %130 = getelementptr i32, ptr %128, i32 %129
  store i32 1, ptr %130, align 4
  %131 = load i32, ptr %4, align 4
  %132 = add i32 %131, 11
  %133 = and i32 %132, -8
  store i32 %133, ptr %4, align 4
  %134 = load i32, ptr %113, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %137, label %136, !prof !10

136:                                              ; preds = %127
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

137:                                              ; preds = %127
  %138 = load ptr, ptr %118, align 4
  %139 = lshr exact i32 %133, 2
  %140 = getelementptr i32, ptr %138, i32 %139
  store i32 134283361, ptr %140, align 4
  %141 = load i32, ptr %4, align 4
  %142 = add i32 %141, 4
  store i32 %142, ptr %4, align 4
  %143 = load i32, ptr %113, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %146, label %145, !prof !10

145:                                              ; preds = %137
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

146:                                              ; preds = %137
  %147 = load ptr, ptr %118, align 4
  %148 = lshr i32 %142, 2
  %149 = getelementptr i32, ptr %147, i32 %148
  store i32 %1, ptr %149, align 4
  %150 = load i32, ptr %4, align 4
  %151 = add i32 %150, 11
  %152 = and i32 %151, -8
  store i32 %152, ptr %4, align 4
  %153 = load i32, ptr %113, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %156, label %155, !prof !10

155:                                              ; preds = %146
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

156:                                              ; preds = %146
  %157 = load ptr, ptr %118, align 4
  %158 = lshr exact i32 %152, 2
  %159 = getelementptr i32, ptr %157, i32 %158
  store i32 134283360, ptr %159, align 4
  %160 = load i32, ptr %4, align 4
  %161 = add i32 %160, 4
  store i32 %161, ptr %4, align 4
  %162 = load i32, ptr %113, align 4
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %165, label %164, !prof !10

164:                                              ; preds = %156
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

165:                                              ; preds = %156
  %166 = load ptr, ptr %118, align 4
  %167 = lshr i32 %161, 2
  %168 = getelementptr i32, ptr %166, i32 %167
  store i32 %2, ptr %168, align 4
  %169 = load i32, ptr %4, align 4
  %170 = add i32 %169, 11
  %171 = and i32 %170, -8
  store i32 %171, ptr %4, align 4
  %172 = load i32, ptr %113, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %175, label %174, !prof !10

174:                                              ; preds = %165
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

175:                                              ; preds = %165
  %176 = load ptr, ptr %118, align 4
  %177 = lshr exact i32 %171, 2
  %178 = getelementptr i32, ptr %176, i32 %177
  store i32 134286850, ptr %178, align 4
  %179 = load i32, ptr %4, align 4
  %180 = add i32 %179, 4
  store i32 %180, ptr %4, align 4
  %181 = load i32, ptr %113, align 4
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %184, label %183, !prof !10

183:                                              ; preds = %175
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

184:                                              ; preds = %175
  %185 = load ptr, ptr %118, align 4
  %186 = lshr i32 %180, 2
  %187 = getelementptr i32, ptr %185, i32 %186
  store i32 1793, ptr %187, align 4
  %188 = load i32, ptr %4, align 4
  %189 = add i32 %188, 11
  %190 = and i32 %189, -8
  store i32 %190, ptr %4, align 4
  %191 = load i32, ptr %113, align 4
  %192 = icmp ult i32 %190, %191
  br i1 %192, label %194, label %193, !prof !10

193:                                              ; preds = %184
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

194:                                              ; preds = %184
  %195 = load ptr, ptr %118, align 4
  %196 = lshr exact i32 %190, 2
  %197 = getelementptr i32, ptr %195, i32 %196
  store i32 1207959552, ptr %197, align 4
  %198 = load i32, ptr %4, align 4
  %199 = add i32 %198, 4
  store i32 %199, ptr %4, align 4
  %200 = load i32, ptr %113, align 4
  %201 = icmp ult i32 %199, %200
  br i1 %201, label %203, label %202, !prof !10

202:                                              ; preds = %194
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

203:                                              ; preds = %194
  %204 = load ptr, ptr %118, align 4
  %205 = lshr i32 %199, 2
  %206 = getelementptr i32, ptr %204, i32 %205
  store i32 1793, ptr %206, align 4
  %207 = load i32, ptr %4, align 4
  %208 = add i32 %207, 4
  br label %209

209:                                              ; preds = %203, %105
  %210 = phi i32 [ %208, %203 ], [ %106, %105 ]
  %211 = add i32 %210, 7
  %212 = and i32 %211, -8
  store i32 %212, ptr %4, align 4
  %213 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %214 = load i32, ptr %213, align 4
  %215 = icmp ult i32 %212, %214
  br i1 %215, label %217, label %216, !prof !10

216:                                              ; preds = %209
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

217:                                              ; preds = %209
  %218 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %219 = load ptr, ptr %218, align 4
  %220 = lshr exact i32 %212, 2
  %221 = getelementptr i32, ptr %219, i32 %220
  store i32 268435456, ptr %221, align 4
  %222 = load i32, ptr %4, align 4
  %223 = add i32 %222, 11
  %224 = and i32 %223, -8
  store i32 %224, ptr %4, align 4
  %225 = lshr i32 %223, 3
  %226 = trunc i32 %225 to i16
  ret i16 %226
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @etnaviv_buffer_config_pta(ptr nocapture noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i16 %1 to i32
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 4
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %11 = load ptr, ptr %10, align 4
  store i32 134283371, ptr %11, align 4
  %12 = load i32, ptr %4, align 4
  %13 = add i32 %12, 4
  store i32 %13, ptr %4, align 4
  %14 = load i32, ptr %5, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %17, label %16, !prof !10

16:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

17:                                               ; preds = %9
  %18 = load ptr, ptr %10, align 4
  %19 = lshr i32 %13, 2
  %20 = getelementptr i32, ptr %18, i32 %19
  store i32 %3, ptr %20, align 4
  %21 = load i32, ptr %4, align 4
  %22 = add i32 %21, 11
  %23 = and i32 %22, -8
  store i32 %23, ptr %4, align 4
  %24 = load i32, ptr %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %27, label %26, !prof !10

26:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

27:                                               ; preds = %17
  %28 = load ptr, ptr %10, align 4
  %29 = lshr exact i32 %23, 2
  %30 = getelementptr i32, ptr %28, i32 %29
  store i32 268435456, ptr %30, align 4
  %31 = load i32, ptr %4, align 4
  %32 = add i32 %31, 11
  %33 = and i32 %32, -8
  store i32 %33, ptr %4, align 4
  %34 = lshr i32 %32, 3
  %35 = trunc i32 %34 to i16
  ret i16 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_buffer_end(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -16
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, -1
  %9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %448 [
    i32 1, label %12
    i32 0, label %11
  ]

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi i32 [ 8, %1 ], [ 87, %11 ]
  %14 = select i1 %8, i32 7, i32 17
  %15 = shl nuw nsw i32 %14, 3
  %16 = add i32 %4, %15
  %17 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, ptr %3, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 30
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %23, i32 0, i32 6
  %25 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %2, ptr noundef %24) #3
  %26 = load i32, ptr %3, align 4
  %27 = add i32 %26, %25
  %28 = add i32 %26, 7
  %29 = and i32 %28, -8
  store i32 %29, ptr %3, align 4
  %30 = load i32, ptr %17, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %33, label %32, !prof !10

32:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = lshr exact i32 %29, 2
  %37 = getelementptr i32, ptr %35, i32 %36
  store i32 134286850, ptr %37, align 4
  %38 = load i32, ptr %3, align 4
  %39 = add i32 %38, 4
  store i32 %39, ptr %3, align 4
  %40 = load i32, ptr %17, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %43, label %42, !prof !10

42:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

43:                                               ; preds = %33
  %44 = load ptr, ptr %34, align 4
  %45 = lshr i32 %39, 2
  %46 = getelementptr i32, ptr %44, i32 %45
  store i32 1793, ptr %46, align 4
  %47 = load i32, ptr %3, align 4
  %48 = add i32 %47, 11
  %49 = and i32 %48, -8
  store i32 %49, ptr %3, align 4
  %50 = load i32, ptr %17, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %53, label %52, !prof !10

52:                                               ; preds = %43
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

53:                                               ; preds = %43
  %54 = load ptr, ptr %34, align 4
  %55 = lshr exact i32 %49, 2
  %56 = getelementptr i32, ptr %54, i32 %55
  store i32 1207959552, ptr %56, align 4
  %57 = load i32, ptr %3, align 4
  %58 = add i32 %57, 4
  store i32 %58, ptr %3, align 4
  %59 = load i32, ptr %17, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %62, label %61, !prof !10

61:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

62:                                               ; preds = %53
  %63 = load ptr, ptr %34, align 4
  %64 = lshr i32 %58, 2
  %65 = getelementptr i32, ptr %63, i32 %64
  store i32 1793, ptr %65, align 4
  %66 = load i32, ptr %3, align 4
  br i1 %8, label %144, label %67

67:                                               ; preds = %62
  %68 = add i32 %66, 11
  %69 = and i32 %68, -8
  store i32 %69, ptr %3, align 4
  %70 = load i32, ptr %17, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %73, label %72, !prof !10

72:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

73:                                               ; preds = %67
  %74 = load ptr, ptr %34, align 4
  %75 = lshr exact i32 %69, 2
  %76 = getelementptr i32, ptr %74, i32 %75
  store i32 134303790, ptr %76, align 4
  %77 = load i32, ptr %3, align 4
  %78 = add i32 %77, 4
  store i32 %78, ptr %3, align 4
  %79 = load i32, ptr %17, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %82, label %81, !prof !10

81:                                               ; preds = %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

82:                                               ; preds = %73
  %83 = load ptr, ptr %34, align 4
  %84 = lshr i32 %78, 2
  %85 = getelementptr i32, ptr %83, i32 %84
  store i32 1, ptr %85, align 4
  %86 = load i32, ptr %3, align 4
  %87 = add i32 %86, 11
  %88 = and i32 %87, -8
  store i32 %88, ptr %3, align 4
  %89 = load i32, ptr %17, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %92, label %91, !prof !10

91:                                               ; preds = %82
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

92:                                               ; preds = %82
  %93 = load ptr, ptr %34, align 4
  %94 = lshr exact i32 %88, 2
  %95 = getelementptr i32, ptr %93, i32 %94
  store i32 134286850, ptr %95, align 4
  %96 = load i32, ptr %3, align 4
  %97 = add i32 %96, 4
  store i32 %97, ptr %3, align 4
  %98 = load i32, ptr %17, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %101, label %100, !prof !10

100:                                              ; preds = %92
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

101:                                              ; preds = %92
  %102 = load ptr, ptr %34, align 4
  %103 = lshr i32 %97, 2
  %104 = getelementptr i32, ptr %102, i32 %103
  store i32 4097, ptr %104, align 4
  %105 = load i32, ptr %3, align 4
  %106 = add i32 %105, 11
  %107 = and i32 %106, -8
  store i32 %107, ptr %3, align 4
  %108 = load i32, ptr %17, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %111, label %110, !prof !10

110:                                              ; preds = %101
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

111:                                              ; preds = %101
  %112 = load ptr, ptr %34, align 4
  %113 = lshr exact i32 %107, 2
  %114 = getelementptr i32, ptr %112, i32 %113
  store i32 1207959552, ptr %114, align 4
  %115 = load i32, ptr %3, align 4
  %116 = add i32 %115, 4
  store i32 %116, ptr %3, align 4
  %117 = load i32, ptr %17, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %120, label %119, !prof !10

119:                                              ; preds = %111
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

120:                                              ; preds = %111
  %121 = load ptr, ptr %34, align 4
  %122 = lshr i32 %116, 2
  %123 = getelementptr i32, ptr %121, i32 %122
  store i32 4097, ptr %123, align 4
  %124 = load i32, ptr %3, align 4
  %125 = add i32 %124, 11
  %126 = and i32 %125, -8
  store i32 %126, ptr %3, align 4
  %127 = load i32, ptr %17, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %130, label %129, !prof !10

129:                                              ; preds = %120
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

130:                                              ; preds = %120
  %131 = load ptr, ptr %34, align 4
  %132 = lshr exact i32 %126, 2
  %133 = getelementptr i32, ptr %131, i32 %132
  store i32 134303790, ptr %133, align 4
  %134 = load i32, ptr %3, align 4
  %135 = add i32 %134, 4
  store i32 %135, ptr %3, align 4
  %136 = load i32, ptr %17, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %139, label %138, !prof !10

138:                                              ; preds = %130
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

139:                                              ; preds = %130
  %140 = load ptr, ptr %34, align 4
  %141 = lshr i32 %135, 2
  %142 = getelementptr i32, ptr %140, i32 %141
  store i32 0, ptr %142, align 4
  %143 = load i32, ptr %3, align 4
  br label %144

144:                                              ; preds = %139, %62
  %145 = phi i32 [ %143, %139 ], [ %66, %62 ]
  %146 = add i32 %145, 11
  %147 = and i32 %146, -8
  store i32 %147, ptr %3, align 4
  %148 = load i32, ptr %17, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %151, label %150, !prof !10

150:                                              ; preds = %144
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

151:                                              ; preds = %144
  %152 = load ptr, ptr %34, align 4
  %153 = lshr exact i32 %147, 2
  %154 = getelementptr i32, ptr %152, i32 %153
  store i32 134286851, ptr %154, align 4
  %155 = load i32, ptr %3, align 4
  %156 = add i32 %155, 4
  store i32 %156, ptr %3, align 4
  %157 = load i32, ptr %17, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %160, label %159, !prof !10

159:                                              ; preds = %151
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

160:                                              ; preds = %151
  %161 = load ptr, ptr %34, align 4
  %162 = lshr i32 %156, 2
  %163 = getelementptr i32, ptr %161, i32 %162
  store i32 %13, ptr %163, align 4
  %164 = load i32, ptr %3, align 4
  %165 = load i32, ptr %9, align 8
  %166 = icmp eq i32 %165, 0
  %167 = add i32 %164, 11
  %168 = and i32 %167, -8
  store i32 %168, ptr %3, align 4
  %169 = load i32, ptr %17, align 4
  %170 = icmp ult i32 %168, %169
  br i1 %166, label %171, label %314

171:                                              ; preds = %160
  br i1 %8, label %265, label %172

172:                                              ; preds = %171
  br i1 %170, label %174, label %173, !prof !10

173:                                              ; preds = %172
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

174:                                              ; preds = %172
  %175 = load ptr, ptr %34, align 4
  %176 = lshr exact i32 %168, 2
  %177 = getelementptr i32, ptr %175, i32 %176
  store i32 134303790, ptr %177, align 4
  %178 = load i32, ptr %3, align 4
  %179 = add i32 %178, 4
  store i32 %179, ptr %3, align 4
  %180 = load i32, ptr %17, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %183, label %182, !prof !10

182:                                              ; preds = %174
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

183:                                              ; preds = %174
  %184 = load ptr, ptr %34, align 4
  %185 = lshr i32 %179, 2
  %186 = getelementptr i32, ptr %184, i32 %185
  store i32 1, ptr %186, align 4
  %187 = load i32, ptr %3, align 4
  %188 = add i32 %187, 11
  %189 = and i32 %188, -8
  store i32 %189, ptr %3, align 4
  %190 = load i32, ptr %17, align 4
  %191 = icmp ult i32 %189, %190
  br i1 %191, label %193, label %192, !prof !10

192:                                              ; preds = %183
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

193:                                              ; preds = %183
  %194 = load ptr, ptr %34, align 4
  %195 = lshr exact i32 %189, 2
  %196 = getelementptr i32, ptr %194, i32 %195
  store i32 134303787, ptr %196, align 4
  %197 = load i32, ptr %3, align 4
  %198 = add i32 %197, 4
  store i32 %198, ptr %3, align 4
  %199 = load i32, ptr %17, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %202, label %201, !prof !10

201:                                              ; preds = %193
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

202:                                              ; preds = %193
  %203 = load ptr, ptr %34, align 4
  %204 = lshr i32 %198, 2
  %205 = getelementptr i32, ptr %203, i32 %204
  store i32 1, ptr %205, align 4
  %206 = load i32, ptr %3, align 4
  %207 = add i32 %206, 11
  %208 = and i32 %207, -8
  store i32 %208, ptr %3, align 4
  %209 = load i32, ptr %17, align 4
  %210 = icmp ult i32 %208, %209
  br i1 %210, label %212, label %211, !prof !10

211:                                              ; preds = %202
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

212:                                              ; preds = %202
  %213 = load ptr, ptr %34, align 4
  %214 = lshr exact i32 %208, 2
  %215 = getelementptr i32, ptr %213, i32 %214
  store i32 134303790, ptr %215, align 4
  %216 = load i32, ptr %3, align 4
  %217 = add i32 %216, 4
  store i32 %217, ptr %3, align 4
  %218 = load i32, ptr %17, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %221, label %220, !prof !10

220:                                              ; preds = %212
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

221:                                              ; preds = %212
  %222 = load ptr, ptr %34, align 4
  %223 = lshr i32 %217, 2
  %224 = getelementptr i32, ptr %222, i32 %223
  store i32 0, ptr %224, align 4
  %225 = load i32, ptr %3, align 4
  %226 = add i32 %225, 11
  %227 = and i32 %226, -8
  store i32 %227, ptr %3, align 4
  %228 = load i32, ptr %17, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %231, label %230, !prof !10

230:                                              ; preds = %221
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

231:                                              ; preds = %221
  %232 = load ptr, ptr %34, align 4
  %233 = lshr exact i32 %227, 2
  %234 = getelementptr i32, ptr %232, i32 %233
  store i32 134286850, ptr %234, align 4
  %235 = load i32, ptr %3, align 4
  %236 = add i32 %235, 4
  store i32 %236, ptr %3, align 4
  %237 = load i32, ptr %17, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %240, label %239, !prof !10

239:                                              ; preds = %231
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

240:                                              ; preds = %231
  %241 = load ptr, ptr %34, align 4
  %242 = lshr i32 %236, 2
  %243 = getelementptr i32, ptr %241, i32 %242
  store i32 1793, ptr %243, align 4
  %244 = load i32, ptr %3, align 4
  %245 = add i32 %244, 11
  %246 = and i32 %245, -8
  store i32 %246, ptr %3, align 4
  %247 = load i32, ptr %17, align 4
  %248 = icmp ult i32 %246, %247
  br i1 %248, label %250, label %249, !prof !10

249:                                              ; preds = %240
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

250:                                              ; preds = %240
  %251 = load ptr, ptr %34, align 4
  %252 = lshr exact i32 %246, 2
  %253 = getelementptr i32, ptr %251, i32 %252
  store i32 1207959552, ptr %253, align 4
  %254 = load i32, ptr %3, align 4
  %255 = add i32 %254, 4
  store i32 %255, ptr %3, align 4
  %256 = load i32, ptr %17, align 4
  %257 = icmp ult i32 %255, %256
  br i1 %257, label %259, label %258, !prof !10

258:                                              ; preds = %250
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

259:                                              ; preds = %250
  %260 = load ptr, ptr %34, align 4
  %261 = lshr i32 %255, 2
  %262 = getelementptr i32, ptr %260, i32 %261
  store i32 1793, ptr %262, align 4
  %263 = load i32, ptr %3, align 4
  %264 = add i32 %263, 4
  br label %350

265:                                              ; preds = %171
  br i1 %170, label %267, label %266, !prof !10

266:                                              ; preds = %265
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

267:                                              ; preds = %265
  %268 = load ptr, ptr %34, align 4
  %269 = lshr exact i32 %168, 2
  %270 = getelementptr i32, ptr %268, i32 %269
  store i32 134284692, ptr %270, align 4
  %271 = load i32, ptr %3, align 4
  %272 = add i32 %271, 4
  store i32 %272, ptr %3, align 4
  %273 = load i32, ptr %17, align 4
  %274 = icmp ult i32 %272, %273
  br i1 %274, label %276, label %275, !prof !10

275:                                              ; preds = %267
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

276:                                              ; preds = %267
  %277 = load ptr, ptr %34, align 4
  %278 = lshr i32 %272, 2
  %279 = getelementptr i32, ptr %277, i32 %278
  store i32 1, ptr %279, align 4
  %280 = load i32, ptr %3, align 4
  %281 = add i32 %280, 11
  %282 = and i32 %281, -8
  store i32 %282, ptr %3, align 4
  %283 = load i32, ptr %17, align 4
  %284 = icmp ult i32 %282, %283
  br i1 %284, label %286, label %285, !prof !10

285:                                              ; preds = %276
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

286:                                              ; preds = %276
  %287 = load ptr, ptr %34, align 4
  %288 = lshr exact i32 %282, 2
  %289 = getelementptr i32, ptr %287, i32 %288
  store i32 134286850, ptr %289, align 4
  %290 = load i32, ptr %3, align 4
  %291 = add i32 %290, 4
  store i32 %291, ptr %3, align 4
  %292 = load i32, ptr %17, align 4
  %293 = icmp ult i32 %291, %292
  br i1 %293, label %295, label %294, !prof !10

294:                                              ; preds = %286
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

295:                                              ; preds = %286
  %296 = load ptr, ptr %34, align 4
  %297 = lshr i32 %291, 2
  %298 = getelementptr i32, ptr %296, i32 %297
  store i32 1793, ptr %298, align 4
  %299 = load i32, ptr %3, align 4
  %300 = add i32 %299, 11
  %301 = and i32 %300, -8
  store i32 %301, ptr %3, align 4
  %302 = load i32, ptr %17, align 4
  %303 = icmp ult i32 %301, %302
  br i1 %303, label %305, label %304, !prof !10

304:                                              ; preds = %295
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

305:                                              ; preds = %295
  %306 = load ptr, ptr %34, align 4
  %307 = lshr exact i32 %301, 2
  %308 = getelementptr i32, ptr %306, i32 %307
  store i32 1207959552, ptr %308, align 4
  %309 = load i32, ptr %3, align 4
  %310 = add i32 %309, 4
  store i32 %310, ptr %3, align 4
  %311 = load i32, ptr %17, align 4
  %312 = icmp ult i32 %310, %311
  br i1 %312, label %423, label %313, !prof !10

313:                                              ; preds = %305
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

314:                                              ; preds = %160
  br i1 %170, label %316, label %315, !prof !10

315:                                              ; preds = %314
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

316:                                              ; preds = %314
  %317 = load ptr, ptr %34, align 4
  %318 = lshr exact i32 %168, 2
  %319 = getelementptr i32, ptr %317, i32 %318
  store i32 134286850, ptr %319, align 4
  %320 = load i32, ptr %3, align 4
  %321 = add i32 %320, 4
  store i32 %321, ptr %3, align 4
  %322 = load i32, ptr %17, align 4
  %323 = icmp ult i32 %321, %322
  br i1 %323, label %325, label %324, !prof !10

324:                                              ; preds = %316
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

325:                                              ; preds = %316
  %326 = load ptr, ptr %34, align 4
  %327 = lshr i32 %321, 2
  %328 = getelementptr i32, ptr %326, i32 %327
  store i32 1793, ptr %328, align 4
  %329 = load i32, ptr %3, align 4
  %330 = add i32 %329, 11
  %331 = and i32 %330, -8
  store i32 %331, ptr %3, align 4
  %332 = load i32, ptr %17, align 4
  %333 = icmp ult i32 %331, %332
  br i1 %333, label %335, label %334, !prof !10

334:                                              ; preds = %325
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

335:                                              ; preds = %325
  %336 = load ptr, ptr %34, align 4
  %337 = lshr exact i32 %331, 2
  %338 = getelementptr i32, ptr %336, i32 %337
  store i32 1207959552, ptr %338, align 4
  %339 = load i32, ptr %3, align 4
  %340 = add i32 %339, 4
  store i32 %340, ptr %3, align 4
  %341 = load i32, ptr %17, align 4
  %342 = icmp ult i32 %340, %341
  br i1 %342, label %344, label %343, !prof !10

343:                                              ; preds = %335
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

344:                                              ; preds = %335
  %345 = load ptr, ptr %34, align 4
  %346 = lshr i32 %340, 2
  %347 = getelementptr i32, ptr %345, i32 %346
  store i32 1793, ptr %347, align 4
  %348 = load i32, ptr %3, align 4
  %349 = add i32 %348, 4
  br i1 %8, label %431, label %350

350:                                              ; preds = %344, %259
  %351 = phi i32 [ %264, %259 ], [ %349, %344 ]
  %352 = add i32 %351, 7
  %353 = and i32 %352, -8
  store i32 %353, ptr %3, align 4
  %354 = load i32, ptr %17, align 4
  %355 = icmp ult i32 %353, %354
  br i1 %355, label %357, label %356, !prof !10

356:                                              ; preds = %350
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

357:                                              ; preds = %350
  %358 = load ptr, ptr %34, align 4
  %359 = lshr exact i32 %353, 2
  %360 = getelementptr i32, ptr %358, i32 %359
  store i32 134303790, ptr %360, align 4
  %361 = load i32, ptr %3, align 4
  %362 = add i32 %361, 4
  store i32 %362, ptr %3, align 4
  %363 = load i32, ptr %17, align 4
  %364 = icmp ult i32 %362, %363
  br i1 %364, label %366, label %365, !prof !10

365:                                              ; preds = %357
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

366:                                              ; preds = %357
  %367 = load ptr, ptr %34, align 4
  %368 = lshr i32 %362, 2
  %369 = getelementptr i32, ptr %367, i32 %368
  store i32 1, ptr %369, align 4
  %370 = load i32, ptr %3, align 4
  %371 = add i32 %370, 11
  %372 = and i32 %371, -8
  store i32 %372, ptr %3, align 4
  %373 = load i32, ptr %17, align 4
  %374 = icmp ult i32 %372, %373
  br i1 %374, label %376, label %375, !prof !10

375:                                              ; preds = %366
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

376:                                              ; preds = %366
  %377 = load ptr, ptr %34, align 4
  %378 = lshr exact i32 %372, 2
  %379 = getelementptr i32, ptr %377, i32 %378
  store i32 134286850, ptr %379, align 4
  %380 = load i32, ptr %3, align 4
  %381 = add i32 %380, 4
  store i32 %381, ptr %3, align 4
  %382 = load i32, ptr %17, align 4
  %383 = icmp ult i32 %381, %382
  br i1 %383, label %385, label %384, !prof !10

384:                                              ; preds = %376
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

385:                                              ; preds = %376
  %386 = load ptr, ptr %34, align 4
  %387 = lshr i32 %381, 2
  %388 = getelementptr i32, ptr %386, i32 %387
  store i32 4097, ptr %388, align 4
  %389 = load i32, ptr %3, align 4
  %390 = add i32 %389, 11
  %391 = and i32 %390, -8
  store i32 %391, ptr %3, align 4
  %392 = load i32, ptr %17, align 4
  %393 = icmp ult i32 %391, %392
  br i1 %393, label %395, label %394, !prof !10

394:                                              ; preds = %385
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

395:                                              ; preds = %385
  %396 = load ptr, ptr %34, align 4
  %397 = lshr exact i32 %391, 2
  %398 = getelementptr i32, ptr %396, i32 %397
  store i32 1207959552, ptr %398, align 4
  %399 = load i32, ptr %3, align 4
  %400 = add i32 %399, 4
  store i32 %400, ptr %3, align 4
  %401 = load i32, ptr %17, align 4
  %402 = icmp ult i32 %400, %401
  br i1 %402, label %404, label %403, !prof !10

403:                                              ; preds = %395
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

404:                                              ; preds = %395
  %405 = load ptr, ptr %34, align 4
  %406 = lshr i32 %400, 2
  %407 = getelementptr i32, ptr %405, i32 %406
  store i32 4097, ptr %407, align 4
  %408 = load i32, ptr %3, align 4
  %409 = add i32 %408, 11
  %410 = and i32 %409, -8
  store i32 %410, ptr %3, align 4
  %411 = load i32, ptr %17, align 4
  %412 = icmp ult i32 %410, %411
  br i1 %412, label %414, label %413, !prof !10

413:                                              ; preds = %404
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

414:                                              ; preds = %404
  %415 = load ptr, ptr %34, align 4
  %416 = lshr exact i32 %410, 2
  %417 = getelementptr i32, ptr %415, i32 %416
  store i32 134303790, ptr %417, align 4
  %418 = load i32, ptr %3, align 4
  %419 = add i32 %418, 4
  store i32 %419, ptr %3, align 4
  %420 = load i32, ptr %17, align 4
  %421 = icmp ult i32 %419, %420
  br i1 %421, label %423, label %422, !prof !10

422:                                              ; preds = %414
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

423:                                              ; preds = %414, %305
  %424 = phi i32 [ %310, %305 ], [ %419, %414 ]
  %425 = phi i32 [ 1793, %305 ], [ 0, %414 ]
  %426 = load ptr, ptr %34, align 4
  %427 = lshr i32 %424, 2
  %428 = getelementptr i32, ptr %426, i32 %427
  store i32 %425, ptr %428, align 4
  %429 = load i32, ptr %3, align 4
  %430 = add i32 %429, 4
  br label %431

431:                                              ; preds = %423, %344
  %432 = phi i32 [ %349, %344 ], [ %430, %423 ]
  %433 = add i32 %432, 7
  %434 = and i32 %433, -8
  store i32 %434, ptr %3, align 4
  %435 = load i32, ptr %17, align 4
  %436 = icmp ult i32 %434, %435
  br i1 %436, label %438, label %437, !prof !10

437:                                              ; preds = %431
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

438:                                              ; preds = %431
  %439 = load ptr, ptr %34, align 4
  %440 = lshr exact i32 %434, 2
  %441 = getelementptr i32, ptr %439, i32 %440
  store i32 268435456, ptr %441, align 4
  %442 = load i32, ptr %3, align 4
  %443 = add i32 %442, 4
  store i32 %443, ptr %3, align 4
  %444 = or i32 %14, 1073741824
  %445 = load ptr, ptr %34, align 4
  %446 = getelementptr i8, ptr %445, i32 %5
  %447 = getelementptr i32, ptr %446, i32 1
  store i32 %27, ptr %447, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  store i32 %444, ptr %446, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %453

448:                                              ; preds = %1
  %449 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %450 = load ptr, ptr %449, align 4
  %451 = getelementptr i8, ptr %450, i32 %5
  %452 = getelementptr i32, ptr %451, i32 1
  store i32 0, ptr %452, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  store i32 268435456, ptr %451, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  br label %453

453:                                              ; preds = %448, %438
  tail call void @arm_heavy_mb() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_sync_point_queue(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10
  %4 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 32
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, ptr %4, align 4
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 30
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %13, i32 0, i32 6
  %15 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %3, ptr noundef %14) #3
  %16 = load i32, ptr %4, align 4
  %17 = and i32 %1, 31
  %18 = or i32 %17, 64
  %19 = add i32 %16, 7
  %20 = and i32 %19, -8
  store i32 %20, ptr %4, align 4
  %21 = load i32, ptr %7, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %24, label %23, !prof !10

23:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = lshr exact i32 %20, 2
  %28 = getelementptr i32, ptr %26, i32 %27
  store i32 134286849, ptr %28, align 4
  %29 = load i32, ptr %4, align 4
  %30 = add i32 %29, 4
  store i32 %30, ptr %4, align 4
  %31 = load i32, ptr %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %34, label %33, !prof !10

33:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

34:                                               ; preds = %24
  %35 = load ptr, ptr %25, align 4
  %36 = lshr i32 %30, 2
  %37 = getelementptr i32, ptr %35, i32 %36
  store i32 %18, ptr %37, align 4
  %38 = load i32, ptr %4, align 4
  %39 = add i32 %38, 11
  %40 = and i32 %39, -8
  store i32 %40, ptr %4, align 4
  %41 = load i32, ptr %7, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %44, label %43, !prof !10

43:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

44:                                               ; preds = %34
  %45 = load ptr, ptr %25, align 4
  %46 = lshr exact i32 %40, 2
  %47 = getelementptr i32, ptr %45, i32 %46
  store i32 268435456, ptr %47, align 4
  %48 = load i32, ptr %4, align 4
  %49 = add i32 %48, 11
  %50 = and i32 %49, -8
  store i32 %50, ptr %4, align 4
  %51 = load i32, ptr %7, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %54, label %53, !prof !10

53:                                               ; preds = %44
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

54:                                               ; preds = %44
  %55 = load ptr, ptr %25, align 4
  %56 = lshr exact i32 %50, 2
  %57 = getelementptr i32, ptr %55, i32 %56
  store i32 939524296, ptr %57, align 4
  %58 = load i32, ptr %4, align 4
  %59 = add i32 %58, 4
  store i32 %59, ptr %4, align 4
  %60 = load ptr, ptr %12, align 8
  %61 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %60, i32 0, i32 6
  %62 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %3, ptr noundef %61) #3
  %63 = load i32, ptr %4, align 4
  %64 = add i32 %63, 7
  %65 = and i32 %64, -8
  store i32 %65, ptr %4, align 4
  %66 = load i32, ptr %7, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %69, label %68, !prof !10

68:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

69:                                               ; preds = %54
  %70 = load ptr, ptr %25, align 4
  %71 = lshr exact i32 %65, 2
  %72 = getelementptr i32, ptr %70, i32 %71
  store i32 1073741826, ptr %72, align 4
  %73 = load i32, ptr %4, align 4
  %74 = add i32 %73, 4
  store i32 %74, ptr %4, align 4
  %75 = load i32, ptr %7, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %78, label %77, !prof !10

77:                                               ; preds = %69
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

78:                                               ; preds = %69
  %79 = add i32 %62, -4
  %80 = add i32 %79, %63
  %81 = add i32 %16, %15
  %82 = add i32 %5, -16
  %83 = load ptr, ptr %25, align 4
  %84 = lshr i32 %74, 2
  %85 = getelementptr i32, ptr %83, i32 %84
  store i32 %80, ptr %85, align 4
  %86 = load i32, ptr %4, align 4
  %87 = add i32 %86, 4
  store i32 %87, ptr %4, align 4
  %88 = load ptr, ptr %25, align 4
  %89 = getelementptr i8, ptr %88, i32 %82
  %90 = getelementptr i32, ptr %89, i32 1
  store i32 %81, ptr %90, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  store i32 1073741828, ptr %89, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_buffer_queue(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -16
  %10 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 11
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, %1
  %13 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 30
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, %2
  %16 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %14, i32 0, i32 5
  %17 = load volatile i32, ptr %16, align 8
  br i1 %15, label %18, label %22

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 31
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, %17
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i1 [ true, %5 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, -1
  %27 = load i32, ptr @__drm_debug, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %14, i32 0, i32 6
  %38 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %6, ptr noundef %37) #3
  %39 = add i32 %32, -320
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.7, ptr noundef %34, i32 noundef %38, i32 noundef %39) #4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %34, i32 noundef 320, i1 noundef zeroext false) #3
  %40 = load ptr, ptr %13, align 8
  br label %41

41:                                               ; preds = %30, %22
  %42 = phi ptr [ %40, %30 ], [ %14, %22 ]
  %43 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %42, i32 0, i32 6
  %44 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %4, ptr noundef %43) #3
  %45 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %4, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 3
  %48 = xor i1 %12, true
  %49 = select i1 %23, i1 true, i1 %48
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load i32, ptr %7, align 4
  br label %342

52:                                               ; preds = %41
  br i1 %23, label %53, label %61

53:                                               ; preds = %52
  %54 = load ptr, ptr %13, align 8
  %55 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 2, i32 4
  br label %61

61:                                               ; preds = %53, %52
  %62 = phi i32 [ 1, %52 ], [ %60, %53 ]
  %63 = add nuw nsw i32 %62, 4
  %64 = select i1 %12, i32 %62, i32 %63
  br i1 %15, label %71, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 1
  %69 = zext i1 %68 to i32
  %70 = add nuw nsw i32 %64, %69
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i32 [ %64, %61 ], [ %70, %65 ]
  %73 = load i32, ptr %7, align 4
  %74 = shl nuw nsw i32 %72, 3
  %75 = add i32 %73, %74
  %76 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp ugt i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 0, ptr %7, align 4
  br label %80

80:                                               ; preds = %79, %71
  %81 = load ptr, ptr %13, align 8
  %82 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %81, i32 0, i32 6
  %83 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %6, ptr noundef %82) #3
  %84 = load i32, ptr %7, align 4
  %85 = add i32 %84, %83
  br i1 %15, label %98, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %13, align 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #3, !srcloc !13
  %88 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #3, !srcloc !14
  %89 = extractvalue { i32, i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91, !prof !8

91:                                               ; preds = %86
  %92 = add i32 %89, 1
  %93 = or i32 %92, %89
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %97, label %95, !prof !10

95:                                               ; preds = %91, %86
  %96 = phi i32 [ 2, %86 ], [ 1, %91 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %96) #3
  br label %97

97:                                               ; preds = %95, %91
  store ptr %2, ptr %13, align 8
  tail call void @etnaviv_iommu_context_put(ptr noundef %87) #3
  br label %98

98:                                               ; preds = %97, %80
  br i1 %23, label %99, label %227

99:                                               ; preds = %98
  %100 = load ptr, ptr %13, align 8
  %101 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %99
  %107 = load i32, ptr %7, align 4
  %108 = add i32 %107, 7
  %109 = and i32 %108, -8
  store i32 %109, ptr %7, align 4
  %110 = load i32, ptr %76, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %113, label %112, !prof !10

112:                                              ; preds = %106
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = lshr exact i32 %109, 2
  %117 = getelementptr i32, ptr %115, i32 %116
  store i32 134286852, ptr %117, align 4
  %118 = load i32, ptr %7, align 4
  %119 = add i32 %118, 4
  store i32 %119, ptr %7, align 4
  %120 = load i32, ptr %76, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %217, label %122, !prof !10

122:                                              ; preds = %113
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

123:                                              ; preds = %99
  br i1 %15, label %153, label %124

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %153

128:                                              ; preds = %124
  %129 = tail call zeroext i16 @etnaviv_iommuv2_get_pta_id(ptr noundef %100) #3
  %130 = zext i16 %129 to i32
  %131 = load i32, ptr %7, align 4
  %132 = add i32 %131, 7
  %133 = and i32 %132, -8
  store i32 %133, ptr %7, align 4
  %134 = load i32, ptr %76, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %137, label %136, !prof !10

136:                                              ; preds = %128
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %139 = load ptr, ptr %138, align 4
  %140 = lshr exact i32 %133, 2
  %141 = getelementptr i32, ptr %139, i32 %140
  store i32 134283371, ptr %141, align 4
  %142 = load i32, ptr %7, align 4
  %143 = add i32 %142, 4
  store i32 %143, ptr %7, align 4
  %144 = load i32, ptr %76, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %147, label %146, !prof !10

146:                                              ; preds = %137
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

147:                                              ; preds = %137
  %148 = load ptr, ptr %138, align 4
  %149 = lshr i32 %143, 2
  %150 = getelementptr i32, ptr %148, i32 %149
  store i32 %130, ptr %150, align 4
  %151 = load i32, ptr %7, align 4
  %152 = add i32 %151, 4
  store i32 %152, ptr %7, align 4
  br label %153

153:                                              ; preds = %147, %124, %123
  %154 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 5
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load ptr, ptr %13, align 8
  %159 = tail call i32 @etnaviv_iommuv2_get_mtlb_addr(ptr noundef %158) #3
  %160 = or i32 %159, 24
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i32 [ %160, %157 ], [ 24, %153 ]
  %163 = load i32, ptr %7, align 4
  %164 = add i32 %163, 7
  %165 = and i32 %164, -8
  store i32 %165, ptr %7, align 4
  %166 = load i32, ptr %76, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %169, label %168, !prof !10

168:                                              ; preds = %161
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

169:                                              ; preds = %161
  %170 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %171 = load ptr, ptr %170, align 4
  %172 = lshr exact i32 %165, 2
  %173 = getelementptr i32, ptr %171, i32 %172
  store i32 134283361, ptr %173, align 4
  %174 = load i32, ptr %7, align 4
  %175 = add i32 %174, 4
  store i32 %175, ptr %7, align 4
  %176 = load i32, ptr %76, align 4
  %177 = icmp ult i32 %175, %176
  br i1 %177, label %179, label %178, !prof !10

178:                                              ; preds = %169
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

179:                                              ; preds = %169
  %180 = load ptr, ptr %170, align 4
  %181 = lshr i32 %175, 2
  %182 = getelementptr i32, ptr %180, i32 %181
  store i32 %162, ptr %182, align 4
  %183 = load i32, ptr %7, align 4
  %184 = add i32 %183, 11
  %185 = and i32 %184, -8
  store i32 %185, ptr %7, align 4
  %186 = load i32, ptr %76, align 4
  %187 = icmp ult i32 %185, %186
  br i1 %187, label %189, label %188, !prof !10

188:                                              ; preds = %179
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

189:                                              ; preds = %179
  %190 = load ptr, ptr %170, align 4
  %191 = lshr exact i32 %185, 2
  %192 = getelementptr i32, ptr %190, i32 %191
  store i32 134286850, ptr %192, align 4
  %193 = load i32, ptr %7, align 4
  %194 = add i32 %193, 4
  store i32 %194, ptr %7, align 4
  %195 = load i32, ptr %76, align 4
  %196 = icmp ult i32 %194, %195
  br i1 %196, label %198, label %197, !prof !10

197:                                              ; preds = %189
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

198:                                              ; preds = %189
  %199 = load ptr, ptr %170, align 4
  %200 = lshr i32 %194, 2
  %201 = getelementptr i32, ptr %199, i32 %200
  store i32 1793, ptr %201, align 4
  %202 = load i32, ptr %7, align 4
  %203 = add i32 %202, 11
  %204 = and i32 %203, -8
  store i32 %204, ptr %7, align 4
  %205 = load i32, ptr %76, align 4
  %206 = icmp ult i32 %204, %205
  br i1 %206, label %208, label %207, !prof !10

207:                                              ; preds = %198
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

208:                                              ; preds = %198
  %209 = load ptr, ptr %170, align 4
  %210 = lshr exact i32 %204, 2
  %211 = getelementptr i32, ptr %209, i32 %210
  store i32 1207959552, ptr %211, align 4
  %212 = load i32, ptr %7, align 4
  %213 = add i32 %212, 4
  store i32 %213, ptr %7, align 4
  %214 = load i32, ptr %76, align 4
  %215 = icmp ult i32 %213, %214
  br i1 %215, label %217, label %216, !prof !10

216:                                              ; preds = %208
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

217:                                              ; preds = %208, %113
  %218 = phi ptr [ %114, %113 ], [ %170, %208 ]
  %219 = phi i32 [ %119, %113 ], [ %213, %208 ]
  %220 = phi i32 [ 31, %113 ], [ 1793, %208 ]
  %221 = load ptr, ptr %218, align 4
  %222 = lshr i32 %219, 2
  %223 = getelementptr i32, ptr %221, i32 %222
  store i32 %220, ptr %223, align 4
  %224 = load i32, ptr %7, align 4
  %225 = add i32 %224, 4
  store i32 %225, ptr %7, align 4
  %226 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 31
  store i32 %17, ptr %226, align 4
  br label %227

227:                                              ; preds = %217, %98
  br i1 %12, label %314, label %228

228:                                              ; preds = %227
  %229 = load i32, ptr %10, align 8
  %230 = icmp eq i32 %229, 0
  %231 = select i1 %230, i32 3, i32 0
  %232 = icmp eq i32 %229, 1
  %233 = select i1 %232, i32 8, i32 %231
  %234 = load i32, ptr %7, align 4
  %235 = add i32 %234, 7
  %236 = and i32 %235, -8
  store i32 %236, ptr %7, align 4
  %237 = load i32, ptr %76, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %240, label %239, !prof !10

239:                                              ; preds = %228
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

240:                                              ; preds = %228
  %241 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %242 = load ptr, ptr %241, align 4
  %243 = lshr exact i32 %236, 2
  %244 = getelementptr i32, ptr %242, i32 %243
  store i32 134286851, ptr %244, align 4
  %245 = load i32, ptr %7, align 4
  %246 = add i32 %245, 4
  store i32 %246, ptr %7, align 4
  %247 = load i32, ptr %76, align 4
  %248 = icmp ult i32 %246, %247
  br i1 %248, label %250, label %249, !prof !10

249:                                              ; preds = %240
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

250:                                              ; preds = %240
  %251 = load ptr, ptr %241, align 4
  %252 = lshr i32 %246, 2
  %253 = getelementptr i32, ptr %251, i32 %252
  store i32 %233, ptr %253, align 4
  %254 = load i32, ptr %7, align 4
  %255 = add i32 %254, 11
  %256 = and i32 %255, -8
  store i32 %256, ptr %7, align 4
  %257 = load i32, ptr %76, align 4
  %258 = icmp ult i32 %256, %257
  br i1 %258, label %260, label %259, !prof !10

259:                                              ; preds = %250
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

260:                                              ; preds = %250
  %261 = load ptr, ptr %241, align 4
  %262 = lshr exact i32 %256, 2
  %263 = getelementptr i32, ptr %261, i32 %262
  store i32 134286850, ptr %263, align 4
  %264 = load i32, ptr %7, align 4
  %265 = add i32 %264, 4
  store i32 %265, ptr %7, align 4
  %266 = load i32, ptr %76, align 4
  %267 = icmp ult i32 %265, %266
  br i1 %267, label %269, label %268, !prof !10

268:                                              ; preds = %260
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

269:                                              ; preds = %260
  %270 = load ptr, ptr %241, align 4
  %271 = lshr i32 %265, 2
  %272 = getelementptr i32, ptr %270, i32 %271
  store i32 1793, ptr %272, align 4
  %273 = load i32, ptr %7, align 4
  %274 = add i32 %273, 11
  %275 = and i32 %274, -8
  store i32 %275, ptr %7, align 4
  %276 = load i32, ptr %76, align 4
  %277 = icmp ult i32 %275, %276
  br i1 %277, label %279, label %278, !prof !10

278:                                              ; preds = %269
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

279:                                              ; preds = %269
  %280 = load ptr, ptr %241, align 4
  %281 = lshr exact i32 %275, 2
  %282 = getelementptr i32, ptr %280, i32 %281
  store i32 1207959552, ptr %282, align 4
  %283 = load i32, ptr %7, align 4
  %284 = add i32 %283, 4
  store i32 %284, ptr %7, align 4
  %285 = load i32, ptr %76, align 4
  %286 = icmp ult i32 %284, %285
  br i1 %286, label %288, label %287, !prof !10

287:                                              ; preds = %279
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

288:                                              ; preds = %279
  %289 = load ptr, ptr %241, align 4
  %290 = lshr i32 %284, 2
  %291 = getelementptr i32, ptr %289, i32 %290
  store i32 1793, ptr %291, align 4
  %292 = load i32, ptr %7, align 4
  %293 = add i32 %292, 11
  %294 = and i32 %293, -8
  store i32 %294, ptr %7, align 4
  %295 = load i32, ptr %76, align 4
  %296 = icmp ult i32 %294, %295
  br i1 %296, label %298, label %297, !prof !10

297:                                              ; preds = %288
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

298:                                              ; preds = %288
  %299 = load ptr, ptr %241, align 4
  %300 = lshr exact i32 %294, 2
  %301 = getelementptr i32, ptr %299, i32 %300
  store i32 134286848, ptr %301, align 4
  %302 = load i32, ptr %7, align 4
  %303 = add i32 %302, 4
  store i32 %303, ptr %7, align 4
  %304 = load i32, ptr %76, align 4
  %305 = icmp ult i32 %303, %304
  br i1 %305, label %307, label %306, !prof !10

306:                                              ; preds = %298
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

307:                                              ; preds = %298
  %308 = and i32 %1, 1
  %309 = load ptr, ptr %241, align 4
  %310 = lshr i32 %303, 2
  %311 = getelementptr i32, ptr %309, i32 %310
  store i32 %308, ptr %311, align 4
  %312 = load i32, ptr %7, align 4
  %313 = add i32 %312, 4
  store i32 %313, ptr %7, align 4
  store i32 %1, ptr %10, align 8
  br label %314

314:                                              ; preds = %307, %227
  %315 = load ptr, ptr %13, align 8
  %316 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %315, i32 0, i32 6
  %317 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %4, ptr noundef %316) #3
  %318 = load i32, ptr %7, align 4
  %319 = add i32 %318, 7
  %320 = and i32 %319, -8
  store i32 %320, ptr %7, align 4
  %321 = load i32, ptr %76, align 4
  %322 = icmp ult i32 %320, %321
  br i1 %322, label %324, label %323, !prof !10

323:                                              ; preds = %314
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

324:                                              ; preds = %314
  %325 = and i32 %47, 65535
  %326 = or i32 %325, 1073741824
  %327 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %328 = load ptr, ptr %327, align 4
  %329 = lshr exact i32 %320, 2
  %330 = getelementptr i32, ptr %328, i32 %329
  store i32 %326, ptr %330, align 4
  %331 = load i32, ptr %7, align 4
  %332 = add i32 %331, 4
  store i32 %332, ptr %7, align 4
  %333 = load i32, ptr %76, align 4
  %334 = icmp ult i32 %332, %333
  br i1 %334, label %336, label %335, !prof !10

335:                                              ; preds = %324
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

336:                                              ; preds = %324
  %337 = load ptr, ptr %327, align 4
  %338 = lshr i32 %332, 2
  %339 = getelementptr i32, ptr %337, i32 %338
  store i32 %317, ptr %339, align 4
  %340 = load i32, ptr %7, align 4
  %341 = add i32 %340, 4
  store i32 %341, ptr %7, align 4
  br label %342

342:                                              ; preds = %336, %50
  %343 = phi i32 [ %341, %336 ], [ %51, %50 ]
  %344 = phi i32 [ %72, %336 ], [ %47, %50 ]
  %345 = phi i32 [ %85, %336 ], [ %44, %50 ]
  %346 = select i1 %26, i32 7, i32 13
  %347 = shl nuw nsw i32 %346, 3
  %348 = add i32 %343, %347
  %349 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 3
  %350 = load i32, ptr %349, align 4
  %351 = icmp ugt i32 %348, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %342
  store i32 0, ptr %7, align 4
  br label %353

353:                                              ; preds = %352, %342
  %354 = load ptr, ptr %13, align 8
  %355 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %354, i32 0, i32 6
  %356 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %6, ptr noundef %355) #3
  %357 = load i32, ptr %7, align 4
  %358 = add i32 %357, %356
  %359 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %4, i32 0, i32 4
  %360 = load i32, ptr %359, align 4
  %361 = add i32 %360, 7
  %362 = and i32 %361, -8
  store i32 %362, ptr %359, align 4
  %363 = load i32, ptr %45, align 4
  %364 = icmp ult i32 %362, %363
  br i1 %364, label %366, label %365, !prof !10

365:                                              ; preds = %353
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

366:                                              ; preds = %353
  %367 = or i32 %346, 1073741824
  %368 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %4, i32 0, i32 2
  %369 = load ptr, ptr %368, align 4
  %370 = lshr exact i32 %362, 2
  %371 = getelementptr i32, ptr %369, i32 %370
  store i32 %367, ptr %371, align 4
  %372 = load i32, ptr %359, align 4
  %373 = add i32 %372, 4
  store i32 %373, ptr %359, align 4
  %374 = load i32, ptr %45, align 4
  %375 = icmp ult i32 %373, %374
  br i1 %375, label %377, label %376, !prof !10

376:                                              ; preds = %366
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

377:                                              ; preds = %366
  %378 = load ptr, ptr %368, align 4
  %379 = lshr i32 %373, 2
  %380 = getelementptr i32, ptr %378, i32 %379
  store i32 %358, ptr %380, align 4
  %381 = load i32, ptr %359, align 4
  %382 = add i32 %381, 4
  store i32 %382, ptr %359, align 4
  %383 = load i32, ptr %10, align 8
  %384 = icmp eq i32 %383, 1
  %385 = load i32, ptr %7, align 4
  %386 = add i32 %385, 7
  %387 = and i32 %386, -8
  store i32 %387, ptr %7, align 4
  %388 = load i32, ptr %349, align 4
  %389 = icmp ult i32 %387, %388
  br i1 %384, label %390, label %446

390:                                              ; preds = %377
  br i1 %389, label %392, label %391, !prof !10

391:                                              ; preds = %390
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

392:                                              ; preds = %390
  %393 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %394 = load ptr, ptr %393, align 4
  %395 = lshr exact i32 %387, 2
  %396 = getelementptr i32, ptr %394, i32 %395
  store i32 134286851, ptr %396, align 4
  %397 = load i32, ptr %7, align 4
  %398 = add i32 %397, 4
  store i32 %398, ptr %7, align 4
  %399 = load i32, ptr %349, align 4
  %400 = icmp ult i32 %398, %399
  br i1 %400, label %402, label %401, !prof !10

401:                                              ; preds = %392
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

402:                                              ; preds = %392
  %403 = load ptr, ptr %393, align 4
  %404 = lshr i32 %398, 2
  %405 = getelementptr i32, ptr %403, i32 %404
  store i32 8, ptr %405, align 4
  %406 = load i32, ptr %7, align 4
  %407 = add i32 %406, 11
  %408 = and i32 %407, -8
  store i32 %408, ptr %7, align 4
  %409 = load i32, ptr %349, align 4
  %410 = icmp ult i32 %408, %409
  br i1 %410, label %412, label %411, !prof !10

411:                                              ; preds = %402
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

412:                                              ; preds = %402
  %413 = load ptr, ptr %393, align 4
  %414 = lshr exact i32 %408, 2
  %415 = getelementptr i32, ptr %413, i32 %414
  store i32 134286850, ptr %415, align 4
  %416 = load i32, ptr %7, align 4
  %417 = add i32 %416, 4
  store i32 %417, ptr %7, align 4
  %418 = load i32, ptr %349, align 4
  %419 = icmp ult i32 %417, %418
  br i1 %419, label %421, label %420, !prof !10

420:                                              ; preds = %412
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

421:                                              ; preds = %412
  %422 = load ptr, ptr %393, align 4
  %423 = lshr i32 %417, 2
  %424 = getelementptr i32, ptr %422, i32 %423
  store i32 1793, ptr %424, align 4
  %425 = load i32, ptr %7, align 4
  %426 = add i32 %425, 11
  %427 = and i32 %426, -8
  store i32 %427, ptr %7, align 4
  %428 = load i32, ptr %349, align 4
  %429 = icmp ult i32 %427, %428
  br i1 %429, label %431, label %430, !prof !10

430:                                              ; preds = %421
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

431:                                              ; preds = %421
  %432 = load ptr, ptr %393, align 4
  %433 = lshr exact i32 %427, 2
  %434 = getelementptr i32, ptr %432, i32 %433
  store i32 1207959552, ptr %434, align 4
  %435 = load i32, ptr %7, align 4
  %436 = add i32 %435, 4
  store i32 %436, ptr %7, align 4
  %437 = load i32, ptr %349, align 4
  %438 = icmp ult i32 %436, %437
  br i1 %438, label %440, label %439, !prof !10

439:                                              ; preds = %431
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

440:                                              ; preds = %431
  %441 = load ptr, ptr %393, align 4
  %442 = lshr i32 %436, 2
  %443 = getelementptr i32, ptr %441, i32 %442
  store i32 1793, ptr %443, align 4
  %444 = load i32, ptr %7, align 4
  %445 = add i32 %444, 4
  br i1 %26, label %692, label %609

446:                                              ; preds = %377
  br i1 %389, label %448, label %447, !prof !10

447:                                              ; preds = %446
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

448:                                              ; preds = %446
  %449 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %450 = load ptr, ptr %449, align 4
  %451 = lshr exact i32 %387, 2
  %452 = getelementptr i32, ptr %450, i32 %451
  store i32 134286851, ptr %452, align 4
  %453 = load i32, ptr %7, align 4
  %454 = add i32 %453, 4
  store i32 %454, ptr %7, align 4
  %455 = load i32, ptr %349, align 4
  %456 = icmp ult i32 %454, %455
  br i1 %456, label %458, label %457, !prof !10

457:                                              ; preds = %448
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

458:                                              ; preds = %448
  %459 = load ptr, ptr %449, align 4
  %460 = lshr i32 %454, 2
  %461 = getelementptr i32, ptr %459, i32 %460
  store i32 3, ptr %461, align 4
  %462 = load i32, ptr %7, align 4
  %463 = add i32 %462, 11
  %464 = and i32 %463, -8
  store i32 %464, ptr %7, align 4
  %465 = load i32, ptr %349, align 4
  %466 = icmp ult i32 %464, %465
  br i1 %26, label %560, label %467

467:                                              ; preds = %458
  br i1 %466, label %469, label %468, !prof !10

468:                                              ; preds = %467
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

469:                                              ; preds = %467
  %470 = load ptr, ptr %449, align 4
  %471 = lshr exact i32 %464, 2
  %472 = getelementptr i32, ptr %470, i32 %471
  store i32 134303790, ptr %472, align 4
  %473 = load i32, ptr %7, align 4
  %474 = add i32 %473, 4
  store i32 %474, ptr %7, align 4
  %475 = load i32, ptr %349, align 4
  %476 = icmp ult i32 %474, %475
  br i1 %476, label %478, label %477, !prof !10

477:                                              ; preds = %469
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

478:                                              ; preds = %469
  %479 = load ptr, ptr %449, align 4
  %480 = lshr i32 %474, 2
  %481 = getelementptr i32, ptr %479, i32 %480
  store i32 1, ptr %481, align 4
  %482 = load i32, ptr %7, align 4
  %483 = add i32 %482, 11
  %484 = and i32 %483, -8
  store i32 %484, ptr %7, align 4
  %485 = load i32, ptr %349, align 4
  %486 = icmp ult i32 %484, %485
  br i1 %486, label %488, label %487, !prof !10

487:                                              ; preds = %478
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

488:                                              ; preds = %478
  %489 = load ptr, ptr %449, align 4
  %490 = lshr exact i32 %484, 2
  %491 = getelementptr i32, ptr %489, i32 %490
  store i32 134303787, ptr %491, align 4
  %492 = load i32, ptr %7, align 4
  %493 = add i32 %492, 4
  store i32 %493, ptr %7, align 4
  %494 = load i32, ptr %349, align 4
  %495 = icmp ult i32 %493, %494
  br i1 %495, label %497, label %496, !prof !10

496:                                              ; preds = %488
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

497:                                              ; preds = %488
  %498 = load ptr, ptr %449, align 4
  %499 = lshr i32 %493, 2
  %500 = getelementptr i32, ptr %498, i32 %499
  store i32 1, ptr %500, align 4
  %501 = load i32, ptr %7, align 4
  %502 = add i32 %501, 11
  %503 = and i32 %502, -8
  store i32 %503, ptr %7, align 4
  %504 = load i32, ptr %349, align 4
  %505 = icmp ult i32 %503, %504
  br i1 %505, label %507, label %506, !prof !10

506:                                              ; preds = %497
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

507:                                              ; preds = %497
  %508 = load ptr, ptr %449, align 4
  %509 = lshr exact i32 %503, 2
  %510 = getelementptr i32, ptr %508, i32 %509
  store i32 134303790, ptr %510, align 4
  %511 = load i32, ptr %7, align 4
  %512 = add i32 %511, 4
  store i32 %512, ptr %7, align 4
  %513 = load i32, ptr %349, align 4
  %514 = icmp ult i32 %512, %513
  br i1 %514, label %516, label %515, !prof !10

515:                                              ; preds = %507
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

516:                                              ; preds = %507
  %517 = load ptr, ptr %449, align 4
  %518 = lshr i32 %512, 2
  %519 = getelementptr i32, ptr %517, i32 %518
  store i32 0, ptr %519, align 4
  %520 = load i32, ptr %7, align 4
  %521 = add i32 %520, 11
  %522 = and i32 %521, -8
  store i32 %522, ptr %7, align 4
  %523 = load i32, ptr %349, align 4
  %524 = icmp ult i32 %522, %523
  br i1 %524, label %526, label %525, !prof !10

525:                                              ; preds = %516
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

526:                                              ; preds = %516
  %527 = load ptr, ptr %449, align 4
  %528 = lshr exact i32 %522, 2
  %529 = getelementptr i32, ptr %527, i32 %528
  store i32 134286850, ptr %529, align 4
  %530 = load i32, ptr %7, align 4
  %531 = add i32 %530, 4
  store i32 %531, ptr %7, align 4
  %532 = load i32, ptr %349, align 4
  %533 = icmp ult i32 %531, %532
  br i1 %533, label %535, label %534, !prof !10

534:                                              ; preds = %526
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

535:                                              ; preds = %526
  %536 = load ptr, ptr %449, align 4
  %537 = lshr i32 %531, 2
  %538 = getelementptr i32, ptr %536, i32 %537
  store i32 1793, ptr %538, align 4
  %539 = load i32, ptr %7, align 4
  %540 = add i32 %539, 11
  %541 = and i32 %540, -8
  store i32 %541, ptr %7, align 4
  %542 = load i32, ptr %349, align 4
  %543 = icmp ult i32 %541, %542
  br i1 %543, label %545, label %544, !prof !10

544:                                              ; preds = %535
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

545:                                              ; preds = %535
  %546 = load ptr, ptr %449, align 4
  %547 = lshr exact i32 %541, 2
  %548 = getelementptr i32, ptr %546, i32 %547
  store i32 1207959552, ptr %548, align 4
  %549 = load i32, ptr %7, align 4
  %550 = add i32 %549, 4
  store i32 %550, ptr %7, align 4
  %551 = load i32, ptr %349, align 4
  %552 = icmp ult i32 %550, %551
  br i1 %552, label %554, label %553, !prof !10

553:                                              ; preds = %545
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

554:                                              ; preds = %545
  %555 = load ptr, ptr %449, align 4
  %556 = lshr i32 %550, 2
  %557 = getelementptr i32, ptr %555, i32 %556
  store i32 1793, ptr %557, align 4
  %558 = load i32, ptr %7, align 4
  %559 = add i32 %558, 4
  br label %609

560:                                              ; preds = %458
  br i1 %466, label %562, label %561, !prof !10

561:                                              ; preds = %560
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

562:                                              ; preds = %560
  %563 = load ptr, ptr %449, align 4
  %564 = lshr exact i32 %464, 2
  %565 = getelementptr i32, ptr %563, i32 %564
  store i32 134284692, ptr %565, align 4
  %566 = load i32, ptr %7, align 4
  %567 = add i32 %566, 4
  store i32 %567, ptr %7, align 4
  %568 = load i32, ptr %349, align 4
  %569 = icmp ult i32 %567, %568
  br i1 %569, label %571, label %570, !prof !10

570:                                              ; preds = %562
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

571:                                              ; preds = %562
  %572 = load ptr, ptr %449, align 4
  %573 = lshr i32 %567, 2
  %574 = getelementptr i32, ptr %572, i32 %573
  store i32 1, ptr %574, align 4
  %575 = load i32, ptr %7, align 4
  %576 = add i32 %575, 11
  %577 = and i32 %576, -8
  store i32 %577, ptr %7, align 4
  %578 = load i32, ptr %349, align 4
  %579 = icmp ult i32 %577, %578
  br i1 %579, label %581, label %580, !prof !10

580:                                              ; preds = %571
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

581:                                              ; preds = %571
  %582 = load ptr, ptr %449, align 4
  %583 = lshr exact i32 %577, 2
  %584 = getelementptr i32, ptr %582, i32 %583
  store i32 134286850, ptr %584, align 4
  %585 = load i32, ptr %7, align 4
  %586 = add i32 %585, 4
  store i32 %586, ptr %7, align 4
  %587 = load i32, ptr %349, align 4
  %588 = icmp ult i32 %586, %587
  br i1 %588, label %590, label %589, !prof !10

589:                                              ; preds = %581
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

590:                                              ; preds = %581
  %591 = load ptr, ptr %449, align 4
  %592 = lshr i32 %586, 2
  %593 = getelementptr i32, ptr %591, i32 %592
  store i32 1793, ptr %593, align 4
  %594 = load i32, ptr %7, align 4
  %595 = add i32 %594, 11
  %596 = and i32 %595, -8
  store i32 %596, ptr %7, align 4
  %597 = load i32, ptr %349, align 4
  %598 = icmp ult i32 %596, %597
  br i1 %598, label %600, label %599, !prof !10

599:                                              ; preds = %590
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

600:                                              ; preds = %590
  %601 = load ptr, ptr %449, align 4
  %602 = lshr exact i32 %596, 2
  %603 = getelementptr i32, ptr %601, i32 %602
  store i32 1207959552, ptr %603, align 4
  %604 = load i32, ptr %7, align 4
  %605 = add i32 %604, 4
  store i32 %605, ptr %7, align 4
  %606 = load i32, ptr %349, align 4
  %607 = icmp ult i32 %605, %606
  br i1 %607, label %683, label %608, !prof !10

608:                                              ; preds = %600
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

609:                                              ; preds = %554, %440
  %610 = phi i32 [ %559, %554 ], [ %445, %440 ]
  %611 = add i32 %610, 7
  %612 = and i32 %611, -8
  store i32 %612, ptr %7, align 4
  %613 = load i32, ptr %349, align 4
  %614 = icmp ult i32 %612, %613
  br i1 %614, label %616, label %615, !prof !10

615:                                              ; preds = %609
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

616:                                              ; preds = %609
  %617 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %618 = load ptr, ptr %617, align 4
  %619 = lshr exact i32 %612, 2
  %620 = getelementptr i32, ptr %618, i32 %619
  store i32 134303790, ptr %620, align 4
  %621 = load i32, ptr %7, align 4
  %622 = add i32 %621, 4
  store i32 %622, ptr %7, align 4
  %623 = load i32, ptr %349, align 4
  %624 = icmp ult i32 %622, %623
  br i1 %624, label %626, label %625, !prof !10

625:                                              ; preds = %616
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

626:                                              ; preds = %616
  %627 = load ptr, ptr %617, align 4
  %628 = lshr i32 %622, 2
  %629 = getelementptr i32, ptr %627, i32 %628
  store i32 1, ptr %629, align 4
  %630 = load i32, ptr %7, align 4
  %631 = add i32 %630, 11
  %632 = and i32 %631, -8
  store i32 %632, ptr %7, align 4
  %633 = load i32, ptr %349, align 4
  %634 = icmp ult i32 %632, %633
  br i1 %634, label %636, label %635, !prof !10

635:                                              ; preds = %626
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

636:                                              ; preds = %626
  %637 = load ptr, ptr %617, align 4
  %638 = lshr exact i32 %632, 2
  %639 = getelementptr i32, ptr %637, i32 %638
  store i32 134286850, ptr %639, align 4
  %640 = load i32, ptr %7, align 4
  %641 = add i32 %640, 4
  store i32 %641, ptr %7, align 4
  %642 = load i32, ptr %349, align 4
  %643 = icmp ult i32 %641, %642
  br i1 %643, label %645, label %644, !prof !10

644:                                              ; preds = %636
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

645:                                              ; preds = %636
  %646 = load ptr, ptr %617, align 4
  %647 = lshr i32 %641, 2
  %648 = getelementptr i32, ptr %646, i32 %647
  store i32 4097, ptr %648, align 4
  %649 = load i32, ptr %7, align 4
  %650 = add i32 %649, 11
  %651 = and i32 %650, -8
  store i32 %651, ptr %7, align 4
  %652 = load i32, ptr %349, align 4
  %653 = icmp ult i32 %651, %652
  br i1 %653, label %655, label %654, !prof !10

654:                                              ; preds = %645
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

655:                                              ; preds = %645
  %656 = load ptr, ptr %617, align 4
  %657 = lshr exact i32 %651, 2
  %658 = getelementptr i32, ptr %656, i32 %657
  store i32 1207959552, ptr %658, align 4
  %659 = load i32, ptr %7, align 4
  %660 = add i32 %659, 4
  store i32 %660, ptr %7, align 4
  %661 = load i32, ptr %349, align 4
  %662 = icmp ult i32 %660, %661
  br i1 %662, label %664, label %663, !prof !10

663:                                              ; preds = %655
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

664:                                              ; preds = %655
  %665 = load ptr, ptr %617, align 4
  %666 = lshr i32 %660, 2
  %667 = getelementptr i32, ptr %665, i32 %666
  store i32 4097, ptr %667, align 4
  %668 = load i32, ptr %7, align 4
  %669 = add i32 %668, 11
  %670 = and i32 %669, -8
  store i32 %670, ptr %7, align 4
  %671 = load i32, ptr %349, align 4
  %672 = icmp ult i32 %670, %671
  br i1 %672, label %674, label %673, !prof !10

673:                                              ; preds = %664
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

674:                                              ; preds = %664
  %675 = load ptr, ptr %617, align 4
  %676 = lshr exact i32 %670, 2
  %677 = getelementptr i32, ptr %675, i32 %676
  store i32 134303790, ptr %677, align 4
  %678 = load i32, ptr %7, align 4
  %679 = add i32 %678, 4
  store i32 %679, ptr %7, align 4
  %680 = load i32, ptr %349, align 4
  %681 = icmp ult i32 %679, %680
  br i1 %681, label %683, label %682, !prof !10

682:                                              ; preds = %674
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

683:                                              ; preds = %674, %600
  %684 = phi ptr [ %449, %600 ], [ %617, %674 ]
  %685 = phi i32 [ %605, %600 ], [ %679, %674 ]
  %686 = phi i32 [ 1793, %600 ], [ 0, %674 ]
  %687 = load ptr, ptr %684, align 4
  %688 = lshr i32 %685, 2
  %689 = getelementptr i32, ptr %687, i32 %688
  store i32 %686, ptr %689, align 4
  %690 = load i32, ptr %7, align 4
  %691 = add i32 %690, 4
  br label %692

692:                                              ; preds = %683, %440
  %693 = phi i32 [ %445, %440 ], [ %691, %683 ]
  %694 = and i32 %3, 31
  %695 = or i32 %694, 64
  %696 = add i32 %693, 7
  %697 = and i32 %696, -8
  store i32 %697, ptr %7, align 4
  %698 = load i32, ptr %349, align 4
  %699 = icmp ult i32 %697, %698
  br i1 %699, label %701, label %700, !prof !10

700:                                              ; preds = %692
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

701:                                              ; preds = %692
  %702 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 10, i32 2
  %703 = load ptr, ptr %702, align 4
  %704 = lshr exact i32 %697, 2
  %705 = getelementptr i32, ptr %703, i32 %704
  store i32 134286849, ptr %705, align 4
  %706 = load i32, ptr %7, align 4
  %707 = add i32 %706, 4
  store i32 %707, ptr %7, align 4
  %708 = load i32, ptr %349, align 4
  %709 = icmp ult i32 %707, %708
  br i1 %709, label %711, label %710, !prof !10

710:                                              ; preds = %701
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

711:                                              ; preds = %701
  %712 = load ptr, ptr %702, align 4
  %713 = lshr i32 %707, 2
  %714 = getelementptr i32, ptr %712, i32 %713
  store i32 %695, ptr %714, align 4
  %715 = load i32, ptr %7, align 4
  %716 = add i32 %715, 11
  %717 = and i32 %716, -8
  store i32 %717, ptr %7, align 4
  %718 = load i32, ptr %349, align 4
  %719 = icmp ult i32 %717, %718
  br i1 %719, label %721, label %720, !prof !10

720:                                              ; preds = %711
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

721:                                              ; preds = %711
  %722 = load ptr, ptr %702, align 4
  %723 = lshr exact i32 %717, 2
  %724 = getelementptr i32, ptr %722, i32 %723
  store i32 939524296, ptr %724, align 4
  %725 = load i32, ptr %7, align 4
  %726 = add i32 %725, 4
  store i32 %726, ptr %7, align 4
  %727 = load ptr, ptr %13, align 8
  %728 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %727, i32 0, i32 6
  %729 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %6, ptr noundef %728) #3
  %730 = load i32, ptr %7, align 4
  %731 = add i32 %729, -4
  %732 = add i32 %731, %730
  %733 = add i32 %730, 7
  %734 = and i32 %733, -8
  store i32 %734, ptr %7, align 4
  %735 = load i32, ptr %349, align 4
  %736 = icmp ult i32 %734, %735
  br i1 %736, label %738, label %737, !prof !10

737:                                              ; preds = %721
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

738:                                              ; preds = %721
  %739 = load ptr, ptr %702, align 4
  %740 = lshr exact i32 %734, 2
  %741 = getelementptr i32, ptr %739, i32 %740
  store i32 1073741826, ptr %741, align 4
  %742 = load i32, ptr %7, align 4
  %743 = add i32 %742, 4
  store i32 %743, ptr %7, align 4
  %744 = load i32, ptr %349, align 4
  %745 = icmp ult i32 %743, %744
  br i1 %745, label %747, label %746, !prof !10

746:                                              ; preds = %738
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_buffer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 29, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

747:                                              ; preds = %738
  %748 = load ptr, ptr %702, align 4
  %749 = lshr i32 %743, 2
  %750 = getelementptr i32, ptr %748, i32 %749
  store i32 %732, ptr %750, align 4
  %751 = load i32, ptr %7, align 4
  %752 = add i32 %751, 4
  store i32 %752, ptr %7, align 4
  %753 = load i32, ptr @__drm_debug, align 4
  %754 = and i32 %753, 2
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %774, label %756

756:                                              ; preds = %747
  %757 = load ptr, ptr %13, align 8
  %758 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %757, i32 0, i32 6
  %759 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %4, ptr noundef %758) #3
  %760 = load ptr, ptr %368, align 4
  %761 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %358, i32 noundef %759, ptr noundef %760) #4
  %762 = load i32, ptr @__drm_debug, align 4
  %763 = and i32 %762, 2
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %774, label %765

765:                                              ; preds = %756
  %766 = load ptr, ptr %368, align 4
  %767 = load i32, ptr %45, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %766, i32 noundef %767, i1 noundef zeroext false) #3
  %768 = load ptr, ptr %702, align 4
  %769 = getelementptr i8, ptr %768, i32 %9
  %770 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %769) #4
  %771 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %345) #4
  %772 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %358) #4
  %773 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %3) #4
  br label %774

774:                                              ; preds = %765, %756, %747
  %775 = and i32 %344, 65535
  %776 = or i32 %775, 1073741824
  %777 = load ptr, ptr %702, align 4
  %778 = getelementptr i8, ptr %777, i32 %9
  %779 = getelementptr i32, ptr %778, i32 1
  store i32 %345, ptr %779, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  store i32 %776, ptr %778, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %780 = load i32, ptr @__drm_debug, align 4
  %781 = and i32 %780, 2
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %792, label %783

783:                                              ; preds = %774
  %784 = load i32, ptr %349, align 4
  %785 = load ptr, ptr %702, align 4
  %786 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %787 = load ptr, ptr %786, align 8
  %788 = load ptr, ptr %13, align 8
  %789 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %788, i32 0, i32 6
  %790 = tail call i32 @etnaviv_cmdbuf_get_va(ptr noundef %6, ptr noundef %789) #3
  %791 = add i32 %784, -320
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %787, ptr noundef nonnull @.str.7, ptr noundef %785, i32 noundef %790, i32 noundef %791) #4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef 16, i32 noundef 4, ptr noundef %785, i32 noundef 320, i1 noundef zeroext false) #3
  br label %792

792:                                              ; preds = %783, %774
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @etnaviv_iommuv2_get_pta_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommuv2_get_mtlb_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!9 = !{i64 2155242263, i64 2155242767, i64 2155242300, i64 2155242356, i64 2155242390, i64 2155242414, i64 2155242455, i64 2155242476, i64 2155242504, i64 2155242538}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2155247351}
!12 = !{i64 2155247465}
!13 = !{i64 697804, i64 2148187775, i64 2148187801, i64 2148187848, i64 2148187870, i64 2148187898, i64 2148187918}
!14 = !{i64 2148200648, i64 2148200680, i64 2148200709, i64 2148200743, i64 2148200774, i64 2148200797}
