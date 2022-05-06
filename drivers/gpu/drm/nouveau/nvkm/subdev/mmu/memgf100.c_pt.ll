; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/memgf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/memgf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
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
%struct.gf100_mem_map_v0 = type { i8, i8, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gf100_mem_v0 = type { i8, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_mem_map(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.gf100_vmm_map_v0, align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %8) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %8, i8 0, i32 5, i1 false)
  %9 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %10) #4
  %12 = icmp ugt i32 %3, 2
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load i8, ptr %2, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = icmp eq i32 %3, 3
  br i1 %17, label %18, label %60

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.gf100_mem_map_v0, ptr %2, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %8, i32 0, i32 2
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.gf100_mem_map_v0, ptr %2, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.gf100_vmm_map_v0, ptr %8, i32 0, i32 4
  store i8 %23, ptr %24, align 1
  br label %27

25:                                               ; preds = %7
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %25, %18
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call zeroext i8 %30(ptr noundef %1) #4
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr inbounds %struct.nvkm_memory_func, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i64 %34(ptr noundef %1) #4
  %36 = tail call i32 @nvkm_vmm_get(ptr noundef %11, i8 noundef zeroext %31, i64 noundef %35, ptr noundef %6) #4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %27
  %39 = load ptr, ptr %1, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory_func, ptr %39, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %6, align 4
  %43 = call i32 %41(ptr noundef %1, i64 noundef 0, ptr noundef %11, ptr noundef %42, ptr noundef nonnull %8, i32 noundef 5) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = load ptr, ptr %10, align 8
  %47 = getelementptr inbounds %struct.nvkm_device_func, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 %48(ptr noundef %10, i32 noundef 1) #4
  %50 = zext i32 %49 to i64
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr inbounds %struct.nvkm_vma, ptr %51, i32 0, i32 2
  %53 = load i64, ptr %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, ptr %4, align 8
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr inbounds %struct.nvkm_vma, ptr %55, i32 0, i32 3
  %57 = load i56, ptr %56, align 8
  %58 = and i56 %57, 1125899906842623
  %59 = zext i56 %58 to i64
  store i64 %59, ptr %5, align 8
  br label %60

60:                                               ; preds = %45, %38, %27, %25, %16, %13
  %61 = phi i32 [ 0, %45 ], [ %36, %27 ], [ %43, %38 ], [ -38, %25 ], [ -38, %13 ], [ -7, %16 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %8) #4
  ret i32 %61
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
define dso_local i32 @gf100_mem_new(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i64 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = icmp ugt i32 %5, 1
  br i1 %8, label %9, label %18

9:                                                ; preds = %7
  %10 = load i8, ptr %4, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = icmp eq i32 %5, 2
  br i1 %13, label %14, label %30

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.gf100_mem_v0, ptr %4, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = icmp ne i8 %16, 0
  br label %20

18:                                               ; preds = %7
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %18, %14
  %21 = phi i1 [ %17, %14 ], [ false, %18 ]
  %22 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %1
  %23 = load i8, ptr %22, align 2
  %24 = and i8 %23, 12
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i8 3, i8 1
  %27 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @nvkm_ram_get(ptr noundef %28, i8 noundef zeroext %26, i8 noundef zeroext 1, i8 noundef zeroext %2, i64 noundef %3, i1 noundef zeroext %21, i1 noundef zeroext false, ptr noundef %6) #4
  br label %30

30:                                               ; preds = %20, %18, %12, %9
  %31 = phi i32 [ %29, %20 ], [ -38, %18 ], [ -38, %9 ], [ -7, %12 ]
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
