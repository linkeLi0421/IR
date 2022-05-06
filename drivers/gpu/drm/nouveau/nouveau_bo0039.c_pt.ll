; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_bo0039.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo0039.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nouveau_channel = type { %struct.anon, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.99, i8, ptr, %struct.anon.100, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.99 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.81, %struct.anon.82, %struct.anon.84, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.86, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.98 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i8 }
%struct.anon.82 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.83] }
%struct.anon.83 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.84 = type { i64, i64 }
%struct.anon.85 = type { i32, i64 }
%struct.anon.86 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.87, i8 }
%union.anon.87 = type { %struct.anon.91 }
%struct.anon.91 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.93 = type { i32 }
%struct.anon.94 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.95 = type { i16, i16 }
%struct.anon.96 = type { i16, i16, i16, %struct.anon.97, i16 }
%struct.anon.97 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, %struct.mutex, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_bo_move_m2mf(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ttm_resource, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 7, i32 3
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i32 [ %12, %10 ], [ -2147483645, %4 ]
  %15 = load i32, ptr %2, align 4
  %16 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 7, i32 3
  %21 = load i32, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i32 [ %21, %19 ], [ -2147483645, %13 ]
  %24 = load i32, ptr %3, align 4
  %25 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i32, ptr %26, i32 3
  %28 = getelementptr inbounds %struct.nvif_push, ptr %6, i32 0, i32 6
  %29 = load ptr, ptr %28, align 4
  %30 = icmp ult ptr %27, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load ptr, ptr %6, align 8
  %33 = tail call i32 %32(ptr noundef %6, i32 noundef 3) #2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %93

35:                                               ; preds = %31
  %36 = load ptr, ptr %25, align 4
  br label %37

37:                                               ; preds = %35, %22
  %38 = phi ptr [ %36, %35 ], [ %26, %22 ]
  %39 = getelementptr inbounds %struct.ttm_resource, ptr %3, i32 0, i32 1
  %40 = getelementptr i32, ptr %38, i32 1
  store ptr %40, ptr %25, align 4
  store i32 557444, ptr %38, align 4
  %41 = load ptr, ptr %25, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %25, align 4
  store i32 %14, ptr %41, align 4
  %43 = load ptr, ptr %25, align 4
  %44 = getelementptr i32, ptr %43, i32 1
  store ptr %44, ptr %25, align 4
  store i32 %23, ptr %43, align 4
  %45 = load i32, ptr %39, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %93, label %47

47:                                               ; preds = %37
  %48 = shl i32 %15, 12
  %49 = shl i32 %24, 12
  br label %50

50:                                               ; preds = %64, %47
  %51 = phi i32 [ %90, %64 ], [ %48, %47 ]
  %52 = phi i32 [ %91, %64 ], [ %49, %47 ]
  %53 = phi i32 [ %88, %64 ], [ %45, %47 ]
  %54 = load ptr, ptr %25, align 4
  %55 = getelementptr i32, ptr %54, i32 11
  %56 = load ptr, ptr %28, align 4
  %57 = icmp ult ptr %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = load ptr, ptr %6, align 8
  %60 = tail call i32 %59(ptr noundef %6, i32 noundef 11) #2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %58
  %63 = load ptr, ptr %25, align 4
  br label %64

64:                                               ; preds = %62, %50
  %65 = phi ptr [ %63, %62 ], [ %54, %50 ]
  %66 = tail call i32 @llvm.umin.i32(i32 %53, i32 2047)
  %67 = getelementptr i32, ptr %65, i32 1
  store ptr %67, ptr %25, align 4
  store i32 2130700, ptr %65, align 4
  %68 = load ptr, ptr %25, align 4
  %69 = getelementptr i32, ptr %68, i32 1
  store ptr %69, ptr %25, align 4
  store i32 %51, ptr %68, align 4
  %70 = load ptr, ptr %25, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  store ptr %71, ptr %25, align 4
  store i32 %52, ptr %70, align 4
  %72 = load ptr, ptr %25, align 4
  %73 = getelementptr i32, ptr %72, i32 1
  store ptr %73, ptr %25, align 4
  store i32 4096, ptr %72, align 4
  %74 = load ptr, ptr %25, align 4
  %75 = getelementptr i32, ptr %74, i32 1
  store ptr %75, ptr %25, align 4
  store i32 4096, ptr %74, align 4
  %76 = load ptr, ptr %25, align 4
  %77 = getelementptr i32, ptr %76, i32 1
  store ptr %77, ptr %25, align 4
  store i32 4096, ptr %76, align 4
  %78 = load ptr, ptr %25, align 4
  %79 = getelementptr i32, ptr %78, i32 1
  store ptr %79, ptr %25, align 4
  store i32 %66, ptr %78, align 4
  %80 = load ptr, ptr %25, align 4
  %81 = getelementptr i32, ptr %80, i32 1
  store ptr %81, ptr %25, align 4
  store i32 257, ptr %80, align 4
  %82 = load ptr, ptr %25, align 4
  %83 = getelementptr i32, ptr %82, i32 1
  store ptr %83, ptr %25, align 4
  store i32 0, ptr %82, align 4
  %84 = load ptr, ptr %25, align 4
  %85 = getelementptr i32, ptr %84, i32 1
  store ptr %85, ptr %25, align 4
  store i32 295168, ptr %84, align 4
  %86 = load ptr, ptr %25, align 4
  %87 = getelementptr i32, ptr %86, i32 1
  store ptr %87, ptr %25, align 4
  store i32 0, ptr %86, align 4
  %88 = sub i32 %53, %66
  %89 = shl nuw nsw i32 %66, 12
  %90 = add i32 %51, %89
  %91 = add i32 %89, %52
  %92 = icmp eq i32 %88, 0
  br i1 %92, label %93, label %50

93:                                               ; preds = %64, %58, %37, %31
  %94 = phi i32 [ %33, %31 ], [ 0, %37 ], [ 0, %64 ], [ %60, %58 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_bo_move_init(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 4
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 4) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 294912, ptr %18, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i32, ptr %20, i32 1
  store ptr %21, ptr %5, align 4
  store i32 %1, ptr %20, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i32, ptr %22, i32 1
  store ptr %23, ptr %5, align 4
  store i32 295296, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 16, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i32, ptr %28, i32 1
  store ptr %29, ptr %5, align 4
  store i32 %27, ptr %28, align 4
  br label %30

30:                                               ; preds = %17, %11
  %31 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %31
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
