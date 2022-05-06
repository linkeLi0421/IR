; ModuleID = '/llk/IR/drivers/usb/storage/option_ms.c_pt.bc'
source_filename = "../drivers/usb/storage/option_ms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.73 }
%union.anon.73 = type { ptr }
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

@__param_str_option_zero_cd = internal constant [27 x i8] c"usb_storage.option_zero_cd\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@option_zero_cd = internal global i32 1, align 4
@__param_option_zero_cd = internal constant %struct.kernel_param { ptr @__param_str_option_zero_cd, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.73 { ptr @option_zero_cd } }, section "__param", align 4
@__UNIQUE_ID_option_zero_cdtype279 = internal constant [41 x i8] c"usb_storage.parmtype=option_zero_cd:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_option_zero_cd280 = internal constant [85 x i8] c"usb_storage.parm=option_zero_cd:ZeroCD mode (1=Force Modem (default), 2=Allow CD-Rom\00", section ".modinfo", align 1
@option_inquiry.inquiry_msg = internal unnamed_addr constant <{ [20 x i8], [11 x i8] }> <{ [20 x i8] c"USBC\124Vx$\00\00\00\80\00\06\12\00\00\00$", [11 x i8] zeroinitializer }>, align 1
@.str = private unnamed_addr constant [7 x i8] c"Option\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ZCOPTION\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@option_rezero.rezero_msg = internal unnamed_addr constant <{ [16 x i8], [15 x i8] }> <{ [16 x i8] c"USBCxV4\12\01\00\00\00\80\00\06\01", [15 x i8] zeroinitializer }>, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_option_zero_cd280, ptr @__UNIQUE_ID_option_zero_cdtype279, ptr @__param_option_zero_cd], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @option_ms_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(31) %3, ptr noundef nonnull align 1 dereferenceable(31) @option_inquiry.inquiry_msg, i32 31, i1 false) #7
  %6 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %3, i32 noundef 31, ptr noundef null) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %3, i32 noundef 36, ptr noundef null) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %3, i32 8
  %17 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %16, ptr noundef nonnull dereferenceable(6) @.str, i32 6) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @memcmp(ptr noundef dereferenceable(8) %16, ptr noundef nonnull dereferenceable(8) @.str.1, i32 noundef 8) #7
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ 0, %15 ]
  %23 = load i32, ptr %11, align 4
  %24 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %3, i32 noundef 13, ptr noundef null) #7
  br label %25

25:                                               ; preds = %21, %10, %5
  %26 = phi i32 [ %22, %21 ], [ 4, %5 ], [ 4, %10 ]
  tail call void @kfree(ptr noundef nonnull %3) #7
  %27 = icmp eq i32 %26, 0
  %28 = load i32, ptr @option_zero_cd, align 4
  %29 = icmp eq i32 %28, 1
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %33 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 1024) #6
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(31) %33, ptr noundef nonnull align 1 dereferenceable(31) @option_rezero.rezero_msg, i32 31, i1 false) #7
  %36 = load i32, ptr %6, align 4
  %37 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %0, i32 noundef %36, ptr noundef nonnull %33, i32 noundef 31, ptr noundef null) #7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %0, i32 noundef %41, ptr noundef nonnull %33, i32 noundef 1024, ptr noundef null) #7
  %43 = load i32, ptr %40, align 4
  %44 = tail call i32 @usb_stor_bulk_transfer_buf(ptr noundef %0, i32 noundef %43, ptr noundef nonnull %33, i32 noundef 13, ptr noundef null) #7
  br label %45

45:                                               ; preds = %39, %35
  tail call void @kfree(ptr noundef nonnull %33) #7
  br label %46

46:                                               ; preds = %45, %31, %25, %1
  %47 = phi i32 [ 0, %25 ], [ -5, %31 ], [ -5, %45 ], [ 0, %1 ]
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
