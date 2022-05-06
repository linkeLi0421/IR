; ModuleID = '/llk/IR/arch/arm/kernel/asm-offsets.c_pt.bc'
source_filename = "../arch/arm/kernel/asm-offsets.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @main() local_unnamed_addr #0 {
  tail call void asm sideeffect "\0A.ascii \22->TSK_ACTIVE_MM $0 offsetof(struct task_struct, active_mm)\22", "i"(i32 1160) #1, !srcloc !8
  tail call void asm sideeffect "\0A.ascii \22->TSK_STACK_CANARY $0 offsetof(struct task_struct, stack_canary)\22", "i"(i32 1296) #1, !srcloc !9
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !10
  tail call void asm sideeffect "\0A.ascii \22->TI_FLAGS $0 offsetof(struct thread_info, flags)\22", "i"(i32 0) #1, !srcloc !11
  tail call void asm sideeffect "\0A.ascii \22->TI_PREEMPT $0 offsetof(struct thread_info, preempt_count)\22", "i"(i32 4) #1, !srcloc !12
  tail call void asm sideeffect "\0A.ascii \22->TI_CPU $0 offsetof(struct thread_info, cpu)\22", "i"(i32 8) #1, !srcloc !13
  tail call void asm sideeffect "\0A.ascii \22->TI_CPU_DOMAIN $0 offsetof(struct thread_info, cpu_domain)\22", "i"(i32 12) #1, !srcloc !14
  tail call void asm sideeffect "\0A.ascii \22->TI_CPU_SAVE $0 offsetof(struct thread_info, cpu_context)\22", "i"(i32 16) #1, !srcloc !15
  tail call void asm sideeffect "\0A.ascii \22->TI_ABI_SYSCALL $0 offsetof(struct thread_info, abi_syscall)\22", "i"(i32 64) #1, !srcloc !16
  tail call void asm sideeffect "\0A.ascii \22->TI_USED_CP $0 offsetof(struct thread_info, used_cp)\22", "i"(i32 68) #1, !srcloc !17
  tail call void asm sideeffect "\0A.ascii \22->TI_TP_VALUE $0 offsetof(struct thread_info, tp_value)\22", "i"(i32 84) #1, !srcloc !18
  tail call void asm sideeffect "\0A.ascii \22->TI_FPSTATE $0 offsetof(struct thread_info, fpstate)\22", "i"(i32 96) #1, !srcloc !19
  tail call void asm sideeffect "\0A.ascii \22->TI_VFPSTATE $0 offsetof(struct thread_info, vfpstate)\22", "i"(i32 248) #1, !srcloc !20
  tail call void asm sideeffect "\0A.ascii \22->VFP_CPU $0 offsetof(union vfp_state, hard.cpu)\22", "i"(i32 272) #1, !srcloc !21
  tail call void asm sideeffect "\0A.ascii \22->TI_THUMBEE_STATE $0 offsetof(struct thread_info, thumbee_state)\22", "i"(i32 528) #1, !srcloc !22
  tail call void asm sideeffect "\0A.ascii \22->TI_IWMMXT_STATE $0 offsetof(struct thread_info, fpstate.iwmmxt)\22", "i"(i32 96) #1, !srcloc !23
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !24
  tail call void asm sideeffect "\0A.ascii \22->S_R0 $0 offsetof(struct pt_regs, ARM_r0)\22", "i"(i32 0) #1, !srcloc !25
  tail call void asm sideeffect "\0A.ascii \22->S_R1 $0 offsetof(struct pt_regs, ARM_r1)\22", "i"(i32 4) #1, !srcloc !26
  tail call void asm sideeffect "\0A.ascii \22->S_R2 $0 offsetof(struct pt_regs, ARM_r2)\22", "i"(i32 8) #1, !srcloc !27
  tail call void asm sideeffect "\0A.ascii \22->S_R3 $0 offsetof(struct pt_regs, ARM_r3)\22", "i"(i32 12) #1, !srcloc !28
  tail call void asm sideeffect "\0A.ascii \22->S_R4 $0 offsetof(struct pt_regs, ARM_r4)\22", "i"(i32 16) #1, !srcloc !29
  tail call void asm sideeffect "\0A.ascii \22->S_R5 $0 offsetof(struct pt_regs, ARM_r5)\22", "i"(i32 20) #1, !srcloc !30
  tail call void asm sideeffect "\0A.ascii \22->S_R6 $0 offsetof(struct pt_regs, ARM_r6)\22", "i"(i32 24) #1, !srcloc !31
  tail call void asm sideeffect "\0A.ascii \22->S_R7 $0 offsetof(struct pt_regs, ARM_r7)\22", "i"(i32 28) #1, !srcloc !32
  tail call void asm sideeffect "\0A.ascii \22->S_R8 $0 offsetof(struct pt_regs, ARM_r8)\22", "i"(i32 32) #1, !srcloc !33
  tail call void asm sideeffect "\0A.ascii \22->S_R9 $0 offsetof(struct pt_regs, ARM_r9)\22", "i"(i32 36) #1, !srcloc !34
  tail call void asm sideeffect "\0A.ascii \22->S_R10 $0 offsetof(struct pt_regs, ARM_r10)\22", "i"(i32 40) #1, !srcloc !35
  tail call void asm sideeffect "\0A.ascii \22->S_FP $0 offsetof(struct pt_regs, ARM_fp)\22", "i"(i32 44) #1, !srcloc !36
  tail call void asm sideeffect "\0A.ascii \22->S_IP $0 offsetof(struct pt_regs, ARM_ip)\22", "i"(i32 48) #1, !srcloc !37
  tail call void asm sideeffect "\0A.ascii \22->S_SP $0 offsetof(struct pt_regs, ARM_sp)\22", "i"(i32 52) #1, !srcloc !38
  tail call void asm sideeffect "\0A.ascii \22->S_LR $0 offsetof(struct pt_regs, ARM_lr)\22", "i"(i32 56) #1, !srcloc !39
  tail call void asm sideeffect "\0A.ascii \22->S_PC $0 offsetof(struct pt_regs, ARM_pc)\22", "i"(i32 60) #1, !srcloc !40
  tail call void asm sideeffect "\0A.ascii \22->S_PSR $0 offsetof(struct pt_regs, ARM_cpsr)\22", "i"(i32 64) #1, !srcloc !41
  tail call void asm sideeffect "\0A.ascii \22->S_OLD_R0 $0 offsetof(struct pt_regs, ARM_ORIG_r0)\22", "i"(i32 68) #1, !srcloc !42
  tail call void asm sideeffect "\0A.ascii \22->PT_REGS_SIZE $0 sizeof(struct pt_regs)\22", "i"(i32 72) #1, !srcloc !43
  tail call void asm sideeffect "\0A.ascii \22->SVC_DACR $0 offsetof(struct svc_pt_regs, dacr)\22", "i"(i32 72) #1, !srcloc !44
  tail call void asm sideeffect "\0A.ascii \22->SVC_REGS_SIZE $0 sizeof(struct svc_pt_regs)\22", "i"(i32 76) #1, !srcloc !45
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !46
  tail call void asm sideeffect "\0A.ascii \22->SIGFRAME_RC3_OFFSET $0 offsetof(struct sigframe, retcode[3])\22", "i"(i32 756) #1, !srcloc !47
  tail call void asm sideeffect "\0A.ascii \22->RT_SIGFRAME_RC3_OFFSET $0 offsetof(struct rt_sigframe, sig.retcode[3])\22", "i"(i32 884) #1, !srcloc !48
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !49
  tail call void asm sideeffect "\0A.ascii \22->L2X0_R_PHY_BASE $0 offsetof(struct l2x0_regs, phy_base)\22", "i"(i32 0) #1, !srcloc !50
  tail call void asm sideeffect "\0A.ascii \22->L2X0_R_AUX_CTRL $0 offsetof(struct l2x0_regs, aux_ctrl)\22", "i"(i32 4) #1, !srcloc !51
  tail call void asm sideeffect "\0A.ascii \22->L2X0_R_TAG_LATENCY $0 offsetof(struct l2x0_regs, tag_latency)\22", "i"(i32 8) #1, !srcloc !52
  tail call void asm sideeffect "\0A.ascii \22->L2X0_R_DATA_LATENCY $0 offsetof(struct l2x0_regs, data_latency)\22", "i"(i32 12) #1, !srcloc !53
  tail call void asm sideeffect "\0A.ascii \22->L2X0_R_FILTER_START $0 offsetof(struct l2x0_regs, filter_start)\22", "i"(i32 16) #1, !srcloc !54
  tail call void asm sideeffect "\0A.ascii \22->L2X0_R_FILTER_END $0 offsetof(struct l2x0_regs, filter_end)\22", "i"(i32 20) #1, !srcloc !55
  tail call void asm sideeffect "\0A.ascii \22->L2X0_R_PREFETCH_CTRL $0 offsetof(struct l2x0_regs, prefetch_ctrl)\22", "i"(i32 24) #1, !srcloc !56
  tail call void asm sideeffect "\0A.ascii \22->L2X0_R_PWR_CTRL $0 offsetof(struct l2x0_regs, pwr_ctrl)\22", "i"(i32 28) #1, !srcloc !57
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !58
  tail call void asm sideeffect "\0A.ascii \22->MM_CONTEXT_ID $0 offsetof(struct mm_struct, context.id.counter)\22", "i"(i32 376) #1, !srcloc !59
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !60
  tail call void asm sideeffect "\0A.ascii \22->VMA_VM_MM $0 offsetof(struct vm_area_struct, vm_mm)\22", "i"(i32 32) #1, !srcloc !61
  tail call void asm sideeffect "\0A.ascii \22->VMA_VM_FLAGS $0 offsetof(struct vm_area_struct, vm_flags)\22", "i"(i32 40) #1, !srcloc !62
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !63
  tail call void asm sideeffect "\0A.ascii \22->VM_EXEC $0 VM_EXEC\22", "i"(i32 4) #1, !srcloc !64
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !65
  tail call void asm sideeffect "\0A.ascii \22->PAGE_SZ $0 PAGE_SIZE\22", "i"(i32 4096) #1, !srcloc !66
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !67
  tail call void asm sideeffect "\0A.ascii \22->SYS_ERROR0 $0 0x9f0000\22", "i"(i32 10420224) #1, !srcloc !68
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !69
  tail call void asm sideeffect "\0A.ascii \22->SIZEOF_MACHINE_DESC $0 sizeof(struct machine_desc)\22", "i"(i32 108) #1, !srcloc !70
  tail call void asm sideeffect "\0A.ascii \22->MACHINFO_TYPE $0 offsetof(struct machine_desc, nr)\22", "i"(i32 0) #1, !srcloc !71
  tail call void asm sideeffect "\0A.ascii \22->MACHINFO_NAME $0 offsetof(struct machine_desc, name)\22", "i"(i32 4) #1, !srcloc !72
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !73
  tail call void asm sideeffect "\0A.ascii \22->PROC_INFO_SZ $0 sizeof(struct proc_info_list)\22", "i"(i32 52) #1, !srcloc !74
  tail call void asm sideeffect "\0A.ascii \22->PROCINFO_INITFUNC $0 offsetof(struct proc_info_list, __cpu_flush)\22", "i"(i32 16) #1, !srcloc !75
  tail call void asm sideeffect "\0A.ascii \22->PROCINFO_MM_MMUFLAGS $0 offsetof(struct proc_info_list, __cpu_mm_mmu_flags)\22", "i"(i32 8) #1, !srcloc !76
  tail call void asm sideeffect "\0A.ascii \22->PROCINFO_IO_MMUFLAGS $0 offsetof(struct proc_info_list, __cpu_io_mmu_flags)\22", "i"(i32 12) #1, !srcloc !77
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !78
  tail call void asm sideeffect "\0A.ascii \22->CPU_SLEEP_SIZE $0 offsetof(struct processor, suspend_size)\22", "i"(i32 40) #1, !srcloc !79
  tail call void asm sideeffect "\0A.ascii \22->CPU_DO_SUSPEND $0 offsetof(struct processor, do_suspend)\22", "i"(i32 44) #1, !srcloc !80
  tail call void asm sideeffect "\0A.ascii \22->CPU_DO_RESUME $0 offsetof(struct processor, do_resume)\22", "i"(i32 48) #1, !srcloc !81
  tail call void asm sideeffect "\0A.ascii \22->CACHE_FLUSH_KERN_ALL $0 offsetof(struct cpu_cache_fns, flush_kern_all)\22", "i"(i32 4) #1, !srcloc !82
  tail call void asm sideeffect "\0A.ascii \22->SLEEP_SAVE_SP_SZ $0 sizeof(struct sleep_save_sp)\22", "i"(i32 8) #1, !srcloc !83
  tail call void asm sideeffect "\0A.ascii \22->SLEEP_SAVE_SP_PHYS $0 offsetof(struct sleep_save_sp, save_ptr_stash_phys)\22", "i"(i32 4) #1, !srcloc !84
  tail call void asm sideeffect "\0A.ascii \22->SLEEP_SAVE_SP_VIRT $0 offsetof(struct sleep_save_sp, save_ptr_stash)\22", "i"(i32 0) #1, !srcloc !85
  tail call void asm sideeffect "\0A.ascii \22->ARM_SMCCC_QUIRK_ID_OFFS $0 offsetof(struct arm_smccc_quirk, id)\22", "i"(i32 0) #1, !srcloc !86
  tail call void asm sideeffect "\0A.ascii \22->ARM_SMCCC_QUIRK_STATE_OFFS $0 offsetof(struct arm_smccc_quirk, state)\22", "i"(i32 4) #1, !srcloc !87
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !88
  tail call void asm sideeffect "\0A.ascii \22->DMA_BIDIRECTIONAL $0 DMA_BIDIRECTIONAL\22", "i"(i32 0) #1, !srcloc !89
  tail call void asm sideeffect "\0A.ascii \22->DMA_TO_DEVICE $0 DMA_TO_DEVICE\22", "i"(i32 1) #1, !srcloc !90
  tail call void asm sideeffect "\0A.ascii \22->DMA_FROM_DEVICE $0 DMA_FROM_DEVICE\22", "i"(i32 2) #1, !srcloc !91
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !92
  tail call void asm sideeffect "\0A.ascii \22->CACHE_WRITEBACK_ORDER $0 __CACHE_WRITEBACK_ORDER\22", "i"(i32 6) #1, !srcloc !93
  tail call void asm sideeffect "\0A.ascii \22->CACHE_WRITEBACK_GRANULE $0 __CACHE_WRITEBACK_GRANULE\22", "i"(i32 64) #1, !srcloc !94
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !95
  tail call void asm sideeffect "\0A.ascii \22->VDSO_DATA_SIZE $0 sizeof(union vdso_data_store)\22", "i"(i32 4096) #1, !srcloc !96
  tail call void asm sideeffect "\0A.ascii \22->\22", ""() #1, !srcloc !97
  tail call void asm sideeffect "\0A.ascii \22->KEXEC_START_ADDR $0 offsetof(struct kexec_relocate_data, kexec_start_address)\22", "i"(i32 0) #1, !srcloc !98
  tail call void asm sideeffect "\0A.ascii \22->KEXEC_INDIR_PAGE $0 offsetof(struct kexec_relocate_data, kexec_indirection_page)\22", "i"(i32 4) #1, !srcloc !99
  tail call void asm sideeffect "\0A.ascii \22->KEXEC_MACH_TYPE $0 offsetof(struct kexec_relocate_data, kexec_mach_type)\22", "i"(i32 8) #1, !srcloc !100
  tail call void asm sideeffect "\0A.ascii \22->KEXEC_R2 $0 offsetof(struct kexec_relocate_data, kexec_r2)\22", "i"(i32 12) #1, !srcloc !101
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
!8 = !{i64 2152614502, i64 2152614505}
!9 = !{i64 2152614796, i64 2152614799}
!10 = !{i64 2152615105, i64 2152615108}
!11 = !{i64 2152615142, i64 2152615145}
!12 = !{i64 2152615415, i64 2152615418}
!13 = !{i64 2152615722, i64 2152615725}
!14 = !{i64 2152615985, i64 2152615988}
!15 = !{i64 2152616283, i64 2152616286}
!16 = !{i64 2152616583, i64 2152616586}
!17 = !{i64 2152616886, i64 2152616889}
!18 = !{i64 2152617169, i64 2152617172}
!19 = !{i64 2152617457, i64 2152617460}
!20 = !{i64 2152617740, i64 2152617743}
!21 = !{i64 2152618028, i64 2152618031}
!22 = !{i64 2152618300, i64 2152618303}
!23 = !{i64 2152618613, i64 2152618616}
!24 = !{i64 2152618929, i64 2152618932}
!25 = !{i64 2152618966, i64 2152618969}
!26 = !{i64 2152619238, i64 2152619241}
!27 = !{i64 2152619510, i64 2152619513}
!28 = !{i64 2152619782, i64 2152619785}
!29 = !{i64 2152620054, i64 2152620057}
!30 = !{i64 2152620326, i64 2152620329}
!31 = !{i64 2152620598, i64 2152620601}
!32 = !{i64 2152620870, i64 2152620873}
!33 = !{i64 2152621142, i64 2152621145}
!34 = !{i64 2152621414, i64 2152621417}
!35 = !{i64 2152621686, i64 2152621689}
!36 = !{i64 2152621964, i64 2152621967}
!37 = !{i64 2152622240, i64 2152622243}
!38 = !{i64 2152622516, i64 2152622519}
!39 = !{i64 2152622792, i64 2152622795}
!40 = !{i64 2152623068, i64 2152623071}
!41 = !{i64 2152623344, i64 2152623347}
!42 = !{i64 2152623623, i64 2152623626}
!43 = !{i64 2152623908, i64 2152623911}
!44 = !{i64 2152624037, i64 2152624040}
!45 = !{i64 2152624306, i64 2152624309}
!46 = !{i64 2152624444, i64 2152624447}
!47 = !{i64 2152624481, i64 2152624484}
!48 = !{i64 2152624773, i64 2152624776}
!49 = !{i64 2152625096, i64 2152625099}
!50 = !{i64 2152625133, i64 2152625136}
!51 = !{i64 2152625417, i64 2152625420}
!52 = !{i64 2152625701, i64 2152625704}
!53 = !{i64 2152626000, i64 2152626003}
!54 = !{i64 2152626304, i64 2152626307}
!55 = !{i64 2152626608, i64 2152626611}
!56 = !{i64 2152626902, i64 2152626905}
!57 = !{i64 2152627211, i64 2152627214}
!58 = !{i64 2152627495, i64 2152627498}
!59 = !{i64 2152627532, i64 2152627535}
!60 = !{i64 2152627854, i64 2152627857}
!61 = !{i64 2152627891, i64 2152627894}
!62 = !{i64 2152628177, i64 2152628180}
!63 = !{i64 2152628478, i64 2152628481}
!64 = !{i64 2152628515, i64 2152628518}
!65 = !{i64 2152628623, i64 2152628626}
!66 = !{i64 2152628660, i64 2152628663}
!67 = !{i64 2152628826, i64 2152628829}
!68 = !{i64 2152628863, i64 2152628866}
!69 = !{i64 2152628962, i64 2152628965}
!70 = !{i64 2152628999, i64 2152629002}
!71 = !{i64 2152629145, i64 2152629148}
!72 = !{i64 2152629415, i64 2152629418}
!73 = !{i64 2152629693, i64 2152629696}
!74 = !{i64 2152629730, i64 2152629733}
!75 = !{i64 2152629873, i64 2152629876}
!76 = !{i64 2152630191, i64 2152630194}
!77 = !{i64 2152630540, i64 2152630543}
!78 = !{i64 2152630889, i64 2152630892}
!79 = !{i64 2152630926, i64 2152630929}
!80 = !{i64 2152631225, i64 2152631228}
!81 = !{i64 2152631516, i64 2152631519}
!82 = !{i64 2152635863, i64 2152635866}
!83 = !{i64 2152636192, i64 2152636195}
!84 = !{i64 2152636337, i64 2152636340}
!85 = !{i64 2152636684, i64 2152636687}
!86 = !{i64 2152637011, i64 2152637014}
!87 = !{i64 2152637303, i64 2152637306}
!88 = !{i64 2152637610, i64 2152637613}
!89 = !{i64 2152637647, i64 2152637650}
!90 = !{i64 2152637771, i64 2152637774}
!91 = !{i64 2152637883, i64 2152637886}
!92 = !{i64 2152638001, i64 2152638004}
!93 = !{i64 2152638038, i64 2152638041}
!94 = !{i64 2152638158, i64 2152638161}
!95 = !{i64 2152638321, i64 2152638324}
!96 = !{i64 2152638358, i64 2152638361}
!97 = !{i64 2152638503, i64 2152638506}
!98 = !{i64 2152638540, i64 2152638543}
!99 = !{i64 2152638909, i64 2152638912}
!100 = !{i64 2152639290, i64 2152639293}
!101 = !{i64 2152639642, i64 2152639645}
