; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2880/cxd2880_io.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_reg_value = type { i8, i8 }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_io_common_write_one_reg(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  store i8 %3, ptr %5, align 1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef nonnull %5, i32 noundef 1) #2
  br label %11

11:                                               ; preds = %7, %4
  %12 = phi i32 [ %10, %7 ], [ -22, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_io_set_reg_bits(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  switch i8 %4, label %9 [
    i8 0, label %25
    i8 -1, label %20
  ]

9:                                                ; preds = %8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #2
  store i8 0, ptr %6, align 1
  %10 = load ptr, ptr %0, align 4
  %11 = call i32 %10(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef nonnull %6, i32 noundef 1) #2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = and i8 %4, %3
  %15 = load i8, ptr %6, align 1
  %16 = xor i8 %4, -1
  %17 = and i8 %15, %16
  %18 = or i8 %17, %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #2
  br label %20

19:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #2
  br label %25

20:                                               ; preds = %13, %8
  %21 = phi i8 [ %3, %8 ], [ %18, %13 ]
  %22 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 %23(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %21) #2
  br label %25

25:                                               ; preds = %20, %19, %8, %5
  %26 = phi i32 [ %24, %20 ], [ %11, %19 ], [ -22, %5 ], [ 0, %8 ]
  ret i32 %26
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_io_write_multi_regs(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.cxd2880_io, ptr %0, i32 0, i32 2
  %8 = zext i8 %3 to i32
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %22, label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i32 %14, 1
  %12 = icmp eq i32 %11, %8
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %11, %10 ], [ 0, %6 ]
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr %struct.cxd2880_reg_value, ptr %2, i32 %14
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr %struct.cxd2880_reg_value, ptr %2, i32 %14, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = tail call i32 %15(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %17, i8 noundef zeroext %19) #2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %10, label %22

22:                                               ; preds = %13, %10, %6, %4
  %23 = phi i32 [ -22, %4 ], [ 0, %6 ], [ %20, %13 ], [ 0, %10 ]
  ret i32 %23
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind }

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
