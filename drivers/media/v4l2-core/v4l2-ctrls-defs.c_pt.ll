; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-ctrls-defs.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-ctrls-defs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_get_menu:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_get_menu\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_get_menu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_get_int_menu:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_get_int_menu\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_get_int_menu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_get_name\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_fill\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@v4l2_ctrl_get_menu.mpeg_audio_sampling_freq = internal constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr null], align 4
@.str = private unnamed_addr constant [9 x i8] c"44.1 kHz\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"48 kHz\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"32 kHz\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_encoding = internal constant [6 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null], align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"MPEG-1/2 Layer I\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"MPEG-1/2 Layer II\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"MPEG-1/2 Layer III\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MPEG-2/4 AAC\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"AC-3\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_l1_bitrate = internal constant [15 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr null], align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"32 kbps\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"64 kbps\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"96 kbps\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"128 kbps\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"160 kbps\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"192 kbps\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"224 kbps\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"256 kbps\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"288 kbps\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"320 kbps\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"352 kbps\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"384 kbps\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"416 kbps\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"448 kbps\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_l2_bitrate = internal constant [15 x ptr] [ptr @.str.8, ptr @.str.22, ptr @.str.23, ptr @.str.9, ptr @.str.24, ptr @.str.10, ptr @.str.25, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr null], align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"48 kbps\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"56 kbps\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"80 kbps\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"112 kbps\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_l3_bitrate = internal constant [15 x ptr] [ptr @.str.8, ptr @.str.26, ptr @.str.22, ptr @.str.23, ptr @.str.9, ptr @.str.24, ptr @.str.10, ptr @.str.25, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr null], align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"40 kbps\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_ac3_bitrate = internal constant [20 x ptr] [ptr @.str.8, ptr @.str.26, ptr @.str.22, ptr @.str.23, ptr @.str.9, ptr @.str.24, ptr @.str.10, ptr @.str.25, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"512 kbps\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"576 kbps\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"640 kbps\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_mode = internal constant [5 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr null], align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"Stereo\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"Joint Stereo\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Dual\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Mono\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_mode_extension = internal constant [5 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null], align 4
@.str.34 = private unnamed_addr constant [8 x i8] c"Bound 4\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Bound 8\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"Bound 12\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Bound 16\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_emphasis = internal constant [4 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr null], align 4
@.str.38 = private unnamed_addr constant [12 x i8] c"No Emphasis\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"50/15 us\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"CCITT J17\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_crc = internal constant [3 x ptr] [ptr @.str.41, ptr @.str.42, ptr null], align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"No CRC\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"16-bit CRC\00", align 1
@v4l2_ctrl_get_menu.mpeg_audio_dec_playback = internal constant [7 x ptr] [ptr @.str.43, ptr @.str.30, ptr @.str.44, ptr @.str.45, ptr @.str.33, ptr @.str.46, ptr null], align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"Auto\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Swapped Stereo\00", align 1
@v4l2_ctrl_get_menu.mpeg_video_encoding = internal constant [4 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr null], align 4
@.str.47 = private unnamed_addr constant [7 x i8] c"MPEG-1\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"MPEG-2\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"MPEG-4 AVC\00", align 1
@v4l2_ctrl_get_menu.mpeg_video_aspect = internal constant [5 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr null], align 4
@.str.50 = private unnamed_addr constant [4 x i8] c"1x1\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"4x3\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"16x9\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"2.21x1\00", align 1
@v4l2_ctrl_get_menu.mpeg_video_bitrate_mode = internal constant [4 x ptr] [ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr null], align 4
@.str.54 = private unnamed_addr constant [17 x i8] c"Variable Bitrate\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"Constant Bitrate\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Constant Quality\00", align 1
@v4l2_ctrl_get_menu.mpeg_stream_type = internal constant [7 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr null], align 4
@.str.57 = private unnamed_addr constant [22 x i8] c"MPEG-2 Program Stream\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"MPEG-2 Transport Stream\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"MPEG-1 System Stream\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"MPEG-2 DVD-compatible Stream\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"MPEG-1 VCD-compatible Stream\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"MPEG-2 SVCD-compatible Stream\00", align 1
@v4l2_ctrl_get_menu.mpeg_stream_vbi_fmt = internal constant [3 x ptr] [ptr @.str.63, ptr @.str.64, ptr null], align 4
@.str.63 = private unnamed_addr constant [7 x i8] c"No VBI\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"Private Packet, IVTV Format\00", align 1
@v4l2_ctrl_get_menu.camera_power_line_frequency = internal constant [5 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.43, ptr null], align 4
@.str.65 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"50 Hz\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"60 Hz\00", align 1
@v4l2_ctrl_get_menu.camera_exposure_auto = internal constant [5 x ptr] [ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr null], align 4
@.str.68 = private unnamed_addr constant [10 x i8] c"Auto Mode\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"Manual Mode\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"Shutter Priority Mode\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"Aperture Priority Mode\00", align 1
@v4l2_ctrl_get_menu.camera_exposure_metering = internal constant [5 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr null], align 4
@.str.72 = private unnamed_addr constant [8 x i8] c"Average\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"Center Weighted\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"Spot\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@v4l2_ctrl_get_menu.camera_auto_focus_range = internal constant [5 x ptr] [ptr @.str.43, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr null], align 4
@.str.76 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"Macro\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@v4l2_ctrl_get_menu.colorfx = internal constant [17 x ptr] [ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr null], align 4
@.str.79 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"Black & White\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"Sepia\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"Negative\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"Emboss\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"Sketch\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"Sky Blue\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"Grass Green\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"Skin Whiten\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"Vivid\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"Aqua\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"Art Freeze\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"Silhouette\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"Solarization\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"Antique\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"Set Cb/Cr\00", align 1
@v4l2_ctrl_get_menu.auto_n_preset_white_balance = internal constant [11 x ptr] [ptr @.str.95, ptr @.str.43, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr null], align 4
@.str.95 = private unnamed_addr constant [7 x i8] c"Manual\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"Incandescent\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"Fluorescent\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"Fluorescent H\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"Horizon\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"Daylight\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"Flash\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"Cloudy\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"Shade\00", align 1
@v4l2_ctrl_get_menu.camera_iso_sensitivity_auto = internal constant [3 x ptr] [ptr @.str.95, ptr @.str.43, ptr null], align 4
@v4l2_ctrl_get_menu.scene_mode = internal constant [15 x ptr] [ptr @.str.79, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr null], align 4
@.str.104 = private unnamed_addr constant [10 x i8] c"Backlight\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"Beach/Snow\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"Candle Light\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"Dusk/Dawn\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"Fall Colors\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"Fireworks\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"Landscape\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"Night\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"Party/Indoor\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"Portrait\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"Sports\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"Sunset\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@v4l2_ctrl_get_menu.tune_emphasis = internal constant [4 x ptr] [ptr @.str.79, ptr @.str.117, ptr @.str.118, ptr null], align 4
@.str.117 = private unnamed_addr constant [16 x i8] c"50 Microseconds\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"75 Microseconds\00", align 1
@v4l2_ctrl_get_menu.header_mode = internal constant [3 x ptr] [ptr @.str.119, ptr @.str.120, ptr null], align 4
@.str.119 = private unnamed_addr constant [16 x i8] c"Separate Buffer\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"Joined With 1st Frame\00", align 1
@v4l2_ctrl_get_menu.multi_slice = internal constant [4 x ptr] [ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr null], align 4
@.str.121 = private unnamed_addr constant [7 x i8] c"Single\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"Max Macroblocks\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"Max Bytes\00", align 1
@v4l2_ctrl_get_menu.entropy_mode = internal constant [3 x ptr] [ptr @.str.124, ptr @.str.125, ptr null], align 4
@.str.124 = private unnamed_addr constant [6 x i8] c"CAVLC\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"CABAC\00", align 1
@v4l2_ctrl_get_menu.mpeg_h264_level = internal constant [21 x ptr] [ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr null], align 4
@.str.126 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"1b\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"2.1\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"2.2\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"3.1\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"3.2\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"4.1\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"4.2\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"5.1\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"6.0\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"6.1\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"6.2\00", align 1
@v4l2_ctrl_get_menu.h264_loop_filter = internal constant [4 x ptr] [ptr @.str.146, ptr @.str.65, ptr @.str.147, ptr null], align 4
@.str.146 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.147 = private unnamed_addr constant [27 x i8] c"Disabled at Slice Boundary\00", align 1
@v4l2_ctrl_get_menu.h264_profile = internal constant [19 x ptr] [ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr null], align 4
@.str.148 = private unnamed_addr constant [9 x i8] c"Baseline\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"Constrained Baseline\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"Main\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"Extended\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"High 10\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"High 422\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"High 444 Predictive\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"High 10 Intra\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"High 422 Intra\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"High 444 Intra\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"CAVLC 444 Intra\00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"Scalable Baseline\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"Scalable High\00", align 1
@.str.162 = private unnamed_addr constant [20 x i8] c"Scalable High Intra\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"Stereo High\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"Multiview High\00", align 1
@.str.165 = private unnamed_addr constant [17 x i8] c"Constrained High\00", align 1
@v4l2_ctrl_get_menu.vui_sar_idc = internal constant [19 x ptr] [ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr null], align 4
@.str.166 = private unnamed_addr constant [12 x i8] c"Unspecified\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"1:1\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"12:11\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"10:11\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"16:11\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"40:33\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"24:11\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"20:11\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"32:11\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"80:33\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"18:11\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"15:11\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"64:33\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c"160:99\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"4:3\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"3:2\00", align 1
@.str.182 = private unnamed_addr constant [4 x i8] c"2:1\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"Extended SAR\00", align 1
@v4l2_ctrl_get_menu.h264_fp_arrangement_type = internal constant [7 x ptr] [ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr null], align 4
@.str.184 = private unnamed_addr constant [13 x i8] c"Checkerboard\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"Column\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"Row\00", align 1
@.str.187 = private unnamed_addr constant [13 x i8] c"Side by Side\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"Top Bottom\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"Temporal\00", align 1
@v4l2_ctrl_get_menu.h264_fmo_map_type = internal constant [8 x ptr] [ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr null], align 4
@.str.190 = private unnamed_addr constant [19 x i8] c"Interleaved Slices\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"Scattered Slices\00", align 1
@.str.192 = private unnamed_addr constant [25 x i8] c"Foreground with Leftover\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"Box Out\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"Raster Scan\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"Wipe Scan\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"Explicit\00", align 1
@v4l2_ctrl_get_menu.h264_decode_mode = internal constant [3 x ptr] [ptr @.str.197, ptr @.str.198, ptr null], align 4
@.str.197 = private unnamed_addr constant [12 x i8] c"Slice-Based\00", align 1
@.str.198 = private unnamed_addr constant [12 x i8] c"Frame-Based\00", align 1
@v4l2_ctrl_get_menu.h264_start_code = internal constant [3 x ptr] [ptr @.str.199, ptr @.str.200, ptr null], align 4
@.str.199 = private unnamed_addr constant [14 x i8] c"No Start Code\00", align 1
@.str.200 = private unnamed_addr constant [19 x i8] c"Annex B Start Code\00", align 1
@v4l2_ctrl_get_menu.h264_hierarchical_coding_type = internal constant [3 x ptr] [ptr @.str.201, ptr @.str.202, ptr null], align 4
@.str.201 = private unnamed_addr constant [14 x i8] c"Hier Coding B\00", align 1
@.str.202 = private unnamed_addr constant [14 x i8] c"Hier Coding P\00", align 1
@v4l2_ctrl_get_menu.mpeg_mpeg2_level = internal constant [5 x ptr] [ptr @.str.203, ptr @.str.150, ptr @.str.204, ptr @.str.152, ptr null], align 4
@.str.203 = private unnamed_addr constant [4 x i8] c"Low\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c"High 1440\00", align 1
@v4l2_ctrl_get_menu.mpeg2_profile = internal constant [6 x ptr] [ptr @.str.205, ptr @.str.150, ptr @.str.206, ptr @.str.207, ptr @.str.152, ptr null], align 4
@.str.205 = private unnamed_addr constant [7 x i8] c"Simple\00", align 1
@.str.206 = private unnamed_addr constant [13 x i8] c"SNR Scalable\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"Spatially Scalable\00", align 1
@v4l2_ctrl_get_menu.mpeg_mpeg4_level = internal constant [9 x ptr] [ptr @.str.208, ptr @.str.209, ptr @.str.126, ptr @.str.131, ptr @.str.134, ptr @.str.210, ptr @.str.137, ptr @.str.140, ptr null], align 4
@.str.208 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@.str.210 = private unnamed_addr constant [3 x i8] c"3b\00", align 1
@v4l2_ctrl_get_menu.mpeg4_profile = internal constant [6 x ptr] [ptr @.str.205, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr null], align 4
@.str.211 = private unnamed_addr constant [16 x i8] c"Advanced Simple\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.213 = private unnamed_addr constant [16 x i8] c"Simple Scalable\00", align 1
@.str.214 = private unnamed_addr constant [27 x i8] c"Advanced Coding Efficiency\00", align 1
@v4l2_ctrl_get_menu.vpx_golden_frame_sel = internal constant [3 x ptr] [ptr @.str.215, ptr @.str.216, ptr null], align 4
@.str.215 = private unnamed_addr constant [19 x i8] c"Use Previous Frame\00", align 1
@.str.216 = private unnamed_addr constant [28 x i8] c"Use Previous Specific Frame\00", align 1
@v4l2_ctrl_get_menu.vp8_profile = internal constant [5 x ptr] [ptr @.str.208, ptr @.str.126, ptr @.str.131, ptr @.str.134, ptr null], align 4
@v4l2_ctrl_get_menu.vp9_profile = internal constant [5 x ptr] [ptr @.str.208, ptr @.str.126, ptr @.str.131, ptr @.str.134, ptr null], align 4
@v4l2_ctrl_get_menu.vp9_level = internal constant [15 x ptr] [ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.217, ptr @.str.144, ptr @.str.145, ptr null], align 4
@.str.217 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@v4l2_ctrl_get_menu.flash_led_mode = internal constant [4 x ptr] [ptr @.str.218, ptr @.str.101, ptr @.str.219, ptr null], align 4
@.str.218 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.219 = private unnamed_addr constant [6 x i8] c"Torch\00", align 1
@v4l2_ctrl_get_menu.flash_strobe_source = internal constant [3 x ptr] [ptr @.str.220, ptr @.str.221, ptr null], align 4
@.str.220 = private unnamed_addr constant [9 x i8] c"Software\00", align 1
@.str.221 = private unnamed_addr constant [9 x i8] c"External\00", align 1
@v4l2_ctrl_get_menu.jpeg_chroma_subsampling = internal constant [7 x ptr] [ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr null], align 4
@.str.222 = private unnamed_addr constant [6 x i8] c"4:4:4\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"4:2:2\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"4:2:0\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"4:1:1\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"4:1:0\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@v4l2_ctrl_get_menu.dv_tx_mode = internal constant [3 x ptr] [ptr @.str.228, ptr @.str.229, ptr null], align 4
@.str.228 = private unnamed_addr constant [6 x i8] c"DVI-D\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@v4l2_ctrl_get_menu.dv_rgb_range = internal constant [4 x ptr] [ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr null], align 4
@.str.230 = private unnamed_addr constant [10 x i8] c"Automatic\00", align 1
@.str.231 = private unnamed_addr constant [27 x i8] c"RGB Limited Range (16-235)\00", align 1
@.str.232 = private unnamed_addr constant [23 x i8] c"RGB Full Range (0-255)\00", align 1
@v4l2_ctrl_get_menu.dv_it_content_type = internal constant [6 x ptr] [ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr null], align 4
@.str.233 = private unnamed_addr constant [9 x i8] c"Graphics\00", align 1
@.str.234 = private unnamed_addr constant [6 x i8] c"Photo\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"Cinema\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.237 = private unnamed_addr constant [14 x i8] c"No IT Content\00", align 1
@v4l2_ctrl_get_menu.detect_md_mode = internal constant [5 x ptr] [ptr @.str.65, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr null], align 4
@.str.238 = private unnamed_addr constant [7 x i8] c"Global\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"Threshold Grid\00", align 1
@.str.240 = private unnamed_addr constant [12 x i8] c"Region Grid\00", align 1
@v4l2_ctrl_get_menu.hevc_profile = internal constant [4 x ptr] [ptr @.str.150, ptr @.str.241, ptr @.str.242, ptr null], align 4
@.str.241 = private unnamed_addr constant [19 x i8] c"Main Still Picture\00", align 1
@.str.242 = private unnamed_addr constant [8 x i8] c"Main 10\00", align 1
@v4l2_ctrl_get_menu.hevc_level = internal constant [14 x ptr] [ptr @.str.126, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.217, ptr @.str.144, ptr @.str.145, ptr null], align 4
@v4l2_ctrl_get_menu.hevc_hierarchial_coding_type = internal constant [3 x ptr] [ptr @.str.243, ptr @.str.244, ptr null], align 4
@.str.243 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.244 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@v4l2_ctrl_get_menu.hevc_refresh_type = internal constant [4 x ptr] [ptr @.str.79, ptr @.str.245, ptr @.str.246, ptr null], align 4
@.str.245 = private unnamed_addr constant [4 x i8] c"CRA\00", align 1
@.str.246 = private unnamed_addr constant [4 x i8] c"IDR\00", align 1
@v4l2_ctrl_get_menu.hevc_size_of_length_field = internal constant [5 x ptr] [ptr @.str.208, ptr @.str.126, ptr @.str.131, ptr @.str.137, ptr null], align 4
@v4l2_ctrl_get_menu.hevc_tier = internal constant [3 x ptr] [ptr @.str.150, ptr @.str.152, ptr null], align 4
@v4l2_ctrl_get_menu.hevc_loop_filter_mode = internal constant [4 x ptr] [ptr @.str.65, ptr @.str.146, ptr @.str.247, ptr @.str.248], align 4
@.str.247 = private unnamed_addr constant [27 x i8] c"Disabled at slice boundary\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@v4l2_ctrl_get_menu.hevc_decode_mode = internal constant [3 x ptr] [ptr @.str.197, ptr @.str.198, ptr null], align 4
@v4l2_ctrl_get_menu.hevc_start_code = internal constant [3 x ptr] [ptr @.str.199, ptr @.str.200, ptr null], align 4
@v4l2_ctrl_get_menu.camera_orientation = internal constant [4 x ptr] [ptr @.str.249, ptr @.str.250, ptr @.str.221, ptr null], align 4
@.str.249 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"Back\00", align 1
@v4l2_ctrl_get_menu.mpeg_video_frame_skip = internal constant [4 x ptr] [ptr @.str.65, ptr @.str.251, ptr @.str.252, ptr null], align 4
@.str.251 = private unnamed_addr constant [12 x i8] c"Level Limit\00", align 1
@.str.252 = private unnamed_addr constant [14 x i8] c"VBV/CPB Limit\00", align 1
@__kstrtab_v4l2_ctrl_get_menu = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_get_menu = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_get_menu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_get_menu to i32), ptr @__kstrtab_v4l2_ctrl_get_menu, ptr @__kstrtabns_v4l2_ctrl_get_menu }, section "___ksymtab+v4l2_ctrl_get_menu", align 4
@v4l2_ctrl_get_int_menu.qmenu_int_vpx_num_partitions = internal constant [4 x i64] [i64 1, i64 2, i64 4, i64 8], align 8
@v4l2_ctrl_get_int_menu.qmenu_int_vpx_num_ref_frames = internal constant [3 x i64] [i64 1, i64 2, i64 3], align 8
@__kstrtab_v4l2_ctrl_get_int_menu = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_get_int_menu = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_get_int_menu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_get_int_menu to i32), ptr @__kstrtab_v4l2_ctrl_get_int_menu, ptr @__kstrtabns_v4l2_ctrl_get_int_menu }, section "___ksymtab+v4l2_ctrl_get_int_menu", align 4
@.str.253 = private unnamed_addr constant [14 x i8] c"User Controls\00", align 1
@.str.254 = private unnamed_addr constant [11 x i8] c"Brightness\00", align 1
@.str.255 = private unnamed_addr constant [9 x i8] c"Contrast\00", align 1
@.str.256 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.257 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.258 = private unnamed_addr constant [7 x i8] c"Volume\00", align 1
@.str.259 = private unnamed_addr constant [8 x i8] c"Balance\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"Bass\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c"Treble\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"Mute\00", align 1
@.str.263 = private unnamed_addr constant [9 x i8] c"Loudness\00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"Black Level\00", align 1
@.str.265 = private unnamed_addr constant [25 x i8] c"White Balance, Automatic\00", align 1
@.str.266 = private unnamed_addr constant [17 x i8] c"Do White Balance\00", align 1
@.str.267 = private unnamed_addr constant [12 x i8] c"Red Balance\00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"Blue Balance\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.270 = private unnamed_addr constant [9 x i8] c"Exposure\00", align 1
@.str.271 = private unnamed_addr constant [16 x i8] c"Gain, Automatic\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"Gain\00", align 1
@.str.273 = private unnamed_addr constant [16 x i8] c"Horizontal Flip\00", align 1
@.str.274 = private unnamed_addr constant [14 x i8] c"Vertical Flip\00", align 1
@.str.275 = private unnamed_addr constant [21 x i8] c"Power Line Frequency\00", align 1
@.str.276 = private unnamed_addr constant [15 x i8] c"Hue, Automatic\00", align 1
@.str.277 = private unnamed_addr constant [26 x i8] c"White Balance Temperature\00", align 1
@.str.278 = private unnamed_addr constant [10 x i8] c"Sharpness\00", align 1
@.str.279 = private unnamed_addr constant [23 x i8] c"Backlight Compensation\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"Chroma AGC\00", align 1
@.str.281 = private unnamed_addr constant [13 x i8] c"Color Killer\00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"Color Effects\00", align 1
@.str.283 = private unnamed_addr constant [22 x i8] c"Brightness, Automatic\00", align 1
@.str.284 = private unnamed_addr constant [17 x i8] c"Band-Stop Filter\00", align 1
@.str.285 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.286 = private unnamed_addr constant [17 x i8] c"Background Color\00", align 1
@.str.287 = private unnamed_addr constant [12 x i8] c"Chroma Gain\00", align 1
@.str.288 = private unnamed_addr constant [14 x i8] c"Illuminator 1\00", align 1
@.str.289 = private unnamed_addr constant [14 x i8] c"Illuminator 2\00", align 1
@.str.290 = private unnamed_addr constant [30 x i8] c"Min Number of Capture Buffers\00", align 1
@.str.291 = private unnamed_addr constant [29 x i8] c"Min Number of Output Buffers\00", align 1
@.str.292 = private unnamed_addr constant [16 x i8] c"Alpha Component\00", align 1
@.str.293 = private unnamed_addr constant [20 x i8] c"Color Effects, CbCr\00", align 1
@.str.294 = private unnamed_addr constant [19 x i8] c"Color Effects, RGB\00", align 1
@.str.295 = private unnamed_addr constant [15 x i8] c"Codec Controls\00", align 1
@.str.296 = private unnamed_addr constant [12 x i8] c"Stream Type\00", align 1
@.str.297 = private unnamed_addr constant [22 x i8] c"Stream PMT Program ID\00", align 1
@.str.298 = private unnamed_addr constant [24 x i8] c"Stream Audio Program ID\00", align 1
@.str.299 = private unnamed_addr constant [24 x i8] c"Stream Video Program ID\00", align 1
@.str.300 = private unnamed_addr constant [22 x i8] c"Stream PCR Program ID\00", align 1
@.str.301 = private unnamed_addr constant [20 x i8] c"Stream PES Audio ID\00", align 1
@.str.302 = private unnamed_addr constant [20 x i8] c"Stream PES Video ID\00", align 1
@.str.303 = private unnamed_addr constant [18 x i8] c"Stream VBI Format\00", align 1
@.str.304 = private unnamed_addr constant [25 x i8] c"Audio Sampling Frequency\00", align 1
@.str.305 = private unnamed_addr constant [15 x i8] c"Audio Encoding\00", align 1
@.str.306 = private unnamed_addr constant [22 x i8] c"Audio Layer I Bitrate\00", align 1
@.str.307 = private unnamed_addr constant [23 x i8] c"Audio Layer II Bitrate\00", align 1
@.str.308 = private unnamed_addr constant [24 x i8] c"Audio Layer III Bitrate\00", align 1
@.str.309 = private unnamed_addr constant [18 x i8] c"Audio Stereo Mode\00", align 1
@.str.310 = private unnamed_addr constant [28 x i8] c"Audio Stereo Mode Extension\00", align 1
@.str.311 = private unnamed_addr constant [15 x i8] c"Audio Emphasis\00", align 1
@.str.312 = private unnamed_addr constant [10 x i8] c"Audio CRC\00", align 1
@.str.313 = private unnamed_addr constant [11 x i8] c"Audio Mute\00", align 1
@.str.314 = private unnamed_addr constant [18 x i8] c"Audio AAC Bitrate\00", align 1
@.str.315 = private unnamed_addr constant [19 x i8] c"Audio AC-3 Bitrate\00", align 1
@.str.316 = private unnamed_addr constant [15 x i8] c"Audio Playback\00", align 1
@.str.317 = private unnamed_addr constant [28 x i8] c"Audio Multilingual Playback\00", align 1
@.str.318 = private unnamed_addr constant [15 x i8] c"Video Encoding\00", align 1
@.str.319 = private unnamed_addr constant [13 x i8] c"Video Aspect\00", align 1
@.str.320 = private unnamed_addr constant [15 x i8] c"Video B Frames\00", align 1
@.str.321 = private unnamed_addr constant [15 x i8] c"Video GOP Size\00", align 1
@.str.322 = private unnamed_addr constant [18 x i8] c"Video GOP Closure\00", align 1
@.str.323 = private unnamed_addr constant [15 x i8] c"Video Pulldown\00", align 1
@.str.324 = private unnamed_addr constant [19 x i8] c"Video Bitrate Mode\00", align 1
@.str.325 = private unnamed_addr constant [14 x i8] c"Video Bitrate\00", align 1
@.str.326 = private unnamed_addr constant [19 x i8] c"Video Peak Bitrate\00", align 1
@.str.327 = private unnamed_addr constant [26 x i8] c"Video Temporal Decimation\00", align 1
@.str.328 = private unnamed_addr constant [11 x i8] c"Video Mute\00", align 1
@.str.329 = private unnamed_addr constant [15 x i8] c"Video Mute YUV\00", align 1
@.str.330 = private unnamed_addr constant [24 x i8] c"Decoder Slice Interface\00", align 1
@.str.331 = private unnamed_addr constant [25 x i8] c"MPEG4 Loop Filter Enable\00", align 1
@.str.332 = private unnamed_addr constant [28 x i8] c"Number of Intra Refresh MBs\00", align 1
@.str.333 = private unnamed_addr constant [21 x i8] c"Intra Refresh Period\00", align 1
@.str.334 = private unnamed_addr constant [32 x i8] c"Frame Level Rate Control Enable\00", align 1
@.str.335 = private unnamed_addr constant [27 x i8] c"H264 MB Level Rate Control\00", align 1
@.str.336 = private unnamed_addr constant [21 x i8] c"Sequence Header Mode\00", align 1
@.str.337 = private unnamed_addr constant [29 x i8] c"Max Number of Reference Pics\00", align 1
@.str.338 = private unnamed_addr constant [16 x i8] c"Frame Skip Mode\00", align 1
@.str.339 = private unnamed_addr constant [14 x i8] c"Display Delay\00", align 1
@.str.340 = private unnamed_addr constant [21 x i8] c"Display Delay Enable\00", align 1
@.str.341 = private unnamed_addr constant [32 x i8] c"Generate Access Unit Delimiters\00", align 1
@.str.342 = private unnamed_addr constant [22 x i8] c"H263 I-Frame QP Value\00", align 1
@.str.343 = private unnamed_addr constant [22 x i8] c"H263 P-Frame QP Value\00", align 1
@.str.344 = private unnamed_addr constant [22 x i8] c"H263 B-Frame QP Value\00", align 1
@.str.345 = private unnamed_addr constant [22 x i8] c"H263 Minimum QP Value\00", align 1
@.str.346 = private unnamed_addr constant [22 x i8] c"H263 Maximum QP Value\00", align 1
@.str.347 = private unnamed_addr constant [22 x i8] c"H264 I-Frame QP Value\00", align 1
@.str.348 = private unnamed_addr constant [22 x i8] c"H264 P-Frame QP Value\00", align 1
@.str.349 = private unnamed_addr constant [22 x i8] c"H264 B-Frame QP Value\00", align 1
@.str.350 = private unnamed_addr constant [22 x i8] c"H264 Maximum QP Value\00", align 1
@.str.351 = private unnamed_addr constant [22 x i8] c"H264 Minimum QP Value\00", align 1
@.str.352 = private unnamed_addr constant [26 x i8] c"H264 8x8 Transform Enable\00", align 1
@.str.353 = private unnamed_addr constant [21 x i8] c"H264 CPB Buffer Size\00", align 1
@.str.354 = private unnamed_addr constant [18 x i8] c"H264 Entropy Mode\00", align 1
@.str.355 = private unnamed_addr constant [20 x i8] c"H264 I-Frame Period\00", align 1
@.str.356 = private unnamed_addr constant [11 x i8] c"H264 Level\00", align 1
@.str.357 = private unnamed_addr constant [30 x i8] c"H264 Loop Filter Alpha Offset\00", align 1
@.str.358 = private unnamed_addr constant [29 x i8] c"H264 Loop Filter Beta Offset\00", align 1
@.str.359 = private unnamed_addr constant [22 x i8] c"H264 Loop Filter Mode\00", align 1
@.str.360 = private unnamed_addr constant [13 x i8] c"H264 Profile\00", align 1
@.str.361 = private unnamed_addr constant [21 x i8] c"Vertical Size of SAR\00", align 1
@.str.362 = private unnamed_addr constant [23 x i8] c"Horizontal Size of SAR\00", align 1
@.str.363 = private unnamed_addr constant [24 x i8] c"Aspect Ratio VUI Enable\00", align 1
@.str.364 = private unnamed_addr constant [21 x i8] c"VUI Aspect Ratio IDC\00", align 1
@.str.365 = private unnamed_addr constant [30 x i8] c"H264 Enable Frame Packing SEI\00", align 1
@.str.366 = private unnamed_addr constant [31 x i8] c"H264 Set Curr. Frame as Frame0\00", align 1
@.str.367 = private unnamed_addr constant [25 x i8] c"H264 FP Arrangement Type\00", align 1
@.str.368 = private unnamed_addr constant [26 x i8] c"H264 Flexible MB Ordering\00", align 1
@.str.369 = private unnamed_addr constant [22 x i8] c"H264 Map Type for FMO\00", align 1
@.str.370 = private unnamed_addr constant [32 x i8] c"H264 FMO Number of Slice Groups\00", align 1
@.str.371 = private unnamed_addr constant [29 x i8] c"H264 FMO Direction of Change\00", align 1
@.str.372 = private unnamed_addr constant [31 x i8] c"H264 FMO Size of 1st Slice Grp\00", align 1
@.str.373 = private unnamed_addr constant [32 x i8] c"H264 FMO No. of Consecutive MBs\00", align 1
@.str.374 = private unnamed_addr constant [30 x i8] c"H264 Arbitrary Slice Ordering\00", align 1
@.str.375 = private unnamed_addr constant [21 x i8] c"H264 ASO Slice Order\00", align 1
@.str.376 = private unnamed_addr constant [32 x i8] c"Enable H264 Hierarchical Coding\00", align 1
@.str.377 = private unnamed_addr constant [30 x i8] c"H264 Hierarchical Coding Type\00", align 1
@.str.378 = private unnamed_addr constant [25 x i8] c"H264 Number of HC Layers\00", align 1
@.str.379 = private unnamed_addr constant [32 x i8] c"H264 Set QP Value for HC Layers\00", align 1
@.str.380 = private unnamed_addr constant [28 x i8] c"H264 Constrained Intra Pred\00", align 1
@.str.381 = private unnamed_addr constant [28 x i8] c"H264 Chroma QP Index Offset\00", align 1
@.str.382 = private unnamed_addr constant [30 x i8] c"H264 I-Frame Minimum QP Value\00", align 1
@.str.383 = private unnamed_addr constant [30 x i8] c"H264 I-Frame Maximum QP Value\00", align 1
@.str.384 = private unnamed_addr constant [30 x i8] c"H264 P-Frame Minimum QP Value\00", align 1
@.str.385 = private unnamed_addr constant [30 x i8] c"H264 P-Frame Maximum QP Value\00", align 1
@.str.386 = private unnamed_addr constant [30 x i8] c"H264 B-Frame Minimum QP Value\00", align 1
@.str.387 = private unnamed_addr constant [30 x i8] c"H264 B-Frame Maximum QP Value\00", align 1
@.str.388 = private unnamed_addr constant [32 x i8] c"H264 Hierarchical Lay 0 Bitrate\00", align 1
@.str.389 = private unnamed_addr constant [32 x i8] c"H264 Hierarchical Lay 1 Bitrate\00", align 1
@.str.390 = private unnamed_addr constant [32 x i8] c"H264 Hierarchical Lay 2 Bitrate\00", align 1
@.str.391 = private unnamed_addr constant [32 x i8] c"H264 Hierarchical Lay 3 Bitrate\00", align 1
@.str.392 = private unnamed_addr constant [32 x i8] c"H264 Hierarchical Lay 4 Bitrate\00", align 1
@.str.393 = private unnamed_addr constant [32 x i8] c"H264 Hierarchical Lay 5 Bitrate\00", align 1
@.str.394 = private unnamed_addr constant [32 x i8] c"H264 Hierarchical Lay 6 Bitrate\00", align 1
@.str.395 = private unnamed_addr constant [12 x i8] c"MPEG2 Level\00", align 1
@.str.396 = private unnamed_addr constant [14 x i8] c"MPEG2 Profile\00", align 1
@.str.397 = private unnamed_addr constant [23 x i8] c"MPEG4 I-Frame QP Value\00", align 1
@.str.398 = private unnamed_addr constant [23 x i8] c"MPEG4 P-Frame QP Value\00", align 1
@.str.399 = private unnamed_addr constant [23 x i8] c"MPEG4 B-Frame QP Value\00", align 1
@.str.400 = private unnamed_addr constant [23 x i8] c"MPEG4 Minimum QP Value\00", align 1
@.str.401 = private unnamed_addr constant [23 x i8] c"MPEG4 Maximum QP Value\00", align 1
@.str.402 = private unnamed_addr constant [12 x i8] c"MPEG4 Level\00", align 1
@.str.403 = private unnamed_addr constant [14 x i8] c"MPEG4 Profile\00", align 1
@.str.404 = private unnamed_addr constant [28 x i8] c"Quarter Pixel Search Enable\00", align 1
@.str.405 = private unnamed_addr constant [25 x i8] c"Maximum Bytes in a Slice\00", align 1
@.str.406 = private unnamed_addr constant [25 x i8] c"Number of MBs in a Slice\00", align 1
@.str.407 = private unnamed_addr constant [26 x i8] c"Slice Partitioning Method\00", align 1
@.str.408 = private unnamed_addr constant [16 x i8] c"VBV Buffer Size\00", align 1
@.str.409 = private unnamed_addr constant [18 x i8] c"Video Decoder PTS\00", align 1
@.str.410 = private unnamed_addr constant [26 x i8] c"Video Decoder Frame Count\00", align 1
@.str.411 = private unnamed_addr constant [28 x i8] c"Video Decoder Conceal Color\00", align 1
@.str.412 = private unnamed_addr constant [30 x i8] c"Initial Delay for VBV Control\00", align 1
@.str.413 = private unnamed_addr constant [27 x i8] c"Horizontal MV Search Range\00", align 1
@.str.414 = private unnamed_addr constant [25 x i8] c"Vertical MV Search Range\00", align 1
@.str.415 = private unnamed_addr constant [23 x i8] c"Repeat Sequence Header\00", align 1
@.str.416 = private unnamed_addr constant [16 x i8] c"Force Key Frame\00", align 1
@.str.417 = private unnamed_addr constant [23 x i8] c"Base Layer Priority ID\00", align 1
@.str.418 = private unnamed_addr constant [10 x i8] c"LTR Count\00", align 1
@.str.419 = private unnamed_addr constant [16 x i8] c"Frame LTR Index\00", align 1
@.str.420 = private unnamed_addr constant [15 x i8] c"Use LTR Frames\00", align 1
@.str.421 = private unnamed_addr constant [22 x i8] c"FWHT I-Frame QP Value\00", align 1
@.str.422 = private unnamed_addr constant [22 x i8] c"FWHT P-Frame QP Value\00", align 1
@.str.423 = private unnamed_addr constant [25 x i8] c"VPX Number of Partitions\00", align 1
@.str.424 = private unnamed_addr constant [32 x i8] c"VPX Intra Mode Decision Disable\00", align 1
@.str.425 = private unnamed_addr constant [28 x i8] c"VPX No. of Refs for P Frame\00", align 1
@.str.426 = private unnamed_addr constant [28 x i8] c"VPX Loop Filter Level Range\00", align 1
@.str.427 = private unnamed_addr constant [30 x i8] c"VPX Deblocking Effect Control\00", align 1
@.str.428 = private unnamed_addr constant [32 x i8] c"VPX Golden Frame Refresh Period\00", align 1
@.str.429 = private unnamed_addr constant [27 x i8] c"VPX Golden Frame Indicator\00", align 1
@.str.430 = private unnamed_addr constant [21 x i8] c"VPX Minimum QP Value\00", align 1
@.str.431 = private unnamed_addr constant [21 x i8] c"VPX Maximum QP Value\00", align 1
@.str.432 = private unnamed_addr constant [21 x i8] c"VPX I-Frame QP Value\00", align 1
@.str.433 = private unnamed_addr constant [21 x i8] c"VPX P-Frame QP Value\00", align 1
@.str.434 = private unnamed_addr constant [12 x i8] c"VP8 Profile\00", align 1
@.str.435 = private unnamed_addr constant [12 x i8] c"VP9 Profile\00", align 1
@.str.436 = private unnamed_addr constant [10 x i8] c"VP9 Level\00", align 1
@.str.437 = private unnamed_addr constant [22 x i8] c"HEVC I-Frame QP Value\00", align 1
@.str.438 = private unnamed_addr constant [22 x i8] c"HEVC P-Frame QP Value\00", align 1
@.str.439 = private unnamed_addr constant [22 x i8] c"HEVC B-Frame QP Value\00", align 1
@.str.440 = private unnamed_addr constant [22 x i8] c"HEVC Minimum QP Value\00", align 1
@.str.441 = private unnamed_addr constant [22 x i8] c"HEVC Maximum QP Value\00", align 1
@.str.442 = private unnamed_addr constant [30 x i8] c"HEVC I-Frame Minimum QP Value\00", align 1
@.str.443 = private unnamed_addr constant [30 x i8] c"HEVC I-Frame Maximum QP Value\00", align 1
@.str.444 = private unnamed_addr constant [30 x i8] c"HEVC P-Frame Minimum QP Value\00", align 1
@.str.445 = private unnamed_addr constant [30 x i8] c"HEVC P-Frame Maximum QP Value\00", align 1
@.str.446 = private unnamed_addr constant [30 x i8] c"HEVC B-Frame Minimum QP Value\00", align 1
@.str.447 = private unnamed_addr constant [30 x i8] c"HEVC B-Frame Maximum QP Value\00", align 1
@.str.448 = private unnamed_addr constant [13 x i8] c"HEVC Profile\00", align 1
@.str.449 = private unnamed_addr constant [11 x i8] c"HEVC Level\00", align 1
@.str.450 = private unnamed_addr constant [10 x i8] c"HEVC Tier\00", align 1
@.str.451 = private unnamed_addr constant [27 x i8] c"HEVC Frame Rate Resolution\00", align 1
@.str.452 = private unnamed_addr constant [31 x i8] c"HEVC Maximum Coding Unit Depth\00", align 1
@.str.453 = private unnamed_addr constant [18 x i8] c"HEVC Refresh Type\00", align 1
@.str.454 = private unnamed_addr constant [31 x i8] c"HEVC Constant Intra Prediction\00", align 1
@.str.455 = private unnamed_addr constant [23 x i8] c"HEVC Lossless Encoding\00", align 1
@.str.456 = private unnamed_addr constant [15 x i8] c"HEVC Wavefront\00", align 1
@.str.457 = private unnamed_addr constant [17 x i8] c"HEVC Loop Filter\00", align 1
@.str.458 = private unnamed_addr constant [15 x i8] c"HEVC QP Values\00", align 1
@.str.459 = private unnamed_addr constant [30 x i8] c"HEVC Hierarchical Coding Type\00", align 1
@.str.460 = private unnamed_addr constant [31 x i8] c"HEVC Hierarchical Coding Layer\00", align 1
@.str.461 = private unnamed_addr constant [29 x i8] c"HEVC Hierarchical Layer 0 QP\00", align 1
@.str.462 = private unnamed_addr constant [29 x i8] c"HEVC Hierarchical Layer 1 QP\00", align 1
@.str.463 = private unnamed_addr constant [29 x i8] c"HEVC Hierarchical Layer 2 QP\00", align 1
@.str.464 = private unnamed_addr constant [29 x i8] c"HEVC Hierarchical Layer 3 QP\00", align 1
@.str.465 = private unnamed_addr constant [29 x i8] c"HEVC Hierarchical Layer 4 QP\00", align 1
@.str.466 = private unnamed_addr constant [29 x i8] c"HEVC Hierarchical Layer 5 QP\00", align 1
@.str.467 = private unnamed_addr constant [29 x i8] c"HEVC Hierarchical Layer 6 QP\00", align 1
@.str.468 = private unnamed_addr constant [32 x i8] c"HEVC Hierarchical Lay 0 BitRate\00", align 1
@.str.469 = private unnamed_addr constant [32 x i8] c"HEVC Hierarchical Lay 1 BitRate\00", align 1
@.str.470 = private unnamed_addr constant [32 x i8] c"HEVC Hierarchical Lay 2 BitRate\00", align 1
@.str.471 = private unnamed_addr constant [32 x i8] c"HEVC Hierarchical Lay 3 BitRate\00", align 1
@.str.472 = private unnamed_addr constant [32 x i8] c"HEVC Hierarchical Lay 4 BitRate\00", align 1
@.str.473 = private unnamed_addr constant [32 x i8] c"HEVC Hierarchical Lay 5 BitRate\00", align 1
@.str.474 = private unnamed_addr constant [32 x i8] c"HEVC Hierarchical Lay 6 BitRate\00", align 1
@.str.475 = private unnamed_addr constant [16 x i8] c"HEVC General PB\00", align 1
@.str.476 = private unnamed_addr constant [17 x i8] c"HEVC Temporal ID\00", align 1
@.str.477 = private unnamed_addr constant [28 x i8] c"HEVC Strong Intra Smoothing\00", align 1
@.str.478 = private unnamed_addr constant [20 x i8] c"HEVC Intra PU Split\00", align 1
@.str.479 = private unnamed_addr constant [20 x i8] c"HEVC TMV Prediction\00", align 1
@.str.480 = private unnamed_addr constant [30 x i8] c"HEVC Max Num of Candidate MVs\00", align 1
@.str.481 = private unnamed_addr constant [27 x i8] c"HEVC ENC Without Startcode\00", align 1
@.str.482 = private unnamed_addr constant [30 x i8] c"HEVC Num of I-Frame b/w 2 IDR\00", align 1
@.str.483 = private unnamed_addr constant [29 x i8] c"HEVC Loop Filter Beta Offset\00", align 1
@.str.484 = private unnamed_addr constant [27 x i8] c"HEVC Loop Filter TC Offset\00", align 1
@.str.485 = private unnamed_addr constant [26 x i8] c"HEVC Size of Length Field\00", align 1
@.str.486 = private unnamed_addr constant [31 x i8] c"Reference Frames for a P-Frame\00", align 1
@.str.487 = private unnamed_addr constant [27 x i8] c"Prepend SPS and PPS to IDR\00", align 1
@.str.488 = private unnamed_addr constant [28 x i8] c"HEVC Sequence Parameter Set\00", align 1
@.str.489 = private unnamed_addr constant [27 x i8] c"HEVC Picture Parameter Set\00", align 1
@.str.490 = private unnamed_addr constant [22 x i8] c"HEVC Slice Parameters\00", align 1
@.str.491 = private unnamed_addr constant [20 x i8] c"HEVC Scaling Matrix\00", align 1
@.str.492 = private unnamed_addr constant [23 x i8] c"HEVC Decode Parameters\00", align 1
@.str.493 = private unnamed_addr constant [17 x i8] c"HEVC Decode Mode\00", align 1
@.str.494 = private unnamed_addr constant [16 x i8] c"HEVC Start Code\00", align 1
@.str.495 = private unnamed_addr constant [16 x i8] c"Camera Controls\00", align 1
@.str.496 = private unnamed_addr constant [14 x i8] c"Auto Exposure\00", align 1
@.str.497 = private unnamed_addr constant [24 x i8] c"Exposure Time, Absolute\00", align 1
@.str.498 = private unnamed_addr constant [28 x i8] c"Exposure, Dynamic Framerate\00", align 1
@.str.499 = private unnamed_addr constant [14 x i8] c"Pan, Relative\00", align 1
@.str.500 = private unnamed_addr constant [15 x i8] c"Tilt, Relative\00", align 1
@.str.501 = private unnamed_addr constant [11 x i8] c"Pan, Reset\00", align 1
@.str.502 = private unnamed_addr constant [12 x i8] c"Tilt, Reset\00", align 1
@.str.503 = private unnamed_addr constant [14 x i8] c"Pan, Absolute\00", align 1
@.str.504 = private unnamed_addr constant [15 x i8] c"Tilt, Absolute\00", align 1
@.str.505 = private unnamed_addr constant [16 x i8] c"Focus, Absolute\00", align 1
@.str.506 = private unnamed_addr constant [16 x i8] c"Focus, Relative\00", align 1
@.str.507 = private unnamed_addr constant [28 x i8] c"Focus, Automatic Continuous\00", align 1
@.str.508 = private unnamed_addr constant [15 x i8] c"Zoom, Absolute\00", align 1
@.str.509 = private unnamed_addr constant [15 x i8] c"Zoom, Relative\00", align 1
@.str.510 = private unnamed_addr constant [17 x i8] c"Zoom, Continuous\00", align 1
@.str.511 = private unnamed_addr constant [8 x i8] c"Privacy\00", align 1
@.str.512 = private unnamed_addr constant [15 x i8] c"Iris, Absolute\00", align 1
@.str.513 = private unnamed_addr constant [15 x i8] c"Iris, Relative\00", align 1
@.str.514 = private unnamed_addr constant [20 x i8] c"Auto Exposure, Bias\00", align 1
@.str.515 = private unnamed_addr constant [29 x i8] c"White Balance, Auto & Preset\00", align 1
@.str.516 = private unnamed_addr constant [19 x i8] c"Wide Dynamic Range\00", align 1
@.str.517 = private unnamed_addr constant [20 x i8] c"Image Stabilization\00", align 1
@.str.518 = private unnamed_addr constant [16 x i8] c"ISO Sensitivity\00", align 1
@.str.519 = private unnamed_addr constant [22 x i8] c"ISO Sensitivity, Auto\00", align 1
@.str.520 = private unnamed_addr constant [24 x i8] c"Exposure, Metering Mode\00", align 1
@.str.521 = private unnamed_addr constant [11 x i8] c"Scene Mode\00", align 1
@.str.522 = private unnamed_addr constant [8 x i8] c"3A Lock\00", align 1
@.str.523 = private unnamed_addr constant [18 x i8] c"Auto Focus, Start\00", align 1
@.str.524 = private unnamed_addr constant [17 x i8] c"Auto Focus, Stop\00", align 1
@.str.525 = private unnamed_addr constant [19 x i8] c"Auto Focus, Status\00", align 1
@.str.526 = private unnamed_addr constant [18 x i8] c"Auto Focus, Range\00", align 1
@.str.527 = private unnamed_addr constant [11 x i8] c"Pan, Speed\00", align 1
@.str.528 = private unnamed_addr constant [12 x i8] c"Tilt, Speed\00", align 1
@.str.529 = private unnamed_addr constant [15 x i8] c"Unit Cell Size\00", align 1
@.str.530 = private unnamed_addr constant [19 x i8] c"Camera Orientation\00", align 1
@.str.531 = private unnamed_addr constant [23 x i8] c"Camera Sensor Rotation\00", align 1
@.str.532 = private unnamed_addr constant [28 x i8] c"FM Radio Modulator Controls\00", align 1
@.str.533 = private unnamed_addr constant [21 x i8] c"RDS Signal Deviation\00", align 1
@.str.534 = private unnamed_addr constant [15 x i8] c"RDS Program ID\00", align 1
@.str.535 = private unnamed_addr constant [17 x i8] c"RDS Program Type\00", align 1
@.str.536 = private unnamed_addr constant [12 x i8] c"RDS PS Name\00", align 1
@.str.537 = private unnamed_addr constant [15 x i8] c"RDS Radio Text\00", align 1
@.str.538 = private unnamed_addr constant [11 x i8] c"RDS Stereo\00", align 1
@.str.539 = private unnamed_addr constant [20 x i8] c"RDS Artificial Head\00", align 1
@.str.540 = private unnamed_addr constant [15 x i8] c"RDS Compressed\00", align 1
@.str.541 = private unnamed_addr constant [16 x i8] c"RDS Dynamic PTY\00", align 1
@.str.542 = private unnamed_addr constant [25 x i8] c"RDS Traffic Announcement\00", align 1
@.str.543 = private unnamed_addr constant [20 x i8] c"RDS Traffic Program\00", align 1
@.str.544 = private unnamed_addr constant [10 x i8] c"RDS Music\00", align 1
@.str.545 = private unnamed_addr constant [27 x i8] c"RDS Enable Alt Frequencies\00", align 1
@.str.546 = private unnamed_addr constant [26 x i8] c"RDS Alternate Frequencies\00", align 1
@.str.547 = private unnamed_addr constant [30 x i8] c"Audio Limiter Feature Enabled\00", align 1
@.str.548 = private unnamed_addr constant [27 x i8] c"Audio Limiter Release Time\00", align 1
@.str.549 = private unnamed_addr constant [24 x i8] c"Audio Limiter Deviation\00", align 1
@.str.550 = private unnamed_addr constant [26 x i8] c"Audio Compression Enabled\00", align 1
@.str.551 = private unnamed_addr constant [23 x i8] c"Audio Compression Gain\00", align 1
@.str.552 = private unnamed_addr constant [28 x i8] c"Audio Compression Threshold\00", align 1
@.str.553 = private unnamed_addr constant [30 x i8] c"Audio Compression Attack Time\00", align 1
@.str.554 = private unnamed_addr constant [31 x i8] c"Audio Compression Release Time\00", align 1
@.str.555 = private unnamed_addr constant [27 x i8] c"Pilot Tone Feature Enabled\00", align 1
@.str.556 = private unnamed_addr constant [21 x i8] c"Pilot Tone Deviation\00", align 1
@.str.557 = private unnamed_addr constant [21 x i8] c"Pilot Tone Frequency\00", align 1
@.str.558 = private unnamed_addr constant [13 x i8] c"Pre-Emphasis\00", align 1
@.str.559 = private unnamed_addr constant [17 x i8] c"Tune Power Level\00", align 1
@.str.560 = private unnamed_addr constant [23 x i8] c"Tune Antenna Capacitor\00", align 1
@.str.561 = private unnamed_addr constant [15 x i8] c"Flash Controls\00", align 1
@.str.562 = private unnamed_addr constant [9 x i8] c"LED Mode\00", align 1
@.str.563 = private unnamed_addr constant [14 x i8] c"Strobe Source\00", align 1
@.str.564 = private unnamed_addr constant [7 x i8] c"Strobe\00", align 1
@.str.565 = private unnamed_addr constant [12 x i8] c"Stop Strobe\00", align 1
@.str.566 = private unnamed_addr constant [14 x i8] c"Strobe Status\00", align 1
@.str.567 = private unnamed_addr constant [15 x i8] c"Strobe Timeout\00", align 1
@.str.568 = private unnamed_addr constant [22 x i8] c"Intensity, Flash Mode\00", align 1
@.str.569 = private unnamed_addr constant [22 x i8] c"Intensity, Torch Mode\00", align 1
@.str.570 = private unnamed_addr constant [21 x i8] c"Intensity, Indicator\00", align 1
@.str.571 = private unnamed_addr constant [7 x i8] c"Faults\00", align 1
@.str.572 = private unnamed_addr constant [7 x i8] c"Charge\00", align 1
@.str.573 = private unnamed_addr constant [16 x i8] c"Ready to Strobe\00", align 1
@.str.574 = private unnamed_addr constant [26 x i8] c"JPEG Compression Controls\00", align 1
@.str.575 = private unnamed_addr constant [19 x i8] c"Chroma Subsampling\00", align 1
@.str.576 = private unnamed_addr constant [17 x i8] c"Restart Interval\00", align 1
@.str.577 = private unnamed_addr constant [20 x i8] c"Compression Quality\00", align 1
@.str.578 = private unnamed_addr constant [15 x i8] c"Active Markers\00", align 1
@.str.579 = private unnamed_addr constant [22 x i8] c"Image Source Controls\00", align 1
@.str.580 = private unnamed_addr constant [18 x i8] c"Vertical Blanking\00", align 1
@.str.581 = private unnamed_addr constant [20 x i8] c"Horizontal Blanking\00", align 1
@.str.582 = private unnamed_addr constant [14 x i8] c"Analogue Gain\00", align 1
@.str.583 = private unnamed_addr constant [16 x i8] c"Red Pixel Value\00", align 1
@.str.584 = private unnamed_addr constant [24 x i8] c"Green (Red) Pixel Value\00", align 1
@.str.585 = private unnamed_addr constant [17 x i8] c"Blue Pixel Value\00", align 1
@.str.586 = private unnamed_addr constant [25 x i8] c"Green (Blue) Pixel Value\00", align 1
@.str.587 = private unnamed_addr constant [13 x i8] c"Notify Gains\00", align 1
@.str.588 = private unnamed_addr constant [26 x i8] c"Image Processing Controls\00", align 1
@.str.589 = private unnamed_addr constant [15 x i8] c"Link Frequency\00", align 1
@.str.590 = private unnamed_addr constant [11 x i8] c"Pixel Rate\00", align 1
@.str.591 = private unnamed_addr constant [13 x i8] c"Test Pattern\00", align 1
@.str.592 = private unnamed_addr constant [19 x i8] c"Deinterlacing Mode\00", align 1
@.str.593 = private unnamed_addr constant [13 x i8] c"Digital Gain\00", align 1
@.str.594 = private unnamed_addr constant [23 x i8] c"Digital Video Controls\00", align 1
@.str.595 = private unnamed_addr constant [16 x i8] c"Hotplug Present\00", align 1
@.str.596 = private unnamed_addr constant [16 x i8] c"RxSense Present\00", align 1
@.str.597 = private unnamed_addr constant [13 x i8] c"EDID Present\00", align 1
@.str.598 = private unnamed_addr constant [14 x i8] c"Transmit Mode\00", align 1
@.str.599 = private unnamed_addr constant [26 x i8] c"Tx RGB Quantization Range\00", align 1
@.str.600 = private unnamed_addr constant [19 x i8] c"Tx IT Content Type\00", align 1
@.str.601 = private unnamed_addr constant [14 x i8] c"Power Present\00", align 1
@.str.602 = private unnamed_addr constant [26 x i8] c"Rx RGB Quantization Range\00", align 1
@.str.603 = private unnamed_addr constant [19 x i8] c"Rx IT Content Type\00", align 1
@.str.604 = private unnamed_addr constant [27 x i8] c"FM Radio Receiver Controls\00", align 1
@.str.605 = private unnamed_addr constant [12 x i8] c"De-Emphasis\00", align 1
@.str.606 = private unnamed_addr constant [14 x i8] c"RDS Reception\00", align 1
@.str.607 = private unnamed_addr constant [18 x i8] c"RF Tuner Controls\00", align 1
@.str.608 = private unnamed_addr constant [8 x i8] c"RF Gain\00", align 1
@.str.609 = private unnamed_addr constant [15 x i8] c"LNA Gain, Auto\00", align 1
@.str.610 = private unnamed_addr constant [9 x i8] c"LNA Gain\00", align 1
@.str.611 = private unnamed_addr constant [17 x i8] c"Mixer Gain, Auto\00", align 1
@.str.612 = private unnamed_addr constant [11 x i8] c"Mixer Gain\00", align 1
@.str.613 = private unnamed_addr constant [14 x i8] c"IF Gain, Auto\00", align 1
@.str.614 = private unnamed_addr constant [8 x i8] c"IF Gain\00", align 1
@.str.615 = private unnamed_addr constant [16 x i8] c"Bandwidth, Auto\00", align 1
@.str.616 = private unnamed_addr constant [10 x i8] c"Bandwidth\00", align 1
@.str.617 = private unnamed_addr constant [9 x i8] c"PLL Lock\00", align 1
@.str.618 = private unnamed_addr constant [19 x i8] c"Detection Controls\00", align 1
@.str.619 = private unnamed_addr constant [22 x i8] c"Motion Detection Mode\00", align 1
@.str.620 = private unnamed_addr constant [20 x i8] c"MD Global Threshold\00", align 1
@.str.621 = private unnamed_addr constant [18 x i8] c"MD Threshold Grid\00", align 1
@.str.622 = private unnamed_addr constant [15 x i8] c"MD Region Grid\00", align 1
@.str.623 = private unnamed_addr constant [25 x i8] c"Stateless Codec Controls\00", align 1
@.str.624 = private unnamed_addr constant [17 x i8] c"H264 Decode Mode\00", align 1
@.str.625 = private unnamed_addr constant [16 x i8] c"H264 Start Code\00", align 1
@.str.626 = private unnamed_addr constant [28 x i8] c"H264 Sequence Parameter Set\00", align 1
@.str.627 = private unnamed_addr constant [27 x i8] c"H264 Picture Parameter Set\00", align 1
@.str.628 = private unnamed_addr constant [20 x i8] c"H264 Scaling Matrix\00", align 1
@.str.629 = private unnamed_addr constant [29 x i8] c"H264 Prediction Weight Table\00", align 1
@.str.630 = private unnamed_addr constant [22 x i8] c"H264 Slice Parameters\00", align 1
@.str.631 = private unnamed_addr constant [23 x i8] c"H264 Decode Parameters\00", align 1
@.str.632 = private unnamed_addr constant [26 x i8] c"FWHT Stateless Parameters\00", align 1
@.str.633 = private unnamed_addr constant [21 x i8] c"VP8 Frame Parameters\00", align 1
@.str.634 = private unnamed_addr constant [23 x i8] c"MPEG-2 Sequence Header\00", align 1
@.str.635 = private unnamed_addr constant [22 x i8] c"MPEG-2 Picture Header\00", align 1
@.str.636 = private unnamed_addr constant [29 x i8] c"MPEG-2 Quantisation Matrices\00", align 1
@.str.637 = private unnamed_addr constant [26 x i8] c"VP9 Probabilities Updates\00", align 1
@.str.638 = private unnamed_addr constant [28 x i8] c"VP9 Frame Decode Parameters\00", align 1
@.str.639 = private unnamed_addr constant [21 x i8] c"Colorimetry Controls\00", align 1
@.str.640 = private unnamed_addr constant [25 x i8] c"HDR10 Content Light Info\00", align 1
@.str.641 = private unnamed_addr constant [24 x i8] c"HDR10 Mastering Display\00", align 1
@__kstrtab_v4l2_ctrl_get_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_get_name = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_get_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_get_name to i32), ptr @__kstrtab_v4l2_ctrl_get_name, ptr @__kstrtabns_v4l2_ctrl_get_name }, section "___ksymtab+v4l2_ctrl_get_name", align 4
@__kstrtab_v4l2_ctrl_fill = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_fill = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_fill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_fill to i32), ptr @__kstrtab_v4l2_ctrl_fill, ptr @__kstrtabns_v4l2_ctrl_fill }, section "___ksymtab+v4l2_ctrl_fill", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_v4l2_ctrl_fill, ptr @__ksymtab_v4l2_ctrl_get_int_menu, ptr @__ksymtab_v4l2_ctrl_get_menu, ptr @__ksymtab_v4l2_ctrl_get_name], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @v4l2_ctrl_get_menu(i32 noundef %0) #0 {
  switch i32 %0, label %65 [
    i32 10029412, label %66
    i32 10029413, label %2
    i32 10029414, label %3
    i32 10029415, label %4
    i32 10029416, label %5
    i32 10029423, label %6
    i32 10029417, label %7
    i32 10029418, label %8
    i32 10029419, label %9
    i32 10029420, label %10
    i32 10029424, label %11
    i32 10029425, label %11
    i32 10029512, label %12
    i32 10029513, label %13
    i32 10029518, label %14
    i32 10029312, label %15
    i32 10029319, label %16
    i32 9963800, label %17
    i32 10094849, label %18
    i32 10094873, label %19
    i32 10094879, label %20
    i32 9963807, label %21
    i32 10094868, label %22
    i32 10094872, label %23
    i32 10094874, label %24
    i32 10160496, label %25
    i32 10553601, label %26
    i32 10225921, label %27
    i32 10225922, label %28
    i32 10029528, label %29
    i32 10029958, label %30
    i32 10029533, label %31
    i32 10029669, label %32
    i32 10029671, label %33
    i32 10029674, label %34
    i32 10029675, label %35
    i32 10029679, label %36
    i32 10029682, label %37
    i32 10029684, label %38
    i32 10750208, label %39
    i32 10750209, label %40
    i32 10029692, label %41
    i32 10029582, label %42
    i32 10029583, label %43
    i32 10029717, label %44
    i32 10029718, label %45
    i32 10029818, label %46
    i32 10029823, label %47
    i32 10029824, label %48
    i32 10029825, label %49
    i32 10291457, label %50
    i32 10488068, label %51
    i32 10488069, label %52
    i32 10488165, label %52
    i32 10488070, label %53
    i32 10488166, label %53
    i32 10684673, label %54
    i32 10029927, label %55
    i32 10029928, label %56
    i32 10029918, label %57
    i32 10029935, label %58
    i32 10029947, label %59
    i32 10029930, label %60
    i32 10029932, label %61
    i32 10030327, label %62
    i32 10030328, label %63
    i32 10094882, label %64
  ]

2:                                                ; preds = %1
  br label %66

3:                                                ; preds = %1
  br label %66

4:                                                ; preds = %1
  br label %66

5:                                                ; preds = %1
  br label %66

6:                                                ; preds = %1
  br label %66

7:                                                ; preds = %1
  br label %66

8:                                                ; preds = %1
  br label %66

9:                                                ; preds = %1
  br label %66

10:                                               ; preds = %1
  br label %66

11:                                               ; preds = %1, %1
  br label %66

12:                                               ; preds = %1
  br label %66

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  br label %66

15:                                               ; preds = %1
  br label %66

16:                                               ; preds = %1
  br label %66

17:                                               ; preds = %1
  br label %66

18:                                               ; preds = %1
  br label %66

19:                                               ; preds = %1
  br label %66

20:                                               ; preds = %1
  br label %66

21:                                               ; preds = %1
  br label %66

22:                                               ; preds = %1
  br label %66

23:                                               ; preds = %1
  br label %66

24:                                               ; preds = %1
  br label %66

25:                                               ; preds = %1
  br label %66

26:                                               ; preds = %1
  br label %66

27:                                               ; preds = %1
  br label %66

28:                                               ; preds = %1
  br label %66

29:                                               ; preds = %1
  br label %66

30:                                               ; preds = %1
  br label %66

31:                                               ; preds = %1
  br label %66

32:                                               ; preds = %1
  br label %66

33:                                               ; preds = %1
  br label %66

34:                                               ; preds = %1
  br label %66

35:                                               ; preds = %1
  br label %66

36:                                               ; preds = %1
  br label %66

37:                                               ; preds = %1
  br label %66

38:                                               ; preds = %1
  br label %66

39:                                               ; preds = %1
  br label %66

40:                                               ; preds = %1
  br label %66

41:                                               ; preds = %1
  br label %66

42:                                               ; preds = %1
  br label %66

43:                                               ; preds = %1
  br label %66

44:                                               ; preds = %1
  br label %66

45:                                               ; preds = %1
  br label %66

46:                                               ; preds = %1
  br label %66

47:                                               ; preds = %1
  br label %66

48:                                               ; preds = %1
  br label %66

49:                                               ; preds = %1
  br label %66

50:                                               ; preds = %1
  br label %66

51:                                               ; preds = %1
  br label %66

52:                                               ; preds = %1, %1
  br label %66

53:                                               ; preds = %1, %1
  br label %66

54:                                               ; preds = %1
  br label %66

55:                                               ; preds = %1
  br label %66

56:                                               ; preds = %1
  br label %66

57:                                               ; preds = %1
  br label %66

58:                                               ; preds = %1
  br label %66

59:                                               ; preds = %1
  br label %66

60:                                               ; preds = %1
  br label %66

61:                                               ; preds = %1
  br label %66

62:                                               ; preds = %1
  br label %66

63:                                               ; preds = %1
  br label %66

64:                                               ; preds = %1
  br label %66

65:                                               ; preds = %1
  br label %66

66:                                               ; preds = %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %67 = phi ptr [ null, %65 ], [ @v4l2_ctrl_get_menu.camera_orientation, %64 ], [ @v4l2_ctrl_get_menu.hevc_start_code, %63 ], [ @v4l2_ctrl_get_menu.hevc_decode_mode, %62 ], [ @v4l2_ctrl_get_menu.hevc_loop_filter_mode, %61 ], [ @v4l2_ctrl_get_menu.hevc_tier, %60 ], [ @v4l2_ctrl_get_menu.hevc_size_of_length_field, %59 ], [ @v4l2_ctrl_get_menu.hevc_refresh_type, %58 ], [ @v4l2_ctrl_get_menu.hevc_hierarchial_coding_type, %57 ], [ @v4l2_ctrl_get_menu.hevc_level, %56 ], [ @v4l2_ctrl_get_menu.hevc_profile, %55 ], [ @v4l2_ctrl_get_menu.detect_md_mode, %54 ], [ @v4l2_ctrl_get_menu.dv_it_content_type, %53 ], [ @v4l2_ctrl_get_menu.dv_rgb_range, %52 ], [ @v4l2_ctrl_get_menu.dv_tx_mode, %51 ], [ @v4l2_ctrl_get_menu.jpeg_chroma_subsampling, %50 ], [ @v4l2_ctrl_get_menu.vp9_level, %49 ], [ @v4l2_ctrl_get_menu.vp9_profile, %48 ], [ @v4l2_ctrl_get_menu.vp8_profile, %47 ], [ @v4l2_ctrl_get_menu.vpx_golden_frame_sel, %46 ], [ @v4l2_ctrl_get_menu.mpeg4_profile, %45 ], [ @v4l2_ctrl_get_menu.mpeg_mpeg4_level, %44 ], [ @v4l2_ctrl_get_menu.mpeg2_profile, %43 ], [ @v4l2_ctrl_get_menu.mpeg_mpeg2_level, %42 ], [ @v4l2_ctrl_get_menu.h264_hierarchical_coding_type, %41 ], [ @v4l2_ctrl_get_menu.h264_start_code, %40 ], [ @v4l2_ctrl_get_menu.h264_decode_mode, %39 ], [ @v4l2_ctrl_get_menu.h264_fmo_map_type, %38 ], [ @v4l2_ctrl_get_menu.h264_fp_arrangement_type, %37 ], [ @v4l2_ctrl_get_menu.vui_sar_idc, %36 ], [ @v4l2_ctrl_get_menu.h264_profile, %35 ], [ @v4l2_ctrl_get_menu.h264_loop_filter, %34 ], [ @v4l2_ctrl_get_menu.mpeg_h264_level, %33 ], [ @v4l2_ctrl_get_menu.entropy_mode, %32 ], [ @v4l2_ctrl_get_menu.multi_slice, %31 ], [ @v4l2_ctrl_get_menu.mpeg_video_frame_skip, %30 ], [ @v4l2_ctrl_get_menu.header_mode, %29 ], [ @v4l2_ctrl_get_menu.flash_strobe_source, %28 ], [ @v4l2_ctrl_get_menu.flash_led_mode, %27 ], [ @v4l2_ctrl_get_menu.tune_emphasis, %26 ], [ @v4l2_ctrl_get_menu.tune_emphasis, %25 ], [ @v4l2_ctrl_get_menu.scene_mode, %24 ], [ @v4l2_ctrl_get_menu.camera_iso_sensitivity_auto, %23 ], [ @v4l2_ctrl_get_menu.auto_n_preset_white_balance, %22 ], [ @v4l2_ctrl_get_menu.colorfx, %21 ], [ @v4l2_ctrl_get_menu.camera_auto_focus_range, %20 ], [ @v4l2_ctrl_get_menu.camera_exposure_metering, %19 ], [ @v4l2_ctrl_get_menu.camera_exposure_auto, %18 ], [ @v4l2_ctrl_get_menu.camera_power_line_frequency, %17 ], [ @v4l2_ctrl_get_menu.mpeg_stream_vbi_fmt, %16 ], [ @v4l2_ctrl_get_menu.mpeg_stream_type, %15 ], [ @v4l2_ctrl_get_menu.mpeg_video_bitrate_mode, %14 ], [ @v4l2_ctrl_get_menu.mpeg_video_aspect, %13 ], [ @v4l2_ctrl_get_menu.mpeg_video_encoding, %12 ], [ @v4l2_ctrl_get_menu.mpeg_audio_dec_playback, %11 ], [ @v4l2_ctrl_get_menu.mpeg_audio_crc, %10 ], [ @v4l2_ctrl_get_menu.mpeg_audio_emphasis, %9 ], [ @v4l2_ctrl_get_menu.mpeg_audio_mode_extension, %8 ], [ @v4l2_ctrl_get_menu.mpeg_audio_mode, %7 ], [ @v4l2_ctrl_get_menu.mpeg_audio_ac3_bitrate, %6 ], [ @v4l2_ctrl_get_menu.mpeg_audio_l3_bitrate, %5 ], [ @v4l2_ctrl_get_menu.mpeg_audio_l2_bitrate, %4 ], [ @v4l2_ctrl_get_menu.mpeg_audio_l1_bitrate, %3 ], [ @v4l2_ctrl_get_menu.mpeg_audio_encoding, %2 ], [ @v4l2_ctrl_get_menu.mpeg_audio_sampling_freq, %1 ]
  ret ptr %67
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local ptr @v4l2_ctrl_get_int_menu(i32 noundef %0, ptr nocapture noundef writeonly %1) #1 {
  switch i32 %0, label %4 [
    i32 10029812, label %5
    i32 10029814, label %3
  ]

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3, %2
  %6 = phi i32 [ 0, %4 ], [ 3, %3 ], [ 4, %2 ]
  %7 = phi ptr [ null, %4 ], [ @v4l2_ctrl_get_int_menu.qmenu_int_vpx_num_ref_frames, %3 ], [ @v4l2_ctrl_get_int_menu.qmenu_int_vpx_num_partitions, %2 ]
  store i32 %6, ptr %1, align 4
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @v4l2_ctrl_get_name(i32 noundef %0) #0 {
  switch i32 %0, label %397 [
    i32 9961473, label %398
    i32 9963776, label %2
    i32 9963777, label %3
    i32 9963778, label %4
    i32 9963779, label %5
    i32 9963781, label %6
    i32 9963782, label %7
    i32 9963783, label %8
    i32 9963784, label %9
    i32 9963785, label %10
    i32 9963786, label %11
    i32 9963787, label %12
    i32 9963788, label %13
    i32 9963789, label %14
    i32 9963790, label %15
    i32 9963791, label %16
    i32 9963792, label %17
    i32 9963793, label %18
    i32 9963794, label %19
    i32 9963795, label %20
    i32 9963796, label %21
    i32 9963797, label %22
    i32 9963800, label %23
    i32 9963801, label %24
    i32 9963802, label %25
    i32 9963803, label %26
    i32 9963804, label %27
    i32 9963805, label %28
    i32 9963806, label %29
    i32 9963807, label %30
    i32 9963808, label %31
    i32 9963809, label %32
    i32 9963810, label %33
    i32 9963811, label %34
    i32 9963812, label %35
    i32 9963813, label %36
    i32 9963814, label %37
    i32 9963815, label %38
    i32 9963816, label %39
    i32 9963817, label %40
    i32 9963818, label %41
    i32 9963819, label %42
    i32 10027009, label %43
    i32 10029312, label %44
    i32 10029313, label %45
    i32 10029314, label %46
    i32 10029315, label %47
    i32 10029316, label %48
    i32 10029317, label %49
    i32 10029318, label %50
    i32 10029319, label %51
    i32 10029412, label %52
    i32 10029413, label %53
    i32 10029414, label %54
    i32 10029415, label %55
    i32 10029416, label %56
    i32 10029417, label %57
    i32 10029418, label %58
    i32 10029419, label %59
    i32 10029420, label %60
    i32 10029421, label %61
    i32 10029422, label %62
    i32 10029423, label %63
    i32 10029424, label %64
    i32 10029425, label %65
    i32 10029512, label %66
    i32 10029513, label %67
    i32 10029514, label %68
    i32 10029515, label %69
    i32 10029516, label %70
    i32 10029517, label %71
    i32 10029518, label %72
    i32 10029957, label %73
    i32 10029519, label %74
    i32 10029520, label %75
    i32 10029521, label %76
    i32 10029522, label %77
    i32 10029523, label %78
    i32 10029524, label %79
    i32 10029525, label %80
    i32 10029526, label %81
    i32 10029548, label %82
    i32 10029527, label %83
    i32 10029530, label %84
    i32 10029528, label %85
    i32 10029529, label %86
    i32 10029958, label %87
    i32 10029965, label %88
    i32 10029966, label %89
    i32 10029543, label %90
    i32 10029612, label %91
    i32 10029613, label %92
    i32 10029614, label %93
    i32 10029615, label %94
    i32 10029616, label %95
    i32 10029662, label %96
    i32 10029663, label %97
    i32 10029664, label %98
    i32 10029666, label %99
    i32 10029665, label %100
    i32 10029667, label %101
    i32 10029668, label %102
    i32 10029669, label %103
    i32 10029670, label %104
    i32 10029671, label %105
    i32 10029672, label %106
    i32 10029673, label %107
    i32 10029674, label %108
    i32 10029675, label %109
    i32 10029676, label %110
    i32 10029677, label %111
    i32 10029678, label %112
    i32 10029679, label %113
    i32 10029680, label %114
    i32 10029681, label %115
    i32 10029682, label %116
    i32 10029683, label %117
    i32 10029684, label %118
    i32 10029685, label %119
    i32 10029686, label %120
    i32 10029687, label %121
    i32 10029688, label %122
    i32 10029689, label %123
    i32 10029690, label %124
    i32 10029691, label %125
    i32 10029692, label %126
    i32 10029693, label %127
    i32 10029694, label %128
    i32 10029695, label %129
    i32 10029696, label %130
    i32 10029697, label %131
    i32 10029698, label %132
    i32 10029699, label %133
    i32 10029700, label %134
    i32 10029701, label %135
    i32 10029702, label %136
    i32 10029703, label %137
    i32 10029704, label %138
    i32 10029705, label %139
    i32 10029706, label %140
    i32 10029707, label %141
    i32 10029708, label %142
    i32 10029709, label %143
    i32 10029582, label %144
    i32 10029583, label %145
    i32 10029712, label %146
    i32 10029713, label %147
    i32 10029714, label %148
    i32 10029715, label %149
    i32 10029716, label %150
    i32 10029717, label %151
    i32 10029718, label %152
    i32 10029719, label %153
    i32 10029531, label %154
    i32 10029532, label %155
    i32 10029533, label %156
    i32 10029534, label %157
    i32 10029535, label %158
    i32 10029536, label %159
    i32 10029547, label %160
    i32 10029537, label %161
    i32 10029539, label %162
    i32 10029540, label %163
    i32 10029538, label %164
    i32 10029541, label %165
    i32 10029542, label %166
    i32 10029544, label %167
    i32 10029545, label %168
    i32 10029546, label %169
    i32 10029602, label %170
    i32 10029603, label %171
    i32 10029812, label %172
    i32 10029813, label %173
    i32 10029814, label %174
    i32 10029815, label %175
    i32 10029816, label %176
    i32 10029817, label %177
    i32 10029818, label %178
    i32 10029819, label %179
    i32 10029820, label %180
    i32 10029821, label %181
    i32 10029822, label %182
    i32 10029823, label %183
    i32 10029824, label %184
    i32 10029825, label %185
    i32 10029914, label %186
    i32 10029915, label %187
    i32 10029916, label %188
    i32 10029912, label %189
    i32 10029913, label %190
    i32 10029959, label %191
    i32 10029960, label %192
    i32 10029961, label %193
    i32 10029962, label %194
    i32 10029963, label %195
    i32 10029964, label %196
    i32 10029927, label %197
    i32 10029928, label %198
    i32 10029930, label %199
    i32 10029929, label %200
    i32 10029931, label %201
    i32 10029935, label %202
    i32 10029938, label %203
    i32 10029937, label %204
    i32 10029939, label %205
    i32 10029932, label %206
    i32 10029917, label %207
    i32 10029918, label %208
    i32 10029919, label %209
    i32 10029920, label %210
    i32 10029921, label %211
    i32 10029922, label %212
    i32 10029923, label %213
    i32 10029924, label %214
    i32 10029925, label %215
    i32 10029926, label %216
    i32 10029948, label %217
    i32 10029949, label %218
    i32 10029950, label %219
    i32 10029951, label %220
    i32 10029952, label %221
    i32 10029953, label %222
    i32 10029954, label %223
    i32 10029940, label %224
    i32 10029941, label %225
    i32 10029942, label %226
    i32 10029944, label %227
    i32 10029945, label %228
    i32 10029943, label %229
    i32 10029946, label %230
    i32 10029936, label %231
    i32 10029933, label %232
    i32 10029934, label %233
    i32 10029947, label %234
    i32 10029955, label %235
    i32 10029956, label %236
    i32 10030320, label %237
    i32 10030321, label %238
    i32 10030322, label %239
    i32 10030323, label %240
    i32 10030324, label %241
    i32 10030327, label %242
    i32 10030328, label %243
    i32 10092545, label %244
    i32 10094849, label %245
    i32 10094850, label %246
    i32 10094851, label %247
    i32 10094852, label %248
    i32 10094853, label %249
    i32 10094854, label %250
    i32 10094855, label %251
    i32 10094856, label %252
    i32 10094857, label %253
    i32 10094858, label %254
    i32 10094859, label %255
    i32 10094860, label %256
    i32 10094861, label %257
    i32 10094862, label %258
    i32 10094863, label %259
    i32 10094864, label %260
    i32 10094865, label %261
    i32 10094866, label %262
    i32 10094867, label %263
    i32 10094868, label %264
    i32 10094869, label %265
    i32 10094870, label %266
    i32 10094871, label %267
    i32 10094872, label %268
    i32 10094873, label %269
    i32 10094874, label %270
    i32 10094875, label %271
    i32 10094876, label %272
    i32 10094877, label %273
    i32 10094878, label %274
    i32 10094879, label %275
    i32 10094880, label %276
    i32 10094881, label %277
    i32 10357000, label %278
    i32 10094882, label %279
    i32 10094883, label %280
    i32 10158081, label %281
    i32 10160385, label %282
    i32 10160386, label %283
    i32 10160387, label %284
    i32 10160389, label %285
    i32 10160390, label %286
    i32 10160391, label %287
    i32 10160392, label %288
    i32 10160393, label %289
    i32 10160394, label %290
    i32 10160395, label %291
    i32 10160396, label %292
    i32 10160397, label %293
    i32 10160398, label %294
    i32 10160399, label %295
    i32 10160448, label %296
    i32 10160449, label %297
    i32 10160450, label %298
    i32 10160464, label %299
    i32 10160465, label %300
    i32 10160466, label %301
    i32 10160467, label %302
    i32 10160468, label %303
    i32 10160480, label %304
    i32 10160481, label %305
    i32 10160482, label %306
    i32 10160496, label %307
    i32 10160497, label %308
    i32 10160498, label %309
    i32 10223617, label %310
    i32 10225921, label %311
    i32 10225922, label %312
    i32 10225923, label %313
    i32 10225924, label %314
    i32 10225925, label %315
    i32 10225926, label %316
    i32 10225927, label %317
    i32 10225928, label %318
    i32 10225929, label %319
    i32 10225930, label %320
    i32 10225931, label %321
    i32 10225932, label %322
    i32 10289153, label %323
    i32 10291457, label %324
    i32 10291458, label %325
    i32 10291459, label %326
    i32 10291460, label %327
    i32 10354689, label %328
    i32 10356993, label %329
    i32 10356994, label %330
    i32 10356995, label %331
    i32 10356996, label %332
    i32 10356997, label %333
    i32 10356998, label %334
    i32 10356999, label %335
    i32 10357001, label %336
    i32 10420225, label %337
    i32 10422529, label %338
    i32 10422530, label %339
    i32 10422531, label %340
    i32 10422532, label %341
    i32 10422533, label %342
    i32 10485761, label %343
    i32 10488065, label %344
    i32 10488066, label %345
    i32 10488067, label %346
    i32 10488068, label %347
    i32 10488069, label %348
    i32 10488070, label %349
    i32 10488164, label %350
    i32 10488165, label %351
    i32 10488166, label %352
    i32 10551297, label %353
    i32 10553601, label %354
    i32 10553602, label %355
    i32 10616833, label %356
    i32 10619168, label %357
    i32 10619177, label %358
    i32 10619178, label %359
    i32 10619187, label %360
    i32 10619188, label %361
    i32 10619197, label %362
    i32 10619198, label %363
    i32 10619147, label %364
    i32 10619148, label %365
    i32 10619227, label %366
    i32 10553603, label %367
    i32 10553604, label %368
    i32 10553605, label %369
    i32 10553606, label %370
    i32 10553607, label %371
    i32 10553608, label %372
    i32 10682369, label %373
    i32 10684673, label %374
    i32 10684674, label %375
    i32 10684675, label %376
    i32 10684676, label %377
    i32 10747905, label %378
    i32 10750208, label %379
    i32 10750209, label %380
    i32 10750210, label %381
    i32 10750211, label %382
    i32 10750212, label %383
    i32 10750213, label %384
    i32 10750214, label %385
    i32 10750215, label %386
    i32 10750308, label %387
    i32 10750408, label %388
    i32 10750428, label %389
    i32 10750429, label %390
    i32 10750430, label %391
    i32 10750509, label %392
    i32 10750508, label %393
    i32 10813441, label %394
    i32 10815744, label %395
    i32 10815745, label %396
  ]

2:                                                ; preds = %1
  br label %398

3:                                                ; preds = %1
  br label %398

4:                                                ; preds = %1
  br label %398

5:                                                ; preds = %1
  br label %398

6:                                                ; preds = %1
  br label %398

7:                                                ; preds = %1
  br label %398

8:                                                ; preds = %1
  br label %398

9:                                                ; preds = %1
  br label %398

10:                                               ; preds = %1
  br label %398

11:                                               ; preds = %1
  br label %398

12:                                               ; preds = %1
  br label %398

13:                                               ; preds = %1
  br label %398

14:                                               ; preds = %1
  br label %398

15:                                               ; preds = %1
  br label %398

16:                                               ; preds = %1
  br label %398

17:                                               ; preds = %1
  br label %398

18:                                               ; preds = %1
  br label %398

19:                                               ; preds = %1
  br label %398

20:                                               ; preds = %1
  br label %398

21:                                               ; preds = %1
  br label %398

22:                                               ; preds = %1
  br label %398

23:                                               ; preds = %1
  br label %398

24:                                               ; preds = %1
  br label %398

25:                                               ; preds = %1
  br label %398

26:                                               ; preds = %1
  br label %398

27:                                               ; preds = %1
  br label %398

28:                                               ; preds = %1
  br label %398

29:                                               ; preds = %1
  br label %398

30:                                               ; preds = %1
  br label %398

31:                                               ; preds = %1
  br label %398

32:                                               ; preds = %1
  br label %398

33:                                               ; preds = %1
  br label %398

34:                                               ; preds = %1
  br label %398

35:                                               ; preds = %1
  br label %398

36:                                               ; preds = %1
  br label %398

37:                                               ; preds = %1
  br label %398

38:                                               ; preds = %1
  br label %398

39:                                               ; preds = %1
  br label %398

40:                                               ; preds = %1
  br label %398

41:                                               ; preds = %1
  br label %398

42:                                               ; preds = %1
  br label %398

43:                                               ; preds = %1
  br label %398

44:                                               ; preds = %1
  br label %398

45:                                               ; preds = %1
  br label %398

46:                                               ; preds = %1
  br label %398

47:                                               ; preds = %1
  br label %398

48:                                               ; preds = %1
  br label %398

49:                                               ; preds = %1
  br label %398

50:                                               ; preds = %1
  br label %398

51:                                               ; preds = %1
  br label %398

52:                                               ; preds = %1
  br label %398

53:                                               ; preds = %1
  br label %398

54:                                               ; preds = %1
  br label %398

55:                                               ; preds = %1
  br label %398

56:                                               ; preds = %1
  br label %398

57:                                               ; preds = %1
  br label %398

58:                                               ; preds = %1
  br label %398

59:                                               ; preds = %1
  br label %398

60:                                               ; preds = %1
  br label %398

61:                                               ; preds = %1
  br label %398

62:                                               ; preds = %1
  br label %398

63:                                               ; preds = %1
  br label %398

64:                                               ; preds = %1
  br label %398

65:                                               ; preds = %1
  br label %398

66:                                               ; preds = %1
  br label %398

67:                                               ; preds = %1
  br label %398

68:                                               ; preds = %1
  br label %398

69:                                               ; preds = %1
  br label %398

70:                                               ; preds = %1
  br label %398

71:                                               ; preds = %1
  br label %398

72:                                               ; preds = %1
  br label %398

73:                                               ; preds = %1
  br label %398

74:                                               ; preds = %1
  br label %398

75:                                               ; preds = %1
  br label %398

76:                                               ; preds = %1
  br label %398

77:                                               ; preds = %1
  br label %398

78:                                               ; preds = %1
  br label %398

79:                                               ; preds = %1
  br label %398

80:                                               ; preds = %1
  br label %398

81:                                               ; preds = %1
  br label %398

82:                                               ; preds = %1
  br label %398

83:                                               ; preds = %1
  br label %398

84:                                               ; preds = %1
  br label %398

85:                                               ; preds = %1
  br label %398

86:                                               ; preds = %1
  br label %398

87:                                               ; preds = %1
  br label %398

88:                                               ; preds = %1
  br label %398

89:                                               ; preds = %1
  br label %398

90:                                               ; preds = %1
  br label %398

91:                                               ; preds = %1
  br label %398

92:                                               ; preds = %1
  br label %398

93:                                               ; preds = %1
  br label %398

94:                                               ; preds = %1
  br label %398

95:                                               ; preds = %1
  br label %398

96:                                               ; preds = %1
  br label %398

97:                                               ; preds = %1
  br label %398

98:                                               ; preds = %1
  br label %398

99:                                               ; preds = %1
  br label %398

100:                                              ; preds = %1
  br label %398

101:                                              ; preds = %1
  br label %398

102:                                              ; preds = %1
  br label %398

103:                                              ; preds = %1
  br label %398

104:                                              ; preds = %1
  br label %398

105:                                              ; preds = %1
  br label %398

106:                                              ; preds = %1
  br label %398

107:                                              ; preds = %1
  br label %398

108:                                              ; preds = %1
  br label %398

109:                                              ; preds = %1
  br label %398

110:                                              ; preds = %1
  br label %398

111:                                              ; preds = %1
  br label %398

112:                                              ; preds = %1
  br label %398

113:                                              ; preds = %1
  br label %398

114:                                              ; preds = %1
  br label %398

115:                                              ; preds = %1
  br label %398

116:                                              ; preds = %1
  br label %398

117:                                              ; preds = %1
  br label %398

118:                                              ; preds = %1
  br label %398

119:                                              ; preds = %1
  br label %398

120:                                              ; preds = %1
  br label %398

121:                                              ; preds = %1
  br label %398

122:                                              ; preds = %1
  br label %398

123:                                              ; preds = %1
  br label %398

124:                                              ; preds = %1
  br label %398

125:                                              ; preds = %1
  br label %398

126:                                              ; preds = %1
  br label %398

127:                                              ; preds = %1
  br label %398

128:                                              ; preds = %1
  br label %398

129:                                              ; preds = %1
  br label %398

130:                                              ; preds = %1
  br label %398

131:                                              ; preds = %1
  br label %398

132:                                              ; preds = %1
  br label %398

133:                                              ; preds = %1
  br label %398

134:                                              ; preds = %1
  br label %398

135:                                              ; preds = %1
  br label %398

136:                                              ; preds = %1
  br label %398

137:                                              ; preds = %1
  br label %398

138:                                              ; preds = %1
  br label %398

139:                                              ; preds = %1
  br label %398

140:                                              ; preds = %1
  br label %398

141:                                              ; preds = %1
  br label %398

142:                                              ; preds = %1
  br label %398

143:                                              ; preds = %1
  br label %398

144:                                              ; preds = %1
  br label %398

145:                                              ; preds = %1
  br label %398

146:                                              ; preds = %1
  br label %398

147:                                              ; preds = %1
  br label %398

148:                                              ; preds = %1
  br label %398

149:                                              ; preds = %1
  br label %398

150:                                              ; preds = %1
  br label %398

151:                                              ; preds = %1
  br label %398

152:                                              ; preds = %1
  br label %398

153:                                              ; preds = %1
  br label %398

154:                                              ; preds = %1
  br label %398

155:                                              ; preds = %1
  br label %398

156:                                              ; preds = %1
  br label %398

157:                                              ; preds = %1
  br label %398

158:                                              ; preds = %1
  br label %398

159:                                              ; preds = %1
  br label %398

160:                                              ; preds = %1
  br label %398

161:                                              ; preds = %1
  br label %398

162:                                              ; preds = %1
  br label %398

163:                                              ; preds = %1
  br label %398

164:                                              ; preds = %1
  br label %398

165:                                              ; preds = %1
  br label %398

166:                                              ; preds = %1
  br label %398

167:                                              ; preds = %1
  br label %398

168:                                              ; preds = %1
  br label %398

169:                                              ; preds = %1
  br label %398

170:                                              ; preds = %1
  br label %398

171:                                              ; preds = %1
  br label %398

172:                                              ; preds = %1
  br label %398

173:                                              ; preds = %1
  br label %398

174:                                              ; preds = %1
  br label %398

175:                                              ; preds = %1
  br label %398

176:                                              ; preds = %1
  br label %398

177:                                              ; preds = %1
  br label %398

178:                                              ; preds = %1
  br label %398

179:                                              ; preds = %1
  br label %398

180:                                              ; preds = %1
  br label %398

181:                                              ; preds = %1
  br label %398

182:                                              ; preds = %1
  br label %398

183:                                              ; preds = %1
  br label %398

184:                                              ; preds = %1
  br label %398

185:                                              ; preds = %1
  br label %398

186:                                              ; preds = %1
  br label %398

187:                                              ; preds = %1
  br label %398

188:                                              ; preds = %1
  br label %398

189:                                              ; preds = %1
  br label %398

190:                                              ; preds = %1
  br label %398

191:                                              ; preds = %1
  br label %398

192:                                              ; preds = %1
  br label %398

193:                                              ; preds = %1
  br label %398

194:                                              ; preds = %1
  br label %398

195:                                              ; preds = %1
  br label %398

196:                                              ; preds = %1
  br label %398

197:                                              ; preds = %1
  br label %398

198:                                              ; preds = %1
  br label %398

199:                                              ; preds = %1
  br label %398

200:                                              ; preds = %1
  br label %398

201:                                              ; preds = %1
  br label %398

202:                                              ; preds = %1
  br label %398

203:                                              ; preds = %1
  br label %398

204:                                              ; preds = %1
  br label %398

205:                                              ; preds = %1
  br label %398

206:                                              ; preds = %1
  br label %398

207:                                              ; preds = %1
  br label %398

208:                                              ; preds = %1
  br label %398

209:                                              ; preds = %1
  br label %398

210:                                              ; preds = %1
  br label %398

211:                                              ; preds = %1
  br label %398

212:                                              ; preds = %1
  br label %398

213:                                              ; preds = %1
  br label %398

214:                                              ; preds = %1
  br label %398

215:                                              ; preds = %1
  br label %398

216:                                              ; preds = %1
  br label %398

217:                                              ; preds = %1
  br label %398

218:                                              ; preds = %1
  br label %398

219:                                              ; preds = %1
  br label %398

220:                                              ; preds = %1
  br label %398

221:                                              ; preds = %1
  br label %398

222:                                              ; preds = %1
  br label %398

223:                                              ; preds = %1
  br label %398

224:                                              ; preds = %1
  br label %398

225:                                              ; preds = %1
  br label %398

226:                                              ; preds = %1
  br label %398

227:                                              ; preds = %1
  br label %398

228:                                              ; preds = %1
  br label %398

229:                                              ; preds = %1
  br label %398

230:                                              ; preds = %1
  br label %398

231:                                              ; preds = %1
  br label %398

232:                                              ; preds = %1
  br label %398

233:                                              ; preds = %1
  br label %398

234:                                              ; preds = %1
  br label %398

235:                                              ; preds = %1
  br label %398

236:                                              ; preds = %1
  br label %398

237:                                              ; preds = %1
  br label %398

238:                                              ; preds = %1
  br label %398

239:                                              ; preds = %1
  br label %398

240:                                              ; preds = %1
  br label %398

241:                                              ; preds = %1
  br label %398

242:                                              ; preds = %1
  br label %398

243:                                              ; preds = %1
  br label %398

244:                                              ; preds = %1
  br label %398

245:                                              ; preds = %1
  br label %398

246:                                              ; preds = %1
  br label %398

247:                                              ; preds = %1
  br label %398

248:                                              ; preds = %1
  br label %398

249:                                              ; preds = %1
  br label %398

250:                                              ; preds = %1
  br label %398

251:                                              ; preds = %1
  br label %398

252:                                              ; preds = %1
  br label %398

253:                                              ; preds = %1
  br label %398

254:                                              ; preds = %1
  br label %398

255:                                              ; preds = %1
  br label %398

256:                                              ; preds = %1
  br label %398

257:                                              ; preds = %1
  br label %398

258:                                              ; preds = %1
  br label %398

259:                                              ; preds = %1
  br label %398

260:                                              ; preds = %1
  br label %398

261:                                              ; preds = %1
  br label %398

262:                                              ; preds = %1
  br label %398

263:                                              ; preds = %1
  br label %398

264:                                              ; preds = %1
  br label %398

265:                                              ; preds = %1
  br label %398

266:                                              ; preds = %1
  br label %398

267:                                              ; preds = %1
  br label %398

268:                                              ; preds = %1
  br label %398

269:                                              ; preds = %1
  br label %398

270:                                              ; preds = %1
  br label %398

271:                                              ; preds = %1
  br label %398

272:                                              ; preds = %1
  br label %398

273:                                              ; preds = %1
  br label %398

274:                                              ; preds = %1
  br label %398

275:                                              ; preds = %1
  br label %398

276:                                              ; preds = %1
  br label %398

277:                                              ; preds = %1
  br label %398

278:                                              ; preds = %1
  br label %398

279:                                              ; preds = %1
  br label %398

280:                                              ; preds = %1
  br label %398

281:                                              ; preds = %1
  br label %398

282:                                              ; preds = %1
  br label %398

283:                                              ; preds = %1
  br label %398

284:                                              ; preds = %1
  br label %398

285:                                              ; preds = %1
  br label %398

286:                                              ; preds = %1
  br label %398

287:                                              ; preds = %1
  br label %398

288:                                              ; preds = %1
  br label %398

289:                                              ; preds = %1
  br label %398

290:                                              ; preds = %1
  br label %398

291:                                              ; preds = %1
  br label %398

292:                                              ; preds = %1
  br label %398

293:                                              ; preds = %1
  br label %398

294:                                              ; preds = %1
  br label %398

295:                                              ; preds = %1
  br label %398

296:                                              ; preds = %1
  br label %398

297:                                              ; preds = %1
  br label %398

298:                                              ; preds = %1
  br label %398

299:                                              ; preds = %1
  br label %398

300:                                              ; preds = %1
  br label %398

301:                                              ; preds = %1
  br label %398

302:                                              ; preds = %1
  br label %398

303:                                              ; preds = %1
  br label %398

304:                                              ; preds = %1
  br label %398

305:                                              ; preds = %1
  br label %398

306:                                              ; preds = %1
  br label %398

307:                                              ; preds = %1
  br label %398

308:                                              ; preds = %1
  br label %398

309:                                              ; preds = %1
  br label %398

310:                                              ; preds = %1
  br label %398

311:                                              ; preds = %1
  br label %398

312:                                              ; preds = %1
  br label %398

313:                                              ; preds = %1
  br label %398

314:                                              ; preds = %1
  br label %398

315:                                              ; preds = %1
  br label %398

316:                                              ; preds = %1
  br label %398

317:                                              ; preds = %1
  br label %398

318:                                              ; preds = %1
  br label %398

319:                                              ; preds = %1
  br label %398

320:                                              ; preds = %1
  br label %398

321:                                              ; preds = %1
  br label %398

322:                                              ; preds = %1
  br label %398

323:                                              ; preds = %1
  br label %398

324:                                              ; preds = %1
  br label %398

325:                                              ; preds = %1
  br label %398

326:                                              ; preds = %1
  br label %398

327:                                              ; preds = %1
  br label %398

328:                                              ; preds = %1
  br label %398

329:                                              ; preds = %1
  br label %398

330:                                              ; preds = %1
  br label %398

331:                                              ; preds = %1
  br label %398

332:                                              ; preds = %1
  br label %398

333:                                              ; preds = %1
  br label %398

334:                                              ; preds = %1
  br label %398

335:                                              ; preds = %1
  br label %398

336:                                              ; preds = %1
  br label %398

337:                                              ; preds = %1
  br label %398

338:                                              ; preds = %1
  br label %398

339:                                              ; preds = %1
  br label %398

340:                                              ; preds = %1
  br label %398

341:                                              ; preds = %1
  br label %398

342:                                              ; preds = %1
  br label %398

343:                                              ; preds = %1
  br label %398

344:                                              ; preds = %1
  br label %398

345:                                              ; preds = %1
  br label %398

346:                                              ; preds = %1
  br label %398

347:                                              ; preds = %1
  br label %398

348:                                              ; preds = %1
  br label %398

349:                                              ; preds = %1
  br label %398

350:                                              ; preds = %1
  br label %398

351:                                              ; preds = %1
  br label %398

352:                                              ; preds = %1
  br label %398

353:                                              ; preds = %1
  br label %398

354:                                              ; preds = %1
  br label %398

355:                                              ; preds = %1
  br label %398

356:                                              ; preds = %1
  br label %398

357:                                              ; preds = %1
  br label %398

358:                                              ; preds = %1
  br label %398

359:                                              ; preds = %1
  br label %398

360:                                              ; preds = %1
  br label %398

361:                                              ; preds = %1
  br label %398

362:                                              ; preds = %1
  br label %398

363:                                              ; preds = %1
  br label %398

364:                                              ; preds = %1
  br label %398

365:                                              ; preds = %1
  br label %398

366:                                              ; preds = %1
  br label %398

367:                                              ; preds = %1
  br label %398

368:                                              ; preds = %1
  br label %398

369:                                              ; preds = %1
  br label %398

370:                                              ; preds = %1
  br label %398

371:                                              ; preds = %1
  br label %398

372:                                              ; preds = %1
  br label %398

373:                                              ; preds = %1
  br label %398

374:                                              ; preds = %1
  br label %398

375:                                              ; preds = %1
  br label %398

376:                                              ; preds = %1
  br label %398

377:                                              ; preds = %1
  br label %398

378:                                              ; preds = %1
  br label %398

379:                                              ; preds = %1
  br label %398

380:                                              ; preds = %1
  br label %398

381:                                              ; preds = %1
  br label %398

382:                                              ; preds = %1
  br label %398

383:                                              ; preds = %1
  br label %398

384:                                              ; preds = %1
  br label %398

385:                                              ; preds = %1
  br label %398

386:                                              ; preds = %1
  br label %398

387:                                              ; preds = %1
  br label %398

388:                                              ; preds = %1
  br label %398

389:                                              ; preds = %1
  br label %398

390:                                              ; preds = %1
  br label %398

391:                                              ; preds = %1
  br label %398

392:                                              ; preds = %1
  br label %398

393:                                              ; preds = %1
  br label %398

394:                                              ; preds = %1
  br label %398

395:                                              ; preds = %1
  br label %398

396:                                              ; preds = %1
  br label %398

397:                                              ; preds = %1
  br label %398

398:                                              ; preds = %397, %396, %395, %394, %393, %392, %391, %390, %389, %388, %387, %386, %385, %384, %383, %382, %381, %380, %379, %378, %377, %376, %375, %374, %373, %372, %371, %370, %369, %368, %367, %366, %365, %364, %363, %362, %361, %360, %359, %358, %357, %356, %355, %354, %353, %352, %351, %350, %349, %348, %347, %346, %345, %344, %343, %342, %341, %340, %339, %338, %337, %336, %335, %334, %333, %332, %331, %330, %329, %328, %327, %326, %325, %324, %323, %322, %321, %320, %319, %318, %317, %316, %315, %314, %313, %312, %311, %310, %309, %308, %307, %306, %305, %304, %303, %302, %301, %300, %299, %298, %297, %296, %295, %294, %293, %292, %291, %290, %289, %288, %287, %286, %285, %284, %283, %282, %281, %280, %279, %278, %277, %276, %275, %274, %273, %272, %271, %270, %269, %268, %267, %266, %265, %264, %263, %262, %261, %260, %259, %258, %257, %256, %255, %254, %253, %252, %251, %250, %249, %248, %247, %246, %245, %244, %243, %242, %241, %240, %239, %238, %237, %236, %235, %234, %233, %232, %231, %230, %229, %228, %227, %226, %225, %224, %223, %222, %221, %220, %219, %218, %217, %216, %215, %214, %213, %212, %211, %210, %209, %208, %207, %206, %205, %204, %203, %202, %201, %200, %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %180, %179, %178, %177, %176, %175, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %162, %161, %160, %159, %158, %157, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137, %136, %135, %134, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91, %90, %89, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %399 = phi ptr [ null, %397 ], [ @.str.641, %396 ], [ @.str.640, %395 ], [ @.str.639, %394 ], [ @.str.638, %393 ], [ @.str.637, %392 ], [ @.str.636, %391 ], [ @.str.635, %390 ], [ @.str.634, %389 ], [ @.str.633, %388 ], [ @.str.632, %387 ], [ @.str.631, %386 ], [ @.str.630, %385 ], [ @.str.629, %384 ], [ @.str.628, %383 ], [ @.str.627, %382 ], [ @.str.626, %381 ], [ @.str.625, %380 ], [ @.str.624, %379 ], [ @.str.623, %378 ], [ @.str.622, %377 ], [ @.str.621, %376 ], [ @.str.620, %375 ], [ @.str.619, %374 ], [ @.str.618, %373 ], [ @.str.544, %372 ], [ @.str.543, %371 ], [ @.str.542, %370 ], [ @.str.537, %369 ], [ @.str.536, %368 ], [ @.str.535, %367 ], [ @.str.617, %366 ], [ @.str.616, %365 ], [ @.str.615, %364 ], [ @.str.614, %363 ], [ @.str.613, %362 ], [ @.str.612, %361 ], [ @.str.611, %360 ], [ @.str.610, %359 ], [ @.str.609, %358 ], [ @.str.608, %357 ], [ @.str.607, %356 ], [ @.str.606, %355 ], [ @.str.605, %354 ], [ @.str.604, %353 ], [ @.str.603, %352 ], [ @.str.602, %351 ], [ @.str.601, %350 ], [ @.str.600, %349 ], [ @.str.599, %348 ], [ @.str.598, %347 ], [ @.str.597, %346 ], [ @.str.596, %345 ], [ @.str.595, %344 ], [ @.str.594, %343 ], [ @.str.593, %342 ], [ @.str.592, %341 ], [ @.str.591, %340 ], [ @.str.590, %339 ], [ @.str.589, %338 ], [ @.str.588, %337 ], [ @.str.587, %336 ], [ @.str.586, %335 ], [ @.str.585, %334 ], [ @.str.584, %333 ], [ @.str.583, %332 ], [ @.str.582, %331 ], [ @.str.581, %330 ], [ @.str.580, %329 ], [ @.str.579, %328 ], [ @.str.578, %327 ], [ @.str.577, %326 ], [ @.str.576, %325 ], [ @.str.575, %324 ], [ @.str.574, %323 ], [ @.str.573, %322 ], [ @.str.572, %321 ], [ @.str.571, %320 ], [ @.str.570, %319 ], [ @.str.569, %318 ], [ @.str.568, %317 ], [ @.str.567, %316 ], [ @.str.566, %315 ], [ @.str.565, %314 ], [ @.str.564, %313 ], [ @.str.563, %312 ], [ @.str.562, %311 ], [ @.str.561, %310 ], [ @.str.560, %309 ], [ @.str.559, %308 ], [ @.str.558, %307 ], [ @.str.557, %306 ], [ @.str.556, %305 ], [ @.str.555, %304 ], [ @.str.554, %303 ], [ @.str.553, %302 ], [ @.str.552, %301 ], [ @.str.551, %300 ], [ @.str.550, %299 ], [ @.str.549, %298 ], [ @.str.548, %297 ], [ @.str.547, %296 ], [ @.str.546, %295 ], [ @.str.545, %294 ], [ @.str.544, %293 ], [ @.str.543, %292 ], [ @.str.542, %291 ], [ @.str.541, %290 ], [ @.str.540, %289 ], [ @.str.539, %288 ], [ @.str.538, %287 ], [ @.str.537, %286 ], [ @.str.536, %285 ], [ @.str.535, %284 ], [ @.str.534, %283 ], [ @.str.533, %282 ], [ @.str.532, %281 ], [ @.str.531, %280 ], [ @.str.530, %279 ], [ @.str.529, %278 ], [ @.str.528, %277 ], [ @.str.527, %276 ], [ @.str.526, %275 ], [ @.str.525, %274 ], [ @.str.524, %273 ], [ @.str.523, %272 ], [ @.str.522, %271 ], [ @.str.521, %270 ], [ @.str.520, %269 ], [ @.str.519, %268 ], [ @.str.518, %267 ], [ @.str.517, %266 ], [ @.str.516, %265 ], [ @.str.515, %264 ], [ @.str.514, %263 ], [ @.str.513, %262 ], [ @.str.512, %261 ], [ @.str.511, %260 ], [ @.str.510, %259 ], [ @.str.509, %258 ], [ @.str.508, %257 ], [ @.str.507, %256 ], [ @.str.506, %255 ], [ @.str.505, %254 ], [ @.str.504, %253 ], [ @.str.503, %252 ], [ @.str.502, %251 ], [ @.str.501, %250 ], [ @.str.500, %249 ], [ @.str.499, %248 ], [ @.str.498, %247 ], [ @.str.497, %246 ], [ @.str.496, %245 ], [ @.str.495, %244 ], [ @.str.494, %243 ], [ @.str.493, %242 ], [ @.str.492, %241 ], [ @.str.491, %240 ], [ @.str.490, %239 ], [ @.str.489, %238 ], [ @.str.488, %237 ], [ @.str.487, %236 ], [ @.str.486, %235 ], [ @.str.485, %234 ], [ @.str.484, %233 ], [ @.str.483, %232 ], [ @.str.482, %231 ], [ @.str.481, %230 ], [ @.str.480, %229 ], [ @.str.479, %228 ], [ @.str.478, %227 ], [ @.str.477, %226 ], [ @.str.476, %225 ], [ @.str.475, %224 ], [ @.str.474, %223 ], [ @.str.473, %222 ], [ @.str.472, %221 ], [ @.str.471, %220 ], [ @.str.470, %219 ], [ @.str.469, %218 ], [ @.str.468, %217 ], [ @.str.467, %216 ], [ @.str.466, %215 ], [ @.str.465, %214 ], [ @.str.464, %213 ], [ @.str.463, %212 ], [ @.str.462, %211 ], [ @.str.461, %210 ], [ @.str.460, %209 ], [ @.str.459, %208 ], [ @.str.458, %207 ], [ @.str.457, %206 ], [ @.str.456, %205 ], [ @.str.455, %204 ], [ @.str.454, %203 ], [ @.str.453, %202 ], [ @.str.452, %201 ], [ @.str.451, %200 ], [ @.str.450, %199 ], [ @.str.449, %198 ], [ @.str.448, %197 ], [ @.str.447, %196 ], [ @.str.446, %195 ], [ @.str.445, %194 ], [ @.str.444, %193 ], [ @.str.443, %192 ], [ @.str.442, %191 ], [ @.str.441, %190 ], [ @.str.440, %189 ], [ @.str.439, %188 ], [ @.str.438, %187 ], [ @.str.437, %186 ], [ @.str.436, %185 ], [ @.str.435, %184 ], [ @.str.434, %183 ], [ @.str.433, %182 ], [ @.str.432, %181 ], [ @.str.431, %180 ], [ @.str.430, %179 ], [ @.str.429, %178 ], [ @.str.428, %177 ], [ @.str.427, %176 ], [ @.str.426, %175 ], [ @.str.425, %174 ], [ @.str.424, %173 ], [ @.str.423, %172 ], [ @.str.422, %171 ], [ @.str.421, %170 ], [ @.str.420, %169 ], [ @.str.419, %168 ], [ @.str.418, %167 ], [ @.str.417, %166 ], [ @.str.416, %165 ], [ @.str.415, %164 ], [ @.str.414, %163 ], [ @.str.413, %162 ], [ @.str.412, %161 ], [ @.str.411, %160 ], [ @.str.410, %159 ], [ @.str.409, %158 ], [ @.str.408, %157 ], [ @.str.407, %156 ], [ @.str.406, %155 ], [ @.str.405, %154 ], [ @.str.404, %153 ], [ @.str.403, %152 ], [ @.str.402, %151 ], [ @.str.401, %150 ], [ @.str.400, %149 ], [ @.str.399, %148 ], [ @.str.398, %147 ], [ @.str.397, %146 ], [ @.str.396, %145 ], [ @.str.395, %144 ], [ @.str.394, %143 ], [ @.str.393, %142 ], [ @.str.392, %141 ], [ @.str.391, %140 ], [ @.str.390, %139 ], [ @.str.389, %138 ], [ @.str.388, %137 ], [ @.str.387, %136 ], [ @.str.386, %135 ], [ @.str.385, %134 ], [ @.str.384, %133 ], [ @.str.383, %132 ], [ @.str.382, %131 ], [ @.str.381, %130 ], [ @.str.380, %129 ], [ @.str.379, %128 ], [ @.str.378, %127 ], [ @.str.377, %126 ], [ @.str.376, %125 ], [ @.str.375, %124 ], [ @.str.374, %123 ], [ @.str.373, %122 ], [ @.str.372, %121 ], [ @.str.371, %120 ], [ @.str.370, %119 ], [ @.str.369, %118 ], [ @.str.368, %117 ], [ @.str.367, %116 ], [ @.str.366, %115 ], [ @.str.365, %114 ], [ @.str.364, %113 ], [ @.str.363, %112 ], [ @.str.362, %111 ], [ @.str.361, %110 ], [ @.str.360, %109 ], [ @.str.359, %108 ], [ @.str.358, %107 ], [ @.str.357, %106 ], [ @.str.356, %105 ], [ @.str.355, %104 ], [ @.str.354, %103 ], [ @.str.353, %102 ], [ @.str.352, %101 ], [ @.str.351, %100 ], [ @.str.350, %99 ], [ @.str.349, %98 ], [ @.str.348, %97 ], [ @.str.347, %96 ], [ @.str.346, %95 ], [ @.str.345, %94 ], [ @.str.344, %93 ], [ @.str.343, %92 ], [ @.str.342, %91 ], [ @.str.341, %90 ], [ @.str.340, %89 ], [ @.str.339, %88 ], [ @.str.338, %87 ], [ @.str.337, %86 ], [ @.str.336, %85 ], [ @.str.335, %84 ], [ @.str.334, %83 ], [ @.str.333, %82 ], [ @.str.332, %81 ], [ @.str.331, %80 ], [ @.str.330, %79 ], [ @.str.329, %78 ], [ @.str.328, %77 ], [ @.str.327, %76 ], [ @.str.326, %75 ], [ @.str.325, %74 ], [ @.str.56, %73 ], [ @.str.324, %72 ], [ @.str.323, %71 ], [ @.str.322, %70 ], [ @.str.321, %69 ], [ @.str.320, %68 ], [ @.str.319, %67 ], [ @.str.318, %66 ], [ @.str.317, %65 ], [ @.str.316, %64 ], [ @.str.315, %63 ], [ @.str.314, %62 ], [ @.str.313, %61 ], [ @.str.312, %60 ], [ @.str.311, %59 ], [ @.str.310, %58 ], [ @.str.309, %57 ], [ @.str.308, %56 ], [ @.str.307, %55 ], [ @.str.306, %54 ], [ @.str.305, %53 ], [ @.str.304, %52 ], [ @.str.303, %51 ], [ @.str.302, %50 ], [ @.str.301, %49 ], [ @.str.300, %48 ], [ @.str.299, %47 ], [ @.str.298, %46 ], [ @.str.297, %45 ], [ @.str.296, %44 ], [ @.str.295, %43 ], [ @.str.294, %42 ], [ @.str.293, %41 ], [ @.str.292, %40 ], [ @.str.291, %39 ], [ @.str.290, %38 ], [ @.str.289, %37 ], [ @.str.288, %36 ], [ @.str.287, %35 ], [ @.str.286, %34 ], [ @.str.285, %33 ], [ @.str.284, %32 ], [ @.str.283, %31 ], [ @.str.282, %30 ], [ @.str.281, %29 ], [ @.str.280, %28 ], [ @.str.279, %27 ], [ @.str.278, %26 ], [ @.str.277, %25 ], [ @.str.276, %24 ], [ @.str.275, %23 ], [ @.str.274, %22 ], [ @.str.273, %21 ], [ @.str.272, %20 ], [ @.str.271, %19 ], [ @.str.270, %18 ], [ @.str.269, %17 ], [ @.str.268, %16 ], [ @.str.267, %15 ], [ @.str.266, %14 ], [ @.str.265, %13 ], [ @.str.264, %12 ], [ @.str.263, %11 ], [ @.str.262, %10 ], [ @.str.261, %9 ], [ @.str.260, %8 ], [ @.str.259, %7 ], [ @.str.258, %6 ], [ @.str.257, %5 ], [ @.str.256, %4 ], [ @.str.255, %3 ], [ @.str.254, %2 ], [ @.str.253, %1 ]
  ret ptr %399
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @v4l2_ctrl_fill(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr noundef %7) #2 {
  %9 = tail call ptr @v4l2_ctrl_get_name(i32 noundef %0)
  store ptr %9, ptr %1, align 4
  store i32 0, ptr %7, align 4
  switch i32 %0, label %74 [
    i32 9963785, label %10
    i32 9963786, label %10
    i32 9963788, label %10
    i32 9963794, label %10
    i32 9963796, label %10
    i32 9963797, label %10
    i32 9963801, label %10
    i32 9963805, label %10
    i32 9963806, label %10
    i32 9963808, label %10
    i32 10029421, label %10
    i32 10029522, label %10
    i32 10029516, label %10
    i32 10029517, label %10
    i32 10094851, label %10
    i32 10094860, label %10
    i32 10094864, label %10
    i32 10160448, label %10
    i32 10160464, label %10
    i32 10160480, label %10
    i32 9963813, label %10
    i32 9963814, label %10
    i32 10225925, label %10
    i32 10225931, label %10
    i32 10225932, label %10
    i32 10029525, label %10
    i32 10029524, label %10
    i32 10029966, label %10
    i32 10029527, label %10
    i32 10029530, label %10
    i32 10029667, label %10
    i32 10029678, label %10
    i32 10029719, label %10
    i32 10029538, label %10
    i32 10029543, label %10
    i32 10094869, label %10
    i32 10094870, label %10
    i32 10553602, label %10
    i32 10619177, label %10
    i32 10619187, label %10
    i32 10619197, label %10
    i32 10619147, label %10
    i32 10619227, label %10
    i32 10160391, label %10
    i32 10160392, label %10
    i32 10160393, label %10
    i32 10160394, label %10
    i32 10160395, label %10
    i32 10160396, label %10
    i32 10160397, label %10
    i32 10160398, label %10
    i32 10553606, label %10
    i32 10553607, label %10
    i32 10553608, label %10
    i32 9963810, label %11
    i32 10029539, label %14
    i32 10029540, label %14
    i32 10029965, label %14
    i32 10029548, label %14
    i32 10029544, label %15
    i32 10029545, label %16
    i32 10029546, label %19
    i32 10029541, label %22
    i32 10094854, label %22
    i32 10094855, label %22
    i32 10225923, label %22
    i32 10225924, label %22
    i32 10094876, label %22
    i32 10094877, label %22
    i32 9963789, label %22
    i32 9963800, label %25
    i32 10029412, label %25
    i32 10029413, label %25
    i32 10029414, label %25
    i32 10029415, label %25
    i32 10029416, label %25
    i32 10029423, label %25
    i32 10029417, label %25
    i32 10029418, label %25
    i32 10029419, label %25
    i32 10029420, label %25
    i32 10029424, label %25
    i32 10029425, label %25
    i32 10029512, label %25
    i32 10029513, label %25
    i32 10029518, label %25
    i32 10029312, label %25
    i32 10029319, label %25
    i32 10094849, label %25
    i32 10094879, label %25
    i32 9963807, label %25
    i32 10094868, label %25
    i32 10160496, label %25
    i32 10225921, label %25
    i32 10225922, label %25
    i32 10029528, label %25
    i32 10029958, label %25
    i32 10029533, label %25
    i32 10029669, label %25
    i32 10029671, label %25
    i32 10029674, label %25
    i32 10029675, label %25
    i32 10029679, label %25
    i32 10029682, label %25
    i32 10029684, label %25
    i32 10029692, label %25
    i32 10029582, label %25
    i32 10029583, label %25
    i32 10029717, label %25
    i32 10029718, label %25
    i32 10291457, label %25
    i32 10094872, label %25
    i32 10094873, label %25
    i32 10094874, label %25
    i32 10488068, label %25
    i32 10488069, label %25
    i32 10488070, label %25
    i32 10488165, label %25
    i32 10488166, label %25
    i32 10422531, label %25
    i32 10422532, label %25
    i32 10553601, label %25
    i32 10029818, label %25
    i32 10029823, label %25
    i32 10029824, label %25
    i32 10029825, label %25
    i32 10684673, label %25
    i32 10029927, label %25
    i32 10029928, label %25
    i32 10029918, label %25
    i32 10029935, label %25
    i32 10029947, label %25
    i32 10029930, label %25
    i32 10029932, label %25
    i32 10030327, label %25
    i32 10030328, label %25
    i32 10750208, label %25
    i32 10750209, label %25
    i32 10094882, label %25
    i32 10422529, label %26
    i32 10160389, label %27
    i32 10160390, label %27
    i32 10553604, label %27
    i32 10553605, label %27
    i32 10094871, label %28
    i32 10094867, label %28
    i32 10029812, label %28
    i32 10029814, label %28
    i32 9961473, label %29
    i32 10092545, label %29
    i32 10027009, label %29
    i32 10158081, label %29
    i32 10223617, label %29
    i32 10289153, label %29
    i32 10354689, label %29
    i32 10420225, label %29
    i32 10485761, label %29
    i32 10551297, label %29
    i32 10616833, label %29
    i32 10682369, label %29
    i32 10747905, label %29
    i32 10813441, label %29
    i32 9963811, label %32
    i32 9963819, label %32
    i32 9963818, label %33
    i32 10225930, label %34
    i32 10291460, label %34
    i32 10094875, label %34
    i32 10094878, label %34
    i32 10488065, label %34
    i32 10488066, label %34
    i32 10488067, label %34
    i32 10488164, label %34
    i32 9963815, label %35
    i32 9963816, label %35
    i32 10029535, label %38
    i32 10029536, label %41
    i32 10029547, label %44
    i32 10422530, label %45
    i32 10684676, label %48
    i32 10684675, label %49
    i32 10160399, label %50
    i32 10750428, label %51
    i32 10750429, label %52
    i32 10750430, label %53
    i32 10750308, label %54
    i32 10750210, label %55
    i32 10750211, label %56
    i32 10750212, label %57
    i32 10750214, label %58
    i32 10750215, label %59
    i32 10750213, label %60
    i32 10750408, label %61
    i32 10030320, label %62
    i32 10030321, label %63
    i32 10030322, label %64
    i32 10030323, label %65
    i32 10030324, label %66
    i32 10750509, label %67
    i32 10750508, label %68
    i32 10357000, label %69
    i32 10815744, label %72
    i32 10815745, label %73
  ]

10:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  store i32 2, ptr %2, align 4
  store i64 0, ptr %3, align 8
  store i64 1, ptr %5, align 8
  store i64 1, ptr %4, align 8
  br label %75

11:                                               ; preds = %8
  store i32 1, ptr %2, align 4
  %12 = load i32, ptr %7, align 4
  %13 = or i32 %12, 1024
  store i32 %13, ptr %7, align 4
  br label %91

14:                                               ; preds = %8, %8, %8, %8
  store i32 1, ptr %2, align 4
  br label %75

15:                                               ; preds = %8
  store i32 1, ptr %2, align 4
  br label %91

16:                                               ; preds = %8
  store i32 1, ptr %2, align 4
  %17 = load i32, ptr %7, align 4
  %18 = or i32 %17, 512
  store i32 %18, ptr %7, align 4
  br label %91

19:                                               ; preds = %8
  store i32 8, ptr %2, align 4
  %20 = load i32, ptr %7, align 4
  %21 = or i32 %20, 512
  store i32 %21, ptr %7, align 4
  br label %91

22:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8
  store i32 4, ptr %2, align 4
  %23 = load i32, ptr %7, align 4
  %24 = or i32 %23, 576
  store i32 %24, ptr %7, align 4
  store i64 0, ptr %6, align 8
  store i64 0, ptr %5, align 8
  store i64 0, ptr %4, align 8
  store i64 0, ptr %3, align 8
  br label %75

25:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  store i32 3, ptr %2, align 4
  br label %75

26:                                               ; preds = %8
  store i32 9, ptr %2, align 4
  br label %91

27:                                               ; preds = %8, %8, %8, %8
  store i32 7, ptr %2, align 4
  br label %75

28:                                               ; preds = %8, %8, %8, %8
  store i32 9, ptr %2, align 4
  br label %75

29:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  store i32 6, ptr %2, align 4
  %30 = load i32, ptr %7, align 4
  %31 = or i32 %30, 68
  store i32 %31, ptr %7, align 4
  store i64 0, ptr %6, align 8
  store i64 0, ptr %5, align 8
  store i64 0, ptr %4, align 8
  store i64 0, ptr %3, align 8
  br label %75

32:                                               ; preds = %8, %8
  store i32 1, ptr %2, align 4
  store i64 1, ptr %5, align 8
  store i64 0, ptr %3, align 8
  store i64 16777215, ptr %4, align 8
  br label %75

33:                                               ; preds = %8
  store i32 1, ptr %2, align 4
  store i64 1, ptr %5, align 8
  store i64 0, ptr %3, align 8
  store i64 65535, ptr %4, align 8
  br label %91

34:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8
  store i32 8, ptr %2, align 4
  br label %75

35:                                               ; preds = %8, %8
  store i32 1, ptr %2, align 4
  %36 = load i32, ptr %7, align 4
  %37 = or i32 %36, 4
  store i32 %37, ptr %7, align 4
  br label %75

38:                                               ; preds = %8
  store i32 5, ptr %2, align 4
  %39 = load i32, ptr %7, align 4
  %40 = or i32 %39, 132
  store i32 %40, ptr %7, align 4
  store i64 0, ptr %6, align 8
  store i64 0, ptr %3, align 8
  store i64 8589934591, ptr %4, align 8
  store i64 1, ptr %5, align 8
  br label %91

41:                                               ; preds = %8
  store i32 5, ptr %2, align 4
  %42 = load i32, ptr %7, align 4
  %43 = or i32 %42, 132
  store i32 %43, ptr %7, align 4
  store i64 0, ptr %6, align 8
  store i64 0, ptr %3, align 8
  store i64 9223372036854775807, ptr %4, align 8
  store i64 1, ptr %5, align 8
  br label %91

44:                                               ; preds = %8
  store i32 5, ptr %2, align 4
  store i64 0, ptr %3, align 8
  store i64 549764202512, ptr %6, align 8
  store i64 281474976710655, ptr %4, align 8
  store i64 1, ptr %5, align 8
  br label %91

45:                                               ; preds = %8
  store i32 5, ptr %2, align 4
  %46 = load i32, ptr %7, align 4
  %47 = or i32 %46, 4
  store i32 %47, ptr %7, align 4
  br label %91

48:                                               ; preds = %8
  store i32 256, ptr %2, align 4
  br label %91

49:                                               ; preds = %8
  store i32 257, ptr %2, align 4
  br label %91

50:                                               ; preds = %8
  store i32 258, ptr %2, align 4
  br label %91

51:                                               ; preds = %8
  store i32 593, ptr %2, align 4
  br label %91

52:                                               ; preds = %8
  store i32 594, ptr %2, align 4
  br label %91

53:                                               ; preds = %8
  store i32 592, ptr %2, align 4
  br label %91

54:                                               ; preds = %8
  store i32 544, ptr %2, align 4
  br label %91

55:                                               ; preds = %8
  store i32 512, ptr %2, align 4
  br label %91

56:                                               ; preds = %8
  store i32 513, ptr %2, align 4
  br label %91

57:                                               ; preds = %8
  store i32 514, ptr %2, align 4
  br label %91

58:                                               ; preds = %8
  store i32 515, ptr %2, align 4
  br label %91

59:                                               ; preds = %8
  store i32 516, ptr %2, align 4
  br label %91

60:                                               ; preds = %8
  store i32 517, ptr %2, align 4
  br label %91

61:                                               ; preds = %8
  store i32 576, ptr %2, align 4
  br label %91

62:                                               ; preds = %8
  store i32 288, ptr %2, align 4
  br label %91

63:                                               ; preds = %8
  store i32 289, ptr %2, align 4
  br label %91

64:                                               ; preds = %8
  store i32 290, ptr %2, align 4
  br label %91

65:                                               ; preds = %8
  store i32 291, ptr %2, align 4
  br label %91

66:                                               ; preds = %8
  store i32 292, ptr %2, align 4
  br label %91

67:                                               ; preds = %8
  store i32 608, ptr %2, align 4
  br label %91

68:                                               ; preds = %8
  store i32 609, ptr %2, align 4
  br label %91

69:                                               ; preds = %8
  store i32 262, ptr %2, align 4
  %70 = load i32, ptr %7, align 4
  %71 = or i32 %70, 4
  store i32 %71, ptr %7, align 4
  br label %91

72:                                               ; preds = %8
  store i32 272, ptr %2, align 4
  br label %91

73:                                               ; preds = %8
  store i32 273, ptr %2, align 4
  br label %91

74:                                               ; preds = %8
  store i32 1, ptr %2, align 4
  br label %75

75:                                               ; preds = %74, %35, %34, %32, %29, %28, %27, %25, %22, %14, %10
  switch i32 %0, label %91 [
    i32 10029413, label %76
    i32 10029417, label %76
    i32 10029518, label %76
    i32 10029514, label %76
    i32 10029312, label %76
    i32 9963781, label %79
    i32 9963782, label %79
    i32 9963783, label %79
    i32 9963784, label %79
    i32 9963776, label %79
    i32 9963777, label %79
    i32 9963778, label %79
    i32 9963779, label %79
    i32 9963790, label %79
    i32 9963791, label %79
    i32 9963792, label %79
    i32 9963803, label %79
    i32 9963812, label %79
    i32 10160385, label %79
    i32 10160449, label %79
    i32 10160450, label %79
    i32 10160465, label %79
    i32 10160466, label %79
    i32 10160467, label %79
    i32 10160468, label %79
    i32 10160481, label %79
    i32 10160482, label %79
    i32 10160497, label %79
    i32 10160498, label %79
    i32 10619168, label %79
    i32 10619178, label %79
    i32 10619188, label %79
    i32 10619198, label %79
    i32 10619148, label %79
    i32 10684674, label %79
    i32 10094852, label %82
    i32 10094853, label %82
    i32 10094859, label %82
    i32 10094866, label %82
    i32 10094862, label %82
    i32 10225925, label %85
    i32 10094878, label %85
    i32 10225932, label %85
    i32 10488065, label %85
    i32 10488066, label %85
    i32 10488067, label %85
    i32 10488164, label %85
    i32 10488166, label %85
    i32 10553603, label %85
    i32 10553604, label %85
    i32 10553605, label %85
    i32 10553606, label %85
    i32 10553607, label %85
    i32 10553608, label %85
    i32 10094882, label %85
    i32 10094883, label %85
    i32 10619227, label %88
  ]

76:                                               ; preds = %75, %75, %75, %75, %75
  %77 = load i32, ptr %7, align 4
  %78 = or i32 %77, 8
  store i32 %78, ptr %7, align 4
  br label %91

79:                                               ; preds = %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75
  %80 = load i32, ptr %7, align 4
  %81 = or i32 %80, 32
  store i32 %81, ptr %7, align 4
  br label %91

82:                                               ; preds = %75, %75, %75, %75, %75
  %83 = load i32, ptr %7, align 4
  %84 = or i32 %83, 576
  store i32 %84, ptr %7, align 4
  br label %91

85:                                               ; preds = %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75, %75
  %86 = load i32, ptr %7, align 4
  %87 = or i32 %86, 4
  store i32 %87, ptr %7, align 4
  br label %91

88:                                               ; preds = %75
  %89 = load i32, ptr %7, align 4
  %90 = or i32 %89, 128
  store i32 %90, ptr %7, align 4
  br label %91

91:                                               ; preds = %88, %85, %82, %79, %76, %75, %73, %72, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %45, %44, %41, %38, %33, %26, %19, %16, %15, %11
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
