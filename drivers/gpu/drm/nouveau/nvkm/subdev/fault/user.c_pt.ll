; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/fault/user.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fault/user.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.124 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_fault_func = type { ptr, ptr, ptr, ptr, %struct.anon.89, %struct.anon.90 }
%struct.anon.89 = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.anon.90 = type { %struct.nvkm_sclass, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fault = type { ptr, %struct.nvkm_subdev, [2 x ptr], i32, %struct.nvkm_event, %struct.nvkm_notify, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_fault_buffer = type { %struct.nvkm_object, ptr, i32, i32, i32, i32, ptr, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvif_clb069_v0 = type { i8, [3 x i8], i32, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@nvkm_ufault = internal constant %struct.nvkm_object_func { ptr @nvkm_ufault_dtor, ptr @nvkm_ufault_init, ptr @nvkm_ufault_fini, ptr null, ptr @nvkm_ufault_ntfy, ptr @nvkm_ufault_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ufault_new(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 37
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_fault_func, ptr %8, i32 0, i32 5, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.nvkm_fault, ptr %7, i32 0, i32 2, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ugt i32 %3, 15
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = load i8, ptr %2, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = icmp eq i32 %3, 16
  br i1 %18, label %19, label %29

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %12, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvif_clb069_v0, ptr %2, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %12, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvif_clb069_v0, ptr %2, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %12, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvif_clb069_v0, ptr %2, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_ufault, ptr noundef %1, ptr noundef %12) #4
  store ptr %12, ptr %4, align 4
  br label %29

29:                                               ; preds = %19, %17, %14, %5
  %30 = phi i32 [ 0, %19 ], [ -38, %5 ], [ -38, %14 ], [ -7, %17 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal noalias ptr @nvkm_ufault_dtor(ptr nocapture noundef readnone %0) #2 {
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ufault_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_fault_func, ptr %4, i32 0, i32 4, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ufault_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_fault_func, ptr %5, i32 0, i32 4, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_ufault_ntfy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_fault, ptr %7, i32 0, i32 4
  store ptr %8, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ufault_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_fault, ptr %8, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  store i32 0, ptr %3, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_device_func, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %10, i32 noundef 3) #4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 7
  %17 = load i64, ptr %16, align 8
  %18 = add i64 %17, %15
  store i64 %18, ptr %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_fault_buffer, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i64 %23(ptr noundef %20) #4
  store i64 %24, ptr %5, align 8
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
