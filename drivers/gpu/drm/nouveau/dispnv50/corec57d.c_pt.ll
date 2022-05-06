; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/corec57d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/corec57d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.102, ptr, ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.nv50_outp_func = type { ptr, ptr }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@corec57d = internal constant %struct.nv50_core_func { ptr @corec57d_init, ptr @corec37d_ntfy_init, ptr @corec37d_caps_init, ptr @corec37d_ntfy_wait_done, ptr @corec37d_update, %struct.anon.102 { ptr @corec37d_wndw_owner }, ptr @headc57d, ptr @crcc57d, ptr null, ptr null, ptr @sorc37d }, align 4
@headc57d = external dso_local constant %struct.nv50_head_func, align 4
@crcc57d = external dso_local constant %struct.nv50_crc_func, align 4
@sorc37d = external dso_local constant %struct.nv50_outp_func, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @corec57d_new(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @core507d_new_(ptr noundef nonnull @corec57d, ptr noundef %0, i32 noundef %1, ptr noundef %2) #2
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core507d_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @corec57d_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 42
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 42) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %106

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262664, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 1, i32 4, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %4, align 4
  store i32 %20, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %4, align 4
  store i32 528388, ptr %23, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %4, align 4
  store i32 15, ptr %25, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i32, ptr %27, i32 1
  store ptr %28, ptr %4, align 4
  store i32 0, ptr %27, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %4, align 4
  store i32 266256, ptr %29, align 4
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %4, align 4
  store i32 1146879, ptr %31, align 4
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %4, align 4
  store i32 528516, ptr %33, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %4, align 4
  store i32 15, ptr %35, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %4, align 4
  store i32 0, ptr %37, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %4, align 4
  store i32 266384, ptr %39, align 4
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %4, align 4
  store i32 1146879, ptr %41, align 4
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i32, ptr %43, i32 1
  store ptr %44, ptr %4, align 4
  store i32 528644, ptr %43, align 4
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %4, align 4
  store i32 15, ptr %45, align 4
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %4, align 4
  store i32 0, ptr %47, align 4
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i32, ptr %49, i32 1
  store ptr %50, ptr %4, align 4
  store i32 266512, ptr %49, align 4
  %51 = load ptr, ptr %4, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %4, align 4
  store i32 1146879, ptr %51, align 4
  %53 = load ptr, ptr %4, align 4
  %54 = getelementptr i32, ptr %53, i32 1
  store ptr %54, ptr %4, align 4
  store i32 528772, ptr %53, align 4
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %4, align 4
  store i32 15, ptr %55, align 4
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %4, align 4
  store i32 0, ptr %57, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %4, align 4
  store i32 266640, ptr %59, align 4
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  store ptr %62, ptr %4, align 4
  store i32 1146879, ptr %61, align 4
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr i32, ptr %63, i32 1
  store ptr %64, ptr %4, align 4
  store i32 528900, ptr %63, align 4
  %65 = load ptr, ptr %4, align 4
  %66 = getelementptr i32, ptr %65, i32 1
  store ptr %66, ptr %4, align 4
  store i32 15, ptr %65, align 4
  %67 = load ptr, ptr %4, align 4
  %68 = getelementptr i32, ptr %67, i32 1
  store ptr %68, ptr %4, align 4
  store i32 0, ptr %67, align 4
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr i32, ptr %69, i32 1
  store ptr %70, ptr %4, align 4
  store i32 266768, ptr %69, align 4
  %71 = load ptr, ptr %4, align 4
  %72 = getelementptr i32, ptr %71, i32 1
  store ptr %72, ptr %4, align 4
  store i32 1146879, ptr %71, align 4
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr i32, ptr %73, i32 1
  store ptr %74, ptr %4, align 4
  store i32 529028, ptr %73, align 4
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr i32, ptr %75, i32 1
  store ptr %76, ptr %4, align 4
  store i32 15, ptr %75, align 4
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr i32, ptr %77, i32 1
  store ptr %78, ptr %4, align 4
  store i32 0, ptr %77, align 4
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr i32, ptr %79, i32 1
  store ptr %80, ptr %4, align 4
  store i32 266896, ptr %79, align 4
  %81 = load ptr, ptr %4, align 4
  %82 = getelementptr i32, ptr %81, i32 1
  store ptr %82, ptr %4, align 4
  store i32 1146879, ptr %81, align 4
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr i32, ptr %83, i32 1
  store ptr %84, ptr %4, align 4
  store i32 529156, ptr %83, align 4
  %85 = load ptr, ptr %4, align 4
  %86 = getelementptr i32, ptr %85, i32 1
  store ptr %86, ptr %4, align 4
  store i32 15, ptr %85, align 4
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr i32, ptr %87, i32 1
  store ptr %88, ptr %4, align 4
  store i32 0, ptr %87, align 4
  %89 = load ptr, ptr %4, align 4
  %90 = getelementptr i32, ptr %89, i32 1
  store ptr %90, ptr %4, align 4
  store i32 267024, ptr %89, align 4
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr i32, ptr %91, i32 1
  store ptr %92, ptr %4, align 4
  store i32 1146879, ptr %91, align 4
  %93 = load ptr, ptr %4, align 4
  %94 = getelementptr i32, ptr %93, i32 1
  store ptr %94, ptr %4, align 4
  store i32 529284, ptr %93, align 4
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr i32, ptr %95, i32 1
  store ptr %96, ptr %4, align 4
  store i32 15, ptr %95, align 4
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr i32, ptr %97, i32 1
  store ptr %98, ptr %4, align 4
  store i32 0, ptr %97, align 4
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr i32, ptr %99, i32 1
  store ptr %100, ptr %4, align 4
  store i32 267152, ptr %99, align 4
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr i32, ptr %101, i32 1
  store ptr %102, ptr %4, align 4
  store i32 1146879, ptr %101, align 4
  %103 = getelementptr inbounds %struct.nv50_core, ptr %0, i32 0, i32 2
  store i8 1, ptr %103, align 8
  %104 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  tail call void %105(ptr noundef %3) #2
  br label %106

106:                                              ; preds = %16, %10
  %107 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %107
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @corec37d_ntfy_init(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @corec37d_caps_init(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @corec37d_ntfy_wait_done(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @corec37d_update(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @corec37d_wndw_owner(ptr noundef) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
