; ModuleID = '/llk/IR/drivers/usb/storage/protocol.c_pt.bc'
source_filename = "../drivers/usb/storage/protocol.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_transparent_scsi_command:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_transparent_scsi_command\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_transparent_scsi_command:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_access_xfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_access_xfer_buf\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_access_xfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_stor_set_xfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_stor_set_xfer_buf\22\09\09\09\09\09"
module asm "__kstrtabns_usb_stor_set_xfer_buf:\09\09\09\09\09"
module asm "\09.asciz \09\22USB_STORAGE\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__kstrtab_usb_stor_transparent_scsi_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_transparent_scsi_command = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_transparent_scsi_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_transparent_scsi_command to i32), ptr @__kstrtab_usb_stor_transparent_scsi_command, ptr @__kstrtabns_usb_stor_transparent_scsi_command }, section "___ksymtab_gpl+usb_stor_transparent_scsi_command", align 4
@__kstrtab_usb_stor_access_xfer_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_access_xfer_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_access_xfer_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_access_xfer_buf to i32), ptr @__kstrtab_usb_stor_access_xfer_buf, ptr @__kstrtabns_usb_stor_access_xfer_buf }, section "___ksymtab_gpl+usb_stor_access_xfer_buf", align 4
@__kstrtab_usb_stor_set_xfer_buf = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_stor_set_xfer_buf = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_stor_set_xfer_buf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_stor_set_xfer_buf to i32), ptr @__kstrtab_usb_stor_set_xfer_buf, ptr @__kstrtabns_usb_stor_set_xfer_buf }, section "___ksymtab_gpl+usb_stor_set_xfer_buf", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_usb_stor_access_xfer_buf, ptr @__ksymtab_usb_stor_set_xfer_buf, ptr @__ksymtab_usb_stor_transparent_scsi_command], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_pad12_command(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %4 = load i16, ptr %3, align 4
  %5 = icmp ult i16 %4, 12
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i16 [ %4, %6 ], [ %14, %8 ]
  %10 = zext i16 %9 to i32
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 %10
  store i8 0, ptr %12, align 1
  %13 = load i16, ptr %3, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %3, align 4
  %15 = icmp ult i16 %14, 12
  br i1 %15, label %8, label %16

16:                                               ; preds = %8, %2
  tail call void @usb_stor_invoke_transport(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_stor_invoke_transport(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_ufi_command(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 14
  %4 = load i16, ptr %3, align 4
  %5 = icmp ult i16 %4, 12
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i16 [ %4, %6 ], [ %14, %8 ]
  %10 = zext i16 %9 to i32
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 %10
  store i8 0, ptr %12, align 1
  %13 = load i16, ptr %3, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %3, align 4
  %15 = icmp ult i16 %14, 12
  br i1 %15, label %8, label %16

16:                                               ; preds = %8, %2
  store i16 12, ptr %3, align 4
  %17 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 1
  switch i8 %19, label %28 [
    i8 18, label %20
    i8 90, label %22
    i8 3, label %26
  ]

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %18, i32 4
  store i8 36, ptr %21, align 1
  br label %28

22:                                               ; preds = %16
  %23 = getelementptr i8, ptr %18, i32 7
  store i8 0, ptr %23, align 1
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 8
  store i8 8, ptr %25, align 1
  br label %28

26:                                               ; preds = %16
  %27 = getelementptr i8, ptr %18, i32 4
  store i8 18, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %22, %20, %16
  tail call void @usb_stor_invoke_transport(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_transparent_scsi_command(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @usb_stor_invoke_transport(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_access_xfer_buf(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.sg_mapping_iter, align 4
  %8 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %7, i8 0, i32 44, i1 false), !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @sg_nents(ptr noundef nonnull %8) #6
  br label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 17, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i32 [ %11, %10 ], [ %14, %12 ]
  %19 = phi ptr [ %8, %10 ], [ %16, %12 ]
  %20 = icmp eq i32 %5, 1
  %21 = select i1 %20, i32 4, i32 2
  call void @sg_miter_start(ptr noundef nonnull %7, ptr noundef %19, i32 noundef %18, i32 noundef %21) #6
  %22 = load i32, ptr %4, align 4
  %23 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %7, i32 noundef %22) #6
  br i1 %23, label %24, label %61

24:                                               ; preds = %17
  %25 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %7) #6
  %26 = icmp ne i32 %1, 0
  %27 = and i1 %25, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 2
  %30 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.sg_mapping_iter, ptr %7, i32 0, i32 4
  br label %32

32:                                               ; preds = %53, %28
  %33 = phi i32 [ 0, %28 ], [ %55, %53 ]
  %34 = load i32, ptr %29, align 4
  %35 = sub i32 %1, %33
  %36 = call i32 @llvm.umin.i32(i32 %34, i32 %35)
  br i1 %20, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %0, i32 %33
  %39 = load ptr, ptr %30, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %38, ptr align 1 %39, i32 %36, i1 false)
  br label %43

40:                                               ; preds = %32
  %41 = load ptr, ptr %30, align 4
  %42 = getelementptr i8, ptr %0, i32 %33
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %41, ptr align 1 %42, i32 %36, i1 false)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, ptr %4, align 4
  %45 = add i32 %44, %36
  %46 = load ptr, ptr %31, align 4
  %47 = getelementptr inbounds %struct.scatterlist, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 %45, ptr %4, align 4
  br label %53

51:                                               ; preds = %43
  store i32 0, ptr %4, align 4
  %52 = call ptr @sg_next(ptr noundef %46) #6
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi ptr [ %52, %51 ], [ %46, %50 ]
  store ptr %54, ptr %3, align 4
  %55 = add i32 %36, %33
  %56 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %7) #6
  %57 = icmp ult i32 %55, %1
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %32, label %59

59:                                               ; preds = %53, %24
  %60 = phi i32 [ 0, %24 ], [ %55, %53 ]
  call void @sg_miter_stop(ptr noundef nonnull %7) #6
  br label %61

61:                                               ; preds = %59, %17
  %62 = phi i32 [ %60, %59 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %7) #6
  ret i32 %62
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_skip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_stor_set_xfer_buf(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %2, i32 0, i32 17, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %1)
  %9 = call i32 @usb_stor_access_xfer_buf(ptr noundef %0, i32 noundef %8, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 0)
  %10 = load i32, ptr %6, align 4
  %11 = icmp ugt i32 %10, %9
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = sub i32 %10, %9
  %14 = getelementptr inbounds %struct.scsi_request, ptr %2, i32 0, i32 5
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
