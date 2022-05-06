; ModuleID = '/llk/IR/drivers/usb/common/debug.c_pt.bc'
source_filename = "../drivers/usb/common/debug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_decode_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_decode_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_usb_decode_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [40 x i8] c"%02x %02x %02x %02x %02x %02x %02x %02x\00", align 1
@__kstrtab_usb_decode_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_decode_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_decode_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_decode_ctrl to i32), ptr @__kstrtab_usb_decode_ctrl, ptr @__kstrtabns_usb_decode_ctrl }, section "___ksymtab_gpl+usb_decode_ctrl", align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Get Device Status(Length = %d)\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Get Interface Status(Intf = %d, Length = %d)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Get Endpoint Status(ep%d%s)\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s Device Feature(%s%s)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"Set\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"%s Interface Feature(%s)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Function Suspend\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%s Endpoint Feature(%s ep%d%s)\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Halt\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Self Powered\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Remote Wakeup\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"Test Mode\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"U1 Enable\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"U2 Enable\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"LTM Enable\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c": TEST_J\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c": TEST_K\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c": TEST_SE0_NAK\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c": TEST_PACKET\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c": TEST_FORCE_EN\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c": UNKNOWN\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Set Address(Addr = %02x)\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"Configuration\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Endpoint\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"Device Qualifier\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Other Speed Config\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"Interface Power\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"OTG\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Interface Association\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"BOS\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Device Capability\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Pipe Usage\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"SS Endpoint Companion\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"SSP Isochronous Endpoint Companion\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"%s %s Descriptor(Index = %d, Length = %d)\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"Get\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Get Configuration(Length = %d)\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"Set Configuration(Config = %d)\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"Get Interface(Intf = %d, Length = %d)\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"Set Interface(Intf = %d, Alt.Setting = %d)\00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"Synch Frame(Endpoint = %d, Length = %d)\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"Set SEL(Length = %d)\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"Set Isochronous Delay(Delay = %d ns)\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_usb_decode_ctrl], section "llvm.metadata"
@switch.table.usb_decode_ctrl = private unnamed_addr constant [5 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], align 4

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @usb_decode_ctrl(ptr noundef returned writeonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6) #0 {
  switch i8 %3, label %121 [
    i8 0, label %8
    i8 1, label %25
    i8 3, label %25
    i8 5, label %64
    i8 6, label %67
    i8 7, label %67
    i8 8, label %94
    i8 9, label %97
    i8 10, label %101
    i8 11, label %105
    i8 12, label %110
    i8 48, label %114
    i8 49, label %117
  ]

8:                                                ; preds = %7
  %9 = and i8 %2, 31
  %10 = zext i8 %9 to i32
  switch i32 %10, label %137 [
    i32 0, label %11
    i32 1, label %14
    i32 2, label %18
  ]

11:                                               ; preds = %8
  %12 = zext i16 %6 to i32
  %13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.1, i32 noundef %12) #2
  br label %137

14:                                               ; preds = %8
  %15 = zext i16 %5 to i32
  %16 = zext i16 %6 to i32
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15, i32 noundef %16) #2
  br label %137

18:                                               ; preds = %8
  %19 = zext i16 %5 to i32
  %20 = and i32 %19, 65407
  %21 = and i32 %19, 128
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.5, ptr @.str.4
  %24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.3, i32 noundef %20, ptr noundef nonnull %23) #2
  br label %137

25:                                               ; preds = %7, %7
  %26 = and i8 %2, 31
  %27 = zext i8 %26 to i32
  switch i32 %27, label %137 [
    i32 0, label %28
    i32 1, label %47
    i32 2, label %53
  ]

28:                                               ; preds = %25
  %29 = icmp eq i8 %3, 1
  %30 = select i1 %29, ptr @.str.7, ptr @.str.8
  switch i16 %4, label %35 [
    i16 0, label %43
    i16 1, label %31
    i16 2, label %36
    i16 48, label %32
    i16 49, label %33
    i16 50, label %34
  ]

31:                                               ; preds = %28
  br label %43

32:                                               ; preds = %28
  br label %43

33:                                               ; preds = %28
  br label %43

34:                                               ; preds = %28
  br label %43

35:                                               ; preds = %28
  br label %43

36:                                               ; preds = %28
  %37 = add i16 %5, -1
  %38 = icmp ult i16 %37, 5
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = sext i16 %37 to i32
  %41 = getelementptr inbounds [5 x ptr], ptr @switch.table.usb_decode_ctrl, i32 0, i32 %40
  %42 = load ptr, ptr %41, align 4
  br label %43

43:                                               ; preds = %39, %36, %35, %34, %33, %32, %31, %28
  %44 = phi ptr [ @.str.15, %28 ], [ @.str.16, %31 ], [ @.str.18, %32 ], [ @.str.19, %33 ], [ @.str.20, %34 ], [ @.str.12, %35 ], [ @.str.17, %39 ], [ @.str.17, %36 ]
  %45 = phi ptr [ @.str.9, %28 ], [ @.str.9, %31 ], [ @.str.9, %32 ], [ @.str.9, %33 ], [ @.str.9, %34 ], [ @.str.9, %35 ], [ %42, %39 ], [ @.str.26, %36 ]
  %46 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %30, ptr noundef nonnull %44, ptr noundef nonnull %45) #2
  br label %137

47:                                               ; preds = %25
  %48 = icmp eq i8 %3, 1
  %49 = select i1 %48, ptr @.str.7, ptr @.str.8
  %50 = icmp eq i16 %4, 0
  %51 = select i1 %50, ptr @.str.11, ptr @.str.12
  %52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %49, ptr noundef nonnull %51) #2
  br label %137

53:                                               ; preds = %25
  %54 = icmp eq i8 %3, 1
  %55 = select i1 %54, ptr @.str.7, ptr @.str.8
  %56 = icmp eq i16 %4, 0
  %57 = select i1 %56, ptr @.str.14, ptr @.str.12
  %58 = zext i16 %5 to i32
  %59 = and i32 %58, 65407
  %60 = and i32 %58, 128
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, ptr @.str.5, ptr @.str.4
  %63 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %55, ptr noundef nonnull %57, i32 noundef %59, ptr noundef nonnull %62) #2
  br label %137

64:                                               ; preds = %7
  %65 = zext i16 %4 to i32
  %66 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.27, i32 noundef %65) #2
  br label %137

67:                                               ; preds = %7, %7
  %68 = lshr i16 %4, 8
  %69 = trunc i16 %68 to i8
  switch i8 %69, label %85 [
    i8 1, label %86
    i8 2, label %70
    i8 3, label %71
    i8 4, label %72
    i8 5, label %73
    i8 6, label %74
    i8 7, label %75
    i8 8, label %76
    i8 9, label %77
    i8 10, label %78
    i8 11, label %79
    i8 15, label %80
    i8 16, label %81
    i8 36, label %82
    i8 48, label %83
    i8 49, label %84
  ]

70:                                               ; preds = %67
  br label %86

71:                                               ; preds = %67
  br label %86

72:                                               ; preds = %67
  br label %86

73:                                               ; preds = %67
  br label %86

74:                                               ; preds = %67
  br label %86

75:                                               ; preds = %67
  br label %86

76:                                               ; preds = %67
  br label %86

77:                                               ; preds = %67
  br label %86

78:                                               ; preds = %67
  br label %86

79:                                               ; preds = %67
  br label %86

80:                                               ; preds = %67
  br label %86

81:                                               ; preds = %67
  br label %86

82:                                               ; preds = %67
  br label %86

83:                                               ; preds = %67
  br label %86

84:                                               ; preds = %67
  br label %86

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %67
  %87 = phi ptr [ @.str.12, %85 ], [ @.str.43, %84 ], [ @.str.42, %83 ], [ @.str.41, %82 ], [ @.str.40, %81 ], [ @.str.39, %80 ], [ @.str.38, %79 ], [ @.str.37, %78 ], [ @.str.36, %77 ], [ @.str.35, %76 ], [ @.str.34, %75 ], [ @.str.33, %74 ], [ @.str.32, %73 ], [ @.str.31, %72 ], [ @.str.30, %71 ], [ @.str.29, %70 ], [ @.str.28, %67 ]
  %88 = icmp eq i8 %3, 6
  %89 = select i1 %88, ptr @.str.45, ptr @.str.8
  %90 = and i16 %4, 255
  %91 = zext i16 %90 to i32
  %92 = zext i16 %6 to i32
  %93 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull %89, ptr noundef nonnull %87, i32 noundef %91, i32 noundef %92) #2
  br label %137

94:                                               ; preds = %7
  %95 = zext i16 %6 to i32
  %96 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.46, i32 noundef %95) #2
  br label %137

97:                                               ; preds = %7
  %98 = and i16 %4, 255
  %99 = zext i16 %98 to i32
  %100 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.47, i32 noundef %99) #2
  br label %137

101:                                              ; preds = %7
  %102 = zext i16 %5 to i32
  %103 = zext i16 %6 to i32
  %104 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.48, i32 noundef %102, i32 noundef %103) #2
  br label %137

105:                                              ; preds = %7
  %106 = zext i16 %5 to i32
  %107 = and i16 %4, 255
  %108 = zext i16 %107 to i32
  %109 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.49, i32 noundef %106, i32 noundef %108) #2
  br label %137

110:                                              ; preds = %7
  %111 = zext i16 %5 to i32
  %112 = zext i16 %6 to i32
  %113 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.50, i32 noundef %111, i32 noundef %112) #2
  br label %137

114:                                              ; preds = %7
  %115 = zext i16 %6 to i32
  %116 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.51, i32 noundef %115) #2
  br label %137

117:                                              ; preds = %7
  %118 = and i16 %4, 255
  %119 = zext i16 %118 to i32
  %120 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.52, i32 noundef %119) #2
  br label %137

121:                                              ; preds = %7
  %122 = zext i8 %3 to i32
  %123 = zext i8 %2 to i32
  %124 = and i16 %4, 255
  %125 = zext i16 %124 to i32
  %126 = lshr i16 %4, 8
  %127 = zext i16 %126 to i32
  %128 = and i16 %5, 255
  %129 = zext i16 %128 to i32
  %130 = lshr i16 %5, 8
  %131 = zext i16 %130 to i32
  %132 = and i16 %6, 255
  %133 = zext i16 %132 to i32
  %134 = lshr i16 %6, 8
  %135 = zext i16 %134 to i32
  %136 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str, i32 noundef %123, i32 noundef %122, i32 noundef %125, i32 noundef %127, i32 noundef %129, i32 noundef %131, i32 noundef %133, i32 noundef %135)
  br label %137

137:                                              ; preds = %121, %117, %114, %110, %105, %101, %97, %94, %86, %64, %53, %47, %43, %25, %18, %14, %11, %8
  ret ptr %0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
