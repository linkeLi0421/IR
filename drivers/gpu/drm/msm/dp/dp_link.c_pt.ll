; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_link.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_link.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.dp_link_private = type { i32, ptr, ptr, %struct.dp_link, %struct.dp_link_request, %struct.mutex, [6 x i8] }
%struct.dp_link_request = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid params\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to %s low power mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sink request=%#x\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"lane=%d req_vol_swing=%d req_pre_emphasis=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Requested vSwingLevel=%d, change to %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Requested preEmphasisLevel=%d, change to %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"adjusted: v_level=%d, p_level=%d\0A\00", align 1
@dp_link_get.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"&link->psm_mutex\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"DP parse sink count failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"DP link status read failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"sink count read failed. rlen=%zd\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"sink_count = 0x%x, cp_ready = 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"aux read failed. rlen=%zd\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"device service irq vector = 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"no test requested\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"link 0x%x not supported\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Test:(0x%x) requested\0A\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"failed to read phy link pattern. rlen=%zd\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"phy_test_pattern_sel = 0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"failed to read link rate. rlen=%zd\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"invalid link rate = 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"link rate = 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"failed to read lane count. rlen=%zd\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"invalid lane count = 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"lane count = 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"failed to read link video pattern. rlen=%zd\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"invalid link video pattern = 0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"failed to read link bit depth. rlen=%zd\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"invalid link bit depth = 0x%x\0A\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"failed to parse test_htotal(DP_TEST_H_TOTAL_HI)\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"failed to parse test_v_total(DP_TEST_V_TOTAL_HI)\0A\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"failed to parse test_h_start(DP_TEST_H_START_HI)\0A\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"failed to parse test_v_start(DP_TEST_V_START_HI)\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"failed to parse (DP_TEST_HSYNC_HI)\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"failed to parse (DP_TEST_VSYNC_HI)\0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"failed to parse test_h_width(DP_TEST_H_WIDTH_HI)\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"failed to parse test_v_height\0A\00", align 1
@.str.40 = private unnamed_addr constant [43 x i8] c"failed to parse test_rr_d (DP_TEST_MISC1)\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"failed to parse test_rr_n\0A\00", align 1
@.str.42 = private unnamed_addr constant [328 x i8] c"link video pattern = 0x%x\0Alink dynamic range = 0x%x\0Alink bit depth = 0x%x\0ATEST_H_TOTAL = %d, TEST_V_TOTAL = %d\0ATEST_H_START = %d, TEST_V_START = %d\0ATEST_HSYNC_POL = %d\0ATEST_HSYNC_WIDTH = %d\0ATEST_VSYNC_POL = %d\0ATEST_VSYNC_WIDTH = %d\0ATEST_H_WIDTH = %d\0ATEST_V_HEIGHT = %d\0ATEST_REFRESH_DENOMINATOR = %d\0ATEST_REFRESH_NUMERATOR = %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"failed to read 0x%x\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"failed to read link audio mode. rlen=%zd\0A\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"sampling rate (0x%x) greater than max (0x%x)\0A\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"channel_count (0x%x) greater than max (0x%x)\0A\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"sampling_rate = 0x%x, channel_count = 0x%x\0A\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"invalid audio pattern type = 0x%x\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"audio pattern type = 0x%x\0A\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"test_audio_period_ch_1 = 0x%x\0A\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"test_audio_period_ch_2 = 0x%x\0A\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"test_audio_period_ch_3 = 0x%x\0A\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"test_audio_period_ch_4 = 0x%x\0A\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"test_audio_period_ch_5 = 0x%x\0A\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"test_audio_period_ch_6 = 0x%x\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"test_audio_period_ch_7 = 0x%x\0A\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"test_audio_period_ch_8 = 0x%x\0A\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"failed to read test_audio_period (0x%x)\0A\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"invalid test_audio_period_ch_1 = 0x%x\0A\00", align 1
@.str.60 = private unnamed_addr constant [47 x i8] c"Test:0x%x link rate = 0x%x, lane count = 0x%x\0A\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"no phy test\0A\00", align 1
@.str.62 = private unnamed_addr constant [45 x i8] c"Invalid: link rate = 0x%x,lane count = 0x%x\0A\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"Current: rate = 0x%x, lane count = 0x%x\0A\00", align 1
@.str.64 = private unnamed_addr constant [43 x i8] c"Requested: rate = 0x%x, lane count = 0x%x\0A\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"vx: 0=%d, 1=%d, 2=%d, 3=%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"px: 0=%d, 1=%d, 2=%d, 3=%d\0A\00", align 1
@.str.67 = private unnamed_addr constant [41 x i8] c"Current: v_level = 0x%x, p_level = 0x%x\0A\00", align 1
@.str.68 = private unnamed_addr constant [43 x i8] c"Requested: v_level = 0x%x, p_level = 0x%x\0A\00", align 1
@.str.69 = private unnamed_addr constant [48 x i8] c"channel_eq_done = %d, clock_recovery_done = %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_link_send_test_response(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %13

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 %10, ptr %2, align 1
  %11 = call i32 @drm_dp_dpcd_write(ptr noundef %7, i32 noundef 608, ptr noundef nonnull %2, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %12 = icmp eq i32 %11, 1
  br label %13

13:                                               ; preds = %5, %4
  %14 = phi i1 [ %12, %5 ], [ false, %4 ]
  ret i1 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_link_psm_config(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = zext i1 %2 to i8
  %9 = icmp eq ptr %0, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #7
  br label %52

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %0, i32 152
  tail call void @mutex_lock(ptr noundef %12) #7
  %13 = getelementptr i8, ptr %0, i32 -4
  %14 = load ptr, ptr %13, align 4
  br i1 %2, label %15, label %29

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #7
  store i8 0, ptr %7, align 1, !annotation !8
  %16 = load i8, ptr %1, align 4
  %17 = icmp ult i8 %16, 17
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = call i32 @drm_dp_dpcd_read(ptr noundef %14, i32 noundef 1536, ptr noundef nonnull %7, i32 noundef 1) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8, ptr %7, align 1
  %23 = and i8 %22, -4
  %24 = or i8 %23, 2
  store i8 %24, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #7
  store i8 %24, ptr %6, align 1
  %25 = call i32 @drm_dp_dpcd_write(ptr noundef %14, i32 noundef 1536, ptr noundef nonnull %6, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #7
  %26 = call i32 @llvm.smin.i32(i32 %25, i32 0) #7
  br label %27

27:                                               ; preds = %21, %18, %15
  %28 = phi i32 [ 0, %15 ], [ %19, %18 ], [ %26, %21 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #7
  br label %44

29:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #7
  store i8 0, ptr %5, align 1, !annotation !8
  %30 = load i8, ptr %1, align 4
  %31 = icmp ult i8 %30, 17
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = call i32 @drm_dp_dpcd_read(ptr noundef %14, i32 noundef 1536, ptr noundef nonnull %5, i32 noundef 1) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load i8, ptr %5, align 1
  %37 = and i8 %36, -4
  %38 = or i8 %37, 1
  store i8 %38, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 %38, ptr %4, align 1
  %39 = call i32 @drm_dp_dpcd_write(ptr noundef %14, i32 noundef 1536, ptr noundef nonnull %4, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %42

42:                                               ; preds = %41, %35, %32, %29
  %43 = phi i32 [ 0, %41 ], [ 0, %29 ], [ %33, %32 ], [ %39, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #7
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi i32 [ %28, %27 ], [ %43, %42 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = select i1 %2, ptr @.str.3, ptr @.str.4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef nonnull %48) #7
  br label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 2
  store i8 %8, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %47
  call void @mutex_unlock(ptr noundef %12) #7
  br label %52

52:                                               ; preds = %51, %10
  %53 = phi i32 [ %45, %51 ], [ -22, %10 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_link_send_edid_checksum(ptr noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %11

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %1, ptr %3, align 1
  %9 = call i32 @drm_dp_dpcd_write(ptr noundef %8, i32 noundef 609, ptr noundef nonnull %3, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %10 = icmp eq i32 %9, 1
  br label %11

11:                                               ; preds = %6, %5
  %12 = phi i1 [ %10, %6 ], [ false, %5 ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_link_process_request(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca [2 x i8], align 2
  %21 = alloca [2 x i8], align 2
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = icmp eq ptr %0, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %561

27:                                               ; preds = %1
  %28 = getelementptr i8, ptr %0, i32 -12
  %29 = getelementptr i8, ptr %0, i32 140
  store i32 0, ptr %29, align 4
  %30 = getelementptr i8, ptr %0, i32 144
  store i32 0, ptr %30, align 4
  %31 = getelementptr i8, ptr %0, i32 148
  store i32 0, ptr %31, align 4
  %32 = getelementptr i8, ptr %0, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(60) %32, i8 0, i32 60, i1 false) #7
  %33 = getelementptr i8, ptr %0, i32 16
  store i32 -1, ptr %33, align 4
  %34 = getelementptr i8, ptr %0, i32 72
  store i32 0, ptr %0, align 4
  %35 = getelementptr i8, ptr %0, i32 4
  store i32 0, ptr %35, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(48) %34, i8 0, i64 48, i1 false) #7
  %36 = getelementptr i8, ptr %0, i32 9
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, ptr %28, align 4
  %39 = getelementptr i8, ptr %0, i32 -4
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @drm_dp_dpcd_read(ptr noundef %40, i32 noundef 512, ptr noundef %36, i32 noundef 1) #7
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, i32 noundef %41) #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #7
  br label %561

44:                                               ; preds = %27
  %45 = load i8, ptr %36, align 1
  %46 = lshr i8 %45, 1
  %47 = and i8 %46, 64
  %48 = and i8 %45, 63
  %49 = or i8 %47, %48
  store i8 %49, ptr %36, align 1
  %50 = zext i8 %49 to i32
  %51 = lshr i8 %45, 6
  %52 = and i8 %51, 1
  %53 = zext i8 %52 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.14, i32 noundef %50, i32 noundef %53) #7
  %54 = load ptr, ptr %39, align 4
  %55 = getelementptr i8, ptr %0, i32 172
  %56 = tail call i32 @drm_dp_dpcd_read_link_status(ptr noundef %54, ptr noundef %55) #7
  %57 = icmp slt i32 %56, 6
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #7
  br label %437

59:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #7
  store i8 0, ptr %24, align 1, !annotation !8
  %60 = load ptr, ptr %39, align 4
  %61 = call i32 @drm_dp_dpcd_read(ptr noundef %60, i32 noundef 513, ptr noundef nonnull %24, i32 noundef 1) #7
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %61) #7
  br label %435

64:                                               ; preds = %59
  %65 = load i8, ptr %24, align 1
  %66 = zext i8 %65 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.16, i32 noundef %66) #7
  %67 = load i8, ptr %24, align 1
  %68 = and i8 %67, 2
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.17) #7
  br label %435

71:                                               ; preds = %64
  %72 = load ptr, ptr %39, align 4
  %73 = call i32 @drm_dp_dpcd_read(ptr noundef %72, i32 noundef 536, ptr noundef nonnull %24, i32 noundef 1) #7
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %73) #7
  br label %435

76:                                               ; preds = %71
  %77 = load i8, ptr %24, align 1
  %78 = zext i8 %77 to i32
  %79 = and i8 %77, -17
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.18, i32 noundef %78) #7
  br label %430

82:                                               ; preds = %76
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %78) #7
  %83 = load i8, ptr %24, align 1
  %84 = zext i8 %83 to i32
  store i32 %84, ptr %29, align 4
  %85 = icmp eq i8 %83, 8
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #7
  store i8 0, ptr %23, align 1, !annotation !8
  %87 = load ptr, ptr %39, align 4
  %88 = call i32 @drm_dp_dpcd_read(ptr noundef %87, i32 noundef 584, ptr noundef nonnull %23, i32 noundef 1) #7
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %88) #7
  br label %98

91:                                               ; preds = %86
  %92 = load i8, ptr %23, align 1
  %93 = and i8 %92, 7
  %94 = zext i8 %93 to i32
  %95 = getelementptr i8, ptr %0, i32 116
  store i32 %94, ptr %95, align 4
  %96 = zext i8 %92 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.21, i32 noundef %96) #7
  %97 = load i8, ptr %23, align 1
  switch i8 %97, label %98 [
    i8 7, label %100
    i8 0, label %100
    i8 1, label %100
    i8 2, label %100
    i8 3, label %100
    i8 4, label %100
    i8 5, label %100
  ]

98:                                               ; preds = %91, %90
  %99 = phi i32 [ %88, %90 ], [ -22, %91 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #7
  br label %428

100:                                              ; preds = %91, %91, %91, %91, %91, %91, %91
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #7
  %101 = call fastcc i32 @dp_link_parse_link_training_params(ptr noundef %28) #7
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %428

103:                                              ; preds = %100
  %104 = load i32, ptr %29, align 4
  br label %105

105:                                              ; preds = %103, %82
  %106 = phi i32 [ %104, %103 ], [ %84, %82 ]
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = call fastcc i32 @dp_link_parse_link_training_params(ptr noundef %28) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %428

111:                                              ; preds = %108
  %112 = load i32, ptr %29, align 4
  br label %113

113:                                              ; preds = %111, %105
  %114 = phi i32 [ %112, %111 ], [ %106, %105 ]
  %115 = and i32 %114, 98
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %114, -99
  %118 = icmp eq i32 %117, 0
  %119 = and i1 %116, %118
  br i1 %119, label %120, label %430

120:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #7
  store i8 0, ptr %22, align 1, !annotation !8
  %121 = load ptr, ptr %39, align 4
  %122 = call i32 @drm_dp_dpcd_read(ptr noundef %121, i32 noundef 545, ptr noundef nonnull %22, i32 noundef 1) #7
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %122) #7
  br label %271

125:                                              ; preds = %120
  %126 = load i8, ptr %22, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp ult i8 %126, 4
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %127) #7
  br label %271

130:                                              ; preds = %125
  store i32 %127, ptr %32, align 4
  %131 = load ptr, ptr %39, align 4
  %132 = call i32 @drm_dp_dpcd_read(ptr noundef %131, i32 noundef 562, ptr noundef nonnull %22, i32 noundef 1) #7
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.30, i32 noundef %132) #7
  br label %271

135:                                              ; preds = %130
  %136 = load i8, ptr %22, align 1
  %137 = and i8 %136, 8
  %138 = zext i8 %137 to i32
  %139 = getelementptr i8, ptr %0, i32 20
  store i32 %138, ptr %139, align 4
  %140 = and i8 %136, -32
  store i8 %140, ptr %22, align 1
  %141 = zext i8 %140 to i32
  switch i8 %140, label %142 [
    i8 0, label %143
    i8 32, label %143
    i8 64, label %143
  ]

142:                                              ; preds = %135
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.31, i32 noundef %141) #7
  br label %271

143:                                              ; preds = %135, %135, %135
  store i32 %141, ptr %33, align 4
  %144 = getelementptr i8, ptr %0, i32 24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #7
  store i16 0, ptr %21, align 2, !annotation !8
  %145 = load ptr, ptr %39, align 4
  %146 = call i32 @drm_dp_dpcd_read(ptr noundef %145, i32 noundef 546, ptr noundef nonnull %21, i32 noundef 2) #7
  %147 = icmp slt i32 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 546) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #7
  br label %271

149:                                              ; preds = %143
  %150 = getelementptr inbounds [2 x i8], ptr %21, i32 0, i32 1
  %151 = load i8, ptr %150, align 1
  %152 = zext i8 %151 to i32
  %153 = load i8, ptr %21, align 2
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 8
  %156 = or i32 %155, %152
  store i32 %156, ptr %144, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #7
  %157 = getelementptr i8, ptr %0, i32 28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #7
  store i16 0, ptr %20, align 2, !annotation !8
  %158 = load ptr, ptr %39, align 4
  %159 = call i32 @drm_dp_dpcd_read(ptr noundef %158, i32 noundef 548, ptr noundef nonnull %20, i32 noundef 2) #7
  %160 = icmp slt i32 %159, 2
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 548) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #7
  br label %271

162:                                              ; preds = %149
  %163 = getelementptr inbounds [2 x i8], ptr %20, i32 0, i32 1
  %164 = load i8, ptr %163, align 1
  %165 = zext i8 %164 to i32
  %166 = load i8, ptr %20, align 2
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 8
  %169 = or i32 %168, %165
  store i32 %169, ptr %157, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #7
  %170 = getelementptr i8, ptr %0, i32 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !8
  %171 = load ptr, ptr %39, align 4
  %172 = call i32 @drm_dp_dpcd_read(ptr noundef %171, i32 noundef 550, ptr noundef nonnull %4, i32 noundef 2) #7
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 550) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #7
  br label %271

175:                                              ; preds = %162
  %176 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i8, ptr %4, align 2
  %180 = zext i8 %179 to i32
  %181 = shl nuw nsw i32 %180, 8
  %182 = or i32 %181, %178
  store i32 %182, ptr %170, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  %183 = getelementptr i8, ptr %0, i32 36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #7
  store i16 0, ptr %5, align 2, !annotation !8
  %184 = load ptr, ptr %39, align 4
  %185 = call i32 @drm_dp_dpcd_read(ptr noundef %184, i32 noundef 552, ptr noundef nonnull %5, i32 noundef 2) #7
  %186 = icmp slt i32 %185, 2
  br i1 %186, label %187, label %188

187:                                              ; preds = %175
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 552) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.35) #7
  br label %271

188:                                              ; preds = %175
  %189 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  %192 = load i8, ptr %5, align 2
  %193 = zext i8 %192 to i32
  %194 = shl nuw nsw i32 %193, 8
  %195 = or i32 %194, %191
  store i32 %195, ptr %183, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #7
  %196 = getelementptr i8, ptr %0, i32 40
  %197 = getelementptr i8, ptr %0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #7
  store i16 0, ptr %6, align 2, !annotation !8
  %198 = load ptr, ptr %39, align 4
  %199 = call i32 @drm_dp_dpcd_read(ptr noundef %198, i32 noundef 554, ptr noundef nonnull %6, i32 noundef 2) #7
  %200 = icmp slt i32 %199, 2
  br i1 %200, label %201, label %202

201:                                              ; preds = %188
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 554) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.36) #7
  br label %271

202:                                              ; preds = %188
  %203 = load i8, ptr %6, align 2
  %204 = lshr i8 %203, 7
  %205 = zext i8 %204 to i32
  store i32 %205, ptr %196, align 4
  %206 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  %207 = load i8, ptr %206, align 1
  %208 = zext i8 %207 to i32
  %209 = and i8 %203, 127
  %210 = zext i8 %209 to i32
  %211 = shl nuw nsw i32 %210, 8
  %212 = or i32 %211, %208
  store i32 %212, ptr %197, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #7
  %213 = getelementptr i8, ptr %0, i32 48
  %214 = getelementptr i8, ptr %0, i32 52
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #7
  store i16 0, ptr %7, align 2, !annotation !8
  %215 = load ptr, ptr %39, align 4
  %216 = call i32 @drm_dp_dpcd_read(ptr noundef %215, i32 noundef 556, ptr noundef nonnull %7, i32 noundef 2) #7
  %217 = icmp slt i32 %216, 2
  br i1 %217, label %218, label %219

218:                                              ; preds = %202
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 556) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #7
  br label %271

219:                                              ; preds = %202
  %220 = load i8, ptr %7, align 2
  %221 = lshr i8 %220, 7
  %222 = zext i8 %221 to i32
  store i32 %222, ptr %213, align 4
  %223 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  %224 = load i8, ptr %223, align 1
  %225 = zext i8 %224 to i32
  %226 = and i8 %220, 127
  %227 = zext i8 %226 to i32
  %228 = shl nuw nsw i32 %227, 8
  %229 = or i32 %228, %225
  store i32 %229, ptr %214, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #7
  %230 = getelementptr i8, ptr %0, i32 56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #7
  store i16 0, ptr %8, align 2, !annotation !8
  %231 = load ptr, ptr %39, align 4
  %232 = call i32 @drm_dp_dpcd_read(ptr noundef %231, i32 noundef 558, ptr noundef nonnull %8, i32 noundef 2) #7
  %233 = icmp slt i32 %232, 2
  br i1 %233, label %234, label %235

234:                                              ; preds = %219
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 558) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.38) #7
  br label %271

235:                                              ; preds = %219
  %236 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %237 = load i8, ptr %236, align 1
  %238 = zext i8 %237 to i32
  %239 = load i8, ptr %8, align 2
  %240 = zext i8 %239 to i32
  %241 = shl nuw nsw i32 %240, 8
  %242 = or i32 %241, %238
  store i32 %242, ptr %230, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #7
  %243 = getelementptr i8, ptr %0, i32 60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #7
  store i16 0, ptr %9, align 2, !annotation !8
  %244 = load ptr, ptr %39, align 4
  %245 = call i32 @drm_dp_dpcd_read(ptr noundef %244, i32 noundef 560, ptr noundef nonnull %9, i32 noundef 2) #7
  %246 = icmp slt i32 %245, 2
  br i1 %246, label %247, label %248

247:                                              ; preds = %235
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 560) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.39) #7
  br label %271

248:                                              ; preds = %235
  %249 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  %250 = load i8, ptr %249, align 1
  %251 = zext i8 %250 to i32
  %252 = load i8, ptr %9, align 2
  %253 = zext i8 %252 to i32
  %254 = shl nuw nsw i32 %253, 8
  %255 = or i32 %254, %251
  store i32 %255, ptr %243, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #7
  %256 = getelementptr i8, ptr %0, i32 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #7
  store i8 0, ptr %10, align 1, !annotation !8
  %257 = load ptr, ptr %39, align 4
  %258 = call i32 @drm_dp_dpcd_read(ptr noundef %257, i32 noundef 563, ptr noundef nonnull %10, i32 noundef 1) #7
  %259 = icmp slt i32 %258, 1
  br i1 %259, label %260, label %263

260:                                              ; preds = %248
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 563) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #7
  %261 = load i32, ptr %256, align 4
  %262 = and i32 %261, 1
  store i32 %262, ptr %256, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.40) #7
  br label %271

263:                                              ; preds = %248
  %264 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #7
  %265 = and i8 %264, 1
  %266 = zext i8 %265 to i32
  store i32 %266, ptr %256, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #7
  store i8 0, ptr %11, align 1, !annotation !8
  %267 = load ptr, ptr %39, align 4
  %268 = call i32 @drm_dp_dpcd_read(ptr noundef %267, i32 noundef 564, ptr noundef nonnull %11, i32 noundef 1) #7
  %269 = icmp slt i32 %268, 1
  br i1 %269, label %270, label %273

270:                                              ; preds = %263
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.43, i32 noundef 564) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #7
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.41) #7
  br label %271

271:                                              ; preds = %270, %260, %247, %234, %218, %201, %187, %174, %161, %148, %142, %134, %129, %124
  %272 = phi i32 [ -22, %129 ], [ -22, %142 ], [ -22, %270 ], [ -22, %260 ], [ -22, %247 ], [ -22, %234 ], [ -22, %218 ], [ -22, %201 ], [ -22, %187 ], [ -22, %174 ], [ -22, %161 ], [ -22, %148 ], [ %132, %134 ], [ %122, %124 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #7
  br label %428

273:                                              ; preds = %263
  %274 = getelementptr i8, ptr %0, i32 68
  %275 = load i8, ptr %11, align 1
  %276 = zext i8 %275 to i32
  store i32 %276, ptr %274, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #7
  %277 = load i32, ptr %32, align 4
  %278 = load i32, ptr %139, align 4
  %279 = load i32, ptr %33, align 4
  %280 = load i32, ptr %144, align 4
  %281 = load i32, ptr %157, align 4
  %282 = load i32, ptr %170, align 4
  %283 = load i32, ptr %183, align 4
  %284 = load i32, ptr %196, align 4
  %285 = load i32, ptr %197, align 4
  %286 = load i32, ptr %213, align 4
  %287 = load i32, ptr %214, align 4
  %288 = load i32, ptr %230, align 4
  %289 = load i32, ptr %243, align 4
  %290 = load i32, ptr %256, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.42, i32 noundef %277, i32 noundef %278, i32 noundef %279, i32 noundef %280, i32 noundef %281, i32 noundef %282, i32 noundef %283, i32 noundef %284, i32 noundef %285, i32 noundef %286, i32 noundef %287, i32 noundef %288, i32 noundef %289, i32 noundef %290, i32 noundef %276) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #7
  store i8 0, ptr %19, align 1, !annotation !8
  %291 = load ptr, ptr %39, align 4
  %292 = call i32 @drm_dp_dpcd_read(ptr noundef %291, i32 noundef 625, ptr noundef nonnull %19, i32 noundef 1) #7
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %273
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %292) #7
  br label %306

295:                                              ; preds = %273
  %296 = load i8, ptr %19, align 1
  %297 = zext i8 %296 to i32
  %298 = and i32 %297, 15
  %299 = icmp ugt i32 %298, 6
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.45, i32 noundef %298, i32 noundef 6) #7
  br label %306

301:                                              ; preds = %295
  %302 = lshr i32 %297, 4
  %303 = add nuw nsw i32 %302, 1
  %304 = icmp slt i8 %296, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.46, i32 noundef %303, i32 noundef 8) #7
  br label %306

306:                                              ; preds = %305, %300, %294
  %307 = phi i32 [ -22, %305 ], [ -22, %300 ], [ %292, %294 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #7
  br label %428

308:                                              ; preds = %301
  store i32 %298, ptr %34, align 4
  %309 = getelementptr i8, ptr %0, i32 76
  store i32 %303, ptr %309, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.47, i32 noundef %298, i32 noundef %303) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #7
  store i8 0, ptr %18, align 1, !annotation !8
  %310 = load ptr, ptr %39, align 4
  %311 = call i32 @drm_dp_dpcd_read(ptr noundef %310, i32 noundef 626, ptr noundef nonnull %18, i32 noundef 1) #7
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.44, i32 noundef %311) #7
  br label %319

314:                                              ; preds = %308
  %315 = load i8, ptr %18, align 1
  %316 = zext i8 %315 to i32
  %317 = icmp ugt i8 %315, 1
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.48, i32 noundef %316) #7
  br label %319

319:                                              ; preds = %318, %313
  %320 = phi i32 [ -22, %318 ], [ %311, %313 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #7
  br label %428

321:                                              ; preds = %314
  %322 = getelementptr i8, ptr %0, i32 80
  store i32 %316, ptr %322, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.49, i32 noundef %316) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #7
  store i8 0, ptr %17, align 1, !annotation !8
  %323 = load ptr, ptr %39, align 4
  %324 = call i32 @drm_dp_dpcd_read(ptr noundef %323, i32 noundef 627, ptr noundef nonnull %17, i32 noundef 1) #7
  %325 = icmp slt i32 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 627) #7
  br label %333

327:                                              ; preds = %321
  %328 = load i8, ptr %17, align 1
  %329 = and i8 %328, 15
  store i8 %329, ptr %17, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp ugt i8 %329, 10
  br i1 %331, label %332, label %334

332:                                              ; preds = %327
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %330) #7
  br label %333

333:                                              ; preds = %332, %326
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #7
  br label %428

334:                                              ; preds = %327
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #7
  %335 = getelementptr i8, ptr %0, i32 84
  store i32 %330, ptr %335, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.50, i32 noundef %330) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #7
  store i8 0, ptr %16, align 1, !annotation !8
  %336 = load ptr, ptr %39, align 4
  %337 = call i32 @drm_dp_dpcd_read(ptr noundef %336, i32 noundef 628, ptr noundef nonnull %16, i32 noundef 1) #7
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %334
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 628) #7
  br label %346

340:                                              ; preds = %334
  %341 = load i8, ptr %16, align 1
  %342 = and i8 %341, 15
  store i8 %342, ptr %16, align 1
  %343 = zext i8 %342 to i32
  %344 = icmp ugt i8 %342, 10
  br i1 %344, label %345, label %347

345:                                              ; preds = %340
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %343) #7
  br label %346

346:                                              ; preds = %345, %339
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #7
  br label %428

347:                                              ; preds = %340
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #7
  %348 = getelementptr i8, ptr %0, i32 88
  store i32 %343, ptr %348, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.51, i32 noundef %343) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #7
  store i8 0, ptr %15, align 1, !annotation !8
  %349 = load ptr, ptr %39, align 4
  %350 = call i32 @drm_dp_dpcd_read(ptr noundef %349, i32 noundef 629, ptr noundef nonnull %15, i32 noundef 1) #7
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %353

352:                                              ; preds = %347
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 629) #7
  br label %359

353:                                              ; preds = %347
  %354 = load i8, ptr %15, align 1
  %355 = and i8 %354, 15
  store i8 %355, ptr %15, align 1
  %356 = zext i8 %355 to i32
  %357 = icmp ugt i8 %355, 10
  br i1 %357, label %358, label %360

358:                                              ; preds = %353
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %356) #7
  br label %359

359:                                              ; preds = %358, %352
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #7
  br label %428

360:                                              ; preds = %353
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #7
  %361 = getelementptr i8, ptr %0, i32 92
  store i32 %356, ptr %361, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.52, i32 noundef %356) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #7
  store i8 0, ptr %14, align 1, !annotation !8
  %362 = load ptr, ptr %39, align 4
  %363 = call i32 @drm_dp_dpcd_read(ptr noundef %362, i32 noundef 630, ptr noundef nonnull %14, i32 noundef 1) #7
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %360
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 630) #7
  br label %372

366:                                              ; preds = %360
  %367 = load i8, ptr %14, align 1
  %368 = and i8 %367, 15
  store i8 %368, ptr %14, align 1
  %369 = zext i8 %368 to i32
  %370 = icmp ugt i8 %368, 10
  br i1 %370, label %371, label %373

371:                                              ; preds = %366
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %369) #7
  br label %372

372:                                              ; preds = %371, %365
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #7
  br label %428

373:                                              ; preds = %366
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #7
  %374 = getelementptr i8, ptr %0, i32 96
  store i32 %369, ptr %374, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.53, i32 noundef %369) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #7
  store i8 0, ptr %13, align 1, !annotation !8
  %375 = load ptr, ptr %39, align 4
  %376 = call i32 @drm_dp_dpcd_read(ptr noundef %375, i32 noundef 631, ptr noundef nonnull %13, i32 noundef 1) #7
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %373
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 631) #7
  br label %385

379:                                              ; preds = %373
  %380 = load i8, ptr %13, align 1
  %381 = and i8 %380, 15
  store i8 %381, ptr %13, align 1
  %382 = zext i8 %381 to i32
  %383 = icmp ugt i8 %381, 10
  br i1 %383, label %384, label %386

384:                                              ; preds = %379
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %382) #7
  br label %385

385:                                              ; preds = %384, %378
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #7
  br label %428

386:                                              ; preds = %379
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #7
  %387 = getelementptr i8, ptr %0, i32 100
  store i32 %382, ptr %387, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.54, i32 noundef %382) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #7
  store i8 0, ptr %12, align 1, !annotation !8
  %388 = load ptr, ptr %39, align 4
  %389 = call i32 @drm_dp_dpcd_read(ptr noundef %388, i32 noundef 632, ptr noundef nonnull %12, i32 noundef 1) #7
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %386
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 632) #7
  br label %398

392:                                              ; preds = %386
  %393 = load i8, ptr %12, align 1
  %394 = and i8 %393, 15
  store i8 %394, ptr %12, align 1
  %395 = zext i8 %394 to i32
  %396 = icmp ugt i8 %394, 10
  br i1 %396, label %397, label %399

397:                                              ; preds = %392
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %395) #7
  br label %398

398:                                              ; preds = %397, %391
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #7
  br label %428

399:                                              ; preds = %392
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #7
  %400 = getelementptr i8, ptr %0, i32 104
  store i32 %395, ptr %400, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.55, i32 noundef %395) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1, !annotation !8
  %401 = load ptr, ptr %39, align 4
  %402 = call i32 @drm_dp_dpcd_read(ptr noundef %401, i32 noundef 633, ptr noundef nonnull %2, i32 noundef 1) #7
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %399
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 633) #7
  br label %411

405:                                              ; preds = %399
  %406 = load i8, ptr %2, align 1
  %407 = and i8 %406, 15
  store i8 %407, ptr %2, align 1
  %408 = zext i8 %407 to i32
  %409 = icmp ugt i8 %407, 10
  br i1 %409, label %410, label %412

410:                                              ; preds = %405
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %408) #7
  br label %411

411:                                              ; preds = %410, %404
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  br label %428

412:                                              ; preds = %405
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  %413 = getelementptr i8, ptr %0, i32 108
  store i32 %408, ptr %413, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.56, i32 noundef %408) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #7
  store i8 0, ptr %3, align 1, !annotation !8
  %414 = load ptr, ptr %39, align 4
  %415 = call i32 @drm_dp_dpcd_read(ptr noundef %414, i32 noundef 634, ptr noundef nonnull %3, i32 noundef 1) #7
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %412
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.58, i32 noundef 634) #7
  br label %424

418:                                              ; preds = %412
  %419 = load i8, ptr %3, align 1
  %420 = and i8 %419, 15
  store i8 %420, ptr %3, align 1
  %421 = zext i8 %420 to i32
  %422 = icmp ugt i8 %420, 10
  br i1 %422, label %423, label %425

423:                                              ; preds = %418
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.59, i32 noundef %421) #7
  br label %424

424:                                              ; preds = %423, %417
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  br label %428

425:                                              ; preds = %418
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #7
  %426 = getelementptr i8, ptr %0, i32 112
  store i32 %421, ptr %426, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.57, i32 noundef %421) #7
  %427 = icmp eq i8 %420, 0
  br i1 %427, label %430, label %428

428:                                              ; preds = %425, %424, %411, %398, %385, %372, %359, %346, %333, %319, %306, %271, %108, %100, %98
  %429 = phi i32 [ %421, %425 ], [ %272, %271 ], [ %99, %98 ], [ %109, %108 ], [ %101, %100 ], [ -22, %424 ], [ -22, %411 ], [ -22, %398 ], [ -22, %385 ], [ -22, %372 ], [ -22, %359 ], [ -22, %346 ], [ -22, %333 ], [ %320, %319 ], [ %307, %306 ]
  store i32 2, ptr %35, align 4
  br label %435

430:                                              ; preds = %425, %113, %81
  %431 = load i32, ptr %29, align 4
  %432 = icmp eq i32 %431, 4
  br i1 %432, label %434, label %433

433:                                              ; preds = %430
  store i32 1, ptr %35, align 4
  br label %435

434:                                              ; preds = %430
  store i32 4, ptr %35, align 4
  br label %435

435:                                              ; preds = %434, %433, %428, %75, %70, %63
  %436 = phi i32 [ %61, %63 ], [ %73, %75 ], [ 0, %70 ], [ 0, %433 ], [ 0, %434 ], [ %429, %428 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #7
  br label %437

437:                                              ; preds = %435, %58
  %438 = phi i32 [ %56, %58 ], [ %436, %435 ]
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %561

440:                                              ; preds = %437
  %441 = load i32, ptr %29, align 4
  %442 = icmp eq i32 %441, 4
  br i1 %442, label %443, label %446

443:                                              ; preds = %440
  %444 = load i32, ptr %0, align 4
  %445 = or i32 %444, 4
  br label %555

446:                                              ; preds = %440
  %447 = getelementptr i8, ptr %0, i32 174
  %448 = load i8, ptr %447, align 1
  %449 = and i8 %448, 64
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %446
  %452 = load i8, ptr %36, align 1
  %453 = zext i8 %452 to i32
  br label %459

454:                                              ; preds = %446
  %455 = load i32, ptr %28, align 4
  %456 = load i8, ptr %36, align 1
  %457 = zext i8 %456 to i32
  %458 = icmp eq i32 %455, %457
  br i1 %458, label %463, label %459

459:                                              ; preds = %454, %451
  %460 = phi i32 [ %453, %451 ], [ %457, %454 ]
  store i32 %460, ptr %28, align 4
  %461 = load i32, ptr %0, align 4
  %462 = or i32 %461, 512
  br label %555

463:                                              ; preds = %454
  %464 = icmp eq i32 %441, 1
  br i1 %464, label %465, label %476

465:                                              ; preds = %463
  %466 = load i32, ptr %30, align 4
  %467 = load i32, ptr %31, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef %466, i32 noundef %467) #7
  %468 = load i32, ptr %31, align 4
  %469 = getelementptr i8, ptr %0, i32 132
  store i32 %468, ptr %469, align 4
  %470 = load i32, ptr %30, align 4
  %471 = trunc i32 %470 to i8
  %472 = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %471) #7
  %473 = getelementptr i8, ptr %0, i32 128
  store i32 %472, ptr %473, align 4
  %474 = load i32, ptr %0, align 4
  %475 = or i32 %474, 1
  br label %555

476:                                              ; preds = %463
  %477 = and i32 %441, 8
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %476
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.61) #7
  br label %529

480:                                              ; preds = %476
  %481 = load i32, ptr %30, align 4
  switch i32 %481, label %482 [
    i32 20, label %484
    i32 10, label %484
    i32 6, label %484
    i32 30, label %484
  ]

482:                                              ; preds = %480
  %483 = load i32, ptr %31, align 4
  br label %486

484:                                              ; preds = %480, %480, %480, %480
  %485 = load i32, ptr %31, align 4
  switch i32 %485, label %486 [
    i32 4, label %488
    i32 2, label %488
    i32 1, label %488
  ]

486:                                              ; preds = %484, %482
  %487 = phi i32 [ %483, %482 ], [ %485, %484 ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.62, i32 noundef %481, i32 noundef %487) #7
  br label %529

488:                                              ; preds = %484, %484, %484
  %489 = getelementptr i8, ptr %0, i32 128
  %490 = load i32, ptr %489, align 4
  %491 = getelementptr i8, ptr %0, i32 132
  %492 = load i32, ptr %491, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.63, i32 noundef %490, i32 noundef %492) #7
  %493 = load i32, ptr %30, align 4
  %494 = load i32, ptr %31, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.64, i32 noundef %493, i32 noundef %494) #7
  %495 = load i32, ptr %31, align 4
  store i32 %495, ptr %491, align 4
  %496 = load i32, ptr %30, align 4
  %497 = trunc i32 %496 to i8
  %498 = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %497) #7
  store i32 %498, ptr %489, align 4
  %499 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %55, i32 noundef 0) #7
  %500 = zext i8 %499 to i32
  %501 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %55, i32 noundef 1) #7
  %502 = zext i8 %501 to i32
  %503 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %55, i32 noundef 2) #7
  %504 = zext i8 %503 to i32
  %505 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %55, i32 noundef 3) #7
  %506 = zext i8 %505 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.65, i32 noundef %500, i32 noundef %502, i32 noundef %504, i32 noundef %506) #7
  %507 = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %55, i32 noundef 0) #7
  %508 = zext i8 %507 to i32
  %509 = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %55, i32 noundef 1) #7
  %510 = zext i8 %509 to i32
  %511 = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %55, i32 noundef 2) #7
  %512 = zext i8 %511 to i32
  %513 = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %55, i32 noundef 3) #7
  %514 = zext i8 %513 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.66, i32 noundef %508, i32 noundef %510, i32 noundef %512, i32 noundef %514) #7
  %515 = getelementptr i8, ptr %0, i32 120
  %516 = load i8, ptr %515, align 4
  %517 = zext i8 %516 to i32
  %518 = getelementptr i8, ptr %0, i32 121
  %519 = load i8, ptr %518, align 1
  %520 = zext i8 %519 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.67, i32 noundef %517, i32 noundef %520) #7
  %521 = call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %55, i32 noundef 0) #7
  store i8 %521, ptr %515, align 4
  %522 = call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %55, i32 noundef 0) #7
  %523 = lshr i8 %522, 3
  store i8 %523, ptr %518, align 1
  %524 = load i8, ptr %515, align 4
  %525 = zext i8 %524 to i32
  %526 = zext i8 %523 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.68, i32 noundef %525, i32 noundef %526) #7
  %527 = load i32, ptr %0, align 4
  %528 = or i32 %527, 8
  br label %555

529:                                              ; preds = %486, %479
  %530 = getelementptr i8, ptr %0, i32 132
  %531 = load i32, ptr %530, align 4
  %532 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef %55, i32 noundef %531) #7
  %533 = load i32, ptr %530, align 4
  %534 = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef %55, i32 noundef %533) #7
  %535 = zext i1 %532 to i32
  %536 = zext i1 %534 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.69, i32 noundef %535, i32 noundef %536) #7
  %537 = select i1 %532, i1 %534, i1 false
  br i1 %537, label %541, label %538

538:                                              ; preds = %529
  %539 = load i32, ptr %0, align 4
  %540 = or i32 %539, 128
  br label %555

541:                                              ; preds = %529
  %542 = load i32, ptr %29, align 4
  %543 = and i32 %542, 66
  %544 = icmp eq i32 %543, 2
  br i1 %544, label %545, label %548

545:                                              ; preds = %541
  %546 = load i32, ptr %0, align 4
  %547 = or i32 %546, 2
  store i32 %547, ptr %0, align 4
  br label %548

548:                                              ; preds = %545, %541
  %549 = phi i32 [ 0, %545 ], [ -22, %541 ]
  %550 = and i32 %542, 32
  %551 = icmp eq i32 %550, 0
  %552 = load i32, ptr %0, align 4
  br i1 %551, label %558, label %553

553:                                              ; preds = %548
  %554 = or i32 %552, 32
  br label %555

555:                                              ; preds = %553, %538, %488, %465, %459, %443
  %556 = phi i32 [ %462, %459 ], [ %528, %488 ], [ %554, %553 ], [ %540, %538 ], [ %475, %465 ], [ %445, %443 ]
  %557 = phi i32 [ 0, %459 ], [ 0, %488 ], [ -22, %553 ], [ 0, %538 ], [ 0, %465 ], [ 0, %443 ]
  store i32 %556, ptr %0, align 4
  br label %558

558:                                              ; preds = %555, %548
  %559 = phi i32 [ %552, %548 ], [ %556, %555 ]
  %560 = phi i32 [ %549, %548 ], [ %557, %555 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %559) #7
  br label %561

561:                                              ; preds = %558, %437, %43, %26
  %562 = phi i32 [ %560, %558 ], [ -22, %26 ], [ %438, %437 ], [ %41, %43 ]
  ret i32 %562
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_link_get_colorimetry_config(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %12

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 140
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 66
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 4, i32 2
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %4, %3
  %13 = phi i32 [ -22, %3 ], [ %11, %9 ], [ 0, %4 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_link_adjust_levels(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 7, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 6, i32 1
  store i8 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 6, i32 2
  store i8 0, ptr %10, align 1
  br label %49

11:                                               ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %54

12:                                               ; preds = %12, %4
  %13 = phi i32 [ %21, %12 ], [ 0, %4 ]
  %14 = phi i32 [ %20, %12 ], [ 0, %4 ]
  %15 = phi i32 [ %22, %12 ], [ 0, %4 ]
  %16 = tail call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %1, i32 noundef %15) #7
  %17 = tail call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %1, i32 noundef %15) #7
  %18 = zext i8 %16 to i32
  %19 = zext i8 %17 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.6, i32 noundef %15, i32 noundef %18, i32 noundef %19) #7
  %20 = tail call i32 @llvm.smax.i32(i32 %14, i32 %18)
  %21 = tail call i32 @llvm.smax.i32(i32 %13, i32 %19)
  %22 = add nuw i32 %15, 1
  %23 = load i32, ptr %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %12, label %25

25:                                               ; preds = %12
  %26 = lshr i32 %21, 3
  %27 = trunc i32 %26 to i8
  %28 = trunc i32 %20 to i8
  %29 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 6, i32 1
  store i8 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 6, i32 2
  store i8 %27, ptr %30, align 1
  %31 = and i32 %20, 255
  %32 = icmp ugt i32 %31, 2
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.7, i32 noundef %31, i32 noundef 2) #7
  store i8 2, ptr %29, align 4
  %34 = load i8, ptr %30, align 1
  br label %35

35:                                               ; preds = %33, %25
  %36 = phi i8 [ 2, %33 ], [ %28, %25 ]
  %37 = phi i8 [ %34, %33 ], [ %27, %25 ]
  %38 = icmp ugt i8 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = zext i8 %37 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %40, i32 noundef 2) #7
  store i8 2, ptr %30, align 1
  %41 = load i8, ptr %29, align 4
  br label %44

42:                                               ; preds = %35
  %43 = icmp eq i8 %37, 2
  br i1 %43, label %44, label %49

44:                                               ; preds = %42, %39
  %45 = phi i8 [ %41, %39 ], [ %36, %42 ]
  %46 = icmp eq i8 %45, 2
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 1) #7
  store i8 1, ptr %30, align 1
  %48 = load i8, ptr %29, align 4
  br label %49

49:                                               ; preds = %47, %44, %42, %8
  %50 = phi i8 [ 1, %47 ], [ 2, %44 ], [ %37, %42 ], [ 0, %8 ]
  %51 = phi i8 [ %48, %47 ], [ %45, %44 ], [ %36, %42 ], [ 0, %8 ]
  %52 = zext i8 %51 to i32
  %53 = zext i8 %50 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %52, i32 noundef %53) #7
  br label %54

54:                                               ; preds = %49, %11
  %55 = phi i32 [ 0, %49 ], [ -22, %11 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dp_link_reset_phy_params_vx_px(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 6, i32 1
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dp_link, ptr %0, i32 0, i32 6, i32 2
  store i8 0, ptr %3, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @dp_link_get_test_bits_depth(ptr nocapture noundef readnone %0, i32 noundef %1) local_unnamed_addr #4 {
  switch i32 %1, label %7 [
    i32 18, label %5
    i32 24, label %3
    i32 30, label %4
  ]

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3, %2
  %6 = phi i32 [ 0, %2 ], [ 1, %3 ], [ 2, %4 ]
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ -1, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_link_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #7
  br label %15

7:                                                ; preds = %2
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %0, i32 noundef 192, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.dp_link_private, ptr %8, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dp_link_private, ptr %8, i32 0, i32 2
  store ptr %1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dp_link_private, ptr %8, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef nonnull @dp_link_get.__key) #7
  %14 = getelementptr inbounds %struct.dp_link_private, ptr %8, i32 0, i32 3
  br label %15

15:                                               ; preds = %10, %7, %6
  %16 = phi ptr [ %14, %10 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @dp_link_parse_link_training_params(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #7
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = getelementptr inbounds %struct.dp_link_private, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @drm_dp_dpcd_read(ptr noundef %4, i32 noundef 537, ptr noundef nonnull %2, i32 noundef 1) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %5) #7
  br label %25

8:                                                ; preds = %1
  %9 = load i8, ptr %2, align 1
  %10 = zext i8 %9 to i32
  switch i8 %9, label %11 [
    i8 20, label %12
    i8 10, label %12
    i8 6, label %12
    i8 30, label %12
  ]

11:                                               ; preds = %8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %10) #7
  br label %25

12:                                               ; preds = %8, %8, %8, %8
  %13 = getelementptr inbounds %struct.dp_link_private, ptr %0, i32 0, i32 4, i32 1
  store i32 %10, ptr %13, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.24, i32 noundef %10) #7
  %14 = load ptr, ptr %3, align 4
  %15 = call i32 @drm_dp_dpcd_read(ptr noundef %14, i32 noundef 544, ptr noundef nonnull %2, i32 noundef 1) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %15) #7
  br label %25

18:                                               ; preds = %12
  %19 = load i8, ptr %2, align 1
  %20 = and i8 %19, 31
  store i8 %20, ptr %2, align 1
  %21 = zext i8 %20 to i32
  switch i32 %21, label %22 [
    i32 4, label %23
    i32 2, label %23
    i32 1, label %23
  ]

22:                                               ; preds = %18
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %21) #7
  br label %25

23:                                               ; preds = %18, %18, %18
  %24 = getelementptr inbounds %struct.dp_link_private, ptr %0, i32 0, i32 4, i32 2
  store i32 %21, ptr %24, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.27, i32 noundef %21) #7
  br label %25

25:                                               ; preds = %23, %22, %17, %11, %7
  %26 = phi i32 [ %5, %7 ], [ %15, %17 ], [ 0, %23 ], [ -22, %22 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #7
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"auto-init"}
