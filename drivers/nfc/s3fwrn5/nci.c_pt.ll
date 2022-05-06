; ModuleID = '/llk/IR/drivers/nfc/s3fwrn5/nci.c_pt.bc'
source_filename = "../drivers/nfc/s3fwrn5/nci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nci_driver_ops = type { i16, ptr, ptr }
%struct.sk_buff = type { %union.anon.67, %union.anon.70, %union.anon.71, [48 x i8], %union.anon.72, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.74, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr, %union.anon.69 }
%union.anon.69 = type { ptr }
%union.anon.70 = type { ptr }
%union.anon.71 = type { i64 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { i32, ptr }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.76, i32, i32, i32, i16, i16, %union.anon.78, %union.anon.79, %union.anon.80, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.76 = type { i32 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nci_prop_fw_cfg_cmd = type { i8, i8, i8 }
%struct.nci_prop_set_rfreg_cmd = type { i8, [252 x i8] }
%struct.nci_prop_stop_rfreg_cmd = type { i16 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.firmware = type { i32, ptr, ptr }

@s3fwrn5_nci_prop_ops = dso_local local_unnamed_addr constant [4 x %struct.nci_driver_ops] [%struct.nci_driver_ops { i16 3874, ptr @s3fwrn5_nci_prop_rsp, ptr null }, %struct.nci_driver_ops { i16 3878, ptr @s3fwrn5_nci_prop_rsp, ptr null }, %struct.nci_driver_ops { i16 3879, ptr @s3fwrn5_nci_prop_rsp, ptr null }, %struct.nci_driver_ops { i16 3880, ptr @s3fwrn5_nci_prop_rsp, ptr null }], align 4
@.str = private unnamed_addr constant [32 x i8] c"rfreg configuration update: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to start rfreg update\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"rfreg update error (code=%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unable to stop rfreg update\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"rfreg configuration update: success\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3fwrn5_nci_prop_rsp(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  tail call void @nci_req_complete(ptr noundef %0, i32 noundef %6) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s3fwrn5_nci_rf_configure(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca %struct.nci_prop_fw_cfg_cmd, align 1
  %5 = alloca %struct.nci_prop_set_rfreg_cmd, align 1
  %6 = alloca %struct.nci_prop_stop_rfreg_cmd, align 2
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nfc_dev, ptr %8, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 253, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(253) %5, i8 0, i32 253, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #7
  store i16 0, ptr %6, align 2, !annotation !8
  %10 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %9) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %77, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %25, %19 ]
  %21 = phi i32 [ 0, %16 ], [ %24, %19 ]
  %22 = getelementptr i8, ptr %18, i32 %20
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = add i32 %20, 4
  %26 = icmp ult i32 %25, %14
  br i1 %26, label %19, label %27

27:                                               ; preds = %19
  %28 = trunc i32 %24 to i16
  br label %29

29:                                               ; preds = %27, %12
  %30 = phi i16 [ 0, %12 ], [ %28, %27 ]
  store i8 1, ptr %4, align 1
  %31 = getelementptr inbounds %struct.nci_prop_fw_cfg_cmd, ptr %4, i32 0, i32 1
  store i8 -1, ptr %31, align 1
  %32 = getelementptr inbounds %struct.nci_prop_fw_cfg_cmd, ptr %4, i32 0, i32 2
  store i8 -1, ptr %32, align 1
  %33 = load ptr, ptr %0, align 4
  %34 = call i32 @nci_prop_cmd(ptr noundef %33, i8 noundef zeroext 40, i32 noundef 3, ptr noundef nonnull %4) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %74, label %36

36:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %1) #8
  %37 = load ptr, ptr %0, align 4
  %38 = call i32 @nci_prop_cmd(ptr noundef %37, i8 noundef zeroext 38, i32 noundef 0, ptr noundef null) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.1) #8
  br label %74

41:                                               ; preds = %36
  store i8 0, ptr %5, align 1
  %42 = load ptr, ptr %3, align 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %68, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nci_prop_set_rfreg_cmd, ptr %5, i32 0, i32 1
  br label %47

47:                                               ; preds = %61, %45
  %48 = phi i32 [ %43, %45 ], [ %66, %61 ]
  %49 = phi ptr [ %42, %45 ], [ %65, %61 ]
  %50 = phi i32 [ 0, %45 ], [ %64, %61 ]
  %51 = sub i32 %48, %50
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 252)
  %53 = getelementptr inbounds %struct.firmware, ptr %49, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 %50
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %46, ptr align 1 %55, i32 %52, i1 false)
  %56 = load ptr, ptr %0, align 4
  %57 = add nuw nsw i32 %52, 1
  %58 = call i32 @nci_prop_cmd(ptr noundef %56, i8 noundef zeroext 34, i32 noundef %57, ptr noundef nonnull %5) #7
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef %58) #8
  br label %74

61:                                               ; preds = %47
  %62 = load i8, ptr %5, align 1
  %63 = add i8 %62, 1
  store i8 %63, ptr %5, align 1
  %64 = add i32 %50, 252
  %65 = load ptr, ptr %3, align 4
  %66 = load i32, ptr %65, align 4
  %67 = icmp ugt i32 %66, %64
  br i1 %67, label %47, label %68

68:                                               ; preds = %61, %41
  store i16 %30, ptr %6, align 2
  %69 = load ptr, ptr %0, align 4
  %70 = call i32 @nci_prop_cmd(ptr noundef %69, i8 noundef zeroext 39, i32 noundef 2, ptr noundef nonnull %6) #7
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.3) #8
  br label %74

73:                                               ; preds = %68
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.4) #8
  br label %74

74:                                               ; preds = %73, %72, %60, %40, %29
  %75 = phi i32 [ %34, %29 ], [ %38, %40 ], [ %58, %60 ], [ %70, %72 ], [ %70, %73 ]
  %76 = load ptr, ptr %3, align 4
  call void @release_firmware(ptr noundef %76) #7
  br label %77

77:                                               ; preds = %74, %2
  %78 = phi i32 [ %75, %74 ], [ %10, %2 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 253, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %78
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_prop_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nci_req_complete(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
