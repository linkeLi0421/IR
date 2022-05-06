; ModuleID = '/llk/IR/sound/usb/validate.c_pt.bc'
source_filename = "../sound/usb/validate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_desc_validator = type { i8, i8, ptr, i32 }
%struct.uac1_ac_header_descriptor = type <{ i8, i8, i8, i16, i16, i8, [0 x i8] }>
%struct.uac_mixer_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_selector_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_feature_unit_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.uac_processing_unit_descriptor = type <{ i8, i8, i8, i8, i16, i8, [0 x i8] }>
%struct.usb_midi_out_jack_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x %struct.usb_midi_source_pin] }
%struct.usb_midi_source_pin = type { i8, i8 }

@audio_validators = internal constant [31 x %struct.usb_desc_validator] [%struct.usb_desc_validator { i8 0, i8 1, ptr @validate_uac1_header, i32 0 }, %struct.usb_desc_validator { i8 0, i8 2, ptr null, i32 12 }, %struct.usb_desc_validator { i8 0, i8 3, ptr null, i32 9 }, %struct.usb_desc_validator { i8 0, i8 4, ptr @validate_mixer_unit, i32 0 }, %struct.usb_desc_validator { i8 0, i8 5, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 0, i8 6, ptr @validate_uac1_feature_unit, i32 0 }, %struct.usb_desc_validator { i8 0, i8 7, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 0, i8 8, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 1, ptr null, i32 9 }, %struct.usb_desc_validator { i8 32, i8 2, ptr null, i32 17 }, %struct.usb_desc_validator { i8 32, i8 3, ptr null, i32 12 }, %struct.usb_desc_validator { i8 32, i8 4, ptr @validate_mixer_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 5, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 6, ptr @validate_uac2_feature_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 8, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 9, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 10, ptr null, i32 8 }, %struct.usb_desc_validator { i8 32, i8 11, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 32, i8 12, ptr null, i32 7 }, %struct.usb_desc_validator { i8 32, i8 1, ptr null, i32 10 }, %struct.usb_desc_validator { i8 48, i8 2, ptr null, i32 20 }, %struct.usb_desc_validator { i8 48, i8 3, ptr null, i32 19 }, %struct.usb_desc_validator { i8 48, i8 5, ptr @validate_mixer_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 6, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 6, ptr @validate_uac3_feature_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 9, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 10, ptr @validate_processing_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 11, ptr null, i32 12 }, %struct.usb_desc_validator { i8 48, i8 12, ptr @validate_selector_unit, i32 0 }, %struct.usb_desc_validator { i8 48, i8 13, ptr null, i32 11 }, %struct.usb_desc_validator zeroinitializer], align 4
@snd_usb_skip_validation = external dso_local local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"USB-audio: buggy audio desc: \00", align 1
@midi_validators = internal constant [4 x %struct.usb_desc_validator] [%struct.usb_desc_validator { i8 -1, i8 1, ptr null, i32 7 }, %struct.usb_desc_validator { i8 -1, i8 2, ptr null, i32 6 }, %struct.usb_desc_validator { i8 -1, i8 3, ptr @validate_midi_out_jack, i32 0 }, %struct.usb_desc_validator zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"USB-audio: buggy midi desc: \00", align 1
@switch.table.snd_usb_validate_midi_desc = private unnamed_addr constant [3 x ptr] [ptr @midi_validators, ptr getelementptr inbounds ([4 x %struct.usb_desc_validator], ptr @midi_validators, i32 0, i32 1), ptr getelementptr inbounds ([4 x %struct.usb_desc_validator], ptr @midi_validators, i32 0, i32 2)], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_usb_validate_audio_desc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 36
  br i1 %5, label %6, label %44

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 2
  %8 = load i8, ptr %7, align 1
  br label %9

9:                                                ; preds = %31, %6
  %10 = phi i8 [ 1, %6 ], [ %34, %31 ]
  %11 = phi ptr [ @audio_validators, %6 ], [ %32, %31 ]
  %12 = icmp eq i8 %10, %8
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i8, ptr %11, align 4
  %15 = icmp eq i8 %14, -1
  %16 = zext i8 %14 to i32
  %17 = icmp eq i32 %16, %1
  %18 = or i1 %15, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.usb_desc_validator, ptr %11, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call zeroext i1 %21(ptr noundef %0, ptr noundef %11) #3
  br label %36

25:                                               ; preds = %19
  %26 = load i8, ptr %0, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.usb_desc_validator, ptr %11, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp ule i32 %29, %27
  br label %36

31:                                               ; preds = %13, %9
  %32 = getelementptr %struct.usb_desc_validator, ptr %11, i32 1
  %33 = getelementptr %struct.usb_desc_validator, ptr %11, i32 1, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %44, label %9

36:                                               ; preds = %25, %23
  %37 = phi i1 [ %24, %23 ], [ %30, %25 ]
  %38 = load i8, ptr @snd_usb_skip_validation, align 1
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i8, ptr %0, align 1
  %43 = zext i8 %42 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %0, i32 noundef %43, i1 noundef zeroext true) #3
  br label %44

44:                                               ; preds = %41, %36, %31, %2
  %45 = phi i1 [ %37, %36 ], [ true, %41 ], [ true, %2 ], [ true, %31 ]
  ret i1 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @snd_usb_validate_midi_desc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 36
  br i1 %4, label %5, label %33

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, -1
  %9 = icmp ult i8 %8, 3
  br i1 %9, label %10, label %33

10:                                               ; preds = %5
  %11 = sext i8 %8 to i32
  %12 = getelementptr inbounds [3 x ptr], ptr @switch.table.snd_usb_validate_midi_desc, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.usb_desc_validator, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = tail call zeroext i1 %15(ptr noundef %0, ptr noundef %13) #3
  br label %25

19:                                               ; preds = %10
  %20 = load i8, ptr %0, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.usb_desc_validator, ptr %13, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp ule i32 %23, %21
  br label %25

25:                                               ; preds = %19, %17
  %26 = phi i1 [ %18, %17 ], [ %24, %19 ]
  %27 = load i8, ptr @snd_usb_skip_validation, align 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i8, ptr %0, align 1
  %32 = zext i8 %31 to i32
  tail call void @print_hex_dump(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %0, i32 noundef %32, i1 noundef zeroext true) #3
  br label %33

33:                                               ; preds = %30, %25, %5, %1
  %34 = phi i1 [ %26, %25 ], [ true, %30 ], [ true, %1 ], [ true, %5 ]
  ret i1 %34
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_uac1_header(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp ugt i8 %3, 7
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = zext i8 %3 to i32
  %7 = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %9, 8
  %11 = icmp ule i32 %10, %6
  br label %12

12:                                               ; preds = %5, %2
  %13 = phi i1 [ false, %2 ], [ %11, %5 ]
  ret i1 %13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_mixer_unit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp ult i8 %3, 5
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = zext i8 %7 to i32
  %11 = load i8, ptr %1, align 4
  %12 = icmp eq i8 %11, 32
  %13 = select i1 %12, i32 12, i32 9
  %14 = icmp eq i8 %11, 48
  %15 = select i1 %14, i32 7, i32 %13
  %16 = add nuw nsw i32 %15, %10
  %17 = zext i8 %3 to i32
  %18 = icmp ule i32 %16, %17
  br label %19

19:                                               ; preds = %9, %5, %2
  %20 = phi i1 [ %18, %9 ], [ false, %5 ], [ false, %2 ]
  ret i1 %20
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_selector_unit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp ult i8 %3, 5
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.uac_selector_unit_descriptor, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, ptr %1, align 4
  %10 = icmp eq i8 %9, 32
  %11 = select i1 %10, i32 7, i32 6
  %12 = icmp eq i8 %9, 48
  %13 = select i1 %12, i32 11, i32 %11
  %14 = add nuw nsw i32 %13, %8
  %15 = zext i8 %3 to i32
  %16 = icmp ule i32 %14, %15
  br label %17

17:                                               ; preds = %5, %2
  %18 = phi i1 [ %16, %5 ], [ false, %2 ]
  ret i1 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_uac1_feature_unit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp ult i8 %3, 6
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = zext i8 %8 to i32
  %12 = add nuw nsw i32 %11, 7
  %13 = icmp ule i32 %12, %4
  br label %14

14:                                               ; preds = %10, %6, %2
  %15 = phi i1 [ %13, %10 ], [ false, %6 ], [ false, %2 ]
  ret i1 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_processing_unit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp ult i8 %3, 7
  br i1 %5, label %96, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %9, 7
  %11 = icmp ugt i32 %10, %4
  br i1 %11, label %96, label %12

12:                                               ; preds = %6
  %13 = load i8, ptr %1, align 4
  switch i8 %13, label %14 [
    i8 48, label %31
    i8 32, label %24
  ]

14:                                               ; preds = %12
  %15 = add nuw nsw i32 %9, 12
  %16 = icmp ugt i32 %15, %4
  br i1 %16, label %96, label %17

17:                                               ; preds = %14
  %18 = add nuw nsw i32 %9, 11
  %19 = getelementptr i8, ptr %0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %9, 13
  %23 = add nuw nsw i32 %22, %21
  br label %33

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.usb_desc_validator, ptr %1, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 8
  %28 = select i1 %27, i32 15, i32 14
  %29 = add nuw nsw i32 %9, 1
  %30 = add nuw nsw i32 %29, %28
  br label %33

31:                                               ; preds = %12
  %32 = add nuw nsw i32 %9, 13
  br label %33

33:                                               ; preds = %31, %24, %17
  %34 = phi i32 [ %23, %17 ], [ %30, %24 ], [ %32, %31 ]
  %35 = icmp ugt i32 %34, %4
  br i1 %35, label %96, label %36

36:                                               ; preds = %33
  switch i8 %13, label %37 [
    i8 48, label %73
    i8 32, label %55
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.usb_desc_validator, ptr %1, i32 0, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 8
  br i1 %40, label %96, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 4
  %43 = load i16, ptr %42, align 1
  %44 = add i16 %43, -1
  %45 = icmp ult i16 %44, 2
  br i1 %45, label %46, label %93

46:                                               ; preds = %41
  %47 = icmp ult i32 %34, %4
  br i1 %47, label %48, label %96

48:                                               ; preds = %46
  %49 = getelementptr i8, ptr %0, i32 %34
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 1
  %53 = add nuw nsw i32 %34, 1
  %54 = add nuw nsw i32 %53, %52
  br label %93

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.usb_desc_validator, ptr %1, i32 0, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 9
  br i1 %58, label %96, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 4
  %61 = load i16, ptr %60, align 1
  %62 = add i16 %61, -1
  %63 = icmp ult i16 %62, 2
  br i1 %63, label %64, label %93

64:                                               ; preds = %59
  %65 = icmp ult i32 %34, %4
  br i1 %65, label %66, label %96

66:                                               ; preds = %64
  %67 = getelementptr i8, ptr %0, i32 %34
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 2
  %71 = add nuw nsw i32 %34, 1
  %72 = add nuw nsw i32 %71, %70
  br label %93

73:                                               ; preds = %36
  %74 = getelementptr inbounds %struct.usb_desc_validator, ptr %1, i32 0, i32 1
  %75 = load i8, ptr %74, align 1
  %76 = icmp eq i8 %75, 10
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = add nuw nsw i32 %34, 2
  br label %93

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.uac_processing_unit_descriptor, ptr %0, i32 0, i32 4
  %81 = load i16, ptr %80, align 1
  switch i16 %81, label %93 [
    i16 1, label %82
    i16 3, label %91
  ]

82:                                               ; preds = %79
  %83 = icmp ult i32 %34, %4
  br i1 %83, label %84, label %96

84:                                               ; preds = %82
  %85 = getelementptr i8, ptr %0, i32 %34
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 1
  %89 = add nuw nsw i32 %34, 1
  %90 = add nuw nsw i32 %89, %88
  br label %93

91:                                               ; preds = %79
  %92 = add nuw nsw i32 %34, 6
  br label %93

93:                                               ; preds = %91, %84, %79, %77, %66, %59, %48, %41
  %94 = phi i32 [ %34, %41 ], [ %54, %48 ], [ %34, %59 ], [ %72, %66 ], [ %78, %77 ], [ %34, %79 ], [ %92, %91 ], [ %90, %84 ]
  %95 = icmp ule i32 %94, %4
  br label %96

96:                                               ; preds = %93, %82, %64, %55, %46, %37, %33, %14, %6, %2
  %97 = phi i1 [ false, %2 ], [ false, %6 ], [ false, %14 ], [ false, %33 ], [ true, %37 ], [ false, %46 ], [ true, %55 ], [ false, %64 ], [ false, %82 ], [ %95, %93 ]
  ret i1 %97
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_uac2_feature_unit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp ugt i8 %3, 9
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_uac3_feature_unit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp ugt i8 %3, 10
  ret i1 %4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @validate_midi_out_jack(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load i8, ptr %0, align 1
  %4 = icmp ugt i8 %3, 5
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = zext i8 %3 to i32
  %7 = getelementptr inbounds %struct.usb_midi_out_jack_descriptor, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 1
  %11 = add nuw nsw i32 %10, 6
  %12 = icmp ule i32 %11, %6
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i1 [ false, %2 ], [ %12, %5 ]
  ret i1 %14
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
