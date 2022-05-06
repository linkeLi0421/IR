; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/ovly.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/ovly.c"
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

@nv50_ovly_new.ovlys = internal unnamed_addr constant [7 x %struct.anon.128] [%struct.anon.128 { i32 37246, i32 0, ptr @ovly917e_new }, %struct.anon.128 { i32 36990, i32 0, ptr @ovly907e_new }, %struct.anon.128 { i32 34174, i32 0, ptr @ovly827e_new }, %struct.anon.128 { i32 33662, i32 0, ptr @ovly827e_new }, %struct.anon.128 { i32 33406, i32 0, ptr @ovly827e_new }, %struct.anon.128 { i32 20606, i32 0, ptr @ovly507e_new }, %struct.anon.128 zeroinitializer], align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: No supported overlay class\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_ovly_new(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store ptr null, ptr %4, align 4, !annotation !8
  %13 = call i32 @nvif_object_sclass_get(ptr noundef %12, ptr noundef nonnull %4) #4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = icmp eq i32 %13, 0
  %17 = load ptr, ptr %4, align 4
  br i1 %16, label %120, label %19

18:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %121

19:                                               ; preds = %32, %15
  %20 = phi i32 [ %33, %32 ], [ 0, %15 ]
  %21 = getelementptr %struct.nvif_sclass, ptr %17, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 37246
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = getelementptr %struct.nvif_sclass, ptr %17, i32 %20, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.nvif_sclass, ptr %17, i32 %20, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %129

32:                                               ; preds = %28, %24, %19
  %33 = add nuw nsw i32 %20, 1
  %34 = icmp eq i32 %33, %13
  br i1 %34, label %35, label %19

35:                                               ; preds = %32
  br i1 %16, label %120, label %36

36:                                               ; preds = %49, %35
  %37 = phi i32 [ %50, %49 ], [ 0, %35 ]
  %38 = getelementptr %struct.nvif_sclass, ptr %17, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 36990
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = getelementptr %struct.nvif_sclass, ptr %17, i32 %37, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr %struct.nvif_sclass, ptr %17, i32 %37, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %129

49:                                               ; preds = %45, %41, %36
  %50 = add nuw nsw i32 %37, 1
  %51 = icmp eq i32 %50, %13
  br i1 %51, label %52, label %36

52:                                               ; preds = %49
  br i1 %16, label %120, label %53

53:                                               ; preds = %66, %52
  %54 = phi i32 [ %67, %66 ], [ 0, %52 ]
  %55 = getelementptr %struct.nvif_sclass, ptr %17, i32 %54
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 34174
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = getelementptr %struct.nvif_sclass, ptr %17, i32 %54, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.nvif_sclass, ptr %17, i32 %54, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %129

66:                                               ; preds = %62, %58, %53
  %67 = add nuw nsw i32 %54, 1
  %68 = icmp eq i32 %67, %13
  br i1 %68, label %69, label %53

69:                                               ; preds = %66
  br i1 %16, label %120, label %70

70:                                               ; preds = %83, %69
  %71 = phi i32 [ %84, %83 ], [ 0, %69 ]
  %72 = getelementptr %struct.nvif_sclass, ptr %17, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 33662
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = getelementptr %struct.nvif_sclass, ptr %17, i32 %71, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = getelementptr %struct.nvif_sclass, ptr %17, i32 %71, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %129

83:                                               ; preds = %79, %75, %70
  %84 = add nuw nsw i32 %71, 1
  %85 = icmp eq i32 %84, %13
  br i1 %85, label %86, label %70

86:                                               ; preds = %83
  br i1 %16, label %120, label %87

87:                                               ; preds = %100, %86
  %88 = phi i32 [ %101, %100 ], [ 0, %86 ]
  %89 = getelementptr %struct.nvif_sclass, ptr %17, i32 %88
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 33406
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = getelementptr %struct.nvif_sclass, ptr %17, i32 %88, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = getelementptr %struct.nvif_sclass, ptr %17, i32 %88, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %96, %92, %87
  %101 = add nuw nsw i32 %88, 1
  %102 = icmp eq i32 %101, %13
  br i1 %102, label %103, label %87

103:                                              ; preds = %100
  br i1 %16, label %120, label %104

104:                                              ; preds = %117, %103
  %105 = phi i32 [ %118, %117 ], [ 0, %103 ]
  %106 = getelementptr %struct.nvif_sclass, ptr %17, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = icmp eq i32 %107, 20606
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = getelementptr %struct.nvif_sclass, ptr %17, i32 %105, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = getelementptr %struct.nvif_sclass, ptr %17, i32 %105, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %113, %109, %104
  %118 = add nuw nsw i32 %105, 1
  %119 = icmp eq i32 %118, %13
  br i1 %119, label %120, label %104

120:                                              ; preds = %117, %103, %86, %69, %52, %35, %15
  call void @nvif_object_sclass_put(ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %121

121:                                              ; preds = %120, %18
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nouveau_drm, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.drm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str, ptr noundef %128) #5
  br label %140

129:                                              ; preds = %113, %96, %79, %62, %45, %28
  %130 = phi i32 [ 0, %28 ], [ 1, %45 ], [ 2, %62 ], [ 3, %79 ], [ 4, %96 ], [ 5, %113 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  %131 = getelementptr [7 x %struct.anon.128], ptr @nv50_ovly_new.ovlys, i32 0, i32 %130
  %132 = getelementptr [7 x %struct.anon.128], ptr @nv50_ovly_new.ovlys, i32 0, i32 %130, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = load i32, ptr %131, align 4
  %135 = call i32 %133(ptr noundef %0, i32 noundef %1, i32 noundef %134, ptr noundef %2) #4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load ptr, ptr %2, align 4
  %139 = call i32 @nv50_oimm_init(ptr noundef %0, ptr noundef %138) #4
  br label %140

140:                                              ; preds = %137, %129, %121
  %141 = phi i32 [ -19, %121 ], [ %139, %137 ], [ %135, %129 ]
  ret i32 %141
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly917e_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly907e_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly827e_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly507e_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_oimm_init(ptr noundef, ptr noundef) local_unnamed_addr #1

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
