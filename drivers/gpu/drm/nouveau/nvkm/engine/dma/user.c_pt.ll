; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/dma/user.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/user.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }

@nvkm_dmaobj_func = internal constant %struct.nvkm_object_func { ptr @nvkm_dmaobj_dtor, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_dmaobj_bind, ptr null }, align 4
@.str = private unnamed_addr constant [52 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create dma vers %d target %d access %d start %016llx limit %016llx\0A\00", align 1
@switch.table.nvkm_dmaobj_ctor = private unnamed_addr constant [5 x i32] [i32 3, i32 0, i32 1, i32 2, i32 2], align 4
@switch.table.nvkm_dmaobj_ctor.2 = private unnamed_addr constant [4 x i32] [i32 8, i32 1, i32 2, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_dmaobj_search(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @nvkm_object_search(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @nvkm_dmaobj_func) #4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %5 = select i1 %4, i32 0, i32 -8
  %6 = getelementptr i8, ptr %3, i32 %5
  ret ptr %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_dmaobj_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %4, align 4
  %11 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %5, i32 0, i32 2
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_dmaobj_func, ptr noundef %2, ptr noundef %11) #4
  store ptr %0, ptr %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %5, i32 0, i32 1
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_client, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 8
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %26

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.nvkm_client, ptr %14, i32 0, i32 1
  %20 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %4, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %24) #5
  br label %26

26:                                               ; preds = %18, %6
  %27 = icmp ugt i32 %10, 23
  br i1 %27, label %28, label %84

28:                                               ; preds = %26
  %29 = load i8, ptr %7, align 8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %84

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %7, i32 24
  %33 = add i32 %10, -24
  %34 = load ptr, ptr %13, align 4
  %35 = getelementptr inbounds %struct.nvkm_client, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  %37 = icmp ugt i32 %36, 4
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.nvkm_client, ptr %34, i32 0, i32 1
  %40 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 2
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 4
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 5
  %53 = load i64, ptr %52, align 8
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef 0, i32 noundef %46, i32 noundef %49, i64 noundef %51, i64 noundef %53) #5
  br label %55

55:                                               ; preds = %38, %31
  %56 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %5, i32 0, i32 3
  store i32 %58, ptr %59, align 8
  %60 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 2
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %5, i32 0, i32 4
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 4
  %65 = load i64, ptr %64, align 8
  %66 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %5, i32 0, i32 5
  store i64 %65, ptr %66, align 8
  %67 = getelementptr inbounds %struct.nv_dma_v0, ptr %7, i32 0, i32 5
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %5, i32 0, i32 6
  store i64 %68, ptr %69, align 8
  store ptr %32, ptr %3, align 4
  store i32 %33, ptr %4, align 4
  %70 = load i64, ptr %66, align 8
  %71 = load i64, ptr %69, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %84, label %73

73:                                               ; preds = %55
  %74 = load i32, ptr %59, align 8
  %75 = icmp ult i32 %74, 5
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = getelementptr inbounds [5 x i32], ptr @switch.table.nvkm_dmaobj_ctor, i32 0, i32 %74
  %78 = load i32, ptr %77, align 4
  store i32 %78, ptr %59, align 8
  %79 = load i32, ptr %63, align 4
  %80 = icmp ult i32 %79, 4
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = getelementptr inbounds [4 x i32], ptr @switch.table.nvkm_dmaobj_ctor.2, i32 0, i32 %79
  %83 = load i32, ptr %82, align 4
  store i32 %83, ptr %63, align 4
  br label %84

84:                                               ; preds = %81, %76, %73, %55, %28, %26
  %85 = phi i32 [ -22, %55 ], [ -22, %73 ], [ -22, %76 ], [ -38, %28 ], [ -38, %26 ], [ 0, %81 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal ptr @nvkm_dmaobj_dtor(ptr noundef readnone %0) #3 {
  %2 = getelementptr i8, ptr %0, i32 -8
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_dmaobj_bind(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %5, ptr noundef %1, i32 noundef %2, ptr noundef %3) #4
  ret i32 %8
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
