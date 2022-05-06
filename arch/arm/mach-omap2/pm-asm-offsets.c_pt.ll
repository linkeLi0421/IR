; ModuleID = '/llk/IR/arch/arm/mach-omap2/pm-asm-offsets.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm-asm-offsets.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @main() local_unnamed_addr #0 {
  tail call void asm sideeffect "\0A.ascii \22->EMIF_SDCFG_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_sdcfg_val)\22", "i"(i32 0) #1, !srcloc !8
  tail call void asm sideeffect "\0A.ascii \22->EMIF_TIMING1_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_timing1_val)\22", "i"(i32 4) #1, !srcloc !9
  tail call void asm sideeffect "\0A.ascii \22->EMIF_TIMING2_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_timing2_val)\22", "i"(i32 8) #1, !srcloc !10
  tail call void asm sideeffect "\0A.ascii \22->EMIF_TIMING3_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_timing3_val)\22", "i"(i32 12) #1, !srcloc !11
  tail call void asm sideeffect "\0A.ascii \22->EMIF_REF_CTRL_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_ref_ctrl_val)\22", "i"(i32 16) #1, !srcloc !12
  tail call void asm sideeffect "\0A.ascii \22->EMIF_ZQCFG_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_zqcfg_val)\22", "i"(i32 20) #1, !srcloc !13
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PMCR_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_pmcr_val)\22", "i"(i32 24) #1, !srcloc !14
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PMCR_SHDW_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_pmcr_shdw_val)\22", "i"(i32 28) #1, !srcloc !15
  tail call void asm sideeffect "\0A.ascii \22->EMIF_RD_WR_LEVEL_RAMP_CTRL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_rd_wr_level_ramp_ctrl)\22", "i"(i32 32) #1, !srcloc !16
  tail call void asm sideeffect "\0A.ascii \22->EMIF_RD_WR_EXEC_THRESH_OFFSET $0 offsetof(struct emif_regs_amx3, emif_rd_wr_exec_thresh)\22", "i"(i32 36) #1, !srcloc !17
  tail call void asm sideeffect "\0A.ascii \22->EMIF_COS_CONFIG_OFFSET $0 offsetof(struct emif_regs_amx3, emif_cos_config)\22", "i"(i32 40) #1, !srcloc !18
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PRIORITY_TO_COS_MAPPING_OFFSET $0 offsetof(struct emif_regs_amx3, emif_priority_to_cos_mapping)\22", "i"(i32 44) #1, !srcloc !19
  tail call void asm sideeffect "\0A.ascii \22->EMIF_CONNECT_ID_SERV_1_MAP_OFFSET $0 offsetof(struct emif_regs_amx3, emif_connect_id_serv_1_map)\22", "i"(i32 48) #1, !srcloc !20
  tail call void asm sideeffect "\0A.ascii \22->EMIF_CONNECT_ID_SERV_2_MAP_OFFSET $0 offsetof(struct emif_regs_amx3, emif_connect_id_serv_2_map)\22", "i"(i32 52) #1, !srcloc !21
  tail call void asm sideeffect "\0A.ascii \22->EMIF_OCP_CONFIG_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_ocp_config_val)\22", "i"(i32 56) #1, !srcloc !22
  tail call void asm sideeffect "\0A.ascii \22->EMIF_LPDDR2_NVM_TIM_OFFSET $0 offsetof(struct emif_regs_amx3, emif_lpddr2_nvm_tim)\22", "i"(i32 60) #1, !srcloc !23
  tail call void asm sideeffect "\0A.ascii \22->EMIF_LPDDR2_NVM_TIM_SHDW_OFFSET $0 offsetof(struct emif_regs_amx3, emif_lpddr2_nvm_tim_shdw)\22", "i"(i32 64) #1, !srcloc !24
  tail call void asm sideeffect "\0A.ascii \22->EMIF_DLL_CALIB_CTRL_VAL_OFFSET $0 offsetof(struct emif_regs_amx3, emif_dll_calib_ctrl_val)\22", "i"(i32 68) #1, !srcloc !25
  tail call void asm sideeffect "\0A.ascii \22->EMIF_DLL_CALIB_CTRL_VAL_SHDW_OFFSET $0 offsetof(struct emif_regs_amx3, emif_dll_calib_ctrl_val_shdw)\22", "i"(i32 72) #1, !srcloc !26
  tail call void asm sideeffect "\0A.ascii \22->EMIF_DDR_PHY_CTLR_1_OFFSET $0 offsetof(struct emif_regs_amx3, emif_ddr_phy_ctlr_1)\22", "i"(i32 76) #1, !srcloc !27
  tail call void asm sideeffect "\0A.ascii \22->EMIF_EXT_PHY_CTRL_VALS_OFFSET $0 offsetof(struct emif_regs_amx3, emif_ext_phy_ctrl_vals)\22", "i"(i32 80) #1, !srcloc !28
  tail call void asm sideeffect "\0A.ascii \22->EMIF_REGS_AMX3_SIZE $0 sizeof(struct emif_regs_amx3)\22", "i"(i32 560) #1, !srcloc !29
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !30
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_BASE_ADDR_VIRT_OFFSET $0 offsetof(struct ti_emif_pm_data, ti_emif_base_addr_virt)\22", "i"(i32 0) #1, !srcloc !31
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_BASE_ADDR_PHYS_OFFSET $0 offsetof(struct ti_emif_pm_data, ti_emif_base_addr_phys)\22", "i"(i32 4) #1, !srcloc !32
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_CONFIG_OFFSET $0 offsetof(struct ti_emif_pm_data, ti_emif_sram_config)\22", "i"(i32 8) #1, !srcloc !33
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_REGS_VIRT_OFFSET $0 offsetof(struct ti_emif_pm_data, regs_virt)\22", "i"(i32 12) #1, !srcloc !34
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_REGS_PHYS_OFFSET $0 offsetof(struct ti_emif_pm_data, regs_phys)\22", "i"(i32 16) #1, !srcloc !35
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_DATA_SIZE $0 sizeof(struct ti_emif_pm_data)\22", "i"(i32 24) #1, !srcloc !36
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !37
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_SAVE_CONTEXT_OFFSET $0 offsetof(struct ti_emif_pm_functions, save_context)\22", "i"(i32 0) #1, !srcloc !38
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_RESTORE_CONTEXT_OFFSET $0 offsetof(struct ti_emif_pm_functions, restore_context)\22", "i"(i32 4) #1, !srcloc !39
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_RUN_HW_LEVELING $0 offsetof(struct ti_emif_pm_functions, run_hw_leveling)\22", "i"(i32 8) #1, !srcloc !40
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_ENTER_SR_OFFSET $0 offsetof(struct ti_emif_pm_functions, enter_sr)\22", "i"(i32 12) #1, !srcloc !41
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_EXIT_SR_OFFSET $0 offsetof(struct ti_emif_pm_functions, exit_sr)\22", "i"(i32 16) #1, !srcloc !42
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_ABORT_SR_OFFSET $0 offsetof(struct ti_emif_pm_functions, abort_sr)\22", "i"(i32 20) #1, !srcloc !43
  tail call void asm sideeffect "\0A.ascii \22->EMIF_PM_FUNCTIONS_SIZE $0 sizeof(struct ti_emif_pm_functions)\22", "i"(i32 24) #1, !srcloc !44
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_WFI_FLAGS_OFFSET $0 offsetof(struct am33xx_pm_sram_data, wfi_flags)\22", "i"(i32 0) #1, !srcloc !45
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_L2_AUX_CTRL_VAL_OFFSET $0 offsetof(struct am33xx_pm_sram_data, l2_aux_ctrl_val)\22", "i"(i32 4) #1, !srcloc !46
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_L2_PREFETCH_CTRL_VAL_OFFSET $0 offsetof(struct am33xx_pm_sram_data, l2_prefetch_ctrl_val)\22", "i"(i32 8) #1, !srcloc !47
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_SRAM_DATA_SIZE $0 sizeof(struct am33xx_pm_sram_data)\22", "i"(i32 16) #1, !srcloc !48
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !49
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_RO_SRAM_DATA_VIRT_OFFSET $0 offsetof(struct am33xx_pm_ro_sram_data, amx3_pm_sram_data_virt)\22", "i"(i32 0) #1, !srcloc !50
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_RO_SRAM_DATA_PHYS_OFFSET $0 offsetof(struct am33xx_pm_ro_sram_data, amx3_pm_sram_data_phys)\22", "i"(i32 4) #1, !srcloc !51
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_RTC_BASE_VIRT_OFFSET $0 offsetof(struct am33xx_pm_ro_sram_data, rtc_base_virt)\22", "i"(i32 8) #1, !srcloc !52
  tail call void asm sideeffect "\0A.ascii \22->AMX3_PM_RO_SRAM_DATA_SIZE $0 sizeof(struct am33xx_pm_ro_sram_data)\22", "i"(i32 16) #1, !srcloc !53
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }

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
!8 = !{i64 2147681075, i64 2147681078}
!9 = !{i64 2147681409, i64 2147681412}
!10 = !{i64 2147681753, i64 2147681756}
!11 = !{i64 2147682097, i64 2147682100}
!12 = !{i64 2147682441, i64 2147682444}
!13 = !{i64 2147682790, i64 2147682793}
!14 = !{i64 2147683124, i64 2147683127}
!15 = !{i64 2147683453, i64 2147683456}
!16 = !{i64 2147683807, i64 2147683810}
!17 = !{i64 2147684201, i64 2147684204}
!18 = !{i64 2147684575, i64 2147684578}
!19 = !{i64 2147684914, i64 2147684917}
!20 = !{i64 2147685318, i64 2147685321}
!21 = !{i64 2147685712, i64 2147685715}
!22 = !{i64 2147686106, i64 2147686109}
!23 = !{i64 2147686465, i64 2147686468}
!24 = !{i64 2147686824, i64 2147686827}
!25 = !{i64 2147687208, i64 2147687211}
!26 = !{i64 2147687587, i64 2147687590}
!27 = !{i64 2147687991, i64 2147687994}
!28 = !{i64 2147688350, i64 2147688353}
!29 = !{i64 2147688724, i64 2147688727}
!30 = !{i64 2147688874, i64 2147688877}
!31 = !{i64 2147688911, i64 2147688914}
!32 = !{i64 2147689289, i64 2147689292}
!33 = !{i64 2147689667, i64 2147689670}
!34 = !{i64 2147690025, i64 2147690028}
!35 = !{i64 2147690346, i64 2147690349}
!36 = !{i64 2147690667, i64 2147690670}
!37 = !{i64 2147690817, i64 2147690820}
!38 = !{i64 2147690854, i64 2147690857}
!39 = !{i64 2147691210, i64 2147691213}
!40 = !{i64 2147691581, i64 2147691584}
!41 = !{i64 2147691945, i64 2147691948}
!42 = !{i64 2147692281, i64 2147692284}
!43 = !{i64 2147692612, i64 2147692615}
!44 = !{i64 2147692948, i64 2147692951}
!45 = !{i64 2147693113, i64 2147693116}
!46 = !{i64 2147693450, i64 2147693453}
!47 = !{i64 2147693817, i64 2147693820}
!48 = !{i64 2147694209, i64 2147694212}
!49 = !{i64 2147694372, i64 2147694375}
!50 = !{i64 2147694409, i64 2147694412}
!51 = !{i64 2147694818, i64 2147694821}
!52 = !{i64 2147695227, i64 2147695230}
!53 = !{i64 2147695596, i64 2147695599}
