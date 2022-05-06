; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/gsp/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/gsp/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gsp_fwif = type { i32, ptr, ptr }
%struct.nvkm_gsp = type { %struct.nvkm_subdev, %struct.nvkm_falcon }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.123, %struct.anon.124, %struct.nvkm_engine }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.anon.124 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.127 }
%struct.anon.127 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }

@nvkm_gsp = internal constant %struct.nvkm_subdev_func { ptr @nvkm_gsp_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"Gsp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_gsp_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [32 x i8], align 1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 248) #6
  store ptr %8, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %76, label %10

10:                                               ; preds = %5
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_gsp, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @nvkm_longopt(ptr noundef %15, ptr noundef nonnull %6, i32 noundef -2) #7
  %17 = icmp sgt i32 %16, -2
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  br label %34

20:                                               ; preds = %25, %10
  %21 = phi ptr [ %28, %25 ], [ %0, %10 ]
  %22 = getelementptr inbounds %struct.nvkm_gsp_fwif, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %62, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %21, align 4
  %27 = icmp ne i32 %26, %16
  %28 = getelementptr %struct.nvkm_gsp_fwif, ptr %21, i32 1
  %29 = icmp eq ptr %21, null
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %20, label %31

31:                                               ; preds = %25
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  %33 = load i32, ptr %21, align 4
  br label %34

34:                                               ; preds = %31, %18
  %35 = phi ptr [ %21, %31 ], [ null, %18 ]
  %36 = phi ptr [ %21, %31 ], [ %0, %18 ]
  %37 = phi i32 [ %33, %31 ], [ -1, %18 ]
  %38 = load ptr, ptr %12, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @nvkm_longopt(ptr noundef %40, ptr noundef nonnull %6, i32 noundef %37) #7
  %42 = getelementptr inbounds %struct.nvkm_gsp_fwif, ptr %36, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %34
  %46 = icmp sgt i32 %41, -1
  br label %47

47:                                               ; preds = %54, %45
  %48 = phi ptr [ %43, %45 ], [ %57, %54 ]
  %49 = phi ptr [ %36, %45 ], [ %55, %54 ]
  br i1 %46, label %59, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %49, align 4
  %52 = call i32 %48(ptr noundef nonnull %8, i32 noundef %51, ptr noundef %49) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.nvkm_gsp_fwif, ptr %49, i32 1
  %56 = getelementptr %struct.nvkm_gsp_fwif, ptr %49, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %47

59:                                               ; preds = %47
  %60 = call i32 %43(ptr noundef nonnull %8, i32 noundef %41, ptr noundef %36) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59, %54, %20
  %63 = phi i32 [ %60, %59 ], [ %52, %54 ], [ -22, %20 ]
  %64 = inttoptr i32 %63 to ptr
  br label %65

65:                                               ; preds = %62, %59, %50, %34
  %66 = phi ptr [ %64, %62 ], [ %36, %59 ], [ %35, %34 ], [ %49, %50 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = ptrtoint ptr %66 to i32
  br label %76

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.nvkm_gsp_fwif, ptr %66, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nvkm_subdev, ptr %8, i32 0, i32 4
  %74 = getelementptr inbounds %struct.nvkm_gsp, ptr %8, i32 0, i32 1
  %75 = call i32 @nvkm_falcon_ctor(ptr noundef %72, ptr noundef nonnull %8, ptr noundef %73, i32 noundef 0, ptr noundef %74) #7
  br label %76

76:                                               ; preds = %70, %68, %5
  %77 = phi i32 [ %69, %68 ], [ %75, %70 ], [ -12, %5 ]
  ret i32 %77
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_ctor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_gsp_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gsp, ptr %0, i32 0, i32 1
  tail call void @nvkm_falcon_dtor(ptr noundef %2) #7
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_dtor(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
