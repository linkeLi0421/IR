; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_tvout.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_tvout.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sti_tvout = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.sti_tvout_encoder = type { %struct.drm_encoder, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
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
%struct.anon.73 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }

@tvout_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-tvout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [10 x i8] c"sti-tvout\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@sti_tvout_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @sti_tvout_probe, ptr @sti_tvout_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @tvout_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_author264 = internal constant [52 x i8] c"author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description265 = internal constant [46 x i8] c"description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\016[drm] %s\0A\00", align 1
@__func__.sti_tvout_probe = private unnamed_addr constant [16 x i8] c"sti_tvout_probe\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tvout-reg\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid glue resource\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"tvout\00", align 1
@sti_tvout_ops = internal constant %struct.component_ops { ptr @sti_tvout_bind, ptr @sti_tvout_unbind }, align 4
@sti_tvout_encoder_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @sti_tvout_encoder_destroy, ptr @sti_tvout_late_register, ptr @sti_tvout_early_unregister }, align 4
@sti_hdmi_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr @sti_tvout_encoder_dpms, ptr null, ptr null, ptr null, ptr @sti_hdmi_encoder_enable, ptr @sti_tvout_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @sti_hdmi_encoder_disable, ptr null, ptr null }, align 4
@tvout_debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.4, ptr @tvout_dbg_show, i32 0, ptr null }], align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"TVOUT: (vaddr = 0x%p)\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"\0A\0A  HDMI encoder: \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"connected to %s path\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\0A  %-25s 0x%08X\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"TVO_HDMI_SYNC_SEL\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"TVO_VIP_HDMI\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\0A\0A  DVO encoder: \00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"TVO_DVO_SYNC_SEL\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"TVO_DVO_CONFIG\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"TVO_VIP_DVO\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"\0A\0A  HDA encoder: \00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"TVO_HD_SYNC_SEL\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"TVO_HD_DAC_CFG_OFF\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"TVO_VIP_HDF\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"\0A\0A  main path configuration\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"TVO_CSC_MAIN_M0\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"TVO_CSC_MAIN_M1\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"TVO_CSC_MAIN_M2\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"TVO_CSC_MAIN_M3\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"TVO_CSC_MAIN_M4\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"TVO_CSC_MAIN_M5\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"TVO_CSC_MAIN_M6\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"TVO_CSC_MAIN_M7\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"TVO_MAIN_IN_VID_FORMAT\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"\0A\0A  auxiliary path configuration\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"TVO_CSC_AUX_M0\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"TVO_CSC_AUX_M2\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"TVO_CSC_AUX_M3\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"TVO_CSC_AUX_M4\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"TVO_CSC_AUX_M5\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"TVO_CSC_AUX_M6\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"TVO_CSC_AUX_M7\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"TVO_AUX_IN_VID_FORMAT\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"Y_G\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Cb_B\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Cr_R\00", align 1
@__const.tvout_dbg_vip.reorder = private unnamed_addr constant [3 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4
@.str.44 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"EAV/SAV\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Limited range RGB/Y\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"Limited range Cb/Cr\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"decided by register\00", align 1
@__const.tvout_dbg_vip.clipping = private unnamed_addr constant [5 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], align 4
@.str.49 = private unnamed_addr constant [6 x i8] c"8-bit\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"10-bit\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"12-bit\00", align 1
@__const.tvout_dbg_vip.round = private unnamed_addr constant [3 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51], align 4
@.str.52 = private unnamed_addr constant [28 x i8] c"Main (color matrix enabled)\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Main (color matrix by-passed)\00", align 1
@.str.54 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Aux (color matrix enabled)\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"Aux (color matrix by-passed)\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"Force value\00", align 1
@__const.tvout_dbg_vip.input_sel = private unnamed_addr constant [16 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.54, ptr @.str.54, ptr @.str.54, ptr @.str.54, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.54, ptr @.str.54, ptr @.str.54, ptr @.str.54, ptr @.str.54, ptr @.str.57], align 4
@.str.58 = private unnamed_addr constant [28 x i8] c"%-24s %s->%s %s->%s %s->%s\0A\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"Reorder:\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"\09\09\09\09\09\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"%-24s %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"Clipping:\00", align 1
@.str.63 = private unnamed_addr constant [46 x i8] c"%-24s input data rounded to %s per component\0A\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"Round:\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"%-24s %s\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"Input selection:\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"\09%-24s %s\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"HD DAC:\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"main vip for hdmi\0A\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"aux vip for hdmi\0A\00", align 1
@sti_hda_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr @sti_tvout_encoder_dpms, ptr null, ptr null, ptr null, ptr @sti_hda_encoder_enable, ptr @sti_tvout_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @sti_hda_encoder_disable, ptr null, ptr null }, align 4
@.str.72 = private unnamed_addr constant [18 x i8] c"main vip for HDF\0A\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"aux vip for HDF\0A\00", align 1
@sti_dvo_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr @sti_tvout_encoder_dpms, ptr null, ptr null, ptr null, ptr null, ptr @sti_tvout_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @sti_dvo_encoder_disable, ptr @sti_dvo_encoder_enable, ptr null }, align 4
@.str.74 = private unnamed_addr constant [18 x i8] c"main vip for DVO\0A\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"aux vip for DVO\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author264, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_license266], section "llvm.metadata"

@__mod_of__tvout_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @tvout_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_tvout_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sti_tvout_probe) #5
  %6 = icmp eq ptr %4, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 32, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  store ptr %2, ptr %8, align 4
  %11 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #6
  br label %32

14:                                               ; preds = %10
  %15 = load i32, ptr %11, align 4
  %16 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 1, %15
  %19 = add i32 %18, %17
  %20 = tail call ptr @devm_ioremap(ptr noundef %2, i32 noundef %15, i32 noundef %19) #6
  %21 = getelementptr inbounds %struct.sti_tvout, ptr %8, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %14
  %24 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %25 = getelementptr inbounds %struct.sti_tvout, ptr %8, i32 0, i32 3
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @reset_control_deassert(ptr noundef %24) #6
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %30, align 8
  %31 = tail call i32 @component_add(ptr noundef %2, ptr noundef nonnull @sti_tvout_ops) #6
  br label %32

32:                                               ; preds = %29, %14, %13, %7, %1
  %33 = phi i32 [ %31, %29 ], [ -12, %13 ], [ -19, %1 ], [ -12, %7 ], [ -12, %14 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_tvout_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sti_tvout_ops) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_tvout_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sti_tvout, ptr %5, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = load ptr, ptr %5, align 4
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 76, i32 noundef 3520) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %8, i32 0, i32 1
  store ptr %5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 6
  store i32 3, ptr %12, align 4
  %13 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull @sti_tvout_encoder_funcs, i32 noundef 2, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 11
  store ptr @sti_hdmi_encoder_helper_funcs, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %3
  %16 = getelementptr inbounds %struct.sti_tvout, ptr %5, i32 0, i32 4
  store ptr %8, ptr %16, align 4
  %17 = load ptr, ptr %5, align 4
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %17, i32 noundef 76, i32 noundef 3520) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %18, i32 0, i32 1
  store ptr %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.drm_encoder, ptr %18, i32 0, i32 6
  store i32 3, ptr %22, align 4
  %23 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %2, ptr noundef nonnull %18, ptr noundef nonnull @sti_tvout_encoder_funcs, i32 noundef 1, ptr noundef null) #6
  %24 = getelementptr inbounds %struct.drm_encoder, ptr %18, i32 0, i32 11
  store ptr @sti_hda_encoder_helper_funcs, ptr %24, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = getelementptr inbounds %struct.sti_tvout, ptr %5, i32 0, i32 5
  store ptr %18, ptr %26, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = tail call noalias ptr @devm_kmalloc(ptr noundef %27, i32 noundef 76, i32 noundef 3520) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %28, i32 0, i32 1
  store ptr %5, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drm_encoder, ptr %28, i32 0, i32 6
  store i32 3, ptr %32, align 4
  %33 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %2, ptr noundef nonnull %28, ptr noundef nonnull @sti_tvout_encoder_funcs, i32 noundef 3, ptr noundef null) #6
  %34 = getelementptr inbounds %struct.drm_encoder, ptr %28, i32 0, i32 11
  store ptr @sti_dvo_encoder_helper_funcs, ptr %34, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = getelementptr inbounds %struct.sti_tvout, ptr %5, i32 0, i32 6
  store ptr %28, ptr %36, align 4
  %37 = load ptr, ptr %16, align 4
  %38 = getelementptr inbounds %struct.drm_encoder, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = shl nuw i32 1, %39
  %41 = load ptr, ptr %26, align 4
  %42 = getelementptr inbounds %struct.drm_encoder, ptr %41, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = shl nuw i32 1, %43
  %45 = or i32 %44, %40
  %46 = getelementptr inbounds %struct.drm_encoder, ptr %28, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = shl nuw i32 1, %47
  %49 = or i32 %45, %48
  %50 = getelementptr inbounds %struct.drm_encoder, ptr %37, i32 0, i32 7
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %16, align 4
  %52 = getelementptr inbounds %struct.drm_encoder, ptr %51, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = shl nuw i32 1, %53
  %55 = load ptr, ptr %26, align 4
  %56 = getelementptr inbounds %struct.drm_encoder, ptr %55, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = shl nuw i32 1, %57
  %59 = or i32 %58, %54
  %60 = load ptr, ptr %36, align 4
  %61 = getelementptr inbounds %struct.drm_encoder, ptr %60, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = shl nuw i32 1, %62
  %64 = or i32 %59, %63
  %65 = getelementptr inbounds %struct.drm_encoder, ptr %55, i32 0, i32 7
  store i32 %64, ptr %65, align 4
  %66 = load ptr, ptr %16, align 4
  %67 = getelementptr inbounds %struct.drm_encoder, ptr %66, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = shl nuw i32 1, %68
  %70 = load ptr, ptr %26, align 4
  %71 = getelementptr inbounds %struct.drm_encoder, ptr %70, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = shl nuw i32 1, %72
  %74 = or i32 %73, %69
  %75 = load ptr, ptr %36, align 4
  %76 = getelementptr inbounds %struct.drm_encoder, ptr %75, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = shl nuw i32 1, %77
  %79 = or i32 %74, %78
  %80 = getelementptr inbounds %struct.drm_encoder, ptr %75, i32 0, i32 7
  store i32 %79, ptr %80, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_tvout_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sti_tvout, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %7) #6
  br label %10

10:                                               ; preds = %9, %3
  store ptr null, ptr %6, align 4
  %11 = getelementptr inbounds %struct.sti_tvout, ptr %5, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %12) #6
  br label %15

15:                                               ; preds = %14, %10
  store ptr null, ptr %11, align 4
  %16 = getelementptr inbounds %struct.sti_tvout, ptr %5, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %17) #6
  br label %20

20:                                               ; preds = %19, %15
  store ptr null, ptr %16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_tvout_encoder_destroy(ptr noundef %0) #0 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_tvout_late_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  store ptr %3, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @tvout_debugfs_files, i32 0, i32 0, i32 3), align 4
  %11 = getelementptr inbounds %struct.drm_minor, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @tvout_debugfs_files, i32 noundef 1, ptr noundef %12, ptr noundef %10) #6
  store i8 1, ptr %4, align 4
  br label %13

13:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sti_tvout_early_unregister(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8 0, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tvout_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sti_tvout, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %10) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.6) #6
  %11 = getelementptr inbounds %struct.sti_tvout, ptr %8, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_encoder, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = tail call zeroext i1 @sti_crtc_is_main(ptr noundef nonnull %14) #6
  %18 = select i1 %17, ptr @.str.8, ptr @.str.9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %18) #6
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 1304
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %21) #6
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 1280
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %24) #6
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 1280
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  tail call fastcc void @tvout_dbg_vip(ptr noundef %0, i32 noundef %27)
  br label %29

28:                                               ; preds = %2
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #6
  br label %29

29:                                               ; preds = %28, %16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.14) #6
  %30 = getelementptr inbounds %struct.sti_tvout, ptr %8, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_encoder, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %50, label %35

35:                                               ; preds = %29
  %36 = tail call zeroext i1 @sti_crtc_is_main(ptr noundef nonnull %33) #6
  %37 = select i1 %36, ptr @.str.8, ptr @.str.9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %37) #6
  %38 = load ptr, ptr %9, align 4
  %39 = getelementptr i8, ptr %38, i32 1560
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15, i32 noundef %40) #6
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr i8, ptr %41, i32 1568
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.16, i32 noundef %43) #6
  %44 = load ptr, ptr %9, align 4
  %45 = getelementptr i8, ptr %44, i32 1536
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, i32 noundef %46) #6
  %47 = load ptr, ptr %9, align 4
  %48 = getelementptr i8, ptr %47, i32 1536
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  tail call fastcc void @tvout_dbg_vip(ptr noundef %0, i32 noundef %49)
  br label %51

50:                                               ; preds = %29
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #6
  br label %51

51:                                               ; preds = %50, %35
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.18) #6
  %52 = getelementptr inbounds %struct.sti_tvout, ptr %8, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.drm_encoder, ptr %53, i32 0, i32 8
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %78, label %57

57:                                               ; preds = %51
  %58 = tail call zeroext i1 @sti_crtc_is_main(ptr noundef nonnull %55) #6
  %59 = select i1 %58, ptr @.str.8, ptr @.str.9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %59) #6
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr i8, ptr %60, i32 1048
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.19, i32 noundef %62) #6
  %63 = load ptr, ptr %9, align 4
  %64 = getelementptr i8, ptr %63, i32 1056
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.20, i32 noundef %65) #6
  %66 = load ptr, ptr %9, align 4
  %67 = getelementptr i8, ptr %66, i32 1056
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, ptr @.str.69, ptr @.str.13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef nonnull %71) #6
  %72 = load ptr, ptr %9, align 4
  %73 = getelementptr i8, ptr %72, i32 1024
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.21, i32 noundef %74) #6
  %75 = load ptr, ptr %9, align 4
  %76 = getelementptr i8, ptr %75, i32 1024
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  tail call fastcc void @tvout_dbg_vip(ptr noundef %0, i32 noundef %77)
  br label %79

78:                                               ; preds = %51
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.13) #6
  br label %79

79:                                               ; preds = %78, %57
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.22) #6
  %80 = load ptr, ptr %9, align 4
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !22
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.23, i32 noundef %81) #6
  %82 = load ptr, ptr %9, align 4
  %83 = getelementptr i8, ptr %82, i32 4
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.24, i32 noundef %84) #6
  %85 = load ptr, ptr %9, align 4
  %86 = getelementptr i8, ptr %85, i32 8
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.25, i32 noundef %87) #6
  %88 = load ptr, ptr %9, align 4
  %89 = getelementptr i8, ptr %88, i32 12
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.26, i32 noundef %90) #6
  %91 = load ptr, ptr %9, align 4
  %92 = getelementptr i8, ptr %91, i32 16
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.27, i32 noundef %93) #6
  %94 = load ptr, ptr %9, align 4
  %95 = getelementptr i8, ptr %94, i32 20
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.28, i32 noundef %96) #6
  %97 = load ptr, ptr %9, align 4
  %98 = getelementptr i8, ptr %97, i32 24
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.29, i32 noundef %99) #6
  %100 = load ptr, ptr %9, align 4
  %101 = getelementptr i8, ptr %100, i32 28
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !29
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.30, i32 noundef %102) #6
  %103 = load ptr, ptr %9, align 4
  %104 = getelementptr i8, ptr %103, i32 48
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.31, i32 noundef %105) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #6
  %106 = load ptr, ptr %9, align 4
  %107 = getelementptr i8, ptr %106, i32 256
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.33, i32 noundef %108) #6
  %109 = load ptr, ptr %9, align 4
  %110 = getelementptr i8, ptr %109, i32 264
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.34, i32 noundef %111) #6
  %112 = load ptr, ptr %9, align 4
  %113 = getelementptr i8, ptr %112, i32 268
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.35, i32 noundef %114) #6
  %115 = load ptr, ptr %9, align 4
  %116 = getelementptr i8, ptr %115, i32 272
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.36, i32 noundef %117) #6
  %118 = load ptr, ptr %9, align 4
  %119 = getelementptr i8, ptr %118, i32 276
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !35
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.37, i32 noundef %120) #6
  %121 = load ptr, ptr %9, align 4
  %122 = getelementptr i8, ptr %121, i32 280
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !36
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.38, i32 noundef %123) #6
  %124 = load ptr, ptr %9, align 4
  %125 = getelementptr i8, ptr %124, i32 284
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !37
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.39, i32 noundef %126) #6
  %127 = load ptr, ptr %9, align 4
  %128 = getelementptr i8, ptr %127, i32 304
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !38
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.40, i32 noundef %129) #6
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sti_crtc_is_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tvout_dbg_vip(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 9) #6
  %3 = lshr i32 %1, 24
  %4 = and i32 %3, 3
  %5 = lshr i32 %1, 20
  %6 = and i32 %5, 3
  %7 = lshr i32 %1, 16
  %8 = and i32 %7, 3
  %9 = getelementptr [3 x ptr], ptr @__const.tvout_dbg_vip.reorder, i32 0, i32 %4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr [3 x ptr], ptr @__const.tvout_dbg_vip.reorder, i32 0, i32 %6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr [3 x ptr], ptr @__const.tvout_dbg_vip.reorder, i32 0, i32 %8
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef %10, ptr noundef nonnull @.str.43, ptr noundef %12, ptr noundef nonnull @.str.41, ptr noundef %14, ptr noundef nonnull @.str.42) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.60) #6
  %15 = lshr i32 %1, 8
  %16 = and i32 %15, 7
  %17 = getelementptr [5 x ptr], ptr @__const.tvout_dbg_vip.clipping, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef %18) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.60) #6
  %19 = lshr i32 %1, 4
  %20 = and i32 %19, 3
  %21 = getelementptr [3 x ptr], ptr @__const.tvout_dbg_vip.round, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef %22) #6
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.60) #6
  %23 = and i32 %1, 15
  %24 = getelementptr [16 x ptr], ptr @__const.tvout_dbg_vip.input_sel, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef %25) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sti_tvout_encoder_dpms(ptr nocapture noundef %0, i32 noundef %1) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hdmi_encoder_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 12
  tail call fastcc void @tvout_preformatter_set_matrix(ptr noundef %3, ptr noundef %6)
  %7 = load ptr, ptr %4, align 4
  %8 = tail call zeroext i1 @sti_crtc_is_main(ptr noundef %7) #6
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.70) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %10 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #6, !srcloc !40
  br label %17

13:                                               ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.71) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %14 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 1304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 17) #6, !srcloc !40
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ 8, %13 ], [ 0, %9 ]
  %19 = phi i32 [ 304, %13 ], [ 48, %9 ]
  %20 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 1280
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %24 = and i32 %23, -53673985
  %25 = or i32 %24, 33619968
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr i8, ptr %26, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !40
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr i8, ptr %28, i32 1280
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %31 = and i32 %30, -1793
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %20, align 4
  %33 = getelementptr i8, ptr %32, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !40
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr i8, ptr %34, i32 1280
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %37 = and i32 %36, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %38 = load ptr, ptr %20, align 4
  %39 = getelementptr i8, ptr %38, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !40
  %40 = load ptr, ptr %20, align 4
  %41 = getelementptr i8, ptr %40, i32 %19
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %43 = or i32 %42, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %44 = load ptr, ptr %20, align 4
  %45 = getelementptr i8, ptr %44, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !40
  %46 = load ptr, ptr %20, align 4
  %47 = getelementptr i8, ptr %46, i32 1280
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %49 = and i32 %48, -16
  %50 = or i32 %49, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %51 = load ptr, ptr %20, align 4
  %52 = getelementptr i8, ptr %51, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #6, !srcloc !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sti_tvout_encoder_mode_set(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hdmi_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tvout_preformatter_set_matrix(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %4 = load i16, ptr %3, align 2
  %5 = icmp ugt i16 %4, 719
  %6 = getelementptr inbounds %struct.sti_tvout, ptr %0, i32 0, i32 2
  %7 = select i1 %5, i32 -124712913, i32 -114882514
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %8 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %7) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #6, !srcloc !40
  %11 = select i1 %5, i32 57147200, i32 80346795
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #6, !srcloc !40
  %16 = select i1 %5, i32 19401585, i32 30607716
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #6, !srcloc !40
  %21 = select i1 %5, i32 -105775584, i32 -90833603
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr i8, ptr %24, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %21) #6, !srcloc !40
  %26 = select i1 %5, i32 2095, i32 2094
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr i8, ptr %29, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %26) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %31 = load ptr, ptr %6, align 4
  %32 = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 8192) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr i8, ptr %33, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 8192) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 8192) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr i8, ptr %37, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 8192) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr i8, ptr %39, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #6, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hda_encoder_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 12
  tail call fastcc void @tvout_preformatter_set_matrix(ptr noundef %3, ptr noundef %6)
  %7 = load ptr, ptr %4, align 4
  %8 = tail call zeroext i1 @sti_crtc_is_main(ptr noundef %7) #6
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.72) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %10 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 515) #6, !srcloc !40
  br label %17

13:                                               ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.73) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %14 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 4627) #6, !srcloc !40
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ 9, %13 ], [ 1, %9 ]
  %19 = phi i32 [ 304, %13 ], [ 48, %9 ]
  %20 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 1024
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %24 = and i32 %23, -53673985
  %25 = or i32 %24, 33619968
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr i8, ptr %26, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !40
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr i8, ptr %28, i32 1024
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %31 = and i32 %30, -1793
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %20, align 4
  %33 = getelementptr i8, ptr %32, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !40
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr i8, ptr %34, i32 1024
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %37 = and i32 %36, -49
  %38 = or i32 %37, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %39 = load ptr, ptr %20, align 4
  %40 = getelementptr i8, ptr %39, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !40
  %41 = load ptr, ptr %20, align 4
  %42 = getelementptr i8, ptr %41, i32 %19
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %44 = or i32 %43, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %45 = load ptr, ptr %20, align 4
  %46 = getelementptr i8, ptr %45, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #6, !srcloc !40
  %47 = load ptr, ptr %20, align 4
  %48 = getelementptr i8, ptr %47, i32 1024
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %50 = and i32 %49, -16
  %51 = or i32 %50, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %52 = load ptr, ptr %20, align 4
  %53 = getelementptr i8, ptr %52, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %54 = load ptr, ptr %20, align 4
  %55 = getelementptr i8, ptr %54, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 0) #6, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_hda_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #6, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_dvo_encoder_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_dvo_encoder_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_tvout_encoder, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 12
  tail call fastcc void @tvout_preformatter_set_matrix(ptr noundef %3, ptr noundef %6)
  %7 = load ptr, ptr %4, align 4
  %8 = tail call zeroext i1 @sti_crtc_is_main(ptr noundef %7) #6
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.74) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %10 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 263172) #6, !srcloc !40
  br label %17

13:                                               ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.75) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %14 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1315860) #6, !srcloc !40
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ 8, %13 ], [ 0, %9 ]
  %19 = phi i32 [ 304, %13 ], [ 48, %9 ]
  %20 = getelementptr inbounds %struct.sti_tvout, ptr %3, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 1536
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %24 = and i32 %23, -53673985
  %25 = or i32 %24, 33619968
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr i8, ptr %26, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !40
  %28 = load ptr, ptr %20, align 4
  %29 = getelementptr i8, ptr %28, i32 1536
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %31 = and i32 %30, -1793
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %32 = load ptr, ptr %20, align 4
  %33 = getelementptr i8, ptr %32, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !40
  %34 = load ptr, ptr %20, align 4
  %35 = getelementptr i8, ptr %34, i32 1536
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %37 = and i32 %36, -49
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %38 = load ptr, ptr %20, align 4
  %39 = getelementptr i8, ptr %38, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !40
  %40 = load ptr, ptr %20, align 4
  %41 = getelementptr i8, ptr %40, i32 %19
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %43 = or i32 %42, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %44 = load ptr, ptr %20, align 4
  %45 = getelementptr i8, ptr %44, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !40
  %46 = load ptr, ptr %20, align 4
  %47 = getelementptr i8, ptr %46, i32 1536
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !41
  %49 = and i32 %48, -16
  %50 = or i32 %49, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %51 = load ptr, ptr %20, align 4
  %52 = getelementptr i8, ptr %51, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #6, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }

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
!9 = !{i64 1746610}
!10 = !{i64 2155142914}
!11 = !{i64 2155143356}
!12 = !{i64 2155143702}
!13 = !{i64 2155144148}
!14 = !{i64 2155144592}
!15 = !{i64 2155145033}
!16 = !{i64 2155145379}
!17 = !{i64 2155145824}
!18 = !{i64 2155146272}
!19 = !{i64 2155146618}
!20 = !{i64 2155147059}
!21 = !{i64 2155147405}
!22 = !{i64 2155147850}
!23 = !{i64 2155148295}
!24 = !{i64 2155148740}
!25 = !{i64 2155149185}
!26 = !{i64 2155149630}
!27 = !{i64 2155150075}
!28 = !{i64 2155150520}
!29 = !{i64 2155150965}
!30 = !{i64 2155151417}
!31 = !{i64 2155151861}
!32 = !{i64 2155152305}
!33 = !{i64 2155152749}
!34 = !{i64 2155153193}
!35 = !{i64 2155153637}
!36 = !{i64 2155154081}
!37 = !{i64 2155154525}
!38 = !{i64 2155154976}
!39 = !{i64 2155139787}
!40 = !{i64 1746192}
!41 = !{i64 2155139599}
