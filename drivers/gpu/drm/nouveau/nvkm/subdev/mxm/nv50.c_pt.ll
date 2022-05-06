; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mxm/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_mxm = type { %struct.nvkm_subdev, i32, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.context = type { ptr, %struct.mxms_odev }
%struct.mxms_odev = type { i8, i8, i8, i8 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.70 }
%struct.anon.70 = type { i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [29 x i8] c"%s: unsupported DCB version\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: disable %d: %08x %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: unmatched output device %016llx\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_mxm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  store ptr null, ptr %9, align 4, !annotation !8
  %10 = call i32 @nvkm_mxm_new_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %9) #4
  %11 = load ptr, ptr %9, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store ptr %11, ptr %3, align 4
  br label %14

14:                                               ; preds = %13, %4
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %16, label %45

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.nvkm_mxm, ptr %11, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 21
  %25 = load ptr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #4
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  store i8 0, ptr %8, align 1, !annotation !8
  %26 = call zeroext i16 @dcb_table(ptr noundef %25, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i8, ptr %5, align 1
  %30 = add i8 %29, -66
  %31 = icmp ult i8 %30, -2
  br i1 %31, label %32, label %41

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load ptr, ptr %22, align 4
  %38 = getelementptr inbounds %struct.nvkm_device, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %39, ptr noundef nonnull @.str, ptr noundef %40) #5
  br label %44

41:                                               ; preds = %28
  %42 = call i32 @dcb_outp_foreach(ptr noundef %25, ptr noundef %11, ptr noundef nonnull @mxm_dcb_sanitise_entry) #4
  %43 = call zeroext i1 @mxms_foreach(ptr noundef %11, i8 noundef zeroext 1, ptr noundef nonnull @mxm_show_unmatched, ptr noundef null) #4
  br label %44

44:                                               ; preds = %41, %36, %32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #4
  br label %45

45:                                               ; preds = %44, %16, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mxm_new_(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dcb_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_outp_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxm_dcb_sanitise_entry(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.context, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %8 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = zext i16 %3 to i32
  %11 = getelementptr i8, ptr %9, i32 %10
  store ptr %11, ptr %5, align 8
  %12 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 1
  store i32 0, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #4
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  store i8 0, ptr %7, align 1, !annotation !8
  %13 = call zeroext i1 @mxms_foreach(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull @mxm_match_dcb, ptr noundef nonnull %5) #4
  br i1 %13, label %14, label %32

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %1, i32 0, i32 4
  %24 = load ptr, ptr %5, align 8
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i32, ptr %24, i32 1
  %27 = load i32, ptr %26, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.1, ptr noundef %23, i32 noundef %2, i32 noundef %25, i32 noundef %27) #5
  br label %28

28:                                               ; preds = %18, %14
  %29 = load ptr, ptr %5, align 8
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 15
  store i32 %31, ptr %29, align 4
  br label %101

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 1, i32 2
  %34 = load i8, ptr %33, align 2
  %35 = call zeroext i8 @mxm_ddc_map(ptr noundef %0, i8 noundef zeroext %34) #4
  %36 = load ptr, ptr %5, align 8
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 15
  %39 = icmp eq i32 %38, 6
  %40 = shl i8 %35, 4
  %41 = and i8 %35, -16
  %42 = select i1 %39, i8 %41, i8 %40
  %43 = icmp eq i8 %42, -16
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = zext i8 %42 to i32
  %46 = and i32 %37, -241
  store i32 %46, ptr %36, align 4
  %47 = load ptr, ptr %5, align 8
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %44, %32
  %51 = load i8, ptr %12, align 4
  %52 = icmp ult i8 %51, 2
  br i1 %52, label %67, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 1, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = call zeroext i8 @mxm_sor_map(ptr noundef %0, i8 noundef zeroext %55) #4
  %57 = and i8 %56, 48
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr i32, ptr %58, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, -49
  store i32 %61, ptr %59, align 4
  %62 = zext i8 %57 to i32
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr i32, ptr %63, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %53, %50
  %68 = load ptr, ptr %8, align 4
  %69 = load ptr, ptr %5, align 8
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %70, 12
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 15
  %74 = call i32 @nvbios_connEe(ptr noundef %0, i8 noundef zeroext %73, ptr noundef nonnull %6, ptr noundef nonnull %7) #4
  %75 = getelementptr i8, ptr %68, i32 %74
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 1, i32 1
  %78 = load i8, ptr %77, align 1
  switch i8 %78, label %96 [
    i8 1, label %79
    i8 2, label %84
    i8 3, label %85
    i8 14, label %86
    i8 7, label %91
  ]

79:                                               ; preds = %67
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr i32, ptr %80, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = or i32 %82, 4
  store i32 %83, ptr %81, align 4
  br label %96

84:                                               ; preds = %67
  br label %96

85:                                               ; preds = %67
  br label %96

86:                                               ; preds = %67
  %87 = load ptr, ptr %5, align 8
  %88 = getelementptr i32, ptr %87, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = or i32 %89, 65536
  store i32 %90, ptr %88, align 4
  br label %91

91:                                               ; preds = %86, %67
  %92 = load ptr, ptr %5, align 8
  %93 = getelementptr i32, ptr %92, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, 4
  store i32 %95, ptr %93, align 4
  br label %96

96:                                               ; preds = %91, %85, %84, %79, %67
  %97 = phi i8 [ %76, %67 ], [ 71, %91 ], [ 49, %85 ], [ 97, %84 ], [ %76, %79 ]
  %98 = call zeroext i16 @mxms_version(ptr noundef %1) #4
  %99 = icmp ugt i16 %98, 767
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i8 %97, ptr %75, align 1
  br label %101

101:                                              ; preds = %100, %96, %28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mxms_foreach(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @mxm_show_unmatched(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 240
  %6 = icmp eq i64 %5, 240
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef %16, i64 noundef %4) #5
  br label %17

17:                                               ; preds = %11, %7, %3
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @mxm_match_dcb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 8
  %8 = load i64, ptr %1, align 8
  %9 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 1
  tail call void @mxms_output_device(ptr noundef %0, ptr noundef %1, ptr noundef %9) #4
  %10 = load ptr, ptr %2, align 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 15
  %13 = load i8, ptr %9, align 4
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %3
  %17 = and i64 %8, 224
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 1, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = tail call zeroext i8 @mxm_sor_map(ptr noundef %7, i8 noundef zeroext %21) #4
  %23 = load ptr, ptr %2, align 4
  %24 = load i32, ptr %23, align 4
  %25 = zext i8 %22 to i32
  %26 = shl nuw i32 %25, 24
  %27 = xor i32 %24, %26
  %28 = and i32 %27, 251658240
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %19
  %31 = lshr i8 %22, 4
  %32 = and i8 %31, 3
  %33 = zext i8 %32 to i32
  %34 = getelementptr i32, ptr %23, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 4
  %37 = and i32 %36, %33
  %38 = icmp eq i32 %37, %33
  br i1 %38, label %39, label %58

39:                                               ; preds = %30, %16
  %40 = load i8, ptr %1, align 1
  %41 = and i8 %40, 15
  store i8 %41, ptr %1, align 1
  %42 = load i8, ptr %9, align 4
  %43 = icmp eq i8 %42, 6
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 1, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 6
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = tail call zeroext i1 @mxms_foreach(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull @mxm_match_tmds_partner, ptr noundef %2) #4
  %50 = load i8, ptr %1, align 1
  br i1 %49, label %51, label %53

51:                                               ; preds = %48
  %52 = or i8 %50, 32
  br label %56

53:                                               ; preds = %48, %44, %39
  %54 = phi i8 [ %41, %44 ], [ %41, %39 ], [ %50, %48 ]
  %55 = or i8 %54, -16
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i8 [ %55, %53 ], [ %52, %51 ]
  store i8 %57, ptr %1, align 1
  br label %58

58:                                               ; preds = %56, %30, %19, %3
  %59 = phi i1 [ false, %56 ], [ true, %30 ], [ true, %3 ], [ true, %19 ]
  ret i1 %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mxm_ddc_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mxm_sor_map(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_connEe(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mxms_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxms_output_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @mxm_match_tmds_partner(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.mxms_odev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  store i32 0, ptr %4, align 4, !annotation !8
  call void @mxms_output_device(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #4
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 2
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mxms_odev, ptr %4, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 1, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %3
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i1 [ true, %13 ], [ false, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  ret i1 %15
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
