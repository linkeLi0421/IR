; ModuleID = '/llk/IR/drivers/gpu/drm/pl111/pl111_versatile.c_pt.bc'
source_filename = "../drivers/gpu/drm/pl111/pl111_versatile.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pl111_versatile_init:\09\09\09\09\09"
module asm "\09.asciz \09\22pl111_versatile_init\22\09\09\09\09\09"
module asm "__kstrtabns_pl111_versatile_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pl111_variant_data = type { ptr, i8, i8, i8, i8, i8, i8, ptr, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pl111_drm_dev_private = type { ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i32, i32, i32, ptr, %struct.clk_hw, %struct.spinlock, ptr, ptr, ptr, i8 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.75 = type { i32, ptr }

@versatile_clcd_of_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,core-module-integrator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,versatile-sysreg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-eb-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-pb1176-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-pb11mp-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-pba8-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,realview-pbx-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,vexpress-muxfpga\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [35 x i8] c"Versatile Express init failed - %d\00", align 1
@impd1_clcd_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,im-pd1-syscon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no Versatile syscon regmap\0A\00", align 1
@versatile_syscon_map = internal unnamed_addr global ptr null, align 4
@pl110_integrator = internal constant %struct.pl111_variant_data { ptr @.str.18, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, ptr @pl110_integrator_pixel_formats, i32 8, i32 16 }, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"set up callbacks for Integrator PL110\0A\00", align 1
@pl110_impd1 = internal constant %struct.pl111_variant_data { ptr @.str.21, i8 1, i8 0, i8 0, i8 1, i8 1, i8 0, ptr @pl110_integrator_pixel_formats, i32 8, i32 16 }, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"set up callbacks for IM-PD1 PL110\0A\00", align 1
@pl110_versatile = internal constant %struct.pl111_variant_data { ptr @.str.24, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, ptr @pl110_versatile_pixel_formats, i32 10, i32 16 }, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"set up callbacks for Versatile PL110\0A\00", align 1
@pl111_realview = internal constant %struct.pl111_variant_data { ptr @.str.28, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr @pl111_realview_pixel_formats, i32 14, i32 16 }, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"set up callbacks for RealView PL111\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"unknown Versatile system controller\0A\00", align 1
@__kstrtab_pl111_versatile_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_pl111_versatile_init = external dso_local constant [0 x i8], align 1
@__ksymtab_pl111_versatile_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pl111_versatile_init to i32), ptr @__kstrtab_pl111_versatile_init, ptr @__kstrtabns_pl111_versatile_init }, section "___ksymtab_gpl+pl111_versatile_init", align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"arm,pl111\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"arm,hdlcd\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"DVI muxed to motherboard CLCD\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"DVI muxed to daughterboard 1 (core tile) CLCD\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"core tile graphics present\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"this device will be deactivated\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"can't find the sysreg device, deferring\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"error setting DVI muxmode\0A\00", align 1
@pl111_vexpress = internal constant %struct.pl111_variant_data { ptr @.str.17, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, ptr @pl111_realview_pixel_formats, i32 14, i32 16 }, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"initializing Versatile Express PL111\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"PL111 Versatile Express\00", align 1
@pl111_realview_pixel_formats = internal constant [14 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 909199170, i32 909199186, i32 892420673, i32 892420696, i32 892424769, i32 892424792, i32 842089025, i32 842089048, i32 842093121, i32 842093144], align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"PL110 Integrator\00", align 1
@pl110_integrator_pixel_formats = internal constant [8 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 892420673, i32 892420696, i32 892424769, i32 892424792], align 4
@.str.19 = private unnamed_addr constant [35 x i8] c"enable Integrator CLCD connectors\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"unhandled format on Integrator 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"PL110 IM-PD1\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"enable IM-PD1 CLCD connectors\0A\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"disable IM-PD1 CLCD connectors\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"PL110 Versatile\00", align 1
@pl110_versatile_pixel_formats = internal constant [10 x i32] [i32 875708993, i32 875709016, i32 875713089, i32 875713112, i32 909199170, i32 909199186, i32 892420673, i32 892420696, i32 892424769, i32 892424792], align 4
@.str.25 = private unnamed_addr constant [34 x i8] c"enable Versatile CLCD connectors\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"unhandled format on Versatile 0x%08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"disable Versatile CLCD connectors\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"PL111 RealView\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"enable RealView CLCD connectors\0A\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"disable RealView CLCD connectors\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_pl111_versatile_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pl111_versatile_init(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @versatile_clcd_of_match, ptr noundef nonnull %3) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %91, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, inttoptr (i32 8 to ptr)
  br i1 %10, label %11, label %54

11:                                               ; preds = %6
  %12 = call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.7, ptr noundef null) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %11
  %15 = call ptr @of_get_next_available_child(ptr noundef nonnull %12, ptr noundef null) #4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %25, %14
  %18 = phi ptr [ %26, %25 ], [ %15, %14 ]
  %19 = call i32 @of_device_is_compatible(ptr noundef nonnull %18, ptr noundef nonnull @.str.8) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = call i32 @of_device_is_compatible(ptr noundef nonnull %18, ptr noundef nonnull @.str.9) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void @of_node_put(ptr noundef nonnull %18) #4
  br label %28

25:                                               ; preds = %21
  %26 = call ptr @of_get_next_available_child(ptr noundef nonnull %12, ptr noundef nonnull %18) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %17

28:                                               ; preds = %25, %24, %14
  call void @of_node_put(ptr noundef nonnull %12) #4
  br label %34

29:                                               ; preds = %17
  call void @of_node_put(ptr noundef nonnull %12) #4
  %30 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %18, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.12) #5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.13) #5
  br label %52

34:                                               ; preds = %29, %28
  %35 = phi ptr [ @.str.10, %28 ], [ @.str.11, %29 ]
  %36 = phi i32 [ 0, %28 ], [ 1, %29 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull %35) #5
  %37 = call ptr @of_find_device_by_node(ptr noundef nonnull %4) #4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14) #5
  br label %52

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3
  %42 = call ptr @devm_regmap_init_vexpress_config(ptr noundef %41) #4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = call i32 @regmap_write(ptr noundef %42, i32 noundef 0, i32 noundef %36) #4
  call void @platform_device_put(ptr noundef nonnull %37) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15) #5
  br label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 12
  store ptr @pl111_vexpress, ptr %49, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.16) #5
  call void @of_node_put(ptr noundef nonnull %4) #4
  br label %91

50:                                               ; preds = %40
  call void @platform_device_put(ptr noundef nonnull %37) #4
  %51 = ptrtoint ptr %42 to i32
  br label %52

52:                                               ; preds = %50, %47, %39, %33, %11
  %53 = phi i32 [ %51, %50 ], [ -22, %11 ], [ -19, %33 ], [ -517, %39 ], [ -19, %47 ]
  call void @of_node_put(ptr noundef nonnull %4) #4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %53) #5
  br label %91

54:                                               ; preds = %6
  %55 = ptrtoint ptr %9 to i32
  %56 = icmp eq ptr %9, inttoptr (i32 1 to ptr)
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @impd1_clcd_of_match, ptr noundef nonnull %3) #4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.of_device_id, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = ptrtoint ptr %63 to i32
  br label %65

65:                                               ; preds = %60, %57, %54
  %66 = phi i32 [ %64, %60 ], [ 1, %57 ], [ %55, %54 ]
  %67 = phi ptr [ %58, %60 ], [ null, %57 ], [ %4, %54 ]
  %68 = call ptr @syscon_node_to_regmap(ptr noundef %67) #4
  call void @of_node_put(ptr noundef %67) #4
  %69 = icmp ugt ptr %68, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #5
  %71 = ptrtoint ptr %68 to i32
  br label %91

72:                                               ; preds = %65
  switch i32 %66, label %90 [
    i32 1, label %73
    i32 0, label %76
    i32 2, label %80
    i32 3, label %86
    i32 4, label %86
    i32 5, label %86
    i32 6, label %86
    i32 7, label %86
  ]

73:                                               ; preds = %72
  store ptr %68, ptr @versatile_syscon_map, align 4
  %74 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 12
  store ptr @pl110_integrator, ptr %74, align 4
  %75 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 13
  store ptr @pl111_integrator_enable, ptr %75, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  br label %91

76:                                               ; preds = %72
  store ptr %68, ptr @versatile_syscon_map, align 4
  %77 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 12
  store ptr @pl110_impd1, ptr %77, align 4
  %78 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 13
  store ptr @pl111_impd1_enable, ptr %78, align 8
  %79 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 14
  store ptr @pl111_impd1_disable, ptr %79, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  br label %91

80:                                               ; preds = %72
  store ptr %68, ptr @versatile_syscon_map, align 4
  %81 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 12
  store ptr @pl110_versatile, ptr %81, align 4
  %82 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 13
  store ptr @pl111_versatile_enable, ptr %82, align 8
  %83 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 14
  store ptr @pl111_versatile_disable, ptr %83, align 4
  %84 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 7
  store i32 28, ptr %84, align 8
  %85 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 8
  store i32 24, ptr %85, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.4) #5
  br label %91

86:                                               ; preds = %72, %72, %72, %72, %72
  store ptr %68, ptr @versatile_syscon_map, align 4
  %87 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 12
  store ptr @pl111_realview, ptr %87, align 4
  %88 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 13
  store ptr @pl111_realview_clcd_enable, ptr %88, align 8
  %89 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 14
  store ptr @pl111_realview_clcd_disable, ptr %89, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.5) #5
  br label %91

90:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.6) #5
  br label %91

91:                                               ; preds = %90, %86, %80, %76, %73, %70, %52, %48, %2
  %92 = phi i32 [ %71, %70 ], [ 0, %2 ], [ %53, %52 ], [ 0, %90 ], [ 0, %86 ], [ 0, %80 ], [ 0, %76 ], [ 0, %73 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %92
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_integrator_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.19) #5
  switch i32 %1, label %6 [
    i32 875709016, label %8
    i32 875713112, label %8
    i32 892420696, label %5
    i32 892424792, label %5
  ]

5:                                                ; preds = %2, %2
  br label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %1) #5
  br label %8

8:                                                ; preds = %6, %5, %2, %2
  %9 = phi i32 [ 245760, %6 ], [ 253952, %5 ], [ 260096, %2 ], [ 260096, %2 ]
  %10 = load ptr, ptr @versatile_syscon_map, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 12, i32 noundef 1048320, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_impd1_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.22) #5
  %5 = load ptr, ptr @versatile_syscon_map, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 24, i32 noundef 7, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_impd1_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.23) #5
  %4 = load ptr, ptr @versatile_syscon_map, align 4
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 24, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_versatile_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.25) #5
  switch i32 %1, label %8 [
    i32 875708993, label %10
    i32 875709016, label %10
    i32 875713089, label %10
    i32 875713112, label %10
    i32 909199170, label %5
    i32 909199186, label %6
    i32 892420673, label %7
    i32 892420696, label %7
    i32 892424769, label %7
    i32 892424792, label %7
  ]

5:                                                ; preds = %2
  br label %10

6:                                                ; preds = %2
  br label %10

7:                                                ; preds = %2, %2, %2, %2
  br label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.26, i32 noundef %1) #5
  br label %10

10:                                               ; preds = %8, %7, %6, %5, %2, %2, %2, %2
  %11 = phi i32 [ 0, %8 ], [ 1, %7 ], [ 3, %6 ], [ 2, %5 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ]
  %12 = load ptr, ptr @versatile_syscon_map, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 80, i32 noundef 3, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %14 = load ptr, ptr @versatile_syscon_map, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 80, i32 noundef 60, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_versatile_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.27) #5
  %4 = load ptr, ptr @versatile_syscon_map, align 4
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 80, i32 noundef 60, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_realview_clcd_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.29) #5
  %5 = load ptr, ptr @versatile_syscon_map, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 80, i32 noundef 60, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl111_realview_clcd_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.30) #5
  %4 = load ptr, ptr @versatile_syscon_map, align 4
  %5 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 80, i32 noundef 60, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_init_vexpress_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
