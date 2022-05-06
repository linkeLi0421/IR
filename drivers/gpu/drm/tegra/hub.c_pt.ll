; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/hub.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/hub.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.host1x_client_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_private_state_funcs = type { ptr, ptr }
%struct.tegra_display_hub_soc = type { i32, i8 }
%struct.tegra_display_hub = type { %struct.drm_private_obj, %struct.host1x_client, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.tegra_windowgroup = type { i32, %struct.mutex, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.anon.75 = type { i32, ptr }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.83, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.83 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.tegra_plane = type { %struct.drm_plane, ptr, i32, i32, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.tegra_shared_plane = type { %struct.tegra_plane, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.tegra_display_hub_state = type { %struct.drm_private_state, ptr, i32, ptr }
%struct.drm_private_state = type { ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.tegra_dc_state = type { %struct.drm_crtc_state, ptr, i32, i32, i32 }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.tegra_plane_state = type { %struct.drm_plane_state, [3 x ptr], [3 x i32], %struct.tegra_bo_tiling, i32, i32, i8, i8, [2 x %struct.tegra_plane_legacy_blending_state], i8, i32, i32, i32 }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.tegra_bo_tiling = type { i32, i32, i32 }
%struct.tegra_plane_legacy_blending_state = type { i8, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.70, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.70 = type { [4 x i8] }

@tegra_shared_plane_formats = internal constant [19 x i32] [i32 892424769, i32 909199186, i32 892420434, i32 875713089, i32 875708993, i32 842089025, i32 892420673, i32 892420418, i32 892424792, i32 892426322, i32 892420696, i32 892426306, i32 909199170, i32 875713112, i32 875709016, i32 1498831189, i32 1448695129, i32 842093913, i32 909202777], align 4
@tegra_shared_plane_modifiers = internal constant [14 x i64] [i64 0, i64 216172782113783824, i64 216172782113783825, i64 216172782113783826, i64 216172782113783827, i64 216172782113783828, i64 216172782113783829, i64 216172782117978128, i64 216172782117978129, i64 216172782117978130, i64 216172782117978131, i64 216172782117978132, i64 216172782117978133, i64 72057594037927935], align 8
@tegra_plane_funcs = external dso_local constant %struct.drm_plane_funcs, align 4
@tegra_shared_plane_helper_funcs = internal constant %struct.drm_plane_helper_funcs { ptr @tegra_plane_prepare_fb, ptr @tegra_plane_cleanup_fb, ptr @tegra_shared_plane_atomic_check, ptr @tegra_shared_plane_atomic_update, ptr @tegra_shared_plane_atomic_disable, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to set rate of %pC to %lu Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to set parent of %pC to %pC: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"tegra-display-hub\00", align 1
@tegra_display_hub_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_display_hub }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-display\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_display_hub }, %struct.of_device_id zeroinitializer], align 4
@tegra_display_hub_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @tegra_display_hub_probe, ptr @tegra_display_hub_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_display_hub_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"failed to resume: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\013failed to assert reset for window group %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"hardware doesn't support block linear mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"hardware doesn't support GPU sector layout\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"unsupported UV-plane configuration\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"invalid minimum width: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/tegra/hub.c\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"%s %s: head %u owns window %u but is not attached\0A\00", align 1
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"%s %s: window %u owned by head %u\0A\00", align 1
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@tegra_shared_plane_setup_scaler.coeffs = internal unnamed_addr constant [192 x i32] [i32 0, i32 1014031360, i32 1001404388, i32 206687388, i32 1048577, i32 1005640698, i32 1023472646, i32 1071645695, i32 3145730, i32 998296565, i32 1033962509, i32 1068499966, i32 4194306, i32 992002033, i32 1045499925, i32 1066402812, i32 5242882, i32 986756077, i32 1059135517, i32 1062208507, i32 5242883, i32 983606249, i32 1072771110, i32 1059063801, i32 5243907, i32 980457446, i32 14762031, i32 1054869495, i32 5243907, i32 979405796, i32 30493752, i32 1050676214, i32 5243907, i32 978354146, i32 48323650, i32 1045434356, i32 5243906, i32 979399649, i32 66153549, i32 1040191474, i32 4195330, i32 980446176, i32 85031000, i32 1034949616, i32 3146754, i32 982540256, i32 103909475, i32 1029707758, i32 3146754, i32 984635360, i32 124885102, i32 1023417323, i32 2097153, i32 988827617, i32 144811130, i32 1018176489, i32 1048577, i32 991971298, i32 165786757, i32 1012934631, i32 1048576, i32 997212130, i32 185712785, i32 1006645222, i32 1059076096, i32 59838527, i32 1072734228, i32 135356524, i32 1059076095, i32 55642172, i32 65083458, i32 1059077120, i32 1060122623, i32 50398265, i32 70327365, i32 1058030593, i32 1060122623, i32 46201909, i32 75572296, i32 1058031618, i32 1061169151, i32 40958002, i32 79767627, i32 1059082243, i32 1061168127, i32 36761648, i32 85012558, i32 1059083267, i32 1063264255, i32 32565293, i32 90256465, i32 1059085316, i32 1064311806, i32 28368938, i32 94452820, i32 1060134918, i32 1064310782, i32 24172583, i32 99696727, i32 1061185543, i32 1065359359, i32 21025828, i32 104940634, i32 1061186568, i32 1067455487, i32 16829474, i32 109135965, i32 1062237193, i32 1067454463, i32 13681695, i32 114379872, i32 1063287819, i32 1069551615, i32 9485340, i32 118575203, i32 1065387020, i32 1070599167, i32 7386138, i32 122770533, i32 1066437646, i32 1071646719, i32 4239384, i32 126965864, i32 1068535823, i32 1072694272, i32 1091606, i32 131161194, i32 1070635025, i32 10505230, i32 73462850, i32 37791783, i32 96557145, i32 9454605, i32 71364672, i32 75562051, i32 11554832, i32 8405004, i32 68217918, i32 76611652, i32 13653009, i32 7354379, i32 66119741, i32 78710854, i32 14702610, i32 6304778, i32 64021563, i32 80809032, i32 15753235, i32 5255177, i32 61923385, i32 81859657, i32 17851413, i32 4205576, i32 59824184, i32 83958859, i32 18902038, i32 3155975, i32 57726006, i32 85008460, i32 21000216, i32 3154950, i32 54579252, i32 87106638, i32 22049817, i32 2105349, i32 52481074, i32 88157264, i32 24149019, i32 1055748, i32 50381873, i32 90256465, i32 25198621, i32 1054723, i32 48283695, i32 91306067, i32 27297822, i32 1052674, i32 45136941, i32 92356692, i32 29396000, i32 3074, i32 44087340, i32 93406293, i32 31495201, i32 2049, i32 41988138, i32 94456919, i32 33594403, i32 1024, i32 39889960, i32 95507544, i32 35692581], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.14 = private unnamed_addr constant [28 x i8] c"failed to set DMA mask: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"disp\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dsc\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"wgrp%u\00", align 1
@tegra_display_hub_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"&wgrp->lock\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"failed to find node for head %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"failed to get clock for head %u\0A\00", align 1
@tegra_display_hub_ops = internal constant %struct.host1x_client_ops { ptr null, ptr @tegra_display_hub_init, ptr @tegra_display_hub_exit, ptr null, ptr @tegra_display_hub_runtime_suspend, ptr @tegra_display_hub_runtime_resume }, align 4
@tegra_display_hub_probe.__key.24 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@tegra_display_hub_state_funcs = internal constant %struct.drm_private_state_funcs { ptr @tegra_display_hub_duplicate_state, ptr @tegra_display_hub_destroy_state }, align 4
@.str.26 = private unnamed_addr constant [30 x i8] c"failed to get runtime PM: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"failed to unregister host1x client: %d\0A\00", align 1
@tegra194_display_hub = internal constant %struct.tegra_display_hub_soc { i32 6, i8 0 }, align 4
@tegra186_display_hub = internal constant %struct.tegra_display_hub_soc { i32 6, i8 1 }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_display_hub_prepare(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_display_hub, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_display_hub, ptr %0, i32 0, i32 9
  br label %8

8:                                                ; preds = %39, %6
  %9 = phi i32 [ %4, %6 ], [ %40, %39 ]
  %10 = phi i32 [ 0, %6 ], [ %41, %39 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr %struct.tegra_windowgroup, ptr %11, i32 %10, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %8
  %16 = getelementptr %struct.tegra_windowgroup, ptr %11, i32 %10
  %17 = getelementptr %struct.tegra_windowgroup, ptr %11, i32 %10, i32 1
  tail call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %16, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load ptr, ptr %12, align 4
  %22 = tail call i32 @host1x_client_resume(ptr noundef %21) #9
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr inbounds %struct.host1x_client, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.3, i32 noundef %22) #10
  br label %36

28:                                               ; preds = %20
  %29 = getelementptr %struct.tegra_windowgroup, ptr %11, i32 %10, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @reset_control_deassert(ptr noundef %30) #9
  %32 = load i32, ptr %16, align 4
  br label %33

33:                                               ; preds = %28, %15
  %34 = phi i32 [ %32, %28 ], [ %18, %15 ]
  %35 = add i32 %34, 1
  store i32 %35, ptr %16, align 4
  br label %36

36:                                               ; preds = %33, %24
  tail call void @mutex_unlock(ptr noundef %17) #9
  %37 = load ptr, ptr %2, align 4
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %8
  %40 = phi i32 [ %38, %36 ], [ %9, %8 ]
  %41 = add nuw i32 %10, 1
  %42 = icmp ult i32 %41, %40
  br i1 %42, label %8, label %43

43:                                               ; preds = %39, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_display_hub_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tegra_display_hub, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tegra_display_hub, ptr %0, i32 0, i32 9
  br label %8

8:                                                ; preds = %38, %6
  %9 = phi i32 [ %4, %6 ], [ %39, %38 ]
  %10 = phi i32 [ 0, %6 ], [ %40, %38 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr %struct.tegra_windowgroup, ptr %11, i32 %10, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %38, label %15

15:                                               ; preds = %8
  %16 = getelementptr %struct.tegra_windowgroup, ptr %11, i32 %10
  %17 = getelementptr %struct.tegra_windowgroup, ptr %11, i32 %10, i32 1
  tail call void @mutex_lock(ptr noundef %17) #9
  %18 = load i32, ptr %16, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = getelementptr %struct.tegra_windowgroup, ptr %11, i32 %10, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @reset_control_assert(ptr noundef %22) #9
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr %struct.tegra_windowgroup, ptr %11, i32 %10, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %27) #10
  br label %29

29:                                               ; preds = %25, %20
  %30 = load ptr, ptr %12, align 4
  %31 = tail call i32 @host1x_client_suspend(ptr noundef %30) #9
  %32 = load i32, ptr %16, align 4
  br label %33

33:                                               ; preds = %29, %15
  %34 = phi i32 [ %32, %29 ], [ %18, %15 ]
  %35 = add i32 %34, -1
  store i32 %35, ptr %16, align 4
  tail call void @mutex_unlock(ptr noundef %17) #9
  %36 = load ptr, ptr %2, align 4
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %33, %8
  %39 = phi i32 [ %37, %33 ], [ %9, %8 ]
  %40 = add nuw i32 %10, 1
  %41 = icmp ult i32 %40, %39
  br i1 %41, label %8, label %42

42:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tegra_shared_plane_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_drm, ptr %6, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 488) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %4
  %13 = mul i32 %3, 768
  %14 = add i32 %13, 2560
  %15 = getelementptr inbounds %struct.tegra_plane, ptr %10, i32 0, i32 2
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tegra_plane, ptr %10, i32 0, i32 3
  store i32 %3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.tegra_display_hub, ptr %8, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr %struct.tegra_windowgroup, ptr %18, i32 %2
  %20 = getelementptr inbounds %struct.tegra_shared_plane, ptr %10, i32 0, i32 1
  store ptr %19, ptr %20, align 8
  %21 = getelementptr %struct.tegra_windowgroup, ptr %18, i32 %2, i32 3
  store ptr %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.tegra_drm, ptr %6, i32 0, i32 12
  %23 = load i32, ptr %22, align 8
  %24 = shl nsw i32 -1, %23
  %25 = xor i32 %24, -1
  %26 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %25, ptr noundef nonnull @tegra_plane_funcs, ptr noundef nonnull @tegra_shared_plane_formats, i32 noundef 19, ptr noundef nonnull @tegra_shared_plane_modifiers, i32 noundef 0, ptr noundef null) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %10) #9
  %29 = inttoptr i32 %26 to ptr
  br label %33

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.drm_plane, ptr %10, i32 0, i32 18
  store ptr @tegra_shared_plane_helper_funcs, ptr %31, align 8
  %32 = tail call i32 @drm_plane_create_zpos_property(ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0, i32 noundef 255) #9
  br label %33

33:                                               ; preds = %30, %28, %4
  %34 = phi ptr [ %29, %28 ], [ %10, %30 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_zpos_property(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_display_hub_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_drm, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %61, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %1, ptr noundef nonnull %6) #9
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %22, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %61, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %19 = getelementptr inbounds %struct.tegra_display_hub_state, ptr %9, i32 0, i32 3
  %20 = getelementptr inbounds %struct.tegra_display_hub_state, ptr %9, i32 0, i32 2
  %21 = getelementptr inbounds %struct.tegra_display_hub_state, ptr %9, i32 0, i32 1
  br label %24

22:                                               ; preds = %8
  %23 = ptrtoint ptr %9 to i32
  br label %61

24:                                               ; preds = %55, %17
  %25 = phi ptr [ %13, %17 ], [ %56, %55 ]
  %26 = phi i32 [ 0, %17 ], [ %57, %55 ]
  %27 = load ptr, ptr %18, align 4
  %28 = getelementptr %struct.__drm_crtcs_state, ptr %27, i32 %26
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %55, label %31

31:                                               ; preds = %24
  %32 = getelementptr %struct.__drm_crtcs_state, ptr %27, i32 %26, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 2
  %35 = load i8, ptr %34, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %19, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.tegra_dc_state, ptr %33, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %20, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40, %37
  %46 = load ptr, ptr %33, align 4
  %47 = icmp eq ptr %46, null
  %48 = getelementptr i8, ptr %46, i32 -104
  %49 = select i1 %47, ptr null, ptr %48
  store ptr %49, ptr %21, align 4
  %50 = getelementptr inbounds %struct.tegra_dc, ptr %49, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %19, align 4
  %52 = getelementptr inbounds %struct.tegra_dc_state, ptr %33, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %20, align 4
  %54 = load ptr, ptr %12, align 4
  br label %55

55:                                               ; preds = %45, %40, %31, %24
  %56 = phi ptr [ %25, %31 ], [ %54, %45 ], [ %25, %40 ], [ %25, %24 ]
  %57 = add nuw i32 %26, 1
  %58 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 30, i32 19
  %59 = load i32, ptr %58, align 4
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %24, label %61

61:                                               ; preds = %55, %22, %11, %2
  %62 = phi i32 [ %23, %22 ], [ 0, %2 ], [ 0, %11 ], [ 0, %55 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_display_hub_atomic_commit(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tegra_drm, ptr %4, i32 0, i32 13
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tegra_display_hub, ptr %6, i32 0, i32 1, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_private_obj, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tegra_display_hub_state, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.tegra_display_hub_state, ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @clk_set_rate(ptr noundef nonnull %12, i32 noundef %16) #9
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load ptr, ptr %11, align 4
  %21 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef %20, i32 noundef %21) #10
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds %struct.tegra_display_hub, ptr %6, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %11, align 4
  %26 = tail call i32 @clk_set_parent(ptr noundef %24, ptr noundef %25) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load ptr, ptr %23, align 4
  %30 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef %29, ptr noundef %30, i32 noundef %26) #10
  br label %31

31:                                               ; preds = %28, %22, %2
  %32 = getelementptr inbounds %struct.tegra_display_hub_state, ptr %10, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %205, label %35

35:                                               ; preds = %31
  %36 = tail call i32 @host1x_client_resume(ptr noundef nonnull %33) #9
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.tegra_dc, ptr %33, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.3, i32 noundef %36) #10
  br label %205

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.tegra_dc, ptr %33, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr i8, ptr %43, i32 416
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %46 = getelementptr inbounds %struct.tegra_dc, ptr %33, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %41
  %51 = tail call ptr @llvm.thread.pointer() #9
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %50
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %62 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %47, i32 noundef 104, i32 noundef %45) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %63 = load ptr, ptr %46, align 4
  br label %64

64:                                               ; preds = %61, %50, %41
  %65 = phi ptr [ %47, %41 ], [ %47, %50 ], [ %63, %61 ]
  %66 = and i32 %45, -9
  %67 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = tail call ptr @llvm.thread.pointer() #9
  %71 = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = lshr i32 %72, 5
  %74 = getelementptr i32, ptr @__cpu_online_mask, i32 %73
  %75 = load volatile i32, ptr %74, align 4
  %76 = and i32 %72, 31
  %77 = shl nuw i32 1, %76
  %78 = and i32 %77, %75
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %69
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %81 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %65, i32 noundef 104, i32 noundef %66) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %82

82:                                               ; preds = %80, %69, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %83 = load ptr, ptr %42, align 8
  %84 = getelementptr i8, ptr %83, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %66) #9, !srcloc !16
  %85 = load ptr, ptr %42, align 8
  %86 = getelementptr i8, ptr %85, i32 4420
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %88 = load ptr, ptr %46, align 4
  %89 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = tail call ptr @llvm.thread.pointer() #9
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 2
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 5
  %96 = getelementptr i32, ptr @__cpu_online_mask, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %94, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %99, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %91
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %103 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %88, i32 noundef 1105, i32 noundef %87) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %104 = load ptr, ptr %46, align 4
  br label %105

105:                                              ; preds = %102, %91, %82
  %106 = phi ptr [ %88, %82 ], [ %88, %91 ], [ %104, %102 ]
  %107 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = tail call ptr @llvm.thread.pointer() #9
  %111 = getelementptr inbounds %struct.thread_info, ptr %110, i32 0, i32 2
  %112 = load i32, ptr %111, align 8
  %113 = lshr i32 %112, 5
  %114 = getelementptr i32, ptr @__cpu_online_mask, i32 %113
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %112, 31
  %117 = shl nuw i32 1, %116
  %118 = and i32 %117, %115
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %121 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %106, i32 noundef 1105, i32 noundef 257) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %122

122:                                              ; preds = %120, %109, %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %123 = load ptr, ptr %42, align 8
  %124 = getelementptr i8, ptr %123, i32 4420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 257) #9, !srcloc !16
  %125 = load ptr, ptr %46, align 4
  %126 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %122
  %129 = tail call ptr @llvm.thread.pointer() #9
  %130 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2
  %131 = load i32, ptr %130, align 8
  %132 = lshr i32 %131, 5
  %133 = getelementptr i32, ptr @__cpu_online_mask, i32 %132
  %134 = load volatile i32, ptr %133, align 4
  %135 = and i32 %131, 31
  %136 = shl nuw i32 1, %135
  %137 = and i32 %136, %134
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %128
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %140 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %125, i32 noundef 65, i32 noundef 131072) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %141

141:                                              ; preds = %139, %128, %122
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %142 = load ptr, ptr %42, align 8
  %143 = getelementptr i8, ptr %142, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 131072) #9, !srcloc !16
  %144 = load ptr, ptr %42, align 8
  %145 = getelementptr i8, ptr %144, i32 260
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %147 = load ptr, ptr %46, align 4
  %148 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %141
  %151 = tail call ptr @llvm.thread.pointer() #9
  %152 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 2
  %153 = load i32, ptr %152, align 8
  %154 = lshr i32 %153, 5
  %155 = getelementptr i32, ptr @__cpu_online_mask, i32 %154
  %156 = load volatile i32, ptr %155, align 4
  %157 = and i32 %153, 31
  %158 = shl nuw i32 1, %157
  %159 = and i32 %158, %156
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %150
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %162 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %147, i32 noundef 65, i32 noundef %146) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %163 = load ptr, ptr %46, align 4
  br label %164

164:                                              ; preds = %161, %150, %141
  %165 = phi ptr [ %147, %141 ], [ %147, %150 ], [ %163, %161 ]
  %166 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %164
  %169 = tail call ptr @llvm.thread.pointer() #9
  %170 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 2
  %171 = load i32, ptr %170, align 8
  %172 = lshr i32 %171, 5
  %173 = getelementptr i32, ptr @__cpu_online_mask, i32 %172
  %174 = load volatile i32, ptr %173, align 4
  %175 = and i32 %171, 31
  %176 = shl nuw i32 1, %175
  %177 = and i32 %176, %174
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %168
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %180 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %165, i32 noundef 65, i32 noundef 65536) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %181

181:                                              ; preds = %179, %168, %164
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %182 = load ptr, ptr %42, align 8
  %183 = getelementptr i8, ptr %182, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 65536) #9, !srcloc !16
  %184 = load ptr, ptr %42, align 8
  %185 = getelementptr i8, ptr %184, i32 260
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %187 = load ptr, ptr %46, align 4
  %188 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %181
  %191 = tail call ptr @llvm.thread.pointer() #9
  %192 = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 2
  %193 = load i32, ptr %192, align 8
  %194 = lshr i32 %193, 5
  %195 = getelementptr i32, ptr @__cpu_online_mask, i32 %194
  %196 = load volatile i32, ptr %195, align 4
  %197 = and i32 %193, 31
  %198 = shl nuw i32 1, %197
  %199 = and i32 %198, %196
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %190
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %202 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %187, i32 noundef 65, i32 noundef %186) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %203

203:                                              ; preds = %201, %190, %181
  %204 = tail call i32 @host1x_client_suspend(ptr noundef nonnull %33) #9
  br label %205

205:                                              ; preds = %203, %38, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_probe(ptr noundef %0) #0 {
  %2 = alloca [8 x i8], align 8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i64, ptr %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %1
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi i64 [ 4294967295, %12 ], [ %10, %9 ]
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 17
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 16
  store ptr %15, ptr %16, align 4
  %17 = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef %14) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef %14) #9
  br label %24

21:                                               ; preds = %13
  %22 = icmp slt i32 %17, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %17) #10
  br label %146

24:                                               ; preds = %21, %19
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 176, i32 noundef 3520) #9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %146, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @of_device_get_match_data(ptr noundef %3) #9
  %29 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 8
  store ptr %28, ptr %29, align 4
  %30 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.15) #9
  %31 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 2
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = ptrtoint ptr %30 to i32
  br label %146

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.tegra_display_hub_soc, ptr %28, i32 0, i32 1
  %37 = load i8, ptr %36, align 4, !range !8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.16) #9
  %41 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 3
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = ptrtoint ptr %40 to i32
  br label %146

45:                                               ; preds = %39, %35
  %46 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.17) #9
  %47 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 4
  store ptr %46, ptr %47, align 4
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %46 to i32
  br label %146

51:                                               ; preds = %45
  %52 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %53 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 5
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = ptrtoint ptr %52 to i32
  br label %146

57:                                               ; preds = %51
  %58 = load i32, ptr %28, align 4
  %59 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %58, i32 36) #9
  %60 = extractvalue { i32, i1 } %59, 1
  br i1 %60, label %61, label %63, !prof !17

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 9
  store ptr null, ptr %62, align 4
  br label %146

63:                                               ; preds = %57
  %64 = extractvalue { i32, i1 } %59, 0
  %65 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %64, i32 noundef 3520) #9
  %66 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 9
  store ptr %65, ptr %66, align 4
  %67 = icmp eq ptr %65, null
  br i1 %67, label %146, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %28, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %93, label %78

71:                                               ; preds = %90
  %72 = add nuw i32 %80, 1
  %73 = load ptr, ptr %29, align 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load ptr, ptr %66, align 4
  br label %78

78:                                               ; preds = %76, %68
  %79 = phi ptr [ %77, %76 ], [ %65, %68 ]
  %80 = phi i32 [ %72, %76 ], [ 0, %68 ]
  %81 = getelementptr %struct.tegra_windowgroup, ptr %79, i32 %80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !18
  %82 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull @.str.19, i32 noundef %80)
  %83 = getelementptr %struct.tegra_windowgroup, ptr %79, i32 %80, i32 1
  call void @__mutex_init(ptr noundef %83, ptr noundef nonnull @.str.20, ptr noundef nonnull @tegra_display_hub_probe.__key) #9
  store i32 0, ptr %81, align 4
  %84 = getelementptr %struct.tegra_windowgroup, ptr %79, i32 %80, i32 2
  store i32 %80, ptr %84, align 4
  %85 = call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #9
  %86 = getelementptr %struct.tegra_windowgroup, ptr %79, i32 %80, i32 4
  store ptr %85, ptr %86, align 4
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = ptrtoint ptr %85 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %146

90:                                               ; preds = %78
  %91 = call i32 @reset_control_assert(ptr noundef %85) #9
  %92 = icmp slt i32 %91, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br i1 %92, label %146, label %71

93:                                               ; preds = %71, %68
  %94 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %95 = load ptr, ptr %94, align 8
  %96 = call fastcc i32 @of_get_child_count(ptr noundef %95)
  %97 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 6
  store i32 %96, ptr %97, align 4
  %98 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %96, i32 4) #9
  %99 = extractvalue { i32, i1 } %98, 1
  br i1 %99, label %100, label %102, !prof !17

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 7
  store ptr null, ptr %101, align 4
  br label %146

102:                                              ; preds = %93
  %103 = extractvalue { i32, i1 } %98, 0
  %104 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %103, i32 noundef 3520) #9
  %105 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 7
  store ptr %104, ptr %105, align 4
  %106 = icmp eq ptr %104, null
  br i1 %106, label %146, label %107

107:                                              ; preds = %102
  %108 = icmp eq i32 %96, 0
  br i1 %108, label %127, label %109

109:                                              ; preds = %121, %107
  %110 = phi i32 [ %124, %121 ], [ 0, %107 ]
  %111 = phi ptr [ %113, %121 ], [ null, %107 ]
  %112 = load ptr, ptr %94, align 8
  %113 = call ptr @of_get_next_child(ptr noundef %112, ptr noundef %111) #9
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %110) #10
  br label %146

116:                                              ; preds = %109
  %117 = call ptr @devm_get_clk_from_child(ptr noundef %3, ptr noundef nonnull %113, ptr noundef nonnull @.str.22) #9
  %118 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %110) #10
  call void @of_node_put(ptr noundef nonnull %113) #9
  %120 = ptrtoint ptr %117 to i32
  br label %146

121:                                              ; preds = %116
  %122 = load ptr, ptr %105, align 4
  %123 = getelementptr ptr, ptr %122, i32 %110
  store ptr %117, ptr %123, align 4
  %124 = add nuw i32 %110, 1
  %125 = load i32, ptr %97, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %109, label %127

127:                                              ; preds = %121, %107
  %128 = phi ptr [ null, %107 ], [ %113, %121 ]
  call void @of_node_put(ptr noundef %128) #9
  %129 = load ptr, ptr %53, align 4
  %130 = call i32 @reset_control_assert(ptr noundef %129) #9
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %25, ptr %133, align 8
  call void @pm_runtime_enable(ptr noundef %3) #9
  %134 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 1
  store volatile ptr %134, ptr %134, align 4
  %135 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 1, i32 0, i32 1
  store ptr %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 1, i32 4
  store ptr @tegra_display_hub_ops, ptr %136, align 4
  %137 = getelementptr inbounds %struct.tegra_display_hub, ptr %25, i32 0, i32 1, i32 2
  store ptr %3, ptr %137, align 4
  call void @__host1x_client_init(ptr noundef %134, ptr noundef nonnull @tegra_display_hub_probe.__key.24) #9
  %138 = call i32 @__host1x_client_register(ptr noundef %134) #9
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %138) #10
  br label %141

141:                                              ; preds = %140, %132
  %142 = call i32 @devm_of_platform_populate(ptr noundef %3) #9
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 @host1x_client_unregister(ptr noundef %134) #9
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #9
  br label %146

146:                                              ; preds = %144, %141, %127, %119, %115, %102, %100, %90, %88, %63, %61, %55, %49, %43, %33, %24, %23
  %147 = phi i32 [ %17, %23 ], [ %34, %33 ], [ %44, %43 ], [ %50, %49 ], [ %56, %55 ], [ %120, %119 ], [ -19, %115 ], [ %142, %144 ], [ -12, %24 ], [ -12, %63 ], [ -12, %102 ], [ %130, %127 ], [ %142, %141 ], [ -12, %61 ], [ %89, %88 ], [ -12, %100 ], [ %91, %90 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_display_hub, ptr %3, i32 0, i32 1
  %5 = tail call i32 @host1x_client_unregister(ptr noundef %4) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef %5) #10
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %10, i1 noundef zeroext true) #9
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_prepare_fb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_plane_cleanup_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_shared_plane_atomic_check(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = getelementptr i8, ptr %11, i32 -104
  %14 = select i1 %12, ptr null, ptr %13
  br i1 %12, label %69, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %69, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 4
  %24 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 5
  %25 = tail call i32 @tegra_plane_format(i32 noundef %22, ptr noundef %23, ptr noundef %24) #9
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %69, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %16, align 4
  %29 = tail call i32 @tegra_fb_get_tiling(ptr noundef %28, ptr noundef %9) #9
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %69, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %9, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tegra_dc, ptr %14, i32 0, i32 14
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %36, i32 0, i32 3
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #9
  br label %69

41:                                               ; preds = %34, %31
  %42 = getelementptr inbounds %struct.tegra_plane_state, ptr %8, i32 0, i32 3, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tegra_dc, ptr %14, i32 0, i32 14
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %47, i32 0, i32 4
  %49 = load i8, ptr %48, align 4, !range !8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #9
  br label %69

52:                                               ; preds = %45, %41
  %53 = load ptr, ptr %16, align 4
  %54 = getelementptr inbounds %struct.drm_framebuffer, ptr %53, i32 0, i32 4
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.drm_format_info, ptr %55, i32 0, i32 2
  %57 = load i8, ptr %56, align 1
  %58 = icmp ugt i8 %57, 2
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = getelementptr %struct.drm_framebuffer, ptr %53, i32 0, i32 6, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr %struct.drm_framebuffer, ptr %53, i32 0, i32 6, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #9
  br label %69

66:                                               ; preds = %59, %52
  %67 = tail call i32 @tegra_plane_state_add(ptr noundef %0, ptr noundef %8) #9
  %68 = tail call i32 @llvm.smin.i32(i32 %67, i32 0)
  br label %69

69:                                               ; preds = %66, %65, %51, %40, %27, %19, %15, %2
  %70 = phi i32 [ -22, %65 ], [ -22, %51 ], [ -22, %40 ], [ 0, %15 ], [ 0, %2 ], [ %25, %19 ], [ %29, %27 ], [ %68, %66 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_shared_plane_atomic_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.__drm_planes_state, ptr %6, i32 %8, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = getelementptr i8, ptr %12, i32 -104
  %15 = select i1 %13, ptr null, ptr %14
  %16 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 16
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !18
  %20 = icmp eq ptr %19, null
  %21 = select i1 %13, i1 true, i1 %20
  br i1 %21, label %1792, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 22
  %24 = load i8, ptr %23, align 4, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @tegra_shared_plane_atomic_disable(ptr noundef %0, ptr noundef %1)
  br label %1792

27:                                               ; preds = %22
  %28 = tail call i32 @host1x_client_resume(ptr noundef %15) #9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tegra_dc, ptr %15, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.3, i32 noundef %28) #10
  br label %1792

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tegra_plane_state, ptr %10, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = call zeroext i1 @tegra_plane_format_is_yuv(i32 noundef %35, ptr noundef nonnull %4, ptr noundef nonnull %3) #9
  %37 = getelementptr inbounds %struct.tegra_dc, ptr %15, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 386
  %42 = getelementptr inbounds %struct.tegra_dc, ptr %15, i32 0, i32 8
  %43 = load ptr, ptr %42, align 8
  %44 = shl i32 %41, 2
  %45 = getelementptr i8, ptr %43, i32 %44
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %47 = load ptr, ptr %37, align 4
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %33
  %51 = tail call ptr @llvm.thread.pointer() #9
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %62 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %47, i32 noundef %41, i32 noundef %46) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %63

63:                                               ; preds = %61, %50, %33
  %64 = and i32 %46, 15
  %65 = getelementptr inbounds %struct.tegra_dc, ptr %15, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, %15
  br i1 %71, label %90, label %72

72:                                               ; preds = %68
  %73 = call ptr @dev_driver_string(ptr noundef %38) #9
  %74 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr %38, align 4
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi ptr [ %78, %77 ], [ %75, %72 ]
  %81 = load i32, ptr %65, align 4
  %82 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 3
  %83 = load i32, ptr %82, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 250, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %73, ptr noundef %80, i32 noundef %81, i32 noundef %83) #9
  br label %84

84:                                               ; preds = %79, %63
  %85 = call fastcc i32 @tegra_shared_plane_set_owner(ptr noundef %0, ptr noundef %15) #9
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %699, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8
  br label %90

90:                                               ; preds = %87, %68
  %91 = phi ptr [ %89, %87 ], [ %14, %68 ]
  %92 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  %93 = load i32, ptr %39, align 4
  %94 = add i32 %93, 99
  %95 = getelementptr inbounds %struct.tegra_dc, ptr %91, i32 0, i32 8
  %96 = load ptr, ptr %95, align 8
  %97 = shl i32 %94, 2
  %98 = getelementptr i8, ptr %96, i32 %97
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %100 = getelementptr inbounds %struct.tegra_dc, ptr %91, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %90
  %105 = tail call ptr @llvm.thread.pointer() #9
  %106 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 2
  %107 = load i32, ptr %106, align 8
  %108 = lshr i32 %107, 5
  %109 = getelementptr i32, ptr @__cpu_online_mask, i32 %108
  %110 = load volatile i32, ptr %109, align 4
  %111 = and i32 %107, 31
  %112 = shl nuw i32 1, %111
  %113 = and i32 %112, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %104
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %116 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %101, i32 noundef %94, i32 noundef %99) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %117

117:                                              ; preds = %115, %104, %90
  %118 = or i32 %99, 16384
  %119 = load ptr, ptr %92, align 8
  %120 = load i32, ptr %39, align 4
  %121 = add i32 %120, 99
  %122 = getelementptr inbounds %struct.tegra_dc, ptr %119, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %117
  %127 = tail call ptr @llvm.thread.pointer() #9
  %128 = getelementptr inbounds %struct.thread_info, ptr %127, i32 0, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = lshr i32 %129, 5
  %131 = getelementptr i32, ptr @__cpu_online_mask, i32 %130
  %132 = load volatile i32, ptr %131, align 4
  %133 = and i32 %129, 31
  %134 = shl nuw i32 1, %133
  %135 = and i32 %134, %132
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %126
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %138 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %123, i32 noundef %121, i32 noundef %118) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %139

139:                                              ; preds = %137, %126, %117
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %140 = getelementptr inbounds %struct.tegra_dc, ptr %119, i32 0, i32 8
  %141 = load ptr, ptr %140, align 8
  %142 = shl i32 %121, 2
  %143 = getelementptr i8, ptr %141, i32 %142
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %118) #9, !srcloc !16
  %144 = load ptr, ptr %92, align 8
  %145 = load i32, ptr %39, align 4
  %146 = add i32 %145, 98
  %147 = getelementptr inbounds %struct.tegra_dc, ptr %144, i32 0, i32 8
  %148 = load ptr, ptr %147, align 8
  %149 = shl i32 %146, 2
  %150 = getelementptr i8, ptr %148, i32 %149
  %151 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %152 = getelementptr inbounds %struct.tegra_dc, ptr %144, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %139
  %157 = tail call ptr @llvm.thread.pointer() #9
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %168 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %153, i32 noundef %146, i32 noundef %151) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %169

169:                                              ; preds = %167, %156, %139
  %170 = load ptr, ptr %92, align 8
  %171 = load i32, ptr %39, align 4
  %172 = add i32 %171, 98
  %173 = getelementptr inbounds %struct.tegra_dc, ptr %170, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %169
  %178 = tail call ptr @llvm.thread.pointer() #9
  %179 = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 2
  %180 = load i32, ptr %179, align 8
  %181 = lshr i32 %180, 5
  %182 = getelementptr i32, ptr @__cpu_online_mask, i32 %181
  %183 = load volatile i32, ptr %182, align 4
  %184 = and i32 %180, 31
  %185 = shl nuw i32 1, %184
  %186 = and i32 %185, %183
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %177
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %189 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %174, i32 noundef %172, i32 noundef 1) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %190

190:                                              ; preds = %188, %177, %169
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %191 = getelementptr inbounds %struct.tegra_dc, ptr %170, i32 0, i32 8
  %192 = load ptr, ptr %191, align 8
  %193 = shl i32 %172, 2
  %194 = getelementptr i8, ptr %192, i32 %193
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 1) #9, !srcloc !16
  %195 = load ptr, ptr %92, align 8
  %196 = load i32, ptr %39, align 4
  %197 = add i32 %196, 67
  %198 = getelementptr inbounds %struct.tegra_dc, ptr %195, i32 0, i32 8
  %199 = load ptr, ptr %198, align 8
  %200 = shl i32 %197, 2
  %201 = getelementptr i8, ptr %199, i32 %200
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %203 = getelementptr inbounds %struct.tegra_dc, ptr %195, i32 0, i32 2
  %204 = load ptr, ptr %203, align 4
  %205 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %190
  %208 = tail call ptr @llvm.thread.pointer() #9
  %209 = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 2
  %210 = load i32, ptr %209, align 8
  %211 = lshr i32 %210, 5
  %212 = getelementptr i32, ptr @__cpu_online_mask, i32 %211
  %213 = load volatile i32, ptr %212, align 4
  %214 = and i32 %210, 31
  %215 = shl nuw i32 1, %214
  %216 = and i32 %215, %213
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %207
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %219 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %204, i32 noundef %197, i32 noundef %202) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %220

220:                                              ; preds = %218, %207, %190
  %221 = and i32 %202, -5
  %222 = load ptr, ptr %92, align 8
  %223 = load i32, ptr %39, align 4
  %224 = add i32 %223, 67
  %225 = getelementptr inbounds %struct.tegra_dc, ptr %222, i32 0, i32 2
  %226 = load ptr, ptr %225, align 4
  %227 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %220
  %230 = tail call ptr @llvm.thread.pointer() #9
  %231 = getelementptr inbounds %struct.thread_info, ptr %230, i32 0, i32 2
  %232 = load i32, ptr %231, align 8
  %233 = lshr i32 %232, 5
  %234 = getelementptr i32, ptr @__cpu_online_mask, i32 %233
  %235 = load volatile i32, ptr %234, align 4
  %236 = and i32 %232, 31
  %237 = shl nuw i32 1, %236
  %238 = and i32 %237, %235
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %229
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %241 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %226, i32 noundef %224, i32 noundef %221) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %242

242:                                              ; preds = %240, %229, %220
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %243 = getelementptr inbounds %struct.tegra_dc, ptr %222, i32 0, i32 8
  %244 = load ptr, ptr %243, align 8
  %245 = shl i32 %224, 2
  %246 = getelementptr i8, ptr %244, i32 %245
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %246, i32 %221) #9, !srcloc !16
  %247 = load ptr, ptr %92, align 8
  %248 = load i32, ptr %39, align 4
  %249 = add i32 %248, 68
  %250 = getelementptr inbounds %struct.tegra_dc, ptr %247, i32 0, i32 8
  %251 = load ptr, ptr %250, align 8
  %252 = shl i32 %249, 2
  %253 = getelementptr i8, ptr %251, i32 %252
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %253) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %255 = getelementptr inbounds %struct.tegra_dc, ptr %247, i32 0, i32 2
  %256 = load ptr, ptr %255, align 4
  %257 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %242
  %260 = tail call ptr @llvm.thread.pointer() #9
  %261 = getelementptr inbounds %struct.thread_info, ptr %260, i32 0, i32 2
  %262 = load i32, ptr %261, align 8
  %263 = lshr i32 %262, 5
  %264 = getelementptr i32, ptr @__cpu_online_mask, i32 %263
  %265 = load volatile i32, ptr %264, align 4
  %266 = and i32 %262, 31
  %267 = shl nuw i32 1, %266
  %268 = and i32 %267, %265
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %259
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %271 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %256, i32 noundef %249, i32 noundef %254) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %272

272:                                              ; preds = %270, %259, %242
  %273 = or i32 %254, 536870911
  %274 = load ptr, ptr %92, align 8
  %275 = load i32, ptr %39, align 4
  %276 = add i32 %275, 68
  %277 = getelementptr inbounds %struct.tegra_dc, ptr %274, i32 0, i32 2
  %278 = load ptr, ptr %277, align 4
  %279 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %280 = icmp sgt i32 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %272
  %282 = tail call ptr @llvm.thread.pointer() #9
  %283 = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 2
  %284 = load i32, ptr %283, align 8
  %285 = lshr i32 %284, 5
  %286 = getelementptr i32, ptr @__cpu_online_mask, i32 %285
  %287 = load volatile i32, ptr %286, align 4
  %288 = and i32 %284, 31
  %289 = shl nuw i32 1, %288
  %290 = and i32 %289, %287
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %281
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %293 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %278, i32 noundef %276, i32 noundef %273) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %294

294:                                              ; preds = %292, %281, %272
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %295 = getelementptr inbounds %struct.tegra_dc, ptr %274, i32 0, i32 8
  %296 = load ptr, ptr %295, align 8
  %297 = shl i32 %276, 2
  %298 = getelementptr i8, ptr %296, i32 %297
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %298, i32 %273) #9, !srcloc !16
  %299 = load ptr, ptr %92, align 8
  %300 = load i32, ptr %39, align 4
  %301 = add i32 %300, 96
  %302 = getelementptr inbounds %struct.tegra_dc, ptr %299, i32 0, i32 8
  %303 = load ptr, ptr %302, align 8
  %304 = shl i32 %301, 2
  %305 = getelementptr i8, ptr %303, i32 %304
  %306 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %305) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %307 = getelementptr inbounds %struct.tegra_dc, ptr %299, i32 0, i32 2
  %308 = load ptr, ptr %307, align 4
  %309 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %294
  %312 = tail call ptr @llvm.thread.pointer() #9
  %313 = getelementptr inbounds %struct.thread_info, ptr %312, i32 0, i32 2
  %314 = load i32, ptr %313, align 8
  %315 = lshr i32 %314, 5
  %316 = getelementptr i32, ptr @__cpu_online_mask, i32 %315
  %317 = load volatile i32, ptr %316, align 4
  %318 = and i32 %314, 31
  %319 = shl nuw i32 1, %318
  %320 = and i32 %319, %317
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %311
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %323 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %308, i32 noundef %301, i32 noundef %306) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %324

324:                                              ; preds = %322, %311, %294
  %325 = load ptr, ptr %92, align 8
  %326 = load i32, ptr %39, align 4
  %327 = add i32 %326, 96
  %328 = getelementptr inbounds %struct.tegra_dc, ptr %325, i32 0, i32 2
  %329 = load ptr, ptr %328, align 4
  %330 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %345

332:                                              ; preds = %324
  %333 = tail call ptr @llvm.thread.pointer() #9
  %334 = getelementptr inbounds %struct.thread_info, ptr %333, i32 0, i32 2
  %335 = load i32, ptr %334, align 8
  %336 = lshr i32 %335, 5
  %337 = getelementptr i32, ptr @__cpu_online_mask, i32 %336
  %338 = load volatile i32, ptr %337, align 4
  %339 = and i32 %335, 31
  %340 = shl nuw i32 1, %339
  %341 = and i32 %340, %338
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %332
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %344 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %329, i32 noundef %327, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %345

345:                                              ; preds = %343, %332, %324
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %346 = getelementptr inbounds %struct.tegra_dc, ptr %325, i32 0, i32 8
  %347 = load ptr, ptr %346, align 8
  %348 = shl i32 %327, 2
  %349 = getelementptr i8, ptr %347, i32 %348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %349, i32 0) #9, !srcloc !16
  %350 = load ptr, ptr %92, align 8
  %351 = load i32, ptr %39, align 4
  %352 = add i32 %351, 97
  %353 = getelementptr inbounds %struct.tegra_dc, ptr %350, i32 0, i32 8
  %354 = load ptr, ptr %353, align 8
  %355 = shl i32 %352, 2
  %356 = getelementptr i8, ptr %354, i32 %355
  %357 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %356) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %358 = getelementptr inbounds %struct.tegra_dc, ptr %350, i32 0, i32 2
  %359 = load ptr, ptr %358, align 4
  %360 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %375

362:                                              ; preds = %345
  %363 = tail call ptr @llvm.thread.pointer() #9
  %364 = getelementptr inbounds %struct.thread_info, ptr %363, i32 0, i32 2
  %365 = load i32, ptr %364, align 8
  %366 = lshr i32 %365, 5
  %367 = getelementptr i32, ptr @__cpu_online_mask, i32 %366
  %368 = load volatile i32, ptr %367, align 4
  %369 = and i32 %365, 31
  %370 = shl nuw i32 1, %369
  %371 = and i32 %370, %368
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %375, label %373

373:                                              ; preds = %362
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %374 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %359, i32 noundef %352, i32 noundef %357) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %375

375:                                              ; preds = %373, %362, %345
  %376 = load ptr, ptr %92, align 8
  %377 = load i32, ptr %39, align 4
  %378 = add i32 %377, 97
  %379 = getelementptr inbounds %struct.tegra_dc, ptr %376, i32 0, i32 2
  %380 = load ptr, ptr %379, align 4
  %381 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %396

383:                                              ; preds = %375
  %384 = tail call ptr @llvm.thread.pointer() #9
  %385 = getelementptr inbounds %struct.thread_info, ptr %384, i32 0, i32 2
  %386 = load i32, ptr %385, align 8
  %387 = lshr i32 %386, 5
  %388 = getelementptr i32, ptr @__cpu_online_mask, i32 %387
  %389 = load volatile i32, ptr %388, align 4
  %390 = and i32 %386, 31
  %391 = shl nuw i32 1, %390
  %392 = and i32 %391, %389
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %383
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %395 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %380, i32 noundef %378, i32 noundef 817) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %396

396:                                              ; preds = %394, %383, %375
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %397 = getelementptr inbounds %struct.tegra_dc, ptr %376, i32 0, i32 8
  %398 = load ptr, ptr %397, align 8
  %399 = shl i32 %378, 2
  %400 = getelementptr i8, ptr %398, i32 %399
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 817) #9, !srcloc !16
  %401 = load ptr, ptr %92, align 8
  %402 = load i32, ptr %39, align 4
  %403 = add i32 %402, 104
  %404 = getelementptr inbounds %struct.tegra_dc, ptr %401, i32 0, i32 8
  %405 = load ptr, ptr %404, align 8
  %406 = shl i32 %403, 2
  %407 = getelementptr i8, ptr %405, i32 %406
  %408 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %407) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %409 = getelementptr inbounds %struct.tegra_dc, ptr %401, i32 0, i32 2
  %410 = load ptr, ptr %409, align 4
  %411 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %412 = icmp sgt i32 %411, 0
  br i1 %412, label %413, label %426

413:                                              ; preds = %396
  %414 = tail call ptr @llvm.thread.pointer() #9
  %415 = getelementptr inbounds %struct.thread_info, ptr %414, i32 0, i32 2
  %416 = load i32, ptr %415, align 8
  %417 = lshr i32 %416, 5
  %418 = getelementptr i32, ptr @__cpu_online_mask, i32 %417
  %419 = load volatile i32, ptr %418, align 4
  %420 = and i32 %416, 31
  %421 = shl nuw i32 1, %420
  %422 = and i32 %421, %419
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %426, label %424

424:                                              ; preds = %413
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %425 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %410, i32 noundef %403, i32 noundef %408) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %426

426:                                              ; preds = %424, %413, %396
  %427 = and i32 %408, -64
  %428 = load i32, ptr %7, align 4
  %429 = shl i32 %428, 1
  %430 = and i32 %429, 62
  %431 = or i32 %427, %430
  %432 = or i32 %431, 1
  %433 = load ptr, ptr %92, align 8
  %434 = load i32, ptr %39, align 4
  %435 = add i32 %434, 104
  %436 = getelementptr inbounds %struct.tegra_dc, ptr %433, i32 0, i32 2
  %437 = load ptr, ptr %436, align 4
  %438 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %453

440:                                              ; preds = %426
  %441 = tail call ptr @llvm.thread.pointer() #9
  %442 = getelementptr inbounds %struct.thread_info, ptr %441, i32 0, i32 2
  %443 = load i32, ptr %442, align 8
  %444 = lshr i32 %443, 5
  %445 = getelementptr i32, ptr @__cpu_online_mask, i32 %444
  %446 = load volatile i32, ptr %445, align 4
  %447 = and i32 %443, 31
  %448 = shl nuw i32 1, %447
  %449 = and i32 %448, %446
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %453, label %451

451:                                              ; preds = %440
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %452 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %437, i32 noundef %435, i32 noundef %432) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %453

453:                                              ; preds = %451, %440, %426
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %454 = getelementptr inbounds %struct.tegra_dc, ptr %433, i32 0, i32 8
  %455 = load ptr, ptr %454, align 8
  %456 = shl i32 %435, 2
  %457 = getelementptr i8, ptr %455, i32 %456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %457, i32 %432) #9, !srcloc !16
  br label %458

458:                                              ; preds = %496, %453
  %459 = phi i32 [ 0, %453 ], [ %497, %496 ]
  %460 = shl i32 %459, 2
  br label %461

461:                                              ; preds = %489, %458
  %462 = phi i32 [ 0, %458 ], [ %494, %489 ]
  %463 = add nuw nsw i32 %462, %460
  %464 = shl i32 %463, 15
  %465 = getelementptr [192 x i32], ptr @tegra_shared_plane_setup_scaler.coeffs, i32 0, i32 %463
  %466 = load i32, ptr %465, align 4
  %467 = and i32 %466, 1023
  %468 = or i32 %467, %464
  %469 = load ptr, ptr %92, align 8
  %470 = load i32, ptr %39, align 4
  %471 = add i32 %470, 399
  %472 = getelementptr inbounds %struct.tegra_dc, ptr %469, i32 0, i32 2
  %473 = load ptr, ptr %472, align 4
  %474 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %475 = icmp sgt i32 %474, 0
  br i1 %475, label %476, label %489

476:                                              ; preds = %461
  %477 = tail call ptr @llvm.thread.pointer() #9
  %478 = getelementptr inbounds %struct.thread_info, ptr %477, i32 0, i32 2
  %479 = load i32, ptr %478, align 8
  %480 = lshr i32 %479, 5
  %481 = getelementptr i32, ptr @__cpu_online_mask, i32 %480
  %482 = load volatile i32, ptr %481, align 4
  %483 = and i32 %479, 31
  %484 = shl nuw i32 1, %483
  %485 = and i32 %484, %482
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %489, label %487

487:                                              ; preds = %476
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %488 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %473, i32 noundef %471, i32 noundef %468) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %489

489:                                              ; preds = %487, %476, %461
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %490 = getelementptr inbounds %struct.tegra_dc, ptr %469, i32 0, i32 8
  %491 = load ptr, ptr %490, align 8
  %492 = shl i32 %471, 2
  %493 = getelementptr i8, ptr %491, i32 %492
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %493, i32 %468) #9, !srcloc !16
  %494 = add nuw nsw i32 %462, 1
  %495 = icmp eq i32 %494, 4
  br i1 %495, label %496, label %461

496:                                              ; preds = %489
  %497 = add nuw nsw i32 %459, 1
  %498 = icmp eq i32 %497, 16
  br i1 %498, label %499, label %458

499:                                              ; preds = %538, %496
  %500 = phi i32 [ %539, %538 ], [ 0, %496 ]
  %501 = shl i32 %500, 2
  %502 = add nuw nsw i32 %501, 64
  br label %503

503:                                              ; preds = %531, %499
  %504 = phi i32 [ 0, %499 ], [ %536, %531 ]
  %505 = add nuw nsw i32 %502, %504
  %506 = shl i32 %505, 15
  %507 = getelementptr [192 x i32], ptr @tegra_shared_plane_setup_scaler.coeffs, i32 0, i32 %505
  %508 = load i32, ptr %507, align 4
  %509 = and i32 %508, 1023
  %510 = or i32 %509, %506
  %511 = load ptr, ptr %92, align 8
  %512 = load i32, ptr %39, align 4
  %513 = add i32 %512, 399
  %514 = getelementptr inbounds %struct.tegra_dc, ptr %511, i32 0, i32 2
  %515 = load ptr, ptr %514, align 4
  %516 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %517 = icmp sgt i32 %516, 0
  br i1 %517, label %518, label %531

518:                                              ; preds = %503
  %519 = tail call ptr @llvm.thread.pointer() #9
  %520 = getelementptr inbounds %struct.thread_info, ptr %519, i32 0, i32 2
  %521 = load i32, ptr %520, align 8
  %522 = lshr i32 %521, 5
  %523 = getelementptr i32, ptr @__cpu_online_mask, i32 %522
  %524 = load volatile i32, ptr %523, align 4
  %525 = and i32 %521, 31
  %526 = shl nuw i32 1, %525
  %527 = and i32 %526, %524
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %531, label %529

529:                                              ; preds = %518
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %530 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %515, i32 noundef %513, i32 noundef %510) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %531

531:                                              ; preds = %529, %518, %503
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %532 = getelementptr inbounds %struct.tegra_dc, ptr %511, i32 0, i32 8
  %533 = load ptr, ptr %532, align 8
  %534 = shl i32 %513, 2
  %535 = getelementptr i8, ptr %533, i32 %534
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %535, i32 %510) #9, !srcloc !16
  %536 = add nuw nsw i32 %504, 1
  %537 = icmp eq i32 %536, 4
  br i1 %537, label %538, label %503

538:                                              ; preds = %531
  %539 = add nuw nsw i32 %500, 1
  %540 = icmp eq i32 %539, 16
  br i1 %540, label %541, label %499

541:                                              ; preds = %580, %538
  %542 = phi i32 [ %581, %580 ], [ 0, %538 ]
  %543 = shl i32 %542, 2
  %544 = add nuw nsw i32 %543, 128
  br label %545

545:                                              ; preds = %573, %541
  %546 = phi i32 [ 0, %541 ], [ %578, %573 ]
  %547 = add nuw nsw i32 %544, %546
  %548 = shl i32 %547, 15
  %549 = getelementptr [192 x i32], ptr @tegra_shared_plane_setup_scaler.coeffs, i32 0, i32 %547
  %550 = load i32, ptr %549, align 4
  %551 = and i32 %550, 1023
  %552 = or i32 %551, %548
  %553 = load ptr, ptr %92, align 8
  %554 = load i32, ptr %39, align 4
  %555 = add i32 %554, 399
  %556 = getelementptr inbounds %struct.tegra_dc, ptr %553, i32 0, i32 2
  %557 = load ptr, ptr %556, align 4
  %558 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %559 = icmp sgt i32 %558, 0
  br i1 %559, label %560, label %573

560:                                              ; preds = %545
  %561 = tail call ptr @llvm.thread.pointer() #9
  %562 = getelementptr inbounds %struct.thread_info, ptr %561, i32 0, i32 2
  %563 = load i32, ptr %562, align 8
  %564 = lshr i32 %563, 5
  %565 = getelementptr i32, ptr @__cpu_online_mask, i32 %564
  %566 = load volatile i32, ptr %565, align 4
  %567 = and i32 %563, 31
  %568 = shl nuw i32 1, %567
  %569 = and i32 %568, %566
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %573, label %571

571:                                              ; preds = %560
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %572 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %557, i32 noundef %555, i32 noundef %552) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %573

573:                                              ; preds = %571, %560, %545
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %574 = getelementptr inbounds %struct.tegra_dc, ptr %553, i32 0, i32 8
  %575 = load ptr, ptr %574, align 8
  %576 = shl i32 %555, 2
  %577 = getelementptr i8, ptr %575, i32 %576
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %577, i32 %552) #9, !srcloc !16
  %578 = add nuw nsw i32 %546, 1
  %579 = icmp eq i32 %578, 4
  br i1 %579, label %580, label %545

580:                                              ; preds = %573
  %581 = add nuw nsw i32 %542, 1
  %582 = icmp eq i32 %581, 16
  br i1 %582, label %583, label %541

583:                                              ; preds = %580
  %584 = load ptr, ptr %92, align 8
  %585 = load i32, ptr %7, align 4
  %586 = shl i32 512, %585
  %587 = or i32 %586, 131072
  %588 = getelementptr inbounds %struct.tegra_dc, ptr %584, i32 0, i32 2
  %589 = load ptr, ptr %588, align 4
  %590 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %591 = icmp sgt i32 %590, 0
  br i1 %591, label %592, label %605

592:                                              ; preds = %583
  %593 = tail call ptr @llvm.thread.pointer() #9
  %594 = getelementptr inbounds %struct.thread_info, ptr %593, i32 0, i32 2
  %595 = load i32, ptr %594, align 8
  %596 = lshr i32 %595, 5
  %597 = getelementptr i32, ptr @__cpu_online_mask, i32 %596
  %598 = load volatile i32, ptr %597, align 4
  %599 = and i32 %595, 31
  %600 = shl nuw i32 1, %599
  %601 = and i32 %600, %598
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %605, label %603

603:                                              ; preds = %592
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %604 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %589, i32 noundef 65, i32 noundef %587) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %605

605:                                              ; preds = %603, %592, %583
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %606 = getelementptr inbounds %struct.tegra_dc, ptr %584, i32 0, i32 8
  %607 = load ptr, ptr %606, align 8
  %608 = getelementptr i8, ptr %607, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %608, i32 %587) #9, !srcloc !16
  %609 = load volatile i32, ptr @jiffies, align 64
  %610 = sub i32 -100, %609
  %611 = load volatile i32, ptr @jiffies, align 64
  %612 = add i32 %610, %611
  %613 = icmp slt i32 %612, 0
  br i1 %613, label %614, label %641

614:                                              ; preds = %637, %605
  %615 = load ptr, ptr %606, align 8
  %616 = getelementptr i8, ptr %615, i32 260
  %617 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %616) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %618 = load ptr, ptr %588, align 4
  %619 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %620 = icmp sgt i32 %619, 0
  br i1 %620, label %621, label %634

621:                                              ; preds = %614
  %622 = tail call ptr @llvm.thread.pointer() #9
  %623 = getelementptr inbounds %struct.thread_info, ptr %622, i32 0, i32 2
  %624 = load i32, ptr %623, align 8
  %625 = lshr i32 %624, 5
  %626 = getelementptr i32, ptr @__cpu_online_mask, i32 %625
  %627 = load volatile i32, ptr %626, align 4
  %628 = and i32 %624, 31
  %629 = shl nuw i32 1, %628
  %630 = and i32 %629, %627
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %634, label %632

632:                                              ; preds = %621
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %633 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %618, i32 noundef 65, i32 noundef %617) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %634

634:                                              ; preds = %632, %621, %614
  %635 = and i32 %617, %587
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %641, label %637

637:                                              ; preds = %634
  call void @usleep_range_state(i32 noundef 100, i32 noundef 400, i32 noundef 2) #9
  %638 = load volatile i32, ptr @jiffies, align 64
  %639 = add i32 %638, %610
  %640 = icmp slt i32 %639, 0
  br i1 %640, label %614, label %641

641:                                              ; preds = %637, %634, %605
  %642 = load ptr, ptr %92, align 8
  %643 = load i32, ptr %7, align 4
  %644 = shl i32 2, %643
  %645 = or i32 %644, 65536
  %646 = getelementptr inbounds %struct.tegra_dc, ptr %642, i32 0, i32 2
  %647 = load ptr, ptr %646, align 4
  %648 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %649 = icmp sgt i32 %648, 0
  br i1 %649, label %650, label %663

650:                                              ; preds = %641
  %651 = tail call ptr @llvm.thread.pointer() #9
  %652 = getelementptr inbounds %struct.thread_info, ptr %651, i32 0, i32 2
  %653 = load i32, ptr %652, align 8
  %654 = lshr i32 %653, 5
  %655 = getelementptr i32, ptr @__cpu_online_mask, i32 %654
  %656 = load volatile i32, ptr %655, align 4
  %657 = and i32 %653, 31
  %658 = shl nuw i32 1, %657
  %659 = and i32 %658, %656
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %663, label %661

661:                                              ; preds = %650
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %662 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %647, i32 noundef 65, i32 noundef %645) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %663

663:                                              ; preds = %661, %650, %641
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %664 = getelementptr inbounds %struct.tegra_dc, ptr %642, i32 0, i32 8
  %665 = load ptr, ptr %664, align 8
  %666 = getelementptr i8, ptr %665, i32 260
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %666, i32 %645) #9, !srcloc !16
  %667 = load volatile i32, ptr @jiffies, align 64
  %668 = sub i32 -100, %667
  %669 = load volatile i32, ptr @jiffies, align 64
  %670 = add i32 %668, %669
  %671 = icmp slt i32 %670, 0
  br i1 %671, label %672, label %699

672:                                              ; preds = %695, %663
  %673 = load ptr, ptr %664, align 8
  %674 = getelementptr i8, ptr %673, i32 260
  %675 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %674) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %676 = load ptr, ptr %646, align 4
  %677 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %678 = icmp sgt i32 %677, 0
  br i1 %678, label %679, label %692

679:                                              ; preds = %672
  %680 = tail call ptr @llvm.thread.pointer() #9
  %681 = getelementptr inbounds %struct.thread_info, ptr %680, i32 0, i32 2
  %682 = load i32, ptr %681, align 8
  %683 = lshr i32 %682, 5
  %684 = getelementptr i32, ptr @__cpu_online_mask, i32 %683
  %685 = load volatile i32, ptr %684, align 4
  %686 = and i32 %682, 31
  %687 = shl nuw i32 1, %686
  %688 = and i32 %687, %685
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %692, label %690

690:                                              ; preds = %679
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %691 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %676, i32 noundef 65, i32 noundef %675) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %692

692:                                              ; preds = %690, %679, %672
  %693 = and i32 %675, %645
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %699, label %695

695:                                              ; preds = %692
  call void @usleep_range_state(i32 noundef 100, i32 noundef 400, i32 noundef 2) #9
  %696 = load volatile i32, ptr @jiffies, align 64
  %697 = add i32 %696, %668
  %698 = icmp slt i32 %697, 0
  br i1 %698, label %672, label %699

699:                                              ; preds = %695, %692, %663, %84
  %700 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  %701 = load ptr, ptr %700, align 8
  %702 = load i32, ptr %39, align 4
  %703 = add i32 %702, 14
  %704 = getelementptr inbounds %struct.tegra_dc, ptr %701, i32 0, i32 2
  %705 = load ptr, ptr %704, align 4
  %706 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %707 = icmp sgt i32 %706, 0
  br i1 %707, label %708, label %721

708:                                              ; preds = %699
  %709 = tail call ptr @llvm.thread.pointer() #9
  %710 = getelementptr inbounds %struct.thread_info, ptr %709, i32 0, i32 2
  %711 = load i32, ptr %710, align 8
  %712 = lshr i32 %711, 5
  %713 = getelementptr i32, ptr @__cpu_online_mask, i32 %712
  %714 = load volatile i32, ptr %713, align 4
  %715 = and i32 %711, 31
  %716 = shl nuw i32 1, %715
  %717 = and i32 %716, %714
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %721, label %719

719:                                              ; preds = %708
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %720 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %705, i32 noundef %703, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %721

721:                                              ; preds = %719, %708, %699
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %722 = getelementptr inbounds %struct.tegra_dc, ptr %701, i32 0, i32 8
  %723 = load ptr, ptr %722, align 8
  %724 = shl i32 %703, 2
  %725 = getelementptr i8, ptr %723, i32 %724
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %725, i32 0) #9, !srcloc !16
  %726 = load ptr, ptr %700, align 8
  %727 = load i32, ptr %39, align 4
  %728 = add i32 %727, 407
  %729 = getelementptr inbounds %struct.tegra_dc, ptr %726, i32 0, i32 2
  %730 = load ptr, ptr %729, align 4
  %731 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %732 = icmp sgt i32 %731, 0
  br i1 %732, label %733, label %746

733:                                              ; preds = %721
  %734 = tail call ptr @llvm.thread.pointer() #9
  %735 = getelementptr inbounds %struct.thread_info, ptr %734, i32 0, i32 2
  %736 = load i32, ptr %735, align 8
  %737 = lshr i32 %736, 5
  %738 = getelementptr i32, ptr @__cpu_online_mask, i32 %737
  %739 = load volatile i32, ptr %738, align 4
  %740 = and i32 %736, 31
  %741 = shl nuw i32 1, %740
  %742 = and i32 %741, %739
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %746, label %744

744:                                              ; preds = %733
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %745 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %730, i32 noundef %728, i32 noundef 613) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %746

746:                                              ; preds = %744, %733, %721
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %747 = getelementptr inbounds %struct.tegra_dc, ptr %726, i32 0, i32 8
  %748 = load ptr, ptr %747, align 8
  %749 = shl i32 %728, 2
  %750 = getelementptr i8, ptr %748, i32 %749
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %750, i32 613) #9, !srcloc !16
  %751 = load ptr, ptr %700, align 8
  %752 = load i32, ptr %39, align 4
  %753 = add i32 %752, 408
  %754 = getelementptr inbounds %struct.tegra_dc, ptr %751, i32 0, i32 2
  %755 = load ptr, ptr %754, align 4
  %756 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %757 = icmp sgt i32 %756, 0
  br i1 %757, label %758, label %771

758:                                              ; preds = %746
  %759 = tail call ptr @llvm.thread.pointer() #9
  %760 = getelementptr inbounds %struct.thread_info, ptr %759, i32 0, i32 2
  %761 = load i32, ptr %760, align 8
  %762 = lshr i32 %761, 5
  %763 = getelementptr i32, ptr @__cpu_online_mask, i32 %762
  %764 = load volatile i32, ptr %763, align 4
  %765 = and i32 %761, 31
  %766 = shl nuw i32 1, %765
  %767 = and i32 %766, %764
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %771, label %769

769:                                              ; preds = %758
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %770 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %755, i32 noundef %753, i32 noundef 613) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %771

771:                                              ; preds = %769, %758, %746
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %772 = getelementptr inbounds %struct.tegra_dc, ptr %751, i32 0, i32 8
  %773 = load ptr, ptr %772, align 8
  %774 = shl i32 %753, 2
  %775 = getelementptr i8, ptr %773, i32 %774
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %775, i32 613) #9, !srcloc !16
  %776 = sub i32 255, %17
  %777 = and i32 %776, 255
  %778 = or i32 %777, 16776960
  %779 = load ptr, ptr %700, align 8
  %780 = load i32, ptr %39, align 4
  %781 = add i32 %780, 406
  %782 = getelementptr inbounds %struct.tegra_dc, ptr %779, i32 0, i32 2
  %783 = load ptr, ptr %782, align 4
  %784 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %785 = icmp sgt i32 %784, 0
  br i1 %785, label %786, label %799

786:                                              ; preds = %771
  %787 = tail call ptr @llvm.thread.pointer() #9
  %788 = getelementptr inbounds %struct.thread_info, ptr %787, i32 0, i32 2
  %789 = load i32, ptr %788, align 8
  %790 = lshr i32 %789, 5
  %791 = getelementptr i32, ptr @__cpu_online_mask, i32 %790
  %792 = load volatile i32, ptr %791, align 4
  %793 = and i32 %789, 31
  %794 = shl nuw i32 1, %793
  %795 = and i32 %794, %792
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %799, label %797

797:                                              ; preds = %786
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %798 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %783, i32 noundef %781, i32 noundef %778) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %799

799:                                              ; preds = %797, %786, %771
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %800 = getelementptr inbounds %struct.tegra_dc, ptr %779, i32 0, i32 8
  %801 = load ptr, ptr %800, align 8
  %802 = shl i32 %781, 2
  %803 = getelementptr i8, ptr %801, i32 %802
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %803, i32 %778) #9, !srcloc !16
  %804 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 11
  %805 = load i32, ptr %804, align 4
  %806 = lshr i32 %805, 16
  %807 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 6
  %808 = load i32, ptr %807, align 4
  %809 = call i32 @llvm.umin.i32(i32 %806, i32 %808)
  %810 = load ptr, ptr %700, align 8
  %811 = load i32, ptr %39, align 4
  %812 = add i32 %811, 2
  %813 = getelementptr inbounds %struct.tegra_dc, ptr %810, i32 0, i32 8
  %814 = load ptr, ptr %813, align 8
  %815 = shl i32 %812, 2
  %816 = getelementptr i8, ptr %814, i32 %815
  %817 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %816) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %818 = getelementptr inbounds %struct.tegra_dc, ptr %810, i32 0, i32 2
  %819 = load ptr, ptr %818, align 4
  %820 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %821 = icmp sgt i32 %820, 0
  br i1 %821, label %822, label %835

822:                                              ; preds = %799
  %823 = tail call ptr @llvm.thread.pointer() #9
  %824 = getelementptr inbounds %struct.thread_info, ptr %823, i32 0, i32 2
  %825 = load i32, ptr %824, align 8
  %826 = lshr i32 %825, 5
  %827 = getelementptr i32, ptr @__cpu_online_mask, i32 %826
  %828 = load volatile i32, ptr %827, align 4
  %829 = and i32 %825, 31
  %830 = shl nuw i32 1, %829
  %831 = and i32 %830, %828
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %835, label %833

833:                                              ; preds = %822
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %834 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %819, i32 noundef %812, i32 noundef %817) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %835

835:                                              ; preds = %833, %822, %799
  %836 = and i32 %817, 65535
  %837 = icmp ult i32 %809, %836
  br i1 %837, label %869, label %838

838:                                              ; preds = %835
  %839 = load ptr, ptr %700, align 8
  %840 = load i32, ptr %39, align 4
  %841 = add i32 %840, 4
  %842 = getelementptr inbounds %struct.tegra_dc, ptr %839, i32 0, i32 8
  %843 = load ptr, ptr %842, align 8
  %844 = shl i32 %841, 2
  %845 = getelementptr i8, ptr %843, i32 %844
  %846 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %845) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %847 = getelementptr inbounds %struct.tegra_dc, ptr %839, i32 0, i32 2
  %848 = load ptr, ptr %847, align 4
  %849 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %850 = icmp sgt i32 %849, 0
  br i1 %850, label %851, label %864

851:                                              ; preds = %838
  %852 = tail call ptr @llvm.thread.pointer() #9
  %853 = getelementptr inbounds %struct.thread_info, ptr %852, i32 0, i32 2
  %854 = load i32, ptr %853, align 8
  %855 = lshr i32 %854, 5
  %856 = getelementptr i32, ptr @__cpu_online_mask, i32 %855
  %857 = load volatile i32, ptr %856, align 4
  %858 = and i32 %854, 31
  %859 = shl nuw i32 1, %858
  %860 = and i32 %859, %857
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %864, label %862

862:                                              ; preds = %851
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %863 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %848, i32 noundef %841, i32 noundef %846) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %864

864:                                              ; preds = %862, %851, %838
  %865 = and i32 %846, 65535
  %866 = icmp ult i32 %809, %865
  br i1 %866, label %869, label %867

867:                                              ; preds = %864
  %868 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %868, ptr noundef nonnull @.str.8, i32 noundef %809) #10
  br label %869

869:                                              ; preds = %867, %864, %835
  %870 = load ptr, ptr %700, align 8
  %871 = load i32, ptr %39, align 4
  %872 = add i32 %871, 398
  %873 = getelementptr inbounds %struct.tegra_dc, ptr %870, i32 0, i32 2
  %874 = load ptr, ptr %873, align 4
  %875 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %876 = icmp sgt i32 %875, 0
  br i1 %876, label %877, label %890

877:                                              ; preds = %869
  %878 = tail call ptr @llvm.thread.pointer() #9
  %879 = getelementptr inbounds %struct.thread_info, ptr %878, i32 0, i32 2
  %880 = load i32, ptr %879, align 8
  %881 = lshr i32 %880, 5
  %882 = getelementptr i32, ptr @__cpu_online_mask, i32 %881
  %883 = load volatile i32, ptr %882, align 4
  %884 = and i32 %880, 31
  %885 = shl nuw i32 1, %884
  %886 = and i32 %885, %883
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %890, label %888

888:                                              ; preds = %877
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %889 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %874, i32 noundef %872, i32 noundef 36) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %890

890:                                              ; preds = %888, %877, %869
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %891 = getelementptr inbounds %struct.tegra_dc, ptr %870, i32 0, i32 8
  %892 = load ptr, ptr %891, align 8
  %893 = shl i32 %872, 2
  %894 = getelementptr i8, ptr %892, i32 %893
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %894, i32 36) #9, !srcloc !16
  %895 = load i32, ptr %804, align 4
  %896 = load i32, ptr %807, align 4
  %897 = shl i32 %896, 16
  %898 = icmp eq i32 %895, %897
  br i1 %898, label %969, label %899

899:                                              ; preds = %890
  %900 = lshr i32 %895, 16
  %901 = zext i32 %900 to i64
  %902 = shl nuw nsw i64 %901, 24
  %903 = lshr i32 %896, 1
  %904 = zext i32 %903 to i64
  %905 = add nuw nsw i64 %902, %904
  %906 = icmp ult i64 %905, 4294967296
  br i1 %906, label %907, label %910, !prof !19

907:                                              ; preds = %899
  %908 = trunc i64 %905 to i32
  %909 = udiv i32 %908, %896
  br label %914

910:                                              ; preds = %899
  %911 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %896, i64 %905) #12, !srcloc !20
  %912 = extractvalue { i64, i64 } %911, 1
  %913 = trunc i64 %912 to i32
  br label %914

914:                                              ; preds = %910, %907
  %915 = phi i32 [ %909, %907 ], [ %913, %910 ]
  %916 = and i32 %915, -2
  %917 = lshr i32 %915, 1
  %918 = add nuw i32 %917, 8388608
  %919 = load ptr, ptr %700, align 8
  %920 = load i32, ptr %39, align 4
  %921 = add i32 %920, 395
  %922 = getelementptr inbounds %struct.tegra_dc, ptr %919, i32 0, i32 2
  %923 = load ptr, ptr %922, align 4
  %924 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %925 = icmp sgt i32 %924, 0
  br i1 %925, label %926, label %939

926:                                              ; preds = %914
  %927 = tail call ptr @llvm.thread.pointer() #9
  %928 = getelementptr inbounds %struct.thread_info, ptr %927, i32 0, i32 2
  %929 = load i32, ptr %928, align 8
  %930 = lshr i32 %929, 5
  %931 = getelementptr i32, ptr @__cpu_online_mask, i32 %930
  %932 = load volatile i32, ptr %931, align 4
  %933 = and i32 %929, 31
  %934 = shl nuw i32 1, %933
  %935 = and i32 %934, %932
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %939, label %937

937:                                              ; preds = %926
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %938 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %923, i32 noundef %921, i32 noundef %916) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %939

939:                                              ; preds = %937, %926, %914
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %940 = getelementptr inbounds %struct.tegra_dc, ptr %919, i32 0, i32 8
  %941 = load ptr, ptr %940, align 8
  %942 = shl i32 %921, 2
  %943 = getelementptr i8, ptr %941, i32 %942
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %943, i32 %916) #9, !srcloc !16
  %944 = load ptr, ptr %700, align 8
  %945 = load i32, ptr %39, align 4
  %946 = add i32 %945, 391
  %947 = getelementptr inbounds %struct.tegra_dc, ptr %944, i32 0, i32 2
  %948 = load ptr, ptr %947, align 4
  %949 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %950 = icmp sgt i32 %949, 0
  br i1 %950, label %951, label %964

951:                                              ; preds = %939
  %952 = tail call ptr @llvm.thread.pointer() #9
  %953 = getelementptr inbounds %struct.thread_info, ptr %952, i32 0, i32 2
  %954 = load i32, ptr %953, align 8
  %955 = lshr i32 %954, 5
  %956 = getelementptr i32, ptr @__cpu_online_mask, i32 %955
  %957 = load volatile i32, ptr %956, align 4
  %958 = and i32 %954, 31
  %959 = shl nuw i32 1, %958
  %960 = and i32 %959, %957
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %964, label %962

962:                                              ; preds = %951
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %963 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %948, i32 noundef %946, i32 noundef %918) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %964

964:                                              ; preds = %962, %951, %939
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %965 = getelementptr inbounds %struct.tegra_dc, ptr %944, i32 0, i32 8
  %966 = load ptr, ptr %965, align 8
  %967 = shl i32 %946, 2
  %968 = getelementptr i8, ptr %966, i32 %967
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %968, i32 %918) #9, !srcloc !16
  br label %969

969:                                              ; preds = %964, %890
  %970 = phi i32 [ 0, %964 ], [ 1, %890 ]
  %971 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 10
  %972 = load i32, ptr %971, align 4
  %973 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 7
  %974 = load i32, ptr %973, align 4
  %975 = shl i32 %974, 16
  %976 = icmp eq i32 %972, %975
  br i1 %976, label %1047, label %977

977:                                              ; preds = %969
  %978 = lshr i32 %972, 16
  %979 = zext i32 %978 to i64
  %980 = shl nuw nsw i64 %979, 24
  %981 = lshr i32 %974, 1
  %982 = zext i32 %981 to i64
  %983 = add nuw nsw i64 %980, %982
  %984 = icmp ult i64 %983, 4294967296
  br i1 %984, label %985, label %988, !prof !19

985:                                              ; preds = %977
  %986 = trunc i64 %983 to i32
  %987 = udiv i32 %986, %974
  br label %992

988:                                              ; preds = %977
  %989 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %974, i64 %983) #12, !srcloc !20
  %990 = extractvalue { i64, i64 } %989, 1
  %991 = trunc i64 %990 to i32
  br label %992

992:                                              ; preds = %988, %985
  %993 = phi i32 [ %987, %985 ], [ %991, %988 ]
  %994 = and i32 %993, -2
  %995 = lshr i32 %993, 1
  %996 = add nuw i32 %995, 8388608
  %997 = load ptr, ptr %700, align 8
  %998 = load i32, ptr %39, align 4
  %999 = add i32 %998, 396
  %1000 = getelementptr inbounds %struct.tegra_dc, ptr %997, i32 0, i32 2
  %1001 = load ptr, ptr %1000, align 4
  %1002 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1003 = icmp sgt i32 %1002, 0
  br i1 %1003, label %1004, label %1017

1004:                                             ; preds = %992
  %1005 = tail call ptr @llvm.thread.pointer() #9
  %1006 = getelementptr inbounds %struct.thread_info, ptr %1005, i32 0, i32 2
  %1007 = load i32, ptr %1006, align 8
  %1008 = lshr i32 %1007, 5
  %1009 = getelementptr i32, ptr @__cpu_online_mask, i32 %1008
  %1010 = load volatile i32, ptr %1009, align 4
  %1011 = and i32 %1007, 31
  %1012 = shl nuw i32 1, %1011
  %1013 = and i32 %1012, %1010
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1017, label %1015

1015:                                             ; preds = %1004
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1016 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1001, i32 noundef %999, i32 noundef %994) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1017

1017:                                             ; preds = %1015, %1004, %992
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1018 = getelementptr inbounds %struct.tegra_dc, ptr %997, i32 0, i32 8
  %1019 = load ptr, ptr %1018, align 8
  %1020 = shl i32 %999, 2
  %1021 = getelementptr i8, ptr %1019, i32 %1020
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1021, i32 %994) #9, !srcloc !16
  %1022 = load ptr, ptr %700, align 8
  %1023 = load i32, ptr %39, align 4
  %1024 = add i32 %1023, 392
  %1025 = getelementptr inbounds %struct.tegra_dc, ptr %1022, i32 0, i32 2
  %1026 = load ptr, ptr %1025, align 4
  %1027 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1028 = icmp sgt i32 %1027, 0
  br i1 %1028, label %1029, label %1042

1029:                                             ; preds = %1017
  %1030 = tail call ptr @llvm.thread.pointer() #9
  %1031 = getelementptr inbounds %struct.thread_info, ptr %1030, i32 0, i32 2
  %1032 = load i32, ptr %1031, align 8
  %1033 = lshr i32 %1032, 5
  %1034 = getelementptr i32, ptr @__cpu_online_mask, i32 %1033
  %1035 = load volatile i32, ptr %1034, align 4
  %1036 = and i32 %1032, 31
  %1037 = shl nuw i32 1, %1036
  %1038 = and i32 %1037, %1035
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1042, label %1040

1040:                                             ; preds = %1029
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1041 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1026, i32 noundef %1024, i32 noundef %996) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1042

1042:                                             ; preds = %1040, %1029, %1017
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1043 = getelementptr inbounds %struct.tegra_dc, ptr %1022, i32 0, i32 8
  %1044 = load ptr, ptr %1043, align 8
  %1045 = shl i32 %1024, 2
  %1046 = getelementptr i8, ptr %1044, i32 %1045
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1046, i32 %996) #9, !srcloc !16
  br label %1049

1047:                                             ; preds = %969
  %1048 = or i32 %970, 2
  br label %1049

1049:                                             ; preds = %1047, %1042
  %1050 = phi i32 [ %970, %1042 ], [ %1048, %1047 ]
  %1051 = load ptr, ptr %700, align 8
  %1052 = load i32, ptr %39, align 4
  %1053 = add i32 %1052, 401
  %1054 = getelementptr inbounds %struct.tegra_dc, ptr %1051, i32 0, i32 2
  %1055 = load ptr, ptr %1054, align 4
  %1056 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1057 = icmp sgt i32 %1056, 0
  br i1 %1057, label %1058, label %1071

1058:                                             ; preds = %1049
  %1059 = tail call ptr @llvm.thread.pointer() #9
  %1060 = getelementptr inbounds %struct.thread_info, ptr %1059, i32 0, i32 2
  %1061 = load i32, ptr %1060, align 8
  %1062 = lshr i32 %1061, 5
  %1063 = getelementptr i32, ptr @__cpu_online_mask, i32 %1062
  %1064 = load volatile i32, ptr %1063, align 4
  %1065 = and i32 %1061, 31
  %1066 = shl nuw i32 1, %1065
  %1067 = and i32 %1066, %1064
  %1068 = icmp eq i32 %1067, 0
  br i1 %1068, label %1071, label %1069

1069:                                             ; preds = %1058
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1070 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1055, i32 noundef %1053, i32 noundef %1050) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1071

1071:                                             ; preds = %1069, %1058, %1049
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1072 = getelementptr inbounds %struct.tegra_dc, ptr %1051, i32 0, i32 8
  %1073 = load ptr, ptr %1072, align 8
  %1074 = shl i32 %1053, 2
  %1075 = getelementptr i8, ptr %1073, i32 %1074
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1075, i32 %1050) #9, !srcloc !16
  %1076 = load ptr, ptr %700, align 8
  %1077 = load i32, ptr %39, align 4
  %1078 = add i32 %1077, 495
  %1079 = getelementptr inbounds %struct.tegra_dc, ptr %1076, i32 0, i32 2
  %1080 = load ptr, ptr %1079, align 4
  %1081 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1082 = icmp sgt i32 %1081, 0
  br i1 %1082, label %1083, label %1096

1083:                                             ; preds = %1071
  %1084 = tail call ptr @llvm.thread.pointer() #9
  %1085 = getelementptr inbounds %struct.thread_info, ptr %1084, i32 0, i32 2
  %1086 = load i32, ptr %1085, align 8
  %1087 = lshr i32 %1086, 5
  %1088 = getelementptr i32, ptr @__cpu_online_mask, i32 %1087
  %1089 = load volatile i32, ptr %1088, align 4
  %1090 = and i32 %1086, 31
  %1091 = shl nuw i32 1, %1090
  %1092 = and i32 %1091, %1089
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1096, label %1094

1094:                                             ; preds = %1083
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1095 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1080, i32 noundef %1078, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1096

1096:                                             ; preds = %1094, %1083, %1071
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1097 = getelementptr inbounds %struct.tegra_dc, ptr %1076, i32 0, i32 8
  %1098 = load ptr, ptr %1097, align 8
  %1099 = shl i32 %1078, 2
  %1100 = getelementptr i8, ptr %1098, i32 %1099
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1100, i32 0) #9, !srcloc !16
  %1101 = getelementptr inbounds %struct.tegra_plane_state, ptr %10, i32 0, i32 2
  %1102 = load i32, ptr %1101, align 4
  %1103 = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 7
  %1104 = load i32, ptr %1103, align 8
  %1105 = add i32 %1104, %1102
  %1106 = load i32, ptr %34, align 4
  %1107 = load ptr, ptr %700, align 8
  %1108 = load i32, ptr %39, align 4
  %1109 = add i32 %1108, 387
  %1110 = getelementptr inbounds %struct.tegra_dc, ptr %1107, i32 0, i32 2
  %1111 = load ptr, ptr %1110, align 4
  %1112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1113 = icmp sgt i32 %1112, 0
  br i1 %1113, label %1114, label %1127

1114:                                             ; preds = %1096
  %1115 = tail call ptr @llvm.thread.pointer() #9
  %1116 = getelementptr inbounds %struct.thread_info, ptr %1115, i32 0, i32 2
  %1117 = load i32, ptr %1116, align 8
  %1118 = lshr i32 %1117, 5
  %1119 = getelementptr i32, ptr @__cpu_online_mask, i32 %1118
  %1120 = load volatile i32, ptr %1119, align 4
  %1121 = and i32 %1117, 31
  %1122 = shl nuw i32 1, %1121
  %1123 = and i32 %1122, %1120
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1127, label %1125

1125:                                             ; preds = %1114
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1126 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1111, i32 noundef %1109, i32 noundef %1106) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1127

1127:                                             ; preds = %1125, %1114, %1096
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1128 = getelementptr inbounds %struct.tegra_dc, ptr %1107, i32 0, i32 8
  %1129 = load ptr, ptr %1128, align 8
  %1130 = shl i32 %1109, 2
  %1131 = getelementptr i8, ptr %1129, i32 %1130
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1131, i32 %1106) #9, !srcloc !16
  %1132 = load ptr, ptr %700, align 8
  %1133 = load i32, ptr %39, align 4
  %1134 = add i32 %1133, 420
  %1135 = getelementptr inbounds %struct.tegra_dc, ptr %1132, i32 0, i32 2
  %1136 = load ptr, ptr %1135, align 4
  %1137 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1138 = icmp sgt i32 %1137, 0
  br i1 %1138, label %1139, label %1152

1139:                                             ; preds = %1127
  %1140 = tail call ptr @llvm.thread.pointer() #9
  %1141 = getelementptr inbounds %struct.thread_info, ptr %1140, i32 0, i32 2
  %1142 = load i32, ptr %1141, align 8
  %1143 = lshr i32 %1142, 5
  %1144 = getelementptr i32, ptr @__cpu_online_mask, i32 %1143
  %1145 = load volatile i32, ptr %1144, align 4
  %1146 = and i32 %1142, 31
  %1147 = shl nuw i32 1, %1146
  %1148 = and i32 %1147, %1145
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1152, label %1150

1150:                                             ; preds = %1139
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1151 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1136, i32 noundef %1134, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1152

1152:                                             ; preds = %1150, %1139, %1127
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1153 = getelementptr inbounds %struct.tegra_dc, ptr %1132, i32 0, i32 8
  %1154 = load ptr, ptr %1153, align 8
  %1155 = shl i32 %1134, 2
  %1156 = getelementptr i8, ptr %1154, i32 %1155
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1156, i32 0) #9, !srcloc !16
  %1157 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 5
  %1158 = load i32, ptr %1157, align 4
  %1159 = shl i32 %1158, 16
  %1160 = and i32 %1159, 536805376
  %1161 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 4
  %1162 = load i32, ptr %1161, align 4
  %1163 = and i32 %1162, 8191
  %1164 = or i32 %1160, %1163
  %1165 = load ptr, ptr %700, align 8
  %1166 = load i32, ptr %39, align 4
  %1167 = add i32 %1166, 388
  %1168 = getelementptr inbounds %struct.tegra_dc, ptr %1165, i32 0, i32 2
  %1169 = load ptr, ptr %1168, align 4
  %1170 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1171 = icmp sgt i32 %1170, 0
  br i1 %1171, label %1172, label %1185

1172:                                             ; preds = %1152
  %1173 = tail call ptr @llvm.thread.pointer() #9
  %1174 = getelementptr inbounds %struct.thread_info, ptr %1173, i32 0, i32 2
  %1175 = load i32, ptr %1174, align 8
  %1176 = lshr i32 %1175, 5
  %1177 = getelementptr i32, ptr @__cpu_online_mask, i32 %1176
  %1178 = load volatile i32, ptr %1177, align 4
  %1179 = and i32 %1175, 31
  %1180 = shl nuw i32 1, %1179
  %1181 = and i32 %1180, %1178
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1185, label %1183

1183:                                             ; preds = %1172
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1184 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1169, i32 noundef %1167, i32 noundef %1164) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1185

1185:                                             ; preds = %1183, %1172, %1152
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1186 = getelementptr inbounds %struct.tegra_dc, ptr %1165, i32 0, i32 8
  %1187 = load ptr, ptr %1186, align 8
  %1188 = shl i32 %1167, 2
  %1189 = getelementptr i8, ptr %1187, i32 %1188
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1189, i32 %1164) #9, !srcloc !16
  %1190 = load i32, ptr %973, align 4
  %1191 = shl i32 %1190, 16
  %1192 = and i32 %1191, 536805376
  %1193 = load i32, ptr %807, align 4
  %1194 = and i32 %1193, 8191
  %1195 = or i32 %1192, %1194
  %1196 = load ptr, ptr %700, align 8
  %1197 = load i32, ptr %39, align 4
  %1198 = add i32 %1197, 389
  %1199 = getelementptr inbounds %struct.tegra_dc, ptr %1196, i32 0, i32 2
  %1200 = load ptr, ptr %1199, align 4
  %1201 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1202 = icmp sgt i32 %1201, 0
  br i1 %1202, label %1203, label %1216

1203:                                             ; preds = %1185
  %1204 = tail call ptr @llvm.thread.pointer() #9
  %1205 = getelementptr inbounds %struct.thread_info, ptr %1204, i32 0, i32 2
  %1206 = load i32, ptr %1205, align 8
  %1207 = lshr i32 %1206, 5
  %1208 = getelementptr i32, ptr @__cpu_online_mask, i32 %1207
  %1209 = load volatile i32, ptr %1208, align 4
  %1210 = and i32 %1206, 31
  %1211 = shl nuw i32 1, %1210
  %1212 = and i32 %1211, %1209
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1216, label %1214

1214:                                             ; preds = %1203
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1215 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1200, i32 noundef %1198, i32 noundef %1195) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1216

1216:                                             ; preds = %1214, %1203, %1185
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1217 = getelementptr inbounds %struct.tegra_dc, ptr %1196, i32 0, i32 8
  %1218 = load ptr, ptr %1217, align 8
  %1219 = shl i32 %1198, 2
  %1220 = getelementptr i8, ptr %1218, i32 %1219
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1220, i32 %1195) #9, !srcloc !16
  %1221 = load ptr, ptr %700, align 8
  %1222 = load i32, ptr %39, align 4
  %1223 = add i32 %1222, 384
  %1224 = getelementptr inbounds %struct.tegra_dc, ptr %1221, i32 0, i32 2
  %1225 = load ptr, ptr %1224, align 4
  %1226 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1227 = icmp sgt i32 %1226, 0
  br i1 %1227, label %1228, label %1241

1228:                                             ; preds = %1216
  %1229 = tail call ptr @llvm.thread.pointer() #9
  %1230 = getelementptr inbounds %struct.thread_info, ptr %1229, i32 0, i32 2
  %1231 = load i32, ptr %1230, align 8
  %1232 = lshr i32 %1231, 5
  %1233 = getelementptr i32, ptr @__cpu_online_mask, i32 %1232
  %1234 = load volatile i32, ptr %1233, align 4
  %1235 = and i32 %1231, 31
  %1236 = shl nuw i32 1, %1235
  %1237 = and i32 %1236, %1234
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1241, label %1239

1239:                                             ; preds = %1228
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1240 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1225, i32 noundef %1223, i32 noundef 1073741888) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1241

1241:                                             ; preds = %1239, %1228, %1216
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1242 = getelementptr inbounds %struct.tegra_dc, ptr %1221, i32 0, i32 8
  %1243 = load ptr, ptr %1242, align 8
  %1244 = shl i32 %1223, 2
  %1245 = getelementptr i8, ptr %1243, i32 %1244
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1245, i32 1073741888) #9, !srcloc !16
  %1246 = load i32, ptr %971, align 4
  %1247 = and i32 %1246, 536805376
  %1248 = load i32, ptr %804, align 4
  %1249 = lshr i32 %1248, 16
  %1250 = and i32 %1249, 8191
  %1251 = or i32 %1250, %1247
  %1252 = load ptr, ptr %700, align 8
  %1253 = load i32, ptr %39, align 4
  %1254 = add i32 %1253, 390
  %1255 = getelementptr inbounds %struct.tegra_dc, ptr %1252, i32 0, i32 2
  %1256 = load ptr, ptr %1255, align 4
  %1257 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1258 = icmp sgt i32 %1257, 0
  br i1 %1258, label %1259, label %1272

1259:                                             ; preds = %1241
  %1260 = tail call ptr @llvm.thread.pointer() #9
  %1261 = getelementptr inbounds %struct.thread_info, ptr %1260, i32 0, i32 2
  %1262 = load i32, ptr %1261, align 8
  %1263 = lshr i32 %1262, 5
  %1264 = getelementptr i32, ptr @__cpu_online_mask, i32 %1263
  %1265 = load volatile i32, ptr %1264, align 4
  %1266 = and i32 %1262, 31
  %1267 = shl nuw i32 1, %1266
  %1268 = and i32 %1267, %1265
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1272, label %1270

1270:                                             ; preds = %1259
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1271 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1256, i32 noundef %1254, i32 noundef %1251) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1272

1272:                                             ; preds = %1270, %1259, %1241
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1273 = getelementptr inbounds %struct.tegra_dc, ptr %1252, i32 0, i32 8
  %1274 = load ptr, ptr %1273, align 8
  %1275 = shl i32 %1254, 2
  %1276 = getelementptr i8, ptr %1274, i32 %1275
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1276, i32 %1251) #9, !srcloc !16
  %1277 = load ptr, ptr %700, align 8
  %1278 = load i32, ptr %39, align 4
  %1279 = add i32 %1278, 461
  %1280 = getelementptr inbounds %struct.tegra_dc, ptr %1277, i32 0, i32 2
  %1281 = load ptr, ptr %1280, align 4
  %1282 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1283 = icmp sgt i32 %1282, 0
  br i1 %1283, label %1284, label %1297

1284:                                             ; preds = %1272
  %1285 = tail call ptr @llvm.thread.pointer() #9
  %1286 = getelementptr inbounds %struct.thread_info, ptr %1285, i32 0, i32 2
  %1287 = load i32, ptr %1286, align 8
  %1288 = lshr i32 %1287, 5
  %1289 = getelementptr i32, ptr @__cpu_online_mask, i32 %1288
  %1290 = load volatile i32, ptr %1289, align 4
  %1291 = and i32 %1287, 31
  %1292 = shl nuw i32 1, %1291
  %1293 = and i32 %1292, %1290
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1297, label %1295

1295:                                             ; preds = %1284
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1296 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1281, i32 noundef %1279, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1297

1297:                                             ; preds = %1295, %1284, %1272
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1298 = getelementptr inbounds %struct.tegra_dc, ptr %1277, i32 0, i32 8
  %1299 = load ptr, ptr %1298, align 8
  %1300 = shl i32 %1279, 2
  %1301 = getelementptr i8, ptr %1299, i32 %1300
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1301, i32 0) #9, !srcloc !16
  %1302 = load ptr, ptr %700, align 8
  %1303 = load i32, ptr %39, align 4
  %1304 = add i32 %1303, 448
  %1305 = getelementptr inbounds %struct.tegra_dc, ptr %1302, i32 0, i32 2
  %1306 = load ptr, ptr %1305, align 4
  %1307 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1308 = icmp sgt i32 %1307, 0
  br i1 %1308, label %1309, label %1322

1309:                                             ; preds = %1297
  %1310 = tail call ptr @llvm.thread.pointer() #9
  %1311 = getelementptr inbounds %struct.thread_info, ptr %1310, i32 0, i32 2
  %1312 = load i32, ptr %1311, align 8
  %1313 = lshr i32 %1312, 5
  %1314 = getelementptr i32, ptr @__cpu_online_mask, i32 %1313
  %1315 = load volatile i32, ptr %1314, align 4
  %1316 = and i32 %1312, 31
  %1317 = shl nuw i32 1, %1316
  %1318 = and i32 %1317, %1315
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1322, label %1320

1320:                                             ; preds = %1309
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1321 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1306, i32 noundef %1304, i32 noundef %1105) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1322

1322:                                             ; preds = %1320, %1309, %1297
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1323 = getelementptr inbounds %struct.tegra_dc, ptr %1302, i32 0, i32 8
  %1324 = load ptr, ptr %1323, align 8
  %1325 = shl i32 %1304, 2
  %1326 = getelementptr i8, ptr %1324, i32 %1325
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1326, i32 %1105) #9, !srcloc !16
  %1327 = getelementptr inbounds %struct.drm_framebuffer, ptr %19, i32 0, i32 6
  %1328 = load i32, ptr %1327, align 8
  %1329 = lshr i32 %1328, 6
  %1330 = and i32 %1329, 8191
  %1331 = load ptr, ptr %700, align 8
  %1332 = load i32, ptr %39, align 4
  %1333 = add i32 %1332, 393
  %1334 = getelementptr inbounds %struct.tegra_dc, ptr %1331, i32 0, i32 2
  %1335 = load ptr, ptr %1334, align 4
  %1336 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1337 = icmp sgt i32 %1336, 0
  br i1 %1337, label %1338, label %1351

1338:                                             ; preds = %1322
  %1339 = tail call ptr @llvm.thread.pointer() #9
  %1340 = getelementptr inbounds %struct.thread_info, ptr %1339, i32 0, i32 2
  %1341 = load i32, ptr %1340, align 8
  %1342 = lshr i32 %1341, 5
  %1343 = getelementptr i32, ptr @__cpu_online_mask, i32 %1342
  %1344 = load volatile i32, ptr %1343, align 4
  %1345 = and i32 %1341, 31
  %1346 = shl nuw i32 1, %1345
  %1347 = and i32 %1346, %1344
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1351, label %1349

1349:                                             ; preds = %1338
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1350 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1335, i32 noundef %1333, i32 noundef %1330) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1351

1351:                                             ; preds = %1349, %1338, %1322
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1352 = getelementptr inbounds %struct.tegra_dc, ptr %1331, i32 0, i32 8
  %1353 = load ptr, ptr %1352, align 8
  %1354 = shl i32 %1333, 2
  %1355 = getelementptr i8, ptr %1353, i32 %1354
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1355, i32 %1330) #9, !srcloc !16
  %1356 = xor i1 %36, true
  %1357 = load i8, ptr %4, align 1
  %1358 = icmp eq i8 %1357, 0
  %1359 = select i1 %1356, i1 true, i1 %1358
  br i1 %1359, label %1501, label %1360

1360:                                             ; preds = %1351
  %1361 = getelementptr %struct.tegra_plane_state, ptr %10, i32 0, i32 2, i32 1
  %1362 = load i32, ptr %1361, align 4
  %1363 = getelementptr %struct.drm_framebuffer, ptr %19, i32 0, i32 7, i32 1
  %1364 = load i32, ptr %1363, align 4
  %1365 = add i32 %1364, %1362
  %1366 = load ptr, ptr %700, align 8
  %1367 = load i32, ptr %39, align 4
  %1368 = add i32 %1367, 463
  %1369 = getelementptr inbounds %struct.tegra_dc, ptr %1366, i32 0, i32 2
  %1370 = load ptr, ptr %1369, align 4
  %1371 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1372 = icmp sgt i32 %1371, 0
  br i1 %1372, label %1373, label %1386

1373:                                             ; preds = %1360
  %1374 = tail call ptr @llvm.thread.pointer() #9
  %1375 = getelementptr inbounds %struct.thread_info, ptr %1374, i32 0, i32 2
  %1376 = load i32, ptr %1375, align 8
  %1377 = lshr i32 %1376, 5
  %1378 = getelementptr i32, ptr @__cpu_online_mask, i32 %1377
  %1379 = load volatile i32, ptr %1378, align 4
  %1380 = and i32 %1376, 31
  %1381 = shl nuw i32 1, %1380
  %1382 = and i32 %1381, %1379
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1386, label %1384

1384:                                             ; preds = %1373
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1385 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1370, i32 noundef %1368, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1386

1386:                                             ; preds = %1384, %1373, %1360
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1387 = getelementptr inbounds %struct.tegra_dc, ptr %1366, i32 0, i32 8
  %1388 = load ptr, ptr %1387, align 8
  %1389 = shl i32 %1368, 2
  %1390 = getelementptr i8, ptr %1388, i32 %1389
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1390, i32 0) #9, !srcloc !16
  %1391 = load ptr, ptr %700, align 8
  %1392 = load i32, ptr %39, align 4
  %1393 = add i32 %1392, 450
  %1394 = getelementptr inbounds %struct.tegra_dc, ptr %1391, i32 0, i32 2
  %1395 = load ptr, ptr %1394, align 4
  %1396 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1397 = icmp sgt i32 %1396, 0
  br i1 %1397, label %1398, label %1411

1398:                                             ; preds = %1386
  %1399 = tail call ptr @llvm.thread.pointer() #9
  %1400 = getelementptr inbounds %struct.thread_info, ptr %1399, i32 0, i32 2
  %1401 = load i32, ptr %1400, align 8
  %1402 = lshr i32 %1401, 5
  %1403 = getelementptr i32, ptr @__cpu_online_mask, i32 %1402
  %1404 = load volatile i32, ptr %1403, align 4
  %1405 = and i32 %1401, 31
  %1406 = shl nuw i32 1, %1405
  %1407 = and i32 %1406, %1404
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1411, label %1409

1409:                                             ; preds = %1398
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1410 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1395, i32 noundef %1393, i32 noundef %1365) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1411

1411:                                             ; preds = %1409, %1398, %1386
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1412 = getelementptr inbounds %struct.tegra_dc, ptr %1391, i32 0, i32 8
  %1413 = load ptr, ptr %1412, align 8
  %1414 = shl i32 %1393, 2
  %1415 = getelementptr i8, ptr %1413, i32 %1414
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1415, i32 %1365) #9, !srcloc !16
  %1416 = getelementptr %struct.tegra_plane_state, ptr %10, i32 0, i32 2, i32 2
  %1417 = load i32, ptr %1416, align 4
  %1418 = getelementptr %struct.drm_framebuffer, ptr %19, i32 0, i32 7, i32 2
  %1419 = load i32, ptr %1418, align 8
  %1420 = add i32 %1419, %1417
  %1421 = load ptr, ptr %700, align 8
  %1422 = load i32, ptr %39, align 4
  %1423 = add i32 %1422, 465
  %1424 = getelementptr inbounds %struct.tegra_dc, ptr %1421, i32 0, i32 2
  %1425 = load ptr, ptr %1424, align 4
  %1426 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1427 = icmp sgt i32 %1426, 0
  br i1 %1427, label %1428, label %1441

1428:                                             ; preds = %1411
  %1429 = tail call ptr @llvm.thread.pointer() #9
  %1430 = getelementptr inbounds %struct.thread_info, ptr %1429, i32 0, i32 2
  %1431 = load i32, ptr %1430, align 8
  %1432 = lshr i32 %1431, 5
  %1433 = getelementptr i32, ptr @__cpu_online_mask, i32 %1432
  %1434 = load volatile i32, ptr %1433, align 4
  %1435 = and i32 %1431, 31
  %1436 = shl nuw i32 1, %1435
  %1437 = and i32 %1436, %1434
  %1438 = icmp eq i32 %1437, 0
  br i1 %1438, label %1441, label %1439

1439:                                             ; preds = %1428
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1440 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1425, i32 noundef %1423, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1441

1441:                                             ; preds = %1439, %1428, %1411
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1442 = getelementptr inbounds %struct.tegra_dc, ptr %1421, i32 0, i32 8
  %1443 = load ptr, ptr %1442, align 8
  %1444 = shl i32 %1423, 2
  %1445 = getelementptr i8, ptr %1443, i32 %1444
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1445, i32 0) #9, !srcloc !16
  %1446 = load ptr, ptr %700, align 8
  %1447 = load i32, ptr %39, align 4
  %1448 = add i32 %1447, 452
  %1449 = getelementptr inbounds %struct.tegra_dc, ptr %1446, i32 0, i32 2
  %1450 = load ptr, ptr %1449, align 4
  %1451 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1452 = icmp sgt i32 %1451, 0
  br i1 %1452, label %1453, label %1466

1453:                                             ; preds = %1441
  %1454 = tail call ptr @llvm.thread.pointer() #9
  %1455 = getelementptr inbounds %struct.thread_info, ptr %1454, i32 0, i32 2
  %1456 = load i32, ptr %1455, align 8
  %1457 = lshr i32 %1456, 5
  %1458 = getelementptr i32, ptr @__cpu_online_mask, i32 %1457
  %1459 = load volatile i32, ptr %1458, align 4
  %1460 = and i32 %1456, 31
  %1461 = shl nuw i32 1, %1460
  %1462 = and i32 %1461, %1459
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1466, label %1464

1464:                                             ; preds = %1453
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1465 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1450, i32 noundef %1448, i32 noundef %1420) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1466

1466:                                             ; preds = %1464, %1453, %1441
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1467 = getelementptr inbounds %struct.tegra_dc, ptr %1446, i32 0, i32 8
  %1468 = load ptr, ptr %1467, align 8
  %1469 = shl i32 %1448, 2
  %1470 = getelementptr i8, ptr %1468, i32 %1469
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1470, i32 %1420) #9, !srcloc !16
  %1471 = getelementptr %struct.drm_framebuffer, ptr %19, i32 0, i32 6, i32 2
  %1472 = load i32, ptr %1471, align 8
  %1473 = lshr i32 %1472, 6
  %1474 = and i32 %1473, 8191
  %1475 = mul nuw nsw i32 %1474, 65537
  %1476 = load ptr, ptr %700, align 8
  %1477 = load i32, ptr %39, align 4
  %1478 = add i32 %1477, 394
  %1479 = getelementptr inbounds %struct.tegra_dc, ptr %1476, i32 0, i32 2
  %1480 = load ptr, ptr %1479, align 4
  %1481 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1482 = icmp sgt i32 %1481, 0
  br i1 %1482, label %1483, label %1496

1483:                                             ; preds = %1466
  %1484 = tail call ptr @llvm.thread.pointer() #9
  %1485 = getelementptr inbounds %struct.thread_info, ptr %1484, i32 0, i32 2
  %1486 = load i32, ptr %1485, align 8
  %1487 = lshr i32 %1486, 5
  %1488 = getelementptr i32, ptr @__cpu_online_mask, i32 %1487
  %1489 = load volatile i32, ptr %1488, align 4
  %1490 = and i32 %1486, 31
  %1491 = shl nuw i32 1, %1490
  %1492 = and i32 %1491, %1489
  %1493 = icmp eq i32 %1492, 0
  br i1 %1493, label %1496, label %1494

1494:                                             ; preds = %1483
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1495 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1480, i32 noundef %1478, i32 noundef %1475) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1496

1496:                                             ; preds = %1494, %1483, %1466
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1497 = getelementptr inbounds %struct.tegra_dc, ptr %1476, i32 0, i32 8
  %1498 = load ptr, ptr %1497, align 8
  %1499 = shl i32 %1478, 2
  %1500 = getelementptr i8, ptr %1498, i32 %1499
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1500, i32 %1475) #9, !srcloc !16
  br label %1627

1501:                                             ; preds = %1351
  %1502 = load ptr, ptr %700, align 8
  %1503 = load i32, ptr %39, align 4
  %1504 = add i32 %1503, 450
  %1505 = getelementptr inbounds %struct.tegra_dc, ptr %1502, i32 0, i32 2
  %1506 = load ptr, ptr %1505, align 4
  %1507 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1508 = icmp sgt i32 %1507, 0
  br i1 %1508, label %1509, label %1522

1509:                                             ; preds = %1501
  %1510 = tail call ptr @llvm.thread.pointer() #9
  %1511 = getelementptr inbounds %struct.thread_info, ptr %1510, i32 0, i32 2
  %1512 = load i32, ptr %1511, align 8
  %1513 = lshr i32 %1512, 5
  %1514 = getelementptr i32, ptr @__cpu_online_mask, i32 %1513
  %1515 = load volatile i32, ptr %1514, align 4
  %1516 = and i32 %1512, 31
  %1517 = shl nuw i32 1, %1516
  %1518 = and i32 %1517, %1515
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1522, label %1520

1520:                                             ; preds = %1509
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1521 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1506, i32 noundef %1504, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1522

1522:                                             ; preds = %1520, %1509, %1501
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1523 = getelementptr inbounds %struct.tegra_dc, ptr %1502, i32 0, i32 8
  %1524 = load ptr, ptr %1523, align 8
  %1525 = shl i32 %1504, 2
  %1526 = getelementptr i8, ptr %1524, i32 %1525
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1526, i32 0) #9, !srcloc !16
  %1527 = load ptr, ptr %700, align 8
  %1528 = load i32, ptr %39, align 4
  %1529 = add i32 %1528, 463
  %1530 = getelementptr inbounds %struct.tegra_dc, ptr %1527, i32 0, i32 2
  %1531 = load ptr, ptr %1530, align 4
  %1532 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1533 = icmp sgt i32 %1532, 0
  br i1 %1533, label %1534, label %1547

1534:                                             ; preds = %1522
  %1535 = tail call ptr @llvm.thread.pointer() #9
  %1536 = getelementptr inbounds %struct.thread_info, ptr %1535, i32 0, i32 2
  %1537 = load i32, ptr %1536, align 8
  %1538 = lshr i32 %1537, 5
  %1539 = getelementptr i32, ptr @__cpu_online_mask, i32 %1538
  %1540 = load volatile i32, ptr %1539, align 4
  %1541 = and i32 %1537, 31
  %1542 = shl nuw i32 1, %1541
  %1543 = and i32 %1542, %1540
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1547, label %1545

1545:                                             ; preds = %1534
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1546 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1531, i32 noundef %1529, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1547

1547:                                             ; preds = %1545, %1534, %1522
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1548 = getelementptr inbounds %struct.tegra_dc, ptr %1527, i32 0, i32 8
  %1549 = load ptr, ptr %1548, align 8
  %1550 = shl i32 %1529, 2
  %1551 = getelementptr i8, ptr %1549, i32 %1550
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1551, i32 0) #9, !srcloc !16
  %1552 = load ptr, ptr %700, align 8
  %1553 = load i32, ptr %39, align 4
  %1554 = add i32 %1553, 452
  %1555 = getelementptr inbounds %struct.tegra_dc, ptr %1552, i32 0, i32 2
  %1556 = load ptr, ptr %1555, align 4
  %1557 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1558 = icmp sgt i32 %1557, 0
  br i1 %1558, label %1559, label %1572

1559:                                             ; preds = %1547
  %1560 = tail call ptr @llvm.thread.pointer() #9
  %1561 = getelementptr inbounds %struct.thread_info, ptr %1560, i32 0, i32 2
  %1562 = load i32, ptr %1561, align 8
  %1563 = lshr i32 %1562, 5
  %1564 = getelementptr i32, ptr @__cpu_online_mask, i32 %1563
  %1565 = load volatile i32, ptr %1564, align 4
  %1566 = and i32 %1562, 31
  %1567 = shl nuw i32 1, %1566
  %1568 = and i32 %1567, %1565
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1572, label %1570

1570:                                             ; preds = %1559
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1571 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1556, i32 noundef %1554, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1572

1572:                                             ; preds = %1570, %1559, %1547
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1573 = getelementptr inbounds %struct.tegra_dc, ptr %1552, i32 0, i32 8
  %1574 = load ptr, ptr %1573, align 8
  %1575 = shl i32 %1554, 2
  %1576 = getelementptr i8, ptr %1574, i32 %1575
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1576, i32 0) #9, !srcloc !16
  %1577 = load ptr, ptr %700, align 8
  %1578 = load i32, ptr %39, align 4
  %1579 = add i32 %1578, 465
  %1580 = getelementptr inbounds %struct.tegra_dc, ptr %1577, i32 0, i32 2
  %1581 = load ptr, ptr %1580, align 4
  %1582 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1583 = icmp sgt i32 %1582, 0
  br i1 %1583, label %1584, label %1597

1584:                                             ; preds = %1572
  %1585 = tail call ptr @llvm.thread.pointer() #9
  %1586 = getelementptr inbounds %struct.thread_info, ptr %1585, i32 0, i32 2
  %1587 = load i32, ptr %1586, align 8
  %1588 = lshr i32 %1587, 5
  %1589 = getelementptr i32, ptr @__cpu_online_mask, i32 %1588
  %1590 = load volatile i32, ptr %1589, align 4
  %1591 = and i32 %1587, 31
  %1592 = shl nuw i32 1, %1591
  %1593 = and i32 %1592, %1590
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1597, label %1595

1595:                                             ; preds = %1584
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1596 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1581, i32 noundef %1579, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1597

1597:                                             ; preds = %1595, %1584, %1572
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1598 = getelementptr inbounds %struct.tegra_dc, ptr %1577, i32 0, i32 8
  %1599 = load ptr, ptr %1598, align 8
  %1600 = shl i32 %1579, 2
  %1601 = getelementptr i8, ptr %1599, i32 %1600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1601, i32 0) #9, !srcloc !16
  %1602 = load ptr, ptr %700, align 8
  %1603 = load i32, ptr %39, align 4
  %1604 = add i32 %1603, 394
  %1605 = getelementptr inbounds %struct.tegra_dc, ptr %1602, i32 0, i32 2
  %1606 = load ptr, ptr %1605, align 4
  %1607 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1608 = icmp sgt i32 %1607, 0
  br i1 %1608, label %1609, label %1622

1609:                                             ; preds = %1597
  %1610 = tail call ptr @llvm.thread.pointer() #9
  %1611 = getelementptr inbounds %struct.thread_info, ptr %1610, i32 0, i32 2
  %1612 = load i32, ptr %1611, align 8
  %1613 = lshr i32 %1612, 5
  %1614 = getelementptr i32, ptr @__cpu_online_mask, i32 %1613
  %1615 = load volatile i32, ptr %1614, align 4
  %1616 = and i32 %1612, 31
  %1617 = shl nuw i32 1, %1616
  %1618 = and i32 %1617, %1615
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1622, label %1620

1620:                                             ; preds = %1609
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1621 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1606, i32 noundef %1604, i32 noundef 0) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1622

1622:                                             ; preds = %1620, %1609, %1597
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1623 = getelementptr inbounds %struct.tegra_dc, ptr %1602, i32 0, i32 8
  %1624 = load ptr, ptr %1623, align 8
  %1625 = shl i32 %1604, 2
  %1626 = getelementptr i8, ptr %1624, i32 %1625
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1626, i32 0) #9, !srcloc !16
  br label %1627

1627:                                             ; preds = %1622, %1496
  br i1 %36, label %1628, label %1632

1628:                                             ; preds = %1627
  %1629 = load i32, ptr %3, align 4
  %1630 = icmp ult i32 %1629, 12
  %1631 = select i1 %1630, i32 51968, i32 60160
  br label %1636

1632:                                             ; preds = %1627
  %1633 = load i32, ptr %34, align 4
  %1634 = call zeroext i1 @tegra_plane_format_is_indexed(i32 noundef %1633) #9
  %1635 = select i1 %1634, i32 34816, i32 43008
  br label %1636

1636:                                             ; preds = %1632, %1628
  %1637 = phi i32 [ %1631, %1628 ], [ %1635, %1632 ]
  %1638 = load ptr, ptr %700, align 8
  %1639 = load i32, ptr %39, align 4
  %1640 = add i32 %1639, 397
  %1641 = getelementptr inbounds %struct.tegra_dc, ptr %1638, i32 0, i32 2
  %1642 = load ptr, ptr %1641, align 4
  %1643 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1644 = icmp sgt i32 %1643, 0
  br i1 %1644, label %1645, label %1658

1645:                                             ; preds = %1636
  %1646 = tail call ptr @llvm.thread.pointer() #9
  %1647 = getelementptr inbounds %struct.thread_info, ptr %1646, i32 0, i32 2
  %1648 = load i32, ptr %1647, align 8
  %1649 = lshr i32 %1648, 5
  %1650 = getelementptr i32, ptr @__cpu_online_mask, i32 %1649
  %1651 = load volatile i32, ptr %1650, align 4
  %1652 = and i32 %1648, 31
  %1653 = shl nuw i32 1, %1652
  %1654 = and i32 %1653, %1651
  %1655 = icmp eq i32 %1654, 0
  br i1 %1655, label %1658, label %1656

1656:                                             ; preds = %1645
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1657 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1642, i32 noundef %1640, i32 noundef %1637) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1658

1658:                                             ; preds = %1656, %1645, %1636
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1659 = getelementptr inbounds %struct.tegra_dc, ptr %1638, i32 0, i32 8
  %1660 = load ptr, ptr %1659, align 8
  %1661 = shl i32 %1640, 2
  %1662 = getelementptr i8, ptr %1660, i32 %1661
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1662, i32 %1637) #9, !srcloc !16
  %1663 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 9
  %1664 = load i32, ptr %1663, align 4
  %1665 = lshr i32 %1664, 16
  %1666 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 8
  %1667 = load i32, ptr %1666, align 4
  %1668 = and i32 %1667, -65536
  %1669 = or i32 %1668, %1665
  %1670 = load ptr, ptr %700, align 8
  %1671 = load i32, ptr %39, align 4
  %1672 = add i32 %1671, 454
  %1673 = getelementptr inbounds %struct.tegra_dc, ptr %1670, i32 0, i32 2
  %1674 = load ptr, ptr %1673, align 4
  %1675 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1676 = icmp sgt i32 %1675, 0
  br i1 %1676, label %1677, label %1690

1677:                                             ; preds = %1658
  %1678 = tail call ptr @llvm.thread.pointer() #9
  %1679 = getelementptr inbounds %struct.thread_info, ptr %1678, i32 0, i32 2
  %1680 = load i32, ptr %1679, align 8
  %1681 = lshr i32 %1680, 5
  %1682 = getelementptr i32, ptr @__cpu_online_mask, i32 %1681
  %1683 = load volatile i32, ptr %1682, align 4
  %1684 = and i32 %1680, 31
  %1685 = shl nuw i32 1, %1684
  %1686 = and i32 %1685, %1683
  %1687 = icmp eq i32 %1686, 0
  br i1 %1687, label %1690, label %1688

1688:                                             ; preds = %1677
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1689 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1674, i32 noundef %1672, i32 noundef %1669) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1690

1690:                                             ; preds = %1688, %1677, %1658
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1691 = getelementptr inbounds %struct.tegra_dc, ptr %1670, i32 0, i32 8
  %1692 = load ptr, ptr %1691, align 8
  %1693 = shl i32 %1672, 2
  %1694 = getelementptr i8, ptr %1692, i32 %1693
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1694, i32 %1669) #9, !srcloc !16
  %1695 = getelementptr inbounds %struct.tegra_dc, ptr %15, i32 0, i32 14
  %1696 = load ptr, ptr %1695, align 8
  %1697 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %1696, i32 0, i32 3
  %1698 = load i8, ptr %1697, align 1, !range !8
  %1699 = icmp eq i8 %1698, 0
  br i1 %1699, label %1738, label %1700

1700:                                             ; preds = %1690
  %1701 = getelementptr inbounds %struct.tegra_plane_state, ptr %10, i32 0, i32 3
  %1702 = load i32, ptr %1701, align 4
  switch i32 %1702, label %1711 [
    i32 0, label %1703
    i32 1, label %1704
    i32 2, label %1705
  ]

1703:                                             ; preds = %1700
  br label %1711

1704:                                             ; preds = %1700
  br label %1711

1705:                                             ; preds = %1700
  %1706 = getelementptr inbounds %struct.tegra_plane_state, ptr %10, i32 0, i32 3, i32 1
  %1707 = load i32, ptr %1706, align 4
  %1708 = shl i32 %1707, 4
  %1709 = and i32 %1708, 112
  %1710 = or i32 %1709, 2
  br label %1711

1711:                                             ; preds = %1705, %1704, %1703, %1700
  %1712 = phi i32 [ %1669, %1700 ], [ %1710, %1705 ], [ %1702, %1704 ], [ %1702, %1703 ]
  %1713 = load ptr, ptr %700, align 8
  %1714 = load i32, ptr %39, align 4
  %1715 = add i32 %1714, 459
  %1716 = getelementptr inbounds %struct.tegra_dc, ptr %1713, i32 0, i32 2
  %1717 = load ptr, ptr %1716, align 4
  %1718 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1719 = icmp sgt i32 %1718, 0
  br i1 %1719, label %1720, label %1733

1720:                                             ; preds = %1711
  %1721 = tail call ptr @llvm.thread.pointer() #9
  %1722 = getelementptr inbounds %struct.thread_info, ptr %1721, i32 0, i32 2
  %1723 = load i32, ptr %1722, align 8
  %1724 = lshr i32 %1723, 5
  %1725 = getelementptr i32, ptr @__cpu_online_mask, i32 %1724
  %1726 = load volatile i32, ptr %1725, align 4
  %1727 = and i32 %1723, 31
  %1728 = shl nuw i32 1, %1727
  %1729 = and i32 %1728, %1726
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1733, label %1731

1731:                                             ; preds = %1720
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1732 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1717, i32 noundef %1715, i32 noundef %1712) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1733

1733:                                             ; preds = %1731, %1720, %1711
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1734 = getelementptr inbounds %struct.tegra_dc, ptr %1713, i32 0, i32 8
  %1735 = load ptr, ptr %1734, align 8
  %1736 = shl i32 %1715, 2
  %1737 = getelementptr i8, ptr %1735, i32 %1736
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1737, i32 %1712) #9, !srcloc !16
  br label %1738

1738:                                             ; preds = %1733, %1690
  %1739 = load ptr, ptr %700, align 8
  %1740 = load i32, ptr %39, align 4
  %1741 = add i32 %1740, 432
  %1742 = getelementptr inbounds %struct.tegra_dc, ptr %1739, i32 0, i32 8
  %1743 = load ptr, ptr %1742, align 8
  %1744 = shl i32 %1741, 2
  %1745 = getelementptr i8, ptr %1743, i32 %1744
  %1746 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1745) #9, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %1747 = getelementptr inbounds %struct.tegra_dc, ptr %1739, i32 0, i32 2
  %1748 = load ptr, ptr %1747, align 4
  %1749 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %1750 = icmp sgt i32 %1749, 0
  br i1 %1750, label %1751, label %1764

1751:                                             ; preds = %1738
  %1752 = tail call ptr @llvm.thread.pointer() #9
  %1753 = getelementptr inbounds %struct.thread_info, ptr %1752, i32 0, i32 2
  %1754 = load i32, ptr %1753, align 8
  %1755 = lshr i32 %1754, 5
  %1756 = getelementptr i32, ptr @__cpu_online_mask, i32 %1755
  %1757 = load volatile i32, ptr %1756, align 4
  %1758 = and i32 %1754, 31
  %1759 = shl nuw i32 1, %1758
  %1760 = and i32 %1759, %1757
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1764, label %1762

1762:                                             ; preds = %1751
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %1763 = call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %1748, i32 noundef %1741, i32 noundef %1746) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %1764

1764:                                             ; preds = %1762, %1751, %1738
  %1765 = and i32 %1746, -33
  %1766 = load ptr, ptr %700, align 8
  %1767 = load i32, ptr %39, align 4
  %1768 = add i32 %1767, 432
  %1769 = getelementptr inbounds %struct.tegra_dc, ptr %1766, i32 0, i32 2
  %1770 = load ptr, ptr %1769, align 4
  %1771 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %1772 = icmp sgt i32 %1771, 0
  br i1 %1772, label %1773, label %1786

1773:                                             ; preds = %1764
  %1774 = tail call ptr @llvm.thread.pointer() #9
  %1775 = getelementptr inbounds %struct.thread_info, ptr %1774, i32 0, i32 2
  %1776 = load i32, ptr %1775, align 8
  %1777 = lshr i32 %1776, 5
  %1778 = getelementptr i32, ptr @__cpu_online_mask, i32 %1777
  %1779 = load volatile i32, ptr %1778, align 4
  %1780 = and i32 %1776, 31
  %1781 = shl nuw i32 1, %1780
  %1782 = and i32 %1781, %1779
  %1783 = icmp eq i32 %1782, 0
  br i1 %1783, label %1786, label %1784

1784:                                             ; preds = %1773
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %1785 = call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %1770, i32 noundef %1768, i32 noundef %1765) #9
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %1786

1786:                                             ; preds = %1784, %1773, %1764
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  call void @arm_heavy_mb() #9
  %1787 = getelementptr inbounds %struct.tegra_dc, ptr %1766, i32 0, i32 8
  %1788 = load ptr, ptr %1787, align 8
  %1789 = shl i32 %1768, 2
  %1790 = getelementptr i8, ptr %1788, i32 %1789
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1790, i32 %1765) #9, !srcloc !16
  %1791 = call i32 @host1x_client_suspend(ptr noundef %15) #9
  br label %1792

1792:                                             ; preds = %1786, %30, %26, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_shared_plane_atomic_disable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.__drm_planes_state, ptr %4, i32 %6, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %82, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %82, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -104
  %16 = tail call i32 @host1x_client_resume(ptr noundef %15) #9
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %12, i32 -4
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %16) #10
  br label %82

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !17

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 507, i32 noundef 9, ptr noundef null) #9
  store ptr %15, ptr %22, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi ptr [ %23, %21 ], [ %15, %25 ]
  %28 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 384
  %31 = getelementptr inbounds %struct.tegra_dc, ptr %27, i32 0, i32 8
  %32 = load ptr, ptr %31, align 8
  %33 = shl i32 %30, 2
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %36 = getelementptr inbounds %struct.tegra_dc, ptr %27, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %26
  %41 = tail call ptr @llvm.thread.pointer() #9
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %52 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %37, i32 noundef %30, i32 noundef %35) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %53

53:                                               ; preds = %51, %40, %26
  %54 = and i32 %35, -1073741825
  %55 = load ptr, ptr %22, align 8
  %56 = load i32, ptr %28, align 4
  %57 = add i32 %56, 384
  %58 = getelementptr inbounds %struct.tegra_dc, ptr %55, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %53
  %63 = tail call ptr @llvm.thread.pointer() #9
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 2
  %65 = load i32, ptr %64, align 8
  %66 = lshr i32 %65, 5
  %67 = getelementptr i32, ptr @__cpu_online_mask, i32 %66
  %68 = load volatile i32, ptr %67, align 4
  %69 = and i32 %65, 31
  %70 = shl nuw i32 1, %69
  %71 = and i32 %70, %68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %74 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %59, i32 noundef %57, i32 noundef %54) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %75

75:                                               ; preds = %73, %62, %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %76 = getelementptr inbounds %struct.tegra_dc, ptr %55, i32 0, i32 8
  %77 = load ptr, ptr %76, align 8
  %78 = shl i32 %57, 2
  %79 = getelementptr i8, ptr %77, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %54) #9, !srcloc !16
  %80 = tail call fastcc i32 @tegra_shared_plane_set_owner(ptr noundef %0, ptr noundef null) #9
  %81 = tail call i32 @host1x_client_suspend(ptr noundef %15) #9
  br label %82

82:                                               ; preds = %75, %18, %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_format(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fb_get_tiling(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_plane_state_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_plane_format_is_yuv(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_plane_format_is_indexed(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tegra_shared_plane_set_owner(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 386
  %6 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %1, null
  %9 = select i1 %8, ptr %1, ptr %7
  %10 = getelementptr inbounds %struct.tegra_dc, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tegra_plane, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.tegra_dc, ptr %9, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = shl i32 %5, 2
  %17 = getelementptr i8, ptr %15, i32 %16
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %19 = load ptr, ptr %10, align 4
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = tail call ptr @llvm.thread.pointer() #9
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !11
  %34 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %19, i32 noundef %5, i32 noundef %18) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %35

35:                                               ; preds = %33, %22, %2
  %36 = and i32 %18, 15
  %37 = icmp ne i32 %36, 15
  %38 = select i1 %8, i1 %37, i1 false
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %36, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %39
  %44 = tail call ptr @dev_driver_string(ptr noundef %11) #9
  %45 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load ptr, ptr %11, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %49, %48 ], [ %46, %43 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 270, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %44, ptr noundef %51, i32 noundef %13, i32 noundef %36) #9
  br label %82

52:                                               ; preds = %39, %35
  br i1 %8, label %53, label %59

53:                                               ; preds = %52
  %54 = and i32 %18, -16
  %55 = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 15
  %58 = or i32 %57, %54
  br label %61

59:                                               ; preds = %52
  %60 = or i32 %18, 15
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi i32 [ %58, %53 ], [ %60, %59 ]
  %63 = load ptr, ptr %10, align 4
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = tail call ptr @llvm.thread.pointer() #9
  %68 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 5
  %71 = getelementptr i32, ptr @__cpu_online_mask, i32 %70
  %72 = load volatile i32, ptr %71, align 4
  %73 = and i32 %69, 31
  %74 = shl nuw i32 1, %73
  %75 = and i32 %74, %72
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %66
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !13
  %78 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %63, i32 noundef %5, i32 noundef %62) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !14
  br label %79

79:                                               ; preds = %77, %66, %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !15
  tail call void @arm_heavy_mb() #9
  %80 = load ptr, ptr %14, align 8
  %81 = getelementptr i8, ptr %80, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %62) #9, !srcloc !16
  store ptr %1, ptr %6, align 8
  br label %82

82:                                               ; preds = %79, %50
  %83 = phi i32 [ -16, %50 ], [ 0, %79 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_private_obj_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_get_child_count(ptr noundef %0) unnamed_addr #7 {
  %2 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %7, %4 ], [ 0, %1 ]
  %6 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %7 = add i32 %5, 1
  %8 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %6) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_get_clk_from_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__host1x_client_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__host1x_client_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_client_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 -48
  tail call void @drm_atomic_private_obj_init(ptr noundef %5, ptr noundef %12, ptr noundef nonnull %9, ptr noundef nonnull @tegra_display_hub_state_funcs) #9
  %13 = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 13
  store ptr %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ 0, %11 ], [ -12, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_exit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 4
  tail call void @drm_atomic_private_obj_fini(ptr noundef %9) #9
  store ptr null, ptr %8, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 112
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 108
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @reset_control_assert(ptr noundef %7) #9
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = icmp eq i32 %5, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %0, i32 116
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ %5, %12 ], [ %16, %14 ]
  %16 = add i32 %15, -1
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr ptr, ptr %17, i32 %16
  %19 = load ptr, ptr %18, align 4
  tail call void @clk_disable(ptr noundef %19) #9
  tail call void @clk_unprepare(ptr noundef %19) #9
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %21, label %14

21:                                               ; preds = %14, %10
  %22 = getelementptr i8, ptr %0, i32 104
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #9
  tail call void @clk_unprepare(ptr noundef %23) #9
  %24 = getelementptr i8, ptr %0, i32 100
  %25 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %25) #9
  tail call void @clk_unprepare(ptr noundef %25) #9
  %26 = getelementptr i8, ptr %0, i32 96
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %27) #9
  tail call void @clk_unprepare(ptr noundef %27) #9
  %28 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #9
  br label %29

29:                                               ; preds = %21, %1
  %30 = phi i32 [ 0, %21 ], [ %8, %1 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_display_hub_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.host1x_client, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #9, !srcloc !22
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #9, !srcloc !23
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !24
  br label %12

12:                                               ; preds = %11, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %4) #10
  br label %103

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 96
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_prepare(ptr noundef %15) #9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = tail call i32 @clk_enable(ptr noundef %15) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %15) #9
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi i32 [ %16, %13 ], [ %19, %21 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %100, label %25

25:                                               ; preds = %22, %18
  %26 = getelementptr i8, ptr %0, i32 100
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @clk_prepare(ptr noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = tail call i32 @clk_enable(ptr noundef %27) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %27) #9
  br label %34

34:                                               ; preds = %33, %25
  %35 = phi i32 [ %28, %25 ], [ %31, %33 ]
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %97, label %37

37:                                               ; preds = %34, %30
  %38 = getelementptr i8, ptr %0, i32 104
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 @clk_prepare(ptr noundef %39) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = tail call i32 @clk_enable(ptr noundef %39) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %39) #9
  br label %46

46:                                               ; preds = %45, %37
  %47 = phi i32 [ %40, %37 ], [ %43, %45 ]
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %94, label %49

49:                                               ; preds = %46, %42
  %50 = getelementptr i8, ptr %0, i32 112
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %0, i32 116
  br label %55

55:                                               ; preds = %69, %53
  %56 = phi i32 [ 0, %53 ], [ %70, %69 ]
  %57 = load ptr, ptr %54, align 4
  %58 = getelementptr ptr, ptr %57, i32 %56
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @clk_prepare(ptr noundef %59) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = tail call i32 @clk_enable(ptr noundef %59) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  tail call void @clk_unprepare(ptr noundef %59) #9
  br label %66

66:                                               ; preds = %65, %55
  %67 = phi i32 [ %60, %55 ], [ %63, %65 ]
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66, %62
  %70 = add nuw i32 %56, 1
  %71 = load i32, ptr %50, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %55, label %73

73:                                               ; preds = %69, %49
  %74 = phi i32 [ 0, %49 ], [ %70, %69 ]
  %75 = getelementptr i8, ptr %0, i32 108
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 @reset_control_deassert(ptr noundef %76) #9
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %73, %66
  %80 = phi i32 [ %74, %73 ], [ %56, %66 ]
  %81 = phi i32 [ %77, %73 ], [ %67, %66 ]
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %0, i32 116
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i32 [ %80, %83 ], [ %87, %85 ]
  %87 = add i32 %86, -1
  %88 = load ptr, ptr %84, align 4
  %89 = getelementptr ptr, ptr %88, i32 %87
  %90 = load ptr, ptr %89, align 4
  tail call void @clk_disable(ptr noundef %90) #9
  tail call void @clk_unprepare(ptr noundef %90) #9
  %91 = icmp eq i32 %87, 0
  br i1 %91, label %92, label %85

92:                                               ; preds = %85, %79
  %93 = load ptr, ptr %38, align 4
  tail call void @clk_disable(ptr noundef %93) #9
  tail call void @clk_unprepare(ptr noundef %93) #9
  br label %94

94:                                               ; preds = %92, %46
  %95 = phi i32 [ %47, %46 ], [ %81, %92 ]
  %96 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %96) #9
  tail call void @clk_unprepare(ptr noundef %96) #9
  br label %97

97:                                               ; preds = %94, %34
  %98 = phi i32 [ %35, %34 ], [ %95, %94 ]
  %99 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %99) #9
  tail call void @clk_unprepare(ptr noundef %99) #9
  br label %100

100:                                              ; preds = %97, %22
  %101 = phi i32 [ %23, %22 ], [ %98, %97 ]
  %102 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 4) #9
  br label %103

103:                                              ; preds = %100, %73, %12
  %104 = phi i32 [ %4, %12 ], [ %101, %100 ], [ 0, %73 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra_display_hub_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_private_obj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 16, i32 noundef 3264) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef %0, ptr noundef nonnull %4) #9
  br label %7

7:                                                ; preds = %6, %1
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_display_hub_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_private_obj_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_private_obj_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 5655116}
!10 = !{i64 2155776569}
!11 = !{i64 2155589546}
!12 = !{i64 2155589710}
!13 = !{i64 2155573611}
!14 = !{i64 2155573777}
!15 = !{i64 2155775905}
!16 = !{i64 5654698}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{!"auto-init"}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2148387516, i64 2148387796, i64 2148388130, i64 2148388464}
!21 = !{i64 2147973843}
!22 = !{i64 472153, i64 2147962124, i64 2147962150, i64 2147962197, i64 2147962219, i64 2147962247, i64 2147962267}
!23 = !{i64 458722, i64 458747, i64 458769, i64 458785, i64 458797, i64 458817, i64 458841, i64 458857, i64 458869}
!24 = !{i64 2147973969}
