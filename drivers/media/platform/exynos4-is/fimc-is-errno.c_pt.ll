; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/fimc-is-errno.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/fimc-is-errno.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

@.str = private unnamed_addr constant [34 x i8] c"ERROR_COMMON_CMD: Invalid Command\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"ERROR_COMMON_PARAMETER: Invalid Parameter\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"ERROR_COMMON_SETFILE_LOAD: Illegal Setfile Loading\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"ERROR_COMMON_SETFILE_ADJUST: Setfile isn't adjusted\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"ERROR_COMMON_SETFILE_INDEX: Invalid setfile index\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"ERROR_COMMON_INPUT_PATH: Input path can be changed in ready state\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"ERROR_COMMON_INPUT_INIT: IP can not start if input path is not set\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"ERROR_COMMON_OUTPUT_PATH: Output path can be changed in ready state (stop)\00", align 1
@.str.8 = private unnamed_addr constant [69 x i8] c"ERROR_COMMON_OUTPUT_INIT: IP can not start if output path is not set\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ERROR_CONTROL_BYPASS\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"ERROR_OTF_INPUT_FORMAT: Invalid format  (DRC: YUV444, FD: YUV444, 422, 420)\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"ERROR_OTF_INPUT_WIDTH: Invalid width (DRC: 128~8192, FD: 32~8190)\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"ERROR_OTF_INPUT_HEIGHT: Invalid bit-width (DRC: 8~12bits, FD: 8bit)\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"ERROR_OTF_INPUT_BIT_WIDTH: Invalid bit-width (DRC: 8~12bits, FD: 8bit)\00", align 1
@.str.14 = private unnamed_addr constant [66 x i8] c"ERROR_DMA_INPUT_WIDTH: Invalid width (DRC: 128~8192, FD: 32~8190)\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"ERROR_DMA_INPUT_HEIGHT: Invalid height (DRC: 64~8192, FD: 16~8190)\00", align 1
@.str.16 = private unnamed_addr constant [83 x i8] c"ERROR_DMA_INPUT_FORMAT: Invalid format (DRC: YUV444 or YUV422, FD: YUV444,422,420)\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"ERROR_DMA_INPUT_BIT_WIDTH: Invalid bit-width (DRC: 8~12bits, FD: 8bit)\00", align 1
@.str.18 = private unnamed_addr constant [87 x i8] c"ERROR_DMA_INPUT_ORDER: Invalid order(DRC: YYCbCr,YCbYCr,FD:NO,YYCbCr,YCbYCr,CbCr,CrCb)\00", align 1
@.str.19 = private unnamed_addr constant [59 x i8] c"ERROR_DMA_INPUT_PLANE: Invalid palne (DRC: 3, FD: 1, 2, 3)\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"ERROR_OTF_OUTPUT_WIDTH: Invalid width (DRC: 128~8192)\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"ERROR_OTF_OUTPUT_HEIGHT: Invalid height (DRC: 64~8192)\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"ERROR_OTF_OUTPUT_FORMAT: Invalid format (DRC: YUV444)\00", align 1
@.str.23 = private unnamed_addr constant [72 x i8] c"ERROR_OTF_OUTPUT_BIT_WIDTH: Invalid bit-width (DRC: 8~12bits, FD: 8bit)\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"ERROR_DMA_OUTPUT_WIDTH\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"ERROR_DMA_OUTPUT_HEIGHT\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"ERROR_DMA_OUTPUT_FORMAT\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"ERROR_DMA_OUTPUT_BIT_WIDTH\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"ERROR_DMA_OUTPUT_PLANE\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"ERROR_DMA_OUTPUT_ORDER\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"ERROR_SENSOR_I2C_FAIL\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"ERROR_SENSOR_INVALID_FRAMERATE\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"ERROR_SENSOR_INVALID_EXPOSURETIME\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"ERROR_SENSOR_INVALID_SIZE\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"ERROR_SENSOR_INVALID_SETTING\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"ERROR_SENSOR_ACTUATOR_INIT_FAIL\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"ERROR_SENSOR_INVALID_AF_POS\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"ERROR_SENSOR_UNSUPPORT_FUNC\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"ERROR_SENSOR_UNSUPPORT_PERI\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"ERROR_SENSOR_UNSUPPORT_AF\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"ERROR_ISP_AF_BUSY\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"ERROR_ISP_AF_INVALID_COMMAND\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"ERROR_ISP_AF_INVALID_MODE\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"ERROR_FD_CONFIG_MAX_NUMBER_STATE\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"ERROR_FD_CONFIG_MAX_NUMBER_INVALID\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"ERROR_FD_CONFIG_YAW_ANGLE_STATE\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"ERROR_FD_CONFIG_YAW_ANGLE_INVALID\0A\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"ERROR_FD_CONFIG_ROLL_ANGLE_STATE\00", align 1
@.str.48 = private unnamed_addr constant [35 x i8] c"ERROR_FD_CONFIG_ROLL_ANGLE_INVALID\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"ERROR_FD_CONFIG_SMILE_MODE_INVALID\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"ERROR_FD_CONFIG_BLINK_MODE_INVALID\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"ERROR_FD_CONFIG_EYES_DETECT_INVALID\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"ERROR_FD_CONFIG_MOUTH_DETECT_INVALID\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"ERROR_FD_CONFIG_ORIENTATION_STATE\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"ERROR_FD_CONFIG_ORIENTATION_INVALID\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"ERROR_FD_CONFIG_ORIENTATION_VALUE_INVALID\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"ERROR_FD_RESULT\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"ERROR_FD_MODE\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"IS_ERROR_INVALID_COMMAND\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"IS_ERROR_REQUEST_FAIL\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"IS_ERROR_INVALID_SCENARIO\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"IS_ERROR_INVALID_SENSORID\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"IS_ERROR_INVALID_MODE_CHANGE\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"IS_ERROR_INVALID_MAGIC_NUMBER\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"IS_ERROR_INVALID_SETFILE_HDR\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"IS_ERROR_BUSY\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"IS_ERROR_SET_PARAMETER\00", align 1
@.str.68 = private unnamed_addr constant [22 x i8] c"IS_ERROR_INVALID_PATH\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"IS_ERROR_OPEN_SENSOR_FAIL\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"IS_ERROR_ENTRY_MSG_THREAD_DOWN\00", align 1
@.str.71 = private unnamed_addr constant [32 x i8] c"IS_ERROR_ISP_FRAME_END_NOT_DONE\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"IS_ERROR_DRC_FRAME_END_NOT_DONE\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"IS_ERROR_SCALERC_FRAME_END_NOT_DONE\00", align 1
@.str.74 = private unnamed_addr constant [32 x i8] c"IS_ERROR_ODC_FRAME_END_NOT_DONE\00", align 1
@.str.75 = private unnamed_addr constant [32 x i8] c"IS_ERROR_DIS_FRAME_END_NOT_DONE\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"IS_ERROR_TDNR_FRAME_END_NOT_DONE\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"IS_ERROR_SCALERP_FRAME_END_NOT_DONE\00", align 1
@.str.78 = private unnamed_addr constant [34 x i8] c"IS_ERROR_WAIT_STREAM_OFF_NOT_DONE\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"IS_ERROR_NO_MSG_IS_RECEIVED\00", align 1
@.str.80 = private unnamed_addr constant [25 x i8] c"IS_ERROR_SENSOR_MSG_FAIL\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"IS_ERROR_ISP_MSG_FAIL\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"IS_ERROR_DRC_MSG_FAIL\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"IS_ERROR_LHFD_MSG_FAIL\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"IS_ERROR_UNKNOWN\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"IS_ERROR_SENSOR_PWRDN_FAIL\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"IS_ERROR_ISP_PWRDN_FAIL\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"IS_ERROR_ISP_MULTIPLE_INPUT\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"IS_ERROR_ISP_ABSENT_INPUT\00", align 1
@.str.89 = private unnamed_addr constant [27 x i8] c"IS_ERROR_ISP_ABSENT_OUTPUT\00", align 1
@.str.90 = private unnamed_addr constant [32 x i8] c"IS_ERROR_ISP_NONADJACENT_OUTPUT\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"IS_ERROR_ISP_FORMAT_MISMATCH\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"IS_ERROR_ISP_WIDTH_MISMATCH\00", align 1
@.str.93 = private unnamed_addr constant [29 x i8] c"IS_ERROR_ISP_HEIGHT_MISMATCH\00", align 1
@.str.94 = private unnamed_addr constant [31 x i8] c"IS_ERROR_ISP_BITWIDTH_MISMATCH\00", align 1
@.str.95 = private unnamed_addr constant [32 x i8] c"IS_ERROR_ISP_FRAME_END_TIME_OUT\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"IS_ERROR_DRC_PWRDN_FAIL\00", align 1
@.str.97 = private unnamed_addr constant [28 x i8] c"IS_ERROR_DRC_MULTIPLE_INPUT\00", align 1
@.str.98 = private unnamed_addr constant [26 x i8] c"IS_ERROR_DRC_ABSENT_INPUT\00", align 1
@.str.99 = private unnamed_addr constant [31 x i8] c"IS_ERROR_DRC_NONADJACENT_INPUT\00", align 1
@.str.100 = private unnamed_addr constant [27 x i8] c"IS_ERROR_DRC_ABSENT_OUTPUT\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"IS_ERROR_DRC_NONADJACENT_OUTPUT\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"IS_ERROR_DRC_FORMAT_MISMATCH\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"IS_ERROR_DRC_WIDTH_MISMATCH\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"IS_ERROR_DRC_HEIGHT_MISMATCH\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"IS_ERROR_DRC_BITWIDTH_MISMATCH\00", align 1
@.str.106 = private unnamed_addr constant [32 x i8] c"IS_ERROR_DRC_FRAME_END_TIME_OUT\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"IS_ERROR_FD_PWRDN_FAIL\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"IS_ERROR_FD_MULTIPLE_INPUT\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"IS_ERROR_FD_ABSENT_INPUT\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"IS_ERROR_FD_NONADJACENT_INPUT\00", align 1
@.str.111 = private unnamed_addr constant [33 x i8] c"IS_ERROR_LHFD_FRAME_END_TIME_OUT\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @fimc_is_param_strerr(i32 noundef %0) local_unnamed_addr #0 {
  switch i32 %0, label %59 [
    i32 1, label %60
    i32 2, label %2
    i32 3, label %3
    i32 4, label %4
    i32 5, label %5
    i32 6, label %6
    i32 7, label %7
    i32 8, label %8
    i32 9, label %9
    i32 11, label %10
    i32 22, label %11
    i32 23, label %12
    i32 24, label %13
    i32 25, label %14
    i32 31, label %15
    i32 32, label %16
    i32 33, label %17
    i32 34, label %18
    i32 35, label %19
    i32 36, label %20
    i32 41, label %21
    i32 42, label %22
    i32 43, label %23
    i32 44, label %24
    i32 51, label %25
    i32 52, label %26
    i32 53, label %27
    i32 54, label %28
    i32 55, label %29
    i32 56, label %30
    i32 101, label %31
    i32 102, label %32
    i32 103, label %33
    i32 104, label %34
    i32 105, label %35
    i32 106, label %36
    i32 107, label %37
    i32 108, label %38
    i32 109, label %39
    i32 110, label %40
    i32 201, label %41
    i32 202, label %42
    i32 203, label %43
    i32 401, label %44
    i32 402, label %45
    i32 403, label %46
    i32 404, label %47
    i32 405, label %48
    i32 406, label %49
    i32 407, label %50
    i32 408, label %51
    i32 409, label %52
    i32 410, label %53
    i32 411, label %54
    i32 412, label %55
    i32 413, label %56
    i32 414, label %57
    i32 415, label %58
  ]

2:                                                ; preds = %1
  br label %60

3:                                                ; preds = %1
  br label %60

4:                                                ; preds = %1
  br label %60

5:                                                ; preds = %1
  br label %60

6:                                                ; preds = %1
  br label %60

7:                                                ; preds = %1
  br label %60

8:                                                ; preds = %1
  br label %60

9:                                                ; preds = %1
  br label %60

10:                                               ; preds = %1
  br label %60

11:                                               ; preds = %1
  br label %60

12:                                               ; preds = %1
  br label %60

13:                                               ; preds = %1
  br label %60

14:                                               ; preds = %1
  br label %60

15:                                               ; preds = %1
  br label %60

16:                                               ; preds = %1
  br label %60

17:                                               ; preds = %1
  br label %60

18:                                               ; preds = %1
  br label %60

19:                                               ; preds = %1
  br label %60

20:                                               ; preds = %1
  br label %60

21:                                               ; preds = %1
  br label %60

22:                                               ; preds = %1
  br label %60

23:                                               ; preds = %1
  br label %60

24:                                               ; preds = %1
  br label %60

25:                                               ; preds = %1
  br label %60

26:                                               ; preds = %1
  br label %60

27:                                               ; preds = %1
  br label %60

28:                                               ; preds = %1
  br label %60

29:                                               ; preds = %1
  br label %60

30:                                               ; preds = %1
  br label %60

31:                                               ; preds = %1
  br label %60

32:                                               ; preds = %1
  br label %60

33:                                               ; preds = %1
  br label %60

34:                                               ; preds = %1
  br label %60

35:                                               ; preds = %1
  br label %60

36:                                               ; preds = %1
  br label %60

37:                                               ; preds = %1
  br label %60

38:                                               ; preds = %1
  br label %60

39:                                               ; preds = %1
  br label %60

40:                                               ; preds = %1
  br label %60

41:                                               ; preds = %1
  br label %60

42:                                               ; preds = %1
  br label %60

43:                                               ; preds = %1
  br label %60

44:                                               ; preds = %1
  br label %60

45:                                               ; preds = %1
  br label %60

46:                                               ; preds = %1
  br label %60

47:                                               ; preds = %1
  br label %60

48:                                               ; preds = %1
  br label %60

49:                                               ; preds = %1
  br label %60

50:                                               ; preds = %1
  br label %60

51:                                               ; preds = %1
  br label %60

52:                                               ; preds = %1
  br label %60

53:                                               ; preds = %1
  br label %60

54:                                               ; preds = %1
  br label %60

55:                                               ; preds = %1
  br label %60

56:                                               ; preds = %1
  br label %60

57:                                               ; preds = %1
  br label %60

58:                                               ; preds = %1
  br label %60

59:                                               ; preds = %1
  br label %60

60:                                               ; preds = %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %61 = phi ptr [ @.str.58, %59 ], [ @.str.57, %58 ], [ @.str.56, %57 ], [ @.str.55, %56 ], [ @.str.54, %55 ], [ @.str.53, %54 ], [ @.str.52, %53 ], [ @.str.51, %52 ], [ @.str.50, %51 ], [ @.str.49, %50 ], [ @.str.48, %49 ], [ @.str.47, %48 ], [ @.str.46, %47 ], [ @.str.45, %46 ], [ @.str.44, %45 ], [ @.str.43, %44 ], [ @.str.42, %43 ], [ @.str.41, %42 ], [ @.str.40, %41 ], [ @.str.39, %40 ], [ @.str.38, %39 ], [ @.str.37, %38 ], [ @.str.36, %37 ], [ @.str.35, %36 ], [ @.str.34, %35 ], [ @.str.33, %34 ], [ @.str.32, %33 ], [ @.str.31, %32 ], [ @.str.30, %31 ], [ @.str.29, %30 ], [ @.str.28, %29 ], [ @.str.27, %28 ], [ @.str.26, %27 ], [ @.str.25, %26 ], [ @.str.24, %25 ], [ @.str.23, %24 ], [ @.str.22, %23 ], [ @.str.21, %22 ], [ @.str.20, %21 ], [ @.str.19, %20 ], [ @.str.18, %19 ], [ @.str.17, %18 ], [ @.str.16, %17 ], [ @.str.15, %16 ], [ @.str.14, %15 ], [ @.str.13, %14 ], [ @.str.12, %13 ], [ @.str.11, %12 ], [ @.str.10, %11 ], [ @.str.9, %10 ], [ @.str.8, %9 ], [ @.str.7, %8 ], [ @.str.6, %7 ], [ @.str.5, %6 ], [ @.str.4, %5 ], [ @.str.3, %4 ], [ @.str.2, %3 ], [ @.str.1, %2 ], [ @.str, %1 ]
  ret ptr %61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @fimc_is_strerr(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 2147483647
  switch i32 %2, label %55 [
    i32 1, label %56
    i32 2, label %3
    i32 3, label %4
    i32 4, label %5
    i32 5, label %6
    i32 6, label %7
    i32 7, label %8
    i32 8, label %9
    i32 9, label %10
    i32 10, label %11
    i32 11, label %12
    i32 12, label %13
    i32 13, label %14
    i32 14, label %15
    i32 15, label %16
    i32 16, label %17
    i32 17, label %18
    i32 18, label %19
    i32 19, label %20
    i32 20, label %21
    i32 21, label %22
    i32 22, label %23
    i32 23, label %24
    i32 24, label %25
    i32 30, label %26
    i32 1000, label %27
    i32 100, label %28
    i32 200, label %29
    i32 201, label %30
    i32 202, label %31
    i32 203, label %32
    i32 204, label %33
    i32 205, label %34
    i32 206, label %35
    i32 207, label %36
    i32 208, label %37
    i32 209, label %38
    i32 300, label %39
    i32 301, label %40
    i32 302, label %41
    i32 303, label %42
    i32 304, label %43
    i32 305, label %44
    i32 306, label %45
    i32 307, label %46
    i32 308, label %47
    i32 309, label %48
    i32 310, label %49
    i32 900, label %50
    i32 901, label %51
    i32 902, label %52
    i32 903, label %53
    i32 904, label %54
  ]

3:                                                ; preds = %1
  br label %56

4:                                                ; preds = %1
  br label %56

5:                                                ; preds = %1
  br label %56

6:                                                ; preds = %1
  br label %56

7:                                                ; preds = %1
  br label %56

8:                                                ; preds = %1
  br label %56

9:                                                ; preds = %1
  br label %56

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  br label %56

12:                                               ; preds = %1
  br label %56

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  br label %56

15:                                               ; preds = %1
  br label %56

16:                                               ; preds = %1
  br label %56

17:                                               ; preds = %1
  br label %56

18:                                               ; preds = %1
  br label %56

19:                                               ; preds = %1
  br label %56

20:                                               ; preds = %1
  br label %56

21:                                               ; preds = %1
  br label %56

22:                                               ; preds = %1
  br label %56

23:                                               ; preds = %1
  br label %56

24:                                               ; preds = %1
  br label %56

25:                                               ; preds = %1
  br label %56

26:                                               ; preds = %1
  br label %56

27:                                               ; preds = %1
  br label %56

28:                                               ; preds = %1
  br label %56

29:                                               ; preds = %1
  br label %56

30:                                               ; preds = %1
  br label %56

31:                                               ; preds = %1
  br label %56

32:                                               ; preds = %1
  br label %56

33:                                               ; preds = %1
  br label %56

34:                                               ; preds = %1
  br label %56

35:                                               ; preds = %1
  br label %56

36:                                               ; preds = %1
  br label %56

37:                                               ; preds = %1
  br label %56

38:                                               ; preds = %1
  br label %56

39:                                               ; preds = %1
  br label %56

40:                                               ; preds = %1
  br label %56

41:                                               ; preds = %1
  br label %56

42:                                               ; preds = %1
  br label %56

43:                                               ; preds = %1
  br label %56

44:                                               ; preds = %1
  br label %56

45:                                               ; preds = %1
  br label %56

46:                                               ; preds = %1
  br label %56

47:                                               ; preds = %1
  br label %56

48:                                               ; preds = %1
  br label %56

49:                                               ; preds = %1
  br label %56

50:                                               ; preds = %1
  br label %56

51:                                               ; preds = %1
  br label %56

52:                                               ; preds = %1
  br label %56

53:                                               ; preds = %1
  br label %56

54:                                               ; preds = %1
  br label %56

55:                                               ; preds = %1
  br label %56

56:                                               ; preds = %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %1
  %57 = phi ptr [ @.str.58, %55 ], [ @.str.111, %54 ], [ @.str.110, %53 ], [ @.str.109, %52 ], [ @.str.108, %51 ], [ @.str.107, %50 ], [ @.str.106, %49 ], [ @.str.105, %48 ], [ @.str.104, %47 ], [ @.str.103, %46 ], [ @.str.102, %45 ], [ @.str.101, %44 ], [ @.str.100, %43 ], [ @.str.99, %42 ], [ @.str.98, %41 ], [ @.str.97, %40 ], [ @.str.96, %39 ], [ @.str.95, %38 ], [ @.str.94, %37 ], [ @.str.93, %36 ], [ @.str.92, %35 ], [ @.str.91, %34 ], [ @.str.90, %33 ], [ @.str.89, %32 ], [ @.str.88, %31 ], [ @.str.87, %30 ], [ @.str.86, %29 ], [ @.str.85, %28 ], [ @.str.84, %27 ], [ @.str.83, %26 ], [ @.str.82, %25 ], [ @.str.81, %24 ], [ @.str.80, %23 ], [ @.str.79, %22 ], [ @.str.78, %21 ], [ @.str.77, %20 ], [ @.str.76, %19 ], [ @.str.75, %18 ], [ @.str.74, %17 ], [ @.str.73, %16 ], [ @.str.72, %15 ], [ @.str.71, %14 ], [ @.str.70, %13 ], [ @.str.69, %12 ], [ @.str.68, %11 ], [ @.str.67, %10 ], [ @.str.66, %9 ], [ @.str.65, %8 ], [ @.str.64, %7 ], [ @.str.63, %6 ], [ @.str.62, %5 ], [ @.str.61, %4 ], [ @.str.60, %3 ], [ @.str.59, %1 ]
  ret ptr %57
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
