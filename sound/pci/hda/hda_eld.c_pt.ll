; ModuleID = '/llk/IR/sound/pci/hda/hda_eld.c_pt.bc'
source_filename = "../sound/pci/hda/hda_eld.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.parsed_hdmi_eld = type { i32, i32, i32, [17 x i8], i32, i32, i64, i32, i32, i32, i32, i32, i32, [16 x %struct.cea_sad] }
%struct.cea_sad = type { i32, i32, i32, i32, i32, i32 }
%struct.hdmi_eld = type { i8, i8, i32, [256 x i8], %struct.parsed_hdmi_eld }
%struct.hda_pcm_stream = type { i32, i32, i32, i16, i32, i64, i32, ptr, %struct.hda_pcm_ops }
%struct.hda_pcm_ops = type { ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [30 x i8] c"HDMI: Unknown ELD version %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"HDMI: MNL is reserved value %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"HDMI: out of range MNL %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"HDMI: out of range SAD %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"HDMI: ELD buf size is 0, force 128\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"HDMI: invalid ELD buf size %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"HDMI: invalid ELD data byte %d\0A\00", align 1
@snd_hdmi_print_eld_info.eld_version_names = internal unnamed_addr constant [32 x ptr] [ptr @.str.7, ptr @.str.7, ptr @.str.8, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.9], align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"CEA-861D or below\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"partial\00", align 1
@snd_hdmi_print_eld_info.cea_edid_version_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7], align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"no CEA EDID Timing Extension block present\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"CEA-861\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"CEA-861-A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"CEA-861-B, C or D\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"monitor_present\09\09%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"eld_valid\09\09%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"monitor_name\09\09%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"connection_type\09\09%s\0A\00", align 1
@eld_connection_type_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], align 4
@.str.18 = private unnamed_addr constant [24 x i8] c"eld_version\09\09[0x%x] %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"edid_version\09\09[0x%x] %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"manufacture_id\09\090x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"product_id\09\090x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"port_id\09\09\090x%llx\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"support_hdcp\09\09%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"support_ai\09\09%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"audio_sync_delay\09%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"speakers\09\09[0x%x]%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"sad_count\09\09%d\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%s %llx\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"monitor_present\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"eld_valid\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"connection_type\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"port_id\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"support_hdcp\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"support_ai\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"audio_sync_delay\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"speakers\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sad_count\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"sad\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"_coding_type\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"_channels\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"_rates\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"_bits\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"_max_bitrate\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"_profile\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"HDMI ATI/AMD: no speaker allocation for ELD\0A\00", align 1
@.str.46 = private unnamed_addr constant [63 x i8] c"HDMI ATI/AMD: Truncating HDMI sink description with length %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"HDMI ATI/AMD: no audio descriptors for ELD\0A\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"HDMI: audio coding type 0 not expected\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"HDMI: audio coding xtype %d not expected\0A\00", align 1
@__const.hdmi_show_short_audio_desc.buf2 = private unnamed_addr constant [24 x i8] c", bits =\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c", max bitrate = %d\00", align 1
@hdmi_print_pcm_rates.alsa_rates = internal unnamed_addr constant [14 x i32] [i32 5512, i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 176400, i32 192000, i32 384000], align 4
@.str.51 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"DisplayPort\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"2-reserved\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"3-reserved\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"sad%d_coding_type\09[0x%x] %s\0A\00", align 1
@cea_audio_coding_type_names = internal unnamed_addr constant [18 x ptr] [ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], align 4
@.str.57 = private unnamed_addr constant [20 x i8] c"sad%d_channels\09\09%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"sad%d_rates\09\09[0x%x]%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [22 x i8] c"sad%d_bits\09\09[0x%x]%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"sad%d_max_bitrate\09%d\0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"sad%d_profile\09\09%d\0A\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"LPCM\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"AC-3\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"MPEG1\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"MP3\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"MPEG2\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"AAC-LC\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"DTS\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"ATRAC\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"DSD (One Bit Audio)\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"E-AC-3/DD+ (Dolby Digital Plus)\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"DTS-HD\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"MLP (Dolby TrueHD)\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"DST\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"WMAPro\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"HE-AAC\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"HE-AACv2\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"MPEG Surround\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdmi_parse_eld(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(456) %1, i8 0, i32 456, i1 false)
  %5 = load i8, ptr %2, align 1
  %6 = lshr i8 %5, 3
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = trunc i8 %6 to i5
  switch i5 %9, label %10 [
    i5 2, label %11
    i5 -1, label %11
  ]

10:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %7) #11
  br label %157

11:                                               ; preds = %4, %4
  %12 = getelementptr i8, ptr %2, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, ptr %1, align 8
  %15 = getelementptr i8, ptr %2, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 31
  %19 = lshr i32 %17, 5
  %20 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 2
  store i32 %19, ptr %20, align 8
  %21 = getelementptr i8, ptr %2, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 7
  store i32 %24, ptr %25, align 8
  %26 = load i8, ptr %21, align 1
  %27 = lshr i8 %26, 1
  %28 = and i8 %27, 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 8
  store i32 %29, ptr %30, align 4
  %31 = load i8, ptr %21, align 1
  %32 = lshr i8 %31, 2
  %33 = and i8 %32, 3
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 9
  store i32 %34, ptr %35, align 8
  %36 = load i8, ptr %21, align 1
  %37 = lshr i8 %36, 4
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 12
  store i32 %38, ptr %39, align 4
  %40 = getelementptr i8, ptr %2, i32 6
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 1
  %44 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 10
  store i32 %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %2, i32 7
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 127
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 11
  store i32 %48, ptr %49, align 8
  %50 = getelementptr i8, ptr %2, i32 8
  %51 = load i64, ptr %50, align 1
  %52 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 6
  store i64 %51, ptr %52, align 8
  %53 = getelementptr i8, ptr %2, i32 16
  %54 = load i16, ptr %53, align 1
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 4
  store i32 %55, ptr %56, align 8
  %57 = getelementptr i8, ptr %2, i32 18
  %58 = load i16, ptr %57, align 1
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 5
  store i32 %59, ptr %60, align 4
  %61 = icmp ugt i32 %18, 16
  br i1 %61, label %62, label %63

62:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %18) #11
  br label %157

63:                                               ; preds = %11
  %64 = add nuw nsw i32 %18, 20
  %65 = icmp sgt i32 %64, %3
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %18) #11
  br label %157

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 3
  %69 = getelementptr i8, ptr %2, i32 20
  %70 = add nuw nsw i32 %18, 1
  %71 = tail call i32 @strscpy(ptr noundef %68, ptr noundef %69, i32 noundef %70) #12
  %72 = load i32, ptr %39, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %153

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 13
  %76 = getelementptr i8, ptr %69, i32 %18
  br label %77

77:                                               ; preds = %150, %74
  %78 = phi i32 [ 0, %74 ], [ %79, %150 ]
  %79 = add nuw nsw i32 %78, 1
  %80 = mul i32 %79, 3
  %81 = add i32 %80, %64
  %82 = icmp sgt i32 %81, %3
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %78) #11
  br label %157

84:                                               ; preds = %77
  %85 = getelementptr %struct.cea_sad, ptr %75, i32 %78
  %86 = mul i32 %78, 3
  %87 = getelementptr i8, ptr %76, i32 %86
  %88 = getelementptr i8, ptr %87, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = and i8 %89, 127
  %91 = zext i8 %90 to i32
  %92 = getelementptr %struct.cea_sad, ptr %75, i32 %78, i32 2
  %93 = shl nuw nsw i32 %91, 5
  %94 = and i32 %93, 224
  %95 = shl nuw nsw i32 %91, 6
  %96 = and i32 %95, 512
  %97 = or i32 %96, %94
  %98 = and i32 %95, 1024
  %99 = or i32 %97, %98
  %100 = and i32 %95, 2048
  %101 = or i32 %99, %100
  %102 = and i32 %95, 4096
  %103 = or i32 %101, %102
  store i32 %103, ptr %92, align 4
  %104 = load i8, ptr %87, align 1
  %105 = and i8 %104, 7
  %106 = add nuw nsw i8 %105, 1
  %107 = zext i8 %106 to i32
  store i32 %107, ptr %85, align 4
  %108 = getelementptr %struct.cea_sad, ptr %75, i32 %78, i32 3
  store i32 0, ptr %108, align 4
  %109 = getelementptr %struct.cea_sad, ptr %75, i32 %78, i32 4
  store i32 0, ptr %109, align 4
  %110 = load i8, ptr %87, align 1
  %111 = lshr i8 %110, 3
  %112 = and i8 %111, 15
  %113 = zext i8 %112 to i32
  %114 = getelementptr %struct.cea_sad, ptr %75, i32 %78, i32 1
  store i32 %113, ptr %114, align 4
  switch i32 %113, label %150 [
    i32 0, label %115
    i32 1, label %116
    i32 2, label %121
    i32 3, label %121
    i32 4, label %121
    i32 5, label %121
    i32 6, label %121
    i32 7, label %121
    i32 8, label %121
    i32 15, label %132
    i32 14, label %126
  ]

115:                                              ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.48) #11
  br label %150

116:                                              ; preds = %84
  %117 = getelementptr i8, ptr %87, i32 2
  %118 = load i8, ptr %117, align 1
  %119 = and i8 %118, 7
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %150, label %142

121:                                              ; preds = %84, %84, %84, %84, %84, %84, %84
  %122 = getelementptr i8, ptr %87, i32 2
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = mul nuw nsw i32 %124, 8000
  store i32 %125, ptr %109, align 4
  br label %150

126:                                              ; preds = %84
  %127 = getelementptr i8, ptr %87, i32 2
  %128 = load i8, ptr %127, align 1
  %129 = and i8 %128, 7
  %130 = zext i8 %129 to i32
  %131 = getelementptr %struct.cea_sad, ptr %75, i32 %78, i32 5
  store i32 %130, ptr %131, align 4
  br label %150

132:                                              ; preds = %84
  %133 = getelementptr i8, ptr %87, i32 2
  %134 = load i8, ptr %133, align 1
  %135 = lshr i8 %134, 3
  %136 = zext i8 %135 to i32
  store i32 %136, ptr %114, align 4
  %137 = add i8 %134, -32
  %138 = icmp ult i8 %137, -24
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %136) #11
  store i32 0, ptr %114, align 4
  br label %150

140:                                              ; preds = %132
  %141 = add nuw nsw i32 %136, 14
  store i32 %141, ptr %114, align 4
  br label %150

142:                                              ; preds = %116
  %143 = zext i8 %119 to i32
  %144 = and i32 %143, 4
  %145 = icmp eq i32 %144, 0
  %146 = shl nuw nsw i32 %143, 17
  %147 = and i32 %146, 393216
  %148 = or i32 %146, 524288
  %149 = select i1 %145, i32 %147, i32 %148
  store i32 %149, ptr %108, align 4
  br label %150

150:                                              ; preds = %142, %140, %139, %126, %121, %116, %115, %84
  %151 = load i32, ptr %39, align 4
  %152 = icmp slt i32 %79, %151
  br i1 %152, label %77, label %153

153:                                              ; preds = %150, %67
  %154 = load i32, ptr %49, align 8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 65535, ptr %49, align 8
  br label %157

157:                                              ; preds = %156, %153, %83, %66, %62, %10
  %158 = phi i32 [ 0, %156 ], [ 0, %153 ], [ -22, %83 ], [ -22, %66 ], [ -22, %62 ], [ -22, %10 ]
  ret i32 %158
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdmi_get_eld_size(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3886, i32 noundef 8) #12
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdmi_get_eld(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3886, i32 noundef 8) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  br label %11

8:                                                ; preds = %4
  %9 = add i32 %5, -257
  %10 = icmp ult i32 %9, -237
  br i1 %10, label %13, label %11

11:                                               ; preds = %8, %7
  %12 = phi i32 [ 128, %7 ], [ %5, %8 ]
  br label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %5) #11
  br label %29

14:                                               ; preds = %23, %11
  %15 = phi i32 [ %26, %23 ], [ 0, %11 ]
  %16 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3887, i32 noundef %15) #12
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %15) #11
  br label %29

19:                                               ; preds = %14
  %20 = and i32 %16, 255
  %21 = or i32 %20, %15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = trunc i32 %16 to i8
  %25 = getelementptr i8, ptr %2, i32 %15
  store i8 %24, ptr %25, align 1
  %26 = add nuw nsw i32 %15, 1
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %28, label %14

28:                                               ; preds = %23
  store i32 %12, ptr %3, align 4
  br label %29

29:                                               ; preds = %28, %19, %18, %13
  %30 = phi i32 [ -34, %13 ], [ 0, %28 ], [ -22, %18 ], [ -22, %19 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdmi_show_eld(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [80 x i8], align 1
  %4 = alloca [24 x i8], align 1
  %5 = alloca [80 x i8], align 1
  %6 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %5, i8 0, i32 80, i1 false), !annotation !8
  call void @snd_hdac_print_channel_allocation(i32 noundef %7, ptr noundef nonnull %5, i32 noundef 80) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #12
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %1, i32 0, i32 13
  %16 = getelementptr inbounds i8, ptr %4, i32 8
  br label %17

17:                                               ; preds = %55, %14
  %18 = phi i32 [ 0, %14 ], [ %56, %55 ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %3, i8 0, i32 80, i1 false) #12, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(24) @__const.hdmi_show_short_audio_desc.buf2, i32 24, i1 false) #12
  %19 = getelementptr %struct.cea_sad, ptr %15, i32 %18, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %55, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.cea_sad, ptr %15, i32 %18, i32 2
  %24 = load i32, ptr %23, align 4
  br label %25

25:                                               ; preds = %38, %22
  %26 = phi i32 [ 0, %22 ], [ %39, %38 ]
  %27 = phi i32 [ 0, %22 ], [ %40, %38 ]
  %28 = shl nuw nsw i32 1, %27
  %29 = and i32 %28, %24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %3, i32 %26
  %33 = sub i32 80, %26
  %34 = getelementptr [14 x i32], ptr @hdmi_print_pcm_rates.alsa_rates, i32 0, i32 %27
  %35 = load i32, ptr %34, align 4
  %36 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %32, i32 noundef %33, ptr noundef nonnull @.str.51, i32 noundef %35) #12
  %37 = add i32 %36, %26
  br label %38

38:                                               ; preds = %31, %25
  %39 = phi i32 [ %37, %31 ], [ %26, %25 ]
  %40 = add nuw nsw i32 %27, 1
  %41 = icmp eq i32 %40, 14
  br i1 %41, label %42, label %25

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %3, i32 %39
  store i8 0, ptr %43, align 1
  %44 = load i32, ptr %19, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = getelementptr %struct.cea_sad, ptr %15, i32 %18, i32 3
  %48 = load i32, ptr %47, align 4
  call void @snd_print_pcm_bits(i32 noundef %48, ptr noundef %16, i32 noundef 16) #12
  br label %55

49:                                               ; preds = %42
  %50 = getelementptr %struct.cea_sad, ptr %15, i32 %18, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 24, ptr noundef nonnull @.str.50, i32 noundef %51) #12
  br label %55

55:                                               ; preds = %53, %49, %46, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #12
  %56 = add nuw nsw i32 %18, 1
  %57 = load i32, ptr %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %17, label %59

59:                                               ; preds = %55, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_print_channel_allocation(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdmi_print_eld_info(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca [80 x i8], align 1
  %4 = alloca [80 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %4, i8 0, i32 80, i1 false), !annotation !8
  %5 = load ptr, ptr %1, align 4
  %6 = load i8, ptr %0, align 8, !range !9
  %7 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.14, i32 noundef %7) #12
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %11) #12
  %12 = load i8, ptr %9, align 1, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %117, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.16, ptr noundef %16) #12
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 9
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr [4 x ptr], ptr @eld_connection_type_names, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.17, ptr noundef %21) #12
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [32 x ptr], ptr @snd_hdmi_print_eld_info.eld_version_names, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.18, i32 noundef %24, ptr noundef %26) #12
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = getelementptr [8 x ptr], ptr @snd_hdmi_print_eld_info.cea_edid_version_names, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.19, i32 noundef %29, ptr noundef %31) #12
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 4
  %34 = load i32, ptr %33, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.20, i32 noundef %34) #12
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 5
  %37 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %35, ptr noundef nonnull @.str.21, i32 noundef %37) #12
  %38 = load ptr, ptr %1, align 4
  %39 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 6
  %40 = load i64, ptr %39, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.22, i64 noundef %40) #12
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 7
  %43 = load i32, ptr %42, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.23, i32 noundef %43) #12
  %44 = load ptr, ptr %1, align 4
  %45 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 8
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.24, i32 noundef %46) #12
  %47 = load ptr, ptr %1, align 4
  %48 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 10
  %49 = load i32, ptr %48, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %47, ptr noundef nonnull @.str.25, i32 noundef %49) #12
  %50 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 11
  %51 = load i32, ptr %50, align 8
  call void @snd_hdac_print_channel_allocation(i32 noundef %51, ptr noundef nonnull %4, i32 noundef 80) #12
  %52 = load ptr, ptr %1, align 4
  %53 = load i32, ptr %50, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.26, i32 noundef %53, ptr noundef nonnull %4) #12
  %54 = load ptr, ptr %1, align 4
  %55 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 12
  %56 = load i32, ptr %55, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %54, ptr noundef nonnull @.str.27, i32 noundef %56) #12
  %57 = load i32, ptr %55, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %117

59:                                               ; preds = %14
  %60 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 13
  br label %61

61:                                               ; preds = %113, %59
  %62 = phi i32 [ 0, %59 ], [ %114, %113 ]
  %63 = getelementptr %struct.cea_sad, ptr %60, i32 %62
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %3, i8 0, i32 80, i1 false) #12, !annotation !8
  %64 = load ptr, ptr %1, align 4
  %65 = getelementptr %struct.cea_sad, ptr %60, i32 %62, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr [18 x ptr], ptr @cea_audio_coding_type_names, i32 0, i32 %66
  %68 = load ptr, ptr %67, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %64, ptr noundef nonnull @.str.56, i32 noundef %62, i32 noundef %66, ptr noundef %68) #12
  %69 = load ptr, ptr %1, align 4
  %70 = load i32, ptr %63, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %69, ptr noundef nonnull @.str.57, i32 noundef %62, i32 noundef %70) #12
  %71 = getelementptr %struct.cea_sad, ptr %60, i32 %62, i32 2
  %72 = load i32, ptr %71, align 4
  br label %73

73:                                               ; preds = %86, %61
  %74 = phi i32 [ 0, %61 ], [ %87, %86 ]
  %75 = phi i32 [ 0, %61 ], [ %88, %86 ]
  %76 = shl nuw nsw i32 1, %75
  %77 = and i32 %76, %72
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = getelementptr i8, ptr %3, i32 %74
  %81 = sub i32 80, %74
  %82 = getelementptr [14 x i32], ptr @hdmi_print_pcm_rates.alsa_rates, i32 0, i32 %75
  %83 = load i32, ptr %82, align 4
  %84 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %80, i32 noundef %81, ptr noundef nonnull @.str.51, i32 noundef %83) #12
  %85 = add i32 %84, %74
  br label %86

86:                                               ; preds = %79, %73
  %87 = phi i32 [ %85, %79 ], [ %74, %73 ]
  %88 = add nuw nsw i32 %75, 1
  %89 = icmp eq i32 %88, 14
  br i1 %89, label %90, label %73

90:                                               ; preds = %86
  %91 = getelementptr i8, ptr %3, i32 %87
  store i8 0, ptr %91, align 1
  %92 = load ptr, ptr %1, align 4
  %93 = load i32, ptr %71, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %92, ptr noundef nonnull @.str.58, i32 noundef %62, i32 noundef %93, ptr noundef nonnull %3) #12
  %94 = load i32, ptr %65, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = getelementptr %struct.cea_sad, ptr %60, i32 %62, i32 3
  %98 = load i32, ptr %97, align 4
  call void @snd_print_pcm_bits(i32 noundef %98, ptr noundef nonnull %3, i32 noundef 80) #12
  %99 = load ptr, ptr %1, align 4
  %100 = load i32, ptr %97, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %99, ptr noundef nonnull @.str.59, i32 noundef %62, i32 noundef %100, ptr noundef nonnull %3) #12
  br label %101

101:                                              ; preds = %96, %90
  %102 = getelementptr %struct.cea_sad, ptr %60, i32 %62, i32 4
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %106, ptr noundef nonnull @.str.60, i32 noundef %62, i32 noundef %103) #12
  br label %107

107:                                              ; preds = %105, %101
  %108 = getelementptr %struct.cea_sad, ptr %60, i32 %62, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %112, ptr noundef nonnull @.str.61, i32 noundef %62, i32 noundef %109) #12
  br label %113

113:                                              ; preds = %111, %107
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #12
  %114 = add nuw nsw i32 %62, 1
  %115 = load i32, ptr %55, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %61, label %117

117:                                              ; preds = %113, %14, %2
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdmi_write_eld_info(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [64 x i8], align 1
  %4 = alloca [64 x i8], align 1
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !8
  %6 = call i32 @snd_info_get_line(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 64) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %145

8:                                                ; preds = %2
  %9 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 3
  %10 = getelementptr inbounds [64 x i8], ptr %4, i32 0, i32 4
  %11 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 12
  %12 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 11
  %13 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 10
  %14 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 8
  %15 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 7
  %16 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 6
  %17 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 9
  %18 = getelementptr inbounds %struct.hdmi_eld, ptr %0, i32 0, i32 1
  br label %19

19:                                               ; preds = %142, %8
  %20 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.28, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %142

22:                                               ; preds = %19
  %23 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %4, ptr noundef nonnull dereferenceable(16) @.str.29, i32 16)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, ptr %5, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i8
  store i8 %28, ptr %0, align 8
  br label %142

29:                                               ; preds = %22
  %30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %4, ptr noundef nonnull dereferenceable(10) @.str.30, i32 10)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, ptr %5, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i8
  store i8 %35, ptr %18, align 1
  br label %142

36:                                               ; preds = %29
  %37 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %4, ptr noundef nonnull dereferenceable(16) @.str.31, i32 16)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, ptr %5, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %17, align 8
  br label %142

42:                                               ; preds = %36
  %43 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %4, ptr noundef nonnull dereferenceable(8) @.str.32, i32 8)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i64, ptr %5, align 8
  store i64 %46, ptr %16, align 8
  br label %142

47:                                               ; preds = %42
  %48 = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %4, ptr noundef nonnull dereferenceable(13) @.str.33, i32 13)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, ptr %5, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %15, align 8
  br label %142

53:                                               ; preds = %47
  %54 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %4, ptr noundef nonnull dereferenceable(11) @.str.34, i32 11)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, ptr %5, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, ptr %14, align 4
  br label %142

59:                                               ; preds = %53
  %60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %4, ptr noundef nonnull dereferenceable(17) @.str.35, i32 17)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, ptr %5, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, ptr %13, align 4
  br label %142

65:                                               ; preds = %59
  %66 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %4, ptr noundef nonnull dereferenceable(9) @.str.36, i32 9)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, ptr %5, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, ptr %12, align 8
  br label %142

71:                                               ; preds = %65
  %72 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %4, ptr noundef nonnull dereferenceable(10) @.str.37, i32 10)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, ptr %5, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, ptr %11, align 4
  br label %142

77:                                               ; preds = %71
  %78 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.38, i32 3)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %142

80:                                               ; preds = %77
  %81 = load i8, ptr %9, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %82, -48
  %84 = load i8, ptr %10, align 1
  %85 = add i8 %84, -48
  %86 = icmp ult i8 %85, 10
  %87 = zext i8 %84 to i32
  %88 = mul nsw i32 %83, 10
  %89 = add nsw i32 %87, -48
  %90 = add nsw i32 %89, %88
  %91 = select i1 %86, i32 5, i32 4
  %92 = getelementptr inbounds i8, ptr %4, i32 %91
  %93 = select i1 %86, i32 %90, i32 %83
  %94 = icmp ugt i32 %93, 15
  br i1 %94, label %142, label %95

95:                                               ; preds = %80
  %96 = call i32 @strcmp(ptr noundef %92, ptr noundef nonnull dereferenceable(13) @.str.39)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i64, ptr %5, align 8
  %100 = trunc i64 %99 to i32
  %101 = getelementptr %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 13, i32 %93, i32 1
  store i32 %100, ptr %101, align 4
  br label %137

102:                                              ; preds = %95
  %103 = call i32 @strcmp(ptr noundef %92, ptr noundef nonnull dereferenceable(10) @.str.40)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i64, ptr %5, align 8
  %107 = trunc i64 %106 to i32
  %108 = getelementptr %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 13, i32 %93
  store i32 %107, ptr %108, align 8
  br label %137

109:                                              ; preds = %102
  %110 = call i32 @strcmp(ptr noundef %92, ptr noundef nonnull dereferenceable(7) @.str.41)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i64, ptr %5, align 8
  %114 = trunc i64 %113 to i32
  %115 = getelementptr %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 13, i32 %93, i32 2
  store i32 %114, ptr %115, align 8
  br label %137

116:                                              ; preds = %109
  %117 = call i32 @strcmp(ptr noundef %92, ptr noundef nonnull dereferenceable(6) @.str.42)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i64, ptr %5, align 8
  %121 = trunc i64 %120 to i32
  %122 = getelementptr %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 13, i32 %93, i32 3
  store i32 %121, ptr %122, align 4
  br label %137

123:                                              ; preds = %116
  %124 = call i32 @strcmp(ptr noundef %92, ptr noundef nonnull dereferenceable(13) @.str.43)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i64, ptr %5, align 8
  %128 = trunc i64 %127 to i32
  %129 = getelementptr %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 13, i32 %93, i32 4
  store i32 %128, ptr %129, align 8
  br label %137

130:                                              ; preds = %123
  %131 = call i32 @strcmp(ptr noundef %92, ptr noundef nonnull dereferenceable(9) @.str.44)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i64, ptr %5, align 8
  %135 = trunc i64 %134 to i32
  %136 = getelementptr %struct.hdmi_eld, ptr %0, i32 0, i32 4, i32 13, i32 %93, i32 5
  store i32 %135, ptr %136, align 4
  br label %137

137:                                              ; preds = %133, %130, %126, %119, %112, %105, %98
  %138 = load i32, ptr %11, align 4
  %139 = icmp ult i32 %93, %138
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = add nuw nsw i32 %93, 1
  store i32 %141, ptr %11, align 4
  br label %142

142:                                              ; preds = %140, %137, %80, %77, %74, %68, %62, %56, %50, %45, %39, %32, %25, %19
  %143 = call i32 @snd_info_get_line(ptr noundef %1, ptr noundef nonnull %3, i32 noundef 64) #12
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %19, label %145

145:                                              ; preds = %142, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdmi_eld_update_pcm_info(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.parsed_hdmi_eld, ptr %0, i32 0, i32 12
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %40

6:                                                ; preds = %35, %2
  %7 = phi i32 [ %15, %35 ], [ 224, %2 ]
  %8 = phi i64 [ %37, %35 ], [ 4, %2 ]
  %9 = phi i32 [ %36, %35 ], [ 16, %2 ]
  %10 = phi i32 [ %17, %35 ], [ 2, %2 ]
  %11 = phi i32 [ %38, %35 ], [ 0, %2 ]
  %12 = getelementptr %struct.parsed_hdmi_eld, ptr %0, i32 0, i32 13, i32 %11
  %13 = getelementptr %struct.parsed_hdmi_eld, ptr %0, i32 0, i32 13, i32 %11, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = or i32 %14, %7
  %16 = load i32, ptr %12, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %10)
  %18 = getelementptr %struct.parsed_hdmi_eld, ptr %0, i32 0, i32 13, i32 %11, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %35

21:                                               ; preds = %6
  %22 = getelementptr %struct.parsed_hdmi_eld, ptr %0, i32 0, i32 13, i32 %11, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 262144
  %25 = icmp eq i32 %24, 0
  %26 = or i64 %8, 1024
  %27 = tail call i32 @llvm.umax.i32(i32 %9, i32 20)
  %28 = select i1 %25, i32 %9, i32 %27
  %29 = and i32 %23, 524288
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 %28, i32 24
  %32 = and i32 %23, 786432
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i64 %8, i64 %26
  br label %35

35:                                               ; preds = %21, %6
  %36 = phi i32 [ %9, %6 ], [ %31, %21 ]
  %37 = phi i64 [ %8, %6 ], [ %34, %21 ]
  %38 = add nuw nsw i32 %11, 1
  %39 = icmp eq i32 %38, %4
  br i1 %39, label %40, label %6

40:                                               ; preds = %35, %2
  %41 = phi i32 [ 2, %2 ], [ %17, %35 ]
  %42 = phi i32 [ 16, %2 ], [ %36, %35 ]
  %43 = phi i64 [ 4, %2 ], [ %37, %35 ]
  %44 = phi i32 [ 224, %2 ], [ %15, %35 ]
  %45 = getelementptr inbounds %struct.hda_pcm_stream, ptr %1, i32 0, i32 4
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, %44
  store i32 %47, ptr %45, align 8
  %48 = getelementptr inbounds %struct.hda_pcm_stream, ptr %1, i32 0, i32 5
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, %43
  store i64 %50, ptr %48, align 8
  %51 = getelementptr inbounds %struct.hda_pcm_stream, ptr %1, i32 0, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = tail call i32 @llvm.umin.i32(i32 %52, i32 %42)
  store i32 %53, ptr %51, align 8
  %54 = getelementptr inbounds %struct.hda_pcm_stream, ptr %1, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %41)
  store i32 %56, ptr %54, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdmi_get_eld_ati(ptr noundef %0, i16 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3952, i32 noundef 0) #12
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.45) #11
  br label %171

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %2, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(84) %10, i8 0, i32 83, i1 false)
  store i8 16, ptr %2, align 1
  %11 = trunc i32 %6 to i8
  %12 = and i8 %11, 127
  %13 = getelementptr i8, ptr %2, i32 7
  store i8 %12, ptr %13, align 1
  %14 = and i32 %6, 512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = getelementptr i8, ptr %2, i32 5
  store i8 4, ptr %17, align 1
  br label %18

18:                                               ; preds = %16, %9
  br i1 %4, label %19, label %60

19:                                               ; preds = %18
  %20 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1920, i32 noundef 3) #12
  %21 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #12
  %22 = getelementptr i8, ptr %2, i32 8
  store i32 %21, ptr %22, align 1
  %23 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1920, i32 noundef 4) #12
  %24 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #12
  %25 = getelementptr i8, ptr %2, i32 12
  store i32 %24, ptr %25, align 1
  %26 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1920, i32 noundef 0) #12
  %27 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #12
  %28 = trunc i32 %27 to i16
  %29 = getelementptr i8, ptr %2, i32 16
  store i16 %28, ptr %29, align 1
  %30 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1920, i32 noundef 1) #12
  %31 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #12
  %32 = trunc i32 %31 to i16
  %33 = getelementptr i8, ptr %2, i32 18
  store i16 %32, ptr %33, align 1
  %34 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1920, i32 noundef 2) #12
  %35 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #12
  %36 = icmp sgt i32 %35, 16
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %35) #11
  %38 = getelementptr i8, ptr %2, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = or i8 %39, 16
  store i8 %40, ptr %38, align 1
  br label %47

41:                                               ; preds = %19
  %42 = getelementptr i8, ptr %2, i32 4
  %43 = load i8, ptr %42, align 1
  %44 = trunc i32 %35 to i8
  %45 = or i8 %43, %44
  store i8 %45, ptr %42, align 1
  %46 = icmp sgt i32 %35, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %41, %37
  %48 = phi i32 [ 16, %37 ], [ %35, %41 ]
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i32 [ %58, %49 ], [ 0, %47 ]
  %51 = phi i32 [ %56, %49 ], [ 20, %47 ]
  %52 = add nuw nsw i32 %50, 5
  %53 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1920, i32 noundef %52) #12
  %54 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3969, i32 noundef 0) #12
  %55 = trunc i32 %54 to i8
  %56 = add nuw nsw i32 %51, 1
  %57 = getelementptr i8, ptr %2, i32 %51
  store i8 %55, ptr %57, align 1
  %58 = add nuw nsw i32 %50, 1
  %59 = icmp eq i32 %58, %48
  br i1 %59, label %60, label %49

60:                                               ; preds = %49, %41, %18
  %61 = phi i32 [ 0, %18 ], [ %35, %41 ], [ %48, %49 ]
  %62 = phi i32 [ 20, %18 ], [ 20, %41 ], [ %56, %49 ]
  %63 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1910, i32 noundef 8) #12
  %64 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3958, i32 noundef 0) #12
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %102, label %66

66:                                               ; preds = %60
  %67 = and i32 %64, 65280
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %66
  %70 = trunc i32 %64 to i8
  %71 = add i32 %62, 1
  %72 = getelementptr i8, ptr %2, i32 %62
  store i8 %70, ptr %72, align 1
  %73 = lshr exact i32 %67, 8
  %74 = trunc i32 %73 to i8
  %75 = add i32 %62, 2
  %76 = getelementptr i8, ptr %2, i32 %71
  store i8 %74, ptr %76, align 1
  %77 = lshr i32 %64, 16
  %78 = trunc i32 %77 to i8
  %79 = add i32 %62, 3
  %80 = getelementptr i8, ptr %2, i32 %75
  store i8 %78, ptr %80, align 1
  br label %81

81:                                               ; preds = %69, %66
  %82 = phi i32 [ %79, %69 ], [ %62, %66 ]
  %83 = and i32 %64, -16777216
  %84 = icmp eq i32 %83, 0
  %85 = lshr exact i32 %83, 16
  %86 = icmp eq i32 %85, %67
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %102, label %88

88:                                               ; preds = %81
  %89 = trunc i32 %64 to i8
  %90 = and i8 %89, -8
  %91 = or i8 %90, 1
  %92 = add i32 %82, 1
  %93 = getelementptr i8, ptr %2, i32 %82
  store i8 %91, ptr %93, align 1
  %94 = lshr i32 %64, 24
  %95 = trunc i32 %94 to i8
  %96 = add i32 %82, 2
  %97 = getelementptr i8, ptr %2, i32 %92
  store i8 %95, ptr %97, align 1
  %98 = lshr i32 %64, 16
  %99 = trunc i32 %98 to i8
  %100 = add i32 %82, 3
  %101 = getelementptr i8, ptr %2, i32 %96
  store i8 %99, ptr %101, align 1
  br label %102

102:                                              ; preds = %88, %81, %60
  %103 = phi i32 [ %100, %88 ], [ %82, %81 ], [ %62, %60 ]
  br label %104

104:                                              ; preds = %129, %102
  %105 = phi i32 [ %131, %129 ], [ 2, %102 ]
  %106 = phi i32 [ %130, %129 ], [ %103, %102 ]
  %107 = and i32 %105, 2147483643
  %108 = icmp eq i32 %107, 9
  br i1 %108, label %129, label %109

109:                                              ; preds = %104
  %110 = shl i32 %105, 3
  %111 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1910, i32 noundef %110) #12
  %112 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3958, i32 noundef 0) #12
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %129, label %114

114:                                              ; preds = %109
  %115 = and i32 %112, 65280
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %114
  %118 = trunc i32 %112 to i8
  %119 = add i32 %106, 1
  %120 = getelementptr i8, ptr %2, i32 %106
  store i8 %118, ptr %120, align 1
  %121 = lshr exact i32 %115, 8
  %122 = trunc i32 %121 to i8
  %123 = add i32 %106, 2
  %124 = getelementptr i8, ptr %2, i32 %119
  store i8 %122, ptr %124, align 1
  %125 = lshr i32 %112, 16
  %126 = trunc i32 %125 to i8
  %127 = add i32 %106, 3
  %128 = getelementptr i8, ptr %2, i32 %123
  store i8 %126, ptr %128, align 1
  br label %129

129:                                              ; preds = %117, %114, %109, %104
  %130 = phi i32 [ %106, %104 ], [ %106, %109 ], [ %127, %117 ], [ %106, %114 ]
  %131 = add nuw nsw i32 %105, 1
  %132 = icmp eq i32 %131, 15
  br i1 %132, label %133, label %104, !llvm.loop !10

133:                                              ; preds = %129
  %134 = add i32 %61, 20
  %135 = icmp eq i32 %130, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.47) #11
  br label %171

137:                                              ; preds = %133
  %138 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3963, i32 noundef 0) #12
  %139 = and i32 %138, 255
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %137
  %142 = and i32 %138, 65280
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %141
  %145 = lshr exact i32 %142, 8
  %146 = icmp ult i32 %139, 252
  %147 = icmp ult i32 %142, 64512
  %148 = and i1 %146, %147
  %149 = icmp ugt i32 %139, %145
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = sub nuw i32 %138, %145
  %153 = trunc i32 %152 to i8
  %154 = getelementptr i8, ptr %2, i32 6
  store i8 %153, ptr %154, align 1
  br label %155

155:                                              ; preds = %151, %144, %141, %137
  %156 = sub i32 -20, %61
  %157 = add i32 %156, %130
  %158 = sdiv i32 %157, 3
  %159 = getelementptr i8, ptr %2, i32 5
  %160 = load i8, ptr %159, align 1
  %161 = trunc i32 %158 to i8
  %162 = shl i8 %161, 4
  %163 = or i8 %160, %162
  store i8 %163, ptr %159, align 1
  %164 = add i32 %130, -1
  %165 = or i32 %164, 3
  %166 = add i32 %165, 1
  %167 = and i32 %164, -4
  %168 = sdiv i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = getelementptr i8, ptr %2, i32 2
  store i8 %169, ptr %170, align 1
  store i32 %166, ptr %3, align 4
  br label %171

171:                                              ; preds = %155, %136, %8
  %172 = phi i32 [ -22, %8 ], [ -22, %136 ], [ 0, %155 ]
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_print_pcm_bits(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

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
!9 = !{i8 0, i8 2}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
