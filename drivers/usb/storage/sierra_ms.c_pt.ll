; ModuleID = '/llk/IR/drivers/usb/storage/sierra_ms.c_pt.bc'
source_filename = "../drivers/usb/storage/sierra_ms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.swoc_info = type <{ i8, [8 x i8], i16, i16, [47 x i8] }>
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@__param_str_swi_tru_install = internal constant [28 x i8] c"usb_storage.swi_tru_install\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@swi_tru_install = internal global i32 1, align 4
@__param_swi_tru_install = internal constant %struct.kernel_param { ptr @__param_str_swi_tru_install, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @swi_tru_install } }, section "__param", align 4
@__UNIQUE_ID_swi_tru_installtype282 = internal constant [42 x i8] c"usb_storage.parmtype=swi_tru_install:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_swi_tru_install283 = internal constant [102 x i8] c"usb_storage.parm=swi_tru_install:TRU-Install mode (1=Full Logic (def), 2=Force CD-Rom, 3=Force Modem)\00", section ".modinfo", align 1
@dev_attr_truinst = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @truinst_show, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [8 x i8] c"truinst\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Forced Mass Storage\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Error\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"REV=%02d SKU=%04X VER=%04X\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_swi_tru_install283, ptr @__UNIQUE_ID_swi_tru_installtype282, ptr @__param_swi_tru_install], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sierra_ms_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @swi_tru_install, align 4
  switch i32 %4, label %10 [
    i32 3, label %5
    i32 2, label %49
  ]

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8
  %7 = shl i32 %6, 8
  %8 = or i32 %7, -2147483648
  %9 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %8, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #5
  br label %54

10:                                               ; preds = %1
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 60) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %3, align 8
  %16 = shl i32 %15, 8
  %17 = or i32 %16, -2147483520
  %18 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %17, i8 noundef zeroext 10, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %12, i16 noundef zeroext 60, i32 noundef 5000) #5
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 200) #5
  %22 = load i32, ptr %3, align 8
  %23 = shl i32 %22, 8
  %24 = or i32 %23, -2147483520
  %25 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %24, i8 noundef zeroext 10, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %12, i16 noundef zeroext 60, i32 noundef 5000) #5
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 200) #5
  %29 = load i32, ptr %3, align 8
  %30 = shl i32 %29, 8
  %31 = or i32 %30, -2147483520
  %32 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %31, i8 noundef zeroext 10, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %12, i16 noundef zeroext 60, i32 noundef 5000) #5
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 200) #5
  tail call void @kfree(ptr noundef nonnull %12) #5
  br label %54

36:                                               ; preds = %27, %20, %14
  %37 = getelementptr inbounds %struct.swoc_info, ptr %12, i32 0, i32 2
  %38 = load i16, ptr %37, align 1
  %39 = add i16 %38, -8448
  %40 = icmp ult i16 %39, 3840
  %41 = icmp sgt i16 %38, 28927
  %42 = or i1 %41, %40
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load i32, ptr %3, align 8
  %45 = shl i32 %44, 8
  %46 = or i32 %45, -2147483648
  %47 = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %46, i8 noundef zeroext 11, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #5
  tail call void @kfree(ptr noundef nonnull %12) #5
  br label %54

48:                                               ; preds = %36
  tail call void @kfree(ptr noundef nonnull %12) #5
  br label %49

49:                                               ; preds = %48, %1
  %50 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.usb_interface, ptr %51, i32 0, i32 7
  %53 = tail call i32 @device_create_file(ptr noundef %52, ptr noundef nonnull @dev_attr_truinst) #5
  br label %54

54:                                               ; preds = %49, %43, %34, %10, %5
  %55 = phi i32 [ -5, %5 ], [ %53, %49 ], [ -5, %34 ], [ -5, %43 ], [ -12, %10 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @truinst_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 36
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -128
  %7 = load i32, ptr @swi_tru_install, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(21) %2, ptr noundef nonnull align 1 dereferenceable(21) @.str.1, i32 21, i1 false)
  br label %32

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 60) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i32 7, i1 false)
  br label %32

15:                                               ; preds = %10
  %16 = load i32, ptr %6, align 8
  %17 = shl i32 %16, 8
  %18 = or i32 %17, -2147483520
  %19 = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %18, i8 noundef zeroext 10, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %12, i16 noundef zeroext 60, i32 noundef 5000) #5
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  tail call void @kfree(ptr noundef nonnull %12) #5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) @.str.2, i32 7, i1 false)
  br label %32

22:                                               ; preds = %15
  %23 = load i8, ptr %12, align 8
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.swoc_info, ptr %12, i32 0, i32 2
  %26 = load i16, ptr %25, align 1
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.swoc_info, ptr %12, i32 0, i32 3
  %29 = load i16, ptr %28, align 1
  %30 = zext i16 %29 to i32
  %31 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %24, i32 noundef %27, i32 noundef %30)
  tail call void @kfree(ptr noundef nonnull %12) #5
  br label %32

32:                                               ; preds = %22, %21, %14, %9
  %33 = phi i32 [ -5, %21 ], [ -12, %14 ], [ 20, %9 ], [ %31, %22 ]
  ret i32 %33
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
