; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-sdr-cap.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-sdr-cap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.vivid_format = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.88, %struct.anon.89, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.87 = type { ptr, ptr }
%struct.anon.88 = type { ptr, ptr }
%struct.anon.89 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.90, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.90 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.91 }
%struct.anon.91 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.82 }
%union.anon.82 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.92, i32, i32 }
%union.anon.92 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.72, i32 }
%union.anon.72 = type { i32 }
%struct.vivid_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.97, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.97 = type { i8 }

@vivid_sdr_cap_qops = dso_local local_unnamed_addr constant %struct.vb2_ops { ptr @sdr_cap_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @sdr_cap_buf_prepare, ptr null, ptr null, ptr @sdr_cap_start_streaming, ptr @sdr_cap_stop_streaming, ptr @sdr_cap_buf_queue, ptr @sdr_cap_buf_request_complete }, align 4
@bands_adc = internal unnamed_addr constant [3 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 4, i32 0, i32 5120, i32 300000, i32 300000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 4, i32 1, i32 5120, i32 900001, i32 2800000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 4, i32 2, i32 5120, i32 3200000, i32 3200000, i32 0, [9 x i32] zeroinitializer }], align 4
@bands_fm = internal unnamed_addr constant [1 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 1, i32 5, i32 0, i32 5120, i32 50000000, i32 2000000000, i32 0, [9 x i32] zeroinitializer }], align 4
@.str = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@formats = internal unnamed_addr constant [2 x %struct.vivid_format] [%struct.vivid_format { i32 942691651, i32 32768 }, %struct.vivid_format { i32 942691139, i32 32768 }], align 4
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"\017%s: %s\0A\00", align 1
@__func__.sdr_cap_buf_prepare = private unnamed_addr constant [20 x i8] c"sdr_cap_buf_prepare\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\017%s: %s data will not fit into plane (%lu < %u)\0A\00", align 1
@__func__.sdr_cap_start_streaming = private unnamed_addr constant [24 x i8] c"sdr_cap_start_streaming\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s-sdr-cap\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\013%s: kernel_thread() failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\017%s: SDR Capture Thread Start\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [30 x i8] c"\017%s: SDR Capture Thread End\0A\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"\017%s: SDR Capture Thread Tick\0A\00", align 1
@__func__.sdr_cap_buf_queue = private unnamed_addr constant [18 x i8] c"sdr_cap_buf_queue\00", align 1
@sin_table = internal unnamed_addr constant [91 x i32] [i32 0, i32 37478757, i32 74946098, i32 112390610, i32 149800886, i32 187165532, i32 224473165, i32 261712422, i32 298871958, i32 335940455, i32 372906621, i32 409759197, i32 446486956, i32 483078710, i32 519523314, i32 555809666, i32 591926714, i32 627863454, i32 663608942, i32 699152287, i32 734482664, i32 769589311, i32 804461533, i32 839088708, i32 873460289, i32 907565806, i32 941394869, i32 974937174, i32 1008182503, i32 1041120731, i32 1073741823, i32 1106035843, i32 1137992954, i32 1169603421, i32 1200857615, i32 1231746017, i32 1262259217, i32 1292387920, i32 1322122950, i32 1351455248, i32 1380375880, i32 1408876036, i32 1436947034, i32 1464580325, i32 1491767490, i32 1518500249, i32 1544770457, i32 1570570114, i32 1595891360, i32 1620726481, i32 1645067914, i32 1668908243, i32 1692240207, i32 1715056697, i32 1737350765, i32 1759115619, i32 1780344629, i32 1801031329, i32 1821169418, i32 1840752761, i32 1859775392, i32 1878231518, i32 1896115516, i32 1913421940, i32 1930145516, i32 1946281151, i32 1961823931, i32 1976769119, i32 1991112165, i32 2004848699, i32 2017974536, i32 2030485679, i32 2042378316, i32 2053648824, i32 2064293772, i32 2074309916, i32 2083694204, i32 2092443780, i32 2100555976, i32 2108028323, i32 2114858545, i32 2121044559, i32 2126584483, i32 2131476629, i32 2135719506, i32 2139311823, i32 2142252484, i32 2144540595, i32 2146175457, i32 2147156574, i32 2147483647], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sdr_cap_queue_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readnone %4) #0 {
  store i32 32768, ptr %3, align 4
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdr_cap_buf_prepare(ptr nocapture noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %8, ptr noundef nonnull @__func__.sdr_cap_buf_prepare) #12
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 154
  %12 = load i8, ptr %11, align 2, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i8 0, ptr %11, align 2
  br label %35

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = icmp ult i32 %21, 32768
  br i1 %22, label %26, label %33

23:                                               ; preds = %15
  %24 = load i32, ptr @vivid_debug, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %29

26:                                               ; preds = %19
  %27 = load i32, ptr @vivid_debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ 0, %23 ], [ %21, %26 ]
  %31 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %31, ptr noundef nonnull @__func__.sdr_cap_buf_prepare, i32 noundef %30, i32 noundef 32768) #12
  br label %35

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 10, i32 0, i32 3
  store i32 32768, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %29, %26, %23, %14
  %36 = phi i32 [ -22, %14 ], [ 0, %33 ], [ -22, %29 ], [ -22, %23 ], [ -22, %26 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdr_cap_start_streaming(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %8, ptr noundef nonnull @__func__.sdr_cap_start_streaming) #12
  br label %10

10:                                               ; preds = %7, %2
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 332
  store i32 0, ptr %11, align 8
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 155
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i8 0, ptr %12, align 1
  br label %31

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 329
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %22 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @vivid_thread_sdr_cap, ptr noundef %4, i32 noundef -1, ptr noundef nonnull @.str.5, ptr noundef %21) #13
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @wake_up_process(ptr noundef %22) #13
  store ptr %22, ptr %17, align 4
  br label %44

26:                                               ; preds = %20
  store ptr %22, ptr %17, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %21) #12
  %28 = load ptr, ptr %17, align 4
  %29 = ptrtoint ptr %28 to i32
  store ptr null, ptr %17, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %26, %15
  %32 = phi i32 [ -22, %15 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 314
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %44, label %36

36:                                               ; preds = %36, %31
  %37 = phi ptr [ %39, %36 ], [ %34, %31 ]
  %38 = getelementptr i8, ptr %37, i32 -640
  %39 = load ptr, ptr %37, align 8
  %40 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %39, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  tail call void @vb2_buffer_done(ptr noundef %38, i32 noundef 3) #13
  %43 = icmp eq ptr %39, %33
  br i1 %43, label %44, label %36

44:                                               ; preds = %36, %31, %26, %24, %16
  %45 = phi i32 [ 0, %26 ], [ 0, %24 ], [ 0, %16 ], [ %32, %31 ], [ %32, %36 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdr_cap_stop_streaming(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 329
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 314
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 31
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %9, %11 ], [ %22, %13 ]
  %15 = getelementptr i8, ptr %14, i32 -640
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = getelementptr i8, ptr %14, i32 -596
  %21 = load ptr, ptr %20, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %21, ptr noundef %12) #13
  tail call void @vb2_buffer_done(ptr noundef %15, i32 noundef 6) #13
  %22 = load volatile ptr, ptr %8, align 4
  %23 = icmp eq ptr %22, %8
  br i1 %23, label %24, label %13

24:                                               ; preds = %13
  %25 = load ptr, ptr %4, align 4
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi ptr [ %25, %24 ], [ %5, %7 ]
  %28 = tail call i32 @kthread_stop(ptr noundef %27) #13
  store ptr null, ptr %4, align 4
  br label %29

29:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdr_cap_buf_queue(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @vivid_debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %8, ptr noundef nonnull @__func__.sdr_cap_buf_queue) #12
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 314
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 314, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.vivid_buffer, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %17 = load i16, ptr %11, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdr_cap_buf_request_complete(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.vb2_queue, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vb2_buffer, ptr %0, i32 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %4, i32 0, i32 31
  tail call void @v4l2_ctrl_request_complete(ptr noundef %6, ptr noundef %7) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_sdr_enum_freq_bands(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #3 {
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %16 [
    i32 0, label %5
    i32 1, label %11
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 2
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %2, ptr noundef align 4 dereferenceable(64) %10, i32 64, i1 false)
  br label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %2, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) @bands_fm, i32 64, i1 false)
  br label %16

16:                                               ; preds = %15, %11, %9, %5, %3
  %17 = phi i32 [ 0, %15 ], [ 0, %9 ], [ -22, %5 ], [ -22, %11 ], [ -22, %3 ]
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_sdr_g_frequency(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i32, ptr %2, align 4
  switch i32 %7, label %18 [
    i32 0, label %8
    i32 1, label %10
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 317
  br label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 318
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  %14 = phi i32 [ 5, %10 ], [ 4, %8 ]
  %15 = load i32, ptr %13, align 4
  %16 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 1
  store i32 %14, ptr %17, align 4
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i32 [ -22, %3 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_sdr_s_frequency(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %2, align 4
  switch i32 %9, label %45 [
    i32 0, label %10
    i32 1, label %37
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = icmp ult i32 %8, 600000
  %16 = icmp ult i32 %8, 3000000
  %17 = select i1 %16, i32 1, i32 2
  %18 = select i1 %15, i32 0, i32 %17
  %19 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %18, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %8, i32 %20)
  %22 = getelementptr [3 x %struct.v4l2_frequency_band], ptr @bands_adc, i32 0, i32 %18, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %21, i32 %23)
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 313, i32 28
  %26 = load i16, ptr %25, align 4
  %27 = and i16 %26, 1
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 317
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %24, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 333
  store i8 1, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %29, %14
  %36 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 317
  store i32 %24, ptr %36, align 8
  br label %45

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.v4l2_frequency, ptr %2, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = tail call i32 @llvm.umax.i32(i32 %8, i32 50000000)
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 2000000000)
  %44 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 318
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %41, %37, %35, %10, %3
  %46 = phi i32 [ 0, %41 ], [ 0, %35 ], [ -22, %10 ], [ -22, %37 ], [ -22, %3 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_sdr_g_tuner(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %17 [
    i32 0, label %6
    i32 1, label %5
  ]

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi ptr [ @.str.1, %5 ], [ @.str, %3 ]
  %8 = phi i32 [ 5, %5 ], [ 4, %3 ]
  %9 = phi i32 [ 50000000, %5 ], [ 300000, %3 ]
  %10 = phi i32 [ 2000000000, %5 ], [ 3200000, %3 ]
  %11 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 1
  %12 = tail call i32 @strscpy(ptr noundef %11, ptr noundef nonnull %7, i32 noundef 32) #13
  %13 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 2
  store i32 %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 3
  store i32 5120, ptr %14, align 4
  %15 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 4
  store i32 %9, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_tuner, ptr %2, i32 0, i32 5
  store i32 %10, ptr %16, align 4
  br label %17

17:                                               ; preds = %6, %3
  %18 = phi i32 [ -22, %3 ], [ 0, %6 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vivid_sdr_s_tuner(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) local_unnamed_addr #6 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 1
  %6 = select i1 %5, i32 -22, i32 0
  ret i32 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vidioc_enum_fmt_sdr_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #7 {
  %4 = load i32, ptr %2, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr [2 x %struct.vivid_format], ptr @formats, i32 0, i32 %4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %2, i32 0, i32 4
  store i32 %8, ptr %9, align 4
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i32 [ 0, %6 ], [ -22, %3 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_g_fmt_sdr_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 315
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 316
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_s_fmt_sdr_cap(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @video_devdata(ptr noundef %0) #13
  %5 = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 5, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 313, i32 21
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %20 [
    i32 942691651, label %14
    i32 942691139, label %13
  ]

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %10
  %15 = phi i32 [ 0, %10 ], [ 1, %13 ]
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 315
  store i32 %12, ptr %16, align 8
  %17 = getelementptr [2 x %struct.vivid_format], ptr @formats, i32 0, i32 %15, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 316
  store i32 %18, ptr %19, align 4
  br label %23

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 315
  store i32 942691651, ptr %21, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 316
  store i32 32768, ptr %22, align 4
  store i32 942691651, ptr %11, align 4
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ 32768, %20 ], [ %18, %14 ]
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %23, %3
  %27 = phi i32 [ -16, %3 ], [ 0, %23 ]
  ret i32 %27
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vidioc_try_fmt_sdr_cap(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %11 [
    i32 942691651, label %7
    i32 942691139, label %6
  ]

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %3
  %8 = phi i32 [ 0, %3 ], [ 1, %6 ]
  %9 = getelementptr [2 x %struct.vivid_format], ptr @formats, i32 0, i32 %8, i32 1
  %10 = load i32, ptr %9, align 4
  br label %12

11:                                               ; preds = %3
  store i32 942691651, ptr %4, align 4
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ 32768, %11 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.v4l2_format, ptr %2, i32 0, i32 1, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_sdr_cap_process(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @vb2_plane_vaddr(ptr noundef %1, i32 noundef 0) #13
  %8 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %212, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.vb2_buffer, ptr %1, i32 0, i32 10, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 317
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 1
  %17 = add nuw i32 %16, 205887000
  %18 = udiv i32 %17, %15
  %19 = icmp eq i32 %13, 0
  br i1 %19, label %212, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 320
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 319
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 321
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 315
  br label %25

25:                                               ; preds = %208, %20
  %26 = phi ptr [ %7, %20 ], [ %209, %208 ]
  %27 = phi i32 [ 0, %20 ], [ %210, %208 ]
  %28 = load i32, ptr %21, align 4
  %29 = add i32 %28, 51471
  %30 = mul i32 %29, 360
  %31 = udiv i32 %30, 205887
  %32 = mul nuw i32 %31, 205887
  %33 = udiv i32 %32, 360
  %34 = sub i32 %29, %33
  %35 = zext i32 %34 to i64
  %36 = trunc i32 %31 to i16
  %37 = urem i16 %36, 360
  %38 = add nuw nsw i16 %37, 360
  %39 = urem i16 %38, 360
  %40 = zext i16 %39 to i32
  %41 = icmp ugt i16 %39, 180
  %42 = add nsw i32 %40, -180
  %43 = select i1 %41, i32 %42, i32 %40
  %44 = icmp ugt i32 %43, 90
  %45 = sub nuw nsw i32 180, %43
  %46 = select i1 %44, i32 %45, i32 %43
  %47 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 0, %48
  %50 = select i1 %41, i32 %49, i32 %48
  %51 = add nuw nsw i16 %39, 1
  %52 = urem i16 %51, 360
  %53 = add nuw nsw i16 %52, 360
  %54 = urem i16 %53, 360
  %55 = zext i16 %54 to i32
  %56 = icmp ugt i16 %54, 180
  %57 = add nsw i32 %55, -180
  %58 = select i1 %56, i32 %57, i32 %55
  %59 = icmp ugt i32 %58, 90
  %60 = sub nuw nsw i32 180, %58
  %61 = select i1 %59, i32 %60, i32 %58
  %62 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 0, %63
  %65 = select i1 %56, i32 %64, i32 %63
  %66 = sub i32 %65, %50
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, %35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !13
  %69 = call i64 @div_s64_rem(i64 noundef %68, i32 noundef 571, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  %70 = trunc i64 %69 to i32
  %71 = add i32 %50, %70
  %72 = ashr i32 %71, 16
  %73 = load i32, ptr %21, align 4
  %74 = add i32 %73, %18
  store i32 %74, ptr %21, align 4
  %75 = sext i32 %72 to i64
  %76 = load i32, ptr %22, align 8
  %77 = zext i32 %76 to i64
  %78 = mul nsw i64 %75, %77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !13
  %79 = call i64 @div_s64_rem(i64 noundef %78, i32 noundef 314159, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %80 = load i32, ptr %23, align 8
  %81 = trunc i64 %79 to i32
  %82 = add i32 %80, %81
  %83 = load i32, ptr %21, align 4
  %84 = srem i32 %83, 205887
  store i32 %84, ptr %21, align 4
  %85 = srem i32 %82, 205887
  %86 = icmp slt i32 %85, 0
  %87 = add nsw i32 %85, 205887
  %88 = select i1 %86, i32 %87, i32 %85
  store i32 %88, ptr %23, align 8
  %89 = add nuw nsw i32 %88, 51471
  %90 = mul nuw nsw i32 %89, 360
  %91 = udiv i32 %90, 205887
  %92 = mul nuw nsw i32 %91, 205887
  %93 = udiv i32 %92, 360
  %94 = sub nsw i32 %89, %93
  %95 = zext i32 %94 to i64
  %96 = trunc i32 %91 to i16
  %97 = urem i16 %96, 360
  %98 = add nuw nsw i16 %97, 360
  %99 = urem i16 %98, 360
  %100 = zext i16 %99 to i32
  %101 = icmp ugt i16 %99, 180
  %102 = add nsw i32 %100, -180
  %103 = select i1 %101, i32 %102, i32 %100
  %104 = icmp ugt i32 %103, 90
  %105 = sub nuw nsw i32 180, %103
  %106 = select i1 %104, i32 %105, i32 %103
  %107 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %106
  %108 = load i32, ptr %107, align 4
  %109 = sub i32 0, %108
  %110 = select i1 %101, i32 %109, i32 %108
  %111 = add nuw nsw i16 %99, 1
  %112 = urem i16 %111, 360
  %113 = add nuw nsw i16 %112, 360
  %114 = urem i16 %113, 360
  %115 = zext i16 %114 to i32
  %116 = icmp ugt i16 %114, 180
  %117 = add nsw i32 %115, -180
  %118 = select i1 %116, i32 %117, i32 %115
  %119 = icmp ugt i32 %118, 90
  %120 = sub nuw nsw i32 180, %118
  %121 = select i1 %119, i32 %120, i32 %118
  %122 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %121
  %123 = load i32, ptr %122, align 4
  %124 = sub i32 0, %123
  %125 = select i1 %116, i32 %124, i32 %123
  %126 = sub i32 %125, %110
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, %95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !13
  %129 = call i64 @div_s64_rem(i64 noundef %128, i32 noundef 571, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %130 = trunc i64 %129 to i32
  %131 = add i32 %110, %130
  %132 = load i32, ptr %23, align 8
  %133 = mul i32 %132, 360
  %134 = udiv i32 %133, 205887
  %135 = mul nuw i32 %134, 205887
  %136 = udiv i32 %135, 360
  %137 = sub i32 %132, %136
  %138 = zext i32 %137 to i64
  %139 = trunc i32 %134 to i16
  %140 = urem i16 %139, 360
  %141 = add nuw nsw i16 %140, 360
  %142 = urem i16 %141, 360
  %143 = zext i16 %142 to i32
  %144 = icmp ugt i16 %142, 180
  %145 = add nsw i32 %143, -180
  %146 = select i1 %144, i32 %145, i32 %143
  %147 = icmp ugt i32 %146, 90
  %148 = sub nuw nsw i32 180, %146
  %149 = select i1 %147, i32 %148, i32 %146
  %150 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = sub i32 0, %151
  %153 = select i1 %144, i32 %152, i32 %151
  %154 = add nuw nsw i16 %142, 1
  %155 = urem i16 %154, 360
  %156 = add nuw nsw i16 %155, 360
  %157 = urem i16 %156, 360
  %158 = zext i16 %157 to i32
  %159 = icmp ugt i16 %157, 180
  %160 = add nsw i32 %158, -180
  %161 = select i1 %159, i32 %160, i32 %158
  %162 = icmp ugt i32 %161, 90
  %163 = sub nuw nsw i32 180, %161
  %164 = select i1 %162, i32 %163, i32 %161
  %165 = getelementptr [91 x i32], ptr @sin_table, i32 0, i32 %164
  %166 = load i32, ptr %165, align 4
  %167 = sub i32 0, %166
  %168 = select i1 %159, i32 %167, i32 %166
  %169 = sub i32 %168, %153
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, %138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !13
  %172 = call i64 @div_s64_rem(i64 noundef %171, i32 noundef 571, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %173 = trunc i64 %172 to i32
  %174 = add i32 %153, %173
  %175 = ashr i32 %131, 16
  %176 = ashr i32 %174, 16
  %177 = load i32, ptr %24, align 8
  switch i32 %177, label %208 [
    i32 942691651, label %178
    i32 942691139, label %193
  ]

178:                                              ; preds = %25
  %179 = mul nsw i32 %175, 1275
  %180 = mul nsw i32 %176, 1275
  %181 = icmp sgt i32 %179, -41779200
  %182 = select i1 %181, i32 41943040, i32 41615360
  %183 = add nsw i32 %182, %179
  %184 = sdiv i32 %183, 327680
  %185 = trunc i32 %184 to i8
  %186 = getelementptr i8, ptr %26, i32 1
  store i8 %185, ptr %26, align 1
  %187 = icmp sgt i32 %180, -41779200
  %188 = add nsw i32 %180, 41943040
  %189 = udiv i32 %188, 327680
  %190 = trunc i32 %189 to i8
  %191 = select i1 %187, i8 %190, i8 0
  %192 = getelementptr i8, ptr %26, i32 2
  store i8 %191, ptr %186, align 1
  br label %208

193:                                              ; preds = %25
  %194 = mul nsw i32 %175, 1275
  %195 = mul nsw i32 %176, 1275
  %196 = icmp sgt i32 %194, 163840
  %197 = add nsw i32 %194, -327680
  %198 = select i1 %196, i32 %194, i32 %197
  %199 = sdiv i32 %198, 327680
  %200 = trunc i32 %199 to i8
  %201 = getelementptr i8, ptr %26, i32 1
  store i8 %200, ptr %26, align 1
  %202 = icmp sgt i32 %195, 163840
  %203 = add nsw i32 %195, -327680
  %204 = select i1 %202, i32 %195, i32 %203
  %205 = sdiv i32 %204, 327680
  %206 = trunc i32 %205 to i8
  %207 = getelementptr i8, ptr %26, i32 2
  store i8 %206, ptr %201, align 1
  br label %208

208:                                              ; preds = %193, %178, %25
  %209 = phi ptr [ %26, %25 ], [ %207, %193 ], [ %192, %178 ]
  %210 = add i32 %27, 2
  %211 = icmp ult i32 %210, %13
  br i1 %211, label %25, label %212

212:                                              ; preds = %208, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_thread_sdr_cap(ptr noundef %0) #2 {
  %2 = load i32, ptr @vivid_debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %5) #12
  br label %7

7:                                                ; preds = %4, %1
  %8 = tail call zeroext i1 @set_freezable() #13
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 331
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 158
  %11 = load i8, ptr %10, align 2, !range !8
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 0, i32 -128
  store i32 %13, ptr %9, align 4
  %14 = load volatile i32, ptr @jiffies, align 64
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 330
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 333
  store i8 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 39
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 332
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 317
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 161
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 38
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 314
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 31
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 160
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 156
  br label %27

27:                                               ; preds = %144, %7
  %28 = load volatile i32, ptr @system_freezing_cnt, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30, !prof !14

30:                                               ; preds = %27
  %31 = tail call ptr @llvm.thread.pointer() #13
  %32 = tail call zeroext i1 @freezing_slow_path(ptr noundef %31) #13
  br i1 %32, label %33, label %35, !prof !15

33:                                               ; preds = %30
  %34 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #13
  br label %35

35:                                               ; preds = %33, %30, %27
  %36 = tail call zeroext i1 @kthread_should_stop() #13
  br i1 %36, label %151, label %37

37:                                               ; preds = %35
  %38 = tail call i32 @mutex_trylock(ptr noundef %17) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void @schedule() #13
  br label %144

41:                                               ; preds = %37
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = load i8, ptr %16, align 4, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, ptr %15, align 8
  br label %50

47:                                               ; preds = %41
  store i32 %42, ptr %15, align 8
  %48 = load i32, ptr %18, align 8
  %49 = add i32 %48, 1
  store i32 %49, ptr %9, align 4
  store i8 0, ptr %16, align 4
  br label %50

50:                                               ; preds = %47, %45
  %51 = phi i32 [ %46, %45 ], [ %42, %47 ]
  %52 = sub i32 %42, %51
  %53 = zext i32 %52 to i64
  %54 = load i32, ptr %19, align 8
  %55 = zext i32 %54 to i64
  %56 = mul nuw i64 %53, %55
  %57 = add nuw i64 %56, 819200
  %58 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %57, i32 0) #14, !srcloc !16
  %59 = extractvalue { i64, i32 } %58, 0
  %60 = extractvalue { i64, i32 } %58, 1
  %61 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %57, i64 %59, i32 %60) #14, !srcloc !17
  %62 = extractvalue { i64, i32 } %61, 0
  %63 = lshr i64 %62, 20
  %64 = icmp ugt i32 %52, -268727296
  br i1 %64, label %67, label %65

65:                                               ; preds = %50
  %66 = load i32, ptr %9, align 4
  br label %69

67:                                               ; preds = %50
  store i32 %42, ptr %15, align 8
  %68 = trunc i64 %63 to i32
  store i32 %68, ptr %9, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %68, %67 ], [ %66, %65 ]
  %71 = phi i64 [ 0, %67 ], [ %63, %65 ]
  %72 = trunc i64 %71 to i32
  %73 = add i32 %70, %72
  store i32 %73, ptr %18, align 8
  %74 = load i32, ptr @vivid_debug, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %20) #12
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i32, ptr %21, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = tail call i32 @prandom_u32() #13
  %83 = zext i32 %82 to i64
  %84 = mul nuw nsw i64 %83, 100
  %85 = lshr i64 %84, 32
  %86 = trunc i64 %85 to i32
  %87 = load i32, ptr %21, align 8
  %88 = icmp ugt i32 %87, %86
  br i1 %88, label %117, label %89

89:                                               ; preds = %81, %78
  tail call void @_raw_spin_lock(ptr noundef %22) #13
  %90 = load volatile ptr, ptr %23, align 4
  %91 = icmp eq ptr %90, %23
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = getelementptr i8, ptr %90, i32 -640
  %94 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = load ptr, ptr %90, align 4
  %97 = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  store ptr %95, ptr %97, align 4
  store volatile ptr %96, ptr %95, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %90, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %94, align 4
  br label %98

98:                                               ; preds = %92, %89
  %99 = phi ptr [ null, %89 ], [ %93, %92 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %100 = load i16, ptr %22, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !12
  %102 = icmp eq ptr %99, null
  br i1 %102, label %117, label %103

103:                                              ; preds = %98
  %104 = load i32, ptr %18, align 8
  %105 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %99, i32 0, i32 4
  store i32 %104, ptr %105, align 8
  %106 = getelementptr inbounds %struct.vb2_buffer, ptr %99, i32 0, i32 7, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %107, ptr noundef %24) #13
  %109 = load ptr, ptr %106, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %109, ptr noundef %24) #13
  tail call void @vivid_sdr_cap_process(ptr noundef %0, ptr noundef nonnull %99) #13
  %110 = tail call i64 @ktime_get() #13
  %111 = load i64, ptr %25, align 8
  %112 = add i64 %111, %110
  %113 = getelementptr inbounds %struct.vb2_buffer, ptr %99, i32 0, i32 5
  store i64 %112, ptr %113, align 8
  %114 = load i8, ptr %26, align 4, !range !8
  %115 = icmp eq i8 %114, 0
  %116 = select i1 %115, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef nonnull %99, i32 noundef %116) #13
  store i8 0, ptr %26, align 4
  br label %117

117:                                              ; preds = %103, %98, %81
  tail call void @mutex_unlock(ptr noundef %17) #13
  %118 = load volatile i32, ptr @jiffies, align 64
  %119 = load i32, ptr %15, align 8
  %120 = sub i32 %118, %119
  %121 = mul i64 %71, 1638400
  %122 = add i64 %121, 1638400
  %123 = load i32, ptr %19, align 8
  %124 = lshr i32 %123, 1
  %125 = zext i32 %124 to i64
  %126 = add i64 %122, %125
  %127 = icmp ult i64 %126, 4294967296
  br i1 %127, label %128, label %132, !prof !14

128:                                              ; preds = %117
  %129 = trunc i64 %126 to i32
  %130 = udiv i32 %129, %123
  %131 = zext i32 %130 to i64
  br label %135

132:                                              ; preds = %117
  %133 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %123, i64 %126) #14, !srcloc !18
  %134 = extractvalue { i64, i64 } %133, 1
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi i64 [ %131, %128 ], [ %134, %132 ]
  %137 = zext i32 %120 to i64
  %138 = tail call i64 @llvm.umax.i64(i64 %136, i64 %137)
  %139 = trunc i64 %138 to i32
  %140 = sub i32 %139, %120
  %141 = load volatile i32, ptr @jiffies, align 64
  %142 = sub i32 %141, %42
  %143 = icmp ult i32 %142, %140
  br i1 %143, label %145, label %144

144:                                              ; preds = %147, %145, %135, %40
  br label %27

145:                                              ; preds = %147, %135
  %146 = tail call zeroext i1 @kthread_should_stop() #13
  br i1 %146, label %144, label %147

147:                                              ; preds = %145
  tail call void @schedule() #13
  %148 = load volatile i32, ptr @jiffies, align 64
  %149 = sub i32 %148, %42
  %150 = icmp ult i32 %149, %140
  br i1 %150, label %145, label %144

151:                                              ; preds = %35
  %152 = load i32, ptr @vivid_debug, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %20) #12
  br label %156

156:                                              ; preds = %154, %151
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2149180406}
!10 = !{i64 2149176230}
!11 = !{i64 2149176305, i64 2149176332, i64 2149176379, i64 2149176401, i64 2149176429, i64 2149176449}
!12 = !{i64 2149203409}
!13 = !{!"auto-init"}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 855038, i64 855065, i64 855087, i64 855115}
!17 = !{i64 855446, i64 855473, i64 855506, i64 855527, i64 855554, i64 855580}
!18 = !{i64 2148340582, i64 2148340862, i64 2148341196, i64 2148341530}
