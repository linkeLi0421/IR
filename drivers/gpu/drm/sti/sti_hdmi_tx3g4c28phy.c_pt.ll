; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_hdmi_tx3g4c28phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdmi_phy_ops = type { ptr, ptr }
%struct.plldividers_s = type { i32, i32, i32, i32 }
%struct.hdmi_phy_config = type { i32, i32, [4 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sti_hdmi = type { %struct.device, ptr, %struct.drm_display_mode, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, i8, %struct.wait_queue_head, i8, ptr, ptr, i32, i8, ptr, %struct.hdmi_audio_params, ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hdmi_audio_params = type { i8, i32, i32, %struct.hdmi_audio_infoframe }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }

@tx3g4c28phy_ops = dso_local local_unnamed_addr global %struct.hdmi_phy_ops { ptr @sti_hdmi_tx3g4c28phy_start, ptr @sti_hdmi_tx3g4c28phy_stop }, align 4
@.str = private unnamed_addr constant [16 x i8] c"ckpxpll = %dHz\0A\00", align 1
@plldividers = internal unnamed_addr constant [5 x %struct.plldividers_s] [%struct.plldividers_s { i32 0, i32 20000000, i32 1, i32 3 }, %struct.plldividers_s { i32 20000000, i32 42500000, i32 2, i32 3 }, %struct.plldividers_s { i32 42500000, i32 85000000, i32 4, i32 2 }, %struct.plldividers_s { i32 85000000, i32 170000000, i32 8, i32 1 }, %struct.plldividers_s { i32 170000000, i32 340000000, i32 16, i32 0 }], align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"input TMDS clock speed (%d) not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"pllctrl = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"hdmi phy pll not locked\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"got PHY PLL Lock\0A\00", align 1
@hdmiphy_config = internal unnamed_addr constant [2 x %struct.hdmi_phy_config] [%struct.hdmi_phy_config { i32 0, i32 250000000, [4 x i32] zeroinitializer }, %struct.hdmi_phy_config { i32 250000000, i32 300000000, [4 x i32] [i32 4368, i32 0, i32 0, i32 0] }], align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"serializer cfg 0x%x 0x%x 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"hdmi phy pll not well disabled\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @sti_hdmi_tx3g4c28phy_start(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = mul i32 %4, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %5) #4
  %6 = icmp ult i32 %5, 20000000
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = icmp ult i32 %5, 42500000
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = icmp ult i32 %5, 85000000
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = icmp ult i32 %5, 170000000
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %5, 340000000
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %5) #4
  br label %74

16:                                               ; preds = %13, %11, %9, %7, %1
  %17 = phi i32 [ 0, %1 ], [ 1, %7 ], [ 2, %9 ], [ 3, %11 ], [ 4, %13 ]
  %18 = getelementptr [5 x %struct.plldividers_s], ptr @plldividers, i32 0, i32 %17, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 24
  %21 = getelementptr [5 x %struct.plldividers_s], ptr @plldividers, i32 0, i32 %17, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = shl i32 %22, 16
  %24 = or i32 %23, %20
  %25 = or i32 %24, 10240
  %26 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 15
  store i8 0, ptr %26, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %25) #4
  %27 = or i32 %24, 10241
  tail call void @hdmi_write(ptr noundef %0, i32 noundef %27, i32 noundef 1296) #4
  %28 = load i8, ptr %26, align 8, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #4
  %31 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 14
  %32 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %2, i32 noundef 1) #4
  %33 = load i8, ptr %26, align 8, !range !8
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %39, %30
  %36 = phi i32 [ %47, %39 ], [ 5, %30 ]
  %37 = phi i32 [ %41, %39 ], [ %32, %30 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = call i32 @schedule_timeout(i32 noundef %36) #4
  %41 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %2, i32 noundef 1) #4
  %42 = load i8, ptr %26, align 8, !range !8
  %43 = icmp ne i8 %42, 0
  %44 = xor i1 %43, true
  %45 = icmp ne i32 %40, 0
  %46 = select i1 %44, i1 true, i1 %45
  %47 = select i1 %46, i32 %40, i32 1
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %43, i1 true, i1 %48
  br i1 %49, label %50, label %35

50:                                               ; preds = %39, %30
  call void @finish_wait(ptr noundef %31, ptr noundef nonnull %2) #4
  br label %51

51:                                               ; preds = %50, %35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #4
  br label %52

52:                                               ; preds = %51, %16
  %53 = call i32 @hdmi_read(ptr noundef %0, i32 noundef 16) #4
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #4
  br label %74

57:                                               ; preds = %52
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5) #4
  %58 = icmp ugt i32 %5, 165000000
  %59 = select i1 %58, i32 17629185, i32 851969
  %60 = icmp ugt i32 %5, 250000000
  br i1 %60, label %71, label %61

61:                                               ; preds = %71, %57
  %62 = phi i32 [ 0, %57 ], [ 1, %71 ]
  %63 = getelementptr [2 x %struct.hdmi_phy_config], ptr @hdmiphy_config, i32 0, i32 %62, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, -17760260
  %66 = or i32 %65, %59
  call void @hdmi_write(ptr noundef %0, i32 noundef %66, i32 noundef 1284) #4
  %67 = getelementptr [2 x %struct.hdmi_phy_config], ptr @hdmiphy_config, i32 0, i32 %62, i32 2, i32 1
  %68 = load i32, ptr %67, align 4
  call void @hdmi_write(ptr noundef %0, i32 noundef %68, i32 noundef 1304) #4
  %69 = getelementptr [2 x %struct.hdmi_phy_config], ptr @hdmiphy_config, i32 0, i32 %62, i32 2, i32 2
  %70 = load i32, ptr %69, align 4
  call void @hdmi_write(ptr noundef %0, i32 noundef %70, i32 noundef 1312) #4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef %64, i32 noundef %68, i32 noundef %70) #4
  br label %74

71:                                               ; preds = %57
  %72 = icmp ugt i32 %5, 300000000
  br i1 %72, label %73, label %61

73:                                               ; preds = %71
  call void @hdmi_write(ptr noundef %0, i32 noundef %59, i32 noundef 1284) #4
  call void @hdmi_write(ptr noundef %0, i32 noundef 0, i32 noundef 1304) #4
  call void @hdmi_write(ptr noundef %0, i32 noundef 0, i32 noundef 1312) #4
  br label %74

74:                                               ; preds = %73, %61, %56, %15
  %75 = phi i1 [ true, %61 ], [ true, %73 ], [ false, %56 ], [ false, %15 ]
  ret i1 %75
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hdmi_tx3g4c28phy_stop(ptr noundef %0) #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7) #4
  %3 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 15
  store i8 0, ptr %3, align 8
  tail call void @hdmi_write(ptr noundef %0, i32 noundef 786432, i32 noundef 1284) #4
  tail call void @hdmi_write(ptr noundef %0, i32 noundef 0, i32 noundef 1296) #4
  %4 = load i8, ptr %3, align 8, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #4
  %7 = getelementptr inbounds %struct.sti_hdmi, ptr %0, i32 0, i32 14
  %8 = call i32 @prepare_to_wait_event(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 1) #4
  %9 = load i8, ptr %3, align 8, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %15, %6
  %12 = phi i32 [ %23, %15 ], [ 5, %6 ]
  %13 = phi i32 [ %17, %15 ], [ %8, %6 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = call i32 @schedule_timeout(i32 noundef %12) #4
  %17 = call i32 @prepare_to_wait_event(ptr noundef %7, ptr noundef nonnull %2, i32 noundef 1) #4
  %18 = load i8, ptr %3, align 8, !range !8
  %19 = icmp ne i8 %18, 0
  %20 = xor i1 %19, true
  %21 = icmp ne i32 %16, 0
  %22 = select i1 %20, i1 true, i1 %21
  %23 = select i1 %22, i32 %16, i32 1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %19, i1 true, i1 %24
  br i1 %25, label %26, label %11

26:                                               ; preds = %15, %6
  call void @finish_wait(ptr noundef %7, ptr noundef nonnull %2) #4
  br label %27

27:                                               ; preds = %26, %11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #4
  br label %28

28:                                               ; preds = %27, %1
  %29 = call i32 @hdmi_read(ptr noundef %0, i32 noundef 16) #4
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #4
  br label %33

33:                                               ; preds = %32, %28
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_read(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
