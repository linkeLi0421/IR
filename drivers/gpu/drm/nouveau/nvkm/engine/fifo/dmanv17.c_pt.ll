; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv17.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/dmanv17.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_fifo_chan_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nv03_channel_dma_v0 = type { i8, i8, [2 x i8], i32, i64 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nv04_fifo_chan = type { %struct.nvkm_fifo_chan, ptr, i32, [16 x ptr] }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@nv17_fifo_dma_oclass = dso_local local_unnamed_addr constant %struct.nvkm_fifo_chan_oclass { ptr @nv17_fifo_dma_new, %struct.nvkm_sclass { i32 0, i32 0, i32 5998, ptr null, ptr null } }, align 4
@.str = private unnamed_addr constant [60 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create channel dma vers %d pushbuf %llx offset %08x\0A\00", align 1
@nv04_fifo_dma_func = external dso_local constant %struct.nvkm_fifo_chan_func, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv17_fifo_dma_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_fifo, ptr %0, i32 0, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = icmp ugt i32 %15, 4
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %19 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %3) #4
  br label %24

24:                                               ; preds = %17, %5
  %25 = icmp ugt i32 %3, 15
  br i1 %25, label %26, label %119

26:                                               ; preds = %24
  %27 = load i8, ptr %2, align 8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %119

29:                                               ; preds = %26
  %30 = icmp eq i32 %3, 16
  br i1 %30, label %31, label %119

31:                                               ; preds = %29
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr inbounds %struct.nvkm_client, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = icmp ugt i32 %34, 4
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.nvkm_client, ptr %32, i32 0, i32 1
  %38 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_object, ptr %7, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 4
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef 0, i64 noundef %43, i32 noundef %45) #4
  br label %47

47:                                               ; preds = %36, %31
  %48 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 4
  %49 = load i64, ptr %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %119, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3520, i32 noundef 400) #5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %119, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 3
  store ptr %56, ptr %4, align 4
  %57 = load i64, ptr %48, align 8
  %58 = tail call i32 @nvkm_fifo_chan_ctor(ptr noundef nonnull @nv04_fifo_dma_func, ptr noundef %0, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext false, i64 noundef 0, i64 noundef %57, i32 noundef 15, i32 noundef 0, i32 noundef 8388608, i32 noundef 65536, ptr noundef %1, ptr noundef nonnull %53) #6
  %59 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %53, i32 0, i32 1
  store ptr %0, ptr %59, align 8
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %61, label %119

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 5
  %63 = load i16, ptr %62, align 8
  %64 = trunc i16 %63 to i8
  %65 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 1
  store i8 %64, ptr %65, align 1
  %66 = zext i16 %63 to i32
  %67 = shl nuw nsw i32 %66, 6
  %68 = getelementptr inbounds %struct.nv04_fifo_chan, ptr %53, i32 0, i32 2
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.nvkm_instmem, ptr %11, i32 0, i32 10
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.nvkm_memory_func, ptr %71, i32 0, i32 7
  %73 = load ptr, ptr %72, align 4
  %74 = tail call ptr %73(ptr noundef %70) #6
  %75 = load ptr, ptr %69, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = load i32, ptr %68, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %2, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  tail call void %79(ptr noundef %75, i64 noundef %81, i32 noundef %83) #6
  %84 = load ptr, ptr %69, align 4
  %85 = getelementptr inbounds %struct.nvkm_memory, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %68, align 4
  %90 = add i32 %89, 4
  %91 = zext i32 %90 to i64
  %92 = load i32, ptr %82, align 4
  tail call void %88(ptr noundef %84, i64 noundef %91, i32 noundef %92) #6
  %93 = load ptr, ptr %69, align 4
  %94 = getelementptr inbounds %struct.nvkm_memory, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = load i32, ptr %68, align 4
  %99 = add i32 %98, 12
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %53, i32 0, i32 7
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %102, i32 0, i32 4
  %104 = load i64, ptr %103, align 8
  %105 = lshr i64 %104, 4
  %106 = trunc i64 %105 to i32
  tail call void %97(ptr noundef %93, i64 noundef %100, i32 noundef %106) #6
  %107 = load ptr, ptr %69, align 4
  %108 = getelementptr inbounds %struct.nvkm_memory, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load i32, ptr %68, align 4
  %113 = add i32 %112, 20
  %114 = zext i32 %113 to i64
  tail call void %111(ptr noundef %107, i64 noundef %114, i32 noundef 548984) #6
  %115 = load ptr, ptr %69, align 4
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.nvkm_memory_func, ptr %116, i32 0, i32 8
  %118 = load ptr, ptr %117, align 4
  tail call void %118(ptr noundef %115) #6
  br label %119

119:                                              ; preds = %61, %55, %51, %47, %29, %26, %24
  %120 = phi i32 [ 0, %61 ], [ -22, %47 ], [ -12, %51 ], [ %58, %55 ], [ -38, %24 ], [ -38, %26 ], [ -7, %29 ]
  ret i32 %120
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

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
