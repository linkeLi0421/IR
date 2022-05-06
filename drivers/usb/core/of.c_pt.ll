; ModuleID = '/llk/IR/drivers/usb/core/of.c_pt.bc'
source_filename = "../drivers/usb/core/of.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_of_get_device_node:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_of_get_device_node\22\09\09\09\09\09"
module asm "__kstrtabns_usb_of_get_device_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_of_has_combined_node:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_of_has_combined_node\22\09\09\09\09\09"
module asm "__kstrtabns_usb_of_has_combined_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_of_get_interface_node:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_of_get_interface_node\22\09\09\09\09\09"
module asm "__kstrtabns_usb_of_get_interface_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@__kstrtab_usb_of_get_device_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_of_get_device_node = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_of_get_device_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_of_get_device_node to i32), ptr @__kstrtab_usb_of_get_device_node, ptr @__kstrtabns_usb_of_get_device_node }, section "___ksymtab_gpl+usb_of_get_device_node", align 4
@__kstrtab_usb_of_has_combined_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_of_has_combined_node = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_of_has_combined_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_of_has_combined_node to i32), ptr @__kstrtab_usb_of_has_combined_node, ptr @__kstrtabns_usb_of_has_combined_node }, section "___ksymtab_gpl+usb_of_has_combined_node", align 4
@__kstrtab_usb_of_get_interface_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_of_get_interface_node = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_of_get_interface_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_of_get_interface_node to i32), ptr @__kstrtab_usb_of_get_interface_node, ptr @__kstrtabns_usb_of_get_interface_node }, section "___ksymtab_gpl+usb_of_get_interface_node", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_usb_of_get_device_node, ptr @__ksymtab_usb_of_get_interface_node, ptr @__ksymtab_usb_of_has_combined_node], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_of_get_device_node(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %15, %2
  %9 = phi ptr [ %17, %15 ], [ %6, %2 ]
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #4
  %11 = icmp sgt i32 %10, -1
  %12 = load i32, ptr %3, align 4
  %13 = icmp eq i32 %12, %1
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr %4, align 8
  %17 = call ptr @of_get_next_child(ptr noundef %16, ptr noundef nonnull %9) #4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8

19:                                               ; preds = %15, %8, %2
  %20 = phi ptr [ null, %2 ], [ null, %15 ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret ptr %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @usb_of_has_combined_node(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 3
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %18 [
    i8 0, label %8
    i8 9, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 16, i32 13
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 19
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.usb_config_descriptor, ptr %14, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %8, %5
  br label %19

19:                                               ; preds = %18, %12, %1
  %20 = phi i1 [ false, %18 ], [ false, %1 ], [ true, %12 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_of_get_interface_node(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca [2 x i32], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = getelementptr inbounds %struct.usb_device, ptr %0, i32 0, i32 15, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_get_next_child(ptr noundef %6, ptr noundef null) #4
  %8 = getelementptr inbounds [2 x i32], ptr %4, i32 0, i32 1
  %9 = icmp eq ptr %7, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %3
  %11 = zext i8 %2 to i32
  %12 = zext i8 %1 to i32
  br label %13

13:                                               ; preds = %23, %10
  %14 = phi ptr [ %7, %10 ], [ %25, %23 ]
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %14, ptr noundef nonnull @.str, ptr noundef nonnull %4, i32 noundef 2, i32 noundef 0) #4
  %16 = icmp sgt i32 %15, -1
  %17 = load i32, ptr %4, align 8
  %18 = icmp eq i32 %17, %11
  %19 = select i1 %16, i1 %18, i1 false
  %20 = load i32, ptr %8, align 4
  %21 = icmp eq i32 %20, %12
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %27, label %23

23:                                               ; preds = %13
  %24 = load ptr, ptr %5, align 8
  %25 = call ptr @of_get_next_child(ptr noundef %24, ptr noundef nonnull %14) #4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13

27:                                               ; preds = %23, %13, %3
  %28 = phi ptr [ null, %3 ], [ null, %23 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  ret ptr %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
