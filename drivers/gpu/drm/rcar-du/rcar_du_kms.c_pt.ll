; ModuleID = '/llk/IR/drivers/gpu/drm/rcar-du/rcar_du_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_kms.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcar_du_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.78, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.74 = type { i32, ptr }
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.78 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.anon.79 = type { ptr, i32 }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.rcar_du_crtc_state = type { %struct.drm_crtc_state, %struct.vsp1_du_crc_config, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.vsp1_du_crc_config = type { i32, i32 }

@rcar_du_format_infos = internal constant [41 x %struct.rcar_du_format_info] [%struct.rcar_du_format_info { i32 909199186, i32 1346520914, i32 16, i32 1, i32 1, i32 1, i32 0 }, %struct.rcar_du_format_info { i32 892424769, i32 892424769, i32 16, i32 1, i32 1, i32 4098, i32 0 }, %struct.rcar_du_format_info { i32 892424792, i32 892424792, i32 16, i32 1, i32 0, i32 4098, i32 0 }, %struct.rcar_du_format_info { i32 875713112, i32 875713112, i32 32, i32 1, i32 1, i32 1, i32 2 }, %struct.rcar_du_format_info { i32 875713089, i32 875713089, i32 32, i32 1, i32 1, i32 4097, i32 1 }, %struct.rcar_du_format_info { i32 1498831189, i32 1498831189, i32 16, i32 1, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 1448695129, i32 1448695129, i32 16, i32 1, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 842094158, i32 842091854, i32 12, i32 2, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 825382478, i32 825380174, i32 12, i32 2, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 909203022, i32 909200718, i32 16, i32 2, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 943867730, i32 826427218, i32 8, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842093121, i32 842093121, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842093144, i32 842093144, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842088786, i32 842088786, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842094674, i32 842094674, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842089025, i32 842089025, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842089048, i32 842089048, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842088770, i32 842088775, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842094658, i32 842094658, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892420434, i32 892420434, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892426322, i32 892426322, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892420673, i32 892420673, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892420696, i32 892420696, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892420418, i32 892420418, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892426306, i32 892426306, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875710274, i32 859981650, i32 24, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875710290, i32 861030210, i32 24, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875708754, i32 875708754, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875714642, i32 875714642, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875708993, i32 875708993, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875709016, i32 875709016, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875708738, i32 875708738, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875714626, i32 875714626, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 1431918169, i32 1431918169, i32 16, i32 1, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 825644622, i32 825642318, i32 16, i32 2, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842093913, i32 842091865, i32 12, i32 3, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842094169, i32 825380185, i32 12, i32 3, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 909202777, i32 909200729, i32 16, i32 3, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 909203033, i32 825642329, i32 16, i32 3, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875713881, i32 875711833, i32 24, i32 3, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875714137, i32 842288473, i32 24, i32 3, i32 1, i32 0, i32 0 }], align 4
@rcar_du_gem_funcs = internal constant %struct.drm_gem_object_funcs { ptr @drm_gem_cma_object_free, ptr null, ptr null, ptr @drm_gem_cma_object_print_info, ptr null, ptr null, ptr null, ptr @drm_gem_cma_object_get_sg_table, ptr @drm_gem_cma_object_vmap, ptr null, ptr @drm_gem_cma_object_mmap, ptr @drm_gem_cma_vm_ops }, align 4
@rcar_du_modeset_init.mmio_offsets = internal unnamed_addr constant [2 x i32] [i32 0, i32 262144], align 4
@.str = private unnamed_addr constant [24 x i8] c"rcar_du_modeset_cleanup\00", align 1
@rcar_du_mode_config_funcs = internal constant %struct.drm_mode_config_funcs { ptr @rcar_du_fb_create, ptr null, ptr null, ptr null, ptr @rcar_du_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, align 4
@rcar_du_mode_config_helper = internal constant %struct.drm_mode_config_helper_funcs { ptr @rcar_du_atomic_commit_tail, ptr null }, align 4
@rcar_du_modeset_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&rgrp->lock\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"error: no encoder could be initialized\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@drm_gem_cma_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"colorkey\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"renesas,vsps\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"vsps\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"renesas,cmms\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Invalid number of entries in 'renesas,cmms'\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Failed to parse 'renesas,cmms' property\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"No device found for CMM%u\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Failed to create device link to CMM%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"port %u references unexisting output, skipping\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"failed to initialize encoder %pOF on output %s (%d), skipping\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local ptr @rcar_du_format_info(i32 noundef %0) local_unnamed_addr #0 {
  br label %5

2:                                                ; preds = %5
  %3 = add nuw nsw i32 %6, 1
  %4 = icmp eq i32 %3, 41
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %1
  %6 = phi i32 [ 0, %1 ], [ %3, %2 ]
  %7 = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %5, %2
  %11 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rcar_du_gem_prime_import_sg_table(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_du_device_info, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call ptr @drm_gem_cma_prime_import_sg_table(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %28

12:                                               ; preds = %3
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 224) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_gem_object, ptr %14, i32 0, i32 11
  store ptr @rcar_du_gem_funcs, ptr %17, align 8
  %18 = load ptr, ptr %1, align 4
  %19 = load i32, ptr %18, align 4
  tail call void @drm_gem_private_object_init(ptr noundef %0, ptr noundef nonnull %14, i32 noundef %19) #9
  %20 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %14, i32 0, i32 4
  store i8 0, ptr %20, align 4
  %21 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef nonnull %14) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  tail call void @drm_gem_object_release(ptr noundef nonnull %14) #9
  tail call void @kfree(ptr noundef nonnull %14) #9
  %24 = inttoptr i32 %21 to ptr
  br label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %14, i32 0, i32 1
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %14, i32 0, i32 2
  store ptr %2, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %23, %12, %10
  %29 = phi ptr [ %24, %23 ], [ %14, %25 ], [ %11, %10 ], [ inttoptr (i32 -12 to ptr), %12 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_du_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr i8, ptr %1, i32 -8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rcar_du_device_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %7, 1
  %15 = and i32 %14, 536870910
  %16 = select i1 %13, i32 %15, i32 128
  %17 = mul i32 %7, %5
  %18 = add i32 %17, 7
  %19 = lshr i32 %18, 3
  %20 = add nsw i32 %19, -1
  %21 = add nsw i32 %20, %16
  %22 = urem i32 %21, %16
  %23 = sub nsw i32 %21, %22
  %24 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 5
  store i32 %23, ptr %24, align 4
  %25 = tail call i32 @drm_gem_cma_dumb_create_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcar_du_modeset_init(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 3
  %4 = tail call i32 @drmm_mode_config_init(ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %199

6:                                                ; preds = %1
  %7 = tail call i32 @__drmm_add_action(ptr noundef %3, ptr noundef nonnull @rcar_du_modeset_cleanup, ptr noundef null, ptr noundef nonnull @.str) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %199

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 3, i32 30, i32 23
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 3, i32 30, i32 24
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 3, i32 30, i32 98
  store i8 1, ptr %12, align 1
  %13 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 3, i32 30, i32 27
  store ptr @rcar_du_mode_config_funcs, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 3, i32 30, i32 103
  store ptr @rcar_du_mode_config_helper, ptr %14, align 4
  %15 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, 3
  %19 = select i1 %18, i32 4095, i32 8190
  %20 = select i1 %18, i32 2047, i32 8190
  %21 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 3, i32 30, i32 25
  store i32 %19, ptr %21, align 4
  %22 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 3, i32 30, i32 26
  store i32 %20, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rcar_du_device_info, ptr %16, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @__sw_hweight8(i32 noundef %24) #9
  %26 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 5
  store i32 %25, ptr %26, align 8
  %27 = tail call ptr @drm_property_create_range(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.3, i64 noundef 0, i64 noundef 33554431) #9
  %28 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 10
  store ptr %27, ptr %28, align 8
  %29 = icmp eq ptr %27, null
  br i1 %29, label %199, label %30

30:                                               ; preds = %9
  %31 = load i32, ptr %26, align 8
  %32 = tail call i32 @drm_vblank_init(ptr noundef %3, i32 noundef %31) #9
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %199, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %26, align 8
  %36 = add i32 %35, 1
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %77, label %38

38:                                               ; preds = %34
  %39 = lshr i32 %36, 1
  br label %40

40:                                               ; preds = %74, %38
  %41 = phi i32 [ %75, %74 ], [ 0, %38 ]
  %42 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %41
  %43 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %41, i32 8
  tail call void @__mutex_init(ptr noundef %43, ptr noundef nonnull @.str.1, ptr noundef nonnull @rcar_du_modeset_init.__key) #9
  store ptr %0, ptr %42, align 8
  %44 = getelementptr [2 x i32], ptr @rcar_du_modeset_init.mmio_offsets, i32 0, i32 %41
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %41, i32 1
  store i32 %45, ptr %46, align 4
  %47 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %41, i32 2
  store i32 %41, ptr %47, align 8
  %48 = load ptr, ptr %15, align 4
  %49 = getelementptr inbounds %struct.rcar_du_device_info, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = shl nuw i32 %41, 1
  %52 = lshr i32 %50, %51
  %53 = and i32 %52, 3
  %54 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %41, i32 3
  store i32 %53, ptr %54, align 4
  %55 = tail call i32 @__sw_hweight8(i32 noundef %53) #9
  %56 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %41, i32 5
  store i32 %55, ptr %56, align 4
  %57 = icmp ugt i32 %55, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %40
  %59 = load ptr, ptr %15, align 4
  %60 = load i32, ptr %59, align 4
  %61 = icmp ugt i32 %60, 2
  %62 = select i1 %61, i32 4, i32 240
  br label %63

63:                                               ; preds = %58, %40
  %64 = phi i32 [ %62, %58 ], [ 0, %40 ]
  %65 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %41, i32 9
  store i32 %64, ptr %65, align 4
  %66 = load ptr, ptr %15, align 4
  %67 = getelementptr inbounds %struct.rcar_du_device_info, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = tail call i32 @rcar_du_planes_init(ptr noundef %42) #9
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %199, label %74

74:                                               ; preds = %71, %63
  %75 = add nuw nsw i32 %41, 1
  %76 = icmp eq i32 %75, %39
  br i1 %76, label %77, label %40

77:                                               ; preds = %74, %34
  %78 = load ptr, ptr %15, align 4
  %79 = getelementptr inbounds %struct.rcar_du_device_info, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = tail call fastcc i32 @rcar_du_vsps_init(ptr noundef %0)
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %199, label %86

86:                                               ; preds = %83, %77
  %87 = load ptr, ptr %0, align 8
  %88 = getelementptr inbounds %struct.device, ptr %87, i32 0, i32 25
  %89 = load ptr, ptr %88, align 8
  %90 = tail call i32 @of_property_count_elems_of_size(ptr noundef %89, ptr noundef nonnull @.str.6, i32 noundef 4) #9
  %91 = icmp eq i32 %90, -22
  br i1 %91, label %132, label %92

92:                                               ; preds = %86
  %93 = load i32, ptr %26, align 8
  %94 = icmp ugt i32 %90, %93
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = icmp eq i32 %90, 0
  br i1 %96, label %134, label %99

97:                                               ; preds = %92
  %98 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.7) #11
  br label %199

99:                                               ; preds = %129, %95
  %100 = phi i32 [ %130, %129 ], [ 0, %95 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #9, !annotation !8
  %101 = call i32 @__of_parse_phandle_with_args(ptr noundef %89, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef %100, ptr noundef nonnull %2) #9
  %102 = icmp ne i32 %101, 0
  %103 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  %104 = icmp eq ptr %103, null
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.8) #11
  br label %199

108:                                              ; preds = %99
  %109 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %103) #9
  br i1 %109, label %111, label %110

110:                                              ; preds = %108
  call void @of_node_put(ptr noundef nonnull %103) #9
  br label %129

111:                                              ; preds = %108
  %112 = call ptr @of_find_device_by_node(ptr noundef nonnull %103) #9
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.9, i32 noundef %100) #11
  call void @of_node_put(ptr noundef nonnull %103) #9
  br label %199

116:                                              ; preds = %111
  call void @of_node_put(ptr noundef nonnull %103) #9
  %117 = call i32 @rcar_cmm_init(ptr noundef nonnull %112) #9
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  call void @platform_device_put(ptr noundef nonnull %112) #9
  %120 = icmp eq i32 %117, -19
  br i1 %120, label %132, label %199

121:                                              ; preds = %116
  %122 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 7, i32 %100
  store ptr %112, ptr %122, align 4
  %123 = load ptr, ptr %0, align 8
  %124 = getelementptr inbounds %struct.platform_device, ptr %112, i32 0, i32 3
  %125 = call ptr @device_link_add(ptr noundef %123, ptr noundef %124, i32 noundef 1) #9
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.10, i32 noundef %100) #11
  br label %199

129:                                              ; preds = %121, %110
  %130 = add nuw i32 %100, 1
  %131 = icmp eq i32 %130, %90
  br i1 %131, label %132, label %99

132:                                              ; preds = %129, %119, %86
  %133 = load i32, ptr %26, align 8
  br label %134

134:                                              ; preds = %132, %95
  %135 = phi i32 [ %133, %132 ], [ %93, %95 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %160, label %137

137:                                              ; preds = %155, %134
  %138 = phi i32 [ %156, %155 ], [ %135, %134 ]
  %139 = phi i32 [ %157, %155 ], [ 0, %134 ]
  %140 = phi i32 [ %158, %155 ], [ 0, %134 ]
  %141 = load ptr, ptr %15, align 4
  %142 = getelementptr inbounds %struct.rcar_du_device_info, ptr %141, i32 0, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = shl nuw i32 1, %140
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %137
  %148 = lshr i32 %140, 1
  %149 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 6, i32 %148
  %150 = call i32 @rcar_du_crtc_create(ptr noundef %149, i32 noundef %139, i32 noundef %140) #9
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %199, label %152

152:                                              ; preds = %147
  %153 = add nuw i32 %139, 1
  %154 = load i32, ptr %26, align 8
  br label %155

155:                                              ; preds = %152, %137
  %156 = phi i32 [ %154, %152 ], [ %138, %137 ]
  %157 = phi i32 [ %153, %152 ], [ %139, %137 ]
  %158 = add i32 %140, 1
  %159 = icmp ult i32 %157, %156
  br i1 %159, label %137, label %160

160:                                              ; preds = %155, %134
  %161 = call fastcc i32 @rcar_du_encoders_init(ptr noundef %0)
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %199, label %163

163:                                              ; preds = %160
  %164 = icmp eq i32 %161, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %163
  %166 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.2) #11
  br label %199

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 3, i32 30, i32 16
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, %168
  br i1 %170, label %185, label %171

171:                                              ; preds = %167
  %172 = shl nsw i32 -1, %161
  %173 = xor i32 %172, -1
  br label %174

174:                                              ; preds = %174, %171
  %175 = phi ptr [ %169, %171 ], [ %183, %174 ]
  %176 = load ptr, ptr %15, align 4
  %177 = getelementptr i8, ptr %175, i32 68
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr %struct.rcar_du_device_info, ptr %176, i32 0, i32 4, i32 %178
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr i8, ptr %175, i32 40
  store i32 %180, ptr %181, align 4
  %182 = getelementptr i8, ptr %175, i32 44
  store i32 %173, ptr %182, align 4
  %183 = load ptr, ptr %175, align 4
  %184 = icmp eq ptr %183, %168
  br i1 %184, label %185, label %174

185:                                              ; preds = %174, %167
  %186 = load ptr, ptr %15, align 4
  %187 = load i32, ptr %186, align 4
  %188 = icmp ugt i32 %187, 2
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32, ptr %26, align 8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %189, %185
  %193 = getelementptr inbounds %struct.rcar_du_device_info, ptr %186, i32 0, i32 4
  %194 = load i32, ptr %193, align 4
  %195 = call i32 @llvm.cttz.i32(i32 %194, i1 true), !range !9
  %196 = icmp eq i32 %194, 0
  %197 = select i1 %196, i32 -1, i32 %195
  %198 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 11
  store i32 %197, ptr %198, align 4
  call void @drm_mode_config_reset(ptr noundef %3) #9
  call void @drm_kms_helper_poll_init(ptr noundef %3) #9
  br label %199

199:                                              ; preds = %192, %189, %165, %160, %147, %127, %119, %114, %106, %97, %83, %71, %30, %9, %6, %1
  %200 = phi i32 [ -22, %165 ], [ 0, %192 ], [ %4, %1 ], [ %7, %6 ], [ -12, %9 ], [ %32, %30 ], [ %84, %83 ], [ %161, %160 ], [ -6, %189 ], [ %117, %119 ], [ -22, %127 ], [ -22, %114 ], [ -22, %106 ], [ -22, %97 ], [ %150, %147 ], [ %72, %71 ]
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_modeset_cleanup(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 17324
  %4 = load ptr, ptr %3, align 4
  tail call void @platform_device_put(ptr noundef %4) #9
  %5 = getelementptr i8, ptr %0, i32 17328
  %6 = load ptr, ptr %5, align 4
  tail call void @platform_device_put(ptr noundef %6) #9
  %7 = getelementptr i8, ptr %0, i32 17332
  %8 = load ptr, ptr %7, align 4
  tail call void @platform_device_put(ptr noundef %8) #9
  %9 = getelementptr i8, ptr %0, i32 17336
  %10 = load ptr, ptr %9, align 4
  tail call void @platform_device_put(ptr noundef %10) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_planes_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_vsps_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca [4 x %struct.anon.79], align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false)
  %7 = tail call i32 @of_property_count_elems_of_size(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef 4) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @of_property_count_elems_of_size(ptr noundef %6, ptr noundef nonnull @.str.5, i32 noundef 4) #9
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi ptr [ @.str.5, %9 ], [ @.str.4, %1 ]
  %13 = phi i32 [ %10, %9 ], [ %7, %1 ]
  %14 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = udiv i32 %13, %15
  %17 = add i32 %16, -1
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %73, label %19

19:                                               ; preds = %11
  %20 = icmp eq i32 %15, 0
  br i1 %20, label %73, label %21

21:                                               ; preds = %19
  %22 = icmp eq i32 %17, 0
  %23 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  br label %24

24:                                               ; preds = %44, %21
  %25 = phi i32 [ 0, %21 ], [ %56, %44 ]
  %26 = phi i32 [ 0, %21 ], [ %46, %44 ]
  %27 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull %12, ptr noundef null, i32 noundef %17, i32 noundef %25, ptr noundef nonnull %2) #9
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %24
  %30 = icmp eq i32 %26, 0
  %31 = load ptr, ptr %2, align 4
  br i1 %30, label %41, label %32

32:                                               ; preds = %37, %29
  %33 = phi i32 [ %38, %37 ], [ 0, %29 ]
  %34 = getelementptr [4 x %struct.anon.79], ptr %3, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %31
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = add nuw i32 %33, 1
  %39 = icmp eq i32 %38, %26
  br i1 %39, label %41, label %32

40:                                               ; preds = %32
  call void @of_node_put(ptr noundef %31) #9
  br label %44

41:                                               ; preds = %37, %29
  %42 = add i32 %26, 1
  %43 = getelementptr [4 x %struct.anon.79], ptr %3, i32 0, i32 %26
  store ptr %31, ptr %43, align 4
  br label %44

44:                                               ; preds = %41, %40
  %45 = phi i32 [ %33, %40 ], [ %26, %41 ]
  %46 = phi i32 [ %26, %40 ], [ %42, %41 ]
  %47 = shl nuw i32 1, %25
  %48 = getelementptr [4 x %struct.anon.79], ptr %3, i32 0, i32 %45, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, ptr %48, align 4
  %51 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 8, i32 %45
  %52 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 4, i32 %25, i32 16
  store ptr %51, ptr %52, align 4
  %53 = load i32, ptr %23, align 4
  %54 = select i1 %22, i32 0, i32 %53
  %55 = getelementptr %struct.rcar_du_device, ptr %0, i32 0, i32 4, i32 %25, i32 17
  store i32 %54, ptr %55, align 8
  %56 = add nuw i32 %25, 1
  %57 = load i32, ptr %14, align 8
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %24, label %59

59:                                               ; preds = %44
  %60 = icmp eq i32 %46, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 8
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 8, i32 0, i32 2
  store ptr %0, ptr %63, align 4
  br label %64

64:                                               ; preds = %61, %24
  %65 = phi i32 [ -6, %61 ], [ %27, %24 ]
  %66 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %66) #9
  %67 = getelementptr inbounds [4 x %struct.anon.79], ptr %3, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  call void @of_node_put(ptr noundef %68) #9
  %69 = getelementptr inbounds [4 x %struct.anon.79], ptr %3, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  call void @of_node_put(ptr noundef %70) #9
  %71 = getelementptr inbounds [4 x %struct.anon.79], ptr %3, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  call void @of_node_put(ptr noundef %72) #9
  br label %73

73:                                               ; preds = %64, %59, %19, %11
  %74 = phi i32 [ -22, %11 ], [ 0, %59 ], [ %65, %64 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #9
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_crtc_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_encoders_init(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.of_endpoint, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %5, ptr noundef null) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %117, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rcar_du_device, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.of_endpoint, ptr %2, i32 0, i32 2
  br label %11

11:                                               ; preds = %113, %8
  %12 = phi i32 [ 0, %8 ], [ %114, %113 ]
  %13 = phi ptr [ %6, %8 ], [ %115, %113 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false), !annotation !8
  %14 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %13, ptr noundef nonnull %2) #9
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %111, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %9, align 4
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 0
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %18
  br i1 %25, label %92, label %26

26:                                               ; preds = %22, %16
  %27 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 1, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %18
  br i1 %33, label %92, label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 2, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %18
  br i1 %41, label %92, label %42

42:                                               ; preds = %38, %34
  %43 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 3, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, %18
  br i1 %49, label %92, label %50

50:                                               ; preds = %46, %42
  %51 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 4, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %18
  br i1 %57, label %92, label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 5, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %18
  br i1 %65, label %92, label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 6, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, %18
  br i1 %73, label %92, label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 7
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 7, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, %18
  br i1 %81, label %92, label %82

82:                                               ; preds = %78, %74
  %83 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 8
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr %struct.rcar_du_device_info, ptr %17, i32 0, i32 4, i32 8, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, %18
  br i1 %89, label %92, label %90

90:                                               ; preds = %86, %82
  %91 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %91, ptr noundef nonnull @.str.11, i32 noundef %18) #11
  br label %113

92:                                               ; preds = %86, %78, %70, %62, %54, %46, %38, %30, %22
  %93 = phi i32 [ 0, %22 ], [ 1, %30 ], [ 2, %38 ], [ 3, %46 ], [ 4, %54 ], [ 5, %62 ], [ 6, %70 ], [ 7, %78 ], [ 8, %86 ]
  %94 = load ptr, ptr %10, align 4
  %95 = call ptr @of_graph_get_remote_port_parent(ptr noundef %94) #9
  %96 = icmp eq ptr %95, null
  br i1 %96, label %113, label %97

97:                                               ; preds = %92
  %98 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %95) #9
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  call void @of_node_put(ptr noundef nonnull %95) #9
  br label %113

100:                                              ; preds = %97
  %101 = call i32 @rcar_du_encoder_init(ptr noundef %0, i32 noundef %93, ptr noundef nonnull %95) #9
  switch i32 %101, label %102 [
    i32 -67, label %105
    i32 -517, label %105
    i32 0, label %105
  ]

102:                                              ; preds = %100
  %103 = load ptr, ptr %0, align 8
  %104 = call ptr @rcar_du_output_name(i32 noundef %93) #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %103, ptr noundef nonnull @.str.12, ptr noundef nonnull %95, ptr noundef %104, i32 noundef %101) #11
  br label %105

105:                                              ; preds = %102, %100, %100, %100
  call void @of_node_put(ptr noundef nonnull %95) #9
  %106 = icmp slt i32 %101, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %105
  %108 = icmp eq i32 %101, -517
  br i1 %108, label %111, label %113

109:                                              ; preds = %105
  %110 = add i32 %12, 1
  br label %113

111:                                              ; preds = %107, %11
  %112 = phi i32 [ %14, %11 ], [ -517, %107 ]
  call void @of_node_put(ptr noundef nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  br label %117

113:                                              ; preds = %109, %107, %99, %92, %90
  %114 = phi i32 [ %12, %107 ], [ %110, %109 ], [ %12, %90 ], [ %12, %99 ], [ %12, %92 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  %115 = call ptr @of_graph_get_next_endpoint(ptr noundef %5, ptr noundef nonnull %13) #9
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %11

117:                                              ; preds = %113, %111, %1
  %118 = phi i32 [ %112, %111 ], [ 0, %1 ], [ %114, %113 ]
  ret i32 %118
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_cma_object_free(ptr noundef %0) #7 {
  tail call void @drm_gem_cma_free(ptr noundef %0) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_gem_cma_object_print_info(ptr noundef %0, i32 noundef %1, ptr noundef %2) #7 {
  tail call void @drm_gem_cma_print_info(ptr noundef %2, ptr noundef %0, i32 noundef %1) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @drm_gem_cma_object_get_sg_table(ptr noundef %0) #7 {
  %2 = tail call ptr @drm_gem_cma_get_sg_table(ptr noundef %0) #9
  ret ptr %2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_cma_object_vmap(ptr noundef %0, ptr noundef %1) #7 {
  %3 = tail call i32 @drm_gem_cma_vmap(ptr noundef %0, ptr noundef %1) #9
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @drm_gem_cma_object_mmap(ptr noundef %0, ptr noundef %1) #7 {
  %3 = tail call i32 @drm_gem_cma_mmap(ptr noundef %0, ptr noundef %1) #9
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_cma_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_cma_print_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_get_sg_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_vmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_mmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rcar_du_fb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i32 %10, 1
  %8 = icmp eq i32 %7, 41
  br i1 %8, label %68, label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ 0, %3 ], [ %7, %6 ]
  %11 = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %5
  br i1 %13, label %14, label %6

14:                                               ; preds = %9
  %15 = icmp eq ptr %11, null
  br i1 %15, label %68, label %16

16:                                               ; preds = %14
  %17 = getelementptr i8, ptr %0, i32 -8
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %10, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %10, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 3
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %28, %25 ], [ 1, %21 ]
  %31 = mul i32 %30, 4095
  %32 = getelementptr inbounds %struct.rcar_du_device_info, ptr %18, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  %36 = shl i32 %30, 4
  %37 = add i32 %36, -1
  %38 = select i1 %35, i32 %37, i32 127
  br label %39

39:                                               ; preds = %29, %16
  %40 = phi i32 [ %31, %29 ], [ 65535, %16 ]
  %41 = phi i32 [ %38, %29 ], [ 0, %16 ]
  %42 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, %41
  %45 = icmp ne i32 %44, 0
  %46 = icmp ugt i32 %43, %40
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %39
  %49 = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %10, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = udiv i32 %43, %50
  %52 = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %10, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 2
  %55 = zext i1 %54 to i32
  %56 = shl i32 %51, %55
  %57 = icmp ugt i32 %53, 1
  br i1 %57, label %61, label %66

58:                                               ; preds = %61
  %59 = add nuw i32 %62, 1
  %60 = icmp eq i32 %59, %53
  br i1 %60, label %66, label %61

61:                                               ; preds = %58, %48
  %62 = phi i32 [ %59, %58 ], [ 1, %48 ]
  %63 = getelementptr %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 6, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, %56
  br i1 %65, label %58, label %68

66:                                               ; preds = %58, %48
  %67 = tail call ptr @drm_gem_fb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %68

68:                                               ; preds = %66, %61, %39, %14, %6
  %69 = phi ptr [ %67, %66 ], [ inttoptr (i32 -22 to ptr), %14 ], [ inttoptr (i32 -22 to ptr), %39 ], [ inttoptr (i32 -22 to ptr), %61 ], [ inttoptr (i32 -22 to ptr), %6 ]
  ret ptr %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_du_atomic_check(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @drm_atomic_helper_check(ptr noundef %0, ptr noundef %1) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcar_du_device_info, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call i32 @rcar_du_atomic_check_planes(ptr noundef %0, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %12, %5, %2
  %15 = phi i32 [ %13, %12 ], [ %3, %2 ], [ 0, %5 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_atomic_check_planes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_du_atomic_commit_tail(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 17436
  store i32 -1, ptr %4, align 8
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %11 = getelementptr i8, ptr %3, i32 17432
  br label %12

12:                                               ; preds = %36, %9
  %13 = phi i32 [ 0, %9 ], [ %37, %36 ]
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr %struct.__drm_crtcs_state, ptr %14, i32 %13
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18

18:                                               ; preds = %12
  %19 = getelementptr %struct.__drm_crtcs_state, ptr %14, i32 %13, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.rcar_du_crtc, ptr %16, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  store i32 %27, ptr %11, align 4
  %28 = load i32, ptr %21, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi i32 [ %28, %25 ], [ %22, %18 ]
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rcar_du_crtc, ptr %16, i32 0, i32 5
  %35 = load i32, ptr %34, align 8
  store i32 %35, ptr %4, align 8
  br label %36

36:                                               ; preds = %33, %29, %12
  %37 = add nuw i32 %13, 1
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 30, i32 19
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %12, label %42

42:                                               ; preds = %36, %1
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %3, ptr noundef %0) #9
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %3, ptr noundef %0, i32 noundef 1) #9
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %3, ptr noundef %0) #9
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %0) #9
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %3, ptr noundef %0) #9
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %3, ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_flip_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_cmm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_encoder_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_du_output_name(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!9 = !{i32 0, i32 33}
