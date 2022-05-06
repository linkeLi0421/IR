; ModuleID = '/llk/IR/drivers/usb/storage/initializers.c_pt.bc'
source_filename = "../drivers/usb/storage/initializers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.us_data = type { %struct.mutex, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, i32, [32 x i8], ptr, ptr, %struct.usb_sg_request, ptr, i32, ptr, %struct.completion, %struct.completion, %struct.wait_queue_head, %struct.delayed_work, ptr, ptr, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.usb_sg_request = type { i32, i32, %struct.spinlock, ptr, i32, i32, ptr, i32, %struct.completion }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bulk_cb_wrap = type { i32, i32, i32, i8, i8, i8, [16 x i8] }

@usb_stor_ucr61s2b_init.init_string = internal unnamed_addr constant [13 x i8] c"\EC\0A\06\00$PCCHIPS\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_euscsi_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = tail call i32 @usb_stor_control_msg(ptr noundef %0, i32 noundef %3, i8 noundef zeroext 12, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 500) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_ucr61s2b_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 28
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  store i32 1128420181, ptr %4, align 4
  %5 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %4, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(10) %5, i8 0, i64 10, i1 false)
  store i8 12, ptr %6, align 2
  %7 = getelementptr inbounds %struct.bulk_cb_wrap, ptr %4, i32 0, i32 6
  %8 = getelementptr %struct.bulk_cb_wrap, ptr %4, i32 0, i32 6, i32 12
  store i32 0, ptr %8, align 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(12) %7, ptr noundef nonnull align 1 dereferenceable(12) @usb_stor_ucr61s2b_init.init_string, i32 12, i1 false)
  %9 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %0, i32 noundef %10, ptr noundef %4, i32 noundef 31, ptr noundef nonnull %2) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @usb_stor_bulk_transfer_buf(ptr noundef %0, i32 noundef %15, ptr noundef %4, i32 noundef 13, ptr noundef nonnull %2) #5
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 -5
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i32 [ -5, %1 ], [ %18, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_stor_bulk_transfer_buf(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usb_stor_huawei_e220_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.us_data, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = tail call i32 @usb_stor_control_msg(ptr noundef %0, i32 noundef %3, i8 noundef zeroext 3, i8 noundef zeroext 0, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
