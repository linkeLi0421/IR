; ModuleID = '/llk/IR/drivers/media/test-drivers/vivid/vivid-osd.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vivid/vivid-osd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vivid_dev = type { i32, %struct.v4l2_device, %struct.media_device, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.media_pad, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, [16 x i8], [16 x i8], i32, i32, [16 x i8], [16 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.101, %struct.anon.102, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i32, i32, i32, i32, %struct.fb_info, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, i8, i8, i8, i8, i8, i8, i8, i8, i64, i32, [16 x i32], [16 x i32], [16 x i64], [16 x i32], [16 x i32], ptr, ptr, i32, [16 x i32], [16 x i32], [16 x i32], i32, [16 x i64], [16 x %struct.v4l2_dv_timings], [16 x i32], i32, %struct.vivid_vbi_gen_data, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_framebuffer, ptr, ptr, i32, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i64, %struct.v4l2_dv_timings, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, i8, [2 x i8], [2 x i8], [2 x [2 x i8]], i8, ptr, ptr, i32, [16 x i8], ptr, i8, i32, i32, ptr, [16 x %struct.v4l2_clip], [16 x %struct.v4l2_clip], i32, i32, i32, i8, %struct.tpg_data, i32, [32 x i8], ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, ptr, i32, i64, i64, i64, i32, i32, i8, i32, i32, i8, i32, i32, i8, i32, i32, i8, ptr, i32, i64, i32, i8, i32, i32, i8, %struct.v4l2_fract, %struct.v4l2_pix_format, i32, ptr, %struct.v4l2_fract, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.vb2_queue, %struct.list_head, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, ptr, i32, i32, i32, i8, i32, i32, i8, i32, i32, i8, i8, i32, i32, i8, %struct.vb2_queue, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i8, %struct.vivid_rds_gen, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, i32, i32, i8, i32, ptr, i8, i64, ptr, [16 x ptr], [16 x i8], ptr, %struct.wait_queue_head, [16 x %struct.vivid_cec_xfer], %struct.spinlock, i32, i8, [14 x i8], i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.anon.101 = type { ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.103, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.103 = type { ptr }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.vivid_vbi_gen_data = type { [25 x %struct.v4l2_sliced_vbi_data], [16 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.82 }
%struct.anon.82 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.95 }
%union.anon.95 = type { [32 x i32] }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.tpg_data = type { i32, i32, i32, i32, i32, i8, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, i32, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i8], [3 x i32], [281 x [3 x i8]], [3 x [8 x i8]], [3 x [8 x i8]], [3 x i32], [3 x i32], i32, i8, i8, i32, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [8 x [3 x ptr]], [8 x [3 x ptr]], [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.77, i32, i32 }
%union.anon.77 = type { i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.vivid_rds_gen = type { [228 x %struct.v4l2_rds_data], i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, [9 x i8], [65 x i8] }
%struct.v4l2_rds_data = type { i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vivid_cec_xfer = type { ptr, [16 x i8], i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fb_vblank = type { i32, i32, i32, i32, [4 x i32] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@rgb555 = internal unnamed_addr constant [16 x i16] [i16 32767, i16 32736, i16 1023, i16 992, i16 31775, i16 31744, i16 31, i16 0, i16 -1, i16 -32, i16 -31745, i16 -31776, i16 -993, i16 -1024, i16 -32737, i16 -32768], align 2
@rgb565 = internal unnamed_addr constant [16 x i16] [i16 -1, i16 -32, i16 2047, i16 2016, i16 -2017, i16 -2048, i16 31, i16 0, i16 -1, i16 -32, i16 2047, i16 2016, i16 -2017, i16 -2048, i16 31, i16 0], align 2
@.str = private unnamed_addr constant [50 x i8] c"\016Framebuffer at 0x%lx, mapped to 0x%p, size %dk\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@vivid_fb_ops = internal constant %struct.fb_ops { ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr @vivid_fb_check_var, ptr @vivid_fb_set_par, ptr @vivid_fb_setcolreg, ptr null, ptr @vivid_fb_blank, ptr @vivid_fb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr @vivid_fb_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"\013abort, unable to alloc cmap\0A\00", align 1
@vivid_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"\017%s: vivid_fb_check_var\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\017%s: vivid_fb_get_fix\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"vioverlay fb\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.5 = private unnamed_addr constant [30 x i8] c"\017%s: Set blanking mode : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\017%s: Unknown ioctl %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\017%s: vivid_fb_set_par\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"\017%s: vivid_fb_set_var\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"\017%s: vivid_fb_set_var - Invalid bpp\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_clear_fb(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 9, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 6
  %5 = select i1 %4, ptr @rgb565, ptr @rgb555
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 145
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 142
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 144
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 146
  %14 = load i32, ptr %12, align 4
  br label %15

15:                                               ; preds = %36, %9
  %16 = phi i32 [ %7, %9 ], [ %37, %36 ]
  %17 = phi i32 [ %14, %9 ], [ %38, %36 ]
  %18 = phi i32 [ 0, %9 ], [ %41, %36 ]
  %19 = phi ptr [ %11, %9 ], [ %40, %36 ]
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %15
  %22 = lshr i32 %18, 4
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %31, %23 ]
  %25 = lshr i32 %24, 4
  %26 = add nuw nsw i32 %25, %22
  %27 = and i32 %26, 15
  %28 = getelementptr i16, ptr %5, i32 %27
  %29 = load i16, ptr %28, align 2
  %30 = getelementptr i16, ptr %19, i32 %24
  store i16 %29, ptr %30, align 2
  %31 = add nuw i32 %24, 1
  %32 = load i32, ptr %12, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %23, label %34

34:                                               ; preds = %23
  %35 = load i32, ptr %6, align 8
  br label %36

36:                                               ; preds = %34, %15
  %37 = phi i32 [ %35, %34 ], [ %16, %15 ]
  %38 = phi i32 [ %32, %34 ], [ 0, %15 ]
  %39 = load i32, ptr %13, align 4
  %40 = getelementptr i8, ptr %19, i32 %39
  %41 = add nuw i32 %18, 1
  %42 = icmp ult i32 %41, %37
  br i1 %42, label %15, label %43

43:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vivid_fb_release_buffers(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 142
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 12, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %10) #12
  br label %11

11:                                               ; preds = %9, %5
  %12 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 26
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #12
  %14 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %14) #12
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vivid_fb_init(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 143
  store i32 829440, ptr %2, align 8
  %3 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 829440, i32 noundef 3524, i32 noundef 8) #13
  %4 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 142
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %164, label %6

6:                                                ; preds = %1
  %7 = ptrtoint ptr %3 to i32
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %7, i32 -2130706432, i32 8454144) #14, !srcloc !8
  %9 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 141
  store i32 %8, ptr %9, align 8
  %10 = load i32, ptr %2, align 8
  %11 = lshr i32 %10, 10
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %8, ptr noundef nonnull %3, i32 noundef %11) #15
  %13 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 147
  store i32 16, ptr %13, align 8
  %14 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 148
  store i32 2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 146
  store i32 1440, ptr %15, align 4
  %16 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 144
  store i32 720, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 145
  store i32 576, ptr %17, align 8
  %18 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150
  store i32 720, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 1
  store i32 576, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 2
  store i32 720, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 3
  store i32 576, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 6
  store i32 16, ptr %22, align 4
  %23 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 25
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 18
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 20
  store i32 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 16
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 12
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 9, i32 1
  store i32 5, ptr %28, align 4
  %29 = load i32, ptr @vivid_debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 8
  br label %43

33:                                               ; preds = %6
  %34 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %34) #15
  %36 = load i32, ptr %28, align 4
  %37 = load i32, ptr %23, align 4
  %38 = load i32, ptr @vivid_debug, align 4
  %39 = icmp eq i32 %36, 5
  %40 = and i32 %37, -256
  %41 = icmp eq i32 %38, 0
  store i32 16, ptr %22, align 4
  %42 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 8
  br i1 %39, label %43, label %47

43:                                               ; preds = %33, %31
  %44 = phi ptr [ %32, %31 ], [ %42, %33 ]
  %45 = phi i32 [ 0, %31 ], [ %40, %33 ]
  %46 = phi i1 [ true, %31 ], [ %41, %33 ]
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi i32 [ 5, %43 ], [ 6, %33 ]
  %49 = phi ptr [ %44, %43 ], [ %42, %33 ]
  %50 = phi i32 [ 1, %43 ], [ 0, %33 ]
  %51 = phi i32 [ %45, %43 ], [ %40, %33 ]
  %52 = phi i1 [ %46, %43 ], [ %41, %33 ]
  %53 = phi i32 [ 10, %43 ], [ 11, %33 ]
  %54 = phi i32 [ 15, %43 ], [ 0, %33 ]
  store i32 %53, ptr %49, align 4
  %55 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 8, i32 1
  store i32 5, ptr %55, align 4
  %56 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 9
  store i32 5, ptr %56, align 4
  store i32 %48, ptr %28, align 4
  %57 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 10
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 10, i32 1
  store i32 5, ptr %58, align 4
  %59 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 11
  store i32 %54, ptr %59, align 4
  %60 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 11, i32 1
  store i32 %50, ptr %60, align 4
  %61 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 5
  store i32 0, ptr %61, align 4
  %62 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 4
  store i32 0, ptr %62, align 4
  store i32 0, ptr %25, align 4
  store i32 0, ptr %24, align 4
  store i32 0, ptr %27, align 4
  store i32 %51, ptr %23, align 4
  %63 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 22
  store i32 24, ptr %63, align 4
  %64 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 23
  store i32 2, ptr %64, align 4
  %65 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 17
  store i32 84316, ptr %65, align 4
  %66 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 19
  store i32 776, ptr %66, align 4
  %67 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 150, i32 21
  store i32 591, ptr %67, align 4
  %68 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151
  br i1 %52, label %72, label %69

69:                                               ; preds = %47
  %70 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 1, i32 4
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %70) #15
  br label %72

72:                                               ; preds = %69, %47
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %68, i8 0, i32 68, i1 false) #12
  %73 = tail call i32 @strscpy(ptr noundef %68, ptr noundef nonnull @.str.4, i32 noundef 16) #12
  %74 = load i32, ptr %9, align 8
  %75 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151, i32 1
  store i32 %74, ptr %75, align 4
  %76 = load i32, ptr %2, align 8
  %77 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151, i32 2
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151, i32 3
  store i32 0, ptr %78, align 4
  %79 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151, i32 5
  store i32 2, ptr %79, align 4
  %80 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151, i32 6
  store i16 1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151, i32 7
  store i16 1, ptr %81, align 2
  %82 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151, i32 8
  store i16 0, ptr %82, align 4
  %83 = load i32, ptr %15, align 4
  %84 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151, i32 9
  store i32 %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 151, i32 12
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 1
  store i32 -1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 2
  store i32 0, ptr %87, align 8
  %88 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 29
  store ptr %0, ptr %88, align 8
  %89 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(160) %89, ptr noundef align 4 dereferenceable(160) %18, i32 160, i1 false) #12
  %90 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(68) %90, ptr noundef align 4 dereferenceable(68) %68, i32 68, i1 false) #12
  %91 = load ptr, ptr %4, align 4
  %92 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 24
  store ptr %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 20
  store ptr @vivid_fb_ops, ptr %93, align 4
  %94 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 8, i32 11
  store i32 8000, ptr %94, align 4
  %95 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 8, i32 12
  store i32 70000, ptr %95, align 4
  %96 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 8, i32 18
  store i16 10, ptr %96, align 2
  %97 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 8, i32 19
  store i16 100, ptr %97, align 4
  %98 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 12
  %99 = tail call i32 @fb_alloc_cmap(ptr noundef %98, i32 noundef 256, i32 noundef 1) #12
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %72
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %108

103:                                              ; preds = %72
  %104 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %105 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3264, i32 noundef 64) #16
  %106 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 26
  store ptr %105, ptr %106, align 4
  %107 = icmp eq ptr %105, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %103, %101
  %109 = load ptr, ptr %4, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %164, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 12, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  tail call void @fb_dealloc_cmap(ptr noundef %98) #12
  br label %116

116:                                              ; preds = %115, %111
  %117 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149, i32 26
  %118 = load ptr, ptr %117, align 4
  tail call void @kfree(ptr noundef %118) #12
  %119 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %119) #12
  br label %164

120:                                              ; preds = %103
  %121 = load i32, ptr %28, align 4
  %122 = icmp eq i32 %121, 6
  %123 = select i1 %122, ptr @rgb565, ptr @rgb555
  %124 = load i32, ptr %17, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %157, label %126

126:                                              ; preds = %120
  %127 = load ptr, ptr %4, align 4
  %128 = load i32, ptr %16, align 4
  br label %129

129:                                              ; preds = %150, %126
  %130 = phi i32 [ %124, %126 ], [ %151, %150 ]
  %131 = phi i32 [ %128, %126 ], [ %152, %150 ]
  %132 = phi i32 [ 0, %126 ], [ %155, %150 ]
  %133 = phi ptr [ %127, %126 ], [ %154, %150 ]
  %134 = icmp eq i32 %131, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %129
  %136 = lshr i32 %132, 4
  br label %137

137:                                              ; preds = %137, %135
  %138 = phi i32 [ 0, %135 ], [ %145, %137 ]
  %139 = lshr i32 %138, 4
  %140 = add nuw nsw i32 %139, %136
  %141 = and i32 %140, 15
  %142 = getelementptr i16, ptr %123, i32 %141
  %143 = load i16, ptr %142, align 2
  %144 = getelementptr i16, ptr %133, i32 %138
  store i16 %143, ptr %144, align 2
  %145 = add nuw i32 %138, 1
  %146 = load i32, ptr %16, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %137, label %148

148:                                              ; preds = %137
  %149 = load i32, ptr %17, align 8
  br label %150

150:                                              ; preds = %148, %129
  %151 = phi i32 [ %149, %148 ], [ %130, %129 ]
  %152 = phi i32 [ %146, %148 ], [ 0, %129 ]
  %153 = load i32, ptr %15, align 4
  %154 = getelementptr i8, ptr %133, i32 %153
  %155 = add nuw i32 %132, 1
  %156 = icmp ult i32 %155, %151
  br i1 %156, label %129, label %157

157:                                              ; preds = %150, %120
  %158 = getelementptr inbounds %struct.vivid_dev, ptr %0, i32 0, i32 149
  %159 = tail call i32 @register_framebuffer(ptr noundef %158) #12
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  tail call void @vivid_fb_release_buffers(ptr noundef %0)
  br label %164

162:                                              ; preds = %157
  %163 = tail call i32 @vivid_fb_set_par(ptr noundef %158)
  br label %164

164:                                              ; preds = %162, %161, %116, %108, %1
  %165 = phi i32 [ -22, %161 ], [ 0, %162 ], [ -12, %1 ], [ -12, %108 ], [ -12, %116 ]
  ret i32 %165
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_fb_set_par(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @vivid_debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %7) #15
  %9 = load i32, ptr @vivid_debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %7) #15
  br label %13

13:                                               ; preds = %11, %6, %1
  %14 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32, ptr @vivid_debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %21) #15
  br label %30

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 148
  %27 = load i32, ptr %26, align 4
  %28 = mul i32 %27, %25
  %29 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 146
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %23, %20
  %31 = phi i32 [ -22, %20 ], [ 0, %23 ]
  %32 = load i32, ptr @vivid_debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 1, i32 4
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %35) #15
  br label %37

37:                                               ; preds = %34, %30, %17
  %38 = phi i32 [ %31, %30 ], [ %31, %34 ], [ -22, %17 ]
  %39 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(68) %39, i8 0, i32 68, i1 false) #12
  %40 = tail call i32 @strscpy(ptr noundef %39, ptr noundef nonnull @.str.4, i32 noundef 16) #12
  %41 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 141
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 143
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 3
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  store i32 2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 6
  store i16 1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 7
  store i16 1, ptr %50, align 2
  %51 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 8
  store i16 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.vivid_dev, ptr %3, i32 0, i32 146
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 12
  store i32 0, ptr %55, align 4
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_fb_check_var(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr @vivid_debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %8) #15
  %10 = load i32, ptr @vivid_debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %8) #15
  br label %14

14:                                               ; preds = %12, %5, %2
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  store i32 16, ptr %15, align 4
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 5
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8
  %20 = select i1 %18, i32 10, i32 11
  %21 = select i1 %18, i32 5, i32 6
  %22 = select i1 %18, i32 15, i32 0
  %23 = zext i1 %18 to i32
  store i32 %20, ptr %19, align 4
  %24 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 1
  store i32 5, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9
  store i32 5, ptr %25, align 4
  store i32 %21, ptr %16, align 4
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 1
  store i32 5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 11
  store i32 %22, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 11, i32 1
  store i32 %23, ptr %29, align 4
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 12
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -256
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  store i32 24, ptr %38, align 4
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  store i32 2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  store i32 84316, ptr %40, align 4
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  store i32 776, ptr %41, align 4
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  store i32 591, ptr %42, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @vivid_fb_setcolreg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #9 {
  %7 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 12, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %10, label %54

10:                                               ; preds = %6
  %11 = shl i32 %4, 16
  %12 = and i32 %11, -16777216
  %13 = shl i32 %1, 8
  %14 = and i32 %13, 16711680
  %15 = and i32 %2, 65280
  %16 = lshr i32 %3, 8
  %17 = and i32 %16, 255
  %18 = or i32 %15, %14
  %19 = or i32 %18, %17
  %20 = or i32 %19, %12
  %21 = icmp ugt i32 %0, 15
  br i1 %21, label %54, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 26
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %51

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %51 [
    i32 6, label %31
    i32 5, label %39
  ]

31:                                               ; preds = %28
  %32 = and i32 %1, 63488
  %33 = lshr i32 %2, 5
  %34 = and i32 %33, 2016
  %35 = or i32 %34, %32
  %36 = lshr i32 %3, 11
  %37 = and i32 %36, 31
  %38 = or i32 %35, %37
  br label %51

39:                                               ; preds = %28
  %40 = lshr i32 %1, 1
  %41 = and i32 %40, 31744
  %42 = lshr i32 %2, 6
  %43 = and i32 %42, 992
  %44 = or i32 %43, %41
  %45 = lshr i32 %3, 11
  %46 = and i32 %45, 31
  %47 = or i32 %44, %46
  %48 = icmp eq i32 %4, 0
  %49 = select i1 %48, i32 0, i32 32768
  %50 = or i32 %47, %49
  br label %51

51:                                               ; preds = %39, %31, %28, %22
  %52 = phi i32 [ %20, %28 ], [ %50, %39 ], [ %38, %31 ], [ %20, %22 ]
  %53 = getelementptr i32, ptr %24, i32 %0
  store i32 %52, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %10, %6
  %55 = phi i32 [ 0, %51 ], [ -22, %6 ], [ -22, %10 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_fb_blank(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load i32, ptr @vivid_debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vivid_dev, ptr %7, i32 0, i32 1, i32 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %8, i32 noundef %0) #15
  br label %10

10:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @vivid_fb_pan_display(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #10 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vivid_fb_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca %struct.fb_vblank, align 4
  %5 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, -2145368558
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  %9 = getelementptr inbounds i8, ptr %4, i32 16
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store i32 304, ptr %4, align 4
  %10 = getelementptr inbounds %struct.fb_vblank, ptr %4, i32 0, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.fb_vblank, ptr %4, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.fb_vblank, ptr %4, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = inttoptr i32 %2 to ptr
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 32, i32 -1090519040) #14, !srcloc !9
  %15 = extractvalue { i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %8
  %18 = tail call ptr @llvm.thread.pointer() #12
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %19) #17, !srcloc !10
  %21 = and i32 %20, -13
  %22 = or i32 %21, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #12, !srcloc !11
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %23 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %4, i32 noundef 32) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #12, !srcloc !11
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !12
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 0, i32 -14
  br label %26

26:                                               ; preds = %17, %8
  %27 = phi i32 [ -14, %8 ], [ %25, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  br label %34

28:                                               ; preds = %3
  %29 = load i32, ptr @vivid_debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.vivid_dev, ptr %6, i32 0, i32 1, i32 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %32, i32 noundef %1) #15
  br label %34

34:                                               ; preds = %31, %28, %26
  %35 = phi i32 [ %27, %26 ], [ -22, %31 ], [ -22, %28 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readonly }

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
!8 = !{i64 2148789696, i64 2148789719, i64 2148789751, i64 2148789783, i64 2148789821, i64 2148789851}
!9 = !{i64 2152433067, i64 2152433092}
!10 = !{i64 4928601}
!11 = !{i64 4928798}
!12 = !{i64 2152414077}
