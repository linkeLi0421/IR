; ModuleID = '/llk/IR/drivers/gpu/drm/bridge/adv7511/adv7533.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/adv7511/adv7533.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.reg_sequence = type { i32, i32, i32 }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.adv7511 = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, %struct.drm_display_mode, i32, i32, i32, i32, [256 x i8], i8, %struct.wait_queue_head, %struct.work_struct, %struct.drm_bridge, %struct.drm_connector, i8, i32, i32, i8, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [3 x i8], i8, i8, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.72 }
%union.anon.72 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@adv7533_cec_fixed_registers = internal constant [5 x %struct.reg_sequence] [%struct.reg_sequence { i32 21, i32 208, i32 0 }, %struct.reg_sequence { i32 23, i32 208, i32 0 }, %struct.reg_sequence { i32 36, i32 32, i32 0 }, %struct.reg_sequence { i32 87, i32 17, i32 0 }, %struct.reg_sequence { i32 5, i32 200, i32 0 }], align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to change host lanes\0A\00", align 1
@adv7533_fixed_registers = internal constant [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 22, i32 32, i32 0 }, %struct.reg_sequence { i32 154, i32 224, i32 0 }, %struct.reg_sequence { i32 186, i32 112, i32 0 }, %struct.reg_sequence { i32 222, i32 130, i32 0 }, %struct.reg_sequence { i32 228, i32 64, i32 0 }, %struct.reg_sequence { i32 229, i32 128, i32 0 }], align 4
@__const.adv7533_attach_dsi.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"adv7533\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to find dsi host\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to create dsi device\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to attach dsi to host\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"adi,dsi-lanes\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"adi,disable-timing-generator\00", align 1
@__const.adv7511_dsi_config_timing_gen.clock_div_by_lanes = private unnamed_addr constant [3 x i8] c"\06\04\03", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adv7533_dsi_power_on(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 29
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %112, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 8, i32 3
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 8, i32 2
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = sub nsw i32 %10, %13
  %15 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 8, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %13, %17
  %19 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 8, i32 4
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = sub nsw i32 %21, %10
  %23 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 8, i32 8
  %24 = load i16, ptr %23, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 8, i32 7
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = sub nsw i32 %25, %28
  %30 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 8, i32 6
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = sub nsw i32 %28, %32
  %34 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 8, i32 9
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = sub nsw i32 %36, %25
  %38 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 4
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, -2
  %43 = getelementptr [3 x i8], ptr @__const.adv7511_dsi_config_timing_gen.clock_div_by_lanes, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 3
  %47 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 22, i32 noundef %46) #5
  %48 = load ptr, ptr %38, align 4
  %49 = load i16, ptr %19, align 2
  %50 = lshr i16 %49, 4
  %51 = zext i16 %50 to i32
  %52 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 40, i32 noundef %51) #5
  %53 = load ptr, ptr %38, align 4
  %54 = load i16, ptr %19, align 2
  %55 = zext i16 %54 to i32
  %56 = shl nuw nsw i32 %55, 4
  %57 = and i32 %56, 240
  %58 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 41, i32 noundef %57) #5
  %59 = load ptr, ptr %38, align 4
  %60 = lshr i32 %14, 4
  %61 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 42, i32 noundef %60) #5
  %62 = load ptr, ptr %38, align 4
  %63 = shl nsw i32 %14, 4
  %64 = and i32 %63, 240
  %65 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 43, i32 noundef %64) #5
  %66 = load ptr, ptr %38, align 4
  %67 = lshr i32 %18, 4
  %68 = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 44, i32 noundef %67) #5
  %69 = load ptr, ptr %38, align 4
  %70 = shl nsw i32 %18, 4
  %71 = and i32 %70, 240
  %72 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 45, i32 noundef %71) #5
  %73 = load ptr, ptr %38, align 4
  %74 = lshr i32 %22, 4
  %75 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 46, i32 noundef %74) #5
  %76 = load ptr, ptr %38, align 4
  %77 = shl nsw i32 %22, 4
  %78 = and i32 %77, 240
  %79 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 47, i32 noundef %78) #5
  %80 = load ptr, ptr %38, align 4
  %81 = load i16, ptr %34, align 4
  %82 = lshr i16 %81, 4
  %83 = zext i16 %82 to i32
  %84 = tail call i32 @regmap_write(ptr noundef %80, i32 noundef 48, i32 noundef %83) #5
  %85 = load ptr, ptr %38, align 4
  %86 = load i16, ptr %34, align 4
  %87 = zext i16 %86 to i32
  %88 = shl nuw nsw i32 %87, 4
  %89 = and i32 %88, 240
  %90 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 49, i32 noundef %89) #5
  %91 = load ptr, ptr %38, align 4
  %92 = lshr i32 %29, 4
  %93 = tail call i32 @regmap_write(ptr noundef %91, i32 noundef 50, i32 noundef %92) #5
  %94 = load ptr, ptr %38, align 4
  %95 = shl nsw i32 %29, 4
  %96 = and i32 %95, 240
  %97 = tail call i32 @regmap_write(ptr noundef %94, i32 noundef 51, i32 noundef %96) #5
  %98 = load ptr, ptr %38, align 4
  %99 = lshr i32 %33, 4
  %100 = tail call i32 @regmap_write(ptr noundef %98, i32 noundef 52, i32 noundef %99) #5
  %101 = load ptr, ptr %38, align 4
  %102 = shl nsw i32 %33, 4
  %103 = and i32 %102, 240
  %104 = tail call i32 @regmap_write(ptr noundef %101, i32 noundef 53, i32 noundef %103) #5
  %105 = load ptr, ptr %38, align 4
  %106 = lshr i32 %37, 4
  %107 = tail call i32 @regmap_write(ptr noundef %105, i32 noundef 54, i32 noundef %106) #5
  %108 = load ptr, ptr %38, align 4
  %109 = shl nsw i32 %37, 4
  %110 = and i32 %109, 240
  %111 = tail call i32 @regmap_write(ptr noundef %108, i32 noundef 55, i32 noundef %110) #5
  br label %112

112:                                              ; preds = %7, %1
  %113 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 5
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 4
  %116 = load i32, ptr %115, align 8
  %117 = shl i32 %116, 4
  %118 = tail call i32 @regmap_write(ptr noundef %114, i32 noundef 28, i32 noundef %117) #5
  %119 = load i8, ptr %4, align 1, !range !8
  %120 = icmp eq i8 %119, 0
  %121 = load ptr, ptr %113, align 4
  br i1 %120, label %128, label %122

122:                                              ; preds = %112
  %123 = tail call i32 @regmap_write(ptr noundef %121, i32 noundef 39, i32 noundef 203) #5
  %124 = load ptr, ptr %113, align 4
  %125 = tail call i32 @regmap_write(ptr noundef %124, i32 noundef 39, i32 noundef 139) #5
  %126 = load ptr, ptr %113, align 4
  %127 = tail call i32 @regmap_write(ptr noundef %126, i32 noundef 39, i32 noundef 203) #5
  br label %130

128:                                              ; preds = %112
  %129 = tail call i32 @regmap_write(ptr noundef %121, i32 noundef 39, i32 noundef 11) #5
  br label %130

130:                                              ; preds = %128, %122
  %131 = load ptr, ptr %113, align 4
  %132 = tail call i32 @regmap_write(ptr noundef %131, i32 noundef 3, i32 noundef 137) #5
  %133 = load ptr, ptr %113, align 4
  %134 = tail call i32 @regmap_write(ptr noundef %133, i32 noundef 85, i32 noundef 0) #5
  %135 = load ptr, ptr %113, align 4
  %136 = tail call i32 @regmap_register_patch(ptr noundef %135, ptr noundef nonnull @adv7533_cec_fixed_registers, i32 noundef 5) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adv7533_dsi_power_off(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 3, i32 noundef 11) #5
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 39, i32 noundef 11) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adv7533_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 27
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 28
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 4
  %10 = icmp sgt i32 %9, 80000
  %11 = select i1 %10, i32 4, i32 3
  %12 = getelementptr inbounds %struct.mipi_dsi_device, ptr %4, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = tail call i32 @mipi_dsi_detach(ptr noundef %4) #5
  store i32 %11, ptr %12, align 8
  %17 = tail call i32 @mipi_dsi_attach(ptr noundef %4) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.mipi_dsi_device, ptr %4, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str) #6
  br label %21

21:                                               ; preds = %19, %15, %8, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adv7533_patch_registers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @regmap_register_patch(ptr noundef %3, ptr noundef nonnull @adv7533_fixed_registers, i32 noundef 6) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adv7533_patch_cec_registers(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regmap_register_patch(ptr noundef %3, ptr noundef nonnull @adv7533_cec_fixed_registers, i32 noundef 5) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adv7533_attach_dsi(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mipi_dsi_device_info, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(28) @__const.adv7533_attach_dsi.info, i32 28, i1 false)
  %5 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 26
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef %6) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #6
  br label %26

10:                                               ; preds = %1
  %11 = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %4, ptr noundef nonnull %7, ptr noundef nonnull %2) #5
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #6
  %14 = ptrtoint ptr %11 to i32
  br label %26

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 27
  store ptr %11, ptr %16, align 8
  %17 = getelementptr inbounds %struct.adv7511, ptr %0, i32 0, i32 28
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 4
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 5
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 6
  store i32 533, ptr %22, align 8
  %23 = call i32 @devm_mipi_dsi_attach(ptr noundef %4, ptr noundef %11) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #6
  br label %26

26:                                               ; preds = %25, %15, %13, %9
  %27 = phi i32 [ %14, %13 ], [ %23, %25 ], [ -517, %9 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #5
  ret i32 %27
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adv7533_parse_dt(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #5
  %5 = load i32, ptr %3, align 4
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %6, -4
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = trunc i32 %5 to i8
  %10 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 28
  store i8 %9, ptr %10, align 4
  %11 = call ptr @of_graph_get_remote_node(ptr noundef %0, i32 noundef 0, i32 noundef 0) #5
  %12 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 26
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  call void @of_node_put(ptr noundef nonnull %11) #5
  %15 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #5
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 29
  %18 = zext i1 %16 to i8
  store i8 %18, ptr %17, align 1
  %19 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 22
  store i8 1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.adv7511, ptr %1, i32 0, i32 19
  store i8 0, ptr %20, align 8
  br label %21

21:                                               ; preds = %14, %8, %2
  %22 = phi i32 [ 0, %14 ], [ -22, %2 ], [ -19, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
!9 = !{!"auto-init"}
