; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/nvdec/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/nvdec/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.124, %struct.anon.125, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon.124 = type { ptr }
%struct.anon.125 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_nvdec = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.122, %struct.anon.123, %struct.nvkm_engine }
%struct.anon.122 = type { i32, ptr, i32, i8 }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_nvdec_fwif = type { i32, ptr, ptr }

@nvkm_nvdec = internal constant %struct.nvkm_engine_func { ptr @nvkm_nvdec_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon.124 zeroinitializer, %struct.anon.125 zeroinitializer, ptr null, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@.str = private unnamed_addr constant [6 x i8] c"Nvdec\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_nvdec_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca [32 x i8], align 1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 288) #6
  store ptr %8, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %80, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nvkm_nvdec, ptr %8, i32 0, i32 1
  %12 = tail call i32 @nvkm_engine_ctor(ptr noundef nonnull @nvkm_nvdec, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %80

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nvkm_nvdec, ptr %8, i32 0, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  %16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
  %17 = getelementptr inbounds %struct.nvkm_nvdec, ptr %8, i32 0, i32 1, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @nvkm_longopt(ptr noundef %20, ptr noundef nonnull %6, i32 noundef -2) #7
  %22 = icmp sgt i32 %21, -2
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  br label %39

25:                                               ; preds = %30, %14
  %26 = phi ptr [ %33, %30 ], [ %0, %14 ]
  %27 = getelementptr inbounds %struct.nvkm_nvdec_fwif, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %26, align 4
  %32 = icmp ne i32 %31, %21
  %33 = getelementptr %struct.nvkm_nvdec_fwif, ptr %26, i32 1
  %34 = icmp eq ptr %26, null
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %25, label %36

36:                                               ; preds = %30
  %37 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  %38 = load i32, ptr %26, align 4
  br label %39

39:                                               ; preds = %36, %23
  %40 = phi ptr [ %26, %36 ], [ null, %23 ]
  %41 = phi ptr [ %26, %36 ], [ %0, %23 ]
  %42 = phi i32 [ %38, %36 ], [ -1, %23 ]
  %43 = load ptr, ptr %17, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @nvkm_longopt(ptr noundef %45, ptr noundef nonnull %6, i32 noundef %42) #7
  %47 = getelementptr inbounds %struct.nvkm_nvdec_fwif, ptr %41, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %70, label %50

50:                                               ; preds = %39
  %51 = icmp sgt i32 %46, -1
  br label %52

52:                                               ; preds = %59, %50
  %53 = phi ptr [ %48, %50 ], [ %62, %59 ]
  %54 = phi ptr [ %41, %50 ], [ %60, %59 ]
  br i1 %51, label %64, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %54, align 4
  %57 = call i32 %53(ptr noundef nonnull %8, i32 noundef %56, ptr noundef %54) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %55
  %60 = getelementptr %struct.nvkm_nvdec_fwif, ptr %54, i32 1
  %61 = getelementptr %struct.nvkm_nvdec_fwif, ptr %54, i32 1, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %52

64:                                               ; preds = %52
  %65 = call i32 %48(ptr noundef nonnull %8, i32 noundef %46, ptr noundef %41) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64, %59, %25
  %68 = phi i32 [ %65, %64 ], [ %57, %59 ], [ -22, %25 ]
  %69 = inttoptr i32 %68 to ptr
  br label %70

70:                                               ; preds = %67, %64, %55, %39
  %71 = phi ptr [ %69, %67 ], [ %41, %64 ], [ %40, %39 ], [ %54, %55 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.nvkm_nvdec_fwif, ptr %71, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  store ptr %75, ptr %8, align 8
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_nvdec, ptr %8, i32 0, i32 1, i32 1, i32 4
  %78 = getelementptr inbounds %struct.nvkm_nvdec, ptr %8, i32 0, i32 2
  %79 = call i32 @nvkm_falcon_ctor(ptr noundef %76, ptr noundef %15, ptr noundef %77, i32 noundef 0, ptr noundef %78) #7
  br label %80

80:                                               ; preds = %73, %70, %10, %5
  %81 = phi i32 [ %79, %73 ], [ -12, %5 ], [ %12, %10 ], [ -19, %70 ]
  ret i32 %81
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

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
define internal ptr @nvkm_nvdec_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 88
  tail call void @nvkm_falcon_dtor(ptr noundef %3) #7
  ret ptr %2
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
