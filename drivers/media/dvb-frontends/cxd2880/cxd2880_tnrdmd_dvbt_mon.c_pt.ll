; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt_mon.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_tnrdmd_dvbt_mon.c"
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
%struct.cxd2880_dvbt_tpsinfo = type { i32, i32, i32, i32, i32, i32, i8, i8, i16, i8, i8, i8 }

@ref_dbm_1000 = internal unnamed_addr constant [3 x [5 x i32]] [[5 x i32] [i32 -93000, i32 -91000, i32 -90000, i32 -89000, i32 -88000], [5 x i32] [i32 -87000, i32 -85000, i32 -84000, i32 -83000, i32 -82000], [5 x i32] [i32 -82000, i32 -80000, i32 -78000, i32 -77000, i32 -76000]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1
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
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.cxd2880_io, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %23, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
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
  %35 = lshr i8 %34, 4
  %36 = and i8 %35, 1
  store i8 %36, ptr %3, align 1
  %37 = and i8 %34, 7
  store i8 %37, ptr %1, align 1
  %38 = lshr i8 %34, 5
  %39 = and i8 %38, 1
  store i8 %39, ptr %2, align 1
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
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat_sub(ptr noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1
  %16 = icmp eq ptr %15, null
  br i1 %16, label %44, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 25
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %15, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load ptr, ptr %26, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 %34(ptr noundef %33, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %4, i32 noundef 1) #5
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i8, ptr %4, align 1
  %39 = lshr i8 %38, 4
  %40 = and i8 %39, 1
  store i8 %40, ptr %2, align 1
  %41 = and i8 %38, 7
  store i8 %41, ptr %1, align 1
  %42 = icmp eq i8 %41, 7
  %43 = select i1 %42, i32 -11, i32 0
  br label %44

44:                                               ; preds = %37, %32, %25, %21, %17, %14
  %45 = phi i32 [ -22, %14 ], [ -22, %17 ], [ -22, %21 ], [ %30, %25 ], [ %35, %32 ], [ %43, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  br label %46

46:                                               ; preds = %44, %10, %3
  %47 = phi i32 [ %45, %44 ], [ -22, %3 ], [ -22, %10 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %87

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %87

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %87

19:                                               ; preds = %15
  %20 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %87

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #5
  store i8 0, ptr %4, align 1
  %23 = load i32, ptr %12, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i32, ptr %16, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.cxd2880_io, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %30, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load ptr, ptr %29, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 %37(ptr noundef %36, i32 noundef 1, i8 noundef zeroext 16, ptr noundef nonnull %4, i32 noundef 1) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i8, ptr %4, align 1
  %42 = and i8 %41, 7
  %43 = icmp eq i8 %42, 7
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %35, %28, %25, %22
  %45 = phi i32 [ %38, %35 ], [ %33, %28 ], [ -22, %25 ], [ -22, %22 ], [ -11, %40 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  br label %48

46:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  %47 = icmp eq i8 %42, 6
  br i1 %47, label %61, label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ -11, %46 ]
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.cxd2880_io, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 %53(ptr noundef %51, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %87

58:                                               ; preds = %48
  %59 = load ptr, ptr %0, align 4
  %60 = call i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(ptr noundef %59, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %87

61:                                               ; preds = %46
  %62 = load ptr, ptr %29, align 4
  %63 = getelementptr inbounds %struct.cxd2880_io, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 %64(ptr noundef %62, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
  %66 = icmp eq i32 %65, 0
  %67 = load ptr, ptr %29, align 4
  br i1 %66, label %72, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.cxd2880_io, ptr %67, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = call i32 %70(ptr noundef %67, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %87

72:                                               ; preds = %61
  %73 = load ptr, ptr %67, align 4
  %74 = call i32 %73(ptr noundef %67, i32 noundef 1, i8 noundef zeroext 27, ptr noundef nonnull %5, i32 noundef 1) #5
  %75 = icmp eq i32 %74, 0
  %76 = load ptr, ptr %29, align 4
  %77 = getelementptr inbounds %struct.cxd2880_io, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %76, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %75, label %80, label %87

80:                                               ; preds = %72
  %81 = load i8, ptr %5, align 1
  %82 = lshr i8 %81, 2
  %83 = and i8 %82, 3
  %84 = zext i8 %83 to i32
  store i32 %84, ptr %1, align 4
  %85 = and i8 %81, 3
  %86 = zext i8 %85 to i32
  store i32 %86, ptr %2, align 4
  br label %87

87:                                               ; preds = %80, %72, %68, %58, %48, %19, %15, %11, %3
  %88 = phi i32 [ %65, %68 ], [ 0, %80 ], [ -22, %3 ], [ -22, %11 ], [ -22, %15 ], [ %20, %19 ], [ %60, %58 ], [ %49, %48 ], [ %74, %72 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slvt_freeze_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_carrier_offset(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %96

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %96

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %96

16:                                               ; preds = %12
  %17 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %96

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1
  %20 = load i32, ptr %9, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, ptr %13, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
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
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %32, %25, %22, %19
  %42 = phi i32 [ %35, %32 ], [ %30, %25 ], [ -22, %22 ], [ -22, %19 ], [ -11, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  br label %45

43:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %44 = icmp eq i8 %39, 6
  br i1 %44, label %52, label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ -11, %43 ]
  %47 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cxd2880_io, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 %50(ptr noundef %48, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %96

52:                                               ; preds = %43
  %53 = load ptr, ptr %26, align 4
  %54 = getelementptr inbounds %struct.cxd2880_io, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %53, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
  %57 = icmp eq i32 %56, 0
  %58 = load ptr, ptr %26, align 4
  br i1 %57, label %63, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.cxd2880_io, ptr %58, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %58, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %96

63:                                               ; preds = %52
  %64 = load ptr, ptr %58, align 4
  %65 = call i32 %64(ptr noundef %58, i32 noundef 1, i8 noundef zeroext 29, ptr noundef nonnull %4, i32 noundef 4) #5
  %66 = icmp eq i32 %65, 0
  %67 = load ptr, ptr %26, align 4
  %68 = getelementptr inbounds %struct.cxd2880_io, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 %69(ptr noundef %67, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %66, label %71, label %96

71:                                               ; preds = %63
  %72 = load i8, ptr %4, align 4
  %73 = and i8 %72, 31
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
  %90 = call i32 @cxd2880_convert2s_complement(i32 noundef %89, i32 noundef 29) #5
  store i32 %90, ptr %1, align 4
  %91 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 26
  %92 = load i32, ptr %91, align 4
  %93 = mul i32 %92, %90
  %94 = udiv i32 %93, 235
  %95 = sub nsw i32 0, %94
  store i32 %95, ptr %1, align 4
  br label %96

96:                                               ; preds = %71, %63, %59, %45, %16, %12, %8, %2
  %97 = phi i32 [ %46, %45 ], [ %56, %59 ], [ 0, %71 ], [ -22, %2 ], [ -22, %8 ], [ -22, %12 ], [ %17, %16 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %97
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_convert2s_complement(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_carrier_offset_sub(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %12 = tail call i32 @cxd2880_tnrdmd_dvbt_mon_carrier_offset(ptr noundef %11, ptr noundef nonnull %1)
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %12, %10 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca [7 x i8], align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %4, i8 0, i32 7, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  store i8 0, ptr %5, align 1
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %145

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %145

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %145

17:                                               ; preds = %13
  %18 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %145

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load i32, ptr %14, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
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
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %33, %26, %23, %20
  %43 = phi i32 [ %36, %33 ], [ %31, %26 ], [ -22, %23 ], [ -22, %20 ], [ -11, %38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  br label %46

44:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %45 = icmp eq i8 %40, 6
  br i1 %45, label %59, label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ -11, %44 ]
  %48 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.cxd2880_io, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %53 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %145

56:                                               ; preds = %46
  %57 = load ptr, ptr %0, align 4
  %58 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef %57, ptr noundef nonnull %1)
  br label %145

59:                                               ; preds = %44
  %60 = load ptr, ptr %27, align 4
  %61 = getelementptr inbounds %struct.cxd2880_io, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %60, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
  %64 = icmp eq i32 %63, 0
  %65 = load ptr, ptr %27, align 4
  br i1 %64, label %70, label %66

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.cxd2880_io, ptr %65, i32 0, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 %68(ptr noundef %65, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %145

70:                                               ; preds = %59
  %71 = load ptr, ptr %65, align 4
  %72 = call i32 %71(ptr noundef %65, i32 noundef 1, i8 noundef zeroext 41, ptr noundef nonnull %4, i32 noundef 7) #5
  %73 = icmp eq i32 %72, 0
  %74 = load ptr, ptr %27, align 4
  %75 = getelementptr inbounds %struct.cxd2880_io, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  br i1 %73, label %79, label %77

77:                                               ; preds = %70
  %78 = call i32 %76(ptr noundef %74, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %145

79:                                               ; preds = %70
  %80 = call i32 %76(ptr noundef %74, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 17) #5
  %81 = icmp eq i32 %80, 0
  %82 = load ptr, ptr %27, align 4
  br i1 %81, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.cxd2880_io, ptr %82, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = call i32 %85(ptr noundef %82, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %145

87:                                               ; preds = %79
  %88 = load ptr, ptr %82, align 4
  %89 = call i32 %88(ptr noundef %82, i32 noundef 1, i8 noundef zeroext -43, ptr noundef nonnull %5, i32 noundef 1) #5
  %90 = icmp eq i32 %89, 0
  %91 = load ptr, ptr %27, align 4
  %92 = getelementptr inbounds %struct.cxd2880_io, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = call i32 %93(ptr noundef %91, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br i1 %90, label %95, label %145

95:                                               ; preds = %87
  %96 = load i8, ptr %4, align 1
  %97 = lshr i8 %96, 6
  %98 = zext i8 %97 to i32
  store i32 %98, ptr %1, align 4
  %99 = lshr i8 %96, 3
  %100 = and i8 %99, 7
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 1
  store i32 %101, ptr %102, align 4
  %103 = and i8 %96, 7
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 2
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = lshr i8 %107, 5
  %109 = zext i8 %108 to i32
  %110 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 3
  store i32 %109, ptr %110, align 4
  %111 = lshr i8 %107, 3
  %112 = and i8 %111, 3
  %113 = zext i8 %112 to i32
  %114 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 4
  store i32 %113, ptr %114, align 4
  %115 = lshr i8 %107, 1
  %116 = and i8 %115, 3
  %117 = zext i8 %116 to i32
  %118 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 5
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 2
  %120 = load i8, ptr %119, align 1
  %121 = lshr i8 %120, 6
  %122 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 6
  store i8 %121, ptr %122, align 4
  %123 = and i8 %120, 63
  %124 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 7
  store i8 %123, ptr %124, align 1
  %125 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 3
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i16
  %128 = shl nuw i16 %127, 8
  %129 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 4
  %130 = load i8, ptr %129, align 1
  %131 = zext i8 %130 to i16
  %132 = or i16 %128, %131
  %133 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 8
  store i16 %132, ptr %133, align 2
  %134 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 5
  %135 = load i8, ptr %134, align 1
  %136 = and i8 %135, 63
  %137 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 10
  store i8 %136, ptr %137, align 1
  %138 = getelementptr inbounds [7 x i8], ptr %4, i32 0, i32 6
  %139 = load i8, ptr %138, align 1
  %140 = and i8 %139, 63
  %141 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 11
  store i8 %140, ptr %141, align 2
  %142 = load i8, ptr %5, align 1
  %143 = and i8 %142, 1
  %144 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %1, i32 0, i32 9
  store i8 %143, ptr %144, align 4
  br label %145

145:                                              ; preds = %95, %87, %83, %77, %66, %56, %46, %17, %13, %9, %2
  %146 = phi i32 [ %63, %66 ], [ %72, %77 ], [ %80, %83 ], [ 0, %95 ], [ -22, %2 ], [ -22, %9 ], [ -22, %13 ], [ %18, %17 ], [ %58, %56 ], [ %47, %46 ], [ %89, %87 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #5
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_packet_error_number(ptr noundef readonly %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
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
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cxd2880_io, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %21, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %19
  %27 = load ptr, ptr %20, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 %28(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 38, ptr noundef nonnull %3, i32 noundef 3) #5
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
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %81

16:                                               ; preds = %12
  %17 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %81

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1
  %20 = load i32, ptr %9, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load i32, ptr %13, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.cxd2880_io, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %27, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
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
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %32, %25, %22, %19
  %42 = phi i32 [ %35, %32 ], [ %30, %25 ], [ -22, %22 ], [ -22, %19 ], [ -11, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  br label %45

43:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %44 = icmp eq i8 %39, 6
  br i1 %44, label %58, label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ -11, %43 ]
  %47 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cxd2880_io, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 %50(ptr noundef %48, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  %52 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %81

55:                                               ; preds = %45
  %56 = load ptr, ptr %0, align 4
  %57 = call i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(ptr noundef %56, ptr noundef nonnull %1)
  br label %81

58:                                               ; preds = %43
  %59 = load ptr, ptr %26, align 4
  %60 = getelementptr inbounds %struct.cxd2880_io, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %59, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
  %63 = icmp eq i32 %62, 0
  %64 = load ptr, ptr %26, align 4
  br i1 %63, label %69, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.cxd2880_io, ptr %64, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %64, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %81

69:                                               ; preds = %58
  %70 = load ptr, ptr %64, align 4
  %71 = call i32 %70(ptr noundef %64, i32 noundef 1, i8 noundef zeroext 28, ptr noundef nonnull %4, i32 noundef 1) #5
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

81:                                               ; preds = %77, %69, %65, %55, %45, %16, %12, %8, %2
  %82 = phi i32 [ %62, %65 ], [ 0, %77 ], [ -22, %2 ], [ -22, %8 ], [ -22, %12 ], [ %17, %16 ], [ %57, %55 ], [ %46, %45 ], [ %71, %69 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #5
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_snr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %21
  %24 = call fastcc i32 @dvbt_read_snr_reg(ptr noundef nonnull %0, ptr noundef nonnull %3)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i16, ptr %3, align 2
  %28 = zext i16 %27 to i32
  %29 = call fastcc i32 @dvbt_calc_snr(ptr noundef nonnull %0, i32 noundef %28, ptr noundef nonnull %1)
  br label %32

30:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4
  %31 = call i32 @cxd2880_tnrdmd_dvbt_mon_snr_diver(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %32

32:                                               ; preds = %30, %26, %23, %17, %13, %9, %2
  %33 = phi i32 [ -22, %2 ], [ -22, %9 ], [ -22, %13 ], [ -22, %17 ], [ %24, %23 ], [ %29, %26 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #5
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_read_snr_reg(ptr noundef %0, ptr noundef writeonly %1) unnamed_addr #0 {
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
  store i8 0, ptr %3, align 1
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.cxd2880_io, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 %23(ptr noundef %21, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
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
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %26, %19, %15, %11
  %36 = phi i32 [ %29, %26 ], [ %24, %19 ], [ -22, %15 ], [ -22, %11 ], [ -11, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  br label %39

37:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %38 = icmp eq i8 %33, 6
  br i1 %38, label %46, label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ -11, %37 ]
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.cxd2880_io, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 %44(ptr noundef %42, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %73

46:                                               ; preds = %37
  %47 = load ptr, ptr %20, align 4
  %48 = getelementptr inbounds %struct.cxd2880_io, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %49(ptr noundef %47, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
  %51 = icmp eq i32 %50, 0
  %52 = load ptr, ptr %20, align 4
  br i1 %51, label %57, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.cxd2880_io, ptr %52, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %52, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %73

57:                                               ; preds = %46
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

73:                                               ; preds = %65, %57, %53, %39, %8, %2
  %74 = phi i32 [ %40, %39 ], [ %50, %53 ], [ 0, %65 ], [ -22, %2 ], [ %9, %8 ], [ %59, %57 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #5
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dvbt_calc_snr(ptr noundef readnone %0, i32 noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %2, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %7
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 4996)
  %11 = tail call i32 @intlog10(i32 noundef %10) #5
  %12 = sub nuw nsw i32 5350, %10
  %13 = tail call i32 @intlog10(i32 noundef %12) #5
  %14 = add i32 %11, 839
  %15 = sub i32 %14, %13
  %16 = sdiv i32 %15, 1678
  %17 = add nsw i32 %16, 28500
  store i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %9, %7, %3
  %19 = phi i32 [ 0, %9 ], [ -22, %3 ], [ -11, %7 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_snr_diver(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
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
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = call fastcc i32 @dvbt_read_snr_reg(ptr noundef nonnull %0, ptr noundef nonnull %5)
  switch i32 %26, label %72 [
    i32 0, label %27
    i32 -11, label %43
  ]

27:                                               ; preds = %25
  %28 = load i16, ptr %5, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = call i16 @llvm.umin.i16(i16 %28, i16 4996)
  %32 = zext i16 %31 to i32
  %33 = call i32 @intlog10(i32 noundef %32) #5
  %34 = sub nuw nsw i32 5350, %32
  %35 = call i32 @intlog10(i32 noundef %34) #5
  %36 = add i32 %33, 839
  %37 = sub i32 %36, %35
  %38 = sdiv i32 %37, 1678
  %39 = add nsw i32 %38, 28500
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
  %47 = call fastcc i32 @dvbt_read_snr_reg(ptr noundef %46, ptr noundef nonnull %5)
  switch i32 %47, label %72 [
    i32 0, label %48
    i32 -11, label %58
  ]

48:                                               ; preds = %44
  %49 = load ptr, ptr %0, align 4
  %50 = load i16, ptr %5, align 2
  %51 = zext i16 %50 to i32
  %52 = call fastcc i32 @dvbt_calc_snr(ptr noundef %49, i32 noundef %51, ptr noundef nonnull %3)
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
  %64 = call i32 @llvm.umin.i32(i32 %61, i32 4996) #5
  %65 = call i32 @intlog10(i32 noundef %64) #5
  %66 = sub nuw nsw i32 5350, %64
  %67 = call i32 @intlog10(i32 noundef %66) #5
  %68 = add i32 %65, 839
  %69 = sub i32 %68, %67
  %70 = sdiv i32 %69, 1678
  %71 = add nsw i32 %70, 28500
  store i32 %71, ptr %1, align 4
  br label %72

72:                                               ; preds = %63, %59, %44, %25, %21, %17, %13, %4
  %73 = phi i32 [ -22, %4 ], [ -22, %13 ], [ -22, %17 ], [ -22, %21 ], [ %26, %25 ], [ %47, %44 ], [ 0, %63 ], [ -11, %59 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #5
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sampling_offset(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
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
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %160

17:                                               ; preds = %13
  %18 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %0) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %160

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #5
  store i8 0, ptr %3, align 1
  %21 = load i32, ptr %10, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load i32, ptr %14, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.cxd2880_io, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %28, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
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
  br i1 %41, label %42, label %44

42:                                               ; preds = %38, %33, %26, %23, %20
  %43 = phi i32 [ %36, %33 ], [ %31, %26 ], [ -22, %23 ], [ -22, %20 ], [ -11, %38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  br label %46

44:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #5
  %45 = icmp eq i8 %40, 6
  br i1 %45, label %53, label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ -11, %44 ]
  %48 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.cxd2880_io, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 %51(ptr noundef %49, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %160

53:                                               ; preds = %44
  %54 = load ptr, ptr %27, align 4
  %55 = getelementptr inbounds %struct.cxd2880_io, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 %56(ptr noundef %54, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #5
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr %27, align 4
  br i1 %58, label %64, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.cxd2880_io, ptr %59, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 %62(ptr noundef %59, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #5
  br label %160

64:                                               ; preds = %53
  %65 = load ptr, ptr %59, align 4
  %66 = call i32 %65(ptr noundef %59, i32 noundef 1, i8 noundef zeroext 33, ptr noundef nonnull %4, i32 noundef 5) #5
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
  %83 = call i32 %82(ptr noundef %76, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %5, i32 noundef 5) #5
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

160:                                              ; preds = %140, %89, %81, %77, %71, %60, %46, %17, %13, %9, %2
  %161 = phi i32 [ %47, %46 ], [ %57, %60 ], [ %66, %71 ], [ %74, %77 ], [ 0, %140 ], [ -22, %2 ], [ -22, %9 ], [ -22, %13 ], [ %18, %17 ], [ -11, %89 ], [ %83, %81 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #5
  ret i32 %161
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sampling_offset_sub(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
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
  %12 = tail call i32 @cxd2880_tnrdmd_dvbt_mon_sampling_offset(ptr noundef %11, ptr noundef nonnull %1)
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi i32 [ %12, %10 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_ssi(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cxd2880_dvbt_tpsinfo, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %68

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %68, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %68

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %68

20:                                               ; preds = %16
  %21 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef nonnull %0, ptr noundef nonnull %4) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %20
  %24 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #5, !annotation !8
  %25 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef nonnull %0, ptr noundef nonnull %3) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %23
  %28 = load i32, ptr %3, align 4
  %29 = icmp ugt i32 %28, 2
  %30 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %3, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, 4
  %33 = select i1 %29, i1 true, i1 %32
  br i1 %33, label %66, label %34

34:                                               ; preds = %27
  %35 = getelementptr [3 x [5 x i32]], ptr @ref_dbm_1000, i32 0, i32 %28, i32 %31
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %24, %36
  %38 = icmp slt i32 %37, -15000
  br i1 %38, label %63, label %39

39:                                               ; preds = %34
  %40 = icmp slt i32 %37, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  %42 = trunc i32 %37 to i16
  %43 = shl nsw i16 %42, 1
  %44 = add nsw i16 %43, 31500
  %45 = udiv i16 %44, 3000
  %46 = zext i16 %45 to i32
  br label %63

47:                                               ; preds = %39
  %48 = icmp ult i32 %37, 20000
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = shl nuw nsw i32 %37, 2
  %51 = add nuw nsw i32 %50, 500
  %52 = udiv i32 %51, 1000
  %53 = add nuw nsw i32 %52, 10
  br label %63

54:                                               ; preds = %47
  %55 = icmp ult i32 %37, 35000
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = trunc i32 %37 to i16
  %58 = shl i16 %57, 1
  %59 = add i16 %58, 27036
  %60 = udiv i16 %59, 3000
  %61 = add nuw nsw i16 %60, 90
  %62 = zext i16 %61 to i32
  br label %63

63:                                               ; preds = %56, %54, %49, %41, %34
  %64 = phi i32 [ %46, %41 ], [ %53, %49 ], [ %62, %56 ], [ 0, %34 ], [ 100, %54 ]
  %65 = trunc i32 %64 to i8
  store i8 %65, ptr %1, align 1
  br label %66

66:                                               ; preds = %63, %27, %23
  %67 = phi i32 [ 0, %63 ], [ %25, %23 ], [ -22, %27 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  br label %68

68:                                               ; preds = %66, %20, %16, %12, %8, %2
  %69 = phi i32 [ %67, %66 ], [ -22, %2 ], [ -22, %8 ], [ -22, %12 ], [ -22, %16 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cxd2880_tnrdmd_dvbt_mon_ssi_sub(ptr noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.cxd2880_dvbt_tpsinfo, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %69

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %69

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 22
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %0, i32 0, i32 25
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 4
  %22 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %21, ptr noundef nonnull %4) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  %25 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #5, !annotation !8
  %26 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef nonnull %0, ptr noundef nonnull %3) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 4
  %30 = icmp ugt i32 %29, 2
  %31 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %3, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, 4
  %34 = select i1 %30, i1 true, i1 %33
  br i1 %34, label %67, label %35

35:                                               ; preds = %28
  %36 = getelementptr [3 x [5 x i32]], ptr @ref_dbm_1000, i32 0, i32 %29, i32 %32
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %25, %37
  %39 = icmp slt i32 %38, -15000
  br i1 %39, label %64, label %40

40:                                               ; preds = %35
  %41 = icmp slt i32 %38, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = trunc i32 %38 to i16
  %44 = shl nsw i16 %43, 1
  %45 = add nsw i16 %44, 31500
  %46 = udiv i16 %45, 3000
  %47 = zext i16 %46 to i32
  br label %64

48:                                               ; preds = %40
  %49 = icmp ult i32 %38, 20000
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = shl nuw nsw i32 %38, 2
  %52 = add nuw nsw i32 %51, 500
  %53 = udiv i32 %52, 1000
  %54 = add nuw nsw i32 %53, 10
  br label %64

55:                                               ; preds = %48
  %56 = icmp ult i32 %38, 35000
  br i1 %56, label %57, label %64

57:                                               ; preds = %55
  %58 = trunc i32 %38 to i16
  %59 = shl i16 %58, 1
  %60 = add i16 %59, 27036
  %61 = udiv i16 %60, 3000
  %62 = add nuw nsw i16 %61, 90
  %63 = zext i16 %62 to i32
  br label %64

64:                                               ; preds = %57, %55, %50, %42, %35
  %65 = phi i32 [ %47, %42 ], [ %54, %50 ], [ %63, %57 ], [ 0, %35 ], [ 100, %55 ]
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %1, align 1
  br label %67

67:                                               ; preds = %64, %28, %24
  %68 = phi i32 [ 0, %64 ], [ %26, %24 ], [ -22, %28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #5
  br label %69

69:                                               ; preds = %67, %20, %16, %12, %8, %2
  %70 = phi i32 [ %68, %67 ], [ -22, %2 ], [ -22, %8 ], [ -22, %12 ], [ -22, %16 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
