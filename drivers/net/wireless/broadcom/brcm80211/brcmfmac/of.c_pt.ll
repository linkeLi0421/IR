; ModuleID = '/llk/IR/drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/brcm80211/brcmfmac/of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.brcmf_mp_device = type { i8, i32, i32, i8, i8, i8, ptr, ptr, %union.anon.118 }
%union.anon.118 = type { %struct.brcmfmac_sdio_pd }
%struct.brcmfmac_sdio_pd = type { i32, i32, i8, i32, i32, i8, i16, i16, ptr }
%struct.brcmfmac_pd_cc = type { i32, [0 x %struct.brcmfmac_pd_cc_entry] }
%struct.brcmfmac_pd_cc_entry = type { [4 x i8], [4 x i8], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"brcm,bcm4329-fmac\00", align 1
@__func__.brcmf_of_probe = private unnamed_addr constant [15 x i8] c"brcmf_of_probe\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"failed to get OF country code map (err=%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"brcm,drive-strength\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"interrupt could not be mapped\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"brcm,ccode-map\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%2c-%2c-%d\00", align 1
@__func__.brcmf_of_get_country_codes = private unnamed_addr constant [27 x i8] c"brcmf_of_get_country_codes\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to read country map %s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @brcmf_of_probe(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str, ptr noundef null) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !8
  %12 = call i32 @of_property_read_string_helper(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #6
  %13 = load ptr, ptr %6, align 4
  %14 = call i32 @strlen(ptr noundef %13)
  %15 = add i32 %14, 1
  %16 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %15, i32 noundef 3520) #6
  %17 = load ptr, ptr %6, align 4
  %18 = call i32 @strscpy(ptr noundef %16, ptr noundef %17, i32 noundef %15) #6
  %19 = load i8, ptr %16, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %27, %11
  %22 = phi i8 [ %30, %27 ], [ %19, %11 ]
  %23 = phi ptr [ %29, %27 ], [ %16, %11 ]
  %24 = phi i32 [ %28, %27 ], [ 0, %11 ]
  %25 = icmp eq i8 %22, 47
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8 45, ptr %23, align 1
  br label %27

27:                                               ; preds = %26, %21
  %28 = add nuw nsw i32 %24, 1
  %29 = getelementptr i8, ptr %16, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %21, label %33

33:                                               ; preds = %27, %11
  %34 = getelementptr inbounds %struct.brcmf_mp_device, ptr %2, i32 0, i32 7
  store ptr %16, ptr %34, align 4
  call void @of_node_put(ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %35

35:                                               ; preds = %33, %3
  %36 = icmp eq ptr %8, null
  br i1 %36, label %109, label %37

37:                                               ; preds = %35
  %38 = call i32 @of_device_is_compatible(ptr noundef nonnull %8, ptr noundef nonnull @.str.2) #6
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %109, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %7, align 8
  %42 = call i32 @of_property_read_string_helper(ptr noundef %41, ptr noundef nonnull @.str.7, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = icmp eq i32 %42, -22
  br i1 %45, label %82, label %77

46:                                               ; preds = %40
  %47 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %42, i32 12) #6
  %48 = extractvalue { i32, i1 } %47, 1
  %49 = extractvalue { i32, i1 } %47, 0
  %50 = call i32 @llvm.uadd.sat.i32(i32 %49, i32 4) #6
  %51 = select i1 %48, i32 -1, i32 %50
  %52 = call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %51, i32 noundef 3520) #6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %77, label %54

54:                                               ; preds = %46
  store i32 %42, ptr %52, align 4
  %55 = icmp eq i32 %42, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %72, %54
  %57 = phi i32 [ %73, %72 ], [ 0, %54 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !8
  %58 = call i32 @of_property_read_string_helper(ptr noundef %41, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %57) #6
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = getelementptr %struct.brcmfmac_pd_cc, ptr %52, i32 0, i32 1, i32 %57
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr %struct.brcmfmac_pd_cc, ptr %52, i32 0, i32 1, i32 %57, i32 1
  %64 = getelementptr %struct.brcmfmac_pd_cc, ptr %52, i32 0, i32 1, i32 %57, i32 2
  %65 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %62, ptr noundef nonnull @.str.8, ptr noundef %61, ptr noundef %63, ptr noundef %64) #6
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  %68 = call i32 @net_ratelimit() #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_of_get_country_codes, ptr noundef nonnull @.str.9, ptr noundef %71) #6
  br label %72

72:                                               ; preds = %70, %67, %60, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  %73 = add nuw nsw i32 %57, 1
  %74 = icmp eq i32 %73, %42
  br i1 %74, label %75, label %56

75:                                               ; preds = %72, %54
  %76 = getelementptr inbounds %struct.brcmf_mp_device, ptr %2, i32 0, i32 6
  store ptr %52, ptr %76, align 4
  br label %82

77:                                               ; preds = %46, %44
  %78 = phi i32 [ %42, %44 ], [ -12, %46 ]
  %79 = call i32 @net_ratelimit() #6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_of_probe, ptr noundef nonnull @.str.3, i32 noundef %78) #6
  br label %82

82:                                               ; preds = %81, %77, %75, %44
  %83 = icmp eq i32 %1, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %82
  %85 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #6
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, ptr %5, align 4
  %89 = getelementptr inbounds %struct.brcmf_mp_device, ptr %2, i32 0, i32 8, i32 0, i32 1
  store i32 %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %92 = icmp eq ptr %91, null
  br i1 %92, label %109, label %93

93:                                               ; preds = %90
  %94 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %8, i32 noundef 0) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = call i32 @net_ratelimit() #6
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  call void (ptr, ptr, ptr, ...) @__brcmf_err(ptr noundef null, ptr noundef nonnull @__func__.brcmf_of_probe, ptr noundef nonnull @.str.6) #6
  br label %109

100:                                              ; preds = %93
  %101 = call ptr @irq_get_irq_data(i32 noundef %94) #6
  %102 = getelementptr inbounds %struct.irq_data, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 15
  %106 = getelementptr inbounds %struct.brcmf_mp_device, ptr %2, i32 0, i32 8, i32 0, i32 2
  store i8 1, ptr %106, align 4
  %107 = getelementptr inbounds %struct.brcmf_mp_device, ptr %2, i32 0, i32 8, i32 0, i32 3
  store i32 %94, ptr %107, align 4
  %108 = getelementptr inbounds %struct.brcmf_mp_device, ptr %2, i32 0, i32 8, i32 0, i32 4
  store i32 %105, ptr %108, align 4
  br label %109

109:                                              ; preds = %100, %99, %96, %90, %82, %37, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__brcmf_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
