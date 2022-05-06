; ModuleID = '/llk/IR/drivers/video/fbdev/mx3fb.c_pt.bc'
source_filename = "../drivers/video/fbdev/mx3fb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.di_mapping = type { i32, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_chan_request = type { ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mx3fb_data = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mx3fb_platform_data = type { ptr, ptr, ptr, i32, i32 }
%struct.idmac_channel = type { %struct.dma_chan, i32, %union.ipu_channel_param, i32, i32, ptr, i32, ptr, [2 x ptr], %struct.list_head, %struct.list_head, %struct.spinlock, %struct.mutex, i8, i32, i32, [16 x i8] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%union.ipu_channel_param = type { %struct.idmac_video_param }
%struct.idmac_video_param = type { i16, i16, i32, i16, i16, i32, i16, i8, i8, i8, i32, i16, i16 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.74 = type { ptr }
%struct.mx3fb_info = type { i32, i32, i32, [16 x i32], %struct.completion, %struct.mutex, ptr, ptr, ptr, i32, [2 x %struct.scatterlist], %struct.fb_var_screeninfo }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.66, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }

@mx3fb_driver = internal global %struct.platform_driver { ptr @mx3fb_probe, ptr @mx3fb_remove, ptr null, ptr @mx3fb_suspend, ptr @mx3fb_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_mx3fb__263_1698_mx3fb_init6 = internal global ptr @mx3fb_init, section ".initcall6.init", align 4
@__exitcall_mx3fb_exit = internal global ptr @mx3fb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author264 = internal constant [43 x i8] c"mx3fb.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [41 x i8] c"mx3fb.description=MX3 framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias266 = internal constant [32 x i8] c"mx3fb.alias=platform:mx3_sdc_fb\00", section ".modinfo", align 1
@__UNIQUE_ID_file267 = internal constant [37 x i8] c"mx3fb.file=drivers/video/fbdev/mx3fb\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [21 x i8] c"mx3fb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"mx3_sdc_fb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"mx3fb: failed to register fb\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ipu-core\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Illegal display data format %d\0A\00", align 1
@mx3fb_ops = internal constant %struct.fb_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mx3fb_check_var, ptr @mx3fb_set_par, ptr @mx3fb_setcolreg, ptr null, ptr @mx3fb_blank, ptr @mx3fb_pan_display, ptr @cfb_fillrect, ptr @cfb_copyarea, ptr @cfb_imageblit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fb_mode = internal unnamed_addr global ptr null, align 4
@mx3fb_modedb = internal constant [6 x %struct.fb_videomode] [%struct.fb_videomode { ptr @.str.11, i32 60, i32 240, i32 320, i32 185925, i32 9, i32 16, i32 7, i32 9, i32 1, i32 1, i32 2013265921, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.12, i32 60, i32 240, i32 33, i32 185925, i32 9, i32 16, i32 7, i32 296, i32 1, i32 1, i32 2013265921, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.13, i32 60, i32 640, i32 480, i32 38255, i32 144, i32 0, i32 34, i32 40, i32 1, i32 1, i32 -2147483646, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.14, i32 60, i32 640, i32 480, i32 37538, i32 38, i32 177, i32 36, i32 1, i32 3, i32 1, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.15, i32 50, i32 640, i32 480, i32 37538, i32 38, i32 250, i32 32, i32 40, i32 32, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr @.str.16, i32 60, i32 640, i32 480, i32 40574, i32 35, i32 45, i32 9, i32 1, i32 46, i32 5, i32 0, i32 0, i32 0 }], align 4
@default_bpp = internal unnamed_addr global i32 16, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"registered, using mode %s\0A\00", align 1
@mx3fb_init_fbinfo.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"&mx3fbi->mutex\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Panning failed due to %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"user interrupt\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"Error preparing a DMA transaction descriptor.\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Error updating SDC buf %d to address=0x%08lX\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Sharp-QVGA\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Sharp-CLI\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"NEC-VGA\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"TV-NTSC\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"TV-PAL\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"TV-VGA\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"mx3fb: Error initializing panel.\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Cannot allocate %u bytes framebuffer memory\0A\00", align 1
@di_mappings = internal unnamed_addr constant [3 x %struct.di_mapping] [%struct.di_mapping { i32 327695, i32 720911, i32 1114127 }, %struct.di_mapping { i32 262207, i32 655375, i32 983103 }, %struct.di_mapping { i32 458752, i32 983040, i32 1507328 }], align 4
@.str.21 = private unnamed_addr constant [34 x i8] c"Cannot allocate descriptor on %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Cannot enable channel %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"mx3fb-bl\00", align 1
@mx3fb_lcdc_bl_ops = internal constant %struct.backlight_ops { i32 0, ptr @mx3fb_bl_update_status, ptr @mx3fb_bl_get_brightness, ptr null }, align 4
@.str.24 = private unnamed_addr constant [33 x i8] c"error %ld on backlight register\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"mx3fb\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"bpp=\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias266, ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__exitcall_mx3fb_exit, ptr @__initcall__kmod_mx3fb__263_1698_mx3fb_init6, ptr @mx3fb_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mx3fb_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mx3fb_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mx3fb_init() #0 section ".init.text" {
  %1 = tail call fastcc i32 @mx3fb_setup() #13
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mx3fb_driver, ptr noundef null) #12
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.backlight_properties, align 4
  %3 = alloca %struct.dma_cap_mask_t, align 4
  %4 = alloca %struct.dma_chan_request, align 8
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !8
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %166, label %8

8:                                                ; preds = %1
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 36, i32 noundef 3520) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %166, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.mx3fb_data, ptr %9, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = load i32, ptr %6, align 4
  %14 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 1, %13
  %17 = add i32 %16, %15
  %18 = tail call ptr @ioremap(i32 noundef %13, i32 noundef %17) #12
  %19 = getelementptr inbounds %struct.mx3fb_data, ptr %9, i32 0, i32 2
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %164, label %21

21:                                               ; preds = %11
  tail call void @dmaengine_get() #12
  %22 = getelementptr inbounds %struct.mx3fb_data, ptr %9, i32 0, i32 4
  store ptr %5, ptr %22, align 4
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %23, align 8
  store ptr %9, ptr %4, align 8
  store i32 0, ptr %3, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %3) #12
  call void @_set_bit(i32 noundef 9, ptr noundef nonnull %3) #12
  %24 = getelementptr inbounds %struct.dma_chan_request, ptr %4, i32 0, i32 1
  store i32 14, ptr %24, align 4
  %25 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef nonnull @chan_filter, ptr noundef nonnull %4, ptr noundef null) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %161, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.mx3fb_data, ptr %9, i32 0, i32 1
  store i32 255, ptr %28, align 4
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.mx3fb_platform_data, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.mx3fb_platform_data, ptr %31, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.3, i32 noundef %35) #14
  br label %159

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.idmac_channel, ptr %25, i32 0, i32 5
  store ptr %9, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_chan, ptr %25, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 14
  br i1 %42, label %43, label %159

43:                                               ; preds = %38
  %44 = call ptr @framebuffer_alloc(i32 noundef 328, ptr noundef %29) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %159, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 29
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.mx3fb_info, ptr %48, i32 0, i32 9
  store i32 -22, ptr %49, align 4
  %50 = getelementptr inbounds %struct.mx3fb_info, ptr %48, i32 0, i32 2
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 6, i32 13
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 20
  store ptr @mx3fb_ops, ptr %52, align 4
  %53 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 2
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mx3fb_info, ptr %48, i32 0, i32 3
  %55 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 26
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.mx3fb_info, ptr %48, i32 0, i32 5
  call void @__mutex_init(ptr noundef %56, ptr noundef nonnull @.str.5, ptr noundef nonnull @mx3fb_init_fbinfo.__key) #12
  %57 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 12
  %58 = call i32 @fb_alloc_cmap(ptr noundef %57, i32 noundef 16, i32 noundef 0) #12
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  call void @framebuffer_release(ptr noundef nonnull %44) #12
  br label %159

61:                                               ; preds = %46
  %62 = load ptr, ptr @fb_mode, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  store ptr %33, ptr @fb_mode, align 4
  %65 = icmp eq ptr %33, null
  br i1 %65, label %126, label %66

66:                                               ; preds = %64, %61
  %67 = phi ptr [ %33, %64 ], [ %62, %61 ]
  %68 = getelementptr inbounds %struct.mx3fb_platform_data, ptr %31, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.mx3fb_platform_data, ptr %31, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi ptr [ @mx3fb_modedb, %75 ], [ %69, %71 ]
  %78 = phi i32 [ 6, %75 ], [ %73, %71 ]
  %79 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 6
  %80 = load i32, ptr @default_bpp, align 4
  %81 = call i32 @fb_find_mode(ptr noundef %79, ptr noundef nonnull %44, ptr noundef nonnull %67, ptr noundef nonnull %77, i32 noundef %78, ptr noundef null, i32 noundef %80) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %126, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 13
  call void @fb_videomode_to_modelist(ptr noundef nonnull %77, i32 noundef %78, ptr noundef %84) #12
  %85 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 6, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = shl i32 %86, 1
  %88 = getelementptr inbounds %struct.fb_info, ptr %44, i32 0, i32 6, i32 3
  store i32 %87, ptr %88, align 4
  store ptr %44, ptr %9, align 4
  %89 = load ptr, ptr %19, align 4
  %90 = getelementptr i8, ptr %89, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 1048592) #12, !srcloc !9
  %91 = load ptr, ptr %19, align 4
  %92 = getelementptr i8, ptr %91, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 67043328) #12, !srcloc !9
  %93 = call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #12
  %94 = load ptr, ptr %19, align 4
  %95 = getelementptr i8, ptr %94, i32 4
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #12, !srcloc !10
  %97 = or i32 %96, -16777216
  %98 = load ptr, ptr %19, align 4
  %99 = getelementptr i8, ptr %98, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #12, !srcloc !9
  %100 = load ptr, ptr %19, align 4
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #12, !srcloc !10
  %102 = or i32 %101, 64
  %103 = load ptr, ptr %19, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %102) #12, !srcloc !9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %93) #12
  %104 = call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #12
  %105 = load ptr, ptr %19, align 4
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #12, !srcloc !10
  %107 = and i32 %106, -161
  %108 = load ptr, ptr %19, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %107) #12, !srcloc !9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %104) #12
  %109 = load ptr, ptr %47, align 4
  %110 = getelementptr inbounds %struct.mx3fb_info, ptr %109, i32 0, i32 7
  store ptr %25, ptr %110, align 4
  %111 = load i32, ptr %40, align 4
  %112 = getelementptr inbounds %struct.mx3fb_info, ptr %109, i32 0, i32 1
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.mx3fb_info, ptr %109, i32 0, i32 6
  store ptr %9, ptr %113, align 4
  store i32 1, ptr %109, align 4
  %114 = load i32, ptr %34, align 4
  %115 = getelementptr inbounds %struct.mx3fb_data, ptr %9, i32 0, i32 8
  store i32 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.mx3fb_info, ptr %109, i32 0, i32 4
  store i32 0, ptr %116, align 4
  %117 = getelementptr inbounds %struct.mx3fb_info, ptr %109, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %117, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #12
  %118 = getelementptr inbounds %struct.idmac_channel, ptr %25, i32 0, i32 15
  %119 = load i32, ptr %118, align 4
  call void @disable_irq(i32 noundef %119) #12
  %120 = call fastcc i32 @__set_par(ptr noundef nonnull %44, i1 noundef zeroext false) #12
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %83
  call fastcc void @__blank(i32 noundef 0, ptr noundef nonnull %44) #12
  %123 = load ptr, ptr @fb_mode, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str.4, ptr noundef %123) #14
  %124 = call i32 @register_framebuffer(ptr noundef nonnull %44) #12
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %83, %76, %64
  %127 = phi i32 [ %120, %83 ], [ %124, %122 ], [ -22, %64 ], [ -16, %76 ]
  call void @fb_dealloc_cmap(ptr noundef %57) #12
  call void @framebuffer_release(ptr noundef nonnull %44) #12
  br label %159

128:                                              ; preds = %122
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #12
  %129 = getelementptr inbounds %struct.mx3fb_data, ptr %9, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %158

132:                                              ; preds = %128
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #12
  %133 = getelementptr inbounds %struct.backlight_properties, ptr %2, i32 0, i32 1
  store i32 255, ptr %133, align 4
  %134 = getelementptr inbounds %struct.backlight_properties, ptr %2, i32 0, i32 4
  store i32 1, ptr %134, align 4
  %135 = load i32, ptr %28, align 4
  %136 = shl i32 %135, 16
  %137 = and i32 %136, 16711680
  %138 = or i32 %137, 50331648
  %139 = load ptr, ptr %19, align 4
  %140 = getelementptr i8, ptr %139, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 %138) #12, !srcloc !9
  %141 = load ptr, ptr %22, align 4
  %142 = call ptr @backlight_device_register(ptr noundef nonnull @.str.23, ptr noundef %141, ptr noundef nonnull %9, ptr noundef nonnull @mx3fb_lcdc_bl_ops, ptr noundef nonnull %2) #12
  %143 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %143, label %144, label %147

144:                                              ; preds = %132
  %145 = load ptr, ptr %22, align 4
  %146 = ptrtoint ptr %142 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.24, i32 noundef %146) #14
  br label %158

147:                                              ; preds = %132
  store ptr %142, ptr %129, align 4
  %148 = getelementptr inbounds %struct.backlight_properties, ptr %142, i32 0, i32 2
  store i32 0, ptr %148, align 8
  %149 = getelementptr inbounds %struct.backlight_properties, ptr %142, i32 0, i32 3
  store i32 0, ptr %149, align 4
  %150 = getelementptr inbounds %struct.backlight_device, ptr %142, i32 0, i32 6, i32 8
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.mx3fb_data, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr i8, ptr %153, i32 20
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #12, !srcloc !10
  %156 = lshr i32 %155, 16
  %157 = and i32 %156, 255
  store i32 %157, ptr %142, align 8
  br label %158

158:                                              ; preds = %147, %144, %128
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #12
  br label %166

159:                                              ; preds = %126, %60, %43, %38, %37
  %160 = phi i32 [ -12, %43 ], [ -12, %60 ], [ -22, %38 ], [ %127, %126 ], [ -22, %37 ]
  call void @dma_release_channel(ptr noundef nonnull %25) #12
  br label %161

161:                                              ; preds = %159, %21
  %162 = phi i32 [ %160, %159 ], [ -16, %21 ]
  call void @dmaengine_put() #12
  %163 = load ptr, ptr %19, align 4
  call void @iounmap(ptr noundef %163) #12
  br label %164

164:                                              ; preds = %161, %11
  %165 = phi i32 [ %162, %161 ], [ -12, %11 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #14
  br label %166

166:                                              ; preds = %164, %158, %8, %1
  %167 = phi i32 [ %165, %164 ], [ 0, %158 ], [ -22, %1 ], [ -12, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mx3fb_info, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 21
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 7, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 7, i32 1
  %16 = load i32, ptr %15, align 4
  tail call void @dma_free_attrs(ptr noundef %10, i32 noundef %12, ptr noundef %14, i32 noundef %16, i32 noundef 4) #12
  store ptr null, ptr %13, align 4
  %17 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %17) #12
  store i32 0, ptr %15, align 4
  store i32 0, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %17) #12
  %18 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %18) #12
  tail call void @unregister_framebuffer(ptr noundef %4) #12
  tail call void @framebuffer_release(ptr noundef %4) #12
  %19 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  tail call void @backlight_device_unregister(ptr noundef %20) #12
  tail call void @dma_release_channel(ptr noundef %8) #12
  tail call void @dmaengine_put() #12
  %21 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @iounmap(ptr noundef %22) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  tail call void @console_lock() #12
  %8 = load ptr, ptr %4, align 4
  tail call void @fb_set_suspend(ptr noundef %8, i32 noundef 1) #12
  tail call void @console_unlock() #12
  %9 = load i32, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mx3fb_info, ptr %7, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mx3fb_info, ptr %7, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.mx3fb_data, ptr %17, i32 0, i32 3
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #12
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr inbounds %struct.mx3fb_data, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !10
  %24 = and i32 %23, -513
  %25 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %24) #12, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #12
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 47
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %15
  %34 = tail call i32 %31(ptr noundef %28) #12
  br label %35

35:                                               ; preds = %33, %15
  store ptr null, ptr %12, align 4
  %36 = getelementptr inbounds %struct.mx3fb_info, ptr %7, i32 0, i32 9
  store i32 -22, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %11
  %38 = getelementptr inbounds %struct.mx3fb_data, ptr %4, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 50331648) #12, !srcloc !9
  br label %41

41:                                               ; preds = %37, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_info, ptr %4, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  tail call fastcc void @sdc_enable_channel(ptr noundef %6)
  %10 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 16
  %13 = and i32 %12, 16711680
  %14 = or i32 %13, 50331648
  %15 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #12, !srcloc !9
  br label %18

18:                                               ; preds = %9, %1
  tail call void @console_lock() #12
  %19 = load ptr, ptr %3, align 4
  tail call void @fb_set_suspend(ptr noundef %19, i32 noundef 0) #12
  tail call void @console_unlock() #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @chan_filter(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ %7, %2 ]
  %13 = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(9) @.str.2) #12
  %14 = icmp ne i32 %13, 0
  %15 = icmp eq ptr %1, null
  %16 = or i1 %15, %14
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.dma_chan_request, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load ptr, ptr %1, align 4
  %25 = getelementptr inbounds %struct.mx3fb_data, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %5
  br label %31

31:                                               ; preds = %23, %17, %11
  %32 = phi i1 [ false, %11 ], [ false, %17 ], [ %30, %23 ]
  ret i1 %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_put() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_find_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__set_par(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 10
  %11 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.mx3fb_data, ptr %7, i32 0, i32 3
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #12
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.mx3fb_data, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !10
  %21 = and i32 %20, -513
  %22 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #12, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #12
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 47
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %14
  %31 = tail call i32 %28(ptr noundef %25) #12
  br label %32

32:                                               ; preds = %30, %14
  store ptr null, ptr %11, align 4
  %33 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 9
  store i32 -22, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %2
  %35 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7
  store i64 5134701929918843204, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = mul i32 %39, %37
  %41 = lshr i32 %40, 3
  %42 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 3
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 12
  store i32 0, ptr %44, align 4
  %45 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  store i32 2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 6
  store i16 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 7
  store i16 1, ptr %47, align 2
  %48 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %50, %41
  %52 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = icmp ugt i32 %51, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %34
  %56 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 21
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %63 = load ptr, ptr %62, align 4
  tail call void @dma_free_attrs(ptr noundef %61, i32 noundef %53, ptr noundef %63, i32 noundef %57, i32 noundef 4) #12
  store ptr null, ptr %62, align 4
  %64 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %64) #12
  store i32 0, ptr %56, align 4
  store i32 0, ptr %52, align 4
  tail call void @mutex_unlock(ptr noundef %64) #12
  br label %65

65:                                               ; preds = %59, %55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !annotation !8
  %66 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 21
  %67 = load ptr, ptr %66, align 4
  %68 = call ptr @dma_alloc_attrs(ptr noundef %67, i32 noundef %51, ptr noundef nonnull %3, i32 noundef 3265, i32 noundef 4) #12
  %69 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load ptr, ptr %66, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.20, i32 noundef %51) #14
  store i32 0, ptr %52, align 4
  store i32 0, ptr %56, align 4
  store ptr null, ptr %69, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %326

73:                                               ; preds = %65
  br i1 %1, label %76, label %74

74:                                               ; preds = %73
  %75 = load i32, ptr %3, align 4
  store i32 %75, ptr %56, align 4
  store i32 %51, ptr %52, align 4
  br label %81

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 5
  call void @mutex_lock(ptr noundef %77) #12
  %78 = load i32, ptr %3, align 4
  store i32 %78, ptr %56, align 4
  store i32 %51, ptr %52, align 4
  call void @mutex_unlock(ptr noundef %77) #12
  %79 = load i32, ptr %52, align 4
  %80 = load ptr, ptr %69, align 4
  br label %81

81:                                               ; preds = %76, %74
  %82 = phi ptr [ %80, %76 ], [ %68, %74 ]
  %83 = phi i32 [ %79, %76 ], [ %51, %74 ]
  %84 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 25
  store i32 %83, ptr %84, align 4
  call void @llvm.memset.p0.i32(ptr align 1 %82, i8 0, i32 %83, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %85

85:                                               ; preds = %81, %34
  call void @sg_init_table(ptr noundef %10, i32 noundef 1) #12
  %86 = getelementptr %struct.mx3fb_info, ptr %5, i32 0, i32 10, i32 1
  call void @sg_init_table(ptr noundef %86, i32 noundef 1) #12
  %87 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 10, i32 0, i32 3
  store i32 %88, ptr %89, align 4
  %90 = load ptr, ptr @mem_map, align 4
  %91 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 24
  %92 = load ptr, ptr %91, align 4
  %93 = ptrtoint ptr %92 to i32
  %94 = add i32 %93, 1073741824
  %95 = lshr i32 %94, 12
  %96 = getelementptr %struct.page, ptr %90, i32 %95
  %97 = ptrtoint ptr %96 to i32
  %98 = and i32 %97, 3
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100, !prof !11

100:                                              ; preds = %85
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !12
  unreachable

101:                                              ; preds = %85
  %102 = and i32 %93, 4095
  %103 = load i32, ptr %52, align 4
  %104 = load i32, ptr %10, align 4
  %105 = and i32 %104, 3
  %106 = or i32 %105, %97
  store i32 %106, ptr %10, align 4
  %107 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 10, i32 0, i32 1
  store i32 %102, ptr %107, align 4
  %108 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 10, i32 0, i32 2
  store i32 %103, ptr %108, align 4
  %109 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 14
  br i1 %111, label %112, label %291

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 24
  %114 = load i32, ptr %113, align 4
  %115 = trunc i32 %114 to i8
  %116 = shl i8 %115, 6
  %117 = and i8 %116, 64
  %118 = and i32 %114, 2
  %119 = icmp eq i32 %118, 0
  %120 = or i8 %116, -128
  %121 = select i1 %119, i8 %117, i8 %120
  %122 = lshr i32 %114, 26
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 24
  %125 = or i8 %124, %121
  %126 = or i8 %125, 32
  %127 = icmp slt i32 %114, 0
  %128 = select i1 %127, i8 %126, i8 %125
  %129 = or i8 %128, %123
  %130 = lshr i32 %114, 24
  %131 = trunc i32 %130 to i8
  %132 = or i8 %128, %131
  %133 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 17
  %134 = load i32, ptr %133, align 4
  %135 = udiv i32 1000000000, %134
  %136 = mul i32 %135, 1000
  %137 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 22
  %138 = load i32, ptr %137, align 4
  %139 = trunc i32 %138 to i16
  %140 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 23
  %141 = load i32, ptr %140, align 4
  %142 = trunc i32 %141 to i16
  %143 = icmp eq i16 %142, 0
  %144 = icmp eq i16 %139, 0
  %145 = or i1 %144, %143
  br i1 %145, label %202, label %146

146:                                              ; preds = %112
  %147 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 21
  %148 = load i32, ptr %147, align 4
  %149 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 20
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 19
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 18
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = load i32, ptr %48, align 4
  %158 = and i32 %114, 134217728
  %159 = icmp eq i32 %158, 0
  %160 = shl i32 %138, 26
  %161 = add i32 %160, -67108864
  %162 = and i32 %154, 65535
  %163 = add i32 %152, %138
  %164 = add i32 %163, %154
  %165 = add i32 %164, %157
  %166 = shl i32 %165, 16
  %167 = add i32 %166, -65536
  %168 = or i32 %167, %161
  %169 = getelementptr inbounds %struct.mx3fb_data, ptr %7, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr i8, ptr %170, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %168) #12, !srcloc !9
  %172 = shl i32 %141, 26
  %173 = add i32 %172, -67108864
  %174 = and i32 %150, 65535
  %175 = add i32 %148, %141
  %176 = add i32 %175, %150
  %177 = add i32 %176, %156
  %178 = shl i32 %177, 16
  %179 = add i32 %178, -65536
  %180 = or i32 %173, %179
  %181 = or i32 %180, 1
  %182 = load ptr, ptr %169, align 4
  %183 = getelementptr i8, ptr %182, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %181) #12, !srcloc !9
  %184 = getelementptr inbounds %struct.mx3fb_data, ptr %7, i32 0, i32 6
  store i32 %162, ptr %184, align 4
  %185 = getelementptr inbounds %struct.mx3fb_data, ptr %7, i32 0, i32 7
  store i32 %174, ptr %185, align 4
  %186 = load ptr, ptr %169, align 4
  br i1 %159, label %192, label %187

187:                                              ; preds = %146
  %188 = getelementptr i8, ptr %186, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %188, i32 16580866) #12, !srcloc !9
  %189 = load ptr, ptr %169, align 4
  %190 = getelementptr i8, ptr %189, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %190, i32 16056564) #12, !srcloc !9
  %191 = load ptr, ptr %169, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %191, i32 4097) #12, !srcloc !9
  br label %193

192:                                              ; preds = %146
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 1) #12, !srcloc !9
  br label %193

193:                                              ; preds = %192, %187
  %194 = getelementptr inbounds %struct.mx3fb_data, ptr %7, i32 0, i32 4
  %195 = load ptr, ptr %194, align 4
  %196 = call ptr @clk_get(ptr noundef %195, ptr noundef null) #12
  %197 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  br i1 %197, label %205, label %198

198:                                              ; preds = %193
  %199 = call i32 @clk_get_rate(ptr noundef %196) #12
  %200 = shl i32 %199, 4
  %201 = udiv i32 %200, %136
  call void @clk_put(ptr noundef %196) #12
  br label %205

202:                                              ; preds = %112
  %203 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 21
  %204 = load ptr, ptr %203, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.18) #14
  br label %326

205:                                              ; preds = %198, %193
  %206 = phi i32 [ %201, %198 ], [ 0, %193 ]
  %207 = call i32 @llvm.umax.i32(i32 %206, i32 64) #12
  %208 = getelementptr inbounds %struct.mx3fb_data, ptr %7, i32 0, i32 3
  %209 = call i32 @_raw_spin_lock_irqsave(ptr noundef %208) #12
  %210 = shl i32 %207, 19
  %211 = add i32 %210, -4194304
  %212 = and i32 %211, -4194304
  %213 = or i32 %212, %207
  %214 = load ptr, ptr %169, align 4
  %215 = getelementptr i8, ptr %214, i32 168
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %215, i32 %213) #12, !srcloc !9
  %216 = load ptr, ptr %169, align 4
  %217 = getelementptr i8, ptr %216, i32 112
  %218 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %217) #12, !srcloc !10
  %219 = and i32 %218, 2030043135
  %220 = and i8 %128, 1
  %221 = zext i8 %220 to i32
  %222 = shl nuw nsw i32 %221, 24
  %223 = lshr i8 %132, 1
  %224 = and i8 %223, 1
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, 25
  %227 = or i32 %226, %222
  %228 = lshr i8 %129, 2
  %229 = and i8 %228, 1
  %230 = zext i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 26
  %232 = or i32 %227, %231
  %233 = or i32 %219, %232
  %234 = load ptr, ptr %169, align 4
  %235 = getelementptr i8, ptr %234, i32 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %235, i32 %233) #12, !srcloc !9
  %236 = load ptr, ptr %169, align 4
  %237 = getelementptr i8, ptr %236, i32 116
  %238 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %237) #12, !srcloc !10
  %239 = and i32 %238, -520093697
  %240 = lshr exact i8 %128, 3
  %241 = and i8 %240, 1
  %242 = zext i8 %241 to i32
  %243 = shl nuw nsw i32 %242, 24
  %244 = lshr i8 %128, 4
  %245 = and i8 %244, 1
  %246 = zext i8 %245 to i32
  %247 = shl nuw nsw i32 %246, 25
  %248 = or i32 %243, %247
  %249 = lshr i8 %128, 5
  %250 = and i8 %249, 1
  %251 = zext i8 %250 to i32
  %252 = shl nuw nsw i32 %251, 26
  %253 = or i32 %248, %252
  %254 = lshr i8 %128, 6
  %255 = and i8 %254, 1
  %256 = zext i8 %255 to i32
  %257 = shl nuw nsw i32 %256, 27
  %258 = or i32 %253, %257
  %259 = lshr i8 %128, 7
  %260 = zext i8 %259 to i32
  %261 = shl nuw nsw i32 %260, 28
  %262 = or i32 %258, %261
  %263 = or i32 %239, %262
  %264 = load ptr, ptr %169, align 4
  %265 = getelementptr i8, ptr %264, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 %263) #12, !srcloc !9
  %266 = getelementptr inbounds %struct.mx3fb_data, ptr %7, i32 0, i32 8
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr [3 x %struct.di_mapping], ptr @di_mappings, i32 0, i32 %267
  %269 = load i32, ptr %268, align 4
  %270 = load ptr, ptr %169, align 4
  %271 = getelementptr i8, ptr %270, i32 244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %269) #12, !srcloc !9
  %272 = getelementptr [3 x %struct.di_mapping], ptr @di_mappings, i32 0, i32 %267, i32 1
  %273 = load i32, ptr %272, align 4
  %274 = load ptr, ptr %169, align 4
  %275 = getelementptr i8, ptr %274, i32 248
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %273) #12, !srcloc !9
  %276 = getelementptr [3 x %struct.di_mapping], ptr @di_mappings, i32 0, i32 %267, i32 2
  %277 = load i32, ptr %276, align 4
  %278 = load ptr, ptr %169, align 4
  %279 = getelementptr i8, ptr %278, i32 252
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %279, i32 %277) #12, !srcloc !9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %208, i32 noundef %209) #12
  %280 = load i32, ptr %109, align 4
  %281 = icmp eq i32 %280, 14
  br i1 %281, label %282, label %291

282:                                              ; preds = %205
  %283 = load i32, ptr %184, align 4
  %284 = load i32, ptr %185, align 4
  %285 = shl i32 %283, 16
  %286 = shl i32 %284, 16
  %287 = ashr exact i32 %286, 16
  %288 = or i32 %287, %285
  %289 = load ptr, ptr %169, align 4
  %290 = getelementptr i8, ptr %289, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 %288) #12, !srcloc !9
  br label %291

291:                                              ; preds = %282, %205, %101
  %292 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 2
  store i32 0, ptr %292, align 4
  %293 = load i32, ptr %38, align 4
  switch i32 %293, label %297 [
    i32 24, label %294
    i32 32, label %295
    i32 16, label %296
  ]

294:                                              ; preds = %291
  br label %297

295:                                              ; preds = %291
  br label %297

296:                                              ; preds = %291
  br label %297

297:                                              ; preds = %296, %295, %294, %291
  %298 = phi i32 [ 0, %291 ], [ 6, %296 ], [ 15, %295 ], [ 12, %294 ]
  %299 = getelementptr inbounds %struct.idmac_channel, ptr %9, i32 0, i32 2, i32 0, i32 5
  store i32 %298, ptr %299, align 4
  %300 = load i32, ptr %48, align 4
  %301 = trunc i32 %300 to i16
  %302 = getelementptr inbounds %struct.idmac_channel, ptr %9, i32 0, i32 2, i32 0, i32 3
  store i16 %301, ptr %302, align 4
  %303 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %304 = load i32, ptr %303, align 4
  %305 = trunc i32 %304 to i16
  %306 = getelementptr inbounds %struct.idmac_channel, ptr %9, i32 0, i32 2, i32 0, i32 4
  store i16 %305, ptr %306, align 2
  %307 = load i32, ptr %36, align 4
  %308 = trunc i32 %307 to i16
  %309 = getelementptr inbounds %struct.idmac_channel, ptr %9, i32 0, i32 2, i32 0, i32 6
  store i16 %308, ptr %309, align 4
  %310 = load i32, ptr %5, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %317, label %312

312:                                              ; preds = %297
  %313 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 11, i32 4
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 11, i32 5
  %316 = load i32, ptr %315, align 4
  br label %320

317:                                              ; preds = %297
  call fastcc void @sdc_enable_channel(ptr noundef %5)
  %318 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 11, i32 4
  store i32 0, ptr %318, align 4
  %319 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 11, i32 5
  store i32 0, ptr %319, align 4
  br label %320

320:                                              ; preds = %317, %312
  %321 = phi i32 [ %316, %312 ], [ 0, %317 ]
  %322 = phi i32 [ %314, %312 ], [ 0, %317 ]
  %323 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 11
  %324 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 11, i32 4
  %325 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 11, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %323, ptr noundef align 4 dereferenceable(160) %48, i32 160, i1 false)
  store i32 %322, ptr %324, align 4
  store i32 %321, ptr %325, align 4
  br label %326

326:                                              ; preds = %320, %202, %71
  %327 = phi i32 [ -22, %202 ], [ 0, %320 ], [ -12, %71 ]
  ret i32 %327
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__blank(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %4, align 4
  store i32 %0, ptr %4, align 4
  %8 = icmp sgt i32 %0, 0
  %9 = icmp sgt i32 %7, 0
  %10 = select i1 %8, i1 %9, i1 false
  br i1 %10, label %53, label %11

11:                                               ; preds = %2
  switch i32 %0, label %53 [
    i32 4, label %12
    i32 2, label %12
    i32 3, label %12
    i32 1, label %12
    i32 0, label %44
  ]

12:                                               ; preds = %11, %11, %11, %11
  %13 = getelementptr inbounds %struct.mx3fb_data, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 50331648) #12, !srcloc !9
  %16 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 24
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %17, i8 0, i32 %19, i1 false)
  tail call void @msleep(i32 noundef 25) #12
  %20 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %12
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.mx3fb_data, ptr %24, i32 0, i32 3
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #12
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr inbounds %struct.mx3fb_data, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !10
  %31 = and i32 %30, -513
  %32 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #12, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %26) #12
  %33 = load ptr, ptr %20, align 4
  %34 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 47
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %23
  %41 = tail call i32 %38(ptr noundef %35) #12
  br label %42

42:                                               ; preds = %40, %23
  store ptr null, ptr %20, align 4
  %43 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 9
  store i32 -22, ptr %43, align 4
  br label %53

44:                                               ; preds = %11
  tail call fastcc void @sdc_enable_channel(ptr noundef %4)
  %45 = getelementptr inbounds %struct.mx3fb_data, ptr %6, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 16
  %48 = and i32 %47, 16711680
  %49 = or i32 %48, 50331648
  %50 = getelementptr inbounds %struct.mx3fb_data, ptr %6, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %49) #12, !srcloc !9
  br label %53

53:                                               ; preds = %44, %42, %12, %11, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mx3fb_check_var(ptr noundef %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %0, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 %7, ptr %5, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 %14, ptr %11, align 4
  br label %17

17:                                               ; preds = %16, %10
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %20 [
    i32 32, label %22
    i32 24, label %22
    i32 16, label %22
  ]

20:                                               ; preds = %17
  %21 = load i32, ptr @default_bpp, align 4
  store i32 %21, ptr %18, align 4
  br label %22

22:                                               ; preds = %20, %17, %17, %17
  %23 = phi i32 [ %19, %17 ], [ %19, %17 ], [ %19, %17 ], [ %21, %20 ]
  switch i32 %23, label %57 [
    i32 16, label %24
    i32 24, label %34
    i32 32, label %44
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 1
  store i32 5, ptr %26, align 4
  store i32 11, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 1
  store i32 6, ptr %29, align 4
  store i32 5, ptr %28, align 4
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 2
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 1
  store i32 5, ptr %32, align 4
  store i32 0, ptr %31, align 4
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  br label %57

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 1
  store i32 8, ptr %36, align 4
  store i32 16, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 2
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9
  %39 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 1
  store i32 8, ptr %39, align 4
  store i32 8, ptr %38, align 4
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 2
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 1
  store i32 8, ptr %42, align 4
  store i32 0, ptr %41, align 4
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  br label %57

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 1
  store i32 8, ptr %46, align 4
  store i32 16, ptr %45, align 4
  %47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 2
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 1
  store i32 8, ptr %49, align 4
  store i32 8, ptr %48, align 4
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 2
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 1
  store i32 8, ptr %52, align 4
  store i32 0, ptr %51, align 4
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 2
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 11
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 11, i32 1
  store i32 8, ptr %55, align 4
  store i32 24, ptr %54, align 4
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 11, i32 2
  store i32 0, ptr %56, align 4
  br label %57

57:                                               ; preds = %44, %34, %24, %22
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 17
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %59, 1000
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 19
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %7
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 22
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %64, %66
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 18
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %67, %69
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 21
  %72 = load i32, ptr %71, align 4
  %73 = add i32 %72, %14
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 23
  %75 = load i32, ptr %74, align 4
  %76 = add i32 %73, %75
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 20
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %76, %78
  %80 = mul i32 %70, 6
  %81 = mul i32 %80, %79
  %82 = udiv i32 %81, 100
  %83 = udiv i32 1000000000, %82
  store i32 %83, ptr %58, align 4
  br label %84

84:                                               ; preds = %61, %57
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 14
  store i32 -1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 15
  store i32 -1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 7
  store i32 0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 11, i32 24
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 24
  %91 = load i32, ptr %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, ptr %90, align 4
  %93 = load i32, ptr %88, align 4
  %94 = or i32 %93, %92
  store i32 %94, ptr %88, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_set_par(ptr noundef %0) #2 {
  %2 = alloca %struct.fb_var_screeninfo, align 4
  %3 = alloca %struct.fb_var_screeninfo, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mx3fb_info, ptr %5, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #12
  %8 = getelementptr inbounds %struct.mx3fb_info, ptr %7, i32 0, i32 11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %2, ptr noundef align 4 dereferenceable(160) %8, i32 160, i1 false) #12
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #12
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %3, ptr noundef align 4 dereferenceable(160) %9, i32 160, i1 false) #12
  %10 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 143
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #12
  br label %24

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %3, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %3, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %2, i32 0, i32 5
  store i32 %20, ptr %21, align 4
  %22 = call i32 @bcmp(ptr noundef nonnull dereferenceable(160) %2, ptr noundef nonnull dereferenceable(160) %3, i32 160) #12
  %23 = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #12
  br i1 %23, label %26, label %24

24:                                               ; preds = %15, %14
  %25 = tail call fastcc i32 @__set_par(ptr noundef %0, i1 noundef zeroext true)
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi i32 [ %25, %24 ], [ 0, %15 ]
  tail call void @mutex_unlock(ptr noundef %6) #12
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_setcolreg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mx3fb_info, ptr %8, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %6
  %14 = mul i32 %1, 19595
  %15 = mul i32 %2, 38470
  %16 = add i32 %15, %14
  %17 = mul i32 %3, 7471
  %18 = add i32 %16, %17
  %19 = lshr i32 %18, 16
  br label %20

20:                                               ; preds = %13, %6
  %21 = phi i32 [ %19, %13 ], [ %3, %6 ]
  %22 = phi i32 [ %19, %13 ], [ %2, %6 ]
  %23 = phi i32 [ %19, %13 ], [ %1, %6 ]
  %24 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 7, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  %27 = icmp ult i32 %0, 16
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %59

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 26
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8
  %33 = and i32 %23, 65535
  %34 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = sub i32 16, %35
  %37 = lshr i32 %33, %36
  %38 = load i32, ptr %32, align 4
  %39 = shl i32 %37, %38
  %40 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9
  %41 = and i32 %22, 65535
  %42 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 16, %43
  %45 = lshr i32 %41, %44
  %46 = load i32, ptr %40, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %47, %39
  %49 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10
  %50 = and i32 %21, 65535
  %51 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = sub i32 16, %52
  %54 = lshr i32 %50, %53
  %55 = load i32, ptr %49, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %48, %56
  %58 = getelementptr i32, ptr %31, i32 %0
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %29, %20
  %60 = phi i32 [ 0, %29 ], [ 1, %20 ]
  tail call void @mutex_unlock(ptr noundef %9) #12
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_blank(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %8) #12
  tail call fastcc void @__blank(i32 noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %8) #12
  br label %9

9:                                                ; preds = %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_pan_display(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 10
  %6 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %148

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 11
  %13 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 11, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  br label %25

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 11, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %148, label %25

25:                                               ; preds = %19, %16
  %26 = phi i32 [ %18, %16 ], [ %23, %19 ]
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 25
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %26
  br label %36

36:                                               ; preds = %32, %25
  %37 = phi i32 [ %26, %25 ], [ %35, %32 ]
  %38 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6
  %39 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %37, %40
  br i1 %41, label %148, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %43) #12
  %44 = load i32, ptr %27, align 4
  %45 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 9
  %46 = load i32, ptr %45, align 4
  %47 = mul i32 %46, %44
  %48 = load i32, ptr %8, align 4
  %49 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 3
  %52 = mul i32 %51, %48
  %53 = add i32 %52, %47
  %54 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %53, %55
  %57 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 4
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %58, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #12
  %59 = load ptr, ptr %6, align 4
  %60 = getelementptr inbounds %struct.idmac_channel, ptr %59, i32 0, i32 15
  %61 = load i32, ptr %60, align 4
  tail call void @enable_irq(i32 noundef %61) #12
  %62 = tail call i32 @wait_for_completion_timeout(ptr noundef %57, i32 noundef 10) #12
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %64, label %73

64:                                               ; preds = %42
  tail call void @mutex_unlock(ptr noundef %43) #12
  %65 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq i32 %62, 0
  %68 = select i1 %67, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.6, ptr noundef nonnull %68) #14
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.idmac_channel, ptr %69, i32 0, i32 15
  %71 = load i32, ptr %70, align 4
  tail call void @disable_irq(i32 noundef %71) #12
  %72 = select i1 %67, i32 -110, i32 %62
  br label %148

73:                                               ; preds = %42
  %74 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, ptr %74, align 4
  %78 = getelementptr %struct.scatterlist, ptr %5, i32 %77, i32 3
  store i32 %56, ptr %78, align 4
  %79 = load ptr, ptr @mem_map, align 4
  %80 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 24
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 %53
  %83 = ptrtoint ptr %82 to i32
  %84 = add i32 %83, 1073741824
  %85 = lshr i32 %84, 12
  %86 = getelementptr %struct.page, ptr %79, i32 %85
  %87 = ptrtoint ptr %86 to i32
  %88 = and i32 %87, 3
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90, !prof !11

90:                                               ; preds = %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !12
  unreachable

91:                                               ; preds = %73
  %92 = and i32 %83, 4095
  %93 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.scatterlist, ptr %5, i32 %77
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 3
  %98 = or i32 %97, %87
  store i32 %98, ptr %95, align 4
  %99 = getelementptr %struct.scatterlist, ptr %5, i32 %77, i32 1
  store i32 %92, ptr %99, align 4
  %100 = getelementptr %struct.scatterlist, ptr %5, i32 %77, i32 2
  store i32 %94, ptr %100, align 4
  %101 = getelementptr inbounds %struct.mx3fb_info, ptr %4, i32 0, i32 8
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %102, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = or i32 %106, 2
  store i32 %107, ptr %105, align 4
  %108 = load i32, ptr %74, align 4
  br label %109

109:                                              ; preds = %104, %91
  %110 = phi i32 [ %108, %104 ], [ %77, %91 ]
  %111 = getelementptr %struct.scatterlist, ptr %5, i32 %110
  %112 = icmp eq ptr %7, null
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %7, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.dma_device, ptr %114, i32 0, i32 39
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = tail call ptr %118(ptr noundef nonnull %7, ptr noundef %111, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %120, %116, %113, %109
  %124 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %125 = load ptr, ptr %124, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.9) #14
  tail call void @mutex_unlock(ptr noundef %43) #12
  br label %148

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %121, i32 0, i32 8
  store ptr %121, ptr %127, align 4
  %128 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %121, i32 0, i32 6
  store ptr @mx3fb_dma_done, ptr %128, align 4
  %129 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %121, i32 0, i32 4
  %130 = load ptr, ptr %129, align 4
  %131 = tail call i32 %130(ptr noundef nonnull %121) #12
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %135 = load ptr, ptr %134, align 4
  %136 = load i32, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.10, i32 noundef %136, i32 noundef %56) #14
  tail call void @mutex_unlock(ptr noundef %43) #12
  br label %148

137:                                              ; preds = %126
  store ptr %121, ptr %101, align 4
  %138 = load i32, ptr %8, align 4
  %139 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 4
  store i32 %138, ptr %139, align 4
  %140 = load i32, ptr %27, align 4
  %141 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 5
  store i32 %140, ptr %141, align 4
  %142 = load i32, ptr %28, align 4
  %143 = and i32 %142, 256
  %144 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 6, i32 25
  %145 = load i32, ptr %144, align 4
  %146 = and i32 %145, -257
  %147 = or i32 %146, %143
  store i32 %147, ptr %144, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(160) %12, ptr noundef align 4 dereferenceable(160) %38, i32 160, i1 false)
  tail call void @mutex_unlock(ptr noundef %43) #12
  br label %148

148:                                              ; preds = %137, %133, %123, %64, %36, %19, %2
  %149 = phi i32 [ %72, %64 ], [ -5, %133 ], [ 0, %137 ], [ -5, %123 ], [ -22, %2 ], [ 0, %19 ], [ -22, %36 ]
  ret i32 %149
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfb_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mx3fb_dma_done(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.idmac_channel, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fb_info, ptr %6, i32 0, i32 29
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.idmac_channel, ptr %3, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  tail call void @disable_irq_nosync(i32 noundef %10) #12
  %11 = getelementptr inbounds %struct.mx3fb_info, ptr %8, i32 0, i32 4
  tail call void @complete(ptr noundef %11) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdc_enable_channel(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.mx3fb_info, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mx3fb_info, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mx3fb_info, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mx3fb_info, ptr %0, i32 0, i32 10
  %11 = icmp eq ptr %5, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 39
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %12, %9
  %20 = getelementptr inbounds %struct.mx3fb_info, ptr %0, i32 0, i32 8
  store ptr null, ptr %20, align 4
  br label %25

21:                                               ; preds = %15
  %22 = tail call ptr %17(ptr noundef nonnull %5, ptr noundef %10, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %23 = getelementptr inbounds %struct.mx3fb_info, ptr %0, i32 0, i32 8
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %19
  %26 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dma_chan, ptr %5, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.21, i32 noundef %29) #14
  br label %69

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 8
  store ptr %22, ptr %31, align 4
  %32 = load ptr, ptr %23, align 4
  %33 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %32, i32 0, i32 6
  store ptr @mx3fb_dma_done, ptr %33, align 4
  %34 = load ptr, ptr %23, align 4
  %35 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %34) #12
  br label %56

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.mx3fb_info, ptr %0, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %40, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dma_chan, ptr %5, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.22, i32 noundef %50) #14
  br label %69

51:                                               ; preds = %42
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr inbounds %struct.dma_device, ptr %52, i32 0, i32 50
  %54 = load ptr, ptr %53, align 4
  tail call void %54(ptr noundef %5) #12
  %55 = load i32, ptr %6, align 4
  br label %56

56:                                               ; preds = %51, %30
  %57 = phi i32 [ %37, %30 ], [ %55, %51 ]
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 3
  %61 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %60) #12
  %62 = load ptr, ptr %2, align 4
  %63 = getelementptr inbounds %struct.mx3fb_data, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #12, !srcloc !10
  %66 = or i32 %65, 512
  %67 = load ptr, ptr %63, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %66) #12, !srcloc !9
  store i32 %57, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %60, i32 noundef %61) #12
  br label %68

68:                                               ; preds = %59, %56
  tail call void @msleep(i32 noundef 2) #12
  br label %69

69:                                               ; preds = %68, %46, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_bl_get_brightness(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !10
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mx3fb_bl_update_status(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %0, align 8
  %5 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i1 %7, i1 false
  %12 = select i1 %11, i32 %4, i32 0
  %13 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -256
  %16 = or i32 %12, %15
  store i32 %16, ptr %13, align 4
  %17 = shl i32 %12, 16
  %18 = and i32 %17, 16711680
  %19 = or i32 %18, 50331648
  %20 = getelementptr inbounds %struct.mx3fb_data, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %19) #12, !srcloc !9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mx3fb_setup() unnamed_addr #0 section ".init.text" {
  %1 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #12
  store ptr null, ptr %1, align 4
  %2 = call i32 @fb_get_options(ptr noundef nonnull @.str.25, ptr noundef nonnull %1) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %0
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = call ptr @strsep(ptr noundef nonnull %1, ptr noundef nonnull @.str.26) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %24, %10
  %14 = phi ptr [ %25, %24 ], [ %11, %10 ]
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = call i32 @strncmp(ptr noundef nonnull %14, ptr noundef nonnull dereferenceable(5) @.str.27, i32 noundef 4)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %14, i32 4
  %22 = call i32 @simple_strtoul(ptr noundef %21, ptr noundef null, i32 noundef 0) #12
  store i32 %22, ptr @default_bpp, align 4
  br label %24

23:                                               ; preds = %17
  store ptr %14, ptr @fb_mode, align 4
  br label %24

24:                                               ; preds = %23, %20, %13
  %25 = call ptr @strsep(ptr noundef nonnull %1, ptr noundef nonnull @.str.26) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13

27:                                               ; preds = %24, %10, %7, %4, %0
  %28 = phi i32 [ -19, %0 ], [ 0, %7 ], [ 0, %4 ], [ 0, %10 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #12
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }

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
!9 = !{i64 3749918}
!10 = !{i64 3750336}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2154398897, i64 2154399389, i64 2154398934, i64 2154398990, i64 2154399024, i64 2154399048, i64 2154399089, i64 2154399110, i64 2154399138, i64 2154399172}
