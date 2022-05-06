; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/oimm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/oimm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.128 = type { i32, i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.82, %struct.anon.83, %struct.anon.85, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.87, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.99 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.82 = type { ptr, i32, i32, i8 }
%struct.anon.83 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.84] }
%struct.anon.84 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.85 = type { i64, i64 }
%struct.anon.86 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.anon.87 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.94, %struct.anon.95, %struct.anon.96, %struct.anon.97 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.88, i8 }
%union.anon.88 = type { %struct.anon.92 }
%struct.anon.92 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.94 = type { i32 }
%struct.anon.95 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.96 = type { i16, i16 }
%struct.anon.97 = type { i16, i16, i16, %struct.anon.98, i16 }
%struct.anon.98 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.99 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.72, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.81, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.72 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.81 = type { i32, ptr }
%struct.nvif_sclass = type { i32, i32, i32 }

@nv50_oimm_init.oimms = internal unnamed_addr constant [6 x %struct.anon.128] [%struct.anon.128 { i32 37243, i32 0, ptr @oimm507b_init }, %struct.anon.128 { i32 36987, i32 0, ptr @oimm507b_init }, %struct.anon.128 { i32 34171, i32 0, ptr @oimm507b_init }, %struct.anon.128 { i32 33403, i32 0, ptr @oimm507b_init }, %struct.anon.128 { i32 20603, i32 0, ptr @oimm507b_init }, %struct.anon.128 zeroinitializer], align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: No supported overlay immediate class\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_oimm_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store ptr null, ptr %3, align 4, !annotation !8
  %12 = call i32 @nvif_object_sclass_get(ptr noundef %11, ptr noundef nonnull %3) #4
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = icmp eq i32 %12, 0
  %16 = load ptr, ptr %3, align 4
  br i1 %15, label %102, label %18

17:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %103

18:                                               ; preds = %31, %14
  %19 = phi i32 [ %32, %31 ], [ 0, %14 ]
  %20 = getelementptr %struct.nvif_sclass, ptr %16, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 37243
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = getelementptr %struct.nvif_sclass, ptr %16, i32 %19, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr %struct.nvif_sclass, ptr %16, i32 %19, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %111

31:                                               ; preds = %27, %23, %18
  %32 = add nuw nsw i32 %19, 1
  %33 = icmp eq i32 %32, %12
  br i1 %33, label %34, label %18

34:                                               ; preds = %31
  br i1 %15, label %102, label %35

35:                                               ; preds = %48, %34
  %36 = phi i32 [ %49, %48 ], [ 0, %34 ]
  %37 = getelementptr %struct.nvif_sclass, ptr %16, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 36987
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = getelementptr %struct.nvif_sclass, ptr %16, i32 %36, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr %struct.nvif_sclass, ptr %16, i32 %36, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %111

48:                                               ; preds = %44, %40, %35
  %49 = add nuw nsw i32 %36, 1
  %50 = icmp eq i32 %49, %12
  br i1 %50, label %51, label %35

51:                                               ; preds = %48
  br i1 %15, label %102, label %52

52:                                               ; preds = %65, %51
  %53 = phi i32 [ %66, %65 ], [ 0, %51 ]
  %54 = getelementptr %struct.nvif_sclass, ptr %16, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 34171
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = getelementptr %struct.nvif_sclass, ptr %16, i32 %53, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr %struct.nvif_sclass, ptr %16, i32 %53, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %111

65:                                               ; preds = %61, %57, %52
  %66 = add nuw nsw i32 %53, 1
  %67 = icmp eq i32 %66, %12
  br i1 %67, label %68, label %52

68:                                               ; preds = %65
  br i1 %15, label %102, label %69

69:                                               ; preds = %82, %68
  %70 = phi i32 [ %83, %82 ], [ 0, %68 ]
  %71 = getelementptr %struct.nvif_sclass, ptr %16, i32 %70
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 33403
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = getelementptr %struct.nvif_sclass, ptr %16, i32 %70, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr %struct.nvif_sclass, ptr %16, i32 %70, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %78, %74, %69
  %83 = add nuw nsw i32 %70, 1
  %84 = icmp eq i32 %83, %12
  br i1 %84, label %85, label %69

85:                                               ; preds = %82
  br i1 %15, label %102, label %86

86:                                               ; preds = %99, %85
  %87 = phi i32 [ %100, %99 ], [ 0, %85 ]
  %88 = getelementptr %struct.nvif_sclass, ptr %16, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 20603
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = getelementptr %struct.nvif_sclass, ptr %16, i32 %87, i32 1
  %93 = load i32, ptr %92, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr %struct.nvif_sclass, ptr %16, i32 %87, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %95, %91, %86
  %100 = add nuw nsw i32 %87, 1
  %101 = icmp eq i32 %100, %12
  br i1 %101, label %102, label %86

102:                                              ; preds = %99, %85, %68, %51, %34, %14
  call void @nvif_object_sclass_put(ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  br label %103

103:                                              ; preds = %102, %17
  %104 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.drm_device, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str, ptr noundef %110) #5
  br label %118

111:                                              ; preds = %95, %78, %61, %44, %27
  %112 = phi i32 [ 0, %27 ], [ 1, %44 ], [ 2, %61 ], [ 3, %78 ], [ 4, %95 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  %113 = getelementptr [6 x %struct.anon.128], ptr @nv50_oimm_init.oimms, i32 0, i32 %112
  %114 = getelementptr [6 x %struct.anon.128], ptr @nv50_oimm_init.oimms, i32 0, i32 %112, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = load i32, ptr %113, align 4
  %117 = call i32 %115(ptr noundef %0, i32 noundef %116, ptr noundef %1) #4
  br label %118

118:                                              ; preds = %111, %103
  %119 = phi i32 [ -19, %103 ], [ %117, %111 ]
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oimm507b_init(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
