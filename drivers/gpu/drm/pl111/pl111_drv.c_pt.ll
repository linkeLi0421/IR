; ModuleID = '/llk/IR/drivers/gpu/drm/pl111/pl111_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/pl111/pl111_drv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_id = type { i32, i32, ptr }
%struct.pl111_variant_data = type { ptr, i8, i8, i8, i8, i8, i8, ptr, i32, i32 }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.73, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.73 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.80 = type { i32, ptr }
%struct.pl111_drm_dev_private = type { ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i32, i32, i32, ptr, %struct.clk_hw, %struct.spinlock, ptr, ptr, ptr, i8 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }

@pl111_id_table = internal constant [4 x %struct.amba_id] [%struct.amba_id { i32 266512, i32 1048575, ptr @pl110_variant }, %struct.amba_id { i32 1573136, i32 16777214, ptr @pl110_nomadik_variant }, %struct.amba_id { i32 266513, i32 1048575, ptr @pl111_variant }, %struct.amba_id zeroinitializer], align 4
@__UNIQUE_ID_description279 = internal constant [33 x i8] c"description=DRM module for PL111\00", section ".modinfo", align 1
@__UNIQUE_ID_author280 = internal constant [16 x i8] c"author=ARM Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@pl110_variant = internal constant %struct.pl111_variant_data { ptr @.str, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @pl110_pixel_formats, i32 8, i32 16 }, align 4
@pl110_nomadik_variant = internal constant %struct.pl111_variant_data { ptr @.str.1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 1, ptr @pl110_nomadik_pixel_formats, i32 16, i32 16 }, align 4
@pl111_variant = internal constant %struct.pl111_variant_data { ptr @.str.2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @pl111_pixel_formats, i32 14, i32 32 }, align 4
@.str = private unnamed_addr constant [6 x i8] c"PL110\00", align 1
@pl110_pixel_formats = internal constant [8 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 892420673, i32 892420696, i32 892424769, i32 892424792], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"LCDC (PL110 Nomadik)\00", align 1
@pl110_nomadik_pixel_formats = internal constant [16 x i32] [i32 875710290, i32 875710274, i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 909199170, i32 909199186, i32 892420673, i32 892420696, i32 892424769, i32 892424792, i32 842089025, i32 842089048, i32 842093121, i32 842093144], align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"PL111\00", align 1
@pl111_pixel_formats = internal constant [14 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 909199170, i32 909199186, i32 892420673, i32 892420696, i32 892424769, i32 892424792, i32 842089025, i32 842089048, i32 842093121, i32 842093144], align 4
@pl111_amba_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pl111_amba_probe, ptr @pl111_amba_remove, ptr null, ptr @pl111_id_table }, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"drm-clcd-pl111\00", align 1
@pl111_drm_driver = internal constant %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl111_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @pl111_gem_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 0, i32 0, ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 19, ptr null, i32 0, ptr @drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"using device-specific reserved memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"max-memory-bandwidth\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"no max memory bandwidth specified, assume unlimited\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%s failed mmio\0A\00", align 1
@__func__.pl111_amba_probe = private unnamed_addr constant [17 x i8] c"pl111_amba_probe\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%s failed irq %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"pl111\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"DRM module for PL111\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"20170317\00", align 1
@drm_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@mode_config_funcs = internal constant %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"endpoint %d returns %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"found panel on endpoint %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"found bridge on endpoint %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Using non-panel bridge\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"No bridge, exiting\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Failed to init display\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Failed to init vblank\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author280, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_license281], section "llvm.metadata"

@__mod_amba__pl111_id_table_device_table = dso_local alias [4 x %struct.amba_id], ptr @pl111_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @pl111_amba_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl111_amba_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl111_amba_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.amba_id, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 1360, i32 noundef 3520) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %168, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @pl111_drm_driver, ptr noundef %0) #5
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = ptrtoint ptr %10 to i32
  br label %168

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %10, ptr %15, align 8
  store ptr %10, ptr %7, align 8
  %16 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %7, i32 0, i32 12
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %0, ptr noundef %19, i32 noundef 0) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.4) #6
  %23 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %7, i32 0, i32 15
  store i8 1, ptr %23, align 8
  br label %24

24:                                               ; preds = %22, %14
  %25 = load ptr, ptr %18, align 8
  %26 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %7, i32 0, i32 6
  %27 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %25, ptr noundef nonnull @.str.5, ptr noundef %26, i32 noundef 1, i32 noundef 0) #5
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.6) #6
  store i32 0, ptr %26, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = getelementptr inbounds %struct.pl111_variant_data, ptr %6, i32 0, i32 1
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.pl111_variant_data, ptr %6, i32 0, i32 2
  %36 = load i8, ptr %35, align 1, !range !8
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 28, i32 24
  %39 = select i1 %37, i32 24, i32 28
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i32 [ 24, %30 ], [ %38, %34 ]
  %42 = phi i32 [ 28, %30 ], [ %39, %34 ]
  %43 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %7, i32 0, i32 7
  store i32 %41, ptr %43, align 8
  %44 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %7, i32 0, i32 8
  store i32 %42, ptr %44, align 4
  %45 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %46 = tail call ptr @devm_ioremap_resource(ptr noundef %0, ptr noundef %45) #5
  %47 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %7, i32 0, i32 5
  store ptr %46, ptr %47, align 8
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.pl111_amba_probe) #6
  %50 = load ptr, ptr %47, align 8
  %51 = ptrtoint ptr %50 to i32
  br label %166

52:                                               ; preds = %40
  %53 = tail call i32 @pl111_versatile_init(ptr noundef %0, ptr noundef nonnull %7) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %166

55:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %56 = load ptr, ptr %47, align 8
  %57 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %7, i32 0, i32 7
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr i8, ptr %56, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 0) #5, !srcloc !10
  %60 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %61 = load i32, ptr %60, align 8
  %62 = load ptr, ptr %6, align 4
  %63 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %61, ptr noundef nonnull @pl111_irq, ptr noundef null, i32 noundef 0, ptr noundef %62, ptr noundef nonnull %7) #5
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.pl111_amba_probe, i32 noundef %63) #6
  br label %168

66:                                               ; preds = %55
  %67 = load ptr, ptr %16, align 4
  %68 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.device, ptr %69, i32 0, i32 25
  %71 = load ptr, ptr %70, align 8
  %72 = tail call i32 @drmm_mode_config_init(ptr noundef %10) #5
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %166

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 27
  store ptr @mode_config_funcs, ptr %75, align 4
  %76 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 23
  store i32 1, ptr %76, align 4
  %77 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 25
  store i32 1024, ptr %77, align 4
  %78 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 24
  store i32 1, ptr %78, align 4
  %79 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 30, i32 26
  store i32 768, ptr %79, align 4
  %80 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %71, ptr noundef null) #5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %125, label %82

82:                                               ; preds = %109, %74
  %83 = phi i32 [ %111, %109 ], [ 0, %74 ]
  %84 = phi i1 [ %96, %109 ], [ false, %74 ]
  %85 = phi ptr [ %110, %109 ], [ null, %74 ]
  %86 = phi ptr [ %103, %109 ], [ null, %74 ]
  %87 = phi ptr [ %112, %109 ], [ %80, %74 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store ptr null, ptr %4, align 4, !annotation !11
  %88 = load ptr, ptr %68, align 4
  %89 = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 25
  %90 = load ptr, ptr %89, align 8
  %91 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %90, i32 noundef 0, i32 noundef %83, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  switch i32 %91, label %93 [
    i32 0, label %95
    i32 -517, label %92
    i32 -19, label %95
  ]

92:                                               ; preds = %82
  br label %95

93:                                               ; preds = %82
  %94 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.12, i32 noundef %83, i32 noundef %91) #6
  br label %95

95:                                               ; preds = %93, %92, %82, %82
  %96 = phi i1 [ true, %92 ], [ %84, %93 ], [ %84, %82 ], [ %84, %82 ]
  %97 = load ptr, ptr %3, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %100, ptr noundef nonnull @.str.13, i32 noundef %83) #6
  %101 = load ptr, ptr %3, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi ptr [ %101, %99 ], [ %86, %95 ]
  %104 = load ptr, ptr %4, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %107, ptr noundef nonnull @.str.14, i32 noundef %83) #6
  %108 = load ptr, ptr %4, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi ptr [ %108, %106 ], [ %85, %102 ]
  %111 = add i32 %83, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  %112 = call ptr @of_graph_get_next_endpoint(ptr noundef %71, ptr noundef nonnull %87) #5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %82

114:                                              ; preds = %109
  %115 = icmp ne ptr %103, null
  %116 = icmp ne ptr %110, null
  %117 = select i1 %115, i1 true, i1 %116
  %118 = xor i1 %96, true
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %120, label %166

120:                                              ; preds = %114
  br i1 %115, label %121, label %124

121:                                              ; preds = %120
  %122 = call ptr @drm_panel_bridge_add_typed(ptr noundef nonnull %103, i32 noundef 0) #5
  %123 = icmp ugt ptr %122, inttoptr (i32 -4096 to ptr)
  br i1 %123, label %160, label %130

124:                                              ; preds = %120
  br i1 %116, label %127, label %125

125:                                              ; preds = %124, %74
  %126 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.16) #6
  br label %166

127:                                              ; preds = %124
  %128 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.15) #6
  %129 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %67, i32 0, i32 3
  store ptr %110, ptr %129, align 4
  br label %135

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %67, i32 0, i32 3
  store ptr %122, ptr %131, align 4
  %132 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %67, i32 0, i32 2
  store ptr %103, ptr %132, align 8
  %133 = call ptr @drm_panel_bridge_connector(ptr noundef %122) #5
  %134 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %67, i32 0, i32 1
  store ptr %133, ptr %134, align 4
  br label %135

135:                                              ; preds = %130, %127
  %136 = phi ptr [ %122, %130 ], [ %110, %127 ]
  %137 = call i32 @pl111_display_init(ptr noundef %10) #5
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %67, i32 0, i32 4
  %141 = call i32 @drm_simple_display_pipe_attach_bridge(ptr noundef %140, ptr noundef %136) #5
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %67, i32 0, i32 12
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.pl111_variant_data, ptr %145, i32 0, i32 5
  %147 = load i8, ptr %146, align 4, !range !8
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = call i32 @drm_vblank_init(ptr noundef %10, i32 noundef 1) #5
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149, %143
  call void @drm_mode_config_reset(ptr noundef %10) #5
  call void @drm_kms_helper_poll_init(ptr noundef %10) #5
  %153 = call i32 @drm_dev_register(ptr noundef %10, i32 noundef 0) #5
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %166, label %162

155:                                              ; preds = %149, %135
  %156 = phi ptr [ @.str.17, %135 ], [ @.str.18, %149 ]
  %157 = phi i32 [ %137, %135 ], [ %150, %149 ]
  %158 = load ptr, ptr %68, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull %156) #6
  br i1 %115, label %159, label %166

159:                                              ; preds = %155
  call void @drm_panel_bridge_remove(ptr noundef %136) #5
  br label %166

160:                                              ; preds = %121
  %161 = ptrtoint ptr %122 to i32
  br label %166

162:                                              ; preds = %152
  %163 = load ptr, ptr %17, align 4
  %164 = getelementptr inbounds %struct.pl111_variant_data, ptr %163, i32 0, i32 9
  %165 = load i32, ptr %164, align 4
  call void @drm_fbdev_generic_setup(ptr noundef %10, i32 noundef %165) #5
  br label %168

166:                                              ; preds = %160, %159, %155, %152, %139, %125, %114, %66, %52, %49
  %167 = phi i32 [ %51, %49 ], [ %53, %52 ], [ %161, %160 ], [ %153, %152 ], [ %157, %155 ], [ %157, %159 ], [ %141, %139 ], [ -517, %114 ], [ %72, %66 ], [ -19, %125 ]
  call void @drm_dev_put(ptr noundef %10) #5
  call void @of_reserved_mem_device_release(ptr noundef %0) #5
  br label %168

168:                                              ; preds = %166, %162, %65, %12, %2
  %169 = phi i32 [ %13, %12 ], [ %167, %166 ], [ %63, %65 ], [ 0, %162 ], [ -12, %2 ]
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_amba_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  tail call void @drm_dev_unregister(ptr noundef %3) #5
  %6 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @drm_panel_bridge_remove(ptr noundef %11) #5
  br label %12

12:                                               ; preds = %9, %1
  tail call void @drm_dev_put(ptr noundef %3) #5
  tail call void @of_reserved_mem_device_release(ptr noundef %0) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pl111_versatile_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pl111_irq(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pl111_debugfs_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pl111_gem_import_sg_table(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %5, i32 0, i32 15
  %7 = load i8, ptr %6, align 8, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call ptr @drm_gem_cma_prime_import_sg_table(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ inttoptr (i32 -22 to ptr), %3 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_connector(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pl111_display_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_attach_bridge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2155655693}
!10 = !{i64 4654869}
!11 = !{!"auto-init"}
