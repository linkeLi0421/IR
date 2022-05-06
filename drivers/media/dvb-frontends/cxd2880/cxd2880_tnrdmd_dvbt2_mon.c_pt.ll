; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2_mon.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt2_mon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cxd2880_tnrdmd = type { ptr, ptr, %struct.cxd2880_tnrdmd_create_param, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, i8, i32, i8, i8, [100 x %struct.cxd2880_tnrdmd_cfg_mem], i8, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i8, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t }
%struct.cxd2880_tnrdmd_create_param = type { i32, i8, i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_cfg_mem = type { i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i8, [32 x %struct.cxd2880_tnrdmd_pid_cfg] }
%struct.cxd2880_tnrdmd_pid_cfg = type { i8, i16 }
%struct.atomic_t = type { i32 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_dvbt2_l1pre = type { i32, i8, i32, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i16, i8, i16, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.cxd2880_dvbt2_ofdm = type { i8, i8, i32, i32, i32, i8, i32, i16 }
%struct.cxd2880_dvbt2_plp = type { i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i32, i16, i8, i8, i8, i8, i8, i16, i32, i8, i8 }
%struct.cxd2880_dvbt2_l1post = type { i16, i8, i8, i8, i8, i32, i8, i32, i8 }
%struct.cxd2880_dvbt2_bbheader = type { i32, i8, i8, i8, i8, i8, i8, i16, i16, i8, i32, i32 }

@ref_dbm_1000 = internal unnamed_addr constant [4 x [8 x i32]] [[8 x i32] [i32 -96000, i32 -95000, i32 -94000, i32 -93000, i32 -92000, i32 -92000, i32 -98000, i32 -97000], [8 x i32] [i32 -91000, i32 -89000, i32 -88000, i32 -87000, i32 -86000, i32 -86000, i32 -93000, i32 -92000], [8 x i32] [i32 -86000, i32 -85000, i32 -83000, i32 -82000, i32 -81000, i32 -80000, i32 -89000, i32 -88000], [8 x i32] [i32 -82000, i32 -80000, i32 -78000, i32 -76000, i32 -75000, i32 -74000, i32 -86000, i32 -84000]], align 4
@switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 1, i32 5], align 4
@switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre.1 = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 2, i32 4, i32 4, i32 0, i32 1], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  %11 = icmp ne ptr %3, null
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cxd2880_io, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %23, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load ptr, ptr %22, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %29, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %5, i32 noundef 1) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i8, ptr %5, align 1
  %35 = and i8 %34, 7
  store i8 %35, ptr %1, align 1
  %36 = lshr i8 %34, 5
  %37 = and i8 %36, 1
  store i8 %37, ptr %2, align 1
  %38 = lshr i8 %34, 4
  %39 = and i8 %38, 1
  store i8 %39, ptr %3, align 1
  %40 = load i8, ptr %1, align 1
  %41 = icmp eq i8 %40, 7
  %42 = select i1 %41, i32 -11, i32 0
  br label %43

43:                                               ; preds = %33, %28, %21, %17, %13, %4
  %44 = phi i32 [ -22, %4 ], [ -22, %13 ], [ -22, %17 ], [ %26, %21 ], [ %31, %28 ], [ %42, %33 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  ret i32 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %47

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %47

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %45

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %4, i32 noundef 1) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i8, ptr %4, align 1
  %39 = and i8 %38, 7
  store i8 %39, ptr %1, align 1
  %40 = lshr i8 %38, 4
  %41 = and i8 %40, 1
  store i8 %41, ptr %2, align 1
  %42 = load i8, ptr %1, align 1
  %43 = icmp eq i8 %42, 7
  %44 = select i1 %43, i32 -11, i32 0
  br label %45

45:                                               ; preds = %37, %32, %25, %21, %17, %14
  %46 = phi i32 [ -22, %14 ], [ -22, %17 ], [ -22, %21 ], [ %30, %25 ], [ %35, %32 ], [ %44, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  br label %47

47:                                               ; preds = %45, %10, %3
  %48 = phi i32 [ %46, %45 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_carrier_offset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %101

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %101

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %101

16:                                               ; preds = %12
  %17 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %101

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %20 = load i32, ptr %9, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, ptr %13, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %3, i32 noundef 1) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8, ptr %3, align 1
  %39 = and i8 %38, 7
  %40 = icmp eq i8 %39, 7
  br i1 %40, label %41, label %48

41:                                               ; preds = %37, %32, %25, %22, %19
  %42 = phi i32 [ %35, %32 ], [ %30, %25 ], [ -22, %22 ], [ -22, %19 ], [ -11, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.cxd2880_io, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef %44, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %101

48:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %49 = icmp eq i8 %39, 6
  %50 = load ptr, ptr %26, align 4
  %51 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  br i1 %49, label %55, label %53

53:                                               ; preds = %48
  %54 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %101

55:                                               ; preds = %48
  %56 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %57 = icmp eq i32 %56, 0
  %58 = load ptr, ptr %26, align 4
  br i1 %57, label %63, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.cxd2880_io, ptr %58, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %58, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %101

63:                                               ; preds = %55
  %64 = load ptr, ptr %58, align 4
  %65 = call i32 %64(ptr noundef %58, i32 noundef 1, i8 noundef zeroext 48, ptr noundef nonnull %4, i32 noundef 4) #5
  %66 = icmp eq i32 %65, 0
  %67 = load ptr, ptr %26, align 4
  %68 = getelementptr inbounds %struct.cxd2880_io, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef %67, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %66, label %71, label %101

71:                                               ; preds = %63
  %72 = load i8, ptr %4, align 4
  %73 = and i8 %72, 15
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 24
  %76 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 16
  %80 = or i32 %75, %79
  %81 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 2
  %82 = load i8, ptr %81, align 2
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 8
  %85 = or i32 %80, %84
  %86 = getelementptr inbounds [4 x i8], ptr %4, i32 0, i32 3
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = or i32 %85, %88
  %90 = call i32 @cxd2880_convert2s_complement(i32 noundef %89, i32 noundef 28) #5
  store i32 %90, ptr %1, align 4
  %91 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 26
  %92 = load i32, ptr %91, align 4
  switch i32 %92, label %101 [
    i32 1, label %93
    i32 5, label %95
    i32 6, label %95
    i32 7, label %95
    i32 8, label %95
  ]

93:                                               ; preds = %71
  %94 = sdiv i32 %90, -582
  br label %99

95:                                               ; preds = %71, %71, %71, %71
  %96 = mul i32 %92, %90
  %97 = udiv i32 %96, 940
  %98 = sub nsw i32 0, %97
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi i32 [ %98, %95 ], [ %94, %93 ]
  store i32 %100, ptr %1, align 4
  br label %101

101:                                              ; preds = %99, %71, %63, %59, %53, %41, %16, %12, %8, %2
  %102 = phi i32 [ %42, %41 ], [ -11, %53 ], [ %56, %59 ], [ 0, %99 ], [ -22, %2 ], [ -22, %8 ], [ -22, %12 ], [ %17, %16 ], [ -22, %71 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %102
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slvt_freeze_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_convert2s_complement(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_carrier_offset_sub(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i32 @cxd2880_tnrdmd_dvbt2_mon_carrier_offset(ptr noundef %11, ptr noundef nonnull %1)
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %12, %10 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [37 x i8], align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(37) %4, i8 0, i32 37, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #5
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %303

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %303, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %303

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %303

23:                                               ; preds = %19
  %24 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %303

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %27 = load i32, ptr %16, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i32, ptr %20, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %40, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %3, i32 noundef 1) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i8, ptr %3, align 1
  %46 = and i8 %45, 7
  store i8 %46, ptr %5, align 1
  %47 = lshr i8 %45, 4
  %48 = and i8 %47, 1
  store i8 %48, ptr %6, align 1
  %49 = icmp eq i8 %46, 7
  br i1 %49, label %50, label %57

50:                                               ; preds = %44, %39, %32, %29, %26
  %51 = phi i32 [ %42, %39 ], [ %37, %32 ], [ -22, %29 ], [ -22, %26 ], [ -11, %44 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %52 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.cxd2880_io, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %53, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %303

57:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %58 = icmp ult i8 %46, 5
  br i1 %58, label %59, label %83

59:                                               ; preds = %57
  %60 = load i32, ptr %12, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %33, align 4
  %67 = getelementptr inbounds %struct.cxd2880_io, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef %66, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %303

70:                                               ; preds = %62
  %71 = load i8, ptr %5, align 1
  %72 = icmp ult i8 %71, 5
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load ptr, ptr %33, align 4
  %75 = getelementptr inbounds %struct.cxd2880_io, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %74, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %303

78:                                               ; preds = %59
  %79 = load ptr, ptr %33, align 4
  %80 = getelementptr inbounds %struct.cxd2880_io, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 %81(ptr noundef %79, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %303

83:                                               ; preds = %70, %57
  %84 = call i32 @cxd2880_tnrdmd_dvbt2_mon_profile(ptr noundef nonnull %0, ptr noundef nonnull %7)
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr %33, align 4
  %87 = getelementptr inbounds %struct.cxd2880_io, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  br i1 %85, label %91, label %89

89:                                               ; preds = %83
  %90 = call i32 %88(ptr noundef %86, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %303

91:                                               ; preds = %83
  %92 = call i32 %88(ptr noundef %86, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %93 = icmp eq i32 %92, 0
  %94 = load ptr, ptr %33, align 4
  br i1 %93, label %99, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.cxd2880_io, ptr %94, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 %97(ptr noundef %94, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %303

99:                                               ; preds = %91
  %100 = load ptr, ptr %94, align 4
  %101 = call i32 %100(ptr noundef %94, i32 noundef 1, i8 noundef zeroext 97, ptr noundef nonnull %4, i32 noundef 37) #5
  %102 = icmp eq i32 %101, 0
  %103 = load ptr, ptr %33, align 4
  %104 = getelementptr inbounds %struct.cxd2880_io, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 %105(ptr noundef %103, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %102, label %107, label %303

107:                                              ; preds = %99
  %108 = load i8, ptr %4, align 1
  %109 = zext i8 %108 to i32
  store i32 %109, ptr %1, align 4
  %110 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 1
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 1
  %113 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 1
  store i8 %112, ptr %113, align 4
  %114 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 2
  %115 = load i8, ptr %114, align 1
  %116 = and i8 %115, 7
  %117 = zext i8 %116 to i32
  %118 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 2
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 3
  %120 = load i8, ptr %119, align 1
  %121 = and i8 %120, 15
  %122 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 3
  store i8 %121, ptr %122, align 4
  %123 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 4
  %124 = load i8, ptr %123, align 1
  %125 = and i8 %124, 1
  %126 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 6
  store i8 %125, ptr %126, align 4
  %127 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 5
  %128 = load i8, ptr %127, align 1
  %129 = and i8 %128, 7
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 7
  store i32 %130, ptr %131, align 4
  %132 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 6
  %133 = load i8, ptr %132, align 1
  %134 = and i8 %133, 15
  %135 = zext i8 %134 to i32
  %136 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 8
  store i32 %135, ptr %136, align 4
  %137 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 7
  %138 = load i8, ptr %137, align 1
  %139 = and i8 %138, 15
  %140 = zext i8 %139 to i32
  %141 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 9
  store i32 %140, ptr %141, align 4
  %142 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 8
  %143 = load i8, ptr %142, align 1
  %144 = and i8 %143, 3
  %145 = zext i8 %144 to i32
  %146 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 10
  store i32 %145, ptr %146, align 4
  %147 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 9
  %148 = load i8, ptr %147, align 1
  %149 = and i8 %148, 3
  %150 = zext i8 %149 to i32
  %151 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 11
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 10
  %153 = load i8, ptr %152, align 1
  %154 = and i8 %153, 3
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %155, 16
  %157 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 12
  %158 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 11
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i32
  %161 = shl nuw nsw i32 %160, 8
  %162 = or i32 %161, %156
  %163 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 12
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %162, %165
  store i32 %166, ptr %157, align 4
  %167 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 13
  %168 = load i8, ptr %167, align 1
  %169 = and i8 %168, 3
  %170 = zext i8 %169 to i32
  %171 = shl nuw nsw i32 %170, 16
  %172 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 13
  %173 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 14
  %174 = load i8, ptr %173, align 1
  %175 = zext i8 %174 to i32
  %176 = shl nuw nsw i32 %175, 8
  %177 = or i32 %176, %171
  %178 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 15
  %179 = load i8, ptr %178, align 1
  %180 = zext i8 %179 to i32
  %181 = or i32 %177, %180
  store i32 %181, ptr %172, align 4
  %182 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 16
  %183 = load i8, ptr %182, align 1
  %184 = and i8 %183, 15
  %185 = zext i8 %184 to i32
  %186 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 14
  store i32 %185, ptr %186, align 4
  %187 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 17
  %188 = load i8, ptr %187, align 1
  %189 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 15
  store i8 %188, ptr %189, align 4
  %190 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 18
  %191 = load i8, ptr %190, align 1
  %192 = zext i8 %191 to i16
  %193 = shl nuw i16 %192, 8
  %194 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 16
  %195 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 19
  %196 = load i8, ptr %195, align 1
  %197 = zext i8 %196 to i16
  %198 = or i16 %193, %197
  store i16 %198, ptr %194, align 2
  %199 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 20
  %200 = load i8, ptr %199, align 1
  %201 = zext i8 %200 to i16
  %202 = shl nuw i16 %201, 8
  %203 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 17
  %204 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 21
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i16
  %207 = or i16 %202, %206
  store i16 %207, ptr %203, align 4
  %208 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 22
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i16
  %211 = shl nuw i16 %210, 8
  %212 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 18
  %213 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 23
  %214 = load i8, ptr %213, align 1
  %215 = zext i8 %214 to i16
  %216 = or i16 %211, %215
  store i16 %216, ptr %212, align 2
  %217 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 24
  %218 = load i8, ptr %217, align 1
  %219 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 19
  store i8 %218, ptr %219, align 4
  %220 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 25
  %221 = load i8, ptr %220, align 1
  %222 = and i8 %221, 15
  %223 = zext i8 %222 to i16
  %224 = shl nuw nsw i16 %223, 8
  %225 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 20
  %226 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 26
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i16
  %229 = or i16 %224, %228
  store i16 %229, ptr %225, align 2
  %230 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 27
  %231 = load i8, ptr %230, align 1
  %232 = and i8 %231, 7
  %233 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 21
  store i8 %232, ptr %233, align 4
  %234 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 28
  %235 = load i8, ptr %234, align 1
  %236 = and i8 %235, 1
  %237 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 22
  store i8 %236, ptr %237, align 1
  %238 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 29
  %239 = load i8, ptr %238, align 1
  %240 = and i8 %239, 7
  %241 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 23
  store i8 %240, ptr %241, align 2
  %242 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 30
  %243 = load i8, ptr %242, align 1
  %244 = and i8 %243, 7
  %245 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 24
  store i8 %244, ptr %245, align 1
  %246 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 31
  %247 = load i8, ptr %246, align 1
  %248 = shl i8 %247, 2
  %249 = and i8 %248, 12
  %250 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 32
  %251 = load i8, ptr %250, align 1
  %252 = lshr i8 %251, 6
  %253 = or i8 %249, %252
  %254 = zext i8 %253 to i32
  %255 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 25
  store i32 %254, ptr %255, align 4
  %256 = lshr i8 %251, 5
  %257 = and i8 %256, 1
  %258 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 26
  store i8 %257, ptr %258, align 4
  %259 = lshr i8 %251, 4
  %260 = and i8 %259, 1
  %261 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 27
  store i8 %260, ptr %261, align 1
  %262 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 33
  %263 = load i8, ptr %262, align 1
  %264 = zext i8 %263 to i32
  %265 = shl nuw i32 %264, 24
  %266 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 28
  %267 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 34
  %268 = load i8, ptr %267, align 1
  %269 = zext i8 %268 to i32
  %270 = shl nuw nsw i32 %269, 16
  %271 = or i32 %270, %265
  %272 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 35
  %273 = load i8, ptr %272, align 1
  %274 = zext i8 %273 to i32
  %275 = shl nuw nsw i32 %274, 8
  %276 = or i32 %275, %271
  %277 = getelementptr inbounds [37 x i8], ptr %4, i32 0, i32 36
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i32
  %280 = or i32 %276, %279
  store i32 %280, ptr %266, align 4
  %281 = load i32, ptr %7, align 4
  switch i32 %281, label %303 [
    i32 0, label %282
    i32 1, label %286
  ]

282:                                              ; preds = %107
  %283 = lshr i8 %121, 1
  %284 = zext i8 %283 to i32
  %285 = getelementptr inbounds [8 x i32], ptr @switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre, i32 0, i32 %284
  br label %296

286:                                              ; preds = %107
  %287 = lshr i8 %121, 1
  %288 = zext i8 %287 to i32
  %289 = icmp eq i8 %287, 7
  br i1 %289, label %303, label %290

290:                                              ; preds = %286
  %291 = lshr i8 95, %287
  %292 = and i8 %291, 1
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %303, label %294

294:                                              ; preds = %290
  %295 = getelementptr inbounds [7 x i32], ptr @switch.table.cxd2880_tnrdmd_dvbt2_mon_l1_pre.1, i32 0, i32 %288
  br label %296

296:                                              ; preds = %294, %282
  %297 = phi ptr [ %295, %294 ], [ %285, %282 ]
  %298 = load i32, ptr %297, align 4
  %299 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 5
  store i32 %298, ptr %299, align 4
  %300 = load i8, ptr %122, align 4
  %301 = and i8 %300, 1
  %302 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %1, i32 0, i32 4
  store i8 %301, ptr %302, align 1
  br label %303

303:                                              ; preds = %296, %290, %286, %107, %99, %95, %89, %78, %73, %65, %50, %23, %19, %15, %11, %2
  %304 = phi i32 [ %51, %50 ], [ %63, %65 ], [ -11, %73 ], [ %84, %89 ], [ %92, %95 ], [ 0, %296 ], [ -11, %78 ], [ -22, %2 ], [ -22, %11 ], [ -22, %15 ], [ -22, %19 ], [ %24, %23 ], [ -11, %286 ], [ -11, %107 ], [ %101, %99 ], [ -11, %290 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %4) #5
  ret i32 %304
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_profile(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %41

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cxd2880_io, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %17, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = load ptr, ptr %16, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 %24(ptr noundef %23, i32 noundef 1, i8 noundef zeroext 34, ptr noundef nonnull %3, i32 noundef 1) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = and i32 %29, 1
  store i32 %33, ptr %1, align 4
  br label %41

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load ptr, ptr %0, align 4
  %40 = call i32 @cxd2880_tnrdmd_dvbt2_mon_profile(ptr noundef %39, ptr noundef nonnull %1)
  br label %41

41:                                               ; preds = %38, %34, %32, %22, %15, %11, %7, %2
  %42 = phi i32 [ 0, %32 ], [ -22, %2 ], [ -22, %7 ], [ -22, %11 ], [ %20, %15 ], [ %25, %22 ], [ %40, %38 ], [ -11, %34 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_version(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %110

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %110, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %110

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %110

22:                                               ; preds = %18
  %23 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %110

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %26 = load i32, ptr %15, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32, ptr %19, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cxd2880_io, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load ptr, ptr %32, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 %40(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %3, i32 noundef 1) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8, ptr %3, align 1
  %45 = and i8 %44, 7
  store i8 %45, ptr %5, align 1
  %46 = lshr i8 %44, 4
  %47 = and i8 %46, 1
  store i8 %47, ptr %6, align 1
  %48 = icmp eq i8 %45, 7
  br i1 %48, label %49, label %56

49:                                               ; preds = %43, %38, %31, %28, %25
  %50 = phi i32 [ %41, %38 ], [ %36, %31 ], [ -22, %28 ], [ -22, %25 ], [ -11, %43 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.cxd2880_io, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 %54(ptr noundef %52, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %110

56:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %57 = icmp ult i8 %45, 5
  br i1 %57, label %58, label %82

58:                                               ; preds = %56
  %59 = load i32, ptr %11, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %32, align 4
  %66 = getelementptr inbounds %struct.cxd2880_io, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %65, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %110

69:                                               ; preds = %61
  %70 = load i8, ptr %5, align 1
  %71 = icmp ult i8 %70, 5
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load ptr, ptr %32, align 4
  %74 = getelementptr inbounds %struct.cxd2880_io, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %73, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %110

77:                                               ; preds = %58
  %78 = load ptr, ptr %32, align 4
  %79 = getelementptr inbounds %struct.cxd2880_io, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 %80(ptr noundef %78, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %110

82:                                               ; preds = %69, %56
  %83 = load ptr, ptr %32, align 4
  %84 = getelementptr inbounds %struct.cxd2880_io, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 %85(ptr noundef %83, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %87 = icmp eq i32 %86, 0
  %88 = load ptr, ptr %32, align 4
  br i1 %87, label %93, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.cxd2880_io, ptr %88, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 %91(ptr noundef %88, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %110

93:                                               ; preds = %82
  %94 = load ptr, ptr %88, align 4
  %95 = call i32 %94(ptr noundef %88, i32 noundef 1, i8 noundef zeroext -128, ptr noundef nonnull %4, i32 noundef 2) #5
  %96 = icmp eq i32 %95, 0
  %97 = load ptr, ptr %32, align 4
  %98 = getelementptr inbounds %struct.cxd2880_io, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 %99(ptr noundef %97, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %96, label %101, label %110

101:                                              ; preds = %93
  %102 = load i8, ptr %4, align 2
  %103 = shl i8 %102, 2
  %104 = and i8 %103, 12
  %105 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %106 = load i8, ptr %105, align 1
  %107 = lshr i8 %106, 6
  %108 = or i8 %104, %107
  %109 = zext i8 %108 to i32
  store i32 %109, ptr %1, align 4
  br label %110

110:                                              ; preds = %101, %93, %89, %77, %72, %64, %49, %22, %18, %14, %10, %2
  %111 = phi i32 [ %50, %49 ], [ %62, %64 ], [ -11, %72 ], [ %86, %89 ], [ 0, %101 ], [ -11, %77 ], [ -22, %2 ], [ -22, %10 ], [ -22, %14 ], [ -22, %18 ], [ %23, %22 ], [ %95, %93 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !8
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %113

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %113

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %113

16:                                               ; preds = %12
  %17 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %113

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %20 = load i32, ptr %9, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, ptr %13, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %3, i32 noundef 1) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8, ptr %3, align 1
  %39 = and i8 %38, 7
  %40 = icmp eq i8 %39, 7
  br i1 %40, label %41, label %48

41:                                               ; preds = %37, %32, %25, %22, %19
  %42 = phi i32 [ %35, %32 ], [ %30, %25 ], [ -22, %22 ], [ -22, %19 ], [ -11, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.cxd2880_io, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef %44, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %113

48:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %49 = icmp eq i8 %39, 6
  %50 = load ptr, ptr %26, align 4
  %51 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  br i1 %49, label %61, label %53

53:                                               ; preds = %48
  %54 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %113

58:                                               ; preds = %53
  %59 = load ptr, ptr %0, align 4
  %60 = call i32 @cxd2880_tnrdmd_dvbt2_mon_ofdm(ptr noundef %59, ptr noundef nonnull %1)
  br label %113

61:                                               ; preds = %48
  %62 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %63 = icmp eq i32 %62, 0
  %64 = load ptr, ptr %26, align 4
  br i1 %63, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.cxd2880_io, ptr %64, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %64, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %113

69:                                               ; preds = %61
  %70 = load ptr, ptr %64, align 4
  %71 = call i32 %70(ptr noundef %64, i32 noundef 1, i8 noundef zeroext 29, ptr noundef nonnull %4, i32 noundef 5) #5
  %72 = icmp eq i32 %71, 0
  %73 = load ptr, ptr %26, align 4
  %74 = getelementptr inbounds %struct.cxd2880_io, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %73, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %72, label %77, label %113

77:                                               ; preds = %69
  %78 = load i8, ptr %4, align 1
  %79 = lshr i8 %78, 5
  %80 = and i8 %79, 1
  store i8 %80, ptr %1, align 4
  %81 = lshr i8 %78, 4
  %82 = and i8 %81, 1
  %83 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %1, i32 0, i32 1
  store i8 %82, ptr %83, align 1
  %84 = and i8 %78, 7
  %85 = zext i8 %84 to i32
  %86 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %1, i32 0, i32 2
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %88 = load i8, ptr %87, align 1
  %89 = lshr i8 %88, 4
  %90 = and i8 %89, 7
  %91 = zext i8 %90 to i32
  %92 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %1, i32 0, i32 3
  store i32 %91, ptr %92, align 4
  %93 = and i8 %88, 7
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %1, i32 0, i32 4
  store i32 %94, ptr %95, align 4
  %96 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 2
  %97 = load i8, ptr %96, align 1
  %98 = lshr i8 %97, 4
  %99 = and i8 %98, 1
  %100 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %1, i32 0, i32 5
  store i8 %99, ptr %100, align 4
  %101 = and i8 %97, 15
  %102 = zext i8 %101 to i32
  %103 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %1, i32 0, i32 6
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 3
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i16
  %107 = shl nuw i16 %106, 8
  %108 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 4
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i16
  %111 = or i16 %107, %110
  %112 = getelementptr inbounds %struct.cxd2880_dvbt2_ofdm, ptr %1, i32 0, i32 7
  store i16 %111, ptr %112, align 4
  br label %113

113:                                              ; preds = %77, %69, %65, %58, %53, %41, %16, %12, %8, %2
  %114 = phi i32 [ %42, %41 ], [ %62, %65 ], [ 0, %77 ], [ -22, %2 ], [ -22, %8 ], [ -22, %12 ], [ %17, %16 ], [ %60, %58 ], [ -11, %53 ], [ %71, %69 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #5
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_data_plps(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %84

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %84, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %84

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.cxd2880_io, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %22, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %20
  %28 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %27
  %31 = load ptr, ptr %21, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 %32(ptr noundef %31, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %4, i32 noundef 1) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %75

35:                                               ; preds = %30
  %36 = load i8, ptr %4, align 1
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  %39 = load ptr, ptr %21, align 4
  br i1 %38, label %78, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %39, align 4
  %42 = call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext -63, ptr noundef nonnull %2, i32 noundef 1) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = load i8, ptr %2, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %44
  %48 = icmp eq ptr %1, null
  %49 = load ptr, ptr %21, align 4
  br i1 %48, label %78, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %49, align 4
  %52 = call i8 @llvm.umin.i8(i8 %45, i8 62)
  %53 = zext i8 %52 to i32
  %54 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext -62, ptr noundef nonnull %1, i32 noundef %53) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load i8, ptr %2, align 1
  %58 = icmp ugt i8 %57, 62
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load ptr, ptr %21, align 4
  %61 = getelementptr inbounds %struct.cxd2880_io, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %60, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 12) #5
  %64 = icmp eq i32 %63, 0
  %65 = load ptr, ptr %21, align 4
  br i1 %64, label %66, label %78

66:                                               ; preds = %59
  %67 = load ptr, ptr %65, align 4
  %68 = getelementptr i8, ptr %1, i32 62
  %69 = load i8, ptr %2, align 1
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %70, -62
  %72 = call i32 %67(ptr noundef %65, i32 noundef 1, i8 noundef zeroext 16, ptr noundef %68, i32 noundef %71) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %56
  br label %75

75:                                               ; preds = %74, %66, %50, %44, %40, %30
  %76 = phi i32 [ 0, %74 ], [ %33, %30 ], [ %42, %40 ], [ -22, %44 ], [ %54, %50 ], [ %72, %66 ]
  %77 = load ptr, ptr %21, align 4
  br label %78

78:                                               ; preds = %75, %59, %47, %35
  %79 = phi ptr [ %39, %35 ], [ %49, %47 ], [ %65, %59 ], [ %77, %75 ]
  %80 = phi i32 [ -11, %35 ], [ 0, %47 ], [ %63, %59 ], [ %76, %75 ]
  %81 = getelementptr inbounds %struct.cxd2880_io, ptr %79, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 %82(ptr noundef %79, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %84

84:                                               ; preds = %78, %27, %20, %16, %12, %8, %3
  %85 = phi i32 [ -22, %3 ], [ -22, %8 ], [ -22, %12 ], [ -22, %16 ], [ %25, %20 ], [ %28, %27 ], [ %80, %78 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_active_plp(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [20 x i8], align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %159

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %159, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %159

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %159

21:                                               ; preds = %17
  %22 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %159

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %26, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %25, align 4
  br i1 %30, label %36, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %31, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %159

36:                                               ; preds = %24
  %37 = load ptr, ptr %31, align 4
  %38 = call i32 %37(ptr noundef %31, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %5, i32 noundef 1) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %25, align 4
  %42 = getelementptr inbounds %struct.cxd2880_io, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %41, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %159

45:                                               ; preds = %36
  %46 = load i8, ptr %5, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load ptr, ptr %25, align 4
  %50 = getelementptr inbounds %struct.cxd2880_io, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %159

53:                                               ; preds = %45
  %54 = icmp eq i32 %1, 0
  %55 = select i1 %54, i8 -87, i8 -106
  %56 = load ptr, ptr %25, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 %57(ptr noundef %56, i32 noundef 1, i8 noundef zeroext %55, ptr noundef nonnull %4, i32 noundef 20) #5
  %59 = icmp eq i32 %58, 0
  %60 = load ptr, ptr %25, align 4
  %61 = getelementptr inbounds %struct.cxd2880_io, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %60, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %59, label %64, label %159

64:                                               ; preds = %53
  %65 = icmp ne i32 %1, 0
  %66 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 13
  %67 = load i8, ptr %66, align 1
  %68 = icmp ne i8 %67, 0
  %69 = select i1 %65, i1 true, i1 %68
  br i1 %69, label %70, label %159

70:                                               ; preds = %64
  %71 = load i8, ptr %4, align 1
  store i8 %71, ptr %2, align 4
  %72 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 7
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 1
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 2
  %78 = load i8, ptr %77, align 1
  %79 = and i8 %78, 31
  %80 = zext i8 %79 to i32
  %81 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 2
  store i32 %80, ptr %81, align 4
  %82 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 3
  %83 = load i8, ptr %82, align 1
  %84 = and i8 %83, 1
  %85 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 3
  store i8 %84, ptr %85, align 4
  %86 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 4
  %87 = load i8, ptr %86, align 1
  %88 = and i8 %87, 7
  %89 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 4
  store i8 %88, ptr %89, align 1
  %90 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 5
  %91 = load i8, ptr %90, align 1
  %92 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 5
  store i8 %91, ptr %92, align 2
  %93 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 6
  %94 = load i8, ptr %93, align 1
  %95 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 6
  store i8 %94, ptr %95, align 1
  %96 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 7
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 7
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 8
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 8
  %102 = load i8, ptr %101, align 1
  %103 = and i8 %102, 7
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 7
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 9
  %107 = load i8, ptr %106, align 1
  %108 = and i8 %107, 1
  %109 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 9
  store i8 %108, ptr %109, align 4
  %110 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 10
  %111 = load i8, ptr %110, align 1
  %112 = and i8 %111, 3
  %113 = zext i8 %112 to i32
  %114 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 10
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 11
  %116 = load i8, ptr %115, align 1
  %117 = and i8 %116, 3
  %118 = zext i8 %117 to i16
  %119 = shl nuw nsw i16 %118, 8
  %120 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 11
  %121 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 12
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i16
  %124 = or i16 %119, %123
  store i16 %124, ptr %120, align 4
  %125 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 12
  store i8 %67, ptr %125, align 2
  %126 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 14
  %127 = load i8, ptr %126, align 1
  %128 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 13
  store i8 %127, ptr %128, align 1
  %129 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 15
  %130 = load i8, ptr %129, align 1
  %131 = and i8 %130, 1
  %132 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 14
  store i8 %131, ptr %132, align 4
  %133 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 16
  %134 = load i8, ptr %133, align 1
  %135 = and i8 %134, 1
  %136 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 15
  store i8 %135, ptr %136, align 1
  %137 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 17
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i16
  %140 = shl nuw i16 %139, 8
  %141 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 17
  %142 = getelementptr inbounds [20 x i8], ptr %4, i32 0, i32 18
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i16
  %145 = or i16 %140, %144
  %146 = lshr i8 %138, 7
  %147 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 16
  store i8 %146, ptr %147, align 2
  %148 = lshr i8 %143, 2
  %149 = and i8 %148, 3
  %150 = zext i8 %149 to i32
  %151 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 18
  store i32 %150, ptr %151, align 4
  %152 = lshr i8 %143, 1
  %153 = and i8 %152, 1
  %154 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 19
  store i8 %153, ptr %154, align 4
  %155 = and i8 %143, 1
  %156 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %2, i32 0, i32 20
  store i8 %155, ptr %156, align 1
  %157 = lshr i16 %145, 4
  %158 = and i16 %157, 2047
  store i16 %158, ptr %141, align 4
  br label %159

159:                                              ; preds = %70, %64, %53, %48, %40, %32, %21, %17, %13, %9, %3
  %160 = phi i32 [ %29, %32 ], [ %38, %40 ], [ 0, %70 ], [ -11, %48 ], [ -22, %3 ], [ -22, %9 ], [ -22, %13 ], [ -22, %17 ], [ %22, %21 ], [ -11, %64 ], [ %58, %53 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #5
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_data_plp_error(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %63

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %63, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %63

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %63

19:                                               ; preds = %15
  %20 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.cxd2880_io, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %24, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %23, align 4
  br i1 %28, label %34, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.cxd2880_io, ptr %29, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %29, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %63

34:                                               ; preds = %22
  %35 = load ptr, ptr %29, align 4
  %36 = call i32 %35(ptr noundef %29, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %3, i32 noundef 1) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %23, align 4
  %40 = getelementptr inbounds %struct.cxd2880_io, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %63

43:                                               ; preds = %34
  %44 = load i8, ptr %3, align 1
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  %47 = load ptr, ptr %23, align 4
  br i1 %46, label %48, label %52

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.cxd2880_io, ptr %47, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 %50(ptr noundef %47, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %63

52:                                               ; preds = %43
  %53 = load ptr, ptr %47, align 4
  %54 = call i32 %53(ptr noundef %47, i32 noundef 1, i8 noundef zeroext -64, ptr noundef nonnull %3, i32 noundef 1) #5
  %55 = icmp eq i32 %54, 0
  %56 = load ptr, ptr %23, align 4
  %57 = getelementptr inbounds %struct.cxd2880_io, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 %58(ptr noundef %56, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %55, label %60, label %63

60:                                               ; preds = %52
  %61 = load i8, ptr %3, align 1
  %62 = and i8 %61, 1
  store i8 %62, ptr %1, align 1
  br label %63

63:                                               ; preds = %60, %52, %48, %38, %30, %19, %15, %11, %7, %2
  %64 = phi i32 [ %27, %30 ], [ %36, %38 ], [ -11, %48 ], [ 0, %60 ], [ -22, %2 ], [ -22, %7 ], [ -22, %11 ], [ -22, %15 ], [ %20, %19 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_change(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %1, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %130

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %130, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %130

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %130

22:                                               ; preds = %18
  %23 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %130

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %26 = load i32, ptr %15, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32, ptr %19, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cxd2880_io, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load ptr, ptr %32, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 %40(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %3, i32 noundef 1) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i8, ptr %3, align 1
  %45 = and i8 %44, 7
  store i8 %45, ptr %5, align 1
  %46 = lshr i8 %44, 4
  %47 = and i8 %46, 1
  store i8 %47, ptr %6, align 1
  %48 = icmp eq i8 %45, 7
  br i1 %48, label %49, label %56

49:                                               ; preds = %43, %38, %31, %28, %25
  %50 = phi i32 [ %41, %38 ], [ %36, %31 ], [ -22, %28 ], [ -22, %25 ], [ -11, %43 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.cxd2880_io, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 %54(ptr noundef %52, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %130

56:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %57 = icmp ult i8 %45, 5
  br i1 %57, label %58, label %82

58:                                               ; preds = %56
  %59 = load i32, ptr %11, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat_sub(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %32, align 4
  %66 = getelementptr inbounds %struct.cxd2880_io, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %65, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %130

69:                                               ; preds = %61
  %70 = load i8, ptr %5, align 1
  %71 = icmp ult i8 %70, 5
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load ptr, ptr %32, align 4
  %74 = getelementptr inbounds %struct.cxd2880_io, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %73, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %130

77:                                               ; preds = %58
  %78 = load ptr, ptr %32, align 4
  %79 = getelementptr inbounds %struct.cxd2880_io, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = call i32 %80(ptr noundef %78, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %130

82:                                               ; preds = %69, %56
  %83 = load ptr, ptr %32, align 4
  %84 = getelementptr inbounds %struct.cxd2880_io, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 %85(ptr noundef %83, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %87 = icmp eq i32 %86, 0
  %88 = load ptr, ptr %32, align 4
  br i1 %87, label %93, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.cxd2880_io, ptr %88, i32 0, i32 2
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 %91(ptr noundef %88, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %130

93:                                               ; preds = %82
  %94 = load ptr, ptr %88, align 4
  %95 = call i32 %94(ptr noundef %88, i32 noundef 1, i8 noundef zeroext 95, ptr noundef nonnull %4, i32 noundef 1) #5
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %32, align 4
  %99 = getelementptr inbounds %struct.cxd2880_io, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 %100(ptr noundef %98, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %130

102:                                              ; preds = %93
  %103 = load i8, ptr %4, align 1
  %104 = and i8 %103, 1
  store i8 %104, ptr %1, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %32, align 4
  %108 = getelementptr inbounds %struct.cxd2880_io, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 %109(ptr noundef %107, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 34) #5
  %111 = icmp eq i32 %110, 0
  %112 = load ptr, ptr %32, align 4
  %113 = getelementptr inbounds %struct.cxd2880_io, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  br i1 %111, label %117, label %115

115:                                              ; preds = %106
  %116 = call i32 %114(ptr noundef %112, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %130

117:                                              ; preds = %106
  %118 = call i32 %114(ptr noundef %112, i32 noundef 1, i8 noundef zeroext 22, i8 noundef zeroext 1) #5
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = load ptr, ptr %32, align 4
  %122 = getelementptr inbounds %struct.cxd2880_io, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = call i32 %123(ptr noundef %121, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %130

125:                                              ; preds = %117, %102
  %126 = load ptr, ptr %32, align 4
  %127 = getelementptr inbounds %struct.cxd2880_io, ptr %126, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = call i32 %128(ptr noundef %126, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %130

130:                                              ; preds = %125, %120, %115, %97, %89, %77, %72, %64, %49, %22, %18, %14, %10, %2
  %131 = phi i32 [ %50, %49 ], [ %62, %64 ], [ -11, %72 ], [ %86, %89 ], [ %95, %97 ], [ %110, %115 ], [ %118, %120 ], [ 0, %125 ], [ -11, %77 ], [ -22, %2 ], [ -22, %10 ], [ -22, %14 ], [ -22, %18 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_post(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %99

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %99, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %99

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %99

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cxd2880_io, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %21, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %19
  %27 = load ptr, ptr %20, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %27, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %3, i32 noundef 16) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %99

31:                                               ; preds = %26
  %32 = load i8, ptr %3, align 1
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %99, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = and i8 %37, 127
  %39 = zext i8 %38 to i16
  %40 = shl nuw nsw i16 %39, 8
  %41 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i16
  %44 = or i16 %40, %43
  store i16 %44, ptr %1, align 4
  %45 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %1, i32 0, i32 1
  store i8 %46, ptr %47, align 2
  %48 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 15
  %51 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %1, i32 0, i32 2
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 5
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %1, i32 0, i32 3
  store i8 %53, ptr %54, align 4
  %55 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 6
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, 7
  %58 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %1, i32 0, i32 4
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 7
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = shl nuw i32 %61, 24
  %63 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %1, i32 0, i32 5
  %64 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 8
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or i32 %67, %62
  %69 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 9
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = or i32 %72, %68
  %74 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 10
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %73, %76
  store i32 %77, ptr %63, align 4
  %78 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 11
  %79 = load i8, ptr %78, align 1
  %80 = and i8 %79, 15
  %81 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %1, i32 0, i32 6
  store i8 %80, ptr %81, align 4
  %82 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 12
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %1, i32 0, i32 7
  %87 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 13
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or i32 %90, %85
  %92 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 14
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %91, %94
  store i32 %95, ptr %86, align 4
  %96 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 15
  %97 = load i8, ptr %96, align 1
  %98 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %1, i32 0, i32 8
  store i8 %97, ptr %98, align 4
  br label %99

99:                                               ; preds = %35, %31, %26, %19, %15, %11, %7, %2
  %100 = phi i32 [ 0, %35 ], [ -22, %2 ], [ -22, %7 ], [ -22, %11 ], [ -22, %15 ], [ %24, %19 ], [ %29, %26 ], [ -11, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_bbheader(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca [14 x i8], align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %5, i8 0, i32 14, i1 false), !annotation !8
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %177

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %177, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %177

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %177

23:                                               ; preds = %19
  %24 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %177

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %27 = load i32, ptr %16, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load i32, ptr %20, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.cxd2880_io, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load ptr, ptr %33, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %40, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %4, i32 noundef 1) #5
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i8, ptr %4, align 1
  %46 = and i8 %45, 7
  %47 = icmp eq i8 %46, 7
  br i1 %47, label %48, label %55

48:                                               ; preds = %44, %39, %32, %29, %26
  %49 = phi i32 [ %42, %39 ], [ %37, %32 ], [ -22, %29 ], [ -22, %26 ], [ -11, %44 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %177

55:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  %56 = and i8 %45, 32
  %57 = icmp eq i8 %56, 0
  %58 = load ptr, ptr %33, align 4
  %59 = getelementptr inbounds %struct.cxd2880_io, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  br i1 %57, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 %60(ptr noundef %58, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %177

63:                                               ; preds = %55
  %64 = call i32 %60(ptr noundef %58, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %33, align 4
  %68 = getelementptr inbounds %struct.cxd2880_io, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef %67, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %177

71:                                               ; preds = %63
  %72 = icmp eq i32 %1, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #5
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #5
  store i8 0, ptr %7, align 1, !annotation !8
  %74 = load ptr, ptr %33, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %74, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %6, i32 noundef 1) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load i8, ptr %6, align 1
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = load ptr, ptr %33, align 4
  br i1 %81, label %93, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %82, align 4
  %85 = call i32 %84(ptr noundef %82, i32 noundef 1, i8 noundef zeroext -74, ptr noundef nonnull %7, i32 noundef 1) #5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8, ptr %7, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87, %83, %73
  %91 = phi i32 [ %76, %73 ], [ %85, %83 ], [ -11, %87 ]
  %92 = load ptr, ptr %33, align 4
  br label %93

93:                                               ; preds = %90, %78
  %94 = phi ptr [ %82, %78 ], [ %92, %90 ]
  %95 = phi i32 [ -11, %78 ], [ %91, %90 ]
  %96 = getelementptr inbounds %struct.cxd2880_io, ptr %94, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 %97(ptr noundef %94, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  br label %177

99:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #5
  br label %100

100:                                              ; preds = %99, %71
  %101 = phi i8 [ 81, %99 ], [ 66, %71 ]
  %102 = load ptr, ptr %33, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = call i32 %103(ptr noundef %102, i32 noundef 1, i8 noundef zeroext %101, ptr noundef nonnull %5, i32 noundef 14) #5
  %105 = icmp eq i32 %104, 0
  %106 = load ptr, ptr %33, align 4
  %107 = getelementptr inbounds %struct.cxd2880_io, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = call i32 %108(ptr noundef %106, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %105, label %110, label %177

110:                                              ; preds = %100
  %111 = load i8, ptr %5, align 1
  %112 = lshr i8 %111, 6
  %113 = zext i8 %112 to i32
  store i32 %113, ptr %2, align 4
  %114 = lshr i8 %111, 5
  %115 = and i8 %114, 1
  %116 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 1
  store i8 %115, ptr %116, align 4
  %117 = lshr i8 %111, 4
  %118 = and i8 %117, 1
  %119 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 2
  store i8 %118, ptr %119, align 1
  %120 = lshr i8 %111, 3
  %121 = and i8 %120, 1
  %122 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 3
  store i8 %121, ptr %122, align 2
  %123 = lshr i8 %111, 2
  %124 = and i8 %123, 1
  %125 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 4
  store i8 %124, ptr %125, align 1
  %126 = and i8 %111, 3
  %127 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 5
  store i8 %126, ptr %127, align 4
  %128 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 6
  store i8 %129, ptr %130, align 1
  %131 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 3
  %132 = load i8, ptr %131, align 1
  %133 = and i8 %132, 1
  %134 = icmp eq i8 %133, 0
  %135 = select i1 %134, i32 1, i32 2
  %136 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 11
  store i32 %135, ptr %136, align 4
  %137 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 4
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i16
  %140 = shl nuw i16 %139, 8
  %141 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 5
  %142 = load i8, ptr %141, align 1
  %143 = zext i8 %142 to i16
  %144 = or i16 %140, %143
  %145 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 8
  store i16 %144, ptr %145, align 4
  br i1 %134, label %146, label %160

146:                                              ; preds = %110
  %147 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 6
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i16
  %150 = shl nuw i16 %149, 8
  %151 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 7
  %152 = load i8, ptr %151, align 1
  %153 = zext i8 %152 to i16
  %154 = or i16 %150, %153
  %155 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 7
  store i16 %154, ptr %155, align 2
  %156 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 8
  %157 = load i8, ptr %156, align 1
  %158 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 9
  store i8 %157, ptr %158, align 2
  %159 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 10
  store i32 0, ptr %159, align 4
  br label %177

160:                                              ; preds = %110
  %161 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 7
  store i16 0, ptr %161, align 2
  %162 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 9
  store i8 0, ptr %162, align 2
  %163 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 11
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl nuw nsw i32 %165, 16
  %167 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 12
  %168 = load i8, ptr %167, align 1
  %169 = zext i8 %168 to i32
  %170 = shl nuw nsw i32 %169, 8
  %171 = or i32 %170, %166
  %172 = getelementptr inbounds [14 x i8], ptr %5, i32 0, i32 13
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = or i32 %171, %174
  %176 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %2, i32 0, i32 10
  store i32 %175, ptr %176, align 4
  br label %177

177:                                              ; preds = %160, %146, %100, %93, %66, %61, %48, %23, %19, %15, %11, %3
  %178 = phi i32 [ %49, %48 ], [ %64, %66 ], [ -11, %61 ], [ -22, %3 ], [ -22, %11 ], [ -22, %15 ], [ -22, %19 ], [ %24, %23 ], [ 0, %160 ], [ 0, %146 ], [ %95, %93 ], [ %104, %100 ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %5) #5
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_in_bandb_ts_rate(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = icmp ne ptr %0, null
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %146

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %146, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %146

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %146

22:                                               ; preds = %18
  %23 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %146

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  %26 = load i32, ptr %15, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32, ptr %19, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cxd2880_io, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load ptr, ptr %32, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 %40(ptr noundef %39, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %4, i32 noundef 1) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i8, ptr %4, align 1
  %45 = and i8 %44, 7
  %46 = icmp eq i8 %45, 7
  br i1 %46, label %47, label %54

47:                                               ; preds = %43, %38, %31, %28, %25
  %48 = phi i32 [ %41, %38 ], [ %36, %31 ], [ -22, %28 ], [ -22, %25 ], [ -11, %43 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  %49 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %146

54:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  %55 = and i8 %44, 32
  %56 = icmp eq i8 %55, 0
  %57 = load ptr, ptr %32, align 4
  %58 = getelementptr inbounds %struct.cxd2880_io, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  br i1 %56, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 %59(ptr noundef %57, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %146

62:                                               ; preds = %54
  %63 = call i32 %59(ptr noundef %57, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %64 = icmp eq i32 %63, 0
  %65 = load ptr, ptr %32, align 4
  br i1 %64, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.cxd2880_io, ptr %65, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef %65, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %146

70:                                               ; preds = %62
  %71 = load ptr, ptr %65, align 4
  %72 = call i32 %71(ptr noundef %65, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %5, i32 noundef 1) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %32, align 4
  %76 = getelementptr inbounds %struct.cxd2880_io, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 %77(ptr noundef %75, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %146

79:                                               ; preds = %70
  %80 = load i8, ptr %5, align 1
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load ptr, ptr %32, align 4
  %85 = getelementptr inbounds %struct.cxd2880_io, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 %86(ptr noundef %84, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %146

88:                                               ; preds = %79
  %89 = icmp eq i32 %1, 0
  %90 = select i1 %89, i8 -70, i8 -89
  %91 = load ptr, ptr %32, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = call i32 %92(ptr noundef %91, i32 noundef 1, i8 noundef zeroext %90, ptr noundef nonnull %6, i32 noundef 1) #5
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr %32, align 4
  %97 = getelementptr inbounds %struct.cxd2880_io, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = call i32 %98(ptr noundef %96, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %146

100:                                              ; preds = %88
  %101 = load i8, ptr %6, align 4
  %102 = icmp sgt i8 %101, -1
  %103 = load ptr, ptr %32, align 4
  %104 = getelementptr inbounds %struct.cxd2880_io, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  br i1 %102, label %106, label %108

106:                                              ; preds = %100
  %107 = call i32 %105(ptr noundef %103, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %146

108:                                              ; preds = %100
  %109 = call i32 %105(ptr noundef %103, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 37) #5
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load ptr, ptr %32, align 4
  %113 = getelementptr inbounds %struct.cxd2880_io, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  %115 = call i32 %114(ptr noundef %112, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %146

116:                                              ; preds = %108
  %117 = select i1 %89, i8 -90, i8 -86
  %118 = load ptr, ptr %32, align 4
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 %119(ptr noundef %118, i32 noundef 1, i8 noundef zeroext %117, ptr noundef nonnull %6, i32 noundef 4) #5
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %116
  %123 = load ptr, ptr %32, align 4
  %124 = getelementptr inbounds %struct.cxd2880_io, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = call i32 %125(ptr noundef %123, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %146

127:                                              ; preds = %116
  %128 = load i8, ptr %6, align 4
  %129 = and i8 %128, 7
  %130 = zext i8 %129 to i32
  %131 = shl nuw nsw i32 %130, 24
  %132 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 1
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i32
  %135 = shl nuw nsw i32 %134, 16
  %136 = or i32 %131, %135
  %137 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 2
  %138 = load i8, ptr %137, align 2
  %139 = zext i8 %138 to i32
  %140 = shl nuw nsw i32 %139, 8
  %141 = or i32 %136, %140
  %142 = getelementptr inbounds [4 x i8], ptr %6, i32 0, i32 3
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  %145 = or i32 %141, %144
  store i32 %145, ptr %2, align 4
  br label %146

146:                                              ; preds = %127, %122, %111, %106, %95, %83, %74, %66, %60, %47, %22, %18, %14, %10, %3
  %147 = phi i32 [ %48, %47 ], [ %63, %66 ], [ %72, %74 ], [ %93, %95 ], [ -11, %106 ], [ %109, %111 ], [ %120, %122 ], [ 0, %127 ], [ -11, %83 ], [ -11, %60 ], [ -22, %3 ], [ -22, %10 ], [ -22, %14 ], [ -22, %18 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %81

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %81

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %81

16:                                               ; preds = %12
  %17 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %20 = load i32, ptr %9, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, ptr %13, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %3, i32 noundef 1) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i8, ptr %3, align 1
  %39 = and i8 %38, 7
  %40 = icmp eq i8 %39, 7
  br i1 %40, label %41, label %48

41:                                               ; preds = %37, %32, %25, %22, %19
  %42 = phi i32 [ %35, %32 ], [ %30, %25 ], [ -22, %22 ], [ -22, %19 ], [ -11, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.cxd2880_io, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = call i32 %46(ptr noundef %44, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %81

48:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %49 = icmp eq i8 %39, 6
  %50 = load ptr, ptr %26, align 4
  %51 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  br i1 %49, label %61, label %53

53:                                               ; preds = %48
  %54 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load ptr, ptr %0, align 4
  %60 = call i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(ptr noundef %59, ptr noundef nonnull %1)
  br label %81

61:                                               ; preds = %48
  %62 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %63 = icmp eq i32 %62, 0
  %64 = load ptr, ptr %26, align 4
  br i1 %63, label %69, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.cxd2880_io, ptr %64, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %64, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %81

69:                                               ; preds = %61
  %70 = load ptr, ptr %64, align 4
  %71 = call i32 %70(ptr noundef %64, i32 noundef 1, i8 noundef zeroext 47, ptr noundef nonnull %4, i32 noundef 1) #5
  %72 = icmp eq i32 %71, 0
  %73 = load ptr, ptr %26, align 4
  %74 = getelementptr inbounds %struct.cxd2880_io, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef %73, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %72, label %77, label %81

77:                                               ; preds = %69
  %78 = load i8, ptr %4, align 1
  %79 = and i8 %78, 1
  %80 = zext i8 %79 to i32
  store i32 %80, ptr %1, align 4
  br label %81

81:                                               ; preds = %77, %69, %65, %58, %53, %41, %16, %12, %8, %2
  %82 = phi i32 [ %42, %41 ], [ %62, %65 ], [ 0, %77 ], [ -22, %2 ], [ -22, %8 ], [ -22, %12 ], [ %17, %16 ], [ %60, %58 ], [ -11, %53 ], [ %71, %69 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_snr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #5
  store i16 0, ptr %3, align 2
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  store i32 -1000000, ptr %1, align 4
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = call fastcc i32 @dvbt2_read_snr_reg(ptr noundef nonnull %0, ptr noundef nonnull %3)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i16, ptr %3, align 2
  %28 = zext i16 %27 to i32
  %29 = call fastcc i32 @dvbt2_calc_snr(ptr noundef nonnull %0, i32 noundef %28, ptr noundef nonnull %1)
  br label %32

30:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4
  %31 = call i32 @cxd2880_tnrdmd_dvbt2_mon_snr_diver(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %32

32:                                               ; preds = %30, %26, %23, %17, %13, %9, %2
  %33 = phi i32 [ -22, %2 ], [ -22, %9 ], [ -22, %13 ], [ -22, %17 ], [ %24, %23 ], [ %29, %26 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt2_read_snr_reg(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #5
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %73

8:                                                ; preds = %2
  %9 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cxd2880_io, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %21, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load ptr, ptr %20, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %3, i32 noundef 1) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8, ptr %3, align 1
  %33 = and i8 %32, 7
  %34 = icmp eq i8 %33, 7
  br i1 %34, label %35, label %42

35:                                               ; preds = %31, %26, %19, %15, %11
  %36 = phi i32 [ %29, %26 ], [ %24, %19 ], [ -22, %15 ], [ -22, %11 ], [ -11, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %37 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.cxd2880_io, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 %40(ptr noundef %38, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %73

42:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %43 = icmp eq i8 %33, 6
  %44 = load ptr, ptr %20, align 4
  %45 = getelementptr inbounds %struct.cxd2880_io, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  br i1 %43, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 %46(ptr noundef %44, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %73

49:                                               ; preds = %42
  %50 = call i32 %46(ptr noundef %44, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %20, align 4
  br i1 %51, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.cxd2880_io, ptr %52, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %52, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %73

57:                                               ; preds = %49
  %58 = load ptr, ptr %52, align 4
  %59 = call i32 %58(ptr noundef %52, i32 noundef 1, i8 noundef zeroext 19, ptr noundef nonnull %4, i32 noundef 2) #5
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr %20, align 4
  %62 = getelementptr inbounds %struct.cxd2880_io, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 %63(ptr noundef %61, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %60, label %65, label %73

65:                                               ; preds = %57
  %66 = load i8, ptr %4, align 2
  %67 = zext i8 %66 to i16
  %68 = shl nuw i16 %67, 8
  %69 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i16
  %72 = or i16 %68, %71
  store i16 %72, ptr %1, align 2
  br label %73

73:                                               ; preds = %65, %57, %53, %47, %35, %8, %2
  %74 = phi i32 [ %36, %35 ], [ -11, %47 ], [ %50, %53 ], [ 0, %65 ], [ -22, %2 ], [ %9, %8 ], [ %59, %57 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt2_calc_snr(ptr noundef readnone %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 10876)
  %11 = tail call i32 @intlog10(i32 noundef %10) #5
  %12 = sub nuw nsw i32 12600, %10
  %13 = tail call i32 @intlog10(i32 noundef %12) #5
  %14 = add i32 %11, 839
  %15 = sub i32 %14, %13
  %16 = sdiv i32 %15, 1678
  %17 = add nsw i32 %16, 32000
  store i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %9, %7, %3
  %19 = phi i32 [ 0, %9 ], [ -22, %3 ], [ -11, %7 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_snr_diver(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #5
  store i16 0, ptr %5, align 2
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  %11 = icmp ne ptr %3, null
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %72

13:                                               ; preds = %4
  store i32 -1000000, ptr %1, align 4
  store i32 -1000000, ptr %2, align 4
  store i32 -1000000, ptr %3, align 4
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %72

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = call fastcc i32 @dvbt2_read_snr_reg(ptr noundef nonnull %0, ptr noundef nonnull %5)
  switch i32 %26, label %72 [
    i32 0, label %27
    i32 -11, label %43
  ]

27:                                               ; preds = %25
  %28 = load i16, ptr %5, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = call i16 @llvm.umin.i16(i16 %28, i16 10876)
  %32 = zext i16 %31 to i32
  %33 = call i32 @intlog10(i32 noundef %32) #5
  %34 = sub nuw nsw i32 12600, %32
  %35 = call i32 @intlog10(i32 noundef %34) #5
  %36 = add i32 %33, 839
  %37 = sub i32 %36, %35
  %38 = sdiv i32 %37, 1678
  %39 = add nsw i32 %38, 32000
  store i32 %39, ptr %2, align 4
  %40 = load i16, ptr %5, align 2
  %41 = zext i16 %40 to i32
  br label %44

42:                                               ; preds = %27
  store i16 0, ptr %5, align 2
  br label %44

43:                                               ; preds = %25
  store i16 0, ptr %5, align 2
  br label %44

44:                                               ; preds = %43, %42, %30
  %45 = phi i32 [ %41, %30 ], [ 0, %42 ], [ 0, %43 ]
  %46 = load ptr, ptr %0, align 4
  %47 = call fastcc i32 @dvbt2_read_snr_reg(ptr noundef %46, ptr noundef nonnull %5)
  switch i32 %47, label %72 [
    i32 0, label %48
    i32 -11, label %58
  ]

48:                                               ; preds = %44
  %49 = load ptr, ptr %0, align 4
  %50 = load i16, ptr %5, align 2
  %51 = zext i16 %50 to i32
  %52 = call fastcc i32 @dvbt2_calc_snr(ptr noundef %49, i32 noundef %51, ptr noundef nonnull %3)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i16, ptr %5, align 2
  %56 = zext i16 %55 to i32
  br label %59

57:                                               ; preds = %48
  store i16 0, ptr %5, align 2
  br label %59

58:                                               ; preds = %44
  store i16 0, ptr %5, align 2
  br label %59

59:                                               ; preds = %58, %57, %54
  %60 = phi i32 [ %56, %54 ], [ 0, %58 ], [ 0, %57 ]
  %61 = add nuw nsw i32 %60, %45
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = call i32 @llvm.umin.i32(i32 %61, i32 10876) #5
  %65 = call i32 @intlog10(i32 noundef %64) #5
  %66 = sub nuw nsw i32 12600, %64
  %67 = call i32 @intlog10(i32 noundef %66) #5
  %68 = add i32 %65, 839
  %69 = sub i32 %68, %67
  %70 = sdiv i32 %69, 1678
  %71 = add nsw i32 %70, 32000
  store i32 %71, ptr %1, align 4
  br label %72

72:                                               ; preds = %63, %59, %44, %25, %21, %17, %13, %4
  %73 = phi i32 [ -22, %4 ], [ -22, %13 ], [ -22, %17 ], [ -22, %21 ], [ %26, %25 ], [ %47, %44 ], [ 0, %63 ], [ -11, %59 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_packet_error_number(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %44

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cxd2880_io, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %21, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load ptr, ptr %20, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 57, ptr noundef nonnull %3, i32 noundef 3) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i8, ptr %3, align 1
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = or i32 %39, %42
  store i32 %43, ptr %1, align 4
  br label %44

44:                                               ; preds = %35, %31, %26, %19, %15, %11, %7, %2
  %45 = phi i32 [ 0, %35 ], [ -22, %2 ], [ -22, %7 ], [ -22, %11 ], [ -22, %15 ], [ %24, %19 ], [ %29, %26 ], [ -11, %31 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #5
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sampling_offset(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [5 x i8], align 1
  %5 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %5) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %5, i8 0, i32 5, i1 false), !annotation !8
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %160

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %160

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %160

17:                                               ; preds = %13
  %18 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %160

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1, !annotation !8
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load i32, ptr %14, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load ptr, ptr %27, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %34, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %3, i32 noundef 1) #5
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8, ptr %3, align 1
  %40 = and i8 %39, 7
  %41 = icmp eq i8 %40, 7
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %33, %26, %23, %20
  %43 = phi i32 [ %36, %33 ], [ %31, %26 ], [ -22, %23 ], [ -22, %20 ], [ -11, %38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %44 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.cxd2880_io, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 %47(ptr noundef %45, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %160

49:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %50 = icmp eq i8 %40, 6
  %51 = load ptr, ptr %27, align 4
  %52 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  br i1 %50, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %160

56:                                               ; preds = %49
  %57 = call i32 %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr %27, align 4
  br i1 %58, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.cxd2880_io, ptr %59, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %59, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %160

64:                                               ; preds = %56
  %65 = load ptr, ptr %59, align 4
  %66 = call i32 %65(ptr noundef %59, i32 noundef 1, i8 noundef zeroext 52, ptr noundef nonnull %4, i32 noundef 5) #5
  %67 = icmp eq i32 %66, 0
  %68 = load ptr, ptr %27, align 4
  %69 = getelementptr inbounds %struct.cxd2880_io, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  br i1 %67, label %73, label %71

71:                                               ; preds = %64
  %72 = call i32 %70(ptr noundef %68, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %160

73:                                               ; preds = %64
  %74 = call i32 %70(ptr noundef %68, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 4) #5
  %75 = icmp eq i32 %74, 0
  %76 = load ptr, ptr %27, align 4
  br i1 %75, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.cxd2880_io, ptr %76, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 %79(ptr noundef %76, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %160

81:                                               ; preds = %73
  %82 = load ptr, ptr %76, align 4
  %83 = call i32 %82(ptr noundef %76, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %5, i32 noundef 5) #5
  %84 = icmp eq i32 %83, 0
  %85 = load ptr, ptr %27, align 4
  %86 = getelementptr inbounds %struct.cxd2880_io, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = call i32 %87(ptr noundef %85, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %84, label %89, label %160

89:                                               ; preds = %81
  %90 = load i8, ptr %4, align 1
  %91 = and i8 %90, 127
  %92 = load i8, ptr %5, align 1
  %93 = and i8 %92, 127
  %94 = sub nsw i8 %91, %93
  %95 = add i8 %94, -2
  %96 = icmp ult i8 %95, -3
  br i1 %96, label %160, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 1
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = shl nuw i32 %100, 24
  %102 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 2
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or i32 %105, %101
  %107 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 3
  %108 = load i8, ptr %107, align 1
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or i32 %106, %110
  %112 = getelementptr inbounds [5 x i8], ptr %4, i32 0, i32 4
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = or i32 %111, %114
  %116 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 1
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw i32 %118, 24
  %120 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 2
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = shl nuw nsw i32 %122, 16
  %124 = or i32 %123, %119
  %125 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 3
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = shl nuw nsw i32 %127, 8
  %129 = or i32 %124, %128
  %130 = getelementptr inbounds [5 x i8], ptr %5, i32 0, i32 4
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = or i32 %129, %132
  %134 = lshr i32 %115, 1
  %135 = lshr i32 %133, 1
  switch i8 %94, label %140 [
    i8 1, label %136
    i8 -1, label %138
  ]

136:                                              ; preds = %97
  %137 = or i32 %134, -2147483648
  br label %140

138:                                              ; preds = %97
  %139 = or i32 %134, -2147483648
  br label %140

140:                                              ; preds = %138, %136, %97
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ], [ %134, %97 ]
  %142 = sub i32 %141, %135
  %143 = zext i8 %93 to i32
  %144 = shl nuw nsw i32 %143, 24
  %145 = shl nuw nsw i32 %118, 16
  %146 = shl nuw nsw i32 %122, 8
  %147 = or i32 %144, 195312
  %148 = add nuw i32 %147, %145
  %149 = add nuw nsw i32 %148, %127
  %150 = add i32 %149, %146
  %151 = sdiv i32 %150, 390625
  %152 = ashr i32 %151, 1
  %153 = trunc i32 %152 to i16
  %154 = icmp slt i32 %142, 0
  %155 = select i1 %154, i16 -2, i16 2
  %156 = sdiv i16 %153, %155
  %157 = sext i16 %156 to i32
  %158 = add i32 %142, %157
  %159 = sdiv i32 %158, %152
  store i32 %159, ptr %1, align 4
  br label %160

160:                                              ; preds = %140, %89, %81, %77, %71, %60, %54, %42, %17, %13, %9, %2
  %161 = phi i32 [ %43, %42 ], [ -11, %54 ], [ %57, %60 ], [ %66, %71 ], [ %74, %77 ], [ 0, %140 ], [ -22, %2 ], [ -22, %9 ], [ -22, %13 ], [ %18, %17 ], [ -11, %89 ], [ %83, %81 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #5
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sampling_offset_sub(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = tail call i32 @cxd2880_tnrdmd_dvbt2_mon_sampling_offset(ptr noundef %11, ptr noundef nonnull %1)
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %12, %10 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_qam(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %99

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %99, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %99

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %99

21:                                               ; preds = %17
  %22 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %26, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %25, align 4
  br i1 %30, label %36, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %31, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

36:                                               ; preds = %24
  %37 = load ptr, ptr %31, align 4
  %38 = call i32 %37(ptr noundef %31, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %5, i32 noundef 1) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %25, align 4
  %42 = getelementptr inbounds %struct.cxd2880_io, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %41, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

45:                                               ; preds = %36
  %46 = load i8, ptr %5, align 1
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load ptr, ptr %25, align 4
  %51 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

54:                                               ; preds = %45
  %55 = icmp eq i32 %1, 0
  %56 = load ptr, ptr %25, align 4
  %57 = load ptr, ptr %56, align 4
  br i1 %55, label %58, label %83

58:                                               ; preds = %54
  %59 = call i32 %57(ptr noundef %56, i32 noundef 1, i8 noundef zeroext -74, ptr noundef nonnull %4, i32 noundef 1) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %25, align 4
  %63 = getelementptr inbounds %struct.cxd2880_io, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 %64(ptr noundef %62, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

66:                                               ; preds = %58
  %67 = load i8, ptr %4, align 1
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr %25, align 4
  br i1 %68, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.cxd2880_io, ptr %69, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %72(ptr noundef %69, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

74:                                               ; preds = %66
  %75 = load ptr, ptr %69, align 4
  %76 = call i32 %75(ptr noundef %69, i32 noundef 1, i8 noundef zeroext -79, ptr noundef nonnull %4, i32 noundef 1) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %25, align 4
  %80 = getelementptr inbounds %struct.cxd2880_io, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 %81(ptr noundef %79, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

83:                                               ; preds = %54
  %84 = call i32 %57(ptr noundef %56, i32 noundef 1, i8 noundef zeroext -98, ptr noundef nonnull %4, i32 noundef 1) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %25, align 4
  %88 = getelementptr inbounds %struct.cxd2880_io, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 %89(ptr noundef %87, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

91:                                               ; preds = %83, %74
  %92 = load ptr, ptr %25, align 4
  %93 = getelementptr inbounds %struct.cxd2880_io, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 %94(ptr noundef %92, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %96 = load i8, ptr %4, align 1
  %97 = and i8 %96, 7
  %98 = zext i8 %97 to i32
  store i32 %98, ptr %2, align 4
  br label %99

99:                                               ; preds = %91, %86, %78, %70, %61, %49, %40, %32, %21, %17, %13, %9, %3
  %100 = phi i32 [ %29, %32 ], [ %38, %40 ], [ %59, %61 ], [ -11, %70 ], [ %76, %78 ], [ 0, %91 ], [ %84, %86 ], [ -11, %49 ], [ -22, %3 ], [ -22, %9 ], [ -22, %13 ], [ -22, %17 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %99

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %99, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %99

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %99

21:                                               ; preds = %17
  %22 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.cxd2880_io, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %26, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #5
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %25, align 4
  br i1 %30, label %36, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.cxd2880_io, ptr %31, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %31, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

36:                                               ; preds = %24
  %37 = load ptr, ptr %31, align 4
  %38 = call i32 %37(ptr noundef %31, i32 noundef 1, i8 noundef zeroext -122, ptr noundef nonnull %5, i32 noundef 1) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %25, align 4
  %42 = getelementptr inbounds %struct.cxd2880_io, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %41, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

45:                                               ; preds = %36
  %46 = load i8, ptr %5, align 1
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load ptr, ptr %25, align 4
  %51 = getelementptr inbounds %struct.cxd2880_io, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 %52(ptr noundef %50, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

54:                                               ; preds = %45
  %55 = icmp eq i32 %1, 0
  %56 = load ptr, ptr %25, align 4
  %57 = load ptr, ptr %56, align 4
  br i1 %55, label %58, label %83

58:                                               ; preds = %54
  %59 = call i32 %57(ptr noundef %56, i32 noundef 1, i8 noundef zeroext -74, ptr noundef nonnull %4, i32 noundef 1) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %25, align 4
  %63 = getelementptr inbounds %struct.cxd2880_io, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 %64(ptr noundef %62, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

66:                                               ; preds = %58
  %67 = load i8, ptr %4, align 1
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr %25, align 4
  br i1 %68, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.cxd2880_io, ptr %69, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 %72(ptr noundef %69, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

74:                                               ; preds = %66
  %75 = load ptr, ptr %69, align 4
  %76 = call i32 %75(ptr noundef %69, i32 noundef 1, i8 noundef zeroext -80, ptr noundef nonnull %4, i32 noundef 1) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %25, align 4
  %80 = getelementptr inbounds %struct.cxd2880_io, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 %81(ptr noundef %79, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

83:                                               ; preds = %54
  %84 = call i32 %57(ptr noundef %56, i32 noundef 1, i8 noundef zeroext -99, ptr noundef nonnull %4, i32 noundef 1) #5
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %25, align 4
  %88 = getelementptr inbounds %struct.cxd2880_io, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 %89(ptr noundef %87, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %99

91:                                               ; preds = %83, %74
  %92 = load ptr, ptr %25, align 4
  %93 = getelementptr inbounds %struct.cxd2880_io, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 %94(ptr noundef %92, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %96 = load i8, ptr %4, align 1
  %97 = and i8 %96, 7
  %98 = zext i8 %97 to i32
  store i32 %98, ptr %2, align 4
  br label %99

99:                                               ; preds = %91, %86, %78, %70, %61, %49, %40, %32, %21, %17, %13, %9, %3
  %100 = phi i32 [ %29, %32 ], [ %38, %40 ], [ %59, %61 ], [ -11, %70 ], [ %76, %78 ], [ 0, %91 ], [ %84, %86 ], [ -11, %49 ], [ -22, %3 ], [ -22, %9 ], [ -22, %13 ], [ -22, %17 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ssi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef nonnull %0, ptr noundef nonnull %3) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4
  %24 = call fastcc i32 @dvbt2_calc_ssi(ptr noundef nonnull %0, i32 noundef %23, ptr noundef nonnull %1)
  br label %25

25:                                               ; preds = %22, %19, %15, %11, %7, %2
  %26 = phi i32 [ %24, %22 ], [ -22, %2 ], [ -22, %7 ], [ -22, %11 ], [ -22, %15 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt2_calc_ssi(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %3
  %10 = call i32 @cxd2880_tnrdmd_dvbt2_mon_qam(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = call i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = icmp ugt i32 %16, 7
  %18 = load i32, ptr %4, align 4
  %19 = icmp ugt i32 %18, 3
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %53, label %21

21:                                               ; preds = %15
  %22 = getelementptr [4 x [8 x i32]], ptr @ref_dbm_1000, i32 0, i32 %18, i32 %16
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %1, %23
  %25 = icmp slt i32 %24, -15000
  br i1 %25, label %50, label %26

26:                                               ; preds = %21
  %27 = icmp slt i32 %24, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = trunc i32 %24 to i16
  %30 = shl nsw i16 %29, 1
  %31 = add nsw i16 %30, 31500
  %32 = udiv i16 %31, 3000
  %33 = zext i16 %32 to i32
  br label %50

34:                                               ; preds = %26
  %35 = icmp ult i32 %24, 20000
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = shl nuw nsw i32 %24, 2
  %38 = add nuw nsw i32 %37, 500
  %39 = udiv i32 %38, 1000
  %40 = add nuw nsw i32 %39, 10
  br label %50

41:                                               ; preds = %34
  %42 = icmp ult i32 %24, 35000
  br i1 %42, label %43, label %50

43:                                               ; preds = %41
  %44 = trunc i32 %24 to i16
  %45 = shl i16 %44, 1
  %46 = add i16 %45, 27036
  %47 = udiv i16 %46, 3000
  %48 = add nuw nsw i16 %47, 90
  %49 = zext i16 %48 to i32
  br label %50

50:                                               ; preds = %43, %41, %36, %28, %21
  %51 = phi i32 [ %33, %28 ], [ %40, %36 ], [ %49, %43 ], [ 0, %21 ], [ 100, %41 ]
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %2, align 1
  br label %53

53:                                               ; preds = %50, %15, %12, %9, %3
  %54 = phi i32 [ 0, %50 ], [ -22, %3 ], [ %10, %9 ], [ %13, %12 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_ssi_sub(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %20, ptr noundef nonnull %3) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4
  %25 = call fastcc i32 @dvbt2_calc_ssi(ptr noundef nonnull %0, i32 noundef %24, ptr noundef nonnull %1)
  br label %26

26:                                               ; preds = %23, %19, %15, %11, %7, %2
  %27 = phi i32 [ %25, %23 ], [ -22, %2 ], [ -22, %7 ], [ -22, %11 ], [ -22, %15 ], [ %21, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
