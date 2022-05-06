; ModuleID = '/llk/IR/drivers/gpu/drm/imx/imx-drm-core.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/imx-drm-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_drm_connector_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_drm_connector_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_imx_drm_connector_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_drm_encoder_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_drm_encoder_parse_of\22\09\09\09\09\09"
module asm "__kstrtabns_imx_drm_encoder_parse_of:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipu_client_platformdata = type { i32, i32, i32, i32, [2 x i32], ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.77 = type { i32, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@__param_str_legacyfb_depth = internal constant [15 x i8] c"legacyfb_depth\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@legacyfb_depth = internal global i32 16, align 4
@__param_legacyfb_depth = internal constant %struct.kernel_param { ptr @__param_str_legacyfb_depth, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @legacyfb_depth } }, section "__param", align 4
@__UNIQUE_ID_legacyfb_depthtype277 = internal constant [28 x i8] c"parmtype=legacyfb_depth:int\00", section ".modinfo", align 1
@__kstrtab_imx_drm_connector_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_drm_connector_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_drm_connector_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_drm_connector_destroy to i32), ptr @__kstrtab_imx_drm_connector_destroy, ptr @__kstrtabns_imx_drm_connector_destroy }, section "___ksymtab_gpl+imx_drm_connector_destroy", align 4
@__kstrtab_imx_drm_encoder_parse_of = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_drm_encoder_parse_of = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_drm_encoder_parse_of = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_drm_encoder_parse_of to i32), ptr @__kstrtab_imx_drm_encoder_parse_of, ptr @__kstrtabns_imx_drm_encoder_parse_of }, section "___ksymtab_gpl+imx_drm_encoder_parse_of", align 4
@imx_drm_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-display-subsystem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author278 = internal constant [45 x i8] c"author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [33 x i8] c"description=i.MX drm driver core\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@drivers = internal constant [2 x ptr] [ptr @imx_drm_pdrv, ptr @ipu_drm_driver], align 4
@imx_drm_pdrv = internal global %struct.platform_driver { ptr @imx_drm_platform_probe, ptr @imx_drm_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_drm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@ipu_drm_driver = external dso_local global %struct.platform_driver, align 4
@.str = private unnamed_addr constant [8 x i8] c"imx-drm\00", align 1
@imx_drm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @imx_drm_suspend, ptr @imx_drm_resume, ptr @imx_drm_suspend, ptr @imx_drm_resume, ptr @imx_drm_suspend, ptr @imx_drm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx_drm_ops = internal constant %struct.component_master_ops { ptr @imx_drm_bind, ptr @imx_drm_unbind }, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"imx-ipuv3-crtc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"lvds-channel\00", align 1
@imx_drm_driver = internal constant %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @imx_drm_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str, ptr @.str.4, ptr @.str.5, i32 19, ptr @imx_drm_ioctls, i32 0, ptr @imx_drm_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@imx_drm_mode_config_funcs = internal constant %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @imx_drm_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, align 4
@imx_drm_mode_config_helpers = internal constant %struct.drm_mode_config_helper_funcs { ptr @imx_drm_atomic_commit_tail, ptr null }, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Invalid legacyfb_depth.  Defaulting to 16bpp\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"i.MX DRM graphics\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"20120507\00", align 1
@imx_drm_ioctls = internal constant [0 x %struct.drm_ioctl_desc] zeroinitializer, align 4
@imx_drm_driver_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"include/drm/drm_atomic_helper.h\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_legacyfb_depthtype277, ptr @__UNIQUE_ID_license280, ptr @__ksymtab_imx_drm_connector_destroy, ptr @__ksymtab_imx_drm_encoder_parse_of, ptr @__param_legacyfb_depth], section "llvm.metadata"

@__mod_of__imx_drm_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @imx_drm_dt_ids

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx_drm_connector_destroy(ptr noundef %0) #0 {
  tail call void @drm_connector_unregister(ptr noundef %0) #5
  tail call void @drm_connector_cleanup(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @imx_drm_encoder_parse_of(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = tail call i32 @drm_of_find_possible_crtcs(ptr noundef %0, ptr noundef %2) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 6
  store i32 %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 7
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 0, %6 ], [ -517, %3 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_possible_crtcs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_drm_platform_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @drm_of_component_probe(ptr noundef %2, ptr noundef nonnull @compare_of, ptr noundef nonnull @imx_drm_ops) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 @dma_set_coherent_mask(ptr noundef %2, i64 noundef 4294967295) #5
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %3, %1 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_drm_platform_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %2, ptr noundef nonnull @imx_drm_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_component_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(15) @.str.1)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ipu_client_platformdata, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br label %23

14:                                               ; preds = %2
  %15 = tail call zeroext i1 @of_node_name_eq(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = tail call ptr @of_get_parent(ptr noundef %1) #5
  tail call void @of_node_put(ptr noundef %17) #5
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %1, %14 ]
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, %19
  br label %23

23:                                               ; preds = %18, %8
  %24 = phi i1 [ %13, %8 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_drm_bind(ptr noundef %0) #0 {
  %2 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @imx_drm_driver, ptr noundef %0) #5
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = ptrtoint ptr %2 to i32
  br label %36

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 23
  store i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 24
  store i32 1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 25
  store i32 4096, ptr %9, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 26
  store i32 4096, ptr %10, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 27
  store ptr @imx_drm_mode_config_funcs, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 103
  store ptr @imx_drm_mode_config_helpers, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 98
  store i8 1, ptr %13, align 1
  %14 = tail call i32 @drmm_mode_config_init(ptr noundef %2) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %6
  %17 = tail call i32 @drm_vblank_init(ptr noundef %2, i32 noundef 4) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %2, ptr %20, align 8
  %21 = tail call i32 @component_bind_all(ptr noundef %0, ptr noundef %2) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  tail call void @drm_mode_config_reset(ptr noundef %2) #5
  %24 = load i32, ptr @legacyfb_depth, align 4
  switch i32 %24, label %25 [
    i32 32, label %26
    i32 16, label %26
  ]

25:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.3) #6
  store i32 16, ptr @legacyfb_depth, align 4
  br label %26

26:                                               ; preds = %25, %23, %23
  tail call void @drm_kms_helper_poll_init(ptr noundef %2) #5
  %27 = tail call i32 @drm_dev_register(ptr noundef %2, i32 noundef 0) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, ptr @legacyfb_depth, align 4
  tail call void @drm_fbdev_generic_setup(ptr noundef %2, i32 noundef %30) #5
  br label %36

31:                                               ; preds = %26
  tail call void @drm_kms_helper_poll_fini(ptr noundef %2) #5
  %32 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void @component_unbind_all(ptr noundef %33, ptr noundef %2) #5
  br label %34

34:                                               ; preds = %31, %19, %16, %6
  %35 = phi i32 [ %14, %6 ], [ %17, %16 ], [ %21, %19 ], [ %27, %31 ]
  tail call void @drm_dev_put(ptr noundef %2) #5
  br label %36

36:                                               ; preds = %34, %29, %4
  %37 = phi i32 [ %5, %4 ], [ %35, %34 ], [ 0, %29 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_drm_unbind(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @drm_dev_unregister(ptr noundef %3) #5
  tail call void @drm_kms_helper_poll_fini(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @component_unbind_all(ptr noundef %5, ptr noundef %3) #5
  tail call void @drm_dev_put(ptr noundef %3) #5
  store ptr null, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_drm_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 7
  %7 = and i32 %6, -8
  store i32 %7, ptr %4, align 4
  %8 = tail call i32 @drm_gem_cma_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 %5, ptr %4, align 4
  br label %11

11:                                               ; preds = %10, %3
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_drm_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @drm_atomic_helper_check(ptr noundef %0, ptr noundef %1) #5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call i32 @drm_atomic_helper_check_modeset(ptr noundef %0, ptr noundef %1) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 @ipu_planes_assign_pre(ptr noundef %0, ptr noundef %1) #5
  br label %10

10:                                               ; preds = %8, %5, %2
  %11 = phi i32 [ %3, %2 ], [ %6, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_modeset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_planes_assign_pre(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_drm_atomic_commit_tail(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %3, ptr noundef %0) #5
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %3, ptr noundef %0, i32 noundef 3) #5
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %3, ptr noundef %0) #5
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %71

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 3
  br label %10

10:                                               ; preds = %43, %8
  %11 = phi ptr [ %4, %8 ], [ %44, %43 ]
  %12 = phi i32 [ 0, %8 ], [ %46, %43 ]
  %13 = phi i1 [ false, %8 ], [ %45, %43 ]
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr %struct.__drm_planes_state, ptr %14, i32 %12
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %10
  %19 = getelementptr %struct.__drm_planes_state, ptr %14, i32 %12, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.__drm_planes_state, ptr %14, i32 %12, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.drm_plane_state, ptr %22, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %25, label %29, label %30

29:                                               ; preds = %18
  br i1 %28, label %32, label %31

30:                                               ; preds = %18
  br i1 %28, label %31, label %32, !prof !8

31:                                               ; preds = %30, %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 221, i32 noundef 9, ptr noundef null) #5
  br label %32

32:                                               ; preds = %31, %30, %29
  %33 = getelementptr inbounds %struct.drm_plane_state, ptr %20, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %23, align 4
  %38 = icmp eq ptr %37, null
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ false, %32 ], [ %38, %36 ]
  %41 = select i1 %40, i1 true, i1 %13
  %42 = load ptr, ptr %2, align 4
  br label %43

43:                                               ; preds = %39, %10
  %44 = phi ptr [ %11, %10 ], [ %42, %39 ]
  %45 = phi i1 [ %13, %10 ], [ %41, %39 ]
  %46 = add nuw nsw i32 %12, 1
  %47 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 30, i32 17
  %48 = load i32, ptr %47, align 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %10, label %50

50:                                               ; preds = %43
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %3, ptr noundef %0) #5
  br i1 %45, label %51, label %72

51:                                               ; preds = %50
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 30, i32 17
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %65, %51
  %57 = phi ptr [ %66, %65 ], [ %52, %51 ]
  %58 = phi i32 [ %67, %65 ], [ 0, %51 ]
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr %struct.__drm_planes_state, ptr %59, i32 %58
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  tail call void @ipu_plane_disable_deferred(ptr noundef nonnull %61) #5
  %64 = load ptr, ptr %2, align 4
  br label %65

65:                                               ; preds = %63, %56
  %66 = phi ptr [ %64, %63 ], [ %57, %56 ]
  %67 = add nuw nsw i32 %58, 1
  %68 = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 17
  %69 = load i32, ptr %68, align 4
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %56, label %72

71:                                               ; preds = %1
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %3, ptr noundef %0) #5
  br label %72

72:                                               ; preds = %71, %65, %51, %50
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_flip_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_plane_disable_deferred(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_drm_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %3) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_drm_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %3) #5
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
