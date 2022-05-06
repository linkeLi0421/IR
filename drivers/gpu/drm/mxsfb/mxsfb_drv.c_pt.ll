; ModuleID = '/llk/IR/drivers/gpu/drm/mxsfb/mxsfb_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/mxsfb/mxsfb_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mxsfb_devdata = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.mxsfb_drm_private = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.77, %struct.drm_crtc, %struct.drm_encoder, ptr, ptr }
%struct.anon.77 = type { %struct.drm_plane, %struct.drm_plane }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.76 = type { i32, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.72, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.72 = type { [4 x i8] }

@mxsfb_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-lcdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mxsfb_devdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-lcdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxsfb_devdata, i64 24) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-lcdif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxsfb_devdata, i64 48) }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author278 = internal constant [35 x i8] c"author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [41 x i8] c"description=Freescale MXS DRM/KMS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@mxsfb_devdata = internal constant [3 x %struct.mxsfb_devdata] [%struct.mxsfb_devdata { i32 32, i32 48, i32 64, i32 255, i32 24, i8 0, i8 0 }, %struct.mxsfb_devdata { i32 48, i32 64, i32 80, i32 16383, i32 18, i8 0, i8 1 }, %struct.mxsfb_devdata { i32 48, i32 64, i32 80, i32 16383, i32 18, i8 1, i8 1 }], align 4
@mxsfb_platform_driver = internal global %struct.platform_driver { ptr @mxsfb_probe, ptr @mxsfb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxsfb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxsfb_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [6 x i8] c"mxsfb\00", align 1
@mxsfb_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mxsfb_suspend, ptr @mxsfb_resume, ptr @mxsfb_suspend, ptr @mxsfb_resume, ptr @mxsfb_suspend, ptr @mxsfb_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mxsfb_driver = internal constant %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 19, ptr null, i32 0, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mxsfb-drm\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MXSFB Controller DRM\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"20160824\00", align 1
@fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disp_axi\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to initialize KMS pipeline\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to initialise vblank\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Cannot connect bridge: %d\0A\00", align 1
@mxsfb_mode_config_funcs = internal constant %struct.drm_mode_config_funcs { ptr @mxsfb_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, align 4
@mxsfb_mode_config_helpers = internal constant %struct.drm_mode_config_helper_funcs { ptr @drm_atomic_helper_commit_tail_rpm, ptr null }, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Failed to install IRQ handler\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Failed to attach bridge\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_license280], section "llvm.metadata"

@__mod_of__mxsfb_dt_ids_device_table = dso_local alias [4 x %struct.of_device_id], ptr @mxsfb_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mxsfb_enable_axi_clk(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @clk_prepare(ptr noundef nonnull %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call i32 @clk_enable(ptr noundef nonnull %3) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef nonnull %3) #5
  br label %12

12:                                               ; preds = %11, %8, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mxsfb_disable_axi_clk(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @clk_disable(ptr noundef nonnull %3) #5
  tail call void @clk_unprepare(ptr noundef nonnull %3) #5
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxsfb_platform_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxsfb_platform_driver) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxsfb_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.drm_connector_list_iter, align 8
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call ptr @of_match_device(ptr noundef nonnull @mxsfb_dt_ids, ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %155, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @mxsfb_driver, ptr noundef %5) #5
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %155

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 -16
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 1776, i32 noundef 3520) #5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %153, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 6
  store ptr %11, ptr %24, align 8
  %25 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 5
  store ptr %21, ptr %25, align 4
  store ptr %17, ptr %21, align 8
  %26 = tail call ptr @platform_get_resource(ptr noundef %20, i32 noundef 512, i32 noundef 0) #5
  %27 = load ptr, ptr %18, align 4
  %28 = tail call ptr @devm_ioremap_resource(ptr noundef %27, ptr noundef %26) #5
  %29 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = ptrtoint ptr %28 to i32
  br label %136

33:                                               ; preds = %23
  %34 = load ptr, ptr %18, align 4
  %35 = tail call ptr @devm_clk_get(ptr noundef %34, ptr noundef null) #5
  %36 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 2
  store ptr %35, ptr %36, align 8
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = ptrtoint ptr %35 to i32
  br label %136

40:                                               ; preds = %33
  %41 = load ptr, ptr %18, align 4
  %42 = tail call ptr @devm_clk_get(ptr noundef %41, ptr noundef nonnull @.str.4) #5
  %43 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 3
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %45 = select i1 %44, ptr null, ptr %42
  store ptr %45, ptr %43, align 4
  %46 = load ptr, ptr %18, align 4
  %47 = tail call ptr @devm_clk_get(ptr noundef %46, ptr noundef nonnull @.str.5) #5
  %48 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  %50 = select i1 %49, ptr null, ptr %47
  store ptr %50, ptr %48, align 8
  %51 = load ptr, ptr %18, align 4
  %52 = tail call i32 @dma_set_mask(ptr noundef %51, i64 noundef 4294967295) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %153

54:                                               ; preds = %40
  %55 = tail call i32 @dma_set_coherent_mask(ptr noundef %51, i64 noundef 4294967295) #5
  %56 = load ptr, ptr %18, align 4
  tail call void @pm_runtime_enable(ptr noundef %56) #5
  %57 = tail call i32 @drmm_mode_config_init(ptr noundef %11) #5
  %58 = tail call i32 @mxsfb_kms_init(ptr noundef nonnull %21) #5
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.6) #6
  br label %133

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 19
  %64 = load i32, ptr %63, align 4
  %65 = tail call i32 @drm_vblank_init(ptr noundef %11, i32 noundef %64) #5
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.7) #6
  br label %133

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 8
  tail call void @drm_crtc_vblank_off(ptr noundef %70) #5
  %71 = load ptr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store ptr null, ptr %4, align 4, !annotation !8
  %72 = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 25
  %75 = load ptr, ptr %74, align 8
  %76 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %75, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %69
  %79 = load ptr, ptr %3, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %72, align 4
  %83 = call ptr @devm_drm_panel_bridge_add_typed(ptr noundef %82, ptr noundef nonnull %79, i32 noundef 17) #5
  store ptr %83, ptr %4, align 4
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = ptrtoint ptr %83 to i32
  br label %105

87:                                               ; preds = %78
  %88 = load ptr, ptr %4, align 4
  br label %89

89:                                               ; preds = %87, %81
  %90 = phi ptr [ %88, %87 ], [ %83, %81 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  br label %107

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 9
  %95 = call i32 @drm_bridge_attach(ptr noundef %94, ptr noundef nonnull %90, ptr noundef null, i32 noundef 0) #5
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %72, align 4
  %99 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %98, i32 noundef %95, ptr noundef nonnull @.str.10) #5
  br label %105

100:                                              ; preds = %93
  %101 = load ptr, ptr %4, align 4
  %102 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 11
  store ptr %101, ptr %102, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %71, ptr noundef nonnull %2) #5
  %103 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %104 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 10
  store ptr %103, ptr %104, align 8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  br label %110

105:                                              ; preds = %97, %85, %69
  %106 = phi i32 [ %86, %85 ], [ %99, %97 ], [ %76, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  switch i32 %106, label %107 [
    i32 0, label %110
    i32 -517, label %133
  ]

107:                                              ; preds = %105, %92
  %108 = phi i32 [ -19, %92 ], [ %106, %105 ]
  %109 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %109, ptr noundef nonnull @.str.8, i32 noundef %108) #6
  br label %133

110:                                              ; preds = %105, %100
  %111 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 23
  store i32 120, ptr %111, align 4
  %112 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 24
  store i32 120, ptr %112, align 4
  %113 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 25
  store i32 65535, ptr %113, align 4
  %114 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 26
  store i32 65535, ptr %114, align 4
  %115 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 27
  store ptr @mxsfb_mode_config_funcs, ptr %115, align 4
  %116 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 103
  store ptr @mxsfb_mode_config_helpers, ptr %116, align 4
  call void @drm_mode_config_reset(ptr noundef %11) #5
  %117 = call i32 @platform_get_irq(ptr noundef %20, i32 noundef 0) #5
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %133, label %119

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %21, i32 0, i32 5
  store i32 %117, ptr %120, align 4
  %121 = load ptr, ptr %18, align 4
  %122 = call i32 @__pm_runtime_resume(ptr noundef %121, i32 noundef 4) #5
  %123 = load i32, ptr %120, align 4
  %124 = call fastcc i32 @mxsfb_irq_install(ptr noundef %11, i32 noundef %123) #5
  %125 = load ptr, ptr %18, align 4
  %126 = call i32 @__pm_runtime_idle(ptr noundef %125, i32 noundef 4) #5
  %127 = icmp slt i32 %124, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.9) #6
  br label %133

130:                                              ; preds = %119
  call void @drm_kms_helper_poll_init(ptr noundef %11) #5
  %131 = getelementptr i8, ptr %19, i32 64
  store ptr %11, ptr %131, align 8
  %132 = call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %11) #5
  br label %139

133:                                              ; preds = %128, %110, %107, %105, %67, %60
  %134 = phi i32 [ %58, %60 ], [ %65, %67 ], [ %108, %107 ], [ %117, %110 ], [ %124, %128 ], [ %106, %105 ]
  %135 = load ptr, ptr %18, align 4
  call void @__pm_runtime_disable(ptr noundef %135, i1 noundef zeroext true) #5
  br label %136

136:                                              ; preds = %133, %38, %31
  %137 = phi i32 [ %32, %31 ], [ %39, %38 ], [ %134, %133 ]
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %136, %130
  %140 = call i32 @drm_dev_register(ptr noundef %11, i32 noundef 0) #5
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  call void @drm_fbdev_generic_setup(ptr noundef %11, i32 noundef 32) #5
  br label %155

143:                                              ; preds = %139
  call void @drm_kms_helper_poll_fini(ptr noundef %11) #5
  call void @drm_mode_config_cleanup(ptr noundef %11) #5
  %144 = load ptr, ptr %18, align 4
  %145 = call i32 @__pm_runtime_resume(ptr noundef %144, i32 noundef 4) #5
  %146 = load ptr, ptr %25, align 4
  call fastcc void @mxsfb_irq_disable(ptr noundef %11) #5
  %147 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %146, i32 0, i32 5
  %148 = load i32, ptr %147, align 4
  %149 = call ptr @free_irq(i32 noundef %148, ptr noundef %11) #5
  %150 = load ptr, ptr %18, align 4
  %151 = call i32 @__pm_runtime_idle(ptr noundef %150, i32 noundef 4) #5
  store ptr null, ptr %25, align 4
  %152 = load ptr, ptr %18, align 4
  call void @__pm_runtime_disable(ptr noundef %152, i1 noundef zeroext true) #5
  br label %153

153:                                              ; preds = %143, %136, %40, %15
  %154 = phi i32 [ %137, %136 ], [ %140, %143 ], [ %52, %40 ], [ -12, %15 ]
  call void @drm_dev_put(ptr noundef %11) #5
  br label %155

155:                                              ; preds = %153, %142, %13, %1
  %156 = phi i32 [ %14, %13 ], [ %154, %153 ], [ 0, %142 ], [ -19, %1 ]
  ret i32 %156
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxsfb_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_dev_unregister(ptr noundef %3) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #5
  tail call void @drm_mode_config_cleanup(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #5
  %7 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call fastcc void @mxsfb_irq_disable(ptr noundef %3) #5
  %9 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %3) #5
  %12 = load ptr, ptr %4, align 4
  %13 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #5
  store ptr null, ptr %7, align 4
  %14 = load ptr, ptr %4, align 4
  tail call void @__pm_runtime_disable(ptr noundef %14, i1 noundef zeroext true) #5
  tail call void @drm_dev_put(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxsfb_kms_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mxsfb_irq_install(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i32 %1, -2147483648
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  tail call fastcc void @mxsfb_irq_disable(ptr noundef %0)
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_driver, ptr %6, i32 0, i32 21
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @mxsfb_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %8, ptr noundef %0) #5
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi i32 [ %9, %4 ], [ -107, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add_typed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mxsfb_fb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %2) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_format_info, ptr %4, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = mul i32 %8, %11
  %13 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = tail call ptr @drm_gem_fb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  br label %18

18:                                               ; preds = %16, %6, %3
  %19 = phi ptr [ %17, %16 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -22 to ptr), %6 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mxsfb_irq_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = tail call i32 @clk_enable(ptr noundef nonnull %5) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef nonnull %5) #5
  br label %14

14:                                               ; preds = %13, %10, %7, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %15 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 8192) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 512) #5, !srcloc !10
  %20 = load ptr, ptr %4, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  tail call void @clk_disable(ptr noundef nonnull %20) #5
  tail call void @clk_unprepare(ptr noundef nonnull %20) #5
  br label %23

23:                                               ; preds = %22, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxsfb_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %9 = and i32 %8, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mxsfb_drm_private, ptr %4, i32 0, i32 8
  %13 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %12) #5
  br label %14

14:                                               ; preds = %11, %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 512) #5, !srcloc !10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxsfb_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %3) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxsfb_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %3) #5
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 2155486515}
!10 = !{i64 4991761}
!11 = !{i64 2155487002}
!12 = !{i64 4992179}
!13 = !{i64 2155485642}
!14 = !{i64 2155486027}
