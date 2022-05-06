; ModuleID = '/llk/IR/drivers/mmc/host/mmci_qcom_dml.c_pt.bc'
source_filename = "../drivers/mmc/host/mmci_qcom_dml.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmci_host = type { i32, ptr, ptr, ptr, %struct.mmc_command, ptr, ptr, ptr, i8, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, %struct.timer_list, i32, i32, %struct.sg_mapping_iter, i32, ptr, i8, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }

@qcom_variant_ops = internal global %struct.mmci_host_ops { ptr null, ptr @mmci_dmae_prep_data, ptr @mmci_dmae_unprep_data, ptr @qcom_get_dctrl_cfg, ptr @mmci_dmae_get_next_data, ptr @qcom_dma_setup, ptr @mmci_dmae_release, ptr @qcom_dma_start, ptr @mmci_dmae_finalize, ptr @mmci_dmae_error, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dma-names\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dmas\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"#dma-cells\00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @qcom_variant_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 24
  store ptr @qcom_variant_ops, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmci_dmae_prep_data(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmci_dmae_unprep_data(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @qcom_get_dctrl_cfg(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 4
  %7 = or i32 %6, 1
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmci_dmae_get_next_data(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_dma_setup(ptr noundef %0) #3 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @mmci_dmae_setup(ptr noundef %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #6, !annotation !8
  %12 = tail call i32 @of_property_match_string(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %11
  %15 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef %12, ptr noundef nonnull %3) #6
  %16 = icmp ne i32 %15, 0
  %17 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %16, i1 true, i1 %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %14, %11
  %25 = phi i32 [ %23, %21 ], [ -19, %11 ], [ -19, %14 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #6, !annotation !8
  %26 = call i32 @of_property_match_string(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #6
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef -1, i32 noundef %26, ptr noundef nonnull %2) #6
  %30 = icmp ne i32 %29, 0
  %31 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %30, i1 true, i1 %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %24
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  br label %42

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  %39 = icmp slt i32 %38, 0
  %40 = icmp slt i32 %25, 0
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %35
  call void @mmci_dmae_release(ptr noundef %0) #6
  br label %53

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 2048
  %47 = getelementptr i8, ptr %45, i32 2056
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 1) #6, !srcloc !9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #6, !srcloc !9
  %48 = getelementptr i8, ptr %45, i32 2068
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 4096) #6, !srcloc !9
  %49 = getelementptr i8, ptr %45, i32 2072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 4096) #6, !srcloc !9
  %50 = shl i32 %25, 16
  %51 = or i32 %38, %50
  %52 = getelementptr i8, ptr %45, i32 2076
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %51) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  br label %53

53:                                               ; preds = %43, %42, %1
  %54 = phi i32 [ -22, %42 ], [ 0, %43 ], [ -22, %1 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmci_dmae_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qcom_dma_start(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 2048
  %6 = getelementptr inbounds %struct.mmci_host, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @mmci_dmae_start(ptr noundef %0, ptr noundef %1) #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6
  %16 = and i32 %15, -16
  br i1 %14, label %30, label %17

17:                                               ; preds = %10
  %18 = or i32 %16, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %18) #6, !srcloc !9
  %19 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %4, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %20) #6, !srcloc !9
  %22 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %19, align 4
  %25 = mul i32 %24, %23
  %26 = getelementptr i8, ptr %4, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %25) #6, !srcloc !9
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !11
  %28 = or i32 %27, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %28) #6, !srcloc !9
  %29 = getelementptr i8, ptr %4, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 1) #6, !srcloc !9
  br label %35

30:                                               ; preds = %10
  %31 = or i32 %16, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %31) #6, !srcloc !9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !11
  %33 = and i32 %32, -17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %33) #6, !srcloc !9
  %34 = getelementptr i8, ptr %4, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 1) #6, !srcloc !9
  br label %35

35:                                               ; preds = %30, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  br label %36

36:                                               ; preds = %35, %2
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmci_dmae_finalize(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmci_dmae_error(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmci_dmae_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmci_dmae_start(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
!9 = !{i64 5118434}
!10 = !{i64 2153255613}
!11 = !{i64 5118852}
!12 = !{i64 2153254509}
