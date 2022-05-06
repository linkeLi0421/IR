; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fault/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fault/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_event_func = type { ptr, ptr, ptr, ptr }
%struct.nvkm_fault = type { ptr, %struct.nvkm_subdev, [2 x ptr], i32, %struct.nvkm_event, %struct.nvkm_notify, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fault_func = type { ptr, ptr, ptr, ptr, %struct.anon.120, %struct.anon.121 }
%struct.anon.120 = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.anon.121 = type { %struct.nvkm_sclass, i32 }
%struct.nvkm_fault_buffer = type { %struct.nvkm_object, ptr, i32, i32, i32, i32, ptr, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@nvkm_fault = internal constant %struct.nvkm_subdev_func { ptr @nvkm_fault_dtor, ptr null, ptr @nvkm_fault_oneinit, ptr null, ptr @nvkm_fault_init, ptr @nvkm_fault_fini, ptr @nvkm_fault_intr }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nvkm_fault_ntfy = internal constant %struct.nvkm_event_func { ptr @nvkm_fault_ntfy_ctor, ptr null, ptr @nvkm_fault_ntfy_init, ptr @nvkm_fault_ntfy_fini }, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: buffer %d: %d entries\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_fault_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 180) #6
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_fault, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_fault, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #7
  store ptr %0, ptr %7, align 8
  %11 = getelementptr inbounds %struct.nvkm_fault, ptr %7, i32 0, i32 6
  store ptr @nvkm_ufault_new, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_fault, ptr %7, i32 0, i32 6, i32 1
  %13 = getelementptr inbounds %struct.nvkm_fault_func, ptr %0, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %12, ptr noundef align 4 dereferenceable(20) %13, i32 20, i1 false)
  br label %14

14:                                               ; preds = %9, %5
  %15 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ufault_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_fault_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 96
  tail call void @nvkm_notify_fini(ptr noundef %2) #7
  %3 = getelementptr i8, ptr %0, i32 64
  tail call void @nvkm_event_fini(ptr noundef %3) #7
  %4 = getelementptr i8, ptr %0, i32 60
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 52
  br label %9

9:                                                ; preds = %19, %7
  %10 = phi i32 [ %5, %7 ], [ %20, %19 ]
  %11 = phi i32 [ 0, %7 ], [ %21, %19 ]
  %12 = getelementptr [2 x ptr], ptr %8, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %13, i32 0, i32 6
  tail call void @nvkm_memory_unref(ptr noundef %16) #7
  %17 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %17) #7
  %18 = load i32, ptr %4, align 4
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %10, %9 ], [ %18, %15 ]
  %21 = add nuw nsw i32 %11, 1
  %22 = icmp slt i32 %21, %20
  br i1 %22, label %9, label %23

23:                                               ; preds = %19, %1
  %24 = getelementptr i8, ptr %0, i32 -4
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fault_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 4
  %4 = getelementptr i8, ptr %0, i32 32
  %5 = getelementptr i8, ptr %0, i32 16
  %6 = getelementptr i8, ptr %0, i32 60
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.nvkm_fault_func, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 104) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %106, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %14, i32 0, i32 1
  store ptr %2, ptr %17, align 8
  %18 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %14, i32 0, i32 2
  store i32 0, ptr %18, align 4
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr inbounds %struct.nvkm_fault_func, ptr %19, i32 0, i32 4, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef nonnull %14) #7
  %22 = getelementptr i8, ptr %0, i32 52
  store ptr %14, ptr %22, align 4
  %23 = load i32, ptr %4, align 4
  %24 = icmp ugt i32 %23, 3
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %14, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 0, i32 noundef %30) #8
  br label %31

31:                                               ; preds = %25, %16
  %32 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %14, i32 0, i32 3
  %33 = load i32, ptr %32, align 8
  %34 = load ptr, ptr %2, align 4
  %35 = getelementptr inbounds %struct.nvkm_fault_func, ptr %34, i32 0, i32 4, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %36, %33
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %14, i32 0, i32 6
  %40 = tail call i32 @nvkm_memory_new(ptr noundef %12, i32 noundef 0, i64 noundef %38, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %39) #7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %106

42:                                               ; preds = %31
  %43 = load ptr, ptr %2, align 4
  %44 = getelementptr inbounds %struct.nvkm_fault_func, ptr %43, i32 0, i32 4, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i64 %45(ptr noundef nonnull %14) #7
  %47 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %14, i32 0, i32 7
  store i64 %46, ptr %47, align 8
  %48 = icmp eq i64 %46, -1
  br i1 %48, label %106, label %49

49:                                               ; preds = %42
  store i32 1, ptr %6, align 4
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr inbounds %struct.nvkm_fault_func, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %56, label %54

54:                                               ; preds = %49, %1
  %55 = load i32, ptr %6, align 4
  br label %95

56:                                               ; preds = %49
  %57 = load ptr, ptr %3, align 4
  %58 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 104) #6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %106, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %59, i32 0, i32 1
  store ptr %2, ptr %62, align 8
  %63 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %59, i32 0, i32 2
  store i32 1, ptr %63, align 4
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr inbounds %struct.nvkm_fault_func, ptr %64, i32 0, i32 4, i32 2
  %66 = load ptr, ptr %65, align 4
  tail call void %66(ptr noundef nonnull %59) #7
  %67 = getelementptr i8, ptr %0, i32 56
  store ptr %59, ptr %67, align 4
  %68 = load i32, ptr %4, align 4
  %69 = icmp ugt i32 %68, 3
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %59, i32 0, i32 3
  %75 = load i32, ptr %74, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str, ptr noundef %5, i32 noundef 1, i32 noundef %75) #8
  br label %76

76:                                               ; preds = %70, %61
  %77 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %59, i32 0, i32 3
  %78 = load i32, ptr %77, align 8
  %79 = load ptr, ptr %2, align 4
  %80 = getelementptr inbounds %struct.nvkm_fault_func, ptr %79, i32 0, i32 4, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = mul i32 %81, %78
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %59, i32 0, i32 6
  %85 = tail call i32 @nvkm_memory_new(ptr noundef %57, i32 noundef 0, i64 noundef %83, i32 noundef 4096, i1 noundef zeroext true, ptr noundef %84) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %76
  %88 = load ptr, ptr %2, align 4
  %89 = getelementptr inbounds %struct.nvkm_fault_func, ptr %88, i32 0, i32 4, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i64 %90(ptr noundef nonnull %59) #7
  %92 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %59, i32 0, i32 7
  store i64 %91, ptr %92, align 8
  %93 = icmp eq i64 %91, -1
  br i1 %93, label %106, label %94

94:                                               ; preds = %87
  store i32 2, ptr %6, align 4
  br label %95

95:                                               ; preds = %94, %54
  %96 = phi i32 [ %55, %54 ], [ 2, %94 ]
  %97 = getelementptr i8, ptr %0, i32 64
  %98 = tail call i32 @nvkm_event_init(ptr noundef nonnull @nvkm_fault_ntfy, i32 noundef 1, i32 noundef %96, ptr noundef %97) #7
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load ptr, ptr %2, align 4
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = tail call i32 %102(ptr noundef %2) #7
  br label %106

106:                                              ; preds = %104, %100, %95, %87, %76, %56, %42, %31, %11
  %107 = phi i32 [ %98, %95 ], [ %105, %104 ], [ 0, %100 ], [ %40, %31 ], [ -12, %11 ], [ -14, %42 ], [ -12, %56 ], [ %85, %76 ], [ -14, %87 ]
  ret i32 %107
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fault_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fault_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %2) #7
  br label %8

8:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fault_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fault_func, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %3) #7
  br label %9

9:                                                ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fault_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_fault_func, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_event_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_event_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_fault_ntfy_ctor(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #5 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 5
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_notify, ptr %3, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %6, %4
  %13 = phi i32 [ 0, %6 ], [ -38, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fault_ntfy_init(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fault_func, ptr %5, i32 0, i32 4, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = getelementptr [2 x ptr], ptr %8, i32 0, i32 %2
  %10 = load ptr, ptr %9, align 4
  tail call void %7(ptr noundef %10, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fault_ntfy_fini(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -68
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fault_func, ptr %5, i32 0, i32 4, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = getelementptr [2 x ptr], ptr %8, i32 0, i32 %2
  %10 = load ptr, ptr %9, align 4
  tail call void %7(ptr noundef %10, i1 noundef zeroext false) #7
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
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
