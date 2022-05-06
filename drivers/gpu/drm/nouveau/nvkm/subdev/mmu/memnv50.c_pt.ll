; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/memnv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/memnv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.123], i32, [16 x %struct.anon.124], ptr, %struct.anon.125, %struct.anon.125, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.123 = type { i8, i64 }
%struct.anon.124 = type { i8, i8 }
%struct.anon.125 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_mem_map_v0 = type { i8, i8, i8, i8 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nv50_mem_v0 = type { i8, i8, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_mem_map(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.nv50_vmm_map_v0, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %8) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %8, i8 0, i32 5, i1 false)
  %9 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %10) #4
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i64 %14(ptr noundef %1) #4
  %16 = icmp ugt i32 %3, 3
  br i1 %16, label %17, label %32

17:                                               ; preds = %7
  %18 = load i8, ptr %2, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = icmp eq i32 %3, 4
  br i1 %21, label %22, label %57

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.nv50_mem_map_v0, ptr %2, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %8, i32 0, i32 1
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.nv50_mem_map_v0, ptr %2, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %8, i32 0, i32 3
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.nv50_mem_map_v0, ptr %2, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %8, i32 0, i32 4
  store i8 %30, ptr %31, align 1
  br label %34

32:                                               ; preds = %7
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %32, %22
  %35 = tail call i32 @nvkm_vmm_get(ptr noundef %11, i8 noundef zeroext 12, i64 noundef %15, ptr noundef %6) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr inbounds %struct.nvkm_device_func, ptr %38, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %10, i32 noundef 1) #4
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr inbounds %struct.nvkm_vma, ptr %43, i32 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %45, %42
  store i64 %46, ptr %4, align 8
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.nvkm_vma, ptr %47, i32 0, i32 3
  %49 = load i56, ptr %48, align 8
  %50 = and i56 %49, 1125899906842623
  %51 = zext i56 %50 to i64
  store i64 %51, ptr %5, align 8
  %52 = load ptr, ptr %1, align 4
  %53 = getelementptr inbounds %struct.nvkm_memory_func, ptr %52, i32 0, i32 9
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %6, align 4
  %56 = call i32 %54(ptr noundef %1, i64 noundef 0, ptr noundef %11, ptr noundef %55, ptr noundef nonnull %8, i32 noundef 5) #4
  br label %57

57:                                               ; preds = %37, %34, %32, %20, %17
  %58 = phi i32 [ %56, %37 ], [ %35, %34 ], [ -38, %32 ], [ -38, %17 ], [ -7, %20 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %8) #4
  ret i32 %58
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar1_vmm(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_mem_new(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp ugt i32 %5, 2
  br i1 %8, label %9, label %22

9:                                                ; preds = %7
  %10 = load i8, ptr %4, align 1
  %11 = icmp eq i8 %10, 0
  %12 = icmp eq i32 %5, 3
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nv50_mem_v0, ptr %4, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  %18 = getelementptr inbounds %struct.nv50_mem_v0, ptr %4, i32 0, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %17, i8 1, i8 2
  br label %24

22:                                               ; preds = %7
  %23 = icmp eq i32 %5, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %22, %14
  %25 = phi i1 [ %20, %14 ], [ false, %22 ]
  %26 = phi i8 [ %21, %14 ], [ 1, %22 ]
  %27 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @nvkm_ram_get(ptr noundef %28, i8 noundef zeroext 1, i8 noundef zeroext %26, i8 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext %25, i1 noundef zeroext false, ptr noundef %6) #4
  br label %30

30:                                               ; preds = %24, %22, %9
  %31 = phi i32 [ %29, %24 ], [ -38, %22 ], [ -38, %9 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
