; ModuleID = '/llk/IR/arch/arm/mach-omap2/io.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/io.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_desc = type { i32, i32, i32, i32 }

@omap34xx_io_desc = internal global [7 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 425984, i32 1048576, i32 0 }, %struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }, %struct.map_desc { i32 -33554432, i32 450560, i32 1048576, i32 0 }, %struct.map_desc { i32 -67108864, i32 442368, i32 1048576, i32 0 }, %struct.map_desc { i32 -50331648, i32 446464, i32 1048576, i32 0 }, %struct.map_desc { i32 -83886080, i32 299008, i32 1048576, i32 0 }, %struct.map_desc { i32 -25165824, i32 344064, i32 8388608, i32 0 }], section ".init.data", align 4
@omapti81xx_io_desc = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }], section ".init.data", align 4
@omapam33xx_io_desc = internal global [2 x %struct.map_desc] [%struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }, %struct.map_desc { i32 -104857600, i32 281600, i32 4194304, i32 0 }], section ".init.data", align 4
@omap44xx_io_desc = internal global [3 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 278528, i32 1048576, i32 0 }, %struct.map_desc { i32 -67108864, i32 303104, i32 4194304, i32 0 }, %struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }], section ".init.data", align 4
@omap54xx_io_desc = internal global [4 x %struct.map_desc] [%struct.map_desc { i32 -134217728, i32 278528, i32 1048576, i32 0 }, %struct.map_desc { i32 -67108864, i32 303104, i32 4194304, i32 0 }, %struct.map_desc { i32 -52428800, i32 306688, i32 2097152, i32 0 }, %struct.map_desc { i32 -100663296, i32 294912, i32 4194304, i32 0 }], section ".init.data", align 4
@dra7xx_io_desc = internal global [7 x %struct.map_desc] [%struct.map_desc { i32 -98500608, i32 295440, i32 1048576, i32 0 }, %struct.map_desc { i32 -134217728, i32 278528, i32 1048576, i32 0 }, %struct.map_desc { i32 -100663296, i32 294912, i32 1048576, i32 0 }, %struct.map_desc { i32 -96468992, i32 295936, i32 1048576, i32 0 }, %struct.map_desc { i32 -92274688, i32 296960, i32 2097152, i32 0 }, %struct.map_desc { i32 -67108864, i32 303104, i32 3145728, i32 0 }, %struct.map_desc { i32 -52428800, i32 306688, i32 1048576, i32 0 }], section ".init.data", align 4
@omap_clk_soc_init = internal unnamed_addr global ptr null, align 4
@omap_pm_soc_init = external dso_local local_unnamed_addr global ptr, align 4
@omap_features = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"dpll3_m2_ck\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\016Reprogramming SDRC clock to %ld Hz\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\013dpll3_m2_clk rate change failed: %d\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3_map_io() local_unnamed_addr #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @omap34xx_io_desc, i32 noundef 7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti81xx_map_io() local_unnamed_addr #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @omapti81xx_io_desc, i32 noundef 1) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @am33xx_map_io() local_unnamed_addr #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @omapam33xx_io_desc, i32 noundef 2) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap4_map_io() local_unnamed_addr #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @omap44xx_io_desc, i32 noundef 3) #6
  tail call void @omap_barriers_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_barriers_init() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap5_map_io() local_unnamed_addr #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @omap54xx_io_desc, i32 noundef 4) #6
  tail call void @omap_barriers_init() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @dra7xx_map_io() local_unnamed_addr #0 section ".init.text" {
  tail call void @iotable_init(ptr noundef nonnull @dra7xx_io_desc, i32 noundef 7) #6
  tail call void @omap_barriers_init() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3_init_early() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i8, align 1
  tail call void @omap2_set_globals_tap(i32 noundef 875561012, ptr noundef nonnull inttoptr (i32 -97476608 to ptr)) #7
  tail call void @omap2_set_globals_sdrc(ptr noundef nonnull inttoptr (i32 -50331648 to ptr), ptr noundef nonnull inttoptr (i32 -67108864 to ptr)) #6
  %2 = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @omap3xxx_check_features() #6
  %3 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap3xxx_voltagedomains_init() #6
  tail call void @omap3xxx_powerdomains_init() #6
  tail call void @omap3xxx_clockdomains_init() #7
  %4 = tail call i32 @omap3xxx_hwmod_init() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #6
  store i8 5, ptr %1, align 1
  %5 = call i32 @omap_hwmod_for_each(ptr noundef nonnull @_set_hwmod_postsetup_state, ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #6
  call void @omap_secure_init() #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap2_set_globals_tap(i32 noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_set_globals_sdrc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_control_base_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_check_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_check_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prcm_base_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_voltagedomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap3xxx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3xxx_hwmod_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_secure_init() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3430_init_early() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap3_init_early() #8
  store ptr @omap3430_dt_clk_init, ptr @omap_clk_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3430_dt_clk_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap35xx_init_early() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap3_init_early() #8
  store ptr @omap3430_dt_clk_init, ptr @omap_clk_soc_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap3630_init_early() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap3_init_early() #8
  store ptr @omap3630_dt_clk_init, ptr @omap_clk_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3630_dt_clk_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @am35xx_init_early() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap3_init_early() #8
  store ptr @am35xx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am35xx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap3_init_late() local_unnamed_addr #3 section ".init.text" {
  store ptr @omap3_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_pm_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ti81xx_init_late() local_unnamed_addr #3 section ".init.text" {
  store ptr @omap_pm_nop_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_pm_nop_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti814x_init_early() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i8, align 1
  tail call void @omap2_set_globals_tap(i32 noundef -2126511999, ptr noundef nonnull inttoptr (i32 -99351556 to ptr)) #7
  %2 = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @ti81xx_check_features() #6
  %3 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap3xxx_voltagedomains_init() #6
  tail call void @omap3xxx_powerdomains_init() #6
  tail call void @ti814x_clockdomains_init() #7
  %4 = tail call i32 @dm814x_hwmod_init() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #6
  store i8 5, ptr %1, align 1
  %5 = call i32 @omap_hwmod_for_each(ptr noundef nonnull @_set_hwmod_postsetup_state, ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #6
  store ptr @dm814x_dt_clk_init, ptr @omap_clk_soc_init, align 4
  call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti81xx_check_features() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ti814x_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm814x_hwmod_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm814x_dt_clk_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @ti816x_init_early() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i8, align 1
  tail call void @omap2_set_globals_tap(i32 noundef -2124414847, ptr noundef nonnull inttoptr (i32 -99351556 to ptr)) #7
  %2 = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @ti81xx_check_features() #6
  %3 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap3xxx_voltagedomains_init() #6
  tail call void @omap3xxx_powerdomains_init() #6
  tail call void @ti816x_clockdomains_init() #7
  %4 = tail call i32 @dm816x_hwmod_init() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #6
  store i8 5, ptr %1, align 1
  %5 = call i32 @omap_hwmod_for_each(ptr noundef nonnull @_set_hwmod_postsetup_state, ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #6
  store ptr @dm816x_dt_clk_init, ptr @omap_clk_soc_init, align 4
  call void @omap_secure_init() #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ti816x_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm816x_hwmod_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm816x_dt_clk_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @am33xx_init_early() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap2_set_globals_tap(i32 noundef 860880947, ptr noundef nonnull inttoptr (i32 -102693892 to ptr)) #7
  %1 = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @am33xx_check_features() #6
  %2 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @am33xx_powerdomains_init() #6
  tail call void @am33xx_clockdomains_init() #7
  store ptr @am33xx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_check_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @am33xx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am33xx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @am33xx_init_late() local_unnamed_addr #3 section ".init.text" {
  store ptr @amx3_common_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amx3_common_pm_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @am43xx_init_early() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap2_set_globals_tap(i32 noundef 860880947, ptr noundef nonnull inttoptr (i32 -102693892 to ptr)) #7
  %1 = tail call i32 @omap2_control_base_init() #6
  tail call void @omap3xxx_check_revision() #6
  tail call void @am33xx_check_features() #6
  %2 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @am43xx_powerdomains_init() #6
  tail call void @am43xx_clockdomains_init() #6
  %3 = tail call i32 @omap_l2_cache_init() #6
  store ptr @am43xx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @am43xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @am43xx_clockdomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_l2_cache_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @am43xx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @am43xx_init_late() local_unnamed_addr #3 section ".init.text" {
  store ptr @amx3_common_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap4430_init_early() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap2_set_globals_tap(i32 noundef 1143996484, ptr noundef nonnull inttoptr (i32 -67100672 to ptr)) #7
  tail call void @omap2_set_globals_prcm_mpu(ptr noundef nonnull inttoptr (i32 -98291712 to ptr)) #7
  %1 = tail call i32 @omap2_control_base_init() #6
  tail call void @omap4xxx_check_revision() #6
  tail call void @omap4xxx_check_features() #6
  %2 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap4_sar_ram_init() #6
  tail call void @omap4_mpuss_early_init() #6
  %3 = tail call i32 @omap4_pm_init_early() #6
  tail call void @omap44xx_voltagedomains_init() #6
  tail call void @omap44xx_powerdomains_init() #6
  tail call void @omap44xx_clockdomains_init() #7
  %4 = tail call i32 @omap_l2_cache_init() #6
  store ptr @omap4xxx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap2_set_globals_prcm_mpu(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4xxx_check_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4xxx_check_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_sar_ram_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_mpuss_early_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_pm_init_early() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap44xx_voltagedomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap44xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap44xx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4xxx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap4430_init_late() local_unnamed_addr #3 section ".init.text" {
  store ptr @omap4_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_pm_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap5_init_early() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap2_set_globals_tap(i32 noundef 1409286228, ptr noundef nonnull inttoptr (i32 -67100672 to ptr)) #7
  tail call void @omap2_set_globals_prcm_mpu(ptr noundef nonnull inttoptr (i32 -98291712 to ptr)) #7
  %1 = tail call i32 @omap2_control_base_init() #6
  %2 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @omap5xxx_check_revision() #6
  tail call void @omap4_sar_ram_init() #6
  tail call void @omap4_mpuss_early_init() #6
  %3 = tail call i32 @omap4_pm_init_early() #6
  tail call void @omap54xx_voltagedomains_init() #6
  tail call void @omap54xx_powerdomains_init() #6
  tail call void @omap54xx_clockdomains_init() #7
  store ptr @omap5xxx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5xxx_check_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap54xx_voltagedomains_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap54xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap54xx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap5xxx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap5_init_late() local_unnamed_addr #3 section ".init.text" {
  store ptr @omap4_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @dra7xx_init_early() local_unnamed_addr #0 section ".init.text" {
  tail call void @omap2_set_globals_tap(i32 noundef 117440512, ptr noundef nonnull inttoptr (i32 -52379648 to ptr)) #7
  tail call void @omap2_set_globals_prcm_mpu(ptr noundef nonnull inttoptr (i32 -98291712 to ptr)) #7
  %1 = tail call i32 @omap2_control_base_init() #6
  %2 = tail call i32 @omap4_pm_init_early() #6
  %3 = tail call i32 @omap2_prcm_base_init() #6
  tail call void @dra7xxx_check_revision() #6
  tail call void @dra7xx_powerdomains_init() #6
  tail call void @dra7xx_clockdomains_init() #7
  store ptr @dra7xx_dt_clk_init, ptr @omap_clk_soc_init, align 4
  tail call void @omap_secure_init() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dra7xxx_check_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dra7xx_powerdomains_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dra7xx_clockdomains_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dra7xx_dt_clk_init() #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dra7xx_init_late() local_unnamed_addr #3 section ".init.text" {
  store ptr @omap4_pm_init, ptr @omap_pm_soc_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_sdrc_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = tail call i32 @omap_sram_init() #6
  %4 = load i32, ptr @omap_features, align 4
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @omap2_sdrc_init(ptr noundef %0, ptr noundef %1) #6
  tail call fastcc void @_omap2_init_reprogram_sdrc() #8
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_sram_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_sdrc_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @_omap2_init_reprogram_sdrc() unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @omap_rev() #6
  %2 = and i32 %1, 255
  %3 = icmp eq i32 %2, 52
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str) #6
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @clk_get_rate(ptr noundef %5) #6
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %8) #7
  %10 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %8) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %10) #7
  br label %14

14:                                               ; preds = %12, %7
  tail call void @clk_put(ptr noundef %5) #6
  br label %15

15:                                               ; preds = %14, %4, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap_clk_init() local_unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @omap_clk_soc_init, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  tail call void @ti_clk_init_features() #7
  %4 = tail call i32 @omap2_clk_setup_ll_ops() #7
  %5 = tail call i32 @omap_control_init() #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = tail call i32 @omap_prcm_init() #6
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  tail call void @of_clk_init(ptr noundef null) #6
  tail call void @ti_dt_clk_init_retry_clks() #6
  tail call void @ti_dt_clockdomains_setup() #6
  %11 = load ptr, ptr @omap_clk_soc_init, align 4
  %12 = tail call i32 %11() #6
  br label %13

13:                                               ; preds = %10, %7, %3, %0
  %14 = phi i32 [ %12, %10 ], [ 0, %0 ], [ %5, %3 ], [ %8, %7 ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ti_clk_init_features() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap2_clk_setup_ll_ops() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_control_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prcm_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clk_init_retry_clks() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clockdomains_setup() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_set_hwmod_postsetup_state(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load i8, ptr %1, align 1
  %4 = tail call i32 @omap_hwmod_set_postsetup_state(ptr noundef %0, i8 noundef zeroext %3) #6
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_set_postsetup_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

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
