; ModuleID = '/llk/IR/drivers/video/fbdev/sh_mobile_lcdcfb.c_pt.bc'
source_filename = "../drivers/video/fbdev/sh_mobile_lcdcfb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sh_mobile_lcdc_format_info = type { i32, i32, i8, i32 }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.sh_mobile_lcdc_sys_bus_ops = type { ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.sh_mobile_lcdc_priv = type { ptr, i32, %struct.atomic_t, ptr, ptr, i32, [2 x %struct.sh_mobile_lcdc_chan], [4 x %struct.sh_mobile_lcdc_overlay], i32, i32 }
%struct.sh_mobile_lcdc_chan = type { ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.completion, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, [16 x i32], %struct.anon.72, %struct.fb_deferred_io, ptr, i32 }
%struct.anon.72 = type { i32, i32, %struct.fb_videomode }
%struct.fb_deferred_io = type { i32, %struct.mutex, %struct.list_head, ptr, ptr }
%struct.sh_mobile_lcdc_overlay = type { ptr, ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.sh_mobile_lcdc_info = type { i32, [2 x %struct.sh_mobile_lcdc_chan_cfg], [4 x %struct.sh_mobile_lcdc_overlay_cfg] }
%struct.sh_mobile_lcdc_chan_cfg = type { i32, i32, i32, i32, i32, i32, ptr, i32, %struct.sh_mobile_lcdc_panel_cfg, %struct.sh_mobile_lcdc_bl_info, %struct.sh_mobile_lcdc_sys_bus_cfg, ptr }
%struct.sh_mobile_lcdc_panel_cfg = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.sh_mobile_lcdc_bl_info = type { ptr, i32, ptr }
%struct.sh_mobile_lcdc_sys_bus_cfg = type { i32, i32, i32 }
%struct.sh_mobile_lcdc_overlay_cfg = type { i32, i32, i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sh_mobile_lcdc_entity = type { ptr, ptr, ptr, %struct.fb_videomode }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%union.anon.71 = type { ptr }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sh_mobile_lcdc_entity_ops = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_sh_mobile_lcdcfb__270_2660_sh_mobile_lcdc_driver_init6 = internal global ptr @sh_mobile_lcdc_driver_init, section ".initcall6.init", align 4
@sh_mobile_lcdc_driver = internal global %struct.platform_driver { ptr @sh_mobile_lcdc_probe, ptr @sh_mobile_lcdc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mobile_lcdc_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sh_mobile_lcdc_driver_exit = internal global ptr @sh_mobile_lcdc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description271 = internal constant [67 x i8] c"sh_mobile_lcdcfb.description=SuperH Mobile LCDC Framebuffer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author272 = internal constant [57 x i8] c"sh_mobile_lcdcfb.author=Magnus Damm <damm@opensource.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file273 = internal constant [59 x i8] c"sh_mobile_lcdcfb.file=drivers/video/fbdev/sh_mobile_lcdcfb\00", section ".modinfo", align 1
@__UNIQUE_ID_license274 = internal constant [32 x i8] c"sh_mobile_lcdcfb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"sh_mobile_lcdc_fb\00", align 1
@sh_mobile_lcdc_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @sh_mobile_lcdc_suspend, ptr @sh_mobile_lcdc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_mobile_lcdc_runtime_suspend, ptr @sh_mobile_lcdc_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"no platform data defined\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot get platform resources\0A\00", align 1
@sh_mobile_lcdc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"&priv->ch[i].open_lock\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"unable to request irq\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"unsupported interface type\0A\00", align 1
@sh_mobile_lcdc_probe.__key.6 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"&ch->frame_end_wait\00", align 1
@lcdc_offs_mainlcd = internal global [17 x i32] [i32 1024, i32 1028, i32 1048, i32 1052, i32 1056, i32 1060, i32 1064, i32 1068, i32 1072, i32 1076, i32 1080, i32 1096, i32 1100, i32 1104, i32 1108, i32 1120, i32 1184], align 4
@lcdc_offs_sublcd = internal global [17 x i32] [i32 1032, i32 1036, i32 1536, i32 1540, i32 1544, i32 1548, i32 1552, i32 1556, i32 1560, i32 0, i32 1568, i32 1572, i32 1576, i32 1580, i32 1584, i32 1596, i32 0], align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"no channels defined\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"unable to setup clocks\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"unable to start hardware\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@sh_mobile_lcdc_bl_ops = internal constant %struct.backlight_ops { i32 1, ptr @sh_mobile_lcdc_update_bl, ptr @sh_mobile_lcdc_get_brightness, ptr @sh_mobile_lcdc_check_fb }, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"unable to register backlight device: %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"bus_clk\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"peripheral_clk\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"cannot get dot clock %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Invalid FOURCC %08x.\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"yres must be multiple of 2 for YCbCr420 mode.\0A\00", align 1
@default_720p = internal constant %struct.fb_videomode { ptr @.str.20, i32 60, i32 1280, i32 720, i32 13468, i32 220, i32 110, i32 20, i32 5, i32 40, i32 5, i32 3, i32 0, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [27 x i8] c"unable to allocate buffer\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"unable to get transmitter device\0A\00", align 1
@sh_mobile_format_infos = internal constant [9 x %struct.sh_mobile_lcdc_format_info] [%struct.sh_mobile_lcdc_format_info { i32 1346520914, i32 16, i8 0, i32 3 }, %struct.sh_mobile_lcdc_format_info { i32 861030210, i32 24, i8 0, i32 11 }, %struct.sh_mobile_lcdc_format_info { i32 877807426, i32 32, i8 0, i32 0 }, %struct.sh_mobile_lcdc_format_info { i32 842094158, i32 12, i8 1, i32 65536 }, %struct.sh_mobile_lcdc_format_info { i32 825382478, i32 12, i8 1, i32 65536 }, %struct.sh_mobile_lcdc_format_info { i32 909203022, i32 16, i8 1, i32 65792 }, %struct.sh_mobile_lcdc_format_info { i32 825644622, i32 16, i8 1, i32 65792 }, %struct.sh_mobile_lcdc_format_info { i32 875714126, i32 24, i8 1, i32 66048 }, %struct.sh_mobile_lcdc_format_info { i32 842290766, i32 24, i8 1, i32 66048 }], align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"HDMI 720p\00", align 1
@sh_mobile_lcdc_ops = internal constant %struct.fb_ops { ptr null, ptr @sh_mobile_lcdc_open, ptr @sh_mobile_lcdc_release, ptr @fb_sys_read, ptr @fb_sys_write, ptr @sh_mobile_lcdc_check_var, ptr @sh_mobile_lcdc_set_par, ptr @sh_mobile_lcdc_setcolreg, ptr null, ptr @sh_mobile_lcdc_blank, ptr @sh_mobile_lcdc_pan, ptr @sh_mobile_lcdc_fillrect, ptr @sh_mobile_lcdc_copyarea, ptr @sh_mobile_lcdc_imageblit, ptr null, ptr null, ptr @sh_mobile_lcdc_ioctl, ptr null, ptr @sh_mobile_lcdc_mmap, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"unable to allocate cmap\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"%s: unable to restart LCDC\0A\00", align 1
@__func__.sh_mobile_lcdc_set_par = private unnamed_addr constant [23 x i8] c"sh_mobile_lcdc_set_par\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = private unnamed_addr constant [21 x i8] c"Invalid FOURCC %08x\0A\00", align 1
@sh_mobile_lcdc_overlay_ops = internal constant %struct.fb_ops { ptr null, ptr null, ptr null, ptr @fb_sys_read, ptr @fb_sys_write, ptr @sh_mobile_lcdc_overlay_check_var, ptr @sh_mobile_lcdc_overlay_set_par, ptr null, ptr null, ptr @sh_mobile_lcdc_overlay_blank, ptr @sh_mobile_lcdc_overlay_pan, ptr @sys_fillrect, ptr @sys_copyarea, ptr @sys_imageblit, ptr null, ptr null, ptr @sh_mobile_lcdc_overlay_ioctl, ptr null, ptr @sh_mobile_lcdc_overlay_mmap, ptr null, ptr null, ptr null, ptr null }, align 4
@sh_mobile_lcdc_overlay_fix = internal unnamed_addr constant %struct.fb_fix_screeninfo { [16 x i8] c"SH Mobile LCDC\00\00", i32 0, i32 0, i32 0, i32 0, i32 2, i16 1, i16 1, i16 0, i32 0, i32 0, i32 0, i32 0, i16 1, [2 x i16] zeroinitializer }, align 4
@.str.24 = private unnamed_addr constant [26 x i8] c"SH Mobile LCDC Overlay %u\00", align 1
@sh_mobile_lcdc_sys_bus_ops = internal global %struct.sh_mobile_lcdc_sys_bus_ops { ptr @lcdc_sys_write_index, ptr @lcdc_sys_write_data, ptr @lcdc_sys_read_data }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.25 = private unnamed_addr constant [34 x i8] c"registered %s/%s as %dx%d %dbpp.\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"mainlcd\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"sublcd\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"registered %s/overlay %u as %dx%d %dbpp.\0A\00", align 1
@overlay_sysfs_attrs = internal constant [4 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420 }, ptr @overlay_alpha_show, ptr @overlay_alpha_store }, %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420 }, ptr @overlay_mode_show, ptr @overlay_mode_store }, %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420 }, ptr @overlay_position_show, ptr @overlay_position_store }, %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420 }, ptr @overlay_rop3_show, ptr @overlay_rop3_store }], align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"ovl_alpha\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"ovl_mode\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"ovl_position\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"ovl_rop3\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file273, ptr @__UNIQUE_ID_license274, ptr @__exitcall_sh_mobile_lcdc_driver_exit, ptr @__initcall__kmod_sh_mobile_lcdcfb__270_2660_sh_mobile_lcdc_driver_init6, ptr @sh_mobile_lcdc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_mobile_lcdc_driver, ptr noundef null) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sh_mobile_lcdc_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #16
  br label %572

7:                                                ; preds = %1
  %8 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #15
  %9 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #15
  %10 = icmp eq ptr %8, null
  %11 = icmp slt i32 %9, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #16
  br label %572

14:                                               ; preds = %7
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 1048) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %572, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 3
  store ptr %2, ptr %19, align 4
  %20 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull @sh_mobile_lcdc_probe.__key) #15
  %21 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 1, i32 6
  tail call void @__mutex_init(ptr noundef %21, ptr noundef nonnull @.str.3, ptr noundef nonnull @sh_mobile_lcdc_probe.__key) #15
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %16, ptr %22, align 8
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load ptr, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %27, %26 ], [ %24, %18 ]
  %30 = tail call i32 @request_threaded_irq(i32 noundef %9, ptr noundef nonnull @sh_mobile_lcdc_irq, ptr noundef null, i32 noundef 0, ptr noundef %29, ptr noundef nonnull %16) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #16
  br label %569

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 1
  store i32 %9, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 2
  store volatile i32 -1, ptr %35, align 8
  %36 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6
  br label %37

37:                                               ; preds = %100, %33
  %38 = phi i1 [ true, %33 ], [ false, %100 ]
  %39 = phi i32 [ 0, %33 ], [ 1, %100 ]
  %40 = phi i32 [ 0, %33 ], [ %101, %100 ]
  %41 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %40
  store ptr %16, ptr %41, align 4
  %42 = getelementptr %struct.sh_mobile_lcdc_info, ptr %4, i32 0, i32 1, i32 %39
  %43 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %40, i32 2
  store ptr %42, ptr %43, align 4
  %44 = getelementptr %struct.sh_mobile_lcdc_info, ptr %4, i32 0, i32 1, i32 %39, i32 3
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %93 [
    i32 0, label %46
    i32 4, label %46
    i32 5, label %46
    i32 6, label %46
    i32 7, label %46
    i32 10, label %46
    i32 11, label %46
    i32 4096, label %46
    i32 4097, label %46
    i32 4098, label %46
    i32 4099, label %46
    i32 4100, label %46
    i32 4101, label %46
    i32 4103, label %46
    i32 4104, label %46
    i32 4105, label %46
    i32 4106, label %46
    i32 4107, label %46
  ]

46:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37, %37
  %47 = load i32, ptr %42, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = and i32 %45, 4096
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %93, label %52

52:                                               ; preds = %49
  %53 = and i32 %45, -4097
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi i32 [ %53, %52 ], [ %45, %46 ]
  %56 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %40, i32 4
  store i32 %55, ptr %56, align 4
  %57 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %40, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %57, ptr noundef nonnull @.str.7, ptr noundef nonnull @sh_mobile_lcdc_probe.__key.6) #15
  %58 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %40, i32 14
  store i32 0, ptr %58, align 4
  %59 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %40, i32 14, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %59, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #15
  %60 = load ptr, ptr %43, align 4
  %61 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %60, i32 0, i32 9, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %60, i32 0, i32 9
  %66 = load ptr, ptr %65, align 4
  %67 = tail call ptr @backlight_device_register(ptr noundef %66, ptr noundef %2, ptr noundef %41, ptr noundef nonnull @sh_mobile_lcdc_bl_ops, ptr noundef null) #15
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = ptrtoint ptr %67 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %70) #16
  br label %87

71:                                               ; preds = %64
  %72 = load ptr, ptr %43, align 4
  %73 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %72, i32 0, i32 9, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.backlight_properties, ptr %67, i32 0, i32 1
  store i32 %74, ptr %75, align 4
  store i32 %74, ptr %67, align 8
  %76 = getelementptr inbounds %struct.backlight_device, ptr %67, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %76) #15
  %77 = getelementptr inbounds %struct.backlight_device, ptr %67, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.backlight_ops, ptr %78, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = tail call i32 %82(ptr noundef %67) #15
  br label %86

86:                                               ; preds = %84, %80, %71
  tail call void @mutex_unlock(ptr noundef %76) #15
  br label %87

87:                                               ; preds = %86, %69
  %88 = phi ptr [ null, %69 ], [ %67, %86 ]
  %89 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %40, i32 25
  store ptr %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %87, %54
  %91 = load i32, ptr %42, align 4
  switch i32 %91, label %100 [
    i32 1, label %94
    i32 2, label %92
  ]

92:                                               ; preds = %90
  br label %94

93:                                               ; preds = %49, %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #16
  br label %569

94:                                               ; preds = %92, %90
  %95 = phi i32 [ 4, %92 ], [ 2, %90 ]
  %96 = phi ptr [ @lcdc_offs_sublcd, %92 ], [ @lcdc_offs_mainlcd, %90 ]
  %97 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %40, i32 5
  store i32 %95, ptr %97, align 4
  %98 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %40, i32 3
  store ptr %96, ptr %98, align 4
  %99 = add i32 %40, 1
  br label %100

100:                                              ; preds = %94, %90
  %101 = phi i32 [ %40, %90 ], [ %99, %94 ]
  br i1 %38, label %37, label %102

102:                                              ; preds = %100
  switch i32 %101, label %108 [
    i32 0, label %103
    i32 2, label %104
  ]

103:                                              ; preds = %102
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8) #16
  br label %569

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.sh_mobile_lcdc_info, ptr %4, i32 0, i32 1, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 9
  store i32 %106, ptr %107, align 4
  br label %108

108:                                              ; preds = %104, %102
  %109 = load i32, ptr %8, align 4
  %110 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = sub i32 1, %109
  %113 = add i32 %112, %111
  %114 = tail call ptr @ioremap(i32 noundef %109, i32 noundef %113) #15
  store ptr %114, ptr %16, align 8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %569, label %116

116:                                              ; preds = %108
  %117 = load i32, ptr %4, align 4
  switch i32 %117, label %133 [
    i32 0, label %121
    i32 1, label %118
    i32 2, label %119
  ]

118:                                              ; preds = %116
  br label %121

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 5
  store i32 131072, ptr %120, align 4
  br label %135

121:                                              ; preds = %118, %116
  %122 = phi i32 [ 65536, %118 ], [ %117, %116 ]
  %123 = phi ptr [ @.str.14, %118 ], [ @.str.13, %116 ]
  %124 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 5
  store i32 %122, ptr %124, align 4
  %125 = load ptr, ptr %19, align 4
  %126 = tail call ptr @clk_get(ptr noundef %125, ptr noundef nonnull %123) #15
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %130, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 4
  store ptr %126, ptr %129, align 8
  br label %135

130:                                              ; preds = %121
  %131 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.15, ptr noundef nonnull %123) #16
  %132 = ptrtoint ptr %126 to i32
  br label %133

133:                                              ; preds = %130, %116
  %134 = phi i32 [ %132, %130 ], [ -22, %116 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #16
  br label %569

135:                                              ; preds = %128, %119
  tail call void @pm_runtime_enable(ptr noundef %2) #15
  %136 = icmp sgt i32 %101, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %138, %135
  br label %326

138:                                              ; preds = %323
  %139 = add nuw nsw i32 %142, 1
  %140 = icmp eq i32 %139, %101
  br i1 %140, label %137, label %141

141:                                              ; preds = %138, %135
  %142 = phi i32 [ %139, %138 ], [ 0, %135 ]
  %143 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142
  %144 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %143, align 4
  %147 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %145, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  switch i32 %150, label %159 [
    i32 1346520914, label %160
    i32 861030210, label %151
    i32 877807426, label %152
    i32 842094158, label %153
    i32 825382478, label %154
    i32 909203022, label %155
    i32 825644622, label %156
    i32 875714126, label %157
    i32 842290766, label %158
  ]

151:                                              ; preds = %141
  br label %160

152:                                              ; preds = %141
  br label %160

153:                                              ; preds = %141
  br label %160

154:                                              ; preds = %141
  br label %160

155:                                              ; preds = %141
  br label %160

156:                                              ; preds = %141
  br label %160

157:                                              ; preds = %141
  br label %160

158:                                              ; preds = %141
  br label %160

159:                                              ; preds = %141
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.16, i32 noundef %150) #16
  br label %569

160:                                              ; preds = %158, %157, %156, %155, %154, %153, %152, %151, %141
  %161 = phi ptr [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %158 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %157 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %156 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %155 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %154 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %153 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %152 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %151 ], [ @sh_mobile_format_infos, %141 ]
  %162 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %145, i32 0, i32 6
  %163 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %145, i32 0, i32 7
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 0
  %166 = load ptr, ptr %162, align 4
  br i1 %165, label %187, label %167

167:                                              ; preds = %180, %160
  %168 = phi i32 [ %182, %180 ], [ 0, %160 ]
  %169 = phi i32 [ %181, %180 ], [ 0, %160 ]
  %170 = phi ptr [ %183, %180 ], [ %166, %160 ]
  %171 = getelementptr inbounds %struct.fb_videomode, ptr %170, i32 0, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds %struct.fb_videomode, ptr %170, i32 0, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = mul i32 %174, %172
  switch i32 %150, label %180 [
    i32 842094158, label %176
    i32 825382478, label %176
  ]

176:                                              ; preds = %167, %167
  %177 = and i32 %172, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.17) #16
  br label %569

180:                                              ; preds = %176, %167
  %181 = tail call i32 @llvm.umax.i32(i32 %175, i32 %169) #15
  %182 = add nuw i32 %168, 1
  %183 = getelementptr %struct.fb_videomode, ptr %170, i32 1
  %184 = icmp eq i32 %182, %164
  br i1 %184, label %185, label %167

185:                                              ; preds = %180
  %186 = icmp eq i32 %181, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %185, %160
  br label %188

188:                                              ; preds = %187, %185
  %189 = phi i32 [ 2073600, %187 ], [ %181, %185 ]
  %190 = icmp eq ptr %166, null
  %191 = select i1 %190, ptr @default_720p, ptr %166
  %192 = select i1 %190, i32 1, i32 %164
  %193 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 15
  store ptr %161, ptr %193, align 4
  %194 = getelementptr inbounds %struct.fb_videomode, ptr %191, i32 0, i32 2
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 17
  store i32 %195, ptr %196, align 4
  %197 = load i32, ptr %194, align 4
  %198 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 18
  store i32 %197, ptr %198, align 4
  %199 = getelementptr inbounds %struct.fb_videomode, ptr %191, i32 0, i32 3
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 19
  store i32 %200, ptr %201, align 4
  %202 = load i32, ptr %199, align 4
  %203 = shl i32 %202, 1
  %204 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 20
  store i32 %203, ptr %204, align 4
  %205 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %161, i32 0, i32 2
  %206 = load i8, ptr %205, align 4, !range !8
  %207 = icmp eq i8 %206, 0
  %208 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 16
  br i1 %207, label %209, label %214

209:                                              ; preds = %188
  store i32 8, ptr %208, align 4
  %210 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %161, i32 0, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = mul i32 %211, %197
  %213 = lshr i32 %212, 3
  br label %217

214:                                              ; preds = %188
  store i32 3, ptr %208, align 4
  %215 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %161, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  br label %217

217:                                              ; preds = %214, %209
  %218 = phi i32 [ %211, %209 ], [ %216, %214 ]
  %219 = phi i32 [ %213, %209 ], [ %197, %214 ]
  %220 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 21
  store i32 %219, ptr %220, align 4
  %221 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %145, i32 0, i32 8
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 29
  store i32 %222, ptr %223, align 4
  %224 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %145, i32 0, i32 8, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 29, i32 1
  store i32 %225, ptr %226, align 4
  %227 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 29, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(56) %227, ptr noundef nonnull align 4 dereferenceable(56) %191, i32 56, i1 false) #15
  %228 = mul i32 %218, %189
  %229 = lshr i32 %228, 2
  %230 = and i32 %229, 1073741822
  %231 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 9
  store i32 %230, ptr %231, align 4
  %232 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 10
  %233 = tail call ptr @dma_alloc_attrs(ptr noundef %148, i32 noundef %230, ptr noundef %232, i32 noundef 3264, i32 noundef 0) #15
  %234 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 8
  store ptr %233, ptr %234, align 4
  %235 = icmp eq ptr %233, null
  br i1 %235, label %236, label %237

236:                                              ; preds = %217
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.18) #16
  br label %569

237:                                              ; preds = %217
  %238 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %145, i32 0, i32 11
  %239 = load ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %258, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.platform_device, ptr %239, i32 0, i32 3, i32 6
  %243 = load ptr, ptr %242, align 8
  %244 = icmp eq ptr %243, null
  br i1 %244, label %249, label %245

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.device_driver, ptr %243, i32 0, i32 2
  %247 = load ptr, ptr %246, align 4
  %248 = tail call zeroext i1 @try_module_get(ptr noundef %247) #15
  br i1 %248, label %250, label %249

249:                                              ; preds = %245, %241
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.19) #16
  br label %569

250:                                              ; preds = %245
  %251 = load ptr, ptr %238, align 4
  %252 = getelementptr inbounds %struct.platform_device, ptr %251, i32 0, i32 3, i32 8
  %253 = load ptr, ptr %252, align 8
  %254 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 1
  store ptr %253, ptr %254, align 4
  %255 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %253, i32 0, i32 2
  store ptr %143, ptr %255, align 4
  %256 = load ptr, ptr %254, align 4
  %257 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %256, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(56) %257, ptr noundef nonnull align 4 dereferenceable(56) %191, i32 56, i1 false) #15
  br label %258

258:                                              ; preds = %250, %237
  %259 = load ptr, ptr %143, align 4
  %260 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %259, i32 0, i32 3
  %261 = load ptr, ptr %260, align 4
  %262 = tail call ptr @framebuffer_alloc(i32 noundef 0, ptr noundef %261) #15
  %263 = icmp eq ptr %262, null
  br i1 %263, label %569, label %264

264:                                              ; preds = %258
  %265 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 27
  store ptr %262, ptr %265, align 4
  %266 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 2
  store i32 0, ptr %266, align 4
  %267 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 20
  store ptr @sh_mobile_lcdc_ops, ptr %267, align 4
  %268 = load ptr, ptr %260, align 4
  %269 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 21
  store ptr %268, ptr %269, align 4
  %270 = load ptr, ptr %234, align 4
  %271 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 24
  store ptr %270, ptr %271, align 4
  %272 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 6, i32 %142, i32 28
  %273 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 26
  store ptr %272, ptr %273, align 4
  %274 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 29
  store ptr %143, ptr %274, align 4
  %275 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 13
  tail call void @fb_videomode_to_modelist(ptr noundef %191, i32 noundef %192, ptr noundef %275) #15
  %276 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 12
  %277 = tail call i32 @fb_alloc_cmap(ptr noundef %276, i32 noundef 16, i32 noundef 0) #15
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %264
  %280 = load ptr, ptr %260, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %280, ptr noundef nonnull @.str.21) #16
  br label %569

281:                                              ; preds = %264
  %282 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %282, ptr noundef nonnull align 4 dereferenceable(68) @sh_mobile_lcdc_overlay_fix, i32 68, i1 false) #15
  %283 = load i32, ptr %232, align 4
  %284 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 7, i32 1
  store i32 %283, ptr %284, align 4
  %285 = load i32, ptr %231, align 4
  %286 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 7, i32 2
  store i32 %285, ptr %286, align 4
  %287 = load i32, ptr %220, align 4
  %288 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 7, i32 9
  store i32 %287, ptr %288, align 4
  %289 = load ptr, ptr %193, align 4
  %290 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %289, i32 0, i32 2
  %291 = load i8, ptr %290, align 4, !range !8
  %292 = icmp eq i8 %291, 0
  %293 = select i1 %292, i32 2, i32 6
  %294 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 7, i32 5
  store i32 %293, ptr %294, align 4
  %295 = load ptr, ptr %193, align 4
  %296 = load i32, ptr %295, align 4
  switch i32 %296, label %301 [
    i32 842094158, label %297
    i32 825382478, label %297
    i32 909203022, label %299
    i32 825644622, label %299
  ]

297:                                              ; preds = %281, %281
  %298 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 7, i32 7
  store i16 2, ptr %298, align 2
  br label %299

299:                                              ; preds = %297, %281, %281
  %300 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 7, i32 6
  store i16 2, ptr %300, align 4
  br label %301

301:                                              ; preds = %299, %281
  %302 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 6
  tail call void @fb_videomode_to_var(ptr noundef %302, ptr noundef %191) #15
  %303 = load i32, ptr %223, align 4
  %304 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 6, i32 15
  store i32 %303, ptr %304, align 4
  %305 = load i32, ptr %226, align 4
  %306 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 6, i32 14
  store i32 %305, ptr %306, align 4
  %307 = load i32, ptr %198, align 4
  %308 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 6, i32 2
  store i32 %307, ptr %308, align 4
  %309 = load i32, ptr %204, align 4
  %310 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 6, i32 3
  store i32 %309, ptr %310, align 4
  %311 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 6, i32 13
  store i32 0, ptr %311, align 4
  %312 = load ptr, ptr %193, align 4
  %313 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %312, i32 0, i32 2
  %314 = load i8, ptr %313, align 4, !range !8
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %301
  %317 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %312, i32 0, i32 1
  %318 = load i32, ptr %317, align 4
  %319 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 6, i32 6
  store i32 %318, ptr %319, align 4
  br label %323

320:                                              ; preds = %301
  %321 = load i32, ptr %312, align 4
  %322 = getelementptr inbounds %struct.fb_info, ptr %262, i32 0, i32 6, i32 7
  store i32 %321, ptr %322, align 4
  br label %323

323:                                              ; preds = %320, %316
  %324 = tail call i32 @sh_mobile_lcdc_check_var(ptr noundef %302, ptr noundef nonnull %262) #15
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %138, label %569

326:                                              ; preds = %445, %137
  %327 = phi i32 [ %446, %445 ], [ 0, %137 ]
  %328 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327
  %329 = getelementptr %struct.sh_mobile_lcdc_info, ptr %4, i32 0, i32 2, i32 %327
  %330 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 1
  store ptr %329, ptr %330, align 4
  store ptr %36, ptr %328, align 4
  %331 = load ptr, ptr %36, align 8
  %332 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %331, i32 0, i32 3
  %333 = load ptr, ptr %332, align 4
  %334 = load i32, ptr %329, align 4
  switch i32 %334, label %343 [
    i32 0, label %445
    i32 1346520914, label %344
    i32 861030210, label %335
    i32 877807426, label %336
    i32 842094158, label %337
    i32 825382478, label %338
    i32 909203022, label %339
    i32 825644622, label %340
    i32 875714126, label %341
    i32 842290766, label %342
  ]

335:                                              ; preds = %326
  br label %344

336:                                              ; preds = %326
  br label %344

337:                                              ; preds = %326
  br label %344

338:                                              ; preds = %326
  br label %344

339:                                              ; preds = %326
  br label %344

340:                                              ; preds = %326
  br label %344

341:                                              ; preds = %326
  br label %344

342:                                              ; preds = %326
  br label %344

343:                                              ; preds = %326
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %333, ptr noundef nonnull @.str.23, i32 noundef %334) #16
  br label %569

344:                                              ; preds = %342, %341, %340, %339, %338, %337, %336, %335, %326
  %345 = phi ptr [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %342 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %341 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %340 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %339 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %338 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %337 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %336 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %335 ], [ @sh_mobile_format_infos, %326 ]
  %346 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 5
  store i8 0, ptr %346, align 4
  %347 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 6
  store i32 0, ptr %347, align 4
  %348 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 7
  store i32 255, ptr %348, align 4
  %349 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 8
  store i32 0, ptr %349, align 4
  %350 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 21
  store i32 0, ptr %350, align 4
  %351 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 22
  store i32 0, ptr %351, align 4
  %352 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 15
  store ptr %345, ptr %352, align 4
  %353 = getelementptr %struct.sh_mobile_lcdc_info, ptr %4, i32 0, i32 2, i32 %327, i32 1
  %354 = load i32, ptr %353, align 4
  %355 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 16
  store i32 %354, ptr %355, align 4
  %356 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 17
  store i32 %354, ptr %356, align 4
  %357 = getelementptr %struct.sh_mobile_lcdc_info, ptr %4, i32 0, i32 2, i32 %327, i32 2
  %358 = load i32, ptr %357, align 4
  %359 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 18
  store i32 %358, ptr %359, align 4
  %360 = shl i32 %358, 1
  %361 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 19
  store i32 %360, ptr %361, align 4
  %362 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %345, i32 0, i32 2
  %363 = load i8, ptr %362, align 4, !range !8
  %364 = icmp eq i8 %363, 0
  %365 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %345, i32 0, i32 1
  %366 = load i32, ptr %365, align 4
  %367 = mul i32 %366, %354
  %368 = lshr i32 %367, 3
  %369 = select i1 %364, i32 %368, i32 %354
  %370 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 20
  store i32 %369, ptr %370, align 4
  %371 = load i32, ptr %353, align 4
  %372 = load i32, ptr %357, align 4
  %373 = mul i32 %372, %371
  %374 = mul i32 %373, %366
  %375 = lshr i32 %374, 2
  %376 = and i32 %375, 1073741822
  %377 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 10
  store i32 %376, ptr %377, align 4
  %378 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 11
  %379 = tail call ptr @dma_alloc_attrs(ptr noundef %333, i32 noundef %376, ptr noundef %378, i32 noundef 3264, i32 noundef 0) #15
  %380 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 9
  store ptr %379, ptr %380, align 4
  %381 = icmp eq ptr %379, null
  br i1 %381, label %382, label %383

382:                                              ; preds = %344
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %333, ptr noundef nonnull @.str.18) #16
  br label %569

383:                                              ; preds = %344
  %384 = load ptr, ptr %328, align 4
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %385, i32 0, i32 3
  %387 = load ptr, ptr %386, align 4
  %388 = tail call ptr @framebuffer_alloc(i32 noundef 0, ptr noundef %387) #15
  %389 = icmp eq ptr %388, null
  br i1 %389, label %569, label %390

390:                                              ; preds = %383
  %391 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 2
  store ptr %388, ptr %391, align 4
  %392 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 2
  store i32 0, ptr %392, align 4
  %393 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 20
  store ptr @sh_mobile_lcdc_overlay_ops, ptr %393, align 4
  %394 = load ptr, ptr %386, align 4
  %395 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 21
  store ptr %394, ptr %395, align 4
  %396 = load ptr, ptr %380, align 4
  %397 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 24
  store ptr %396, ptr %397, align 4
  %398 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 29
  store ptr %328, ptr %398, align 4
  %399 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(68) %399, ptr noundef nonnull align 4 dereferenceable(68) @sh_mobile_lcdc_overlay_fix, i32 68, i1 false) #15
  %400 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %327, i32 3
  %401 = load i32, ptr %400, align 4
  %402 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %399, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %401) #15
  %403 = load i32, ptr %378, align 4
  %404 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 7, i32 1
  store i32 %403, ptr %404, align 4
  %405 = load i32, ptr %377, align 4
  %406 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 7, i32 2
  store i32 %405, ptr %406, align 4
  %407 = load i32, ptr %370, align 4
  %408 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 7, i32 9
  store i32 %407, ptr %408, align 4
  %409 = load ptr, ptr %352, align 4
  %410 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %409, i32 0, i32 2
  %411 = load i8, ptr %410, align 4, !range !8
  %412 = icmp eq i8 %411, 0
  %413 = select i1 %412, i32 2, i32 6
  %414 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 7, i32 5
  store i32 %413, ptr %414, align 4
  %415 = load ptr, ptr %352, align 4
  %416 = load i32, ptr %415, align 4
  switch i32 %416, label %421 [
    i32 842094158, label %417
    i32 825382478, label %417
    i32 909203022, label %419
    i32 825644622, label %419
  ]

417:                                              ; preds = %390, %390
  %418 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 7, i32 7
  store i16 2, ptr %418, align 2
  br label %419

419:                                              ; preds = %417, %390, %390
  %420 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 7, i32 6
  store i16 2, ptr %420, align 4
  br label %421

421:                                              ; preds = %419, %390
  %422 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(160) %422, i8 0, i32 160, i1 false) #15
  %423 = load i32, ptr %355, align 4
  store i32 %423, ptr %422, align 4
  %424 = load i32, ptr %359, align 4
  %425 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 6, i32 1
  store i32 %424, ptr %425, align 4
  %426 = load i32, ptr %356, align 4
  %427 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 6, i32 2
  store i32 %426, ptr %427, align 4
  %428 = load i32, ptr %361, align 4
  %429 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 6, i32 3
  store i32 %428, ptr %429, align 4
  %430 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 6, i32 13
  store i32 0, ptr %430, align 4
  %431 = load ptr, ptr %352, align 4
  %432 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %431, i32 0, i32 2
  %433 = load i8, ptr %432, align 4, !range !8
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %421
  %436 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %431, i32 0, i32 1
  %437 = load i32, ptr %436, align 4
  %438 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 6, i32 6
  store i32 %437, ptr %438, align 4
  br label %442

439:                                              ; preds = %421
  %440 = load i32, ptr %431, align 4
  %441 = getelementptr inbounds %struct.fb_info, ptr %388, i32 0, i32 6, i32 7
  store i32 %440, ptr %441, align 4
  br label %442

442:                                              ; preds = %439, %435
  %443 = tail call fastcc i32 @__sh_mobile_lcdc_check_var(ptr noundef %422, ptr noundef nonnull %388) #15
  %444 = icmp slt i32 %443, 0
  br i1 %444, label %569, label %445

445:                                              ; preds = %442, %326
  %446 = add nuw nsw i32 %327, 1
  %447 = icmp eq i32 %446, 4
  br i1 %447, label %448, label %326

448:                                              ; preds = %445
  %449 = tail call fastcc i32 @sh_mobile_lcdc_start(ptr noundef nonnull %16)
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %448
  br i1 %136, label %457, label %452

452:                                              ; preds = %454, %451
  br label %521

453:                                              ; preds = %448
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #16
  br label %569

454:                                              ; preds = %519
  %455 = add nuw nsw i32 %458, 1
  %456 = icmp eq i32 %455, %101
  br i1 %456, label %452, label %457

457:                                              ; preds = %454, %451
  %458 = phi i32 [ %455, %454 ], [ 0, %451 ]
  %459 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %458
  %460 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %458, i32 27
  %461 = load ptr, ptr %460, align 4
  %462 = getelementptr inbounds %struct.fb_info, ptr %461, i32 0, i32 19
  %463 = load ptr, ptr %462, align 4
  %464 = icmp eq ptr %463, null
  br i1 %464, label %473, label %465

465:                                              ; preds = %457
  %466 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %458, i32 9
  %467 = load i32, ptr %466, align 4
  %468 = mul i32 %467, 20
  %469 = lshr i32 %468, 12
  %470 = tail call noalias ptr @vmalloc(i32 noundef %469) #18
  %471 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %458, i32 31
  store ptr %470, ptr %471, align 4
  %472 = icmp eq ptr %470, null
  br i1 %472, label %569, label %473

473:                                              ; preds = %465, %457
  %474 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %458, i32 25
  %475 = load ptr, ptr %474, align 4
  %476 = getelementptr inbounds %struct.fb_info, ptr %461, i32 0, i32 15
  store ptr %475, ptr %476, align 4
  %477 = tail call i32 @register_framebuffer(ptr noundef %461) #15
  %478 = icmp slt i32 %477, 0
  br i1 %478, label %569, label %479

479:                                              ; preds = %473
  %480 = load ptr, ptr %459, align 4
  %481 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %480, i32 0, i32 3
  %482 = load ptr, ptr %481, align 4
  %483 = getelementptr inbounds %struct.device, ptr %482, i32 0, i32 3
  %484 = load ptr, ptr %483, align 4
  %485 = icmp eq ptr %484, null
  br i1 %485, label %486, label %488

486:                                              ; preds = %479
  %487 = load ptr, ptr %482, align 4
  br label %488

488:                                              ; preds = %486, %479
  %489 = phi ptr [ %487, %486 ], [ %484, %479 ]
  %490 = getelementptr %struct.sh_mobile_lcdc_chan, ptr %36, i32 %458, i32 2
  %491 = load ptr, ptr %490, align 4
  %492 = load i32, ptr %491, align 4
  %493 = icmp eq i32 %492, 1
  %494 = select i1 %493, ptr @.str.26, ptr @.str.27
  %495 = getelementptr inbounds %struct.fb_info, ptr %461, i32 0, i32 6
  %496 = load i32, ptr %495, align 4
  %497 = getelementptr inbounds %struct.fb_info, ptr %461, i32 0, i32 6, i32 1
  %498 = load i32, ptr %497, align 4
  %499 = getelementptr inbounds %struct.fb_info, ptr %461, i32 0, i32 6, i32 6
  %500 = load i32, ptr %499, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %482, ptr noundef nonnull @.str.25, ptr noundef %489, ptr noundef nonnull %494, i32 noundef %496, i32 noundef %498, i32 noundef %500) #16
  %501 = load ptr, ptr %462, align 4
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %507

503:                                              ; preds = %488
  %504 = getelementptr inbounds %struct.fb_info, ptr %461, i32 0, i32 27
  %505 = load i32, ptr %504, align 4
  %506 = icmp eq i32 %505, 1
  br i1 %506, label %507, label %519

507:                                              ; preds = %503, %488
  %508 = load ptr, ptr %459, align 4
  %509 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %508, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %509) #15, !srcloc !10
  %510 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %509, ptr %509, i32 1, ptr elementtype(i32) %509) #15, !srcloc !11
  %511 = extractvalue { i32, i32 } %510, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %512 = icmp eq i32 %511, -1
  br i1 %512, label %513, label %519

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %508, i32 0, i32 3
  %515 = load ptr, ptr %514, align 4
  %516 = tail call i32 @__pm_runtime_idle(ptr noundef %515, i32 noundef 5) #15
  %517 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %508, i32 0, i32 4
  %518 = load ptr, ptr %517, align 4
  tail call void @clk_disable(ptr noundef %518) #15
  tail call void @clk_unprepare(ptr noundef %518) #15
  br label %519

519:                                              ; preds = %513, %507, %503
  %520 = icmp eq i32 %477, 0
  br i1 %520, label %454, label %569

521:                                              ; preds = %566, %452
  %522 = phi i32 [ %567, %566 ], [ 0, %452 ]
  %523 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %522
  %524 = load ptr, ptr %523, align 4
  %525 = load ptr, ptr %524, align 4
  %526 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %522, i32 2
  %527 = load ptr, ptr %526, align 4
  %528 = icmp eq ptr %527, null
  br i1 %528, label %566, label %529

529:                                              ; preds = %521
  %530 = tail call i32 @register_framebuffer(ptr noundef nonnull %527) #15
  %531 = icmp slt i32 %530, 0
  br i1 %531, label %569, label %532

532:                                              ; preds = %529
  %533 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %525, i32 0, i32 3
  %534 = load ptr, ptr %533, align 4
  %535 = getelementptr inbounds %struct.device, ptr %534, i32 0, i32 3
  %536 = load ptr, ptr %535, align 4
  %537 = icmp eq ptr %536, null
  br i1 %537, label %538, label %540

538:                                              ; preds = %532
  %539 = load ptr, ptr %534, align 4
  br label %540

540:                                              ; preds = %538, %532
  %541 = phi ptr [ %539, %538 ], [ %536, %532 ]
  %542 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %16, i32 0, i32 7, i32 %522, i32 3
  %543 = load i32, ptr %542, align 4
  %544 = getelementptr inbounds %struct.fb_info, ptr %527, i32 0, i32 6
  %545 = load i32, ptr %544, align 4
  %546 = getelementptr inbounds %struct.fb_info, ptr %527, i32 0, i32 6, i32 1
  %547 = load i32, ptr %546, align 4
  %548 = getelementptr inbounds %struct.fb_info, ptr %527, i32 0, i32 6, i32 6
  %549 = load i32, ptr %548, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %534, ptr noundef nonnull @.str.28, ptr noundef %541, i32 noundef %543, i32 noundef %545, i32 noundef %547, i32 noundef %549) #16
  %550 = getelementptr inbounds %struct.fb_info, ptr %527, i32 0, i32 22
  %551 = load ptr, ptr %550, align 4
  %552 = tail call i32 @device_create_file(ptr noundef %551, ptr noundef nonnull @overlay_sysfs_attrs) #15
  %553 = icmp slt i32 %552, 0
  br i1 %553, label %569, label %554

554:                                              ; preds = %540
  %555 = load ptr, ptr %550, align 4
  %556 = tail call i32 @device_create_file(ptr noundef %555, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @overlay_sysfs_attrs, i32 0, i32 1)) #15
  %557 = icmp slt i32 %556, 0
  br i1 %557, label %569, label %558

558:                                              ; preds = %554
  %559 = load ptr, ptr %550, align 4
  %560 = tail call i32 @device_create_file(ptr noundef %559, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @overlay_sysfs_attrs, i32 0, i32 2)) #15
  %561 = icmp slt i32 %560, 0
  br i1 %561, label %569, label %562

562:                                              ; preds = %558
  %563 = load ptr, ptr %550, align 4
  %564 = tail call i32 @device_create_file(ptr noundef %563, ptr noundef getelementptr inbounds ([4 x %struct.device_attribute], ptr @overlay_sysfs_attrs, i32 0, i32 3)) #15
  %565 = icmp sgt i32 %564, -1
  br i1 %565, label %566, label %569

566:                                              ; preds = %562, %521
  %567 = add nuw nsw i32 %522, 1
  %568 = icmp eq i32 %567, 4
  br i1 %568, label %572, label %521

569:                                              ; preds = %562, %558, %554, %540, %529, %519, %473, %465, %453, %442, %383, %382, %343, %323, %279, %258, %249, %236, %179, %159, %133, %108, %103, %93, %32
  %570 = phi i32 [ %30, %32 ], [ -22, %93 ], [ %134, %133 ], [ %449, %453 ], [ -22, %103 ], [ -12, %108 ], [ %277, %279 ], [ -22, %249 ], [ -12, %236 ], [ -22, %179 ], [ -22, %159 ], [ -12, %382 ], [ -22, %343 ], [ %530, %529 ], [ %552, %540 ], [ %556, %554 ], [ %560, %558 ], [ %564, %562 ], [ -12, %465 ], [ %477, %473 ], [ %477, %519 ], [ -12, %383 ], [ %443, %442 ], [ -12, %258 ], [ %324, %323 ]
  %571 = tail call i32 @sh_mobile_lcdc_remove(ptr noundef %0)
  br label %572

572:                                              ; preds = %569, %566, %14, %13, %6
  %573 = phi i32 [ -2, %13 ], [ %570, %569 ], [ -22, %6 ], [ -12, %14 ], [ 0, %566 ]
  ret i32 %573
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @unregister_framebuffer(ptr noundef nonnull %5) #15
  br label %12

12:                                               ; preds = %11, %7, %1
  %13 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 1, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 22
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @unregister_framebuffer(ptr noundef nonnull %14) #15
  br label %21

21:                                               ; preds = %20, %16, %12
  %22 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 2, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 22
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @unregister_framebuffer(ptr noundef nonnull %23) #15
  br label %30

30:                                               ; preds = %29, %25, %21
  %31 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 3, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.fb_info, ptr %32, i32 0, i32 22
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @unregister_framebuffer(ptr noundef nonnull %32) #15
  br label %39

39:                                               ; preds = %38, %34, %30
  %40 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 0, i32 27
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 22
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @unregister_framebuffer(ptr noundef nonnull %41) #15
  br label %48

48:                                               ; preds = %47, %43, %39
  %49 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 1, i32 27
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.fb_info, ptr %50, i32 0, i32 22
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @unregister_framebuffer(ptr noundef nonnull %50) #15
  br label %57

57:                                               ; preds = %56, %52, %48
  tail call fastcc void @sh_mobile_lcdc_stop(ptr noundef %3)
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %59 = load ptr, ptr %4, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.fb_info, ptr %59, i32 0, i32 21
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @framebuffer_release(ptr noundef nonnull %59) #15
  br label %66

66:                                               ; preds = %65, %61, %57
  %67 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 0, i32 9
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 0, i32 10
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 0, i32 11
  %74 = load i32, ptr %73, align 4
  tail call void @dma_free_attrs(ptr noundef %58, i32 noundef %72, ptr noundef nonnull %68, i32 noundef %74, i32 noundef 0) #15
  br label %75

75:                                               ; preds = %70, %66
  %76 = load ptr, ptr %13, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.fb_info, ptr %76, i32 0, i32 21
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @framebuffer_release(ptr noundef nonnull %76) #15
  br label %83

83:                                               ; preds = %82, %78, %75
  %84 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 1, i32 9
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 1, i32 10
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 1, i32 11
  %91 = load i32, ptr %90, align 4
  tail call void @dma_free_attrs(ptr noundef %58, i32 noundef %89, ptr noundef nonnull %85, i32 noundef %91, i32 noundef 0) #15
  br label %92

92:                                               ; preds = %87, %83
  %93 = load ptr, ptr %22, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.fb_info, ptr %93, i32 0, i32 21
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call void @framebuffer_release(ptr noundef nonnull %93) #15
  br label %100

100:                                              ; preds = %99, %95, %92
  %101 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 2, i32 9
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 2, i32 10
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 2, i32 11
  %108 = load i32, ptr %107, align 4
  tail call void @dma_free_attrs(ptr noundef %58, i32 noundef %106, ptr noundef nonnull %102, i32 noundef %108, i32 noundef 0) #15
  br label %109

109:                                              ; preds = %104, %100
  %110 = load ptr, ptr %31, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.fb_info, ptr %110, i32 0, i32 21
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @framebuffer_release(ptr noundef nonnull %110) #15
  br label %117

117:                                              ; preds = %116, %112, %109
  %118 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 3, i32 9
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 3, i32 10
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 7, i32 3, i32 11
  %125 = load i32, ptr %124, align 4
  tail call void @dma_free_attrs(ptr noundef %58, i32 noundef %123, ptr noundef nonnull %119, i32 noundef %125, i32 noundef 0) #15
  br label %126

126:                                              ; preds = %121, %117
  %127 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %128, i32 0, i32 2
  store ptr null, ptr %131, align 4
  %132 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %133, i32 0, i32 11
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.platform_device, ptr %135, i32 0, i32 3, i32 6
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.device_driver, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 4
  tail call void @module_put(ptr noundef %139) #15
  br label %140

140:                                              ; preds = %130, %126
  %141 = load ptr, ptr %40, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.fb_info, ptr %141, i32 0, i32 21
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 0, i32 31
  %149 = load ptr, ptr %148, align 4
  tail call void @vfree(ptr noundef %149) #15
  %150 = getelementptr inbounds %struct.fb_info, ptr %141, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %150) #15
  tail call void @framebuffer_release(ptr noundef nonnull %141) #15
  br label %151

151:                                              ; preds = %147, %143, %140
  %152 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 0, i32 8
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %160, label %155

155:                                              ; preds = %151
  %156 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 0, i32 9
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 0, i32 10
  %159 = load i32, ptr %158, align 4
  tail call void @dma_free_attrs(ptr noundef %58, i32 noundef %157, ptr noundef nonnull %153, i32 noundef %159, i32 noundef 0) #15
  br label %160

160:                                              ; preds = %155, %151
  %161 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 1, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %174, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %162, i32 0, i32 2
  store ptr null, ptr %165, align 4
  %166 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 1, i32 2
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %167, i32 0, i32 11
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.platform_device, ptr %169, i32 0, i32 3, i32 6
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.device_driver, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 4
  tail call void @module_put(ptr noundef %173) #15
  br label %174

174:                                              ; preds = %164, %160
  %175 = load ptr, ptr %49, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %185, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.fb_info, ptr %175, i32 0, i32 21
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  %182 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 1, i32 31
  %183 = load ptr, ptr %182, align 4
  tail call void @vfree(ptr noundef %183) #15
  %184 = getelementptr inbounds %struct.fb_info, ptr %175, i32 0, i32 12
  tail call void @fb_dealloc_cmap(ptr noundef %184) #15
  tail call void @framebuffer_release(ptr noundef nonnull %175) #15
  br label %185

185:                                              ; preds = %181, %177, %174
  %186 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 1, i32 8
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 1, i32 9
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 1, i32 10
  %193 = load i32, ptr %192, align 4
  tail call void @dma_free_attrs(ptr noundef %58, i32 noundef %191, ptr noundef nonnull %187, i32 noundef %193, i32 noundef 0) #15
  br label %194

194:                                              ; preds = %189, %185
  %195 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 0, i32 25
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %194
  tail call void @backlight_device_unregister(ptr noundef nonnull %196) #15
  br label %199

199:                                              ; preds = %198, %194
  %200 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 6, i32 1, i32 25
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  tail call void @backlight_device_unregister(ptr noundef nonnull %201) #15
  br label %204

204:                                              ; preds = %203, %199
  %205 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 4
  %206 = load ptr, ptr %205, align 4
  %207 = icmp eq ptr %206, null
  br i1 %207, label %210, label %208

208:                                              ; preds = %204
  tail call void @__pm_runtime_disable(ptr noundef %58, i1 noundef zeroext true) #15
  %209 = load ptr, ptr %205, align 4
  tail call void @clk_put(ptr noundef %209) #15
  br label %210

210:                                              ; preds = %208, %204
  %211 = load ptr, ptr %3, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  tail call void @iounmap(ptr noundef nonnull %211) #15
  br label %214

214:                                              ; preds = %213, %210
  %215 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %3, i32 0, i32 1
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = tail call ptr @free_irq(i32 noundef %216, ptr noundef %3) #15
  br label %220

220:                                              ; preds = %218, %214
  tail call void @kfree(ptr noundef %3) #15
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1128
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %6 = and i32 %5, -257
  %7 = xor i32 %6, 255
  %8 = load ptr, ptr %1, align 4
  %9 = getelementptr i8, ptr %8, i32 1128
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #15, !srcloc !16
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr i8, ptr %10, i32 1132
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %13 = and i32 %5, 4
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 1024
  %16 = icmp ne i32 %15, 0
  %17 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 3
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 4
  %20 = and i32 %5, 1
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25

25:                                               ; preds = %2
  br i1 %14, label %42, label %26

26:                                               ; preds = %25
  %27 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp ne i32 %29, 2
  %31 = xor i1 %16, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 12
  store i32 1, ptr %33, align 4
  %34 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %34, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #15, !srcloc !10
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #15, !srcloc !11
  %36 = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load ptr, ptr %18, align 4
  %40 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 5) #15
  %41 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %41) #15
  tail call void @clk_unprepare(ptr noundef %41) #15
  br label %42

42:                                               ; preds = %38, %32, %26, %25
  br i1 %21, label %45, label %43

43:                                               ; preds = %42
  %44 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 0, i32 14
  tail call void @complete(ptr noundef %44) #15
  br label %45

45:                                               ; preds = %43, %42, %2
  %46 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %45
  br i1 %14, label %66, label %50

50:                                               ; preds = %49
  %51 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = load i32, ptr %52, align 4
  %54 = icmp ne i32 %53, 2
  %55 = xor i1 %16, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 12
  store i32 1, ptr %57, align 4
  %58 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 13
  tail call void @__wake_up(ptr noundef %58, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #15, !srcloc !10
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %17, ptr %17, i32 1, ptr elementtype(i32) %17) #15, !srcloc !11
  %60 = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load ptr, ptr %18, align 4
  %64 = tail call i32 @__pm_runtime_idle(ptr noundef %63, i32 noundef 5) #15
  %65 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %65) #15
  tail call void @clk_unprepare(ptr noundef %65) #15
  br label %66

66:                                               ; preds = %62, %56, %50, %49
  br i1 %21, label %69, label %67

67:                                               ; preds = %66
  %68 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %1, i32 0, i32 6, i32 1, i32 14
  tail call void @complete(ptr noundef %68) #15
  br label %69

69:                                               ; preds = %67, %66, %45
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sh_mobile_lcdc_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 3
  %5 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !18
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load ptr, ptr %3, align 4
  %14 = tail call i32 @clk_prepare(ptr noundef %13) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = tail call i32 @clk_enable(ptr noundef %13) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @clk_unprepare(ptr noundef %13) #15
  br label %20

20:                                               ; preds = %19, %16, %12
  %21 = load ptr, ptr %4, align 4
  %22 = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #15
  br label %23

23:                                               ; preds = %20, %8, %1
  %24 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !10
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !18
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load ptr, ptr %3, align 4
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = tail call i32 @clk_enable(ptr noundef %32) #15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #15
  br label %39

39:                                               ; preds = %38, %35, %31
  %40 = load ptr, ptr %4, align 4
  %41 = tail call i32 @__pm_runtime_resume(ptr noundef %40, i32 noundef 4) #15
  br label %42

42:                                               ; preds = %39, %27, %23
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr i8, ptr %43, i32 1140
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %46 = or i32 %45, 256
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr i8, ptr %47, i32 1140
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #15, !srcloc !16
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr i8, ptr %49, i32 1140
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %52 = and i32 %51, 256
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %54, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !21
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr i8, ptr %55, i32 1140
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %58 = and i32 %57, 256
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %54

60:                                               ; preds = %54, %42
  %61 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0
  %62 = load i32, ptr %5, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %66, i32 0, i32 8, i32 2
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = tail call i32 %68(ptr noundef %61, ptr noundef nonnull @sh_mobile_lcdc_sys_bus_ops) #15
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %252

73:                                               ; preds = %70, %64, %60
  %74 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1
  %75 = load i32, ptr %24, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %79, i32 0, i32 8, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = tail call i32 %81(ptr noundef %74, ptr noundef nonnull @sh_mobile_lcdc_sys_bus_ops) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %252

86:                                               ; preds = %83, %77, %73
  %87 = load i32, ptr %5, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %86
  %90 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 10
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 22
  store i32 %91, ptr %92, align 4
  %93 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 18
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 20
  %96 = load i32, ptr %95, align 4
  %97 = mul i32 %96, %94
  %98 = add i32 %97, %91
  %99 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 23
  store i32 %98, ptr %99, align 4
  %100 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 21
  %101 = load i32, ptr %100, align 4
  %102 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 24
  store i32 %101, ptr %102, align 4
  br label %103

103:                                              ; preds = %89, %86
  %104 = load i32, ptr %24, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %103
  %107 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 10
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 22
  store i32 %108, ptr %109, align 4
  %110 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 18
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 20
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, %111
  %115 = add i32 %114, %108
  %116 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 23
  store i32 %115, ptr %116, align 4
  %117 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 21
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 24
  store i32 %118, ptr %119, align 4
  br label %120

120:                                              ; preds = %106, %103
  %121 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 7, i32 0
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %121)
  %122 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 7, i32 1
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %122)
  %123 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 7, i32 2
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %123)
  %124 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 7, i32 3
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %124)
  tail call fastcc void @__sh_mobile_lcdc_start(ptr noundef %0)
  %125 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %188, label %128

128:                                              ; preds = %120
  %129 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %130, i32 0, i32 10, i32 2
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 4
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, 4096
  %136 = icmp ne i32 %135, 0
  %137 = icmp ne i32 %132, 0
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %139, label %148

139:                                              ; preds = %128
  %140 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 30
  %141 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 30, i32 4
  store ptr @sh_mobile_lcdc_deferred_io, ptr %141, align 4
  %142 = tail call i32 @__msecs_to_jiffies(i32 noundef %132) #15
  store i32 %142, ptr %140, align 4
  %143 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 27
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.fb_info, ptr %144, i32 0, i32 19
  store ptr %140, ptr %145, align 4
  %146 = load ptr, ptr %143, align 4
  tail call void @fb_deferred_io_init(ptr noundef %146) #15
  %147 = load ptr, ptr %129, align 4
  br label %148

148:                                              ; preds = %139, %128
  %149 = phi ptr [ %147, %139 ], [ %130, %128 ]
  %150 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %165, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %151, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = load ptr, ptr %155, align 4
  %157 = tail call i32 %156(ptr noundef nonnull %151) #15
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %153
  %160 = icmp eq i32 %157, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %159
  %162 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 27
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.fb_info, ptr %163, i32 0, i32 27
  store i32 1, ptr %164, align 4
  br label %165

165:                                              ; preds = %161, %159, %148
  %166 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %149, i32 0, i32 8, i32 4
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  tail call void %167() #15
  br label %170

170:                                              ; preds = %169, %165, %153
  %171 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 25
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %188, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.backlight_properties, ptr %172, i32 0, i32 2
  store i32 0, ptr %175, align 8
  %176 = load ptr, ptr %171, align 4
  %177 = getelementptr inbounds %struct.backlight_device, ptr %176, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %177) #15
  %178 = getelementptr inbounds %struct.backlight_device, ptr %176, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %187, label %181

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.backlight_ops, ptr %179, i32 0, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %181
  %186 = tail call i32 %183(ptr noundef %176) #15
  br label %187

187:                                              ; preds = %185, %181, %174
  tail call void @mutex_unlock(ptr noundef %177) #15
  br label %188

188:                                              ; preds = %187, %170, %120
  %189 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 5
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %252, label %192

192:                                              ; preds = %188
  %193 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %194, i32 0, i32 10, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 4
  %198 = load i32, ptr %197, align 4
  %199 = and i32 %198, 4096
  %200 = icmp ne i32 %199, 0
  %201 = icmp ne i32 %196, 0
  %202 = select i1 %200, i1 %201, i1 false
  br i1 %202, label %203, label %212

203:                                              ; preds = %192
  %204 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 30
  %205 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 30, i32 4
  store ptr @sh_mobile_lcdc_deferred_io, ptr %205, align 4
  %206 = tail call i32 @__msecs_to_jiffies(i32 noundef %196) #15
  store i32 %206, ptr %204, align 4
  %207 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 27
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.fb_info, ptr %208, i32 0, i32 19
  store ptr %204, ptr %209, align 4
  %210 = load ptr, ptr %207, align 4
  tail call void @fb_deferred_io_init(ptr noundef %210) #15
  %211 = load ptr, ptr %193, align 4
  br label %212

212:                                              ; preds = %203, %192
  %213 = phi ptr [ %211, %203 ], [ %194, %192 ]
  %214 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %229, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %215, i32 0, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = load ptr, ptr %219, align 4
  %221 = tail call i32 %220(ptr noundef nonnull %215) #15
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %217
  %224 = icmp eq i32 %221, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %223
  %226 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 27
  %227 = load ptr, ptr %226, align 4
  %228 = getelementptr inbounds %struct.fb_info, ptr %227, i32 0, i32 27
  store i32 1, ptr %228, align 4
  br label %229

229:                                              ; preds = %225, %223, %212
  %230 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %213, i32 0, i32 8, i32 4
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  tail call void %231() #15
  br label %234

234:                                              ; preds = %233, %229, %217
  %235 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 25
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %252, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.backlight_properties, ptr %236, i32 0, i32 2
  store i32 0, ptr %239, align 8
  %240 = load ptr, ptr %235, align 4
  %241 = getelementptr inbounds %struct.backlight_device, ptr %240, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %241) #15
  %242 = getelementptr inbounds %struct.backlight_device, ptr %240, i32 0, i32 3
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.backlight_ops, ptr %243, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = tail call i32 %247(ptr noundef %240) #15
  br label %251

251:                                              ; preds = %249, %245, %238
  tail call void @mutex_unlock(ptr noundef %241) #15
  br label %252

252:                                              ; preds = %251, %234, %188, %83, %70
  %253 = phi i32 [ %71, %70 ], [ %84, %83 ], [ 0, %251 ], [ 0, %234 ], [ 0, %188 ]
  ret i32 %253
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_update_bl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, ptr %0, align 8
  %9 = getelementptr inbounds %struct.backlight_properties, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7, %1
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ 0, %13 ], [ %8, %7 ]
  %16 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 26
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %18, i32 0, i32 9, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(i32 noundef %15) #15
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_lcdc_get_brightness(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_lcdc_check_fb(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @framebuffer_alloc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_modelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_alloc_cmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_videomode_to_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_check_var(ptr noundef %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %7, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = load i32, ptr %0, align 4
  %15 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  br label %16

16:                                               ; preds = %40, %11
  %17 = phi i32 [ -1, %11 ], [ %43, %40 ]
  %18 = phi i32 [ 0, %11 ], [ %42, %40 ]
  %19 = phi i32 [ 0, %11 ], [ %41, %40 ]
  %20 = phi i32 [ 0, %11 ], [ %44, %40 ]
  %21 = getelementptr %struct.fb_videomode, ptr %13, i32 %20, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %14, %22
  br i1 %23, label %40, label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %15, align 4
  %26 = getelementptr %struct.fb_videomode, ptr %13, i32 %20, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %25, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %24
  %30 = mul i32 %27, %22
  %31 = tail call i32 @llvm.umin.i32(i32 %14, i32 %22)
  %32 = mul i32 %31, -2
  %33 = add i32 %32, %14
  %34 = mul i32 %33, %25
  %35 = add i32 %34, %30
  %36 = icmp ult i32 %35, %17
  %37 = select i1 %36, i32 %27, i32 %19
  %38 = select i1 %36, i32 %22, i32 %18
  %39 = tail call i32 @llvm.umin.i32(i32 %35, i32 %17)
  br label %40

40:                                               ; preds = %29, %24, %16
  %41 = phi i32 [ %37, %29 ], [ %19, %24 ], [ %19, %16 ]
  %42 = phi i32 [ %38, %29 ], [ %18, %24 ], [ %18, %16 ]
  %43 = phi i32 [ %39, %29 ], [ %17, %24 ], [ %17, %16 ]
  %44 = add nuw i32 %20, 1
  %45 = icmp eq i32 %44, %9
  br i1 %45, label %46, label %16

46:                                               ; preds = %40
  br i1 %10, label %51, label %47

47:                                               ; preds = %46
  %48 = icmp eq i32 %43, -1
  br i1 %48, label %71, label %49

49:                                               ; preds = %47
  store i32 %42, ptr %0, align 4
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  store i32 %41, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %46, %2
  %52 = tail call fastcc i32 @__sh_mobile_lcdc_check_var(ptr noundef %0, ptr noundef %1)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %5, i32 0, i32 9
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 7
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, 1
  br i1 %61, label %67, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  switch i32 %64, label %71 [
    i32 16, label %67
    i32 24, label %65
    i32 32, label %66
  ]

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %65, %62, %58
  %68 = phi i32 [ 877807426, %66 ], [ 861030210, %65 ], [ %60, %58 ], [ 1346520914, %62 ]
  %69 = icmp eq i32 %56, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %54
  br label %71

71:                                               ; preds = %70, %67, %62, %51, %47
  %72 = phi i32 [ 0, %70 ], [ -22, %47 ], [ %52, %51 ], [ -22, %67 ], [ -22, %62 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_open(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef %5) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_release(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.fb_var_screeninfo, align 4
  %4 = alloca %struct.fb_videomode, align 4
  %5 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %6, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %6, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 4
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %40, label %12

12:                                               ; preds = %2
  tail call void @console_lock() #15
  %13 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false) #15, !annotation !22
  %14 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %39, label %17

17:                                               ; preds = %12
  %18 = icmp eq i32 %15, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 28
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %19, %17
  %24 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  call void @fb_var_to_videomode(ptr noundef nonnull %4, ptr noundef %24) #15
  %25 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %13, i32 0, i32 29, i32 2
  %26 = call i32 @fb_mode_is_equal(ptr noundef %25, ptr noundef nonnull %4) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %13, i32 0, i32 29
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %3, ptr noundef align 4 dereferenceable(160) %24, i32 160, i1 false) #15
  call void @fb_videomode_to_var(ptr noundef nonnull %3, ptr noundef %25) #15
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %3, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %13, i32 0, i32 29, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %3, i32 0, i32 14
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %3, i32 0, i32 13
  store i32 0, ptr %35, align 4
  %36 = call i32 @fb_set_var(ptr noundef %0, ptr noundef nonnull %3) #15
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  call void @fbcon_update_vcs(ptr noundef %0, i1 noundef zeroext true) #15
  br label %39

39:                                               ; preds = %38, %28, %23, %19, %12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #15
  call void @console_unlock() #15
  br label %40

40:                                               ; preds = %39, %2
  call void @mutex_unlock(ptr noundef %7) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_sys_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_set_par(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @sh_mobile_lcdc_stop(ptr noundef %4)
  %5 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %13 [
    i32 16, label %22
    i32 24, label %14
    i32 32, label %15
  ]

12:                                               ; preds = %1
  switch i32 %7, label %13 [
    i32 1346520914, label %22
    i32 861030210, label %14
    i32 877807426, label %15
    i32 842094158, label %16
    i32 825382478, label %17
    i32 909203022, label %18
    i32 825644622, label %19
    i32 875714126, label %20
    i32 842290766, label %21
  ]

13:                                               ; preds = %12, %9
  br label %22

14:                                               ; preds = %12, %9
  br label %22

15:                                               ; preds = %12, %9
  br label %22

16:                                               ; preds = %12
  br label %22

17:                                               ; preds = %12
  br label %22

18:                                               ; preds = %12
  br label %22

19:                                               ; preds = %12
  br label %22

20:                                               ; preds = %12
  br label %22

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %9
  %23 = phi ptr [ @sh_mobile_format_infos, %12 ], [ null, %13 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %14 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %15 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %16 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %17 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %18 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %19 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %20 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %21 ], [ @sh_mobile_format_infos, %9 ]
  %24 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 15
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 27
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 16
  store i32 %26, ptr %27, align 4
  %28 = load i32, ptr %5, align 4
  %29 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 17
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 18
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 19
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 20
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %23, i32 0, i32 2
  %40 = load i8, ptr %39, align 4, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = load i32, ptr %30, align 4
  br i1 %41, label %43, label %48

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %23, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, %42
  %47 = lshr i32 %46, 3
  br label %48

48:                                               ; preds = %43, %22
  %49 = phi i32 [ %47, %43 ], [ %42, %22 ]
  %50 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %3, i32 0, i32 21
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %3, align 4
  %52 = tail call fastcc i32 @sh_mobile_lcdc_start(ptr noundef %51)
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 22
  %56 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.sh_mobile_lcdc_set_par) #16
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, ptr %50, align 4
  %59 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %6, align 4
  %61 = icmp ult i32 %60, 2
  %62 = select i1 %61, i32 0, i32 5
  %63 = select i1 %61, i32 2, i32 6
  %64 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 3
  store i32 %62, ptr %64, align 4
  %65 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  store i32 %63, ptr %65, align 4
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_lcdc_setcolreg(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #10 {
  %7 = icmp ugt i32 %0, 15
  br i1 %7, label %43, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8
  %12 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 8, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sub i32 16, %13
  %15 = lshr i32 %1, %14
  %16 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9
  %17 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 9, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 16, %18
  %20 = lshr i32 %2, %19
  %21 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10
  %22 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 10, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 16, %23
  %25 = lshr i32 %3, %24
  %26 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 11
  %27 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 6, i32 11, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 16, %28
  %30 = lshr i32 %4, %29
  %31 = load i32, ptr %11, align 4
  %32 = shl i32 %15, %31
  %33 = load i32, ptr %16, align 4
  %34 = shl i32 %20, %33
  %35 = or i32 %34, %32
  %36 = load i32, ptr %21, align 4
  %37 = shl i32 %25, %36
  %38 = or i32 %35, %37
  %39 = load i32, ptr %26, align 4
  %40 = shl i32 %30, %39
  %41 = or i32 %38, %40
  %42 = getelementptr i32, ptr %10, i32 %0
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %8, %6
  %44 = phi i32 [ 0, %8 ], [ -22, %6 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_blank(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.fb_fillrect, align 8
  %4 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %5, i32 0, i32 32
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %13 = getelementptr inbounds %struct.fb_fillrect, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %5, i32 0, i32 17
  store i64 0, ptr %3, align 8
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.fb_fillrect, ptr %3, i32 0, i32 3
  %17 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %5, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.fb_fillrect, ptr %3, i32 0, i32 4
  store i32 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.fb_fillrect, ptr %3, i32 0, i32 5
  store i32 0, ptr %20, align 4
  call void @sys_fillrect(ptr noundef %1, ptr noundef nonnull %3) #15
  %21 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 18
  %26 = load i32, ptr %22, align 4
  %27 = load ptr, ptr @system_wq, align 4
  %28 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %27, ptr noundef %25, i32 noundef %26) #15
  br label %29

29:                                               ; preds = %24, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %30

30:                                               ; preds = %29, %8
  %31 = icmp ult i32 %0, 2
  br i1 %31, label %32, label %54

32:                                               ; preds = %30, %2
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %5, i32 0, i32 32
  %34 = load i32, ptr %33, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %92

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %6, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #15, !srcloc !10
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #15, !srcloc !18
  %39 = extractvalue { i32, i32 } %38, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %6, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 @clk_prepare(ptr noundef %43) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i32 @clk_enable(ptr noundef %43) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  call void @clk_unprepare(ptr noundef %43) #15
  br label %50

50:                                               ; preds = %49, %46, %41
  %51 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %6, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 @__pm_runtime_resume(ptr noundef %52, i32 noundef 4) #15
  br label %92

54:                                               ; preds = %30
  %55 = load i32, ptr %9, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %92

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 19
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %57
  %62 = load ptr, ptr %5, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 1128
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #15, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %66 = or i32 %65, 511
  %67 = load ptr, ptr %5, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 1128
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %66) #15, !srcloc !16
  %70 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %5, i32 0, i32 14
  %71 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %70, i32 noundef 10) #15
  %72 = load ptr, ptr %5, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 1128
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #15, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %76 = or i32 %75, 511
  %77 = load ptr, ptr %5, align 4
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 1128
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %76) #15, !srcloc !16
  %80 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %70, i32 noundef 10) #15
  br label %81

81:                                               ; preds = %61, %57
  %82 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %6, i32 0, i32 2
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #15, !srcloc !10
  %83 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #15, !srcloc !11
  %84 = extractvalue { i32, i32 } %83, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %6, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 @__pm_runtime_idle(ptr noundef %88, i32 noundef 5) #15
  %90 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %6, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  call void @clk_disable(ptr noundef %91) #15
  call void @clk_unprepare(ptr noundef %91) #15
  br label %92

92:                                               ; preds = %86, %81, %54, %50, %36, %32
  %93 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %5, i32 0, i32 32
  store i32 %0, ptr %93, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_pan(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 15
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %7, i32 0, i32 2
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 18
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %13
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, %18
  %20 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %7, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = mul i32 %19, %21
  %23 = lshr i32 %22, 3
  br label %46

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %7, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %26, 24
  %28 = icmp ult i32 %26, 16
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 18
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, %30
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %33, %35
  %37 = zext i1 %28 to i32
  %38 = lshr i32 %30, %37
  %39 = shl i32 %32, 1
  %40 = mul i32 %39, %38
  %41 = zext i1 %27 to i32
  %42 = lshr i32 %40, %41
  %43 = shl i32 %35, 1
  %44 = lshr i32 %43, %41
  %45 = add i32 %42, %44
  br label %46

46:                                               ; preds = %24, %11
  %47 = phi i32 [ %32, %24 ], [ %15, %11 ]
  %48 = phi i32 [ %36, %24 ], [ %23, %11 ]
  %49 = phi i32 [ %45, %24 ], [ 0, %11 ]
  %50 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %109, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 10
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %48
  %57 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 20
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %58, %47
  %60 = add i32 %55, %49
  %61 = add i32 %60, %59
  %62 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 22
  store i32 %56, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 23
  store i32 %61, ptr %63, align 4
  store i32 %48, ptr %50, align 4
  %64 = load ptr, ptr %5, align 4
  %65 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr i32, ptr %66, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr i8, ptr %64, i32 %68
  %70 = getelementptr i8, ptr %69, i32 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %56) #15, !srcloc !16
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %71, i32 0, i32 2
  %73 = load i8, ptr %72, align 4, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %53
  %76 = load ptr, ptr %4, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %65, align 4
  %79 = getelementptr i32, ptr %78, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr i8, ptr %77, i32 %80
  %82 = getelementptr i8, ptr %81, i32 8192
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %61) #15, !srcloc !16
  br label %83

83:                                               ; preds = %75, %53
  %84 = load ptr, ptr %5, align 4
  %85 = getelementptr i8, ptr %84, i32 1144
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %87 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 2
  %91 = load ptr, ptr %4, align 4
  br i1 %90, label %92, label %96

92:                                               ; preds = %83
  %93 = xor i32 %86, 131072
  %94 = load ptr, ptr %91, align 4
  %95 = getelementptr i8, ptr %94, i32 1144
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %93) #15, !srcloc !16
  br label %100

96:                                               ; preds = %83
  %97 = xor i32 %86, 2
  %98 = load ptr, ptr %91, align 4
  %99 = getelementptr i8, ptr %98, i32 1144
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %97) #15, !srcloc !16
  br label %100

100:                                              ; preds = %96, %92
  %101 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 19
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 18
  %106 = load i32, ptr %102, align 4
  %107 = load ptr, ptr @system_wq, align 4
  %108 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %107, ptr noundef %105, i32 noundef %106) #15
  br label %109

109:                                              ; preds = %104, %100, %46
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_fillrect(ptr noundef %0, ptr noundef %1) #2 {
  tail call void @sys_fillrect(ptr noundef %0, ptr noundef %1) #15
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 18
  %8 = load i32, ptr %4, align 4
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %7, i32 noundef %8) #15
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_copyarea(ptr noundef %0, ptr noundef %1) #2 {
  tail call void @sys_copyarea(ptr noundef %0, ptr noundef %1) #15
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 18
  %8 = load i32, ptr %4, align 4
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %7, i32 noundef %8) #15
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_imageblit(ptr noundef %0, ptr noundef %1) #2 {
  tail call void @sys_imageblit(ptr noundef %0, ptr noundef %1) #15
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 18
  %8 = load i32, ptr %4, align 4
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %7, i32 noundef %8) #15
  br label %11

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %1, 1074021920
  br i1 %4, label %5, label %20

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1128
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %12 = or i32 %11, 511
  %13 = load ptr, ptr %7, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 1128
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %12) #15, !srcloc !16
  %16 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %7, i32 0, i32 14
  %17 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %16, i32 noundef 10) #15
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 -110, i32 0
  br label %20

20:                                               ; preds = %5, %3
  %21 = phi i32 [ %19, %5 ], [ -515, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @dma_mmap_attrs(ptr noundef %7, ptr noundef %1, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0) #15
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_var_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_mode_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fb_set_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbcon_update_vcs(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_mobile_lcdc_stop(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.wait_queue_entry, align 4
  %3 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 3
  br label %6

6:                                                ; preds = %88, %1
  %7 = phi i32 [ 0, %1 ], [ %89, %88 ]
  %8 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %7, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %88, label %11

11:                                               ; preds = %6
  %12 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %7, i32 27
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %54, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %54, label %19

19:                                               ; preds = %15
  %20 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %7, i32 12
  store i32 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 18
  %22 = load ptr, ptr @system_wq, align 4
  %23 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %22, ptr noundef %21, i32 noundef 0) #15
  %24 = load i32, ptr %20, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !22
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #15
  %27 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %7, i32 13
  %28 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef nonnull %2, i32 noundef 2) #15
  %29 = load i32, ptr %20, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %31, %26
  call void @schedule() #15
  %32 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef nonnull %2, i32 noundef 2) #15
  %33 = load i32, ptr %20, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %31, label %35

35:                                               ; preds = %31, %26
  call void @finish_wait(ptr noundef %27, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #15
  br label %36

36:                                               ; preds = %35, %19
  %37 = load ptr, ptr %12, align 4
  call void @fb_deferred_io_cleanup(ptr noundef %37) #15
  %38 = load ptr, ptr %12, align 4
  %39 = getelementptr inbounds %struct.fb_info, ptr %38, i32 0, i32 19
  store ptr null, ptr %39, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #15, !srcloc !10
  %40 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #15, !srcloc !18
  %41 = extractvalue { i32, i32 } %40, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load ptr, ptr %4, align 4
  %45 = call i32 @clk_prepare(ptr noundef %44) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = call i32 @clk_enable(ptr noundef %44) #15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  call void @clk_unprepare(ptr noundef %44) #15
  br label %51

51:                                               ; preds = %50, %47, %43
  %52 = load ptr, ptr %5, align 4
  %53 = call i32 @__pm_runtime_resume(ptr noundef %52, i32 noundef 4) #15
  br label %54

54:                                               ; preds = %51, %36, %15, %11
  %55 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %7, i32 25
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.backlight_properties, ptr %56, i32 0, i32 2
  store i32 4, ptr %59, align 8
  %60 = load ptr, ptr %55, align 4
  %61 = getelementptr inbounds %struct.backlight_device, ptr %60, i32 0, i32 1
  call void @mutex_lock(ptr noundef %61) #15
  %62 = getelementptr inbounds %struct.backlight_device, ptr %60, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.backlight_ops, ptr %63, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 %67(ptr noundef %60) #15
  br label %71

71:                                               ; preds = %69, %65, %58
  call void @mutex_unlock(ptr noundef %61) #15
  br label %72

72:                                               ; preds = %71, %54
  %73 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %7, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %74, i32 0, i32 8, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  call void %76() #15
  br label %79

79:                                               ; preds = %78, %72
  %80 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %7, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.sh_mobile_lcdc_entity, ptr %81, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.sh_mobile_lcdc_entity_ops, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  call void %87(ptr noundef nonnull %81) #15
  br label %88

88:                                               ; preds = %83, %79, %6
  %89 = add nuw nsw i32 %7, 1
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %6

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 8
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call fastcc void @sh_mobile_lcdc_start_stop(ptr noundef %0, i32 noundef 0)
  store i32 0, ptr %92, align 4
  br label %96

96:                                               ; preds = %95, %91
  %97 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #15, !srcloc !10
  %101 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #15, !srcloc !11
  %102 = extractvalue { i32, i32 } %101, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load ptr, ptr %5, align 4
  %106 = call i32 @__pm_runtime_idle(ptr noundef %105, i32 noundef 5) #15
  %107 = load ptr, ptr %4, align 4
  call void @clk_disable(ptr noundef %107) #15
  call void @clk_unprepare(ptr noundef %107) #15
  br label %108

108:                                              ; preds = %104, %100, %96
  %109 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #15, !srcloc !10
  %113 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #15, !srcloc !11
  %114 = extractvalue { i32, i32 } %113, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !12
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load ptr, ptr %5, align 4
  %118 = call i32 @__pm_runtime_idle(ptr noundef %117, i32 noundef 5) #15
  %119 = load ptr, ptr %4, align 4
  call void @clk_disable(ptr noundef %119) #15
  call void @clk_unprepare(ptr noundef %119) #15
  br label %120

120:                                              ; preds = %116, %112, %108
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_mobile_lcdc_start_stop(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr i8, ptr %3, i32 1140
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %6 = icmp ne i32 %1, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = or i32 %5, 1
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 1140
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #15, !srcloc !16
  br label %15

11:                                               ; preds = %2
  %12 = and i32 %5, -2
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr i8, ptr %13, i32 1140
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #15, !srcloc !16
  br label %15

15:                                               ; preds = %11, %7
  %16 = icmp eq i32 %1, 0
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr i8, ptr %17, i32 1140
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %20 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0
  %21 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, %19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %15
  %26 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 3
  %27 = load ptr, ptr %20, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr i32, ptr %29, i32 15
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %28, i32 %31
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %34 = and i32 %33, 3
  %35 = icmp eq i32 %34, 3
  %36 = select i1 %6, i1 %35, i1 false
  br i1 %36, label %52, label %37

37:                                               ; preds = %41, %25
  %38 = phi i32 [ %49, %41 ], [ %34, %25 ]
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %16, i1 %39, i1 false
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !24
  %42 = load ptr, ptr %20, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %26, align 4
  %45 = getelementptr i32, ptr %44, i32 15
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %43, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %49 = and i32 %48, 3
  %50 = icmp eq i32 %49, 3
  %51 = select i1 %6, i1 %50, i1 false
  br i1 %51, label %52, label %37

52:                                               ; preds = %41, %37, %25, %15
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr i8, ptr %53, i32 1140
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %56 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1
  %57 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, %55
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %52
  %62 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 3
  %63 = load ptr, ptr %56, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %62, align 4
  %66 = getelementptr i32, ptr %65, i32 15
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr i8, ptr %64, i32 %67
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %70 = and i32 %69, 3
  %71 = icmp eq i32 %70, 3
  %72 = select i1 %6, i1 %71, i1 false
  br i1 %72, label %88, label %73

73:                                               ; preds = %77, %61
  %74 = phi i32 [ %85, %77 ], [ %70, %61 ]
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %16, i1 %75, i1 false
  br i1 %76, label %88, label %77

77:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !24
  %78 = load ptr, ptr %56, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %62, align 4
  %81 = getelementptr i32, ptr %80, i32 15
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr i8, ptr %79, i32 %82
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %85 = and i32 %84, 3
  %86 = icmp eq i32 %85, 3
  %87 = select i1 %6, i1 %86, i1 false
  br i1 %87, label %88, label %73

88:                                               ; preds = %77, %73, %61, %52
  br i1 %6, label %92, label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %0, align 4
  %91 = getelementptr i8, ptr %90, i32 1044
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 1) #15, !srcloc !16
  br label %92

92:                                               ; preds = %89, %88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_fillrect(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_copyarea(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sys_imageblit(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc i32 @__sh_mobile_lcdc_check_var(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ugt i32 %3, 1920
  br i1 %4, label %84, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 1080
  br i1 %8, label %84, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, %3
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 %3, ptr %10, align 4
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %3, %13 ], [ %11, %9 ]
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, %7
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 %7, ptr %16, align 4
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ %7, %19 ], [ %17, %14 ]
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %48, label %25

25:                                               ; preds = %20
  switch i32 %23, label %84 [
    i32 1346520914, label %34
    i32 861030210, label %26
    i32 877807426, label %27
    i32 842094158, label %28
    i32 825382478, label %29
    i32 909203022, label %30
    i32 825644622, label %31
    i32 875714126, label %32
    i32 842290766, label %33
  ]

26:                                               ; preds = %25
  br label %34

27:                                               ; preds = %25
  br label %34

28:                                               ; preds = %25
  br label %34

29:                                               ; preds = %25
  br label %34

30:                                               ; preds = %25
  br label %34

31:                                               ; preds = %25
  br label %34

32:                                               ; preds = %25
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %25
  %35 = phi ptr [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %33 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %32 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %31 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %30 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %29 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %28 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %27 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %26 ], [ @sh_mobile_format_infos, %25 ]
  %36 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %35, i32 0, i32 2
  %40 = load i8, ptr %39, align 4, !range !8
  %41 = icmp eq i8 %40, 0
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 27
  br i1 %41, label %43, label %44

43:                                               ; preds = %34
  store i32 8, ptr %42, align 4
  br label %75

44:                                               ; preds = %34
  %45 = load i32, ptr %42, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %75, label %47

47:                                               ; preds = %44
  store i32 7, ptr %42, align 4
  br label %75

48:                                               ; preds = %20
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %50, 17
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = icmp ult i32 %50, 25
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = icmp ult i32 %50, 33
  br i1 %55, label %56, label %84

56:                                               ; preds = %54, %52, %48
  %57 = phi i32 [ 16, %48 ], [ 24, %52 ], [ 32, %54 ]
  %58 = phi i32 [ 11, %48 ], [ 16, %52 ], [ 16, %54 ]
  %59 = phi i32 [ 5, %48 ], [ 8, %52 ], [ 8, %54 ]
  %60 = phi i32 [ 6, %48 ], [ 8, %52 ], [ 8, %54 ]
  %61 = phi i32 [ 0, %48 ], [ 0, %52 ], [ 24, %54 ]
  %62 = phi i32 [ 0, %48 ], [ 0, %52 ], [ 8, %54 ]
  store i32 %57, ptr %49, align 4
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8
  store i32 %58, ptr %63, align 4
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 1
  store i32 %59, ptr %64, align 4
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9
  store i32 %59, ptr %65, align 4
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 1
  store i32 %60, ptr %66, align 4
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10
  store i32 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 1
  store i32 %59, ptr %68, align 4
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 11
  store i32 %61, ptr %69, align 4
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 11, i32 1
  store i32 %62, ptr %70, align 4
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 8, i32 2
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 9, i32 2
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 10, i32 2
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 11, i32 2
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %56, %47, %44, %43
  %76 = phi i32 [ %37, %44 ], [ %37, %47 ], [ %37, %43 ], [ %57, %56 ]
  %77 = mul i32 %21, %15
  %78 = mul i32 %77, %76
  %79 = lshr i32 %78, 3
  %80 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 7, i32 2
  %81 = load i32, ptr %80, align 4
  %82 = icmp ugt i32 %79, %81
  %83 = select i1 %82, i32 -22, i32 0
  br label %84

84:                                               ; preds = %75, %54, %25, %5, %2
  %85 = phi i32 [ -22, %5 ], [ -22, %2 ], [ -22, %54 ], [ %83, %75 ], [ -22, %25 ]
  ret i32 %85
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_check_var(ptr noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = tail call fastcc i32 @__sh_mobile_lcdc_check_var(ptr noundef %0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_set_par(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 6
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %12 [
    i32 16, label %21
    i32 24, label %13
    i32 32, label %14
  ]

11:                                               ; preds = %1
  switch i32 %6, label %12 [
    i32 1346520914, label %21
    i32 861030210, label %13
    i32 877807426, label %14
    i32 842094158, label %15
    i32 825382478, label %16
    i32 909203022, label %17
    i32 825644622, label %18
    i32 875714126, label %19
    i32 842290766, label %20
  ]

12:                                               ; preds = %11, %8
  br label %21

13:                                               ; preds = %11, %8
  br label %21

14:                                               ; preds = %11, %8
  br label %21

15:                                               ; preds = %11
  br label %21

16:                                               ; preds = %11
  br label %21

17:                                               ; preds = %11
  br label %21

18:                                               ; preds = %11
  br label %21

19:                                               ; preds = %11
  br label %21

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %8
  %22 = phi ptr [ @sh_mobile_format_infos, %11 ], [ null, %12 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 1), %13 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 2), %14 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 3), %15 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 4), %16 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 5), %17 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 6), %18 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 7), %19 ], [ getelementptr inbounds ([9 x %struct.sh_mobile_lcdc_format_info], ptr @sh_mobile_format_infos, i32 0, i32 8), %20 ], [ @sh_mobile_format_infos, %8 ]
  %23 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 15
  store ptr %22, ptr %23, align 4
  %24 = load i32, ptr %4, align 4
  %25 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 16
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 17
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 18
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 6, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 19
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %22, i32 0, i32 2
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = load i32, ptr %26, align 4
  br i1 %37, label %39, label %44

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %22, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %41, %38
  %43 = lshr i32 %42, 3
  br label %44

44:                                               ; preds = %39, %21
  %45 = phi i32 [ %43, %39 ], [ %38, %21 ]
  %46 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %3, i32 0, i32 20
  store i32 %45, ptr %46, align 4
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %3)
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 9
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %5, align 4
  %50 = icmp ult i32 %49, 2
  %51 = select i1 %50, i32 0, i32 5
  %52 = select i1 %50, i32 2, i32 6
  %53 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 3
  store i32 %51, ptr %53, align 4
  %54 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 7, i32 5
  store i32 %52, ptr %54, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_blank(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %0, 0
  %6 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 5
  %7 = zext i1 %5 to i8
  store i8 %7, ptr %6, align 4
  tail call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %4)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_pan(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 17
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %12
  %16 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %15, %17
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %6, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %18, %20
  %22 = lshr i32 %21, 3
  br label %45

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %6, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, 24
  %27 = icmp ult i32 %25, 16
  %28 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = mul i32 %31, %29
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %0, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %32, %34
  %36 = zext i1 %27 to i32
  %37 = lshr i32 %29, %36
  %38 = shl i32 %31, 1
  %39 = mul i32 %38, %37
  %40 = zext i1 %26 to i32
  %41 = lshr i32 %39, %40
  %42 = shl i32 %34, 1
  %43 = lshr i32 %42, %40
  %44 = add i32 %41, %43
  br label %45

45:                                               ; preds = %23, %10
  %46 = phi i32 [ %31, %23 ], [ %14, %10 ]
  %47 = phi i32 [ %35, %23 ], [ %22, %10 ]
  %48 = phi i32 [ %44, %23 ], [ 0, %10 ]
  %49 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 14
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %106, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %47
  %56 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 19
  %57 = load i32, ptr %56, align 4
  %58 = mul i32 %57, %46
  %59 = add i32 %54, %48
  %60 = add i32 %59, %58
  %61 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 12
  store i32 %55, ptr %61, align 4
  %62 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 13
  store i32 %60, ptr %62, align 4
  store i32 %47, ptr %49, align 4
  %63 = load ptr, ptr %4, align 4
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 16
  %68 = shl nuw i32 1, %67
  %69 = load ptr, ptr %64, align 4
  %70 = getelementptr i8, ptr %69, i32 2816
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #15, !srcloc !16
  %71 = load i32, ptr %65, align 4
  %72 = shl i32 %71, 5
  %73 = add i32 %72, 2864
  %74 = load i32, ptr %61, align 4
  %75 = load ptr, ptr %4, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %74) #15, !srcloc !16
  %79 = load ptr, ptr %4, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 %73
  %83 = getelementptr i8, ptr %82, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %74) #15, !srcloc !16
  %84 = load i32, ptr %65, align 4
  %85 = shl i32 %84, 5
  %86 = add i32 %85, 2868
  %87 = load i32, ptr %62, align 4
  %88 = load ptr, ptr %4, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr i8, ptr %90, i32 %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %87) #15, !srcloc !16
  %92 = load ptr, ptr %4, align 4
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr i8, ptr %94, i32 %86
  %96 = getelementptr i8, ptr %95, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %87) #15, !srcloc !16
  %97 = load ptr, ptr %4, align 4
  %98 = load ptr, ptr %97, align 4
  %99 = load i32, ptr %65, align 4
  %100 = add i32 %99, 8
  %101 = shl nuw i32 1, %100
  %102 = shl nuw i32 1, %99
  %103 = or i32 %101, %102
  %104 = load ptr, ptr %98, align 4
  %105 = getelementptr i8, ptr %104, i32 2816
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #15, !srcloc !16
  br label %106

106:                                              ; preds = %52, %45
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %1, 1074021920
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 1128
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %13 = or i32 %12, 511
  %14 = load ptr, ptr %8, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 1128
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #15, !srcloc !16
  %17 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %8, i32 0, i32 14
  %18 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %17, i32 noundef 10) #15
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 -110, i32 0
  br label %21

21:                                               ; preds = %5, %3
  %22 = phi i32 [ %20, %5 ], [ -515, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_overlay_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 11
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %4, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @dma_mmap_attrs(ptr noundef %8, ptr noundef %1, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef 0) #15
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 16
  %11 = shl nuw i32 1, %10
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 2816
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #15, !srcloc !16
  %14 = load i32, ptr %8, align 4
  %15 = shl i32 %14, 5
  %16 = add i32 %15, 2848
  %17 = load ptr, ptr %0, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #15, !srcloc !16
  %21 = load ptr, ptr %0, align 4
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %16
  %25 = getelementptr i8, ptr %24, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 0) #15, !srcloc !16
  %26 = load ptr, ptr %0, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %8, align 4
  %29 = add i32 %28, 8
  %30 = shl nuw i32 1, %29
  %31 = shl nuw i32 1, %28
  %32 = or i32 %30, %31
  %33 = load ptr, ptr %27, align 4
  %34 = getelementptr i8, ptr %33, i32 2816
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #15, !srcloc !16
  br label %185

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 12
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 17
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 19
  %42 = load i32, ptr %41, align 4
  %43 = mul i32 %42, %40
  %44 = add i32 %43, %37
  %45 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 13
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 6
  %47 = load i32, ptr %46, align 4
  switch i32 %47, label %58 [
    i32 0, label %48
    i32 1, label %50
  ]

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 7
  br label %52

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi ptr [ %51, %50 ], [ %49, %48 ]
  %54 = phi i32 [ -1879048192, %50 ], [ -2147483648, %48 ]
  %55 = load i32, ptr %53, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %56, %54
  br label %58

58:                                               ; preds = %52, %35
  %59 = phi i32 [ 0, %35 ], [ %57, %52 ]
  %60 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 15
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %64 [
    i32 1346520914, label %65
    i32 825382478, label %65
    i32 825644622, label %65
    i32 842290766, label %65
    i32 861030210, label %63
    i32 842094158, label %63
    i32 909203022, label %63
    i32 875714126, label %63
  ]

63:                                               ; preds = %58, %58, %58, %58
  br label %65

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %63, %58, %58, %58, %58
  %66 = phi i32 [ 1024, %64 ], [ 1792, %63 ], [ 1536, %58 ], [ 1536, %58 ], [ 1536, %58 ], [ 1536, %58 ]
  %67 = or i32 %59, %66
  switch i32 %62, label %78 [
    i32 1346520914, label %68
    i32 861030210, label %70
    i32 877807426, label %72
    i32 842094158, label %74
    i32 825382478, label %74
    i32 909203022, label %76
    i32 825644622, label %76
  ]

68:                                               ; preds = %65
  %69 = or i32 %67, 131
  br label %78

70:                                               ; preds = %65
  %71 = or i32 %67, 139
  br label %78

72:                                               ; preds = %65
  %73 = or i32 %67, 16512
  br label %78

74:                                               ; preds = %65, %65
  %75 = or i32 %67, 2
  br label %78

76:                                               ; preds = %65, %65
  %77 = or i32 %67, 1
  br label %78

78:                                               ; preds = %76, %74, %72, %70, %68, %65
  %79 = phi i32 [ %77, %76 ], [ %75, %74 ], [ %73, %72 ], [ %71, %70 ], [ %69, %68 ], [ %67, %65 ]
  %80 = load ptr, ptr %0, align 4
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, 16
  %85 = shl nuw i32 1, %84
  %86 = load ptr, ptr %81, align 4
  %87 = getelementptr i8, ptr %86, i32 2816
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #15, !srcloc !16
  %88 = load i32, ptr %82, align 4
  %89 = shl i32 %88, 5
  %90 = add i32 %89, 2848
  %91 = load ptr, ptr %0, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr i8, ptr %93, i32 %90
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %79) #15, !srcloc !16
  %95 = load ptr, ptr %0, align 4
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 %90
  %99 = getelementptr i8, ptr %98, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %79) #15, !srcloc !16
  %100 = load i32, ptr %82, align 4
  %101 = shl i32 %100, 5
  %102 = add i32 %101, 2852
  %103 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 18
  %104 = load i32, ptr %103, align 4
  %105 = shl i32 %104, 16
  %106 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 16
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %105, %107
  %109 = load ptr, ptr %0, align 4
  %110 = load ptr, ptr %109, align 4
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr i8, ptr %111, i32 %102
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %108) #15, !srcloc !16
  %113 = load ptr, ptr %0, align 4
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 %102
  %117 = getelementptr i8, ptr %116, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %108) #15, !srcloc !16
  %118 = load i32, ptr %82, align 4
  %119 = shl i32 %118, 5
  %120 = add i32 %119, 2856
  %121 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 22
  %122 = load i32, ptr %121, align 4
  %123 = shl i32 %122, 16
  %124 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 21
  %125 = load i32, ptr %124, align 4
  %126 = or i32 %123, %125
  %127 = load ptr, ptr %0, align 4
  %128 = load ptr, ptr %127, align 4
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr i8, ptr %129, i32 %120
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %126) #15, !srcloc !16
  %131 = load ptr, ptr %0, align 4
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr i8, ptr %133, i32 %120
  %135 = getelementptr i8, ptr %134, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %126) #15, !srcloc !16
  %136 = load i32, ptr %82, align 4
  %137 = shl i32 %136, 5
  %138 = add i32 %137, 2860
  %139 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %0, i32 0, i32 20
  %140 = load i32, ptr %139, align 4
  %141 = load ptr, ptr %0, align 4
  %142 = load ptr, ptr %141, align 4
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 %138
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %140) #15, !srcloc !16
  %145 = load ptr, ptr %0, align 4
  %146 = load ptr, ptr %145, align 4
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr i8, ptr %147, i32 %138
  %149 = getelementptr i8, ptr %148, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %140) #15, !srcloc !16
  %150 = load i32, ptr %82, align 4
  %151 = shl i32 %150, 5
  %152 = add i32 %151, 2864
  %153 = load i32, ptr %38, align 4
  %154 = load ptr, ptr %0, align 4
  %155 = load ptr, ptr %154, align 4
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr i8, ptr %156, i32 %152
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %153) #15, !srcloc !16
  %158 = load ptr, ptr %0, align 4
  %159 = load ptr, ptr %158, align 4
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr i8, ptr %160, i32 %152
  %162 = getelementptr i8, ptr %161, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %153) #15, !srcloc !16
  %163 = load i32, ptr %82, align 4
  %164 = shl i32 %163, 5
  %165 = add i32 %164, 2868
  %166 = load i32, ptr %45, align 4
  %167 = load ptr, ptr %0, align 4
  %168 = load ptr, ptr %167, align 4
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr i8, ptr %169, i32 %165
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %166) #15, !srcloc !16
  %171 = load ptr, ptr %0, align 4
  %172 = load ptr, ptr %171, align 4
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr i8, ptr %173, i32 %165
  %175 = getelementptr i8, ptr %174, i32 4096
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %166) #15, !srcloc !16
  %176 = load ptr, ptr %0, align 4
  %177 = load ptr, ptr %176, align 4
  %178 = load i32, ptr %82, align 4
  %179 = add i32 %178, 8
  %180 = shl nuw i32 1, %179
  %181 = shl nuw i32 1, %178
  %182 = or i32 %180, %181
  %183 = load ptr, ptr %177, align 4
  %184 = getelementptr i8, ptr %183, i32 2816
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %182) #15, !srcloc !16
  br label %185

185:                                              ; preds = %78, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sh_mobile_lcdc_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, %3
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 1140
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #15, !srcloc !16
  tail call fastcc void @sh_mobile_lcdc_start_stop(ptr noundef %0, i32 noundef 0)
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr i8, ptr %9, i32 1128
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #15, !srcloc !16
  %11 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0
  %14 = load i32, ptr %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr %13, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i32, ptr %20, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %18, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 0) #15, !srcloc !16
  %24 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %25, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %16
  %30 = load ptr, ptr %13, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %19, align 4
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %31, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #15, !srcloc !16
  %35 = sdiv i32 %27, 2
  %36 = shl nsw i32 -1, %35
  %37 = xor i32 %36, -1
  %38 = load ptr, ptr %13, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %19, align 4
  %41 = getelementptr i32, ptr %40, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr i8, ptr %39, i32 %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %37) #15, !srcloc !16
  %44 = icmp eq i32 %27, 1
  %45 = select i1 %44, i32 64, i32 %27
  %46 = load ptr, ptr %24, align 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 2
  %49 = select i1 %48, i32 8, i32 0
  %50 = shl i32 %45, %49
  %51 = or i32 %50, %12
  br label %52

52:                                               ; preds = %29, %16, %1
  %53 = phi i32 [ %51, %29 ], [ %12, %16 ], [ %12, %1 ]
  %54 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1
  %55 = load i32, ptr %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %93, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %54, align 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i32, ptr %61, i32 15
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i8, ptr %59, i32 %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #15, !srcloc !16
  %65 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 1, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %66, i32 0, i32 4
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %57
  %71 = load ptr, ptr %54, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %60, align 4
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %72, i32 %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 0) #15, !srcloc !16
  %76 = sdiv i32 %68, 2
  %77 = shl nsw i32 -1, %76
  %78 = xor i32 %77, -1
  %79 = load ptr, ptr %54, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %60, align 4
  %82 = getelementptr i32, ptr %81, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = getelementptr i8, ptr %80, i32 %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %78) #15, !srcloc !16
  %85 = icmp eq i32 %68, 1
  %86 = select i1 %85, i32 64, i32 %68
  %87 = load ptr, ptr %65, align 4
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 2
  %90 = select i1 %89, i32 8, i32 0
  %91 = shl i32 %86, %90
  %92 = or i32 %91, %53
  br label %93

93:                                               ; preds = %70, %57, %52
  %94 = phi i32 [ %92, %70 ], [ %53, %57 ], [ %53, %52 ]
  %95 = load ptr, ptr %0, align 4
  %96 = getelementptr i8, ptr %95, i32 1040
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #15, !srcloc !16
  %97 = load ptr, ptr %0, align 4
  %98 = getelementptr i8, ptr %97, i32 1044
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #15, !srcloc !16
  %99 = load ptr, ptr %0, align 4
  %100 = getelementptr i8, ptr %99, i32 1044
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %100) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %103, %93
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !21
  %104 = load ptr, ptr %0, align 4
  %105 = getelementptr i8, ptr %104, i32 1044
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %103

108:                                              ; preds = %103, %93
  br label %109

109:                                              ; preds = %443, %108
  %110 = phi i1 [ false, %443 ], [ true, %108 ]
  %111 = phi i32 [ 1, %443 ], [ 0, %108 ]
  %112 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111
  %113 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 5
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %443, label %116

116:                                              ; preds = %109
  %117 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 27
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 4
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.fb_info, ptr %118, i32 0, i32 6, i32 24
  %122 = load i32, ptr %121, align 4
  %123 = shl i32 %122, 27
  %124 = and i32 %123, 268435456
  %125 = xor i32 %124, 268435456
  %126 = or i32 %125, %120
  %127 = and i32 %123, 134217728
  %128 = xor i32 %127, 134217728
  %129 = or i32 %126, %128
  %130 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %131, i32 0, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = shl i32 %133, 26
  %135 = and i32 %134, 67108864
  %136 = or i32 %129, %135
  %137 = shl i32 %133, 24
  %138 = and i32 %137, 33554432
  %139 = or i32 %136, %138
  %140 = shl i32 %133, 22
  %141 = and i32 %140, 16777216
  %142 = or i32 %139, %141
  %143 = shl i32 %133, 14
  %144 = and i32 %143, 131072
  %145 = or i32 %142, %144
  %146 = shl i32 %133, 12
  %147 = and i32 %146, 65536
  %148 = or i32 %145, %147
  %149 = load ptr, ptr %112, align 4
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 3
  %152 = load ptr, ptr %151, align 4
  %153 = getelementptr i32, ptr %152, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = getelementptr i8, ptr %150, i32 %154
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %148) #15, !srcloc !16
  %156 = load ptr, ptr %112, align 4
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %151, align 4
  %159 = getelementptr i32, ptr %158, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i8, ptr %157, i32 4096
  %162 = getelementptr i8, ptr %161, i32 %160
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 %148) #15, !srcloc !16
  %163 = load ptr, ptr %130, align 4
  %164 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %163, i32 0, i32 10
  %165 = load i32, ptr %164, align 4
  %166 = load ptr, ptr %112, align 4
  %167 = load ptr, ptr %166, align 4
  %168 = load ptr, ptr %151, align 4
  %169 = getelementptr i32, ptr %168, i32 3
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr i8, ptr %167, i32 %170
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %165) #15, !srcloc !16
  %172 = load ptr, ptr %112, align 4
  %173 = load ptr, ptr %172, align 4
  %174 = load ptr, ptr %151, align 4
  %175 = getelementptr i32, ptr %174, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = getelementptr i8, ptr %173, i32 4096
  %178 = getelementptr i8, ptr %177, i32 %176
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %165) #15, !srcloc !16
  %179 = load ptr, ptr %130, align 4
  %180 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %179, i32 0, i32 10, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = load ptr, ptr %112, align 4
  %183 = load ptr, ptr %182, align 4
  %184 = load ptr, ptr %151, align 4
  %185 = getelementptr i32, ptr %184, i32 4
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr i8, ptr %183, i32 %186
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %181) #15, !srcloc !16
  %188 = load ptr, ptr %112, align 4
  %189 = load ptr, ptr %188, align 4
  %190 = load ptr, ptr %151, align 4
  %191 = getelementptr i32, ptr %190, i32 4
  %192 = load i32, ptr %191, align 4
  %193 = getelementptr i8, ptr %189, i32 4096
  %194 = getelementptr i8, ptr %193, i32 %192
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 %181) #15, !srcloc !16
  %195 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 29, i32 2, i32 2
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 29, i32 2, i32 9
  %198 = load i32, ptr %197, align 4
  %199 = add i32 %198, %196
  %200 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 29, i32 2, i32 5
  %201 = load i32, ptr %200, align 4
  %202 = add i32 %199, %201
  %203 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 29, i32 2, i32 6
  %204 = load i32, ptr %203, align 4
  %205 = add i32 %202, %204
  %206 = lshr i32 %205, 3
  %207 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 17
  %208 = load i32, ptr %207, align 4
  %209 = tail call i32 @llvm.umin.i32(i32 %196, i32 %208) #15
  %210 = shl i32 %209, 13
  %211 = and i32 %210, -65536
  %212 = or i32 %211, %206
  %213 = load ptr, ptr %112, align 4
  %214 = load ptr, ptr %213, align 4
  %215 = load ptr, ptr %151, align 4
  %216 = getelementptr i32, ptr %215, i32 11
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr i8, ptr %214, i32 %217
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 %212) #15, !srcloc !16
  %219 = load ptr, ptr %112, align 4
  %220 = load ptr, ptr %219, align 4
  %221 = load ptr, ptr %151, align 4
  %222 = getelementptr i32, ptr %221, i32 11
  %223 = load i32, ptr %222, align 4
  %224 = getelementptr i8, ptr %220, i32 4096
  %225 = getelementptr i8, ptr %224, i32 %223
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %212) #15, !srcloc !16
  %226 = load i32, ptr %195, align 4
  %227 = load i32, ptr %203, align 4
  %228 = add i32 %227, %226
  %229 = lshr i32 %228, 3
  %230 = load i32, ptr %197, align 4
  %231 = shl i32 %230, 13
  %232 = and i32 %231, -65536
  %233 = or i32 %232, %229
  %234 = load ptr, ptr %112, align 4
  %235 = load ptr, ptr %234, align 4
  %236 = load ptr, ptr %151, align 4
  %237 = getelementptr i32, ptr %236, i32 12
  %238 = load i32, ptr %237, align 4
  %239 = getelementptr i8, ptr %235, i32 %238
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %239, i32 %233) #15, !srcloc !16
  %240 = load ptr, ptr %112, align 4
  %241 = load ptr, ptr %240, align 4
  %242 = load ptr, ptr %151, align 4
  %243 = getelementptr i32, ptr %242, i32 12
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr i8, ptr %241, i32 4096
  %246 = getelementptr i8, ptr %245, i32 %244
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %233) #15, !srcloc !16
  %247 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 29, i32 2, i32 3
  %248 = load i32, ptr %247, align 4
  %249 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 29, i32 2, i32 10
  %250 = load i32, ptr %249, align 4
  %251 = add i32 %250, %248
  %252 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 29, i32 2, i32 7
  %253 = load i32, ptr %252, align 4
  %254 = add i32 %251, %253
  %255 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 29, i32 2, i32 8
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %254, %256
  %258 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 19
  %259 = load i32, ptr %258, align 4
  %260 = tail call i32 @llvm.umin.i32(i32 %248, i32 %259) #15
  %261 = shl i32 %260, 16
  %262 = or i32 %261, %257
  %263 = load ptr, ptr %112, align 4
  %264 = load ptr, ptr %263, align 4
  %265 = load ptr, ptr %151, align 4
  %266 = getelementptr i32, ptr %265, i32 13
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr i8, ptr %264, i32 %267
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 %262) #15, !srcloc !16
  %269 = load ptr, ptr %112, align 4
  %270 = load ptr, ptr %269, align 4
  %271 = load ptr, ptr %151, align 4
  %272 = getelementptr i32, ptr %271, i32 13
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr i8, ptr %270, i32 4096
  %275 = getelementptr i8, ptr %274, i32 %273
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %275, i32 %262) #15, !srcloc !16
  %276 = load i32, ptr %247, align 4
  %277 = load i32, ptr %255, align 4
  %278 = add i32 %277, %276
  %279 = load i32, ptr %249, align 4
  %280 = shl i32 %279, 16
  %281 = or i32 %280, %278
  %282 = load ptr, ptr %112, align 4
  %283 = load ptr, ptr %282, align 4
  %284 = load ptr, ptr %151, align 4
  %285 = getelementptr i32, ptr %284, i32 14
  %286 = load i32, ptr %285, align 4
  %287 = getelementptr i8, ptr %283, i32 %286
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %287, i32 %281) #15, !srcloc !16
  %288 = load ptr, ptr %112, align 4
  %289 = load ptr, ptr %288, align 4
  %290 = load ptr, ptr %151, align 4
  %291 = getelementptr i32, ptr %290, i32 14
  %292 = load i32, ptr %291, align 4
  %293 = getelementptr i8, ptr %289, i32 4096
  %294 = getelementptr i8, ptr %293, i32 %292
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %294, i32 %281) #15, !srcloc !16
  %295 = load i32, ptr %195, align 4
  %296 = load i32, ptr %197, align 4
  %297 = add i32 %296, %295
  %298 = load i32, ptr %200, align 4
  %299 = add i32 %297, %298
  %300 = load i32, ptr %203, align 4
  %301 = add i32 %299, %300
  %302 = shl i32 %295, 24
  %303 = and i32 %302, 117440512
  %304 = shl i32 %301, 16
  %305 = and i32 %304, 458752
  %306 = shl i32 %296, 8
  %307 = and i32 %306, 1792
  %308 = and i32 %228, 7
  %309 = or i32 %303, %308
  %310 = or i32 %309, %307
  %311 = or i32 %310, %305
  %312 = load ptr, ptr %112, align 4
  %313 = load ptr, ptr %312, align 4
  %314 = load ptr, ptr %151, align 4
  %315 = getelementptr i32, ptr %314, i32 16
  %316 = load i32, ptr %315, align 4
  %317 = getelementptr i8, ptr %313, i32 %316
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %317, i32 %311) #15, !srcloc !16
  %318 = load ptr, ptr %112, align 4
  %319 = load ptr, ptr %318, align 4
  %320 = load ptr, ptr %151, align 4
  %321 = getelementptr i32, ptr %320, i32 16
  %322 = load i32, ptr %321, align 4
  %323 = getelementptr i8, ptr %319, i32 8192
  %324 = getelementptr i8, ptr %323, i32 %322
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %324, i32 %311) #15, !srcloc !16
  %325 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 15
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %326, i32 0, i32 3
  %328 = load i32, ptr %327, align 4
  %329 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %326, i32 0, i32 2
  %330 = load i8, ptr %329, align 4, !range !8
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %339, label %332

332:                                              ; preds = %116
  %333 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 16
  %334 = load i32, ptr %333, align 4
  switch i32 %334, label %339 [
    i32 3, label %335
    i32 7, label %337
  ]

335:                                              ; preds = %332
  %336 = or i32 %328, 262144
  br label %339

337:                                              ; preds = %332
  %338 = or i32 %328, 131072
  br label %339

339:                                              ; preds = %337, %335, %332, %116
  %340 = phi i32 [ %328, %332 ], [ %338, %337 ], [ %336, %335 ], [ %328, %116 ]
  %341 = load ptr, ptr %112, align 4
  %342 = load ptr, ptr %341, align 4
  %343 = load ptr, ptr %151, align 4
  %344 = getelementptr i32, ptr %343, i32 5
  %345 = load i32, ptr %344, align 4
  %346 = getelementptr i8, ptr %342, i32 %345
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 %340) #15, !srcloc !16
  %347 = load ptr, ptr %112, align 4
  %348 = load ptr, ptr %347, align 4
  %349 = load ptr, ptr %151, align 4
  %350 = getelementptr i32, ptr %349, i32 5
  %351 = load i32, ptr %350, align 4
  %352 = getelementptr i8, ptr %348, i32 4096
  %353 = getelementptr i8, ptr %352, i32 %351
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %340) #15, !srcloc !16
  %354 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 24
  %355 = load i32, ptr %354, align 4
  %356 = load ptr, ptr %112, align 4
  %357 = load ptr, ptr %356, align 4
  %358 = load ptr, ptr %151, align 4
  %359 = getelementptr i32, ptr %358, i32 10
  %360 = load i32, ptr %359, align 4
  %361 = getelementptr i8, ptr %357, i32 %360
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %361, i32 %355) #15, !srcloc !16
  %362 = load ptr, ptr %112, align 4
  %363 = load ptr, ptr %362, align 4
  %364 = load ptr, ptr %151, align 4
  %365 = getelementptr i32, ptr %364, i32 10
  %366 = load i32, ptr %365, align 4
  %367 = getelementptr i8, ptr %363, i32 4096
  %368 = getelementptr i8, ptr %367, i32 %366
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %368, i32 %355) #15, !srcloc !16
  %369 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 22
  %370 = load i32, ptr %369, align 4
  %371 = load ptr, ptr %112, align 4
  %372 = load ptr, ptr %371, align 4
  %373 = load ptr, ptr %151, align 4
  %374 = getelementptr i32, ptr %373, i32 8
  %375 = load i32, ptr %374, align 4
  %376 = getelementptr i8, ptr %372, i32 %375
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %376, i32 %370) #15, !srcloc !16
  %377 = load ptr, ptr %112, align 4
  %378 = load ptr, ptr %377, align 4
  %379 = load ptr, ptr %151, align 4
  %380 = getelementptr i32, ptr %379, i32 8
  %381 = load i32, ptr %380, align 4
  %382 = getelementptr i8, ptr %378, i32 4096
  %383 = getelementptr i8, ptr %382, i32 %381
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %383, i32 %370) #15, !srcloc !16
  %384 = load ptr, ptr %325, align 4
  %385 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, ptr %384, i32 0, i32 2
  %386 = load i8, ptr %385, align 4, !range !8
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %404, label %388

388:                                              ; preds = %339
  %389 = getelementptr %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 %111, i32 23
  %390 = load i32, ptr %389, align 4
  %391 = load ptr, ptr %112, align 4
  %392 = load ptr, ptr %391, align 4
  %393 = load ptr, ptr %151, align 4
  %394 = getelementptr i32, ptr %393, i32 9
  %395 = load i32, ptr %394, align 4
  %396 = getelementptr i8, ptr %392, i32 %395
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %396, i32 %390) #15, !srcloc !16
  %397 = load ptr, ptr %112, align 4
  %398 = load ptr, ptr %397, align 4
  %399 = load ptr, ptr %151, align 4
  %400 = getelementptr i32, ptr %399, i32 9
  %401 = load i32, ptr %400, align 4
  %402 = getelementptr i8, ptr %398, i32 4096
  %403 = getelementptr i8, ptr %402, i32 %401
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %403, i32 %390) #15, !srcloc !16
  br label %404

404:                                              ; preds = %388, %339
  %405 = load i32, ptr %119, align 4
  %406 = and i32 %405, 4096
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %429, label %408

408:                                              ; preds = %404
  %409 = load ptr, ptr %130, align 4
  %410 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %409, i32 0, i32 10, i32 2
  %411 = load i32, ptr %410, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %429, label %413

413:                                              ; preds = %408
  %414 = load ptr, ptr %112, align 4
  %415 = load ptr, ptr %414, align 4
  %416 = load ptr, ptr %151, align 4
  %417 = getelementptr i32, ptr %416, i32 6
  %418 = load i32, ptr %417, align 4
  %419 = getelementptr i8, ptr %415, i32 %418
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %419, i32 1) #15, !srcloc !16
  %420 = load ptr, ptr %112, align 4
  %421 = load ptr, ptr %420, align 4
  %422 = load ptr, ptr %151, align 4
  %423 = getelementptr i32, ptr %422, i32 6
  %424 = load i32, ptr %423, align 4
  %425 = getelementptr i8, ptr %421, i32 4096
  %426 = getelementptr i8, ptr %425, i32 %424
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %426, i32 1) #15, !srcloc !16
  %427 = load ptr, ptr %0, align 4
  %428 = getelementptr i8, ptr %427, i32 1128
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %428, i32 1024) #15, !srcloc !16
  br label %443

429:                                              ; preds = %408, %404
  %430 = load ptr, ptr %112, align 4
  %431 = load ptr, ptr %430, align 4
  %432 = load ptr, ptr %151, align 4
  %433 = getelementptr i32, ptr %432, i32 6
  %434 = load i32, ptr %433, align 4
  %435 = getelementptr i8, ptr %431, i32 %434
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %435, i32 0) #15, !srcloc !16
  %436 = load ptr, ptr %112, align 4
  %437 = load ptr, ptr %436, align 4
  %438 = load ptr, ptr %151, align 4
  %439 = getelementptr i32, ptr %438, i32 6
  %440 = load i32, ptr %439, align 4
  %441 = getelementptr i8, ptr %437, i32 4096
  %442 = getelementptr i8, ptr %441, i32 %440
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %442, i32 0) #15, !srcloc !16
  br label %443

443:                                              ; preds = %429, %413, %109
  br i1 %110, label %109, label %444

444:                                              ; preds = %443
  %445 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 6, i32 0, i32 15
  %446 = load ptr, ptr %445, align 4
  %447 = load i32, ptr %446, align 4
  switch i32 %447, label %449 [
    i32 1346520914, label %450
    i32 825382478, label %450
    i32 825644622, label %450
    i32 842290766, label %450
    i32 861030210, label %448
    i32 842094158, label %448
    i32 909203022, label %448
    i32 875714126, label %448
  ]

448:                                              ; preds = %444, %444, %444, %444
  br label %450

449:                                              ; preds = %444
  br label %450

450:                                              ; preds = %449, %448, %444, %444, %444, %444
  %451 = phi i32 [ 4, %449 ], [ 7, %448 ], [ 6, %444 ], [ 6, %444 ], [ 6, %444 ], [ 6, %444 ]
  %452 = load ptr, ptr %0, align 4
  %453 = getelementptr i8, ptr %452, i32 1148
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %453, i32 %451) #15, !srcloc !16
  %454 = load ptr, ptr %0, align 4
  %455 = getelementptr i8, ptr %454, i32 1136
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %455, i32 1) #15, !srcloc !16
  tail call fastcc void @sh_mobile_lcdc_start_stop(ptr noundef %0, i32 noundef 1)
  %456 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %0, i32 0, i32 8
  store i32 1, ptr %456, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sh_mobile_lcdc_deferred_io(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fb_info, ptr %0, i32 0, i32 29
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %7, i32 0, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #15, !srcloc !10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #15, !srcloc !18
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %7, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @clk_prepare(ptr noundef %14) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = tail call i32 @clk_enable(ptr noundef %14) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @clk_unprepare(ptr noundef %14) #15
  br label %21

21:                                               ; preds = %20, %17, %12
  %22 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %7, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @__pm_runtime_resume(ptr noundef %23, i32 noundef 4) #15
  br label %25

25:                                               ; preds = %21, %2
  %26 = load volatile ptr, ptr %1, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %80, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %29, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 12
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %29, i32 0, i32 31
  %34 = load ptr, ptr %33, align 4
  tail call void @sg_init_table(ptr noundef %34, i32 noundef %32) #15
  %35 = load ptr, ptr %1, align 4
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %56, label %37

37:                                               ; preds = %45, %28
  %38 = phi ptr [ %54, %45 ], [ %35, %28 ]
  %39 = phi i32 [ %48, %45 ], [ 0, %28 ]
  %40 = getelementptr i8, ptr %38, i32 -4
  %41 = ptrtoint ptr %40 to i32
  %42 = and i32 %41, 3
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !25

44:                                               ; preds = %37
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #15, !srcloc !26
  unreachable

45:                                               ; preds = %37
  %46 = load ptr, ptr %33, align 4
  %47 = getelementptr %struct.scatterlist, ptr %46, i32 %39
  %48 = add i32 %39, 1
  %49 = load i32, ptr %47, align 4
  %50 = and i32 %49, 3
  %51 = or i32 %50, %41
  store i32 %51, ptr %47, align 4
  %52 = getelementptr %struct.scatterlist, ptr %46, i32 %39, i32 1
  store i32 0, ptr %52, align 4
  %53 = getelementptr %struct.scatterlist, ptr %46, i32 %39, i32 2
  store i32 4096, ptr %53, align 4
  %54 = load ptr, ptr %38, align 4
  %55 = icmp eq ptr %54, %1
  br i1 %55, label %56, label %37

56:                                               ; preds = %45, %28
  %57 = phi i32 [ 0, %28 ], [ %48, %45 ]
  %58 = load ptr, ptr %4, align 4
  %59 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 31
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @dma_map_sg_attrs(ptr noundef %60, ptr noundef %62, i32 noundef %57, i32 noundef 1, i32 noundef 0) #15
  %64 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %6, i32 0, i32 8, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  tail call void %65(ptr noundef %4, ptr noundef nonnull @sh_mobile_lcdc_sys_bus_ops) #15
  br label %68

68:                                               ; preds = %67, %56
  %69 = load ptr, ptr %4, align 4
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i32, ptr %72, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i8, ptr %70, i32 %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 1) #15, !srcloc !16
  %76 = load ptr, ptr %4, align 4
  %77 = getelementptr inbounds %struct.sh_mobile_lcdc_priv, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %61, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %78, ptr noundef %79, i32 noundef %57, i32 noundef 1, i32 noundef 0) #15
  br label %93

80:                                               ; preds = %25
  %81 = getelementptr inbounds %struct.sh_mobile_lcdc_chan_cfg, ptr %6, i32 0, i32 8, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  tail call void %82(ptr noundef %4, ptr noundef nonnull @sh_mobile_lcdc_sys_bus_ops) #15
  br label %85

85:                                               ; preds = %84, %80
  %86 = load ptr, ptr %4, align 4
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %4, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr i32, ptr %89, i32 7
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr i8, ptr %87, i32 %91
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 1) #15, !srcloc !16
  br label %93

93:                                               ; preds = %85, %68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_deferred_io_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lcdc_sys_write_index(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = or i32 %1, 268435456
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #15, !srcloc !16
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1132
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %13, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !21
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 1132
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %13

19:                                               ; preds = %13, %2
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  %25 = select i1 %24, i32 3, i32 1
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr i8, ptr %26, i32 2304
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #15, !srcloc !16
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 1132
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %34, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !21
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr i8, ptr %35, i32 1132
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %34

40:                                               ; preds = %34, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lcdc_sys_write_data(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = or i32 %1, 285212672
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #15, !srcloc !16
  %7 = load ptr, ptr %0, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 1132
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %13, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !21
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 1132
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %13

19:                                               ; preds = %13, %2
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  %25 = select i1 %24, i32 3, i32 1
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr i8, ptr %26, i32 2304
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #15, !srcloc !16
  %28 = load ptr, ptr %0, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 1132
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %34, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !21
  %35 = load ptr, ptr %28, align 4
  %36 = getelementptr i8, ptr %35, i32 1132
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %34

40:                                               ; preds = %34, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lcdc_sys_read_data(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2112
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 16777216) #15, !srcloc !16
  %5 = load ptr, ptr %0, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 1132
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %11, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !21
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 1132
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %11

17:                                               ; preds = %11, %1
  %18 = load ptr, ptr %0, align 4
  %19 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 2
  %23 = select i1 %22, i32 3, i32 1
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr i8, ptr %24, i32 2308
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #15, !srcloc !16
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #15
  %27 = load ptr, ptr %0, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 1132
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %33, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !21
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i8, ptr %34, i32 1132
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %33

39:                                               ; preds = %33, %17
  %40 = load ptr, ptr %0, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 2112
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  %44 = and i32 %43, 262143
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @overlay_alpha_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %7, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %9) #15
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @overlay_alpha_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 29
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !22
  %10 = call i32 @simple_strtoul(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 10) #15
  %11 = load ptr, ptr %5, align 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = getelementptr i8, ptr %11, i32 1
  store ptr %19, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi ptr [ %19, %18 ], [ %11, %4 ]
  %22 = ptrtoint ptr %21 to i32
  %23 = ptrtoint ptr %2 to i32
  %24 = sub i32 %22, %23
  %25 = icmp ne i32 %24, %3
  %26 = icmp ugt i32 %10, 255
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  store i32 %10, ptr %29, align 4
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 5
  %38 = load i8, ptr %37, align 4, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %9)
  br label %41

41:                                               ; preds = %40, %36, %32, %28, %20
  %42 = phi i32 [ -22, %20 ], [ %3, %32 ], [ %3, %36 ], [ %3, %40 ], [ %3, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @overlay_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %7, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %9) #15
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @overlay_mode_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 29
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !22
  %10 = call i32 @simple_strtoul(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 10) #15
  %11 = load ptr, ptr %5, align 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = getelementptr i8, ptr %11, i32 1
  store ptr %19, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi ptr [ %19, %18 ], [ %11, %4 ]
  %22 = ptrtoint ptr %21 to i32
  %23 = ptrtoint ptr %2 to i32
  %24 = sub i32 %22, %23
  %25 = icmp ne i32 %24, %3
  %26 = icmp ugt i32 %10, 1
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  store i32 %10, ptr %29, align 4
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 5
  %34 = load i8, ptr %33, align 4, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %9)
  br label %37

37:                                               ; preds = %36, %32, %28, %20
  %38 = phi i32 [ -22, %20 ], [ %3, %32 ], [ %3, %36 ], [ %3, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @overlay_position_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %7, i32 0, i32 21
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %7, i32 0, i32 22
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.34, i32 noundef %9, i32 noundef %11) #15
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @overlay_position_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 29
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !22
  %10 = call i32 @simple_strtol(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 10) #15
  %11 = load ptr, ptr %5, align 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 44
  br i1 %13, label %14, label %46

14:                                               ; preds = %4
  %15 = getelementptr i8, ptr %11, i32 1
  %16 = call i32 @simple_strtol(ptr noundef %15, ptr noundef nonnull %5, i32 noundef 10) #15
  %17 = load ptr, ptr %5, align 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, 32
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  %25 = getelementptr i8, ptr %17, i32 1
  store ptr %25, ptr %5, align 4
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi ptr [ %25, %24 ], [ %17, %14 ]
  %28 = ptrtoint ptr %27 to i32
  %29 = ptrtoint ptr %2 to i32
  %30 = sub i32 %28, %29
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 21
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, %10
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 22
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %16
  br i1 %39, label %46, label %40

40:                                               ; preds = %36, %32
  store i32 %10, ptr %33, align 4
  %41 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 22
  store i32 %16, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 5
  %43 = load i8, ptr %42, align 4, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %9)
  br label %46

46:                                               ; preds = %45, %40, %36, %26, %4
  %47 = phi i32 [ -22, %4 ], [ -22, %26 ], [ %3, %40 ], [ %3, %45 ], [ %3, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @overlay_rop3_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %9) #15
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @overlay_rop3_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 29
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store ptr null, ptr %5, align 4, !annotation !22
  %10 = call i32 @simple_strtoul(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 10) #15
  %11 = load ptr, ptr %5, align 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 32
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = getelementptr i8, ptr %11, i32 1
  store ptr %19, ptr %5, align 4
  br label %20

20:                                               ; preds = %18, %4
  %21 = phi ptr [ %19, %18 ], [ %11, %4 ]
  %22 = ptrtoint ptr %21 to i32
  %23 = ptrtoint ptr %2 to i32
  %24 = sub i32 %22, %23
  %25 = icmp ne i32 %24, %3
  %26 = icmp ugt i32 %10, 255
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  store i32 %10, ptr %29, align 4
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, ptr %9, i32 0, i32 5
  %38 = load i8, ptr %37, align 4, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  call fastcc void @sh_mobile_lcdc_overlay_setup(ptr noundef %9)
  br label %41

41:                                               ; preds = %40, %36, %32, %28, %20
  %42 = phi i32 [ -22, %20 ], [ %3, %32 ], [ %3, %36 ], [ %3, %40 ], [ %3, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_framebuffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @framebuffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fb_dealloc_cmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @sh_mobile_lcdc_stop(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @sh_mobile_lcdc_start(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 1136
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #15, !srcloc !16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sh_mobile_lcdc_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call fastcc void @__sh_mobile_lcdc_start(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

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
!9 = !{i64 2147988180}
!10 = !{i64 312258, i64 2147813824, i64 2147813850, i64 2147813897, i64 2147813919, i64 2147813947, i64 2147813967}
!11 = !{i64 2147890566, i64 2147890598, i64 2147890627, i64 2147890661, i64 2147890692, i64 2147890715}
!12 = !{i64 2147988383}
!13 = !{i64 3872266}
!14 = !{i64 2151411719}
!15 = !{i64 2151412941}
!16 = !{i64 3871848}
!17 = !{i64 2147985347}
!18 = !{i64 2147888209, i64 2147888241, i64 2147888270, i64 2147888304, i64 2147888335, i64 2147888358}
!19 = !{i64 2147985550}
!20 = !{i64 2154703187}
!21 = !{i64 2154703029}
!22 = !{!"auto-init"}
!23 = !{i64 2154711282}
!24 = !{i64 2154711124}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2154424640, i64 2154425132, i64 2154424677, i64 2154424733, i64 2154424767, i64 2154424791, i64 2154424832, i64 2154424853, i64 2154424881, i64 2154424915}
