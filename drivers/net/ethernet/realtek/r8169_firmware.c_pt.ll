; ModuleID = '/llk/IR/drivers/net/ethernet/realtek/r8169_firmware.c_pt.bc'
source_filename = "../drivers/net/ethernet/realtek/r8169_firmware.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtl_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], %struct.rtl_fw_phy_action }
%struct.rtl_fw_phy_action = type { ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.fw_info = type <{ i32, [32 x i8], i32, i32, i8 }>

@.str = private unnamed_addr constant [33 x i8] c"Unable to load firmware %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid action 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Out of range of firmware\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtl_fw_write_firmware(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtl_fw, ptr %1, i32 0, i32 8
  %4 = getelementptr inbounds %struct.rtl_fw, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.rtl_fw, ptr %1, i32 0, i32 8, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %73, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.rtl_fw, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.rtl_fw, ptr %1, i32 0, i32 3
  br label %13

13:                                               ; preds = %64, %8
  %14 = phi i32 [ 0, %8 ], [ %70, %64 ]
  %15 = phi i32 [ 0, %8 ], [ %68, %64 ]
  %16 = phi i32 [ 0, %8 ], [ %67, %64 ]
  %17 = phi ptr [ %9, %8 ], [ %66, %64 ]
  %18 = phi ptr [ %10, %8 ], [ %65, %64 ]
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i32, ptr %19, i32 %14
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 65535
  %23 = lshr i32 %21, 16
  %24 = and i32 %23, 4095
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %13
  %27 = lshr i32 %21, 28
  switch i32 %27, label %64 [
    i32 0, label %28
    i32 1, label %31
    i32 2, label %33
    i32 3, label %35
    i32 4, label %38
    i32 7, label %46
    i32 8, label %47
    i32 9, label %48
    i32 10, label %52
    i32 11, label %56
    i32 12, label %60
    i32 13, label %61
    i32 14, label %63
  ]

28:                                               ; preds = %26
  %29 = tail call i32 %17(ptr noundef %0, i32 noundef %24) #3
  %30 = add i32 %15, 1
  br label %64

31:                                               ; preds = %26
  %32 = or i32 %22, %16
  br label %64

33:                                               ; preds = %26
  %34 = and i32 %22, %16
  br label %64

35:                                               ; preds = %26
  %36 = xor i32 %24, -1
  %37 = add i32 %14, %36
  br label %64

38:                                               ; preds = %26
  %39 = icmp eq i32 %22, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %11, align 4
  %42 = load ptr, ptr %12, align 4
  br label %64

43:                                               ; preds = %38
  %44 = load ptr, ptr %1, align 4
  %45 = load ptr, ptr %4, align 4
  br label %64

46:                                               ; preds = %26
  br label %64

47:                                               ; preds = %26
  tail call void %18(ptr noundef %0, i32 noundef %24, i32 noundef %22) #3
  br label %64

48:                                               ; preds = %26
  %49 = icmp eq i32 %15, %22
  %50 = zext i1 %49 to i32
  %51 = add nuw i32 %14, %50
  br label %64

52:                                               ; preds = %26
  %53 = icmp eq i32 %16, %22
  %54 = select i1 %53, i32 %24, i32 0
  %55 = add i32 %54, %14
  br label %64

56:                                               ; preds = %26
  %57 = icmp eq i32 %16, %22
  %58 = select i1 %57, i32 0, i32 %24
  %59 = add i32 %58, %14
  br label %64

60:                                               ; preds = %26
  tail call void %18(ptr noundef %0, i32 noundef %24, i32 noundef %16) #3
  br label %64

61:                                               ; preds = %26
  %62 = add i32 %24, %14
  br label %64

63:                                               ; preds = %26
  tail call void @msleep(i32 noundef %22) #3
  br label %64

64:                                               ; preds = %63, %61, %60, %56, %52, %48, %47, %46, %43, %40, %35, %33, %31, %28, %26
  %65 = phi ptr [ %18, %56 ], [ %18, %52 ], [ %18, %48 ], [ %18, %28 ], [ %18, %31 ], [ %18, %33 ], [ %18, %35 ], [ %44, %43 ], [ %41, %40 ], [ %18, %46 ], [ %18, %47 ], [ %18, %60 ], [ %18, %61 ], [ %18, %63 ], [ %18, %26 ]
  %66 = phi ptr [ %17, %56 ], [ %17, %52 ], [ %17, %48 ], [ %17, %28 ], [ %17, %31 ], [ %17, %33 ], [ %17, %35 ], [ %45, %43 ], [ %42, %40 ], [ %17, %46 ], [ %17, %47 ], [ %17, %60 ], [ %17, %61 ], [ %17, %63 ], [ %17, %26 ]
  %67 = phi i32 [ %16, %56 ], [ %16, %52 ], [ %16, %48 ], [ %29, %28 ], [ %32, %31 ], [ %34, %33 ], [ %16, %35 ], [ %16, %43 ], [ %16, %40 ], [ %16, %46 ], [ %16, %47 ], [ %16, %60 ], [ %16, %61 ], [ %16, %63 ], [ %16, %26 ]
  %68 = phi i32 [ %15, %56 ], [ %15, %52 ], [ %15, %48 ], [ %30, %28 ], [ %15, %31 ], [ %15, %33 ], [ %15, %35 ], [ %15, %43 ], [ %15, %40 ], [ 0, %46 ], [ %15, %47 ], [ %15, %60 ], [ %15, %61 ], [ %15, %63 ], [ %15, %26 ]
  %69 = phi i32 [ %59, %56 ], [ %55, %52 ], [ %51, %48 ], [ %14, %28 ], [ %14, %31 ], [ %14, %33 ], [ %37, %35 ], [ %14, %43 ], [ %14, %40 ], [ %14, %46 ], [ %14, %47 ], [ %14, %60 ], [ %62, %61 ], [ %14, %63 ], [ %14, %26 ]
  %70 = add i32 %69, 1
  %71 = load i32, ptr %5, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %13, label %73

73:                                               ; preds = %64, %13, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtl_fw_release_firmware(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @release_firmware(ptr noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtl_fw_request_firmware(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @request_firmware(ptr noundef %2, ptr noundef %4, ptr noundef %6) #3
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %96, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.firmware, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %10, align 4
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %94, label %16

16:                                               ; preds = %9
  %17 = load i32, ptr %12, align 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = icmp ult i32 %14, 45
  br i1 %20, label %94, label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ %29, %21 ], [ 0, %19 ]
  %23 = phi i32 [ %28, %21 ], [ 1, %19 ]
  %24 = getelementptr i8, ptr %12, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = add nuw nsw i32 %22, %26
  %28 = add nuw i32 %23, 1
  %29 = and i32 %27, 255
  %30 = icmp eq i32 %28, %14
  br i1 %30, label %31, label %21

31:                                               ; preds = %21
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.fw_info, ptr %12, i32 0, i32 2
  %35 = load i32, ptr %34, align 1
  %36 = icmp ult i32 %14, %35
  br i1 %36, label %94, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fw_info, ptr %12, i32 0, i32 3
  %39 = load i32, ptr %38, align 1
  %40 = sub i32 %14, %35
  %41 = lshr i32 %40, 2
  %42 = icmp ugt i32 %39, %41
  br i1 %42, label %94, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 7
  %45 = getelementptr inbounds %struct.fw_info, ptr %12, i32 0, i32 1
  %46 = tail call i32 @strscpy(ptr noundef %44, ptr noundef %45, i32 noundef 32) #3
  %47 = load ptr, ptr %11, align 4
  %48 = getelementptr i8, ptr %47, i32 %35
  store ptr %48, ptr %13, align 4
  br label %59

49:                                               ; preds = %16
  %50 = and i32 %14, 3
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %94

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 7
  %54 = load ptr, ptr %3, align 4
  %55 = tail call i32 @strscpy(ptr noundef %53, ptr noundef %54, i32 noundef 32) #3
  %56 = load ptr, ptr %11, align 4
  store ptr %56, ptr %13, align 4
  %57 = load i32, ptr %10, align 4
  %58 = lshr i32 %57, 2
  br label %59

59:                                               ; preds = %52, %43
  %60 = phi ptr [ %56, %52 ], [ %48, %43 ]
  %61 = phi i32 [ %58, %52 ], [ %39, %43 ]
  %62 = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 8, i32 1
  store i32 %61, ptr %62, align 4
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %100, label %64

64:                                               ; preds = %86, %59
  %65 = phi i1 [ %88, %86 ], [ true, %59 ]
  %66 = phi i32 [ %87, %86 ], [ 0, %59 ]
  %67 = getelementptr i32, ptr %60, i32 %66
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 4095
  %71 = lshr i32 %68, 28
  switch i32 %71, label %84 [
    i32 0, label %86
    i32 1, label %86
    i32 2, label %86
    i32 7, label %86
    i32 8, label %86
    i32 12, label %86
    i32 14, label %86
    i32 4, label %72
    i32 3, label %75
    i32 9, label %77
    i32 10, label %80
    i32 11, label %80
    i32 13, label %80
  ]

72:                                               ; preds = %64
  %73 = and i32 %68, 65534
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %86, label %90

75:                                               ; preds = %64
  %76 = icmp ugt i32 %70, %66
  br i1 %76, label %90, label %86

77:                                               ; preds = %64
  %78 = add i32 %66, 2
  %79 = icmp ult i32 %78, %61
  br i1 %79, label %86, label %90

80:                                               ; preds = %64, %64, %64
  %81 = add nuw i32 %66, 1
  %82 = add i32 %81, %70
  %83 = icmp ult i32 %82, %61
  br i1 %83, label %86, label %90

84:                                               ; preds = %64
  %85 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.1, i32 noundef %68) #4
  br i1 %65, label %92, label %100

86:                                               ; preds = %80, %77, %75, %72, %64, %64, %64, %64, %64, %64, %64
  %87 = add nuw i32 %66, 1
  %88 = icmp ult i32 %87, %61
  %89 = icmp eq i32 %87, %61
  br i1 %89, label %100, label %64

90:                                               ; preds = %80, %77, %75, %72
  %91 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.2) #4
  br i1 %65, label %92, label %100

92:                                               ; preds = %90, %84
  %93 = load ptr, ptr %2, align 4
  br label %94

94:                                               ; preds = %92, %49, %37, %33, %31, %19, %9
  %95 = phi ptr [ %93, %92 ], [ %10, %49 ], [ %10, %19 ], [ %10, %31 ], [ %10, %33 ], [ %10, %37 ], [ %10, %9 ]
  tail call void @release_firmware(ptr noundef %95) #3
  br label %96

96:                                               ; preds = %94, %1
  %97 = phi i32 [ %7, %1 ], [ -22, %94 ]
  %98 = load ptr, ptr %5, align 4
  %99 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str, ptr noundef %99, i32 noundef %97) #4
  br label %100

100:                                              ; preds = %96, %90, %86, %84, %59
  %101 = phi i32 [ %97, %96 ], [ 0, %59 ], [ 0, %84 ], [ 0, %90 ], [ 0, %86 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
