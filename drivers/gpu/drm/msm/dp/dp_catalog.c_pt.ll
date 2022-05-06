; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dp/dp_catalog.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_catalog.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dss_io_region = type { i32, ptr }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_catalog = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dp_catalog_private = type { ptr, ptr, ptr, %struct.dp_catalog, [10 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"dp_ahb\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"dp_aux\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"dp_link\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dp_p0\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\016[drm-dp] %s: AHB regs\0A\00", align 1
@__func__.dp_catalog_dump_regs = private unnamed_addr constant [21 x i8] c"dp_catalog_dump_regs\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\016[drm-dp] %s: AUXCLK regs\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\016[drm-dp] %s: LCLK regs\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"\016[drm-dp] %s: P0CLK regs\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"DP_CONFIGURATION_CTRL=0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"enable=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"misc settings = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Invalid pixel mux divider\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"mvid=0x%x, nvid=0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"hw: bit=%d train=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"set pattern for link_train=%d failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"mainlink not ready\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"intr_mask=%#x config=%#x\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"aux status: %#x\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"pattern: %#x\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"No valid test pattern requested: %#x\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"%s: enabled tpg\0A\00", align 1
@__func__.dp_catalog_panel_tpg_enable = private unnamed_addr constant [28 x i8] c"dp_catalog_panel_tpg_enable\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"invalid input\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"select: %#x, acr_ctrl: %#x\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"dp_audio_cfg = 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"sdp_cfg = 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"sdp_cfg2 = 0x%x\0A\00", align 1
@dp_catalog_audio_init.sdp_map = internal global [5 x [3 x i32]] [[3 x i32] [i32 576, i32 580, i32 580], [3 x i32] [i32 560, i32 564, i32 564], [3 x i32] [i32 680, i32 684, i32 684], [3 x i32] [i32 632, i32 636, i32 636], [3 x i32] [i32 656, i32 660, i32 660]], align 4
@.str.26 = private unnamed_addr constant [50 x i8] c"mainlink_level = 0x%x, safe_to_exit_level = 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"\016[drm-dp] %s: %08x: %08x %08x %08x %08x\00", align 1
@__func__.dump_regs = private unnamed_addr constant [10 x i8] c"dump_regs\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_snapshot(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dss_io_region, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %1, i32 noundef %5, ptr noundef %7, ptr noundef nonnull @.str) #5
  %8 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %1, i32 noundef %9, ptr noundef %11, ptr noundef nonnull @.str.1) #5
  %12 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %1, i32 noundef %13, ptr noundef %15, ptr noundef nonnull @.str.2) #5
  %16 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %1, i32 noundef %17, ptr noundef %19, ptr noundef nonnull @.str.3) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_add_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_read_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 52
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_write_data(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %2) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_write_trans(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %2) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_clear_trans(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  br i1 %1, label %3, label %15

3:                                                ; preds = %2
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dss_io_data, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 56
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  %10 = and i32 %9, -513
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dss_io_data, ptr %11, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #5, !srcloc !10
  br label %21

15:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %16 = getelementptr i8, ptr %0, i32 -8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dss_io_data, ptr %17, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #5, !srcloc !10
  br label %21

21:                                               ; preds = %15, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_clear_hw_interrupts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 188
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.dss_io_data, ptr %8, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 31) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.dss_io_data, ptr %12, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 159) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.dss_io_data, ptr %16, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_aux_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  %8 = or i32 %7, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dss_io_data, ptr %9, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #5, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  %13 = and i32 %7, -3
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.dss_io_data, ptr %14, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_aux_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  br i1 %1, label %9, label %19

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.dss_io_data, ptr %10, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 65535) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.dss_io_data, ptr %14, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 65535) #5, !srcloc !10
  %18 = or i32 %8, 1
  br label %21

19:                                               ; preds = %2
  %20 = and i32 %8, -2
  br label %21

21:                                               ; preds = %19, %9
  %22 = phi i32 [ %18, %9 ], [ %20, %19 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.dss_io_data, ptr %23, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_aux_update_cfg(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dp_io, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @phy_calibrate(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_calibrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_dump_regs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.dp_catalog_dump_regs) #6
  %5 = getelementptr inbounds %struct.dss_io_region, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %3, align 4
  %8 = add i32 %7, 15
  %9 = sdiv i32 %8, 16
  %10 = icmp sgt i32 %8, 15
  br i1 %10, label %11, label %26

11:                                               ; preds = %11, %1
  %12 = phi i32 [ %24, %11 ], [ 0, %1 ]
  %13 = phi i32 [ %23, %11 ], [ 0, %1 ]
  %14 = getelementptr i8, ptr %6, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  %16 = getelementptr i8, ptr %14, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  %18 = getelementptr i8, ptr %14, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  %20 = getelementptr i8, ptr %14, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dump_regs, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #6
  %23 = add nuw nsw i32 %13, 16
  %24 = add nuw nsw i32 %12, 1
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %26, label %11

26:                                               ; preds = %11, %1
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.dp_catalog_dump_regs) #6
  %28 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 1
  %29 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 1, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %28, align 4
  %32 = add i32 %31, 15
  %33 = sdiv i32 %32, 16
  %34 = icmp sgt i32 %32, 15
  br i1 %34, label %35, label %50

35:                                               ; preds = %35, %26
  %36 = phi i32 [ %48, %35 ], [ 0, %26 ]
  %37 = phi i32 [ %47, %35 ], [ 0, %26 ]
  %38 = getelementptr i8, ptr %30, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !8
  %40 = getelementptr i8, ptr %38, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  %42 = getelementptr i8, ptr %38, i32 8
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #5, !srcloc !8
  %44 = getelementptr i8, ptr %38, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !8
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dump_regs, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #6
  %47 = add nuw nsw i32 %37, 16
  %48 = add nuw nsw i32 %36, 1
  %49 = icmp eq i32 %48, %33
  br i1 %49, label %50, label %35

50:                                               ; preds = %35, %26
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.dp_catalog_dump_regs) #6
  %52 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 2
  %53 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 2, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %52, align 4
  %56 = add i32 %55, 15
  %57 = sdiv i32 %56, 16
  %58 = icmp sgt i32 %56, 15
  br i1 %58, label %59, label %74

59:                                               ; preds = %59, %50
  %60 = phi i32 [ %72, %59 ], [ 0, %50 ]
  %61 = phi i32 [ %71, %59 ], [ 0, %50 ]
  %62 = getelementptr i8, ptr %54, i32 %61
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  %64 = getelementptr i8, ptr %62, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !8
  %66 = getelementptr i8, ptr %62, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !8
  %68 = getelementptr i8, ptr %62, i32 12
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #5, !srcloc !8
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dump_regs, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69) #6
  %71 = add nuw nsw i32 %61, 16
  %72 = add nuw nsw i32 %60, 1
  %73 = icmp eq i32 %72, %57
  br i1 %73, label %74, label %59

74:                                               ; preds = %59, %50
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.dp_catalog_dump_regs) #6
  %76 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 3
  %77 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 3, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = load i32, ptr %76, align 4
  %80 = add i32 %79, 15
  %81 = sdiv i32 %80, 16
  %82 = icmp sgt i32 %80, 15
  br i1 %82, label %83, label %98

83:                                               ; preds = %83, %74
  %84 = phi i32 [ %96, %83 ], [ 0, %74 ]
  %85 = phi i32 [ %95, %83 ], [ 0, %74 ]
  %86 = getelementptr i8, ptr %78, i32 %85
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #5, !srcloc !8
  %88 = getelementptr i8, ptr %86, i32 4
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #5, !srcloc !8
  %90 = getelementptr i8, ptr %86, i32 8
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %90) #5, !srcloc !8
  %92 = getelementptr i8, ptr %86, i32 12
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !8
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.dump_regs, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93) #6
  %95 = add nuw nsw i32 %85, 16
  %96 = add nuw nsw i32 %84, 1
  %97 = icmp eq i32 %96, %81
  br i1 %97, label %98, label %83

98:                                               ; preds = %83, %74
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_get_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_region, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  %8 = and i32 %7, -613566753
  %9 = shl i32 %7, 1
  %10 = and i32 %9, 306783376
  %11 = or i32 %10, 613566752
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.dss_io_region, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #5, !srcloc !10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_update_transfer_unit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dss_io_data, ptr %6, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %2) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr inbounds %struct.dss_io_data, ptr %10, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %1) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.dss_io_data, ptr %14, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %3) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_state_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %1) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_config_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.8, i32 noundef %1) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %1) #5, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_lane_mapping(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 228) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_mainlink_ctrl(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i1 %1 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.9, i32 noundef %3) #5
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dss_io_data, ptr %5, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5
  br i1 %1, label %9, label %25

9:                                                ; preds = %2
  %10 = and i32 %8, -4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dss_io_data, ptr %11, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #5, !srcloc !10
  %14 = or i32 %10, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.dss_io_data, ptr %15, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.dss_io_data, ptr %18, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %10) #5, !srcloc !10
  %21 = or i32 %10, 33554433
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.dss_io_data, ptr %22, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #5, !srcloc !10
  br label %30

25:                                               ; preds = %2
  %26 = and i32 %8, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.dss_io_data, ptr %27, i32 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #5, !srcloc !10
  br label %30

30:                                               ; preds = %25, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_config_misc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dss_io_data, ptr %5, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 44
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  %10 = and i32 %9, -226
  %11 = shl i32 %1, 1
  %12 = shl i32 %2, 5
  %13 = or i32 %11, %12
  %14 = or i32 %13, %10
  %15 = or i32 %14, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.10, i32 noundef %15) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.dss_io_data, ptr %16, i32 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_config_msa(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #5
  store i32 0, ptr %5, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store i32 0, ptr %6, align 4, !annotation !13
  %7 = icmp eq i32 %1, 810000
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  switch i32 %1, label %10 [
    i32 1620000, label %11
    i32 270000, label %11
    i32 540000, label %9
  ]

9:                                                ; preds = %8
  br label %11

10:                                               ; preds = %8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #5
  br label %11

11:                                               ; preds = %10, %9, %8, %8, %4
  %12 = phi i32 [ 4, %9 ], [ 0, %10 ], [ 6, %4 ], [ 2, %8 ], [ 2, %8 ]
  %13 = mul i32 %1, 10
  %14 = udiv i32 %13, %12
  call void @rational_best_approximation(i32 noundef %14, i32 noundef %2, i32 noundef 65535, i32 noundef 65535, ptr noundef nonnull %5, ptr noundef nonnull %6) #5
  %15 = load i32, ptr %5, align 4
  %16 = load i32, ptr %6, align 4
  %17 = xor i32 %15, -1
  %18 = add i32 %16, %17
  %19 = and i32 %18, 65535
  store i32 %19, ptr %5, align 4
  %20 = and i32 %16, 65535
  %21 = mul nuw nsw i32 %20, 5
  %22 = sub i32 %15, %16
  %23 = and i32 %22, 65535
  %24 = add nuw nsw i32 %23, %20
  %25 = icmp ult i32 %24, 32768
  br i1 %25, label %26, label %32

26:                                               ; preds = %11
  %27 = trunc i32 %24 to i16
  %28 = udiv i16 -32768, %27
  %29 = zext i16 %28 to i32
  %30 = mul nuw nsw i32 %24, %29
  %31 = mul i32 %21, %29
  br label %32

32:                                               ; preds = %26, %11
  %33 = phi i32 [ %30, %26 ], [ %24, %11 ]
  %34 = phi i32 [ %31, %26 ], [ %21, %11 ]
  %35 = icmp eq i32 %1, 540000
  %36 = zext i1 %35 to i32
  %37 = shl nuw nsw i32 %33, %36
  %38 = mul i32 %37, 3
  %39 = select i1 %7, i32 %38, i32 %37
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.12, i32 noundef %34, i32 noundef %39) #5
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  call void @arm_heavy_mb() #5
  %40 = getelementptr i8, ptr %0, i32 -8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dss_io_data, ptr %41, i32 0, i32 2, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr i8, ptr %43, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %34) #5, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  call void @arm_heavy_mb() #5
  %45 = load ptr, ptr %40, align 4
  %46 = getelementptr inbounds %struct.dss_io_data, ptr %45, i32 0, i32 2, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i8, ptr %47, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %39) #5, !srcloc !10
  call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  call void @arm_heavy_mb() #5
  %49 = load ptr, ptr %40, align 4
  %50 = getelementptr inbounds %struct.dss_io_data, ptr %49, i32 0, i32 3, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #5, !srcloc !10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_ctrl_set_pattern(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -1
  %4 = shl nuw i32 1, %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %4, i32 noundef %1) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dss_io_data, ptr %6, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %4) #5, !srcloc !10
  %10 = shl i32 %4, 3
  %11 = tail call i64 @ktime_get() #5
  %12 = add i64 %11, 10000000
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.dss_io_data, ptr %13, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 64
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %18 = and i32 %17, %10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %29, %2
  %21 = tail call i64 @ktime_get() #5
  %22 = icmp sgt i64 %21, %12
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr inbounds %struct.dss_io_data, ptr %24, i32 0, i32 2, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 64
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  br label %37

29:                                               ; preds = %20
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr inbounds %struct.dss_io_data, ptr %30, i32 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 64
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %35 = and i32 %34, %10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %20, label %37

37:                                               ; preds = %29, %23, %2
  %38 = phi i32 [ %28, %23 ], [ %17, %2 ], [ %34, %29 ]
  %39 = and i32 %38, %10
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %1) #5
  br label %42

42:                                               ; preds = %41, %37
  %43 = phi i32 [ -110, %41 ], [ 0, %37 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_region, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  %8 = or i32 %7, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dss_io_region, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #5, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  %13 = and i32 %7, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.dss_io_region, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_catalog_ctrl_mainlink_ready(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @ktime_get() #5
  %3 = add i64 %2, 10000000
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dss_io_data, ptr %5, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %21, %1
  %13 = tail call i64 @ktime_get() #5
  %14 = icmp sgt i64 %13, %3
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.dss_io_data, ptr %16, i32 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 64
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  br label %29

21:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.dss_io_data, ptr %22, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 64
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %12, label %29

29:                                               ; preds = %21, %15, %1
  %30 = phi i32 [ %20, %15 ], [ %9, %1 ], [ %26, %21 ]
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #5
  br label %34

34:                                               ; preds = %33, %29
  %35 = xor i1 %32, true
  ret i1 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_enable_irq(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dss_io_region, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  br i1 %1, label %8, label %13

8:                                                ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 613566752) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.dss_io_region, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 2340) #5, !srcloc !10
  br label %18

13:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.dss_io_region, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #5, !srcloc !10
  br label %18

18:                                               ; preds = %13, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_hpd_config_intr(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dss_io_data, ptr %5, i32 0, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  %10 = or i32 %9, %1
  %11 = xor i32 %1, -1
  %12 = and i32 %9, %11
  %13 = select i1 %2, i32 %10, i32 %12
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %13) #5
  %14 = and i32 %13, 15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.dss_io_data, ptr %15, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_hpd_config(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.dss_io_data, ptr %8, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  %13 = or i32 %12, 9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.16, i32 noundef 9, i32 noundef %13) #5
  %14 = and i32 %13, 15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.dss_io_data, ptr %15, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %14) #5, !srcloc !10
  %19 = or i32 %7, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr inbounds %struct.dss_io_data, ptr %20, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.dss_io_data, ptr %24, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_link_is_connected(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.17, i32 noundef %7) #5
  %8 = lshr i32 %7, 28
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_hpd_get_intr_status(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  %8 = and i32 %7, 15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dss_io_data, ptr %9, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %8) #5, !srcloc !10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_ctrl_get_interrupt(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_region, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  %8 = and i32 %7, -2341
  %9 = shl i32 %7, 1
  %10 = and i32 %9, 1170
  %11 = or i32 %10, 2340
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.dss_io_region, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #5, !srcloc !10
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_phy_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_region, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 5) #5, !srcloc !10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.dss_io_region, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_ctrl_update_vx_px(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dp_io, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dp_io, ptr %5, i32 0, i32 2
  %9 = zext i8 %1 to i32
  %10 = getelementptr inbounds %struct.dp_io, ptr %5, i32 0, i32 2, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = zext i8 %2 to i32
  %12 = getelementptr inbounds %struct.dp_io, ptr %5, i32 0, i32 2, i32 0, i32 6
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dp_io, ptr %5, i32 0, i32 2, i32 0, i32 10
  %14 = load i8, ptr %13, align 4
  %15 = or i8 %14, 8
  store i8 %15, ptr %13, align 4
  %16 = tail call i32 @phy_configure(ptr noundef %7, ptr noundef %8) #5
  %17 = load i8, ptr %13, align 4
  %18 = and i8 %17, -9
  store i8 %18, ptr %13, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_send_phy_pattern(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #5, !srcloc !10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.18, i32 noundef %1) #5
  switch i32 %1, label %93 [
    i32 1, label %8
    i32 2, label %13
    i32 3, label %30
    i32 4, label %35
    i32 5, label %52
    i32 7, label %85
  ]

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr inbounds %struct.dss_io_data, ptr %9, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #5, !srcloc !10
  br label %94

13:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.dss_io_data, ptr %14, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.dss_io_data, ptr %18, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 252) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.dss_io_data, ptr %22, i32 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 2) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.dss_io_data, ptr %26, i32 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 16) #5, !srcloc !10
  br label %94

30:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.dss_io_data, ptr %31, i32 0, i32 2, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 32) #5, !srcloc !10
  br label %94

35:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr inbounds %struct.dss_io_data, ptr %36, i32 0, i32 2, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 64) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.dss_io_data, ptr %40, i32 0, i32 2, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1041204192) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.dss_io_data, ptr %44, i32 0, i32 2, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 260301048) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr inbounds %struct.dss_io_data, ptr %48, i32 0, i32 2, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 63550) #5, !srcloc !10
  br label %94

52:                                               ; preds = %2
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds %struct.dss_io_data, ptr %53, i32 0, i32 2, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !8
  %57 = and i32 %56, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.dss_io_data, ptr %58, i32 0, i32 2, i32 1
  %60 = load ptr, ptr %59, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %57) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.dss_io_data, ptr %61, i32 0, i32 2, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 65536) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.dss_io_data, ptr %65, i32 0, i32 2, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr i8, ptr %67, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 65788) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds %struct.dss_io_data, ptr %69, i32 0, i32 2, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr i8, ptr %71, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 2) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr inbounds %struct.dss_io_data, ptr %73, i32 0, i32 2, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 16) #5, !srcloc !10
  %77 = load ptr, ptr %3, align 4
  %78 = getelementptr inbounds %struct.dss_io_data, ptr %77, i32 0, i32 2, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #5, !srcloc !8
  %81 = or i32 %80, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr inbounds %struct.dss_io_data, ptr %82, i32 0, i32 2, i32 1
  %84 = load ptr, ptr %83, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %81) #5, !srcloc !10
  br label %94

85:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr inbounds %struct.dss_io_data, ptr %86, i32 0, i32 2, i32 1
  %88 = load ptr, ptr %87, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 1) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %89 = load ptr, ptr %3, align 4
  %90 = getelementptr inbounds %struct.dss_io_data, ptr %89, i32 0, i32 2, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 8) #5, !srcloc !10
  br label %94

93:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.19, i32 noundef %1) #5
  br label %94

94:                                               ; preds = %93, %85, %52, %35, %30, %13, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_ctrl_read_phy_pattern(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_panel_timing_cfg(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dss_io_data, ptr %5, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %3) #5, !srcloc !10
  %9 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dss_io_data, ptr %11, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #5, !srcloc !10
  %15 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.dss_io_data, ptr %17, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %16) #5, !srcloc !10
  %21 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.dss_io_data, ptr %23, i32 0, i32 2, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %22) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.dss_io_data, ptr %27, i32 0, i32 3, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #5, !srcloc !10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_panel_tpg_enable(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 4
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 9
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 7
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = sub nsw i32 %8, %11
  %13 = mul i32 %12, %5
  %14 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = add nsw i32 %12, %16
  %18 = mul i32 %17, %5
  %19 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = sub nsw i32 %5, %21
  %23 = add i32 %22, %13
  %24 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %25 = load i16, ptr %24, align 4
  %26 = zext i16 %25 to i32
  %27 = xor i32 %21, -1
  %28 = add nsw i32 %26, %27
  %29 = add i32 %18, %28
  %30 = add nsw i32 %28, %5
  %31 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 8
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %33, %11
  %35 = shl nuw i32 %5, 16
  %36 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 3
  %37 = load i16, ptr %36, align 4
  %38 = zext i16 %37 to i32
  %39 = sub nsw i32 %38, %21
  %40 = or i32 %39, %35
  %41 = shl i32 %30, 16
  %42 = or i32 %41, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %43 = getelementptr i8, ptr %0, i32 -8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.dss_io_data, ptr %44, i32 0, i32 3, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %48 = load ptr, ptr %43, align 4
  %49 = getelementptr inbounds %struct.dss_io_data, ptr %48, i32 0, i32 3, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %40) #5, !srcloc !10
  %52 = mul nuw i32 %8, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %53 = load ptr, ptr %43, align 4
  %54 = getelementptr inbounds %struct.dss_io_data, ptr %53, i32 0, i32 3, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %52) #5, !srcloc !10
  %57 = mul i32 %34, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %58 = load ptr, ptr %43, align 4
  %59 = getelementptr inbounds %struct.dss_io_data, ptr %58, i32 0, i32 3, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %57) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %62 = load ptr, ptr %43, align 4
  %63 = getelementptr inbounds %struct.dss_io_data, ptr %62, i32 0, i32 3, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %66 = load ptr, ptr %43, align 4
  %67 = getelementptr inbounds %struct.dss_io_data, ptr %66, i32 0, i32 3, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %70 = load ptr, ptr %43, align 4
  %71 = getelementptr inbounds %struct.dss_io_data, ptr %70, i32 0, i32 3, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %42) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %74 = load ptr, ptr %43, align 4
  %75 = getelementptr inbounds %struct.dss_io_data, ptr %74, i32 0, i32 3, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %76, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %78 = load ptr, ptr %43, align 4
  %79 = getelementptr inbounds %struct.dss_io_data, ptr %78, i32 0, i32 3, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %23) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %82 = load ptr, ptr %43, align 4
  %83 = getelementptr inbounds %struct.dss_io_data, ptr %82, i32 0, i32 3, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %29) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %86 = load ptr, ptr %43, align 4
  %87 = getelementptr inbounds %struct.dss_io_data, ptr %86, i32 0, i32 3, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %90 = load ptr, ptr %43, align 4
  %91 = getelementptr inbounds %struct.dss_io_data, ptr %90, i32 0, i32 3, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %94 = load ptr, ptr %43, align 4
  %95 = getelementptr inbounds %struct.dss_io_data, ptr %94, i32 0, i32 3, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr i8, ptr %96, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %98 = load ptr, ptr %43, align 4
  %99 = getelementptr inbounds %struct.dss_io_data, ptr %98, i32 0, i32 3, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr i8, ptr %100, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %102 = load ptr, ptr %43, align 4
  %103 = getelementptr inbounds %struct.dss_io_data, ptr %102, i32 0, i32 3, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr i8, ptr %104, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %106 = load ptr, ptr %43, align 4
  %107 = getelementptr inbounds %struct.dss_io_data, ptr %106, i32 0, i32 3, i32 1
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %110 = load ptr, ptr %43, align 4
  %111 = getelementptr inbounds %struct.dss_io_data, ptr %110, i32 0, i32 3, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr i8, ptr %112, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %114 = load ptr, ptr %43, align 4
  %115 = getelementptr inbounds %struct.dss_io_data, ptr %114, i32 0, i32 3, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr i8, ptr %116, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 256) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %118 = load ptr, ptr %43, align 4
  %119 = getelementptr inbounds %struct.dss_io_data, ptr %118, i32 0, i32 3, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr i8, ptr %120, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 5) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %122 = load ptr, ptr %43, align 4
  %123 = getelementptr inbounds %struct.dss_io_data, ptr %122, i32 0, i32 3, i32 1
  %124 = load ptr, ptr %123, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 1) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %125 = load ptr, ptr %43, align 4
  %126 = getelementptr inbounds %struct.dss_io_data, ptr %125, i32 0, i32 3, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 1) #5, !srcloc !10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.dp_catalog_panel_tpg_enable) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_panel_tpg_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.dss_io_data, ptr %7, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.dss_io_data, ptr %10, i32 0, i32 3, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dp_catalog_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #5
  br label %11

5:                                                ; preds = %2
  %6 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 56, i32 noundef 3520) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.dp_catalog_private, ptr %6, i32 0, i32 1
  store ptr %1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.dp_catalog_private, ptr %6, i32 0, i32 3
  br label %11

11:                                               ; preds = %8, %5, %4
  %12 = phi ptr [ %10, %8 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_get_header(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [3 x i32], ptr %5, i32 %7, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 -8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dss_io_data, ptr %13, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 %11
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  %18 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 7
  store i32 %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_set_header(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [3 x i32], ptr %5, i32 %7, i32 %9
  %13 = load i32, ptr %12, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %14 = getelementptr i8, ptr %0, i32 -8
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dss_io_data, ptr %15, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %11) #5, !srcloc !10
  br label %19

19:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_config_acr(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 4
  %7 = or i32 %6, -2147467008
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.22, i32 noundef %5, i32 noundef %7) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %8 = getelementptr i8, ptr %0, i32 -8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dss_io_data, ptr %9, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %7) #5, !srcloc !10
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_enable(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %20, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dss_io_data, ptr %8, i32 0, i32 2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 512
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  %13 = and i32 %12, -2
  %14 = zext i1 %6 to i32
  %15 = or i32 %13, %14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.23, i32 noundef %15) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.dss_io_data, ptr %16, i32 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %15) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  br label %20

20:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_config_sdp(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dss_io_data, ptr %5, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 552
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  %10 = or i32 %9, 1048678
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.24, i32 noundef %10) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dss_io_data, ptr %11, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %10) #5, !srcloc !10
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.dss_io_data, ptr %15, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 556
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  %20 = and i32 %19, -4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.25, i32 noundef %20) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.dss_io_data, ptr %21, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #5, !srcloc !10
  br label %25

25:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dp_catalog_audio_init(ptr noundef writeonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr i8, ptr %0, i32 -4
  store ptr @dp_catalog_audio_init.sdp_map, ptr %4, align 4
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_sfe_level(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dp_catalog, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dss_io_data, ptr %7, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 68
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  %12 = and i32 %11, 4064
  %13 = or i32 %12, %5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.26, i32 noundef %13, i32 noundef %5) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.dss_io_data, ptr %14, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %13) #5, !srcloc !10
  br label %18

18:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 2419323}
!9 = !{i64 2155776946}
!10 = !{i64 2418905}
!11 = !{i64 2155777907}
!12 = !{i64 2155779828}
!13 = !{!"auto-init"}
!14 = !{i64 2155778446}
!15 = !{i64 2155813163}
!16 = !{i64 2155813599}
!17 = !{i64 2155822146}
!18 = !{i64 2155822582}
!19 = !{i64 2155851278}
