; ModuleID = '/llk/IR/kernel/sched/core.c_pt.bc'
source_filename = "../kernel/sched/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_pelt_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_pelt_cfs_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_pelt_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_pelt_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_pelt_cfs_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_pelt_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_pelt_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_pelt_cfs_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_pelt_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_pelt_rt_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_pelt_rt_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_pelt_rt_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_pelt_rt_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_pelt_rt_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_pelt_rt_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_pelt_rt_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_pelt_rt_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_pelt_rt_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_pelt_dl_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_pelt_dl_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_pelt_dl_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_pelt_dl_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_pelt_dl_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_pelt_dl_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_pelt_dl_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_pelt_dl_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_pelt_dl_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_pelt_irq_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_pelt_irq_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_pelt_irq_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_pelt_irq_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_pelt_irq_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_pelt_irq_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_pelt_irq_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_pelt_irq_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_pelt_irq_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_pelt_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_pelt_se_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_pelt_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_pelt_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_pelt_se_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_pelt_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_pelt_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_pelt_se_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_pelt_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_sched_cpu_capacity_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_sched_cpu_capacity_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_sched_cpu_capacity_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_sched_cpu_capacity_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_sched_cpu_capacity_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_sched_cpu_capacity_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_sched_cpu_capacity_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_sched_cpu_capacity_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_sched_cpu_capacity_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_sched_overutilized_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_sched_overutilized_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_sched_overutilized_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_sched_overutilized_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_sched_overutilized_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_sched_overutilized_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_sched_overutilized_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_sched_overutilized_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_sched_overutilized_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_sched_util_est_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_sched_util_est_cfs_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_sched_util_est_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_sched_util_est_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_sched_util_est_cfs_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_sched_util_est_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_sched_util_est_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_sched_util_est_cfs_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_sched_util_est_cfs_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_sched_util_est_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_sched_util_est_se_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_sched_util_est_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_sched_util_est_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_sched_util_est_se_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_sched_util_est_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_sched_util_est_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_sched_util_est_se_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_sched_util_est_se_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_sched_update_nr_running_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_sched_update_nr_running_tp\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_sched_update_nr_running_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_sched_update_nr_running_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_sched_update_nr_running_tp\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_sched_update_nr_running_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_sched_update_nr_running_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_sched_update_nr_running_tp\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_sched_update_nr_running_tp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_disable\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_migrate_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22migrate_enable\22\09\09\09\09\09"
module asm "__kstrtabns_migrate_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_cpus_allowed_ptr:\09\09\09\09\09"
module asm "\09.asciz \09\22set_cpus_allowed_ptr\22\09\09\09\09\09"
module asm "__kstrtabns_set_cpus_allowed_ptr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kick_process:\09\09\09\09\09"
module asm "\09.asciz \09\22kick_process\22\09\09\09\09\09"
module asm "__kstrtabns_kick_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wake_up_process:\09\09\09\09\09"
module asm "\09.asciz \09\22wake_up_process\22\09\09\09\09\09"
module asm "__kstrtabns_wake_up_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_single_task_running:\09\09\09\09\09"
module asm "\09.asciz \09\22single_task_running\22\09\09\09\09\09"
module asm "__kstrtabns_single_task_running:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstat:\09\09\09\09\09"
module asm "\09.asciz \09\22kstat\22\09\09\09\09\09"
module asm "__kstrtabns_kstat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_cpustat:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_cpustat\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_cpustat:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule\22\09\09\09\09\09"
module asm "__kstrtabns_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_default_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22default_wake_function\22\09\09\09\09\09"
module asm "__kstrtabns_default_wake_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_user_nice:\09\09\09\09\09"
module asm "\09.asciz \09\22set_user_nice\22\09\09\09\09\09"
module asm "__kstrtabns_set_user_nice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_setattr_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_setattr_nocheck\22\09\09\09\09\09"
module asm "__kstrtabns_sched_setattr_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_set_fifo:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_set_fifo\22\09\09\09\09\09"
module asm "__kstrtabns_sched_set_fifo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_set_fifo_low:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_set_fifo_low\22\09\09\09\09\09"
module asm "__kstrtabns_sched_set_fifo_low:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_set_normal:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_set_normal\22\09\09\09\09\09"
module asm "__kstrtabns_sched_set_normal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cond_resched:\09\09\09\09\09"
module asm "\09.asciz \09\22__cond_resched\22\09\09\09\09\09"
module asm "__kstrtabns___cond_resched:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cond_resched_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__cond_resched_lock\22\09\09\09\09\09"
module asm "__kstrtabns___cond_resched_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cond_resched_rwlock_read:\09\09\09\09\09"
module asm "\09.asciz \09\22__cond_resched_rwlock_read\22\09\09\09\09\09"
module asm "__kstrtabns___cond_resched_rwlock_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___cond_resched_rwlock_write:\09\09\09\09\09"
module asm "\09.asciz \09\22__cond_resched_rwlock_write\22\09\09\09\09\09"
module asm "__kstrtabns___cond_resched_rwlock_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_yield:\09\09\09\09\09"
module asm "\09.asciz \09\22yield\22\09\09\09\09\09"
module asm "__kstrtabns_yield:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_yield_to:\09\09\09\09\09"
module asm "\09.asciz \09\22yield_to\22\09\09\09\09\09"
module asm "__kstrtabns_yield_to:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_io_schedule_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22io_schedule_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_io_schedule_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_io_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22io_schedule\22\09\09\09\09\09"
module asm "__kstrtabns_io_schedule:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sched_show_task:\09\09\09\09\09"
module asm "\09.asciz \09\22sched_show_task\22\09\09\09\09\09"
module asm "__kstrtabns_sched_show_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.91, %struct.trace_event, ptr, ptr, %union.anon.92, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.92 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [8 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [16 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i32, i32, [12 x i8], %struct.__call_single_data, %struct.hrtimer, i64, ptr, i32, i32, %struct.cpu_stop_work, [20 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [52 x i8], %struct.sched_avg, i64, [56 x i8], %struct.anon.122 }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.122 = type { %struct.raw_spinlock, i32, i32, i32, i32, [44 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.123, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.123 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.124, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.124 = type { i64, i64 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.sched_class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.callback_head = type { ptr, ptr }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.25, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.25 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rt_bandwidth = type { %struct.raw_spinlock, i64, i64, %struct.hrtimer, i32 }
%struct.dl_bandwidth = type { %struct.raw_spinlock, i64, i64 }
%struct.root_domain = type { %struct.atomic_t, %struct.atomic_t, %struct.callback_head, [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, [1 x %struct.cpumask], %struct.atomic_t, %struct.dl_bw, %struct.cpudl, i64, %struct.irq_work, %struct.raw_spinlock, i32, i32, %struct.atomic_t, %struct.atomic_t, [1 x %struct.cpumask], %struct.cpupri, i32, ptr }
%struct.dl_bw = type { %struct.raw_spinlock, i64, i64 }
%struct.cpudl = type { %struct.raw_spinlock, i32, [1 x %struct.cpumask], ptr }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.cpupri = type { [101 x %struct.cpupri_vec], ptr }
%struct.cpupri_vec = type { %struct.atomic_t, [1 x %struct.cpumask] }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.trace_print_flags = type { i32, ptr }
%struct.lock_class_key = type {}
%struct.pt_regs = type { [18 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_sched_kthread_stop = type { %struct.trace_entry, [16 x i8], i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_sched_kthread_stop_ret = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_sched_kthread_work_queue_work = type { %struct.trace_entry, ptr, ptr, ptr, [0 x i8] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.trace_event_raw_sched_kthread_work_execute_start = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.trace_event_raw_sched_kthread_work_execute_end = type { %struct.trace_entry, ptr, ptr, [0 x i8] }
%struct.trace_event_raw_sched_wakeup_template = type { %struct.trace_entry, [16 x i8], i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_sched_switch = type { %struct.trace_entry, [16 x i8], i32, i32, i32, [16 x i8], i32, i32, [0 x i8] }
%struct.trace_event_raw_sched_migrate_task = type { %struct.trace_entry, [16 x i8], i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_sched_process_template = type { %struct.trace_entry, [16 x i8], i32, i32, [0 x i8] }
%struct.trace_event_raw_sched_process_wait = type { %struct.trace_entry, [16 x i8], i32, i32, [0 x i8] }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, ptr }
%struct.trace_event_raw_sched_process_fork = type { %struct.trace_entry, [16 x i8], i32, [16 x i8], i32, [0 x i8] }
%struct.linux_binprm = type { ptr, i32, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rlimit, [256 x i8] }
%struct.rlimit = type { i32, i32 }
%struct.trace_event_raw_sched_process_exec = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_sched_stat_runtime = type { %struct.trace_entry, [16 x i8], i32, i64, i64, [0 x i8] }
%struct.trace_event_raw_sched_pi_setprio = type { %struct.trace_entry, [16 x i8], i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_sched_move_numa = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_sched_numa_pair_template = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_sched_wake_idle_without_ipi = type { %struct.trace_entry, i32, [0 x i8] }
%struct.rq_flags = type { i32, %struct.pin_cookie, i32 }
%struct.pin_cookie = type {}
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.wake_q_head = type { ptr, ptr }
%struct.sched_domain = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, ptr, %union.anon.125, ptr, i32, [0 x i32] }
%union.anon.125 = type { %struct.callback_head }
%struct.sched_attr = type { i32, i32, i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.migration_arg = type { ptr, i32, ptr }
%struct.set_affinity_pending = type { %struct.refcount_struct, i32, %struct.completion, %struct.cpu_stop_work, %struct.migration_arg }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.50 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.50 = type { %struct.callback_head }
%struct.sched_param = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }

@__tpstrtab_sched_kthread_stop = internal constant [19 x i8] c"sched_kthread_stop\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_kthread_stop = dso_local global %struct.static_call_key { ptr @__traceiter_sched_kthread_stop }, align 4
@__tracepoint_sched_kthread_stop = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_kthread_stop, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_kthread_stop, ptr null, ptr @__traceiter_sched_kthread_stop, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_kthread_stop = internal constant ptr @__tracepoint_sched_kthread_stop, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_kthread_stop_ret = internal constant [23 x i8] c"sched_kthread_stop_ret\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_kthread_stop_ret = dso_local global %struct.static_call_key { ptr @__traceiter_sched_kthread_stop_ret }, align 4
@__tracepoint_sched_kthread_stop_ret = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_kthread_stop_ret, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_kthread_stop_ret, ptr null, ptr @__traceiter_sched_kthread_stop_ret, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_kthread_stop_ret = internal constant ptr @__tracepoint_sched_kthread_stop_ret, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_kthread_work_queue_work = internal constant [30 x i8] c"sched_kthread_work_queue_work\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_kthread_work_queue_work = dso_local global %struct.static_call_key { ptr @__traceiter_sched_kthread_work_queue_work }, align 4
@__tracepoint_sched_kthread_work_queue_work = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_kthread_work_queue_work, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_kthread_work_queue_work, ptr null, ptr @__traceiter_sched_kthread_work_queue_work, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_kthread_work_queue_work = internal constant ptr @__tracepoint_sched_kthread_work_queue_work, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_kthread_work_execute_start = internal constant [33 x i8] c"sched_kthread_work_execute_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_kthread_work_execute_start = dso_local global %struct.static_call_key { ptr @__traceiter_sched_kthread_work_execute_start }, align 4
@__tracepoint_sched_kthread_work_execute_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_kthread_work_execute_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_kthread_work_execute_start, ptr null, ptr @__traceiter_sched_kthread_work_execute_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_kthread_work_execute_start = internal constant ptr @__tracepoint_sched_kthread_work_execute_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_kthread_work_execute_end = internal constant [31 x i8] c"sched_kthread_work_execute_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_kthread_work_execute_end = dso_local global %struct.static_call_key { ptr @__traceiter_sched_kthread_work_execute_end }, align 4
@__tracepoint_sched_kthread_work_execute_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_kthread_work_execute_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_kthread_work_execute_end, ptr null, ptr @__traceiter_sched_kthread_work_execute_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_kthread_work_execute_end = internal constant ptr @__tracepoint_sched_kthread_work_execute_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_waking = internal constant [13 x i8] c"sched_waking\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_waking = dso_local global %struct.static_call_key { ptr @__traceiter_sched_waking }, align 4
@__tracepoint_sched_waking = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_waking, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_waking, ptr null, ptr @__traceiter_sched_waking, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_waking = internal constant ptr @__tracepoint_sched_waking, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_wakeup = internal constant [13 x i8] c"sched_wakeup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_wakeup = dso_local global %struct.static_call_key { ptr @__traceiter_sched_wakeup }, align 4
@__tracepoint_sched_wakeup = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_wakeup, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_wakeup, ptr null, ptr @__traceiter_sched_wakeup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_wakeup = internal constant ptr @__tracepoint_sched_wakeup, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_wakeup_new = internal constant [17 x i8] c"sched_wakeup_new\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_wakeup_new = dso_local global %struct.static_call_key { ptr @__traceiter_sched_wakeup_new }, align 4
@__tracepoint_sched_wakeup_new = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_wakeup_new, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_wakeup_new, ptr null, ptr @__traceiter_sched_wakeup_new, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_wakeup_new = internal constant ptr @__tracepoint_sched_wakeup_new, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_switch = internal constant [13 x i8] c"sched_switch\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_switch = dso_local global %struct.static_call_key { ptr @__traceiter_sched_switch }, align 4
@__tracepoint_sched_switch = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_switch, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_switch, ptr null, ptr @__traceiter_sched_switch, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_switch = internal constant ptr @__tracepoint_sched_switch, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_migrate_task = internal constant [19 x i8] c"sched_migrate_task\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_migrate_task = dso_local global %struct.static_call_key { ptr @__traceiter_sched_migrate_task }, align 4
@__tracepoint_sched_migrate_task = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_migrate_task, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_migrate_task, ptr null, ptr @__traceiter_sched_migrate_task, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_migrate_task = internal constant ptr @__tracepoint_sched_migrate_task, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_process_free = internal constant [19 x i8] c"sched_process_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_process_free = dso_local global %struct.static_call_key { ptr @__traceiter_sched_process_free }, align 4
@__tracepoint_sched_process_free = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_process_free, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_process_free, ptr null, ptr @__traceiter_sched_process_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_process_free = internal constant ptr @__tracepoint_sched_process_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_process_exit = internal constant [19 x i8] c"sched_process_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_process_exit = dso_local global %struct.static_call_key { ptr @__traceiter_sched_process_exit }, align 4
@__tracepoint_sched_process_exit = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_process_exit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_process_exit, ptr null, ptr @__traceiter_sched_process_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_process_exit = internal constant ptr @__tracepoint_sched_process_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_wait_task = internal constant [16 x i8] c"sched_wait_task\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_wait_task = dso_local global %struct.static_call_key { ptr @__traceiter_sched_wait_task }, align 4
@__tracepoint_sched_wait_task = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_wait_task, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_wait_task, ptr null, ptr @__traceiter_sched_wait_task, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_wait_task = internal constant ptr @__tracepoint_sched_wait_task, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_process_wait = internal constant [19 x i8] c"sched_process_wait\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_process_wait = dso_local global %struct.static_call_key { ptr @__traceiter_sched_process_wait }, align 4
@__tracepoint_sched_process_wait = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_process_wait, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_process_wait, ptr null, ptr @__traceiter_sched_process_wait, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_process_wait = internal constant ptr @__tracepoint_sched_process_wait, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_process_fork = internal constant [19 x i8] c"sched_process_fork\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_process_fork = dso_local global %struct.static_call_key { ptr @__traceiter_sched_process_fork }, align 4
@__tracepoint_sched_process_fork = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_process_fork, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_process_fork, ptr null, ptr @__traceiter_sched_process_fork, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_process_fork = internal constant ptr @__tracepoint_sched_process_fork, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_process_exec = internal constant [19 x i8] c"sched_process_exec\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_process_exec = dso_local global %struct.static_call_key { ptr @__traceiter_sched_process_exec }, align 4
@__tracepoint_sched_process_exec = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_process_exec, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_process_exec, ptr null, ptr @__traceiter_sched_process_exec, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_process_exec = internal constant ptr @__tracepoint_sched_process_exec, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_stat_runtime = internal constant [19 x i8] c"sched_stat_runtime\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_stat_runtime = dso_local global %struct.static_call_key { ptr @__traceiter_sched_stat_runtime }, align 4
@__tracepoint_sched_stat_runtime = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_stat_runtime, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_stat_runtime, ptr null, ptr @__traceiter_sched_stat_runtime, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_stat_runtime = internal constant ptr @__tracepoint_sched_stat_runtime, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_pi_setprio = internal constant [17 x i8] c"sched_pi_setprio\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_pi_setprio = dso_local global %struct.static_call_key { ptr @__traceiter_sched_pi_setprio }, align 4
@__tracepoint_sched_pi_setprio = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_pi_setprio, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_pi_setprio, ptr null, ptr @__traceiter_sched_pi_setprio, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_pi_setprio = internal constant ptr @__tracepoint_sched_pi_setprio, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_move_numa = internal constant [16 x i8] c"sched_move_numa\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_move_numa = dso_local global %struct.static_call_key { ptr @__traceiter_sched_move_numa }, align 4
@__tracepoint_sched_move_numa = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_move_numa, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_move_numa, ptr null, ptr @__traceiter_sched_move_numa, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_move_numa = internal constant ptr @__tracepoint_sched_move_numa, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_stick_numa = internal constant [17 x i8] c"sched_stick_numa\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_stick_numa = dso_local global %struct.static_call_key { ptr @__traceiter_sched_stick_numa }, align 4
@__tracepoint_sched_stick_numa = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_stick_numa, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_stick_numa, ptr null, ptr @__traceiter_sched_stick_numa, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_stick_numa = internal constant ptr @__tracepoint_sched_stick_numa, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_swap_numa = internal constant [16 x i8] c"sched_swap_numa\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_swap_numa = dso_local global %struct.static_call_key { ptr @__traceiter_sched_swap_numa }, align 4
@__tracepoint_sched_swap_numa = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_swap_numa, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_swap_numa, ptr null, ptr @__traceiter_sched_swap_numa, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_swap_numa = internal constant ptr @__tracepoint_sched_swap_numa, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_wake_idle_without_ipi = internal constant [28 x i8] c"sched_wake_idle_without_ipi\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_wake_idle_without_ipi = dso_local global %struct.static_call_key { ptr @__traceiter_sched_wake_idle_without_ipi }, align 4
@__tracepoint_sched_wake_idle_without_ipi = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_wake_idle_without_ipi, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_wake_idle_without_ipi, ptr null, ptr @__traceiter_sched_wake_idle_without_ipi, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_wake_idle_without_ipi = internal constant ptr @__tracepoint_sched_wake_idle_without_ipi, section "__tracepoints_ptrs", align 4
@__tpstrtab_pelt_cfs_tp = internal constant [12 x i8] c"pelt_cfs_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pelt_cfs_tp = dso_local global %struct.static_call_key { ptr @__traceiter_pelt_cfs_tp }, align 4
@__tracepoint_pelt_cfs_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_pelt_cfs_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pelt_cfs_tp, ptr null, ptr @__traceiter_pelt_cfs_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pelt_cfs_tp = internal constant ptr @__tracepoint_pelt_cfs_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_pelt_rt_tp = internal constant [11 x i8] c"pelt_rt_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pelt_rt_tp = dso_local global %struct.static_call_key { ptr @__traceiter_pelt_rt_tp }, align 4
@__tracepoint_pelt_rt_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_pelt_rt_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pelt_rt_tp, ptr null, ptr @__traceiter_pelt_rt_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pelt_rt_tp = internal constant ptr @__tracepoint_pelt_rt_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_pelt_dl_tp = internal constant [11 x i8] c"pelt_dl_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pelt_dl_tp = dso_local global %struct.static_call_key { ptr @__traceiter_pelt_dl_tp }, align 4
@__tracepoint_pelt_dl_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_pelt_dl_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pelt_dl_tp, ptr null, ptr @__traceiter_pelt_dl_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pelt_dl_tp = internal constant ptr @__tracepoint_pelt_dl_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_pelt_thermal_tp = internal constant [16 x i8] c"pelt_thermal_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pelt_thermal_tp = dso_local global %struct.static_call_key { ptr @__traceiter_pelt_thermal_tp }, align 4
@__tracepoint_pelt_thermal_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_pelt_thermal_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pelt_thermal_tp, ptr null, ptr @__traceiter_pelt_thermal_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pelt_thermal_tp = internal constant ptr @__tracepoint_pelt_thermal_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_pelt_irq_tp = internal constant [12 x i8] c"pelt_irq_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pelt_irq_tp = dso_local global %struct.static_call_key { ptr @__traceiter_pelt_irq_tp }, align 4
@__tracepoint_pelt_irq_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_pelt_irq_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pelt_irq_tp, ptr null, ptr @__traceiter_pelt_irq_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pelt_irq_tp = internal constant ptr @__tracepoint_pelt_irq_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_pelt_se_tp = internal constant [11 x i8] c"pelt_se_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pelt_se_tp = dso_local global %struct.static_call_key { ptr @__traceiter_pelt_se_tp }, align 4
@__tracepoint_pelt_se_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_pelt_se_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pelt_se_tp, ptr null, ptr @__traceiter_pelt_se_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pelt_se_tp = internal constant ptr @__tracepoint_pelt_se_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_cpu_capacity_tp = internal constant [22 x i8] c"sched_cpu_capacity_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_cpu_capacity_tp = dso_local global %struct.static_call_key { ptr @__traceiter_sched_cpu_capacity_tp }, align 4
@__tracepoint_sched_cpu_capacity_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_cpu_capacity_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_cpu_capacity_tp, ptr null, ptr @__traceiter_sched_cpu_capacity_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_cpu_capacity_tp = internal constant ptr @__tracepoint_sched_cpu_capacity_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_overutilized_tp = internal constant [22 x i8] c"sched_overutilized_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_overutilized_tp = dso_local global %struct.static_call_key { ptr @__traceiter_sched_overutilized_tp }, align 4
@__tracepoint_sched_overutilized_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_overutilized_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_overutilized_tp, ptr null, ptr @__traceiter_sched_overutilized_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_overutilized_tp = internal constant ptr @__tracepoint_sched_overutilized_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_util_est_cfs_tp = internal constant [22 x i8] c"sched_util_est_cfs_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_util_est_cfs_tp = dso_local global %struct.static_call_key { ptr @__traceiter_sched_util_est_cfs_tp }, align 4
@__tracepoint_sched_util_est_cfs_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_util_est_cfs_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_util_est_cfs_tp, ptr null, ptr @__traceiter_sched_util_est_cfs_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_util_est_cfs_tp = internal constant ptr @__tracepoint_sched_util_est_cfs_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_util_est_se_tp = internal constant [21 x i8] c"sched_util_est_se_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_util_est_se_tp = dso_local global %struct.static_call_key { ptr @__traceiter_sched_util_est_se_tp }, align 4
@__tracepoint_sched_util_est_se_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_util_est_se_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_util_est_se_tp, ptr null, ptr @__traceiter_sched_util_est_se_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_util_est_se_tp = internal constant ptr @__tracepoint_sched_util_est_se_tp, section "__tracepoints_ptrs", align 4
@__tpstrtab_sched_update_nr_running_tp = internal constant [27 x i8] c"sched_update_nr_running_tp\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_sched_update_nr_running_tp = dso_local global %struct.static_call_key { ptr @__traceiter_sched_update_nr_running_tp }, align 4
@__tracepoint_sched_update_nr_running_tp = dso_local global %struct.tracepoint { ptr @__tpstrtab_sched_update_nr_running_tp, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_sched_update_nr_running_tp, ptr null, ptr @__traceiter_sched_update_nr_running_tp, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_sched_update_nr_running_tp = internal constant ptr @__tracepoint_sched_update_nr_running_tp, section "__tracepoints_ptrs", align 4
@str__sched__trace_system_name = internal constant [6 x i8] c"sched\00", align 1
@trace_event_fields_sched_kthread_stop = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_kthread_stop = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_kthread_stop, ptr @perf_trace_sched_kthread_stop, ptr @trace_event_reg, ptr @trace_event_fields_sched_kthread_stop, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_kthread_stop, i64 24), ptr getelementptr (i8, ptr @event_class_sched_kthread_stop, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_kthread_stop = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_kthread_stop, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_kthread_stop = internal global [38 x i8] c"\22comm=%s pid=%d\22, REC->comm, REC->pid\00", align 1
@event_sched_kthread_stop = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_kthread_stop, %union.anon.91 { ptr @__tracepoint_sched_kthread_stop }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_kthread_stop }, ptr @print_fmt_sched_kthread_stop, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_kthread_stop = internal global ptr @event_sched_kthread_stop, section "_ftrace_events", align 4
@trace_event_fields_sched_kthread_stop_ret = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_kthread_stop_ret = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_kthread_stop_ret, ptr @perf_trace_sched_kthread_stop_ret, ptr @trace_event_reg, ptr @trace_event_fields_sched_kthread_stop_ret, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_kthread_stop_ret, i64 24), ptr getelementptr (i8, ptr @event_class_sched_kthread_stop_ret, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_kthread_stop_ret = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_kthread_stop_ret, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_kthread_stop_ret = internal global [19 x i8] c"\22ret=%d\22, REC->ret\00", align 1
@event_sched_kthread_stop_ret = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_kthread_stop_ret, %union.anon.91 { ptr @__tracepoint_sched_kthread_stop_ret }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_kthread_stop_ret }, ptr @print_fmt_sched_kthread_stop_ret, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_kthread_stop_ret = internal global ptr @event_sched_kthread_stop_ret, section "_ftrace_events", align 4
@trace_event_fields_sched_kthread_work_queue_work = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.89 { %struct.anon.90 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.89 { %struct.anon.90 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.89 { %struct.anon.90 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_kthread_work_queue_work = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_kthread_work_queue_work, ptr @perf_trace_sched_kthread_work_queue_work, ptr @trace_event_reg, ptr @trace_event_fields_sched_kthread_work_queue_work, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_kthread_work_queue_work, i64 24), ptr getelementptr (i8, ptr @event_class_sched_kthread_work_queue_work, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_kthread_work_queue_work = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_kthread_work_queue_work, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_kthread_work_queue_work = internal global [79 x i8] c"\22work struct=%p function=%ps worker=%p\22, REC->work, REC->function, REC->worker\00", align 1
@event_sched_kthread_work_queue_work = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_kthread_work_queue_work, %union.anon.91 { ptr @__tracepoint_sched_kthread_work_queue_work }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_kthread_work_queue_work }, ptr @print_fmt_sched_kthread_work_queue_work, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_kthread_work_queue_work = internal global ptr @event_sched_kthread_work_queue_work, section "_ftrace_events", align 4
@trace_event_fields_sched_kthread_work_execute_start = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.89 { %struct.anon.90 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.89 { %struct.anon.90 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_kthread_work_execute_start = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_kthread_work_execute_start, ptr @perf_trace_sched_kthread_work_execute_start, ptr @trace_event_reg, ptr @trace_event_fields_sched_kthread_work_execute_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_kthread_work_execute_start, i64 24), ptr getelementptr (i8, ptr @event_class_sched_kthread_work_execute_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_kthread_work_execute_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_kthread_work_execute_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_kthread_work_execute_start = internal global [57 x i8] c"\22work struct %p: function %ps\22, REC->work, REC->function\00", align 1
@event_sched_kthread_work_execute_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_kthread_work_execute_start, %union.anon.91 { ptr @__tracepoint_sched_kthread_work_execute_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_kthread_work_execute_start }, ptr @print_fmt_sched_kthread_work_execute_start, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_kthread_work_execute_start = internal global ptr @event_sched_kthread_work_execute_start, section "_ftrace_events", align 4
@trace_event_fields_sched_kthread_work_execute_end = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.24, %union.anon.89 { %struct.anon.90 { ptr @.str.25, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.89 { %struct.anon.90 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_kthread_work_execute_end = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_kthread_work_execute_end, ptr @perf_trace_sched_kthread_work_execute_end, ptr @trace_event_reg, ptr @trace_event_fields_sched_kthread_work_execute_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_kthread_work_execute_end, i64 24), ptr getelementptr (i8, ptr @event_class_sched_kthread_work_execute_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_kthread_work_execute_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_kthread_work_execute_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_kthread_work_execute_end = internal global [57 x i8] c"\22work struct %p: function %ps\22, REC->work, REC->function\00", align 1
@event_sched_kthread_work_execute_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_kthread_work_execute_end, %union.anon.91 { ptr @__tracepoint_sched_kthread_work_execute_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_kthread_work_execute_end }, ptr @print_fmt_sched_kthread_work_execute_end, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_kthread_work_execute_end = internal global ptr @event_sched_kthread_work_execute_end, section "_ftrace_events", align 4
@trace_event_fields_sched_wakeup_template = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.31, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_wakeup_template = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_wakeup_template, ptr @perf_trace_sched_wakeup_template, ptr @trace_event_reg, ptr @trace_event_fields_sched_wakeup_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_wakeup_template, i64 24), ptr getelementptr (i8, ptr @event_class_sched_wakeup_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_wakeup_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_wakeup_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_wakeup_template = internal global [90 x i8] c"\22comm=%s pid=%d prio=%d target_cpu=%03d\22, REC->comm, REC->pid, REC->prio, REC->target_cpu\00", align 1
@event_sched_waking = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_wakeup_template, %union.anon.91 { ptr @__tracepoint_sched_waking }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_wakeup_template }, ptr @print_fmt_sched_wakeup_template, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_waking = internal global ptr @event_sched_waking, section "_ftrace_events", align 4
@event_sched_wakeup = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_wakeup_template, %union.anon.91 { ptr @__tracepoint_sched_wakeup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_wakeup_template }, ptr @print_fmt_sched_wakeup_template, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_wakeup = internal global ptr @event_sched_wakeup, section "_ftrace_events", align 4
@event_sched_wakeup_new = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_wakeup_template, %union.anon.91 { ptr @__tracepoint_sched_wakeup_new }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_wakeup_template }, ptr @print_fmt_sched_wakeup_template, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_wakeup_new = internal global ptr @event_sched_wakeup_new, section "_ftrace_events", align 4
@trace_event_fields_sched_switch = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.33, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.35, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.89 { %struct.anon.90 { ptr @.str.37, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.38, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.40, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_switch = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_switch, ptr @perf_trace_sched_switch, ptr @trace_event_reg, ptr @trace_event_fields_sched_switch, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_switch, i64 24), ptr getelementptr (i8, ptr @event_class_sched_switch, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_switch = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_switch, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_switch = internal global [692 x i8] c"\22prev_comm=%s prev_pid=%d prev_prio=%d prev_state=%s%s ==> next_comm=%s next_pid=%d next_prio=%d\22, REC->prev_comm, REC->prev_pid, REC->prev_prio, (REC->prev_state & ((((0x0000 | 0x0001 | 0x0002 | 0x0004 | 0x0008 | 0x0010 | 0x0020 | 0x0040) + 1) << 1) - 1)) ? __print_flags(REC->prev_state & ((((0x0000 | 0x0001 | 0x0002 | 0x0004 | 0x0008 | 0x0010 | 0x0020 | 0x0040) + 1) << 1) - 1), \22|\22, { 0x0001, \22S\22 }, { 0x0002, \22D\22 }, { 0x0004, \22T\22 }, { 0x0008, \22t\22 }, { 0x0010, \22X\22 }, { 0x0020, \22Z\22 }, { 0x0040, \22P\22 }, { 0x0080, \22I\22 }) : \22R\22, REC->prev_state & (((0x0000 | 0x0001 | 0x0002 | 0x0004 | 0x0008 | 0x0010 | 0x0020 | 0x0040) + 1) << 1) ? \22+\22 : \22\22, REC->next_comm, REC->next_pid, REC->next_prio\00", align 1
@event_sched_switch = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_switch, %union.anon.91 { ptr @__tracepoint_sched_switch }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_switch }, ptr @print_fmt_sched_switch, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_switch = internal global ptr @event_sched_switch, section "_ftrace_events", align 4
@trace_event_fields_sched_migrate_task = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.54, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.55, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_migrate_task = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_migrate_task, ptr @perf_trace_sched_migrate_task, ptr @trace_event_reg, ptr @trace_event_fields_sched_migrate_task, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_migrate_task, i64 24), ptr getelementptr (i8, ptr @event_class_sched_migrate_task, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_migrate_task = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_migrate_task, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_migrate_task = internal global [111 x i8] c"\22comm=%s pid=%d prio=%d orig_cpu=%d dest_cpu=%d\22, REC->comm, REC->pid, REC->prio, REC->orig_cpu, REC->dest_cpu\00", align 1
@event_sched_migrate_task = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_migrate_task, %union.anon.91 { ptr @__tracepoint_sched_migrate_task }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_migrate_task }, ptr @print_fmt_sched_migrate_task, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_migrate_task = internal global ptr @event_sched_migrate_task, section "_ftrace_events", align 4
@trace_event_fields_sched_process_template = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_process_template = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_process_template, ptr @perf_trace_sched_process_template, ptr @trace_event_reg, ptr @trace_event_fields_sched_process_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_process_template, i64 24), ptr getelementptr (i8, ptr @event_class_sched_process_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_process_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_process_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_process_template = internal global [57 x i8] c"\22comm=%s pid=%d prio=%d\22, REC->comm, REC->pid, REC->prio\00", align 1
@event_sched_process_free = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_process_template, %union.anon.91 { ptr @__tracepoint_sched_process_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_process_template }, ptr @print_fmt_sched_process_template, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_process_free = internal global ptr @event_sched_process_free, section "_ftrace_events", align 4
@event_sched_process_exit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_process_template, %union.anon.91 { ptr @__tracepoint_sched_process_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_process_template }, ptr @print_fmt_sched_process_template, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_process_exit = internal global ptr @event_sched_process_exit, section "_ftrace_events", align 4
@event_sched_wait_task = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_process_template, %union.anon.91 { ptr @__tracepoint_sched_wait_task }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_process_template }, ptr @print_fmt_sched_process_template, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_wait_task = internal global ptr @event_sched_wait_task, section "_ftrace_events", align 4
@trace_event_fields_sched_process_wait = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_process_wait = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_process_wait, ptr @perf_trace_sched_process_wait, ptr @trace_event_reg, ptr @trace_event_fields_sched_process_wait, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_process_wait, i64 24), ptr getelementptr (i8, ptr @event_class_sched_process_wait, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_process_wait = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_process_wait, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_process_wait = internal global [57 x i8] c"\22comm=%s pid=%d prio=%d\22, REC->comm, REC->pid, REC->prio\00", align 1
@event_sched_process_wait = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_process_wait, %union.anon.91 { ptr @__tracepoint_sched_process_wait }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_process_wait }, ptr @print_fmt_sched_process_wait, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_process_wait = internal global ptr @event_sched_process_wait, section "_ftrace_events", align 4
@trace_event_fields_sched_process_fork = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.58, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.59, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.60, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.61, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_process_fork = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_process_fork, ptr @perf_trace_sched_process_fork, ptr @trace_event_reg, ptr @trace_event_fields_sched_process_fork, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_process_fork, i64 24), ptr getelementptr (i8, ptr @event_class_sched_process_fork, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_process_fork = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_process_fork, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_process_fork = internal global [112 x i8] c"\22comm=%s pid=%d child_comm=%s child_pid=%d\22, REC->parent_comm, REC->parent_pid, REC->child_comm, REC->child_pid\00", align 1
@event_sched_process_fork = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_process_fork, %union.anon.91 { ptr @__tracepoint_sched_process_fork }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_process_fork }, ptr @print_fmt_sched_process_fork, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_process_fork = internal global ptr @event_sched_process_fork, section "_ftrace_events", align 4
@trace_event_fields_sched_process_exec = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.64, %union.anon.89 { %struct.anon.90 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.66, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_process_exec = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_process_exec, ptr @perf_trace_sched_process_exec, ptr @trace_event_reg, ptr @trace_event_fields_sched_process_exec, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_process_exec, i64 24), ptr getelementptr (i8, ptr @event_class_sched_process_exec, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_process_exec = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_process_exec, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_process_exec = internal global [77 x i8] c"\22filename=%s pid=%d old_pid=%d\22, __get_str(filename), REC->pid, REC->old_pid\00", align 1
@event_sched_process_exec = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_process_exec, %union.anon.91 { ptr @__tracepoint_sched_process_exec }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_process_exec }, ptr @print_fmt_sched_process_exec, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_process_exec = internal global ptr @event_sched_process_exec, section "_ftrace_events", align 4
@trace_event_fields_sched_stat_runtime = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.89 { %struct.anon.90 { ptr @.str.69, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.89 { %struct.anon.90 { ptr @.str.70, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_stat_runtime = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_stat_runtime, ptr @perf_trace_sched_stat_runtime, ptr @trace_event_reg, ptr @trace_event_fields_sched_stat_runtime, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_stat_runtime, i64 24), ptr getelementptr (i8, ptr @event_class_sched_stat_runtime, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_stat_runtime = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_stat_runtime, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_stat_runtime = internal global [142 x i8] c"\22comm=%s pid=%d runtime=%Lu [ns] vruntime=%Lu [ns]\22, REC->comm, REC->pid, (unsigned long long)REC->runtime, (unsigned long long)REC->vruntime\00", align 1
@event_sched_stat_runtime = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_stat_runtime, %union.anon.91 { ptr @__tracepoint_sched_stat_runtime }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_stat_runtime }, ptr @print_fmt_sched_stat_runtime, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_stat_runtime = internal global ptr @event_sched_stat_runtime, section "_ftrace_events", align 4
@trace_event_fields_sched_pi_setprio = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.72, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.73, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_pi_setprio = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_pi_setprio, ptr @perf_trace_sched_pi_setprio, ptr @trace_event_reg, ptr @trace_event_fields_sched_pi_setprio, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_pi_setprio, i64 24), ptr getelementptr (i8, ptr @event_class_sched_pi_setprio, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_pi_setprio = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_pi_setprio, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_pi_setprio = internal global [88 x i8] c"\22comm=%s pid=%d oldprio=%d newprio=%d\22, REC->comm, REC->pid, REC->oldprio, REC->newprio\00", align 1
@event_sched_pi_setprio = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_pi_setprio, %union.anon.91 { ptr @__tracepoint_sched_pi_setprio }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_pi_setprio }, ptr @print_fmt_sched_pi_setprio, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_pi_setprio = internal global ptr @event_sched_pi_setprio, section "_ftrace_events", align 4
@trace_event_fields_sched_move_numa = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.75, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.76, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.77, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.78, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.79, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.80, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_move_numa = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_move_numa, ptr @perf_trace_sched_move_numa, ptr @trace_event_reg, ptr @trace_event_fields_sched_move_numa, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_move_numa, i64 24), ptr getelementptr (i8, ptr @event_class_sched_move_numa, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_move_numa = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_move_numa, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_move_numa = internal global [157 x i8] c"\22pid=%d tgid=%d ngid=%d src_cpu=%d src_nid=%d dst_cpu=%d dst_nid=%d\22, REC->pid, REC->tgid, REC->ngid, REC->src_cpu, REC->src_nid, REC->dst_cpu, REC->dst_nid\00", align 1
@event_sched_move_numa = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_move_numa, %union.anon.91 { ptr @__tracepoint_sched_move_numa }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_move_numa }, ptr @print_fmt_sched_move_numa, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_move_numa = internal global ptr @event_sched_move_numa, section "_ftrace_events", align 4
@trace_event_fields_sched_numa_pair_template = internal global [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.82, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.83, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.84, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.77, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.78, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.85, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.86, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.87, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.79, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.80, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_numa_pair_template = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_numa_pair_template, ptr @perf_trace_sched_numa_pair_template, ptr @trace_event_reg, ptr @trace_event_fields_sched_numa_pair_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_numa_pair_template, i64 24), ptr getelementptr (i8, ptr @event_class_sched_numa_pair_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_numa_pair_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_numa_pair_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_numa_pair_template = internal global [260 x i8] c"\22src_pid=%d src_tgid=%d src_ngid=%d src_cpu=%d src_nid=%d dst_pid=%d dst_tgid=%d dst_ngid=%d dst_cpu=%d dst_nid=%d\22, REC->src_pid, REC->src_tgid, REC->src_ngid, REC->src_cpu, REC->src_nid, REC->dst_pid, REC->dst_tgid, REC->dst_ngid, REC->dst_cpu, REC->dst_nid\00", align 1
@event_sched_stick_numa = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_numa_pair_template, %union.anon.91 { ptr @__tracepoint_sched_stick_numa }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_numa_pair_template }, ptr @print_fmt_sched_numa_pair_template, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_stick_numa = internal global ptr @event_sched_stick_numa, section "_ftrace_events", align 4
@event_sched_swap_numa = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_numa_pair_template, %union.anon.91 { ptr @__tracepoint_sched_swap_numa }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_numa_pair_template }, ptr @print_fmt_sched_numa_pair_template, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_swap_numa = internal global ptr @event_sched_swap_numa, section "_ftrace_events", align 4
@trace_event_fields_sched_wake_idle_without_ipi = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.89, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_sched_wake_idle_without_ipi = internal global %struct.trace_event_class { ptr @str__sched__trace_system_name, ptr @trace_event_raw_event_sched_wake_idle_without_ipi, ptr @perf_trace_sched_wake_idle_without_ipi, ptr @trace_event_reg, ptr @trace_event_fields_sched_wake_idle_without_ipi, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_sched_wake_idle_without_ipi, i64 24), ptr getelementptr (i8, ptr @event_class_sched_wake_idle_without_ipi, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_sched_wake_idle_without_ipi = internal global %struct.trace_event_functions { ptr @trace_raw_output_sched_wake_idle_without_ipi, ptr null, ptr null, ptr null }, align 4
@print_fmt_sched_wake_idle_without_ipi = internal global [19 x i8] c"\22cpu=%d\22, REC->cpu\00", align 1
@event_sched_wake_idle_without_ipi = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_sched_wake_idle_without_ipi, %union.anon.91 { ptr @__tracepoint_sched_wake_idle_without_ipi }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_sched_wake_idle_without_ipi }, ptr @print_fmt_sched_wake_idle_without_ipi, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_sched_wake_idle_without_ipi = internal global ptr @event_sched_wake_idle_without_ipi, section "_ftrace_events", align 4
@__kstrtab___tracepoint_pelt_cfs_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_pelt_cfs_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_pelt_cfs_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_pelt_cfs_tp to i32), ptr @__kstrtab___tracepoint_pelt_cfs_tp, ptr @__kstrtabns___tracepoint_pelt_cfs_tp }, section "___ksymtab_gpl+__tracepoint_pelt_cfs_tp", align 4
@__kstrtab___traceiter_pelt_cfs_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_pelt_cfs_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_pelt_cfs_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_pelt_cfs_tp to i32), ptr @__kstrtab___traceiter_pelt_cfs_tp, ptr @__kstrtabns___traceiter_pelt_cfs_tp }, section "___ksymtab_gpl+__traceiter_pelt_cfs_tp", align 4
@__kstrtab___SCK__tp_func_pelt_cfs_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_pelt_cfs_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_pelt_cfs_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_pelt_cfs_tp to i32), ptr @__kstrtab___SCK__tp_func_pelt_cfs_tp, ptr @__kstrtabns___SCK__tp_func_pelt_cfs_tp }, section "___ksymtab_gpl+__SCK__tp_func_pelt_cfs_tp", align 4
@__kstrtab___tracepoint_pelt_rt_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_pelt_rt_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_pelt_rt_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_pelt_rt_tp to i32), ptr @__kstrtab___tracepoint_pelt_rt_tp, ptr @__kstrtabns___tracepoint_pelt_rt_tp }, section "___ksymtab_gpl+__tracepoint_pelt_rt_tp", align 4
@__kstrtab___traceiter_pelt_rt_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_pelt_rt_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_pelt_rt_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_pelt_rt_tp to i32), ptr @__kstrtab___traceiter_pelt_rt_tp, ptr @__kstrtabns___traceiter_pelt_rt_tp }, section "___ksymtab_gpl+__traceiter_pelt_rt_tp", align 4
@__kstrtab___SCK__tp_func_pelt_rt_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_pelt_rt_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_pelt_rt_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_pelt_rt_tp to i32), ptr @__kstrtab___SCK__tp_func_pelt_rt_tp, ptr @__kstrtabns___SCK__tp_func_pelt_rt_tp }, section "___ksymtab_gpl+__SCK__tp_func_pelt_rt_tp", align 4
@__kstrtab___tracepoint_pelt_dl_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_pelt_dl_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_pelt_dl_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_pelt_dl_tp to i32), ptr @__kstrtab___tracepoint_pelt_dl_tp, ptr @__kstrtabns___tracepoint_pelt_dl_tp }, section "___ksymtab_gpl+__tracepoint_pelt_dl_tp", align 4
@__kstrtab___traceiter_pelt_dl_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_pelt_dl_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_pelt_dl_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_pelt_dl_tp to i32), ptr @__kstrtab___traceiter_pelt_dl_tp, ptr @__kstrtabns___traceiter_pelt_dl_tp }, section "___ksymtab_gpl+__traceiter_pelt_dl_tp", align 4
@__kstrtab___SCK__tp_func_pelt_dl_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_pelt_dl_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_pelt_dl_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_pelt_dl_tp to i32), ptr @__kstrtab___SCK__tp_func_pelt_dl_tp, ptr @__kstrtabns___SCK__tp_func_pelt_dl_tp }, section "___ksymtab_gpl+__SCK__tp_func_pelt_dl_tp", align 4
@__kstrtab___tracepoint_pelt_irq_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_pelt_irq_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_pelt_irq_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_pelt_irq_tp to i32), ptr @__kstrtab___tracepoint_pelt_irq_tp, ptr @__kstrtabns___tracepoint_pelt_irq_tp }, section "___ksymtab_gpl+__tracepoint_pelt_irq_tp", align 4
@__kstrtab___traceiter_pelt_irq_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_pelt_irq_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_pelt_irq_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_pelt_irq_tp to i32), ptr @__kstrtab___traceiter_pelt_irq_tp, ptr @__kstrtabns___traceiter_pelt_irq_tp }, section "___ksymtab_gpl+__traceiter_pelt_irq_tp", align 4
@__kstrtab___SCK__tp_func_pelt_irq_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_pelt_irq_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_pelt_irq_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_pelt_irq_tp to i32), ptr @__kstrtab___SCK__tp_func_pelt_irq_tp, ptr @__kstrtabns___SCK__tp_func_pelt_irq_tp }, section "___ksymtab_gpl+__SCK__tp_func_pelt_irq_tp", align 4
@__kstrtab___tracepoint_pelt_se_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_pelt_se_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_pelt_se_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_pelt_se_tp to i32), ptr @__kstrtab___tracepoint_pelt_se_tp, ptr @__kstrtabns___tracepoint_pelt_se_tp }, section "___ksymtab_gpl+__tracepoint_pelt_se_tp", align 4
@__kstrtab___traceiter_pelt_se_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_pelt_se_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_pelt_se_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_pelt_se_tp to i32), ptr @__kstrtab___traceiter_pelt_se_tp, ptr @__kstrtabns___traceiter_pelt_se_tp }, section "___ksymtab_gpl+__traceiter_pelt_se_tp", align 4
@__kstrtab___SCK__tp_func_pelt_se_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_pelt_se_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_pelt_se_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_pelt_se_tp to i32), ptr @__kstrtab___SCK__tp_func_pelt_se_tp, ptr @__kstrtabns___SCK__tp_func_pelt_se_tp }, section "___ksymtab_gpl+__SCK__tp_func_pelt_se_tp", align 4
@__kstrtab___tracepoint_sched_cpu_capacity_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_sched_cpu_capacity_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_sched_cpu_capacity_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_sched_cpu_capacity_tp to i32), ptr @__kstrtab___tracepoint_sched_cpu_capacity_tp, ptr @__kstrtabns___tracepoint_sched_cpu_capacity_tp }, section "___ksymtab_gpl+__tracepoint_sched_cpu_capacity_tp", align 4
@__kstrtab___traceiter_sched_cpu_capacity_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_sched_cpu_capacity_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_sched_cpu_capacity_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_sched_cpu_capacity_tp to i32), ptr @__kstrtab___traceiter_sched_cpu_capacity_tp, ptr @__kstrtabns___traceiter_sched_cpu_capacity_tp }, section "___ksymtab_gpl+__traceiter_sched_cpu_capacity_tp", align 4
@__kstrtab___SCK__tp_func_sched_cpu_capacity_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_sched_cpu_capacity_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_sched_cpu_capacity_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_sched_cpu_capacity_tp to i32), ptr @__kstrtab___SCK__tp_func_sched_cpu_capacity_tp, ptr @__kstrtabns___SCK__tp_func_sched_cpu_capacity_tp }, section "___ksymtab_gpl+__SCK__tp_func_sched_cpu_capacity_tp", align 4
@__kstrtab___tracepoint_sched_overutilized_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_sched_overutilized_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_sched_overutilized_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_sched_overutilized_tp to i32), ptr @__kstrtab___tracepoint_sched_overutilized_tp, ptr @__kstrtabns___tracepoint_sched_overutilized_tp }, section "___ksymtab_gpl+__tracepoint_sched_overutilized_tp", align 4
@__kstrtab___traceiter_sched_overutilized_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_sched_overutilized_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_sched_overutilized_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_sched_overutilized_tp to i32), ptr @__kstrtab___traceiter_sched_overutilized_tp, ptr @__kstrtabns___traceiter_sched_overutilized_tp }, section "___ksymtab_gpl+__traceiter_sched_overutilized_tp", align 4
@__kstrtab___SCK__tp_func_sched_overutilized_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_sched_overutilized_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_sched_overutilized_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_sched_overutilized_tp to i32), ptr @__kstrtab___SCK__tp_func_sched_overutilized_tp, ptr @__kstrtabns___SCK__tp_func_sched_overutilized_tp }, section "___ksymtab_gpl+__SCK__tp_func_sched_overutilized_tp", align 4
@__kstrtab___tracepoint_sched_util_est_cfs_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_sched_util_est_cfs_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_sched_util_est_cfs_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_sched_util_est_cfs_tp to i32), ptr @__kstrtab___tracepoint_sched_util_est_cfs_tp, ptr @__kstrtabns___tracepoint_sched_util_est_cfs_tp }, section "___ksymtab_gpl+__tracepoint_sched_util_est_cfs_tp", align 4
@__kstrtab___traceiter_sched_util_est_cfs_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_sched_util_est_cfs_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_sched_util_est_cfs_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_sched_util_est_cfs_tp to i32), ptr @__kstrtab___traceiter_sched_util_est_cfs_tp, ptr @__kstrtabns___traceiter_sched_util_est_cfs_tp }, section "___ksymtab_gpl+__traceiter_sched_util_est_cfs_tp", align 4
@__kstrtab___SCK__tp_func_sched_util_est_cfs_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_sched_util_est_cfs_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_sched_util_est_cfs_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_sched_util_est_cfs_tp to i32), ptr @__kstrtab___SCK__tp_func_sched_util_est_cfs_tp, ptr @__kstrtabns___SCK__tp_func_sched_util_est_cfs_tp }, section "___ksymtab_gpl+__SCK__tp_func_sched_util_est_cfs_tp", align 4
@__kstrtab___tracepoint_sched_util_est_se_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_sched_util_est_se_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_sched_util_est_se_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_sched_util_est_se_tp to i32), ptr @__kstrtab___tracepoint_sched_util_est_se_tp, ptr @__kstrtabns___tracepoint_sched_util_est_se_tp }, section "___ksymtab_gpl+__tracepoint_sched_util_est_se_tp", align 4
@__kstrtab___traceiter_sched_util_est_se_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_sched_util_est_se_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_sched_util_est_se_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_sched_util_est_se_tp to i32), ptr @__kstrtab___traceiter_sched_util_est_se_tp, ptr @__kstrtabns___traceiter_sched_util_est_se_tp }, section "___ksymtab_gpl+__traceiter_sched_util_est_se_tp", align 4
@__kstrtab___SCK__tp_func_sched_util_est_se_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_sched_util_est_se_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_sched_util_est_se_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_sched_util_est_se_tp to i32), ptr @__kstrtab___SCK__tp_func_sched_util_est_se_tp, ptr @__kstrtabns___SCK__tp_func_sched_util_est_se_tp }, section "___ksymtab_gpl+__SCK__tp_func_sched_util_est_se_tp", align 4
@__kstrtab___tracepoint_sched_update_nr_running_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_sched_update_nr_running_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_sched_update_nr_running_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_sched_update_nr_running_tp to i32), ptr @__kstrtab___tracepoint_sched_update_nr_running_tp, ptr @__kstrtabns___tracepoint_sched_update_nr_running_tp }, section "___ksymtab_gpl+__tracepoint_sched_update_nr_running_tp", align 4
@__kstrtab___traceiter_sched_update_nr_running_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_sched_update_nr_running_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_sched_update_nr_running_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_sched_update_nr_running_tp to i32), ptr @__kstrtab___traceiter_sched_update_nr_running_tp, ptr @__kstrtabns___traceiter_sched_update_nr_running_tp }, section "___ksymtab_gpl+__traceiter_sched_update_nr_running_tp", align 4
@__kstrtab___SCK__tp_func_sched_update_nr_running_tp = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_sched_update_nr_running_tp = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_sched_update_nr_running_tp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_sched_update_nr_running_tp to i32), ptr @__kstrtab___SCK__tp_func_sched_update_nr_running_tp, ptr @__kstrtabns___SCK__tp_func_sched_update_nr_running_tp }, section "___ksymtab_gpl+__SCK__tp_func_sched_update_nr_running_tp", align 4
@sysctl_sched_features = dso_local local_unnamed_addr global i32 29306427, section ".data..read_mostly", align 4
@sysctl_resched_latency_warn_ms = dso_local global i32 100, section ".data..read_mostly", align 4
@sysctl_resched_latency_warn_once = dso_local local_unnamed_addr global i32 1, section ".data..read_mostly", align 4
@sysctl_sched_nr_migrate = dso_local local_unnamed_addr global i32 32, section ".data..read_mostly", align 4
@sysctl_sched_rt_period = dso_local local_unnamed_addr global i32 1000000, align 4
@sysctl_sched_rt_runtime = dso_local local_unnamed_addr global i32 950000, align 4
@runqueues = dso_local global %struct.rq zeroinitializer, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@update_rq_clock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [20 x i8] c"kernel/sched/core.c\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"rq->clock_update_flags & RQCF_UPDATED\00", align 1
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_migrate_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_disable to i32), ptr @__kstrtab_migrate_disable, ptr @__kstrtabns_migrate_disable }, section "___ksymtab_gpl+migrate_disable", align 4
@migrate_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_migrate_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_migrate_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_migrate_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @migrate_enable to i32), ptr @__kstrtab_migrate_enable, ptr @__kstrtabns_migrate_enable }, section "___ksymtab_gpl+migrate_enable", align 4
@__kstrtab_set_cpus_allowed_ptr = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_cpus_allowed_ptr = external dso_local constant [0 x i8], align 1
@__ksymtab_set_cpus_allowed_ptr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_cpus_allowed_ptr to i32), ptr @__kstrtab_set_cpus_allowed_ptr, ptr @__kstrtabns_set_cpus_allowed_ptr }, section "___ksymtab_gpl+set_cpus_allowed_ptr", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__func__.force_compatible_cpus_allowed_ptr = private unnamed_addr constant [34 x i8] c"force_compatible_cpus_allowed_ptr\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Overriding affinity for process %d (%s) to CPUs %*pbl\0A\00", align 1
@set_task_cpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@set_task_cpu.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@fair_sched_class = external dso_local constant %struct.sched_class, align 4
@set_task_cpu.__already_done.4 = internal unnamed_addr global i1 false, section ".data.once", align 1
@set_task_cpu.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kick_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_kick_process = external dso_local constant [0 x i8], align 1
@__ksymtab_kick_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kick_process to i32), ptr @__kstrtab_kick_process, ptr @__kstrtabns_kick_process }, section "___ksymtab_gpl+kick_process", align 4
@stop_sched_class = external dso_local constant %struct.sched_class, align 4
@rt_sched_class = external dso_local constant %struct.sched_class, align 4
@sched_ttwu_pending.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sched_ttwu_pending.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@sd_llc_id = external dso_local global i32, section ".data..percpu", align 4
@__kstrtab_wake_up_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_wake_up_process = external dso_local constant [0 x i8], align 1
@__ksymtab_wake_up_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wake_up_process to i32), ptr @__kstrtab_wake_up_process, ptr @__kstrtabns_wake_up_process }, section "___ksymtab+wake_up_process", align 4
@sched_numa_balancing = dso_local local_unnamed_addr global %struct.static_key_false zeroinitializer, align 4
@balance_push_callback = dso_local global %struct.callback_head { ptr null, ptr @balance_push }, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab_single_task_running = external dso_local constant [0 x i8], align 1
@__kstrtabns_single_task_running = external dso_local constant [0 x i8], align 1
@__ksymtab_single_task_running = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @single_task_running to i32), ptr @__kstrtab_single_task_running, ptr @__kstrtabns_single_task_running }, section "___ksymtab+single_task_running", align 4
@kstat = dso_local global %struct.kernel_stat zeroinitializer, section ".data..percpu", align 4
@__kstrtab_kstat = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstat = external dso_local constant [0 x i8], align 1
@__ksymtab_kstat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstat to i32), ptr @__kstrtab_kstat, ptr @__kstrtabns_kstat }, section "___ksymtab+kstat", align 4
@kernel_cpustat = dso_local global %struct.kernel_cpustat zeroinitializer, section ".data..percpu", align 8
@__kstrtab_kernel_cpustat = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_cpustat = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_cpustat = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_cpustat to i32), ptr @__kstrtab_kernel_cpustat, ptr @__kstrtabns_kernel_cpustat }, section "___ksymtab+kernel_cpustat", align 4
@__setup_str_setup_resched_latency_warn_ms = internal constant [25 x i8] c"resched_latency_warn_ms=\00", section ".init.rodata", align 1
@__setup_setup_resched_latency_warn_ms = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_resched_latency_warn_ms, ptr @setup_resched_latency_warn_ms, i32 0 }, section ".init.setup", align 4
@__kstrtab_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule to i32), ptr @__kstrtab_schedule, ptr @__kstrtabns_schedule }, section "___ksymtab+schedule", align 4
@schedule_idle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@default_wake_function.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_default_wake_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_default_wake_function = external dso_local constant [0 x i8], align 1
@__ksymtab_default_wake_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @default_wake_function to i32), ptr @__kstrtab_default_wake_function, ptr @__kstrtabns_default_wake_function }, section "___ksymtab+default_wake_function", align 4
@__kstrtab_set_user_nice = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_user_nice = external dso_local constant [0 x i8], align 1
@__ksymtab_set_user_nice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_user_nice to i32), ptr @__kstrtab_set_user_nice, ptr @__kstrtabns_set_user_nice }, section "___ksymtab+set_user_nice", align 4
@__kstrtab_sched_setattr_nocheck = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_setattr_nocheck = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_setattr_nocheck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_setattr_nocheck to i32), ptr @__kstrtab_sched_setattr_nocheck, ptr @__kstrtabns_sched_setattr_nocheck }, section "___ksymtab_gpl+sched_setattr_nocheck", align 4
@sched_set_fifo.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sched_set_fifo = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_set_fifo = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_set_fifo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_set_fifo to i32), ptr @__kstrtab_sched_set_fifo, ptr @__kstrtabns_sched_set_fifo }, section "___ksymtab_gpl+sched_set_fifo", align 4
@sched_set_fifo_low.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sched_set_fifo_low = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_set_fifo_low = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_set_fifo_low = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_set_fifo_low to i32), ptr @__kstrtab_sched_set_fifo_low, ptr @__kstrtabns_sched_set_fifo_low }, section "___ksymtab_gpl+sched_set_fifo_low", align 4
@sched_set_normal.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sched_set_normal = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_set_normal = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_set_normal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_set_normal to i32), ptr @__kstrtab_sched_set_normal, ptr @__kstrtabns_sched_set_normal }, section "___ksymtab_gpl+sched_set_normal", align 4
@__cpu_active_mask = external dso_local global %struct.cpumask, align 4
@__kstrtab___cond_resched = external dso_local constant [0 x i8], align 1
@__kstrtabns___cond_resched = external dso_local constant [0 x i8], align 1
@__ksymtab___cond_resched = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cond_resched to i32), ptr @__kstrtab___cond_resched, ptr @__kstrtabns___cond_resched }, section "___ksymtab+__cond_resched", align 4
@__kstrtab___cond_resched_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___cond_resched_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___cond_resched_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cond_resched_lock to i32), ptr @__kstrtab___cond_resched_lock, ptr @__kstrtabns___cond_resched_lock }, section "___ksymtab+__cond_resched_lock", align 4
@__kstrtab___cond_resched_rwlock_read = external dso_local constant [0 x i8], align 1
@__kstrtabns___cond_resched_rwlock_read = external dso_local constant [0 x i8], align 1
@__ksymtab___cond_resched_rwlock_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cond_resched_rwlock_read to i32), ptr @__kstrtab___cond_resched_rwlock_read, ptr @__kstrtabns___cond_resched_rwlock_read }, section "___ksymtab+__cond_resched_rwlock_read", align 4
@__kstrtab___cond_resched_rwlock_write = external dso_local constant [0 x i8], align 1
@__kstrtabns___cond_resched_rwlock_write = external dso_local constant [0 x i8], align 1
@__ksymtab___cond_resched_rwlock_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__cond_resched_rwlock_write to i32), ptr @__kstrtab___cond_resched_rwlock_write, ptr @__kstrtabns___cond_resched_rwlock_write }, section "___ksymtab+__cond_resched_rwlock_write", align 4
@__kstrtab_yield = external dso_local constant [0 x i8], align 1
@__kstrtabns_yield = external dso_local constant [0 x i8], align 1
@__ksymtab_yield = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @yield to i32), ptr @__kstrtab_yield, ptr @__kstrtabns_yield }, section "___ksymtab+yield", align 4
@__kstrtab_yield_to = external dso_local constant [0 x i8], align 1
@__kstrtabns_yield_to = external dso_local constant [0 x i8], align 1
@__ksymtab_yield_to = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @yield_to to i32), ptr @__kstrtab_yield_to, ptr @__kstrtabns_yield_to }, section "___ksymtab_gpl+yield_to", align 4
@__kstrtab_io_schedule_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_io_schedule_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_io_schedule_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @io_schedule_timeout to i32), ptr @__kstrtab_io_schedule_timeout, ptr @__kstrtabns_io_schedule_timeout }, section "___ksymtab+io_schedule_timeout", align 4
@__kstrtab_io_schedule = external dso_local constant [0 x i8], align 1
@__kstrtabns_io_schedule = external dso_local constant [0 x i8], align 1
@__ksymtab_io_schedule = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @io_schedule to i32), ptr @__kstrtab_io_schedule, ptr @__kstrtabns_io_schedule }, section "___ksymtab+io_schedule", align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"\016task:%-15.15s state:%c\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"\01c  running task    \00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"\01c stack:%5lu pid:%5d ppid:%6d flags:0x%08lx\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@__kstrtab_sched_show_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_sched_show_task = external dso_local constant [0 x i8], align 1
@__ksymtab_sched_show_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sched_show_task to i32), ptr @__kstrtab_sched_show_task, ptr @__kstrtabns_sched_show_task }, section "___ksymtab_gpl+sched_show_task", align 4
@init_task = external dso_local global %struct.task_struct, align 64
@idle_sched_class = external dso_local constant %struct.sched_class, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"swapper\00", align 1
@init_mm = external dso_local global %struct.mm_struct, align 8
@__end_sched_classes = external dso_local global [0 x %struct.sched_class], align 4
@__begin_sched_classes = external dso_local global [0 x %struct.sched_class], align 4
@sched_smp_initialized = dso_local local_unnamed_addr global i8 0, section ".data..read_mostly", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Dying CPU not properly vacated!\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@sched_domains_mutex = external dso_local global %struct.mutex, align 4
@__initcall__kmod_core__625_9268_migration_initearly = internal global ptr @migration_init, section ".initcallearly.init", align 4
@__sched_text_start = external dso_local global [0 x i8], align 1
@__sched_text_end = external dso_local global [0 x i8], align 1
@dl_sched_class = external dso_local constant %struct.sched_class, align 4
@def_rt_bandwidth = external dso_local global %struct.rt_bandwidth, align 8
@def_dl_bandwidth = external dso_local global %struct.dl_bandwidth, align 8
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@sysctl_sched_migration_cost = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@def_root_domain = external dso_local global %struct.root_domain, align 8
@calc_load_update = external dso_local local_unnamed_addr global i32, align 4
@scheduler_running = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@tasklist_lock = external dso_local global %struct.rwlock_t, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"\016Task dump for CPU %d:\0A\00", align 1
@sched_prio_to_weight = dso_local local_unnamed_addr constant [40 x i32] [i32 88761, i32 71755, i32 56483, i32 46273, i32 36291, i32 29154, i32 23254, i32 18705, i32 14949, i32 11916, i32 9548, i32 7620, i32 6100, i32 4904, i32 3906, i32 3121, i32 2501, i32 1991, i32 1586, i32 1277, i32 1024, i32 820, i32 655, i32 526, i32 423, i32 335, i32 272, i32 215, i32 172, i32 137, i32 110, i32 87, i32 70, i32 56, i32 45, i32 36, i32 29, i32 23, i32 18, i32 15], align 4
@sched_prio_to_wmult = dso_local local_unnamed_addr constant [40 x i32] [i32 48388, i32 59856, i32 76040, i32 92818, i32 118348, i32 147320, i32 184698, i32 229616, i32 287308, i32 360437, i32 449829, i32 563644, i32 704093, i32 875809, i32 1099582, i32 1376151, i32 1717300, i32 2157191, i32 2708050, i32 3363326, i32 4194304, i32 5237765, i32 6557202, i32 8165337, i32 10153587, i32 12820798, i32 15790321, i32 19976592, i32 24970740, i32 31350126, i32 39045157, i32 49367440, i32 61356676, i32 76695844, i32 95443717, i32 119304647, i32 148102320, i32 186737708, i32 238609294, i32 286331153], align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"char[TASK_COMM_LEN]\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"pid_t\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"comm=%s pid=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"ret=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"work\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"worker\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"work struct=%p function=%ps worker=%p\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"work struct %p: function %ps\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"prio\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"target_cpu\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"comm=%s pid=%d prio=%d target_cpu=%03d\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"prev_comm\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"prev_pid\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"prev_prio\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"prev_state\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"next_comm\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"next_pid\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"next_prio\00", align 1
@.str.41 = private unnamed_addr constant [97 x i8] c"prev_comm=%s prev_pid=%d prev_prio=%d prev_state=%s%s ==> next_comm=%s next_pid=%d next_prio=%d\0A\00", align 1
@trace_raw_output_sched_switch.__flags = internal constant [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.42 }, %struct.trace_print_flags { i32 2, ptr @.str.43 }, %struct.trace_print_flags { i32 4, ptr @.str.44 }, %struct.trace_print_flags { i32 8, ptr @.str.45 }, %struct.trace_print_flags { i32 16, ptr @.str.46 }, %struct.trace_print_flags { i32 32, ptr @.str.47 }, %struct.trace_print_flags { i32 64, ptr @.str.48 }, %struct.trace_print_flags { i32 128, ptr @.str.49 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"orig_cpu\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"dest_cpu\00", align 1
@.str.56 = private unnamed_addr constant [48 x i8] c"comm=%s pid=%d prio=%d orig_cpu=%d dest_cpu=%d\0A\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"comm=%s pid=%d prio=%d\0A\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"parent_comm\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"parent_pid\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"child_comm\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"child_pid\00", align 1
@.str.62 = private unnamed_addr constant [43 x i8] c"comm=%s pid=%d child_comm=%s child_pid=%d\0A\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"old_pid\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"filename=%s pid=%d old_pid=%d\0A\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"vruntime\00", align 1
@.str.71 = private unnamed_addr constant [51 x i8] c"comm=%s pid=%d runtime=%Lu [ns] vruntime=%Lu [ns]\0A\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"oldprio\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"newprio\00", align 1
@.str.74 = private unnamed_addr constant [38 x i8] c"comm=%s pid=%d oldprio=%d newprio=%d\0A\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"tgid\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"ngid\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"src_cpu\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"src_nid\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"dst_cpu\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"dst_nid\00", align 1
@.str.81 = private unnamed_addr constant [68 x i8] c"pid=%d tgid=%d ngid=%d src_cpu=%d src_nid=%d dst_cpu=%d dst_nid=%d\0A\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"src_pid\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"src_tgid\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"src_ngid\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"dst_pid\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"dst_tgid\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"dst_ngid\00", align 1
@.str.88 = private unnamed_addr constant [115 x i8] c"src_pid=%d src_tgid=%d src_ngid=%d src_cpu=%d src_nid=%d dst_pid=%d dst_tgid=%d dst_ngid=%d dst_cpu=%d dst_nid=%d\0A\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"cpu=%d\0A\00", align 1
@rq_pin_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"kernel/sched/sched.h\00", align 1
@.str.92 = private unnamed_addr constant [71 x i8] c"rq->balance_callback && rq->balance_callback != &balance_push_callback\00", align 1
@assert_clock_updated.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.93 = private unnamed_addr constant [39 x i8] c"rq->clock_update_flags < RQCF_ACT_SKIP\00", align 1
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@arch_freq_scale = external dso_local global i32, section ".data..percpu", align 4
@housekeeping_overridden = external dso_local global %struct.static_key_false, align 4
@__do_set_cpus_allowed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"!p->on_cpu\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__set_cpus_allowed_ptr_locked.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@affine_move_task.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@affine_move_task.__already_done.96 = internal unnamed_addr global i1 false, section ".data.once", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@perf_swevent_enabled = external dso_local global [12 x %struct.static_key], align 4
@ttwu_queue_wakelist.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sched_rr_timeslice = external dso_local local_unnamed_addr global i32, align 4
@__cpu_dying_mask = external dso_local global %struct.cpumask, align 4
@__func__.select_fallback_rq = private unnamed_addr constant [19 x i8] c"select_fallback_rq\00", align 1
@.str.98 = private unnamed_addr constant [43 x i8] c"process %d (%s) no longer affine to cpu%d\0A\00", align 1
@finish_task_switch.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.99 = private unnamed_addr constant [37 x i8] c"corrupted preempt_count: %s/%d/0x%x\0A\00", align 1
@perf_sched_events = external dso_local global %struct.static_key_false, align 4
@__perf_regs = external dso_local global [4 x %struct.pt_regs], section ".data..percpu", align 4
@migration_cpu_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@migration_cpu_stop.__already_done.100 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.101 = private unnamed_addr constant [41 x i8] c"\014Unable to set resched_latency_warn_ms\0A\00", align 1
@thermal_pressure = external dso_local global i32, section ".data..percpu", align 4
@sched_thermal_decay_shift = external dso_local local_unnamed_addr global i32, align 4
@cpu_resched_latency.warned_once = internal unnamed_addr global i1 false, align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.103 = private unnamed_addr constant [46 x i8] c"\013BUG: scheduling while atomic: %s/%d/0x%08x\0A\00", align 1
@panic_on_warn = external dso_local local_unnamed_addr global i32, align 4
@.str.104 = private unnamed_addr constant [25 x i8] c"scheduling while atomic\0A\00", align 1
@__entry_task = external dso_local global ptr, section ".data..percpu", align 4
@put_prev_task.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@task_index_to_char.state_char = internal unnamed_addr constant [10 x i8] c"RSDTtXZPI\00", align 1
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@push_work = internal global %struct.cpu_stop_work zeroinitializer, section ".data..percpu", align 4
@balance_push_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpuhp_tasks_frozen = external dso_local local_unnamed_addr global i8, align 1
@num_cpus_frozen = internal unnamed_addr global i32 0, align 4
@.str.108 = private unnamed_addr constant [36 x i8] c"%sCPU%d enqueued tasks (%u total):\0A\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"%s\09pid: %d, name: %s\0A\00", align 1
@calc_load_tasks = external dso_local global %struct.atomic_t, align 4
@hrtick.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [183 x ptr] [ptr @__event_sched_kthread_stop, ptr @__event_sched_kthread_stop_ret, ptr @__event_sched_kthread_work_execute_end, ptr @__event_sched_kthread_work_execute_start, ptr @__event_sched_kthread_work_queue_work, ptr @__event_sched_migrate_task, ptr @__event_sched_move_numa, ptr @__event_sched_pi_setprio, ptr @__event_sched_process_exec, ptr @__event_sched_process_exit, ptr @__event_sched_process_fork, ptr @__event_sched_process_free, ptr @__event_sched_process_wait, ptr @__event_sched_stat_runtime, ptr @__event_sched_stick_numa, ptr @__event_sched_swap_numa, ptr @__event_sched_switch, ptr @__event_sched_wait_task, ptr @__event_sched_wake_idle_without_ipi, ptr @__event_sched_wakeup, ptr @__event_sched_wakeup_new, ptr @__event_sched_waking, ptr @__initcall__kmod_core__625_9268_migration_initearly, ptr @__ksymtab___SCK__tp_func_pelt_cfs_tp, ptr @__ksymtab___SCK__tp_func_pelt_dl_tp, ptr @__ksymtab___SCK__tp_func_pelt_irq_tp, ptr @__ksymtab___SCK__tp_func_pelt_rt_tp, ptr @__ksymtab___SCK__tp_func_pelt_se_tp, ptr @__ksymtab___SCK__tp_func_sched_cpu_capacity_tp, ptr @__ksymtab___SCK__tp_func_sched_overutilized_tp, ptr @__ksymtab___SCK__tp_func_sched_update_nr_running_tp, ptr @__ksymtab___SCK__tp_func_sched_util_est_cfs_tp, ptr @__ksymtab___SCK__tp_func_sched_util_est_se_tp, ptr @__ksymtab___cond_resched, ptr @__ksymtab___cond_resched_lock, ptr @__ksymtab___cond_resched_rwlock_read, ptr @__ksymtab___cond_resched_rwlock_write, ptr @__ksymtab___traceiter_pelt_cfs_tp, ptr @__ksymtab___traceiter_pelt_dl_tp, ptr @__ksymtab___traceiter_pelt_irq_tp, ptr @__ksymtab___traceiter_pelt_rt_tp, ptr @__ksymtab___traceiter_pelt_se_tp, ptr @__ksymtab___traceiter_sched_cpu_capacity_tp, ptr @__ksymtab___traceiter_sched_overutilized_tp, ptr @__ksymtab___traceiter_sched_update_nr_running_tp, ptr @__ksymtab___traceiter_sched_util_est_cfs_tp, ptr @__ksymtab___traceiter_sched_util_est_se_tp, ptr @__ksymtab___tracepoint_pelt_cfs_tp, ptr @__ksymtab___tracepoint_pelt_dl_tp, ptr @__ksymtab___tracepoint_pelt_irq_tp, ptr @__ksymtab___tracepoint_pelt_rt_tp, ptr @__ksymtab___tracepoint_pelt_se_tp, ptr @__ksymtab___tracepoint_sched_cpu_capacity_tp, ptr @__ksymtab___tracepoint_sched_overutilized_tp, ptr @__ksymtab___tracepoint_sched_update_nr_running_tp, ptr @__ksymtab___tracepoint_sched_util_est_cfs_tp, ptr @__ksymtab___tracepoint_sched_util_est_se_tp, ptr @__ksymtab_default_wake_function, ptr @__ksymtab_io_schedule, ptr @__ksymtab_io_schedule_timeout, ptr @__ksymtab_kernel_cpustat, ptr @__ksymtab_kick_process, ptr @__ksymtab_kstat, ptr @__ksymtab_migrate_disable, ptr @__ksymtab_migrate_enable, ptr @__ksymtab_sched_set_fifo, ptr @__ksymtab_sched_set_fifo_low, ptr @__ksymtab_sched_set_normal, ptr @__ksymtab_sched_setattr_nocheck, ptr @__ksymtab_sched_show_task, ptr @__ksymtab_schedule, ptr @__ksymtab_set_cpus_allowed_ptr, ptr @__ksymtab_set_user_nice, ptr @__ksymtab_single_task_running, ptr @__ksymtab_wake_up_process, ptr @__ksymtab_yield, ptr @__ksymtab_yield_to, ptr @__setup_setup_resched_latency_warn_ms, ptr @__tracepoint_pelt_cfs_tp, ptr @__tracepoint_pelt_dl_tp, ptr @__tracepoint_pelt_irq_tp, ptr @__tracepoint_pelt_rt_tp, ptr @__tracepoint_pelt_se_tp, ptr @__tracepoint_pelt_thermal_tp, ptr @__tracepoint_ptr_pelt_cfs_tp, ptr @__tracepoint_ptr_pelt_dl_tp, ptr @__tracepoint_ptr_pelt_irq_tp, ptr @__tracepoint_ptr_pelt_rt_tp, ptr @__tracepoint_ptr_pelt_se_tp, ptr @__tracepoint_ptr_pelt_thermal_tp, ptr @__tracepoint_ptr_sched_cpu_capacity_tp, ptr @__tracepoint_ptr_sched_kthread_stop, ptr @__tracepoint_ptr_sched_kthread_stop_ret, ptr @__tracepoint_ptr_sched_kthread_work_execute_end, ptr @__tracepoint_ptr_sched_kthread_work_execute_start, ptr @__tracepoint_ptr_sched_kthread_work_queue_work, ptr @__tracepoint_ptr_sched_migrate_task, ptr @__tracepoint_ptr_sched_move_numa, ptr @__tracepoint_ptr_sched_overutilized_tp, ptr @__tracepoint_ptr_sched_pi_setprio, ptr @__tracepoint_ptr_sched_process_exec, ptr @__tracepoint_ptr_sched_process_exit, ptr @__tracepoint_ptr_sched_process_fork, ptr @__tracepoint_ptr_sched_process_free, ptr @__tracepoint_ptr_sched_process_wait, ptr @__tracepoint_ptr_sched_stat_runtime, ptr @__tracepoint_ptr_sched_stick_numa, ptr @__tracepoint_ptr_sched_swap_numa, ptr @__tracepoint_ptr_sched_switch, ptr @__tracepoint_ptr_sched_update_nr_running_tp, ptr @__tracepoint_ptr_sched_util_est_cfs_tp, ptr @__tracepoint_ptr_sched_util_est_se_tp, ptr @__tracepoint_ptr_sched_wait_task, ptr @__tracepoint_ptr_sched_wake_idle_without_ipi, ptr @__tracepoint_ptr_sched_wakeup, ptr @__tracepoint_ptr_sched_wakeup_new, ptr @__tracepoint_ptr_sched_waking, ptr @__tracepoint_sched_cpu_capacity_tp, ptr @__tracepoint_sched_kthread_stop, ptr @__tracepoint_sched_kthread_stop_ret, ptr @__tracepoint_sched_kthread_work_execute_end, ptr @__tracepoint_sched_kthread_work_execute_start, ptr @__tracepoint_sched_kthread_work_queue_work, ptr @__tracepoint_sched_migrate_task, ptr @__tracepoint_sched_move_numa, ptr @__tracepoint_sched_overutilized_tp, ptr @__tracepoint_sched_pi_setprio, ptr @__tracepoint_sched_process_exec, ptr @__tracepoint_sched_process_exit, ptr @__tracepoint_sched_process_fork, ptr @__tracepoint_sched_process_free, ptr @__tracepoint_sched_process_wait, ptr @__tracepoint_sched_stat_runtime, ptr @__tracepoint_sched_stick_numa, ptr @__tracepoint_sched_swap_numa, ptr @__tracepoint_sched_switch, ptr @__tracepoint_sched_update_nr_running_tp, ptr @__tracepoint_sched_util_est_cfs_tp, ptr @__tracepoint_sched_util_est_se_tp, ptr @__tracepoint_sched_wait_task, ptr @__tracepoint_sched_wake_idle_without_ipi, ptr @__tracepoint_sched_wakeup, ptr @__tracepoint_sched_wakeup_new, ptr @__tracepoint_sched_waking, ptr @event_class_sched_kthread_stop, ptr @event_class_sched_kthread_stop_ret, ptr @event_class_sched_kthread_work_execute_end, ptr @event_class_sched_kthread_work_execute_start, ptr @event_class_sched_kthread_work_queue_work, ptr @event_class_sched_migrate_task, ptr @event_class_sched_move_numa, ptr @event_class_sched_numa_pair_template, ptr @event_class_sched_pi_setprio, ptr @event_class_sched_process_exec, ptr @event_class_sched_process_fork, ptr @event_class_sched_process_template, ptr @event_class_sched_process_wait, ptr @event_class_sched_stat_runtime, ptr @event_class_sched_switch, ptr @event_class_sched_wake_idle_without_ipi, ptr @event_class_sched_wakeup_template, ptr @event_sched_kthread_stop, ptr @event_sched_kthread_stop_ret, ptr @event_sched_kthread_work_execute_end, ptr @event_sched_kthread_work_execute_start, ptr @event_sched_kthread_work_queue_work, ptr @event_sched_migrate_task, ptr @event_sched_move_numa, ptr @event_sched_pi_setprio, ptr @event_sched_process_exec, ptr @event_sched_process_exit, ptr @event_sched_process_fork, ptr @event_sched_process_free, ptr @event_sched_process_wait, ptr @event_sched_stat_runtime, ptr @event_sched_stick_numa, ptr @event_sched_swap_numa, ptr @event_sched_switch, ptr @event_sched_wait_task, ptr @event_sched_wake_idle_without_ipi, ptr @event_sched_wakeup, ptr @event_sched_wakeup_new, ptr @event_sched_waking], section "llvm.metadata"
@switch.table.__se_sys_sched_get_priority_max = private unnamed_addr constant [7 x i32] [i32 0, i32 99, i32 99, i32 0, i32 -22, i32 0, i32 0], align 4
@switch.table.__se_sys_sched_get_priority_min = private unnamed_addr constant [7 x i32] [i32 0, i32 1, i32 1, i32 0, i32 -22, i32 0, i32 0], align 4

@sys_nice = dso_local alias i32 (i32), ptr @__se_sys_nice
@sys_sched_setscheduler = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_sched_setscheduler
@sys_sched_setparam = dso_local alias i32 (i32, ptr), ptr @__se_sys_sched_setparam
@sys_sched_setattr = dso_local alias i32 (i32, ptr, i32), ptr @__se_sys_sched_setattr
@sys_sched_getscheduler = dso_local alias i32 (i32), ptr @__se_sys_sched_getscheduler
@sys_sched_getparam = dso_local alias i32 (i32, ptr), ptr @__se_sys_sched_getparam
@sys_sched_getattr = dso_local alias i32 (i32, ptr, i32, i32), ptr @__se_sys_sched_getattr
@sys_sched_setaffinity = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_sched_setaffinity
@sys_sched_getaffinity = dso_local alias i32 (i32, i32, ptr), ptr @__se_sys_sched_getaffinity
@sys_sched_get_priority_max = dso_local alias i32 (i32), ptr @__se_sys_sched_get_priority_max
@sys_sched_get_priority_min = dso_local alias i32 (i32), ptr @__se_sys_sched_get_priority_min
@sys_sched_rr_get_interval = dso_local alias i32 (i32, ptr), ptr @__se_sys_sched_rr_get_interval
@sys_sched_rr_get_interval_time32 = dso_local alias i32 (i32, ptr), ptr @__se_sys_sched_rr_get_interval_time32

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_kthread_stop(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_kthread_stop_ret(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop_ret, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_kthread_work_queue_work(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_queue_work, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #28
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_kthread_work_execute_start(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_kthread_work_execute_end(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_end, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #28
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_waking(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_waking, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_wakeup(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wakeup, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_wakeup_new(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wakeup_new, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_switch(ptr nocapture readnone %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_switch, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #28
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_migrate_task(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_migrate_task, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #28
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_process_free(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_free, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_process_exit(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exit, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_wait_task(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wait_task, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_process_wait(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_wait, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_process_fork(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_fork, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #28
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_process_exec(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_exec, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, ptr noundef %3) #28
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_stat_runtime(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stat_runtime, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i64 noundef %2, i64 noundef %3) #28
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_pi_setprio(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_pi_setprio, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #28
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_move_numa(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_move_numa, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #28
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_stick_numa(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_stick_numa, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #28
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_swap_numa(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_swap_numa, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #28
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_wake_idle_without_ipi(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wake_idle_without_ipi, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pelt_cfs_tp(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_cfs_tp, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pelt_rt_tp(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_rt_tp, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pelt_dl_tp(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_dl_tp, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pelt_thermal_tp(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_thermal_tp, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pelt_irq_tp(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_irq_tp, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pelt_se_tp(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pelt_se_tp, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_cpu_capacity_tp(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_cpu_capacity_tp, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_overutilized_tp(ptr nocapture readnone %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_overutilized_tp, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i1 noundef zeroext %2) #28
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_util_est_cfs_tp(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_util_est_cfs_tp, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_util_est_se_tp(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_util_est_se_tp, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #28
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_sched_update_nr_running_tp(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #28
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_kthread_stop(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !11

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !12

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %12, label %22, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 28) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_stop, ptr %14, i32 0, i32 1
  %18 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %17, ptr noundef align 32 dereferenceable(16) %18, i32 16, i1 false)
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_stop, ptr %14, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #28
  br label %22

22:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_kthread_stop(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store ptr null, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #24, !srcloc !13
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %40, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #28
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #28
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_stop, ptr %20, i32 0, i32 1
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %33, ptr noundef align 32 dereferenceable(16) %34, i32 16, i1 false)
  %35 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_stop, ptr %20, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %4, align 4
  %39 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %12, ptr noundef null) #28
  br label %40

40:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_kthread_stop_ret(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !11

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !12

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_stop_ret, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #28
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_kthread_stop_ret(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store ptr null, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #24, !srcloc !13
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #28
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #28
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_stop_ret, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #28
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_kthread_work_queue_work(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !11

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !12

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %13, label %23, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 20) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_queue_work, ptr %15, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.kthread_work, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_queue_work, ptr %15, i32 0, i32 2
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_queue_work, ptr %15, i32 0, i32 3
  store ptr %1, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #28
  br label %23

23:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_kthread_work_queue_work(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store ptr null, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #24, !srcloc !13
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #28
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #28
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #28
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_queue_work, ptr %21, i32 0, i32 1
  store ptr %2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.kthread_work, ptr %2, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_queue_work, ptr %21, i32 0, i32 2
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_queue_work, ptr %21, i32 0, i32 3
  store ptr %1, ptr %38, align 4
  %39 = load i32, ptr %5, align 4
  %40 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #28
  br label %41

41:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_kthread_work_execute_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !11

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !12

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %12, label %21, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 16) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_start, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.kthread_work, ptr %1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_start, ptr %14, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #28
  br label %21

21:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_kthread_work_execute_start(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store ptr null, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #24, !srcloc !13
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %3, ptr noundef nonnull %4) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #28
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #28
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_start, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.kthread_work, ptr %1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_start, ptr %20, i32 0, i32 2
  store ptr %35, ptr %36, align 4
  %37 = load i32, ptr %4, align 4
  %38 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 20, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %12, ptr noundef null) #28
  br label %39

39:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_kthread_work_execute_end(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !11

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !12

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_end, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_end, ptr %15, i32 0, i32 2
  store ptr %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #28
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_kthread_work_execute_end(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store ptr null, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #24, !srcloc !13
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #28
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #28
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #28
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_end, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_end, ptr %21, i32 0, i32 2
  store ptr %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #28
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_wakeup_template(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !11

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !12

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %12, label %28, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 36) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %14, i32 0, i32 1
  %18 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %17, ptr noundef align 32 dereferenceable(16) %18, i32 16, i1 false)
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %14, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %23 = load i32, ptr %22, align 16
  %24 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %14, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %26 = load volatile i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %14, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #28
  br label %28

28:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_wakeup_template(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store ptr null, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #24, !srcloc !13
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %11 = load volatile ptr, ptr %10, align 4
  %12 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %3, ptr noundef nonnull %4) #28
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %2
  %15 = ptrtoint ptr %6 to i32
  %16 = add i32 %9, %15
  %17 = inttoptr i32 %16 to ptr
  %18 = load ptr, ptr %3, align 4
  %19 = call ptr @llvm.returnaddress(i32 0) #28
  %20 = ptrtoint ptr %19 to i32
  %21 = getelementptr [18 x i32], ptr %18, i32 0, i32 15
  store i32 %20, ptr %21, align 4
  %22 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %23 = ptrtoint ptr %22 to i32
  %24 = getelementptr [18 x i32], ptr %18, i32 0, i32 11
  store i32 %23, ptr %24, align 4
  %25 = call i32 @llvm.read_register.i32(metadata !0) #28
  %26 = getelementptr [18 x i32], ptr %18, i32 0, i32 13
  store i32 %25, ptr %26, align 4
  %27 = getelementptr [18 x i32], ptr %18, i32 0, i32 16
  store i32 19, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %12, i32 0, i32 1
  %29 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %28, ptr noundef align 32 dereferenceable(16) %29, i32 16, i1 false)
  %30 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %31 = load i32, ptr %30, align 8
  %32 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %12, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %34 = load i32, ptr %33, align 16
  %35 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %12, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %37 = load volatile i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %12, i32 0, i32 4
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %4, align 4
  %40 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %12, i32 noundef 36, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %17, ptr noundef %1) #28
  br label %41

41:                                               ; preds = %14, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_switch(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !11

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !12

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %14, label %59, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 60) #28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %16, i32 0, i32 5
  %20 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %19, ptr noundef align 32 dereferenceable(16) %20, i32 16, i1 false)
  %21 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %16, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 14
  %25 = load i32, ptr %24, align 16
  %26 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %16, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = tail call ptr @llvm.thread.pointer() #28
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %30, label %29, !prof !11

29:                                               ; preds = %18
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/trace/events/sched.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 195, 0\0A.popsection", ""() #28, !srcloc !14
  unreachable

30:                                               ; preds = %18
  br i1 %1, label %48, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  %33 = load volatile i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 41
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, %33
  %37 = and i32 %36, 127
  %38 = icmp eq i32 %33, 1026
  %39 = select i1 %38, i32 128, i32 %37
  %40 = icmp eq i32 %39, 0
  %41 = call i32 @llvm.ctlz.i32(i32 %39, i1 false) #28, !range !15
  %42 = sub nuw nsw i32 32, %41
  %43 = select i1 %40, i32 0, i32 %42
  %44 = icmp eq i32 %43, 0
  %45 = add nsw i32 %43, -1
  %46 = shl nuw i32 1, %45
  %47 = select i1 %44, i32 0, i32 %46
  br label %48

48:                                               ; preds = %31, %30
  %49 = phi i32 [ %47, %31 ], [ 256, %30 ]
  %50 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %16, i32 0, i32 4
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %16, i32 0, i32 1
  %52 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %51, ptr noundef align 32 dereferenceable(16) %52, i32 16, i1 false)
  %53 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %16, i32 0, i32 6
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 14
  %57 = load i32, ptr %56, align 16
  %58 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %16, i32 0, i32 7
  store i32 %57, ptr %58, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #28
  br label %59

59:                                               ; preds = %48, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_switch(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store ptr null, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  store i32 0, ptr %6, align 4, !annotation !10
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #24, !srcloc !13
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %77, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %5, ptr noundef nonnull %6) #28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %77, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #28
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #28
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %22, i32 0, i32 5
  %36 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %35, ptr noundef align 32 dereferenceable(16) %36, i32 16, i1 false)
  %37 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %22, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 14
  %41 = load i32, ptr %40, align 16
  %42 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %22, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = tail call ptr @llvm.thread.pointer() #28
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %46, label %45, !prof !11

45:                                               ; preds = %24
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/trace/events/sched.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 195, 0\0A.popsection", ""() #28, !srcloc !14
  unreachable

46:                                               ; preds = %24
  br i1 %1, label %64, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 1
  %49 = load volatile i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 41
  %51 = load i32, ptr %50, align 4
  %52 = or i32 %51, %49
  %53 = and i32 %52, 127
  %54 = icmp eq i32 %49, 1026
  %55 = select i1 %54, i32 128, i32 %53
  %56 = icmp eq i32 %55, 0
  %57 = call i32 @llvm.ctlz.i32(i32 %55, i1 false) #28, !range !15
  %58 = sub nuw nsw i32 32, %57
  %59 = select i1 %56, i32 0, i32 %58
  %60 = icmp eq i32 %59, 0
  %61 = add nsw i32 %59, -1
  %62 = shl nuw i32 1, %61
  %63 = select i1 %60, i32 0, i32 %62
  br label %64

64:                                               ; preds = %47, %46
  %65 = phi i32 [ %63, %47 ], [ 256, %46 ]
  %66 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %22, i32 0, i32 4
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %22, i32 0, i32 1
  %68 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %67, ptr noundef align 32 dereferenceable(16) %68, i32 16, i1 false)
  %69 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %70 = load i32, ptr %69, align 8
  %71 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %22, i32 0, i32 6
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 14
  %73 = load i32, ptr %72, align 16
  %74 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %22, i32 0, i32 7
  store i32 %73, ptr %74, align 4
  %75 = load i32, ptr %6, align 4
  %76 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 60, i32 noundef %75, ptr noundef %0, i64 noundef 1, ptr noundef %76, ptr noundef %14, ptr noundef null) #28
  br label %77

77:                                               ; preds = %64, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_migrate_task(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !11

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !12

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %13, label %30, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 40) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %15, i32 0, i32 1
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %18, ptr noundef align 32 dereferenceable(16) %19, i32 16, i1 false)
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %15, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %24 = load i32, ptr %23, align 16
  %25 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %15, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %27 = load volatile i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %15, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %15, i32 0, i32 5
  store i32 %2, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #28
  br label %30

30:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_migrate_task(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store ptr null, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #24, !srcloc !13
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %4, ptr noundef nonnull %5) #28
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #28
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #28
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %21, i32 0, i32 1
  %35 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %34, ptr noundef align 32 dereferenceable(16) %35, i32 16, i1 false)
  %36 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %21, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %40 = load i32, ptr %39, align 16
  %41 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %21, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %43 = load volatile i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %21, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %21, i32 0, i32 5
  store i32 %2, ptr %45, align 4
  %46 = load i32, ptr %5, align 4
  %47 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 44, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %13, ptr noundef null) #28
  br label %48

48:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_process_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !11

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !12

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %12, label %25, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 32) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_sched_process_template, ptr %14, i32 0, i32 1
  %18 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %17, ptr noundef align 32 dereferenceable(16) %18, i32 16, i1 false)
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_sched_process_template, ptr %14, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %23 = load i32, ptr %22, align 16
  %24 = getelementptr inbounds %struct.trace_event_raw_sched_process_template, ptr %14, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #28
  br label %25

25:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_process_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store ptr null, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #24, !srcloc !13
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %3, ptr noundef nonnull %4) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #28
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #28
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_sched_process_template, ptr %20, i32 0, i32 1
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %33, ptr noundef align 32 dereferenceable(16) %34, i32 16, i1 false)
  %35 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_sched_process_template, ptr %20, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %39 = load i32, ptr %38, align 16
  %40 = getelementptr inbounds %struct.trace_event_raw_sched_process_template, ptr %20, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %4, align 4
  %42 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 36, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %12, ptr noundef null) #28
  br label %43

43:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_process_wait(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !11

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !12

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %12, label %30, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 32) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_sched_process_wait, ptr %14, i32 0, i32 1
  %18 = tail call ptr @llvm.thread.pointer() #28
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %17, ptr noundef align 32 dereferenceable(16) %19, i32 16, i1 false)
  %20 = icmp eq ptr %1, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = phi i32 [ %23, %21 ], [ 0, %16 ]
  %26 = getelementptr inbounds %struct.trace_event_raw_sched_process_wait, ptr %14, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 14
  %28 = load i32, ptr %27, align 16
  %29 = getelementptr inbounds %struct.trace_event_raw_sched_process_wait, ptr %14, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #28
  br label %30

30:                                               ; preds = %24, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_process_wait(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store ptr null, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #24, !srcloc !13
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %3, ptr noundef nonnull %4) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #28
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #28
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_sched_process_wait, ptr %20, i32 0, i32 1
  %34 = tail call ptr @llvm.thread.pointer() #28
  %35 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %33, ptr noundef align 32 dereferenceable(16) %35, i32 16, i1 false)
  %36 = icmp eq ptr %1, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %22
  %41 = phi i32 [ %39, %37 ], [ 0, %22 ]
  %42 = getelementptr inbounds %struct.trace_event_raw_sched_process_wait, ptr %20, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 14
  %44 = load i32, ptr %43, align 16
  %45 = getelementptr inbounds %struct.trace_event_raw_sched_process_wait, ptr %20, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = load i32, ptr %4, align 4
  %47 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 36, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %12, ptr noundef null) #28
  br label %48

48:                                               ; preds = %40, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_process_fork(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !11

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !12

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %13, label %28, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 48) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %15, i32 0, i32 1
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %18, ptr noundef align 32 dereferenceable(16) %19, i32 16, i1 false)
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %15, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %15, i32 0, i32 3
  %24 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %23, ptr noundef align 32 dereferenceable(16) %24, i32 16, i1 false)
  %25 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %15, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #28
  br label %28

28:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_process_fork(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store ptr null, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #24, !srcloc !13
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %4, ptr noundef nonnull %5) #28
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #28
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #28
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %21, i32 0, i32 1
  %35 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %34, ptr noundef align 32 dereferenceable(16) %35, i32 16, i1 false)
  %36 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %21, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %21, i32 0, i32 3
  %40 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %39, ptr noundef align 32 dereferenceable(16) %40, i32 16, i1 false)
  %41 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 52
  %42 = load i32, ptr %41, align 8
  %43 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %21, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = load i32, ptr %5, align 4
  %45 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 52, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %13, ptr noundef null) #28
  br label %46

46:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_process_exec(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !11

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !12

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %14, label %37, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.linux_binprm, ptr %3, i32 0, i32 14
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str.63, ptr %17
  %20 = tail call i32 @strlen(ptr noundef nonnull %19) #28
  %21 = add i32 %20, 21
  %22 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %21) #28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %15
  %25 = shl i32 %20, 16
  %26 = add i32 %25, 65556
  %27 = getelementptr inbounds %struct.trace_event_raw_sched_process_exec, ptr %22, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %22, i32 20
  %29 = load ptr, ptr %16, align 4
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr @.str.63, ptr %29
  %32 = call ptr @strcpy(ptr noundef %28, ptr noundef nonnull %31)
  %33 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_sched_process_exec, ptr %22, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_sched_process_exec, ptr %22, i32 0, i32 3
  store i32 %2, ptr %36, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #28
  br label %37

37:                                               ; preds = %24, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_process_exec(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store ptr null, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  store i32 0, ptr %6, align 4, !annotation !10
  %7 = getelementptr inbounds %struct.linux_binprm, ptr %3, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str.63, ptr %8
  %11 = tail call i32 @strlen(ptr noundef nonnull %10) #28
  %12 = shl i32 %11, 16
  %13 = add i32 %12, 65556
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #24, !srcloc !13
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load volatile ptr, ptr %21, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %57, label %28

28:                                               ; preds = %25, %4
  %29 = add i32 %11, 32
  %30 = and i32 %29, -8
  %31 = add i32 %30, -4
  %32 = call ptr @perf_trace_buf_alloc(i32 noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #28
  %33 = icmp eq ptr %32, null
  br i1 %33, label %57, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %5, align 4
  %36 = call ptr @llvm.returnaddress(i32 0) #28
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %35, i32 0, i32 15
  store i32 %37, ptr %38, align 4
  %39 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %40 = ptrtoint ptr %39 to i32
  %41 = getelementptr [18 x i32], ptr %35, i32 0, i32 11
  store i32 %40, ptr %41, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !0) #28
  %43 = getelementptr [18 x i32], ptr %35, i32 0, i32 13
  store i32 %42, ptr %43, align 4
  %44 = getelementptr [18 x i32], ptr %35, i32 0, i32 16
  store i32 19, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_sched_process_exec, ptr %32, i32 0, i32 1
  store i32 %13, ptr %45, align 4
  %46 = getelementptr i8, ptr %32, i32 20
  %47 = load ptr, ptr %7, align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr @.str.63, ptr %47
  %50 = call ptr @strcpy(ptr noundef %46, ptr noundef nonnull %49)
  %51 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.trace_event_raw_sched_process_exec, ptr %32, i32 0, i32 2
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_sched_process_exec, ptr %32, i32 0, i32 3
  store i32 %2, ptr %54, align 4
  %55 = load i32, ptr %6, align 4
  %56 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %32, i32 noundef %31, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %21, ptr noundef null) #28
  br label %57

57:                                               ; preds = %34, %28, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_stat_runtime(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !11

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !12

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %14, label %26, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 48) #28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %16, i32 0, i32 1
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %19, ptr noundef align 32 dereferenceable(16) %20, i32 16, i1 false)
  %21 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %16, i32 0, i32 2
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %16, i32 0, i32 3
  store i64 %2, ptr %24, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %16, i32 0, i32 4
  store i64 %3, ptr %25, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #28
  br label %26

26:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_stat_runtime(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store ptr null, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  store i32 0, ptr %6, align 4, !annotation !10
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #24, !srcloc !13
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %5, ptr noundef nonnull %6) #28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #28
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #28
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %22, i32 0, i32 1
  %36 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %35, ptr noundef align 32 dereferenceable(16) %36, i32 16, i1 false)
  %37 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %22, i32 0, i32 2
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %22, i32 0, i32 3
  store i64 %2, ptr %40, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %22, i32 0, i32 4
  store i64 %3, ptr %41, align 8
  %42 = load i32, ptr %6, align 4
  %43 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 52, i32 noundef %42, ptr noundef %0, i64 noundef %2, ptr noundef %43, ptr noundef %14, ptr noundef null) #28
  br label %44

44:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_pi_setprio(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !11

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !12

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %13, label %36, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 36) #28
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %15, i32 0, i32 1
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %18, ptr noundef align 32 dereferenceable(16) %19, i32 16, i1 false)
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %15, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %24 = load i32, ptr %23, align 16
  %25 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %15, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = icmp eq ptr %2, null
  %27 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 16
  %28 = load i32, ptr %27, align 8
  br i1 %26, label %33, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 14
  %31 = load i32, ptr %30, align 16
  %32 = call i32 @llvm.smin.i32(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %29, %17
  %34 = phi i32 [ %32, %29 ], [ %28, %17 ]
  %35 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %15, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #28
  br label %36

36:                                               ; preds = %33, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_pi_setprio(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store ptr null, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #24, !srcloc !13
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %54, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #28
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #28
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #28
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %21, i32 0, i32 1
  %35 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %34, ptr noundef align 32 dereferenceable(16) %35, i32 16, i1 false)
  %36 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %21, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %40 = load i32, ptr %39, align 16
  %41 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %21, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = icmp eq ptr %2, null
  %43 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 16
  %44 = load i32, ptr %43, align 8
  br i1 %42, label %49, label %45

45:                                               ; preds = %23
  %46 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 14
  %47 = load i32, ptr %46, align 16
  %48 = call i32 @llvm.smin.i32(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %45, %23
  %50 = phi i32 [ %48, %45 ], [ %44, %23 ]
  %51 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %21, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %5, align 4
  %53 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %52, ptr noundef %0, i64 noundef 1, ptr noundef %53, ptr noundef %13, ptr noundef null) #28
  br label %54

54:                                               ; preds = %49, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_move_numa(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !10
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !11

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !12

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 36) #28
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %16, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 53
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %16, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %16, i32 0, i32 3
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %16, i32 0, i32 4
  store i32 %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %16, i32 0, i32 5
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %16, i32 0, i32 6
  store i32 %3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %16, i32 0, i32 7
  store i32 0, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #28
  br label %30

30:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_move_numa(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store ptr null, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  store i32 0, ptr %6, align 4, !annotation !10
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #24, !srcloc !13
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %48, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %5, ptr noundef nonnull %6) #28
  %23 = icmp eq ptr %22, null
  br i1 %23, label %48, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #28
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #28
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %22, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 53
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %22, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %22, i32 0, i32 3
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %22, i32 0, i32 4
  store i32 %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %22, i32 0, i32 5
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %22, i32 0, i32 6
  store i32 %3, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %22, i32 0, i32 7
  store i32 0, ptr %45, align 4
  %46 = load i32, ptr %6, align 4
  %47 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 36, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %14, ptr noundef null) #28
  br label %48

48:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_numa_pair_template(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !10
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !11

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !12

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %15, label %45, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 48) #28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 53
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 3
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 4
  store i32 %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 5
  store i32 0, ptr %28, align 4
  %29 = icmp eq ptr %3, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 6
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %35 = load i32, ptr %34, align 4
  br label %38

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 6
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i32 [ 0, %36 ], [ %35, %30 ]
  %40 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 7
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 8
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 9
  store i32 %4, ptr %42, align 4
  %43 = ashr i32 %4, 31
  %44 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %17, i32 0, i32 10
  store i32 %43, ptr %44, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #28
  br label %45

45:                                               ; preds = %38, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_numa_pair_template(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #28
  store ptr null, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #28
  store i32 0, ptr %7, align 4, !annotation !10
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #24, !srcloc !13
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %6, ptr noundef nonnull %7) #28
  %24 = icmp eq ptr %23, null
  br i1 %24, label %63, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #28
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #28
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 53
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 3
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 4
  store i32 %2, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 5
  store i32 0, ptr %44, align 4
  %45 = icmp eq ptr %3, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 6
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %51 = load i32, ptr %50, align 4
  br label %54

52:                                               ; preds = %25
  %53 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 6
  store i32 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi i32 [ 0, %52 ], [ %51, %46 ]
  %56 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 7
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 8
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 9
  store i32 %4, ptr %58, align 4
  %59 = ashr i32 %4, 31
  %60 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %23, i32 0, i32 10
  store i32 %59, ptr %60, align 4
  %61 = load i32, ptr %7, align 4
  %62 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 52, i32 noundef %61, ptr noundef %0, i64 noundef 1, ptr noundef %62, ptr noundef %15, ptr noundef null) #28
  br label %63

63:                                               ; preds = %54, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_sched_wake_idle_without_ipi(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !10
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !11

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !12

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #28
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_sched_wake_idle_without_ipi, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #28
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_sched_wake_idle_without_ipi(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store ptr null, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store i32 0, ptr %4, align 4, !annotation !10
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #24, !srcloc !13
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #28
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #28
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_sched_wake_idle_without_ipi, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #28
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @raw_spin_rq_lock_nested(ptr noundef %0, i32 %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %0) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @raw_spin_rq_trylock(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !18
  %2 = tail call i32 @_raw_spin_trylock(ptr noundef %0) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !19
  %3 = icmp ne i32 %2, 0
  ret i1 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @raw_spin_rq_unlock(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %2 = load i16, ptr %0, align 4
  %3 = add i16 %2, 1
  store i16 %3, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @double_rq_lock(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rq, ptr %1, i32 0, i32 40
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  %8 = select i1 %7, ptr %0, ptr %1
  %9 = select i1 %7, ptr %1, ptr %0
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %9) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %8) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  br label %12

12:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__task_rq_lock(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %4 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  br label %5

5:                                                ; preds = %41, %2
  %6 = load volatile i32, ptr %4, align 8
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %10) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %11 = load volatile i32, ptr %4, align 8
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %17, label %36, !prof !11

17:                                               ; preds = %5
  %18 = load volatile i32, ptr %3, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %36, label %20, !prof !12

20:                                               ; preds = %17
  %21 = inttoptr i32 %9 to ptr
  %22 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 19
  %23 = load i32, ptr %22, align 32
  %24 = and i32 %23, 3
  store i32 %24, ptr %22, align 32
  %25 = getelementptr inbounds %struct.rq_flags, ptr %1, i32 0, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 33
  %27 = load ptr, ptr %26, align 8
  %28 = icmp ne ptr %27, null
  %29 = icmp ne ptr %27, @balance_push_callback
  %30 = and i1 %28, %29
  %31 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !12

34:                                               ; preds = %20
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %35

35:                                               ; preds = %34, %20
  ret ptr %21

36:                                               ; preds = %17, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %37 = load i16, ptr %10, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %39 = load volatile i32, ptr %3, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %42, label %41, !prof !12

41:                                               ; preds = %42, %36
  br label %5

42:                                               ; preds = %42, %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !24
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #28, !srcloc !25
  %43 = load volatile i32, ptr %3, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %42, label %41, !prof !12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @task_rq_lock(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %5 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  br label %6

6:                                                ; preds = %44, %2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #28
  store i32 %7, ptr %1, align 4
  %8 = load volatile i32, ptr %5, align 8
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @runqueues to i32)
  %12 = inttoptr i32 %11 to ptr
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %12) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %13 = load volatile i32, ptr %5, align 8
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, ptrtoint (ptr @runqueues to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = icmp eq ptr %12, %17
  br i1 %18, label %19, label %38, !prof !11

19:                                               ; preds = %6
  %20 = load volatile i32, ptr %3, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %38, label %22, !prof !12

22:                                               ; preds = %19
  %23 = inttoptr i32 %11 to ptr
  %24 = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 19
  %25 = load i32, ptr %24, align 32
  %26 = and i32 %25, 3
  store i32 %26, ptr %24, align 32
  %27 = getelementptr inbounds %struct.rq_flags, ptr %1, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 33
  %29 = load ptr, ptr %28, align 8
  %30 = icmp ne ptr %29, null
  %31 = icmp ne ptr %29, @balance_push_callback
  %32 = and i1 %30, %31
  %33 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !12

36:                                               ; preds = %22
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %37

37:                                               ; preds = %36, %22
  ret ptr %23

38:                                               ; preds = %19, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %39 = load i16, ptr %12, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %41 = load i32, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %41) #28
  %42 = load volatile i32, ptr %3, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %45, label %44, !prof !12

44:                                               ; preds = %45, %38
  br label %6

45:                                               ; preds = %45, %38
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #28, !srcloc !27
  %46 = load volatile i32, ptr %3, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %45, label %44, !prof !12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_rq_clock(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 32
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %68

6:                                                ; preds = %1
  %7 = load i32, ptr @sysctl_sched_features, align 4
  %8 = and i32 %7, 4096
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = and i32 %3, 4
  %12 = icmp ne i32 %11, 0
  %13 = load i1, ptr @update_rq_clock.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18, !prof !12

16:                                               ; preds = %10
  store i1 true, ptr @update_rq_clock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 9, ptr noundef nonnull @.str.1) #28
  %17 = load i32, ptr %2, align 32
  br label %18

18:                                               ; preds = %16, %10, %6
  %19 = phi i32 [ %3, %10 ], [ %17, %16 ], [ %3, %6 ]
  %20 = or i32 %19, 4
  store i32 %20, ptr %2, align 32
  %21 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %22 = load i32, ptr %21, align 4
  %23 = tail call i64 @sched_clock_cpu(i32 noundef %22) #28
  %24 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 20
  %25 = load i64, ptr %24, align 8
  %26 = sub i64 %23, %25
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %68, label %28

28:                                               ; preds = %18
  store i64 %23, ptr %24, align 8
  %29 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 22
  %30 = load i64, ptr %29, align 64
  %31 = add i64 %30, %26
  store i64 %31, ptr %29, align 64
  %32 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38, !prof !11

38:                                               ; preds = %28
  %39 = load i32, ptr %2, align 32
  %40 = icmp ult i32 %39, 2
  %41 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %46, !prof !12

44:                                               ; preds = %38
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.93) #28
  %45 = load i64, ptr %29, align 64
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i64 [ %31, %38 ], [ %45, %44 ]
  %48 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  store i64 %47, ptr %48, align 8
  br label %68

49:                                               ; preds = %28
  %50 = load i32, ptr %21, align 4
  %51 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, ptrtoint (ptr @cpu_scale to i32)
  %54 = inttoptr i32 %53 to ptr
  %55 = load i32, ptr %54, align 4
  %56 = zext i32 %55 to i64
  %57 = mul i64 %26, %56
  %58 = ashr i64 %57, 10
  %59 = add i32 %52, ptrtoint (ptr @arch_freq_scale to i32)
  %60 = inttoptr i32 %59 to ptr
  %61 = load i32, ptr %60, align 4
  %62 = zext i32 %61 to i64
  %63 = mul i64 %58, %62
  %64 = ashr i64 %63, 10
  %65 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 23
  %66 = load i64, ptr %65, align 8
  %67 = add i64 %64, %66
  store i64 %67, ptr %65, align 8
  br label %68

68:                                               ; preds = %49, %46, %18, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @hrtick_start(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @llvm.smax.i64(i64 %1, i64 10000)
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 57, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i64 %7() #28
  %9 = add i64 %8, %3
  %10 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 58
  store i64 %9, ptr %10, align 64
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #24, !srcloc !13
  %14 = add i32 %13, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 57
  tail call void @hrtimer_start_range_ns(ptr noundef %18, i64 noundef %9, i64 noundef 0, i32 noundef 10) #28
  br label %24

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 56
  %23 = tail call i32 @smp_call_function_single_async(i32 noundef %21, ptr noundef %22) #28
  br label %24

24:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smp_call_function_single_async(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_q_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #28, !srcloc !29
  br label %4

4:                                                ; preds = %4, %2
  %5 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 0, i32 1) #28, !srcloc !30
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = extractvalue { i32, i32 } %5, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24, !prof !11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wake_q_head, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %3, ptr %13, align 4
  store ptr %3, ptr %12, align 4
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #28, !srcloc !29
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #28, !srcloc !31
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18, !prof !12

18:                                               ; preds = %11
  %19 = add i32 %16, 1
  %20 = or i32 %19, %16
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %24, label %22, !prof !11

22:                                               ; preds = %18, %11
  %23 = phi i32 [ 2, %11 ], [ 1, %18 ]
  tail call void @refcount_warn_saturate(ptr noundef %14, i32 noundef %23) #28
  br label %24

24:                                               ; preds = %22, %18, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_q_add_safe(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 109
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !28
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #28, !srcloc !29
  br label %4

4:                                                ; preds = %4, %2
  %5 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %3, i32 0, i32 1) #28, !srcloc !30
  %6 = extractvalue { i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = extractvalue { i32, i32 } %5, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14, !prof !11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.wake_q_head, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %3, ptr %13, align 4
  store ptr %3, ptr %12, align 4
  br label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #28, !srcloc !29
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #28, !srcloc !33
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #28
  br label %23

22:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !34
  tail call void @__put_task_struct(ptr noundef %1) #28
  br label %23

23:                                               ; preds = %22, %21, %19, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_up_q(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, inttoptr (i32 1 to ptr)
  br i1 %3, label %19, label %4

4:                                                ; preds = %17, %1
  %5 = phi ptr [ %7, %17 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -1720
  %7 = load ptr, ptr %5, align 4
  store ptr null, ptr %5, align 8
  %8 = tail call fastcc i32 @try_to_wake_up(ptr noundef %6, i32 noundef 3, i32 noundef 0) #28
  %9 = getelementptr i8, ptr %5, i32 -1176
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #28, !srcloc !29
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #28, !srcloc !33
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = icmp sgt i32 %11, 0
  br i1 %14, label %17, label %15, !prof !11

15:                                               ; preds = %13
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef 3) #28
  br label %17

16:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !34
  tail call void @__put_task_struct(ptr noundef %6) #28
  br label %17

17:                                               ; preds = %16, %15, %13
  %18 = icmp eq ptr %7, inttoptr (i32 1 to ptr)
  br i1 %18, label %19, label %4

19:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wake_up_process(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @try_to_wake_up(ptr noundef %0, i32 noundef 3, i32 noundef 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @resched_curr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @llvm.thread.pointer() #28
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %9, %12
  tail call void @_set_bit(i32 noundef 1, ptr noundef %3) #28
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @smp_send_reschedule(i32 noundef %9) #28
  br label %15

15:                                               ; preds = %14, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_send_reschedule(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @resched_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %5) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %7 = lshr i32 %0, 5
  %8 = getelementptr i32, ptr @__cpu_online_mask, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %0, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = tail call ptr @llvm.thread.pointer() #28
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14, %1
  %20 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 14
  %21 = load ptr, ptr %20, align 4
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 40
  %27 = load i32, ptr %26, align 4
  %28 = tail call ptr @llvm.thread.pointer() #28
  %29 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %27, %30
  tail call void @_set_bit(i32 noundef 1, ptr noundef %21) #28
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  tail call void @smp_send_reschedule(i32 noundef %27) #28
  br label %33

33:                                               ; preds = %32, %25, %19, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %34 = load i16, ptr %5, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #28, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_nohz_timer_target() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = load volatile i32, ptr @housekeeping_overridden, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %8, !prof !12

6:                                                ; preds = %0
  %7 = tail call zeroext i1 @housekeeping_test_cpu(i32 noundef %3, i32 noundef 1) #28
  br i1 %7, label %8, label %26

8:                                                ; preds = %6, %0
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @runqueues to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 15
  %16 = load ptr, ptr %15, align 16
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 7
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %22, %6
  %27 = phi i32 [ -1, %6 ], [ %3, %22 ]
  %28 = tail call ptr @housekeeping_cpumask(i32 noundef 1) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, ptrtoint (ptr @runqueues to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.rq, ptr %32, i32 0, i32 30
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %70, label %36

36:                                               ; preds = %26
  %37 = load i32, ptr @nr_cpu_ids, align 4
  br label %38

38:                                               ; preds = %67, %36
  %39 = phi ptr [ %34, %36 ], [ %68, %67 ]
  %40 = getelementptr inbounds %struct.sched_domain, ptr %39, i32 0, i32 21
  %41 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %40, ptr noundef %28) #29
  %42 = icmp ult i32 %41, %37
  br i1 %42, label %43, label %67

43:                                               ; preds = %46, %38
  %44 = phi i32 [ %47, %46 ], [ %41, %38 ]
  %45 = icmp eq i32 %3, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %63, %43
  %47 = tail call i32 @cpumask_next_and(i32 noundef %44, ptr noundef %40, ptr noundef %28) #29
  %48 = icmp ult i32 %47, %37
  br i1 %48, label %43, label %67

49:                                               ; preds = %43
  %50 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, ptrtoint (ptr @runqueues to i32)
  %53 = inttoptr i32 %52 to ptr
  %54 = getelementptr inbounds %struct.rq, ptr %53, i32 0, i32 14
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.rq, ptr %53, i32 0, i32 15
  %57 = load ptr, ptr %56, align 16
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %49
  %60 = getelementptr inbounds %struct.rq, ptr %53, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.rq, ptr %53, i32 0, i32 7
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %46, label %74

67:                                               ; preds = %46, %38
  %68 = load ptr, ptr %39, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %38

70:                                               ; preds = %67, %26
  %71 = icmp eq i32 %27, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = tail call i32 @housekeeping_any_cpu(i32 noundef 1) #28
  br label %74

74:                                               ; preds = %72, %70, %63, %59, %49
  %75 = phi i32 [ %73, %72 ], [ %27, %70 ], [ %44, %63 ], [ %44, %49 ], [ %44, %59 ]
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %76

76:                                               ; preds = %74, %22, %18, %8
  %77 = phi i32 [ %75, %74 ], [ %3, %22 ], [ %3, %8 ], [ %3, %18 ]
  ret i32 %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @idle_cpu(i32 noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 16
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %11, %1
  %21 = phi i32 [ 0, %1 ], [ 0, %11 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @housekeeping_any_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_up_nohz_cpu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = lshr i32 %0, 5
  %3 = getelementptr i32, ptr @__cpu_online_mask, i32 %2
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %0, 31
  %6 = shl nuw i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @llvm.thread.pointer() #28
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, ptrtoint (ptr @runqueues to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 15
  %20 = load ptr, ptr %19, align 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %20) #28
  tail call void @smp_send_reschedule(i32 noundef %0) #28
  br label %21

21:                                               ; preds = %14, %9, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @sched_task_on_rq(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_wchan(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @llvm.thread.pointer() #28
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #28
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !39
  %10 = and i32 %9, -513
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = tail call i32 @__get_wchan(ptr noundef nonnull %0) #28
  br label %18

18:                                               ; preds = %16, %12, %6
  %19 = phi i32 [ 0, %12 ], [ %17, %16 ], [ 0, %6 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %20 = load i16, ptr %7, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #28, !srcloc !40
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !41
  br label %22

22:                                               ; preds = %18, %3, %1
  %23 = phi i32 [ %19, %18 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_wchan(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @activate_task(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @update_rq_clock(ptr noundef %0) #28
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %0, ptr noundef %1, i32 noundef %2) #28
  %11 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  store i32 1, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @deactivate_task(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = shl i32 %2, 1
  %5 = and i32 %4, 2
  %6 = xor i32 %5, 2
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  store i32 %6, ptr %7, align 4
  %8 = and i32 %2, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @update_rq_clock(ptr noundef %0) #28
  br label %11

11:                                               ; preds = %10, %3
  %12 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 22
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.sched_class, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0, ptr noundef %1, i32 noundef %2) #28
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @task_curr(ptr noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @check_preempt_curr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 22
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %5, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.sched_class, ptr %5, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  tail call void %13(ptr noundef %0, ptr noundef %1, i32 noundef %2) #28
  br label %28

14:                                               ; preds = %3
  %15 = icmp ugt ptr %5, %9
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = load volatile i32, ptr %7, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @llvm.thread.pointer() #28
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %22, %25
  tail call void @_set_bit(i32 noundef 1, ptr noundef %7) #28
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @smp_send_reschedule(i32 noundef %22) #28
  br label %28

28:                                               ; preds = %27, %20, %16, %14, %11
  %29 = load ptr, ptr %6, align 4
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load volatile i32, ptr %29, align 4
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %39 = load i32, ptr %38, align 32
  %40 = or i32 %39, 1
  store i32 %40, ptr %38, align 32
  br label %41

41:                                               ; preds = %37, %33, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @migrate_disable() #0 {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 31
  %3 = load i16, ptr %2, align 8
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = add i16 %3, 1
  store i16 %6, ptr %2, align 8
  br label %16

7:                                                ; preds = %0
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !42
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #24, !srcloc !13
  %11 = add i32 %10, ptrtoint (ptr @runqueues to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 60
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  store i16 1, ptr %2, align 8
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !43
  br label %16

16:                                               ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @migrate_enable() #0 {
  %1 = alloca %struct.rq_flags, align 8
  %2 = tail call ptr @llvm.thread.pointer() #28
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 31
  %4 = load i16, ptr %3, align 8
  %5 = icmp ugt i16 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = add i16 %4, -1
  store i16 %7, ptr %3, align 8
  br label %32

8:                                                ; preds = %0
  %9 = icmp eq i16 %4, 0
  %10 = load i1, ptr @migrate_enable.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %8
  store i1 true, ptr @migrate_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2187, i32 noundef 9, ptr noundef null) #28
  br label %14

14:                                               ; preds = %13, %8
  br i1 %9, label %32, label %15

15:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !44
  %16 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 27
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 29
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  store i64 0, ptr %1, align 8, !annotation !10
  %21 = call ptr @task_rq_lock(ptr noundef %2, ptr noundef nonnull %1) #28
  %22 = call fastcc i32 @__set_cpus_allowed_ptr_locked(ptr noundef %2, ptr noundef %18, i32 noundef 4, ptr noundef %21, ptr noundef nonnull %1) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  br label %23

23:                                               ; preds = %20, %15
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !45
  store i16 0, ptr %3, align 8
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #24, !srcloc !13
  %27 = add i32 %26, ptrtoint (ptr @runqueues to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.rq, ptr %28, i32 0, i32 60
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -1
  store i32 %31, ptr %29, align 4
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !46
  br label %32

32:                                               ; preds = %23, %14, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @push_cpu_stop(ptr noundef %0) #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #24, !srcloc !13
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %6) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %8 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %9 = load volatile i32, ptr %8, align 8
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @runqueues to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq ptr %13, %6
  br i1 %14, label %15, label %66

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %17 = load i16, ptr %16, align 8
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 32
  %20 = load i16, ptr %19, align 2
  br i1 %18, label %23, label %21

21:                                               ; preds = %15
  %22 = or i16 %20, 1
  store i16 %22, ptr %19, align 2
  br label %66

23:                                               ; preds = %15
  %24 = and i16 %20, -2
  store i16 %24, ptr %19, align 2
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.sched_class, ptr %26, i32 0, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %66, label %30

30:                                               ; preds = %23
  %31 = tail call ptr %28(ptr noundef %0, ptr noundef %6) #28
  %32 = icmp eq ptr %31, null
  br i1 %32, label %66, label %33

33:                                               ; preds = %30
  %34 = load volatile i32, ptr %8, align 8
  %35 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, ptrtoint (ptr @runqueues to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = icmp eq ptr %38, %6
  br i1 %39, label %40, label %61

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  store i32 2, ptr %41, align 4
  tail call void @update_rq_clock(ptr noundef %6) #28
  %42 = load ptr, ptr %25, align 8
  %43 = getelementptr inbounds %struct.sched_class, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %6, ptr noundef %0, i32 noundef 0) #28
  %45 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 40
  %46 = load i32, ptr %45, align 4
  tail call void @set_task_cpu(ptr noundef %0, i32 noundef %46)
  tail call void @update_rq_clock(ptr noundef nonnull %31) #28
  %47 = load ptr, ptr %25, align 8
  %48 = load ptr, ptr %47, align 4
  tail call void %48(ptr noundef nonnull %31, ptr noundef %0, i32 noundef 0) #28
  store i32 1, ptr %41, align 4
  %49 = getelementptr inbounds %struct.rq, ptr %31, i32 0, i32 14
  %50 = load ptr, ptr %49, align 4
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load i32, ptr %45, align 4
  %56 = tail call ptr @llvm.thread.pointer() #28
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %55, %58
  tail call void @_set_bit(i32 noundef 1, ptr noundef %50) #28
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  tail call void @smp_send_reschedule(i32 noundef %55) #28
  br label %61

61:                                               ; preds = %60, %54, %40, %33
  %62 = icmp eq ptr %31, %6
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %64 = load i16, ptr %31, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  br label %66

66:                                               ; preds = %63, %61, %30, %23, %21, %1
  %67 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 61
  store i32 0, ptr %67, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %68 = load i16, ptr %6, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %70 = load i16, ptr %7, align 4
  %71 = add i16 %70, 1
  store i16 %71, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #28, !srcloc !40
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !41
  %72 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %72) #28, !srcloc !29
  %73 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %72, ptr %72, i32 1, ptr elementtype(i32) %72) #28, !srcloc !33
  %74 = extractvalue { i32, i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = icmp sgt i32 %74, 0
  br i1 %77, label %80, label %78, !prof !11

78:                                               ; preds = %76
  tail call void @refcount_warn_saturate(ptr noundef %72, i32 noundef 3) #28
  br label %80

79:                                               ; preds = %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !34
  tail call void @__put_task_struct(ptr noundef %0) #28
  br label %80

80:                                               ; preds = %79, %78, %76
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_task_cpu(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 8
  %5 = and i32 %4, -513
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = load i1, ptr @set_task_cpu.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %30, label %33, !prof !12

14:                                               ; preds = %2
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, @fair_sched_class
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load volatile i32, ptr %21, align 4
  %26 = icmp ne i32 %25, 2
  %27 = load i1, ptr @set_task_cpu.__already_done.3, align 1
  %28 = xor i1 %27, true
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %33, !prof !12

30:                                               ; preds = %24, %7
  %31 = phi ptr [ @set_task_cpu.__already_done, %7 ], [ @set_task_cpu.__already_done.3, %24 ]
  %32 = phi i32 [ 3035, %7 ], [ 3044, %24 ]
  store i1 true, ptr %31, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %32, i32 noundef 9, ptr noundef null) #28
  br label %33

33:                                               ; preds = %30, %24, %20, %16, %14, %7
  %34 = lshr i32 %1, 5
  %35 = getelementptr i32, ptr @__cpu_online_mask, i32 %34
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %1, 31
  %38 = shl nuw i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = load i1, ptr @set_task_cpu.__already_done.4, align 1
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %44, label %43, !prof !11

43:                                               ; preds = %33
  store i1 true, ptr @set_task_cpu.__already_done.4, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3063, i32 noundef 9, ptr noundef null) #28
  br label %44

44:                                               ; preds = %43, %33
  %45 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %46 = load i16, ptr %45, align 8
  %47 = icmp ne i16 %46, 0
  %48 = load i1, ptr @set_task_cpu.__already_done.5, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !12

51:                                               ; preds = %44
  store i1 true, ptr @set_task_cpu.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3065, i32 noundef 9, ptr noundef null) #28
  br label %52

52:                                               ; preds = %51, %44
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_migrate_task, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = tail call ptr @llvm.thread.pointer() #28
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !47
  %67 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_migrate_task, i32 0, i32 7), align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %74, %69 ], [ %67, %66 ]
  %71 = load volatile ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tracepoint_func, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %71(ptr noundef %73, ptr noundef %0, i32 noundef %1) #28
  %74 = getelementptr %struct.tracepoint_func, ptr %70, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %69

77:                                               ; preds = %69, %66
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !48
  br label %78

78:                                               ; preds = %77, %55, %52
  %79 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %80 = load volatile i32, ptr %79, align 8
  %81 = icmp eq i32 %80, %1
  br i1 %81, label %107, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.sched_class, ptr %84, i32 0, i32 11
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  tail call void %86(ptr noundef %0, i32 noundef %1) #28
  br label %89

89:                                               ; preds = %88, %82
  %90 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 8
  %91 = load i64, ptr %90, align 64
  %92 = add i64 %91, 1
  store i64 %92, ptr %90, align 64
  %93 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 135
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, 4
  store i32 %95, ptr %93, align 4
  %96 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 133
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #28
  br label %100

100:                                              ; preds = %99, %89
  %101 = load volatile i32, ptr getelementptr inbounds ([12 x %struct.static_key], ptr @perf_swevent_enabled, i32 0, i32 4), align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 47
  %105 = load i8, ptr %104, align 4
  %106 = or i8 %105, 4
  store i8 %106, ptr %104, align 4
  br label %107

107:                                              ; preds = %103, %100, %78
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #28, !srcloc !49
  store volatile i32 %1, ptr %79, align 8
  %108 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 12
  store i32 %1, ptr %108, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_cpus_allowed_common(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  store ptr %1, ptr %7, align 8
  br label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 29
  %10 = load i32, ptr %1, align 4
  store i32 %10, ptr %9, align 4
  %11 = load i32, ptr %1, align 4
  %12 = and i32 %11, 65535
  %13 = tail call i32 @__sw_hweight32(i32 noundef %12) #28
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 26
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_set_cpus_allowed(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @__do_set_cpus_allowed(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__do_set_cpus_allowed(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %5 = load volatile i32, ptr %4, align 8
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = and i32 %2, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = load i1, ptr @__do_set_cpus_allowed.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !12

19:                                               ; preds = %12
  store i1 true, ptr @__do_set_cpus_allowed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2506, i32 noundef 9, ptr noundef nonnull @.str.95) #28
  br label %20

20:                                               ; preds = %19, %12, %3
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 14
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %0
  br i1 %23, label %27, label %32

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.sched_class, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %9, ptr noundef %0, i32 noundef 10) #28
  br label %32

32:                                               ; preds = %27, %20
  br i1 %26, label %33, label %45

33:                                               ; preds = %32
  %34 = load ptr, ptr %24, align 4
  %35 = icmp ne ptr %34, %0
  %36 = load i1, ptr @put_prev_task.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !12

39:                                               ; preds = %33
  store i1 true, ptr @put_prev_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 2190, i32 noundef 9, ptr noundef null) #28
  br label %40

40:                                               ; preds = %39, %33
  %41 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.sched_class, ptr %42, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %9, ptr noundef %0) #28
  br label %45

45:                                               ; preds = %40, %32
  %46 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.sched_class, ptr %47, i32 0, i32 13
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %0, ptr noundef %1, i32 noundef %2) #28
  br i1 %23, label %50, label %53

50:                                               ; preds = %45
  %51 = load ptr, ptr %46, align 8
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %9, ptr noundef %0, i32 noundef 10) #28
  br label %53

53:                                               ; preds = %50, %45
  br i1 %26, label %54, label %58

54:                                               ; preds = %53
  %55 = load ptr, ptr %46, align 8
  %56 = getelementptr inbounds %struct.sched_class, ptr %55, i32 0, i32 7
  %57 = load ptr, ptr %56, align 4
  tail call void %57(ptr noundef %9, ptr noundef %0, i1 noundef zeroext false) #28
  br label %58

58:                                               ; preds = %54, %53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dup_user_cpus_ptr(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 28
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 4) #30
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 28
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 4
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %9, align 8
  br label %15

15:                                               ; preds = %12, %7, %3
  %16 = phi i32 [ 0, %12 ], [ 0, %3 ], [ -12, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @release_user_cpus_ptr(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_cpus_allowed_ptr(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rq_flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !annotation !10
  %4 = call ptr @task_rq_lock(ptr noundef %0, ptr noundef nonnull %3) #28
  %5 = call fastcc i32 @__set_cpus_allowed_ptr_locked(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %4, ptr noundef nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @force_compatible_cpus_allowed_ptr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rq_flags, align 8
  %3 = alloca %struct.rq_flags, align 8
  %4 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store i32 0, ptr %4, align 4, !annotation !10
  tail call void @cpus_read_lock() #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !annotation !10
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 28
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 4) #30
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %8, %1
  %13 = phi ptr [ null, %1 ], [ %10, %8 ]
  %14 = call ptr @task_rq_lock(ptr noundef %0, ptr noundef nonnull %3) #28
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %16 = load i32, ptr %15, align 64
  %17 = icmp ne i32 %16, 6
  %18 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %19 = icmp slt i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 29
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr @__cpu_possible_mask, align 4
  %25 = and i32 %23, 65535
  %26 = and i32 %25, %24
  store i32 %26, ptr %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = icmp eq ptr %13, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %32 = load ptr, ptr %31, align 8
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr %13, align 8
  store ptr %13, ptr %5, align 4
  br label %40

34:                                               ; preds = %21, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %35 = load i16, ptr %14, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %14, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %37 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %38 = load i32, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #28
  tail call void @kfree(ptr noundef %13) #28
  br label %39

39:                                               ; preds = %34, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  br label %43

40:                                               ; preds = %30, %28
  %41 = call fastcc i32 @__set_cpus_allowed_ptr_locked(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0, ptr noundef %14, ptr noundef nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40, %39
  %44 = load i32, ptr @__cpu_possible_mask, align 4
  store i32 %44, ptr %4, align 4
  %45 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.force_compatible_cpus_allowed_ptr) #28
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 85
  %51 = load i32, ptr @nr_cpu_ids, align 4
  %52 = call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.2, i32 noundef %49, ptr noundef %50, i32 noundef %51, ptr noundef nonnull %4) #31
  br label %53

53:                                               ; preds = %47, %43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store i64 0, ptr %2, align 8, !annotation !10
  %54 = call ptr @task_rq_lock(ptr noundef %0, ptr noundef nonnull %2) #28
  %55 = call fastcc i32 @__set_cpus_allowed_ptr_locked(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0, ptr noundef %54, ptr noundef nonnull %2) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57, !prof !11

57:                                               ; preds = %53
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2989, i32 noundef 9, ptr noundef null) #28
  br label %58

58:                                               ; preds = %57, %53, %40
  call void @cpus_read_unlock() #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @relax_compatible_cpus_allowed_ptr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 28
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @__sched_setaffinity(ptr noundef %0, ptr noundef nonnull %3)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #28
  %11 = load ptr, ptr %2, align 4
  store ptr null, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #28
  tail call void @kfree(ptr noundef %11) #28
  br label %12

12:                                               ; preds = %8, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__sched_setaffinity(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.rq_flags, align 8
  %4 = alloca [1 x %struct.cpumask], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  %5 = load i32, ptr @__cpu_possible_mask, align 4
  %6 = load i32, ptr %1, align 4
  %7 = and i32 %5, 65535
  %8 = and i32 %7, %6
  store i32 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %10 = load i32, ptr %9, align 64
  %11 = icmp ne i32 %10, 6
  %12 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %13 = icmp slt i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %16 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %17 = load volatile i32, ptr %16, align 8
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, ptrtoint (ptr @runqueues to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 29
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.root_domain, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = xor i32 %8, -1
  %27 = and i32 %25, 65535
  %28 = and i32 %27, %26
  %29 = icmp eq i32 %28, 0
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br i1 %29, label %30, label %45

30:                                               ; preds = %15, %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !annotation !10
  %31 = call ptr @task_rq_lock(ptr noundef %0, ptr noundef nonnull %3) #28
  %32 = call fastcc i32 @__set_cpus_allowed_ptr_locked(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 9, ptr noundef %31, ptr noundef nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %41, %30
  %35 = load i32, ptr @__cpu_possible_mask, align 4
  %36 = load i32, ptr %4, align 4
  %37 = and i32 %35, 65535
  %38 = xor i32 %37, 65535
  %39 = and i32 %38, %36
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  store i32 %35, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !annotation !10
  %42 = call ptr @task_rq_lock(ptr noundef %0, ptr noundef nonnull %3) #28
  %43 = call fastcc i32 @__set_cpus_allowed_ptr_locked(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 9, ptr noundef %42, ptr noundef nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %34, label %45

45:                                               ; preds = %41, %34, %30, %15
  %46 = phi i32 [ -16, %15 ], [ %32, %30 ], [ %43, %41 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_task_inactive(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rq_flags, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !annotation !10
  %5 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 74
  %11 = getelementptr inbounds %struct.rq_flags, ptr %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  br label %13

13:                                               ; preds = %75, %2
  %14 = load volatile i32, ptr %5, align 8
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %21, %13
  br i1 %7, label %21, label %18

18:                                               ; preds = %17
  %19 = load volatile i32, ptr %8, align 8
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %81, !prof !11

21:                                               ; preds = %18, %17
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !50
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #28, !srcloc !51
  %22 = load i32, ptr %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %17

24:                                               ; preds = %21, %13
  %25 = call ptr @task_rq_lock(ptr noundef %0, ptr noundef nonnull %3)
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wait_task, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = tail call ptr @llvm.thread.pointer() #28
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %28
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !52
  %40 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wait_task, i32 0, i32 7), align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %42, %39
  %43 = phi ptr [ %47, %42 ], [ %40, %39 ]
  %44 = load volatile ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tracepoint_func, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  call void %44(ptr noundef %46, ptr noundef %0) #28
  %47 = getelementptr %struct.tracepoint_func, ptr %43, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %42

50:                                               ; preds = %42, %39
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !53
  br label %51

51:                                               ; preds = %50, %28, %24
  %52 = load i32, ptr %6, align 4
  %53 = load i32, ptr %9, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %7, label %58, label %55

55:                                               ; preds = %51
  %56 = load volatile i32, ptr %8, align 8
  %57 = icmp eq i32 %56, %1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %51
  %59 = load i32, ptr %10, align 8
  %60 = or i32 %59, -2147483648
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i32 [ %60, %58 ], [ 0, %55 ]
  %63 = getelementptr inbounds %struct.rq, ptr %25, i32 0, i32 19
  %64 = load i32, ptr %63, align 32
  %65 = icmp ugt i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 4, ptr %11, align 4
  br label %67

67:                                               ; preds = %66, %61
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %68 = load i16, ptr %25, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %25, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %70 = load i32, ptr %3, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %70) #28
  %71 = icmp eq i32 %62, 0
  br i1 %71, label %81, label %72, !prof !12

72:                                               ; preds = %67
  %73 = icmp eq i32 %52, 0
  br i1 %73, label %76, label %74, !prof !11

74:                                               ; preds = %72
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !54
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #28, !srcloc !55
  br label %75

75:                                               ; preds = %77, %74
  br label %13

76:                                               ; preds = %72
  br i1 %54, label %77, label %81, !prof !12

77:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  store i64 10000000, ptr %4, align 8
  %78 = tail call ptr @llvm.thread.pointer() #28
  %79 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 1
  store volatile i32 2, ptr %79, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !56
  %80 = call i32 @schedule_hrtimeout(ptr noundef nonnull %4, i32 noundef 9) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  br label %75

81:                                               ; preds = %76, %67, %18
  %82 = phi i32 [ 0, %18 ], [ 0, %67 ], [ %62, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i32 %82
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @task_rq_unlock(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 32
  %6 = icmp ugt i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  store i32 4, ptr %8, align 4
  br label %9

9:                                                ; preds = %7, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %10 = load i16, ptr %0, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %12 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 108
  %13 = load i32, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kick_process(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !57
  %2 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 8
  %4 = tail call ptr @llvm.thread.pointer() #28
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %2, align 8
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @runqueues to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.rq, ptr %13, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  tail call void @smp_send_reschedule(i32 noundef %3) #28
  br label %18

18:                                               ; preds = %17, %8, %1
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_set_stop_task(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.sched_attr, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 16
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #28
  %12 = getelementptr inbounds %struct.sched_attr, ptr %3, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false) #28
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.sched_attr, ptr %3, i32 0, i32 3
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 15
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -120
  store i32 %16, ptr %13, align 8
  %17 = getelementptr inbounds %struct.sched_attr, ptr %3, i32 0, i32 4
  store i32 99, ptr %17, align 4
  %18 = call fastcc i32 @__sched_setscheduler(ptr noundef nonnull %1, ptr noundef nonnull %3, i1 noundef zeroext false, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #28
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 22
  store ptr @stop_sched_class, ptr %19, align 8
  %20 = load i32, ptr %4, align 4
  %21 = add i32 %20, ptrtoint (ptr @runqueues to i32)
  %22 = inttoptr i32 %21 to ptr
  br label %23

23:                                               ; preds = %11, %2
  %24 = phi ptr [ %22, %11 ], [ %7, %2 ]
  %25 = getelementptr inbounds %struct.rq, ptr %24, i32 0, i32 16
  store ptr %1, ptr %25, align 4
  %26 = icmp eq ptr %9, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 22
  store ptr @rt_sched_class, ptr %28, align 8
  br label %29

29:                                               ; preds = %27, %23
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_setscheduler_nocheck(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.sched_attr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #28
  %5 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 3
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -120
  store i32 %9, ptr %6, align 8
  %10 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %2, align 4
  store i32 %11, ptr %10, align 4
  %12 = icmp eq i32 %1, -1
  %13 = and i32 %1, 1073741824
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 2
  store i64 1, ptr %17, align 8
  %18 = and i32 %1, -1073741825
  store i32 %18, ptr %5, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = call fastcc i32 @__sched_setscheduler(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext false, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #28
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_ttwu_pending(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rq_flags, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #24, !srcloc !13
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %8 = icmp eq ptr %0, null
  br i1 %8, label %101, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 7
  store volatile i32 0, ptr %10, align 8
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %7) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  store i32 %11, ptr %2, align 8
  %12 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 19
  %13 = load i32, ptr %12, align 32
  %14 = and i32 %13, 3
  store i32 %14, ptr %12, align 32
  %15 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 33
  %17 = load ptr, ptr %16, align 8
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %17, @balance_push_callback
  %20 = and i1 %18, %19
  %21 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !12

24:                                               ; preds = %9
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %25

25:                                               ; preds = %24, %9
  tail call void @update_rq_clock(ptr noundef %7)
  %26 = getelementptr i8, ptr %0, i32 -560
  %27 = icmp eq ptr %26, inttoptr (i32 -560 to ptr)
  br i1 %27, label %97, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 40
  %30 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 13
  br label %31

31:                                               ; preds = %89, %28
  %32 = phi ptr [ %26, %28 ], [ %95, %89 ]
  %33 = phi ptr [ %0, %28 ], [ %34, %89 ]
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr i8, ptr %33, i32 -4
  %36 = load i32, ptr %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = load i1, ptr @sched_ttwu_pending.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !12

41:                                               ; preds = %31
  store i1 true, ptr @sched_ttwu_pending.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3683, i32 noundef 9, ptr noundef null) #28
  br label %42

42:                                               ; preds = %41, %31
  br i1 %37, label %43, label %50

43:                                               ; preds = %42
  %44 = load volatile i32, ptr %35, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %46, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !59
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #28, !srcloc !60
  %47 = load volatile i32, ptr %35, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %46

49:                                               ; preds = %46, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !61
  br label %50

50:                                               ; preds = %49, %42
  %51 = getelementptr i8, ptr %33, i32 -552
  %52 = load volatile i32, ptr %51, align 8
  %53 = load i32, ptr %29, align 4
  %54 = icmp ne i32 %52, %53
  %55 = load i1, ptr @sched_ttwu_pending.__already_done.6, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !12

58:                                               ; preds = %50
  store i1 true, ptr @sched_ttwu_pending.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3686, i32 noundef 9, ptr noundef null) #28
  br label %59

59:                                               ; preds = %58, %50
  br i1 %54, label %60, label %62

60:                                               ; preds = %59
  %61 = load i32, ptr %29, align 4
  tail call void @set_task_cpu(ptr noundef %32, i32 noundef %61)
  br label %62

62:                                               ; preds = %60, %59
  %63 = getelementptr i8, ptr %33, i32 680
  %64 = load i8, ptr %63, align 8
  %65 = shl i8 %64, 5
  %66 = and i8 %65, 32
  %67 = zext i8 %66 to i32
  %68 = getelementptr i8, ptr %33, i32 676
  %69 = load i8, ptr %68, align 4
  %70 = and i8 %69, 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %62
  %73 = load i32, ptr %30, align 8
  %74 = add i32 %73, -1
  store i32 %74, ptr %30, align 8
  br label %75

75:                                               ; preds = %72, %62
  %76 = icmp eq i8 %66, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %75
  %78 = load i8, ptr %63, align 8
  %79 = and i8 %78, 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load volatile i32, ptr %51, align 8
  %83 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %82
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, ptrtoint (ptr @runqueues to i32)
  %86 = inttoptr i32 %85 to ptr
  %87 = getelementptr inbounds %struct.rq, ptr %86, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %87) #28, !srcloc !29
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %87, ptr %87, i32 1, ptr elementtype(i32) %87) #28, !srcloc !62
  br label %89

89:                                               ; preds = %81, %77, %75
  %90 = phi i32 [ 9, %81 ], [ 9, %77 ], [ 73, %75 ]
  %91 = getelementptr i8, ptr %33, i32 488
  %92 = load ptr, ptr %91, align 8
  %93 = load ptr, ptr %92, align 4
  tail call void %93(ptr noundef %7, ptr noundef %32, i32 noundef %90) #28
  %94 = getelementptr i8, ptr %33, i32 28
  store i32 1, ptr %94, align 4
  call fastcc void @ttwu_do_wakeup(ptr noundef %7, ptr noundef %32, i32 noundef %67, ptr noundef nonnull %2) #28
  %95 = getelementptr i8, ptr %34, i32 -560
  %96 = icmp eq ptr %95, inttoptr (i32 -560 to ptr)
  br i1 %96, label %97, label %31

97:                                               ; preds = %89, %25
  %98 = load i32, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %99 = load i16, ptr %7, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %98) #28, !srcloc !36
  br label %101

101:                                              ; preds = %97, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @send_call_function_single_ipi(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @arch_send_call_function_single_ipi(i32 noundef %0) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_call_function_single_ipi(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_up_if_idle(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 14
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %1
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %5) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %14 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 19
  %15 = load i32, ptr %14, align 32
  %16 = and i32 %15, 3
  store i32 %16, ptr %14, align 32
  %17 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 33
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  %20 = icmp ne ptr %18, @balance_push_callback
  %21 = and i1 %19, %20
  %22 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !12

25:                                               ; preds = %12
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %26

26:                                               ; preds = %25, %12
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load volatile i32, ptr %27, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 40
  %38 = load i32, ptr %37, align 4
  %39 = tail call ptr @llvm.thread.pointer() #28
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %38, %41
  tail call void @_set_bit(i32 noundef 1, ptr noundef %27) #28
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  tail call void @smp_send_reschedule(i32 noundef %38) #28
  br label %44

44:                                               ; preds = %43, %36, %32, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %45 = load i16, ptr %5, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #28, !srcloc !36
  br label %47

47:                                               ; preds = %44, %1
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpus_share_cache(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, ptrtoint (ptr @sd_llc_id to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @sd_llc_id to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %9, %14
  br label %16

16:                                               ; preds = %4, %2
  %17 = phi i1 [ %15, %4 ], [ true, %2 ]
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @task_call_func(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.rq_flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  store i64 0, ptr %4, align 8, !annotation !10
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #28
  store i32 %6, ptr %4, align 8
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %8 = load volatile i32, ptr %7, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !63
  %9 = and i32 %8, -513
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #28
  br label %24

17:                                               ; preds = %11, %3
  %18 = call ptr @__task_rq_lock(ptr noundef %0, ptr noundef nonnull %4)
  %19 = tail call i32 %1(ptr noundef %0, ptr noundef %2) #28
  %20 = icmp eq ptr %18, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %22 = load i16, ptr %18, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  br label %24

24:                                               ; preds = %21, %17, %15
  %25 = phi i32 [ %16, %15 ], [ %19, %17 ], [ %19, %21 ]
  %26 = load i32, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %26) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @try_to_wake_up(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.rq_flags, align 8
  %5 = alloca %struct.rq_flags, align 8
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !64
  %6 = tail call ptr @llvm.thread.pointer() #28
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %63

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 8
  %11 = and i32 %10, %1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %260, label %13

13:                                               ; preds = %8
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_waking, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = lshr i32 %18, 5
  %20 = getelementptr i32, ptr @__cpu_online_mask, i32 %19
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %18, 31
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !65
  %27 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_waking, i32 0, i32 7), align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %29, %26
  %30 = phi ptr [ %34, %29 ], [ %27, %26 ]
  %31 = load volatile ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.tracepoint_func, ptr %30, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  tail call void %31(ptr noundef %33, ptr noundef %0) #28
  %34 = getelementptr %struct.tracepoint_func, ptr %30, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29

37:                                               ; preds = %29, %26
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !66
  br label %38

38:                                               ; preds = %37, %16, %13
  store volatile i32 0, ptr %9, align 8
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wakeup, i32 0, i32 1), align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %257

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %257, label %51

51:                                               ; preds = %41
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !67
  %52 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wakeup, i32 0, i32 7), align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %59, %54 ], [ %52, %51 ]
  %56 = load volatile ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tracepoint_func, ptr %55, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void %56(ptr noundef %58, ptr noundef %0) #28
  %59 = getelementptr %struct.tracepoint_func, ptr %55, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54

62:                                               ; preds = %54, %51
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !68
  br label %257

63:                                               ; preds = %3
  %64 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #28
  %66 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %67 = load volatile i32, ptr %66, align 8
  %68 = and i32 %67, %1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %256, label %70

70:                                               ; preds = %63
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_waking, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !65
  %84 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_waking, i32 0, i32 7), align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %86, %83
  %87 = phi ptr [ %91, %86 ], [ %84, %83 ]
  %88 = load volatile ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.tracepoint_func, ptr %87, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void %88(ptr noundef %90, ptr noundef %0) #28
  %91 = getelementptr %struct.tracepoint_func, ptr %87, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %86

94:                                               ; preds = %86, %83
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !66
  br label %95

95:                                               ; preds = %94, %73, %70
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !69
  %96 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %97 = load volatile i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  store i64 0, ptr %5, align 8, !annotation !10
  %100 = call ptr @__task_rq_lock(ptr noundef %0, ptr noundef nonnull %5) #28
  %101 = load i32, ptr %96, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  tail call void @update_rq_clock(ptr noundef %100) #28
  call fastcc void @ttwu_do_wakeup(ptr noundef %100, ptr noundef %0, i32 noundef %2, ptr noundef nonnull %5) #28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %104 = load i16, ptr %100, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  br label %255

106:                                              ; preds = %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %107 = load i16, ptr %100, align 4
  %108 = add i16 %107, 1
  store i16 %108, ptr %100, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  br label %109

109:                                              ; preds = %106, %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !70
  store volatile i32 512, ptr %66, align 8
  %110 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  %111 = load volatile i32, ptr %110, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !71
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %115 = load volatile i32, ptr %114, align 8
  %116 = or i32 %2, 64
  %117 = tail call fastcc zeroext i1 @ttwu_queue_wakelist(ptr noundef %0, i32 noundef %115, i32 noundef %116)
  br i1 %117, label %255, label %118

118:                                              ; preds = %113, %109
  %119 = load volatile i32, ptr %110, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %121, %118
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !72
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #28, !srcloc !73
  %122 = load volatile i32, ptr %110, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %121

124:                                              ; preds = %121, %118
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !74
  %125 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 12
  %126 = load i32, ptr %125, align 8
  %127 = or i32 %2, 8
  %128 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 26
  %129 = load i32, ptr %128, align 4
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %133 = load i16, ptr %132, align 8
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %137 = load ptr, ptr %136, align 8
  %138 = getelementptr inbounds %struct.sched_class, ptr %137, i32 0, i32 9
  %139 = load ptr, ptr %138, align 4
  %140 = tail call i32 %139(ptr noundef %0, i32 noundef %126, i32 noundef %127) #28
  br label %145

141:                                              ; preds = %131, %124
  %142 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %143 = load ptr, ptr %142, align 8
  %144 = tail call i32 @_find_first_bit_le(ptr noundef %143, i32 noundef 16) #28
  br label %145

145:                                              ; preds = %141, %135
  %146 = phi i32 [ %144, %141 ], [ %140, %135 ]
  %147 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %148 = load ptr, ptr %147, align 8
  %149 = lshr i32 %146, 5
  %150 = getelementptr i32, ptr %148, i32 %149
  %151 = load volatile i32, ptr %150, align 4
  %152 = and i32 %146, 31
  %153 = shl nuw i32 1, %152
  %154 = and i32 %151, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %178, label %156, !prof !75

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %158 = load i16, ptr %157, align 8
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 2097152
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %160
  %166 = tail call zeroext i1 @kthread_is_per_cpu(ptr noundef %0) #28
  br i1 %166, label %172, label %167

167:                                              ; preds = %165
  %168 = getelementptr i32, ptr @__cpu_dying_mask, i32 %149
  %169 = load volatile i32, ptr %168, align 4
  %170 = and i32 %169, %153
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %178, !prof !76

172:                                              ; preds = %167, %165, %160, %156
  %173 = phi ptr [ @__cpu_online_mask, %156 ], [ @__cpu_active_mask, %160 ], [ @__cpu_online_mask, %165 ], [ @__cpu_online_mask, %167 ]
  %174 = getelementptr i32, ptr %173, i32 %149
  %175 = load volatile i32, ptr %174, align 4
  %176 = and i32 %175, %153
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182, !prof !12

178:                                              ; preds = %172, %167, %145
  %179 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %180 = load volatile i32, ptr %179, align 8
  %181 = tail call fastcc i32 @select_fallback_rq(i32 noundef %180, ptr noundef %0) #28
  br label %182

182:                                              ; preds = %178, %172
  %183 = phi i32 [ %181, %178 ], [ %146, %172 ]
  %184 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %185 = load volatile i32, ptr %184, align 8
  %186 = icmp eq i32 %185, %183
  br i1 %186, label %202, label %187

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49
  %189 = load i8, ptr %188, align 8
  %190 = and i8 %189, 4
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %187
  %193 = load volatile i32, ptr %184, align 8
  %194 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %193
  %195 = load i32, ptr %194, align 4
  %196 = add i32 %195, ptrtoint (ptr @runqueues to i32)
  %197 = inttoptr i32 %196 to ptr
  %198 = getelementptr inbounds %struct.rq, ptr %197, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %198) #28, !srcloc !29
  %199 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %198, ptr %198, i32 1, ptr elementtype(i32) %198) #28, !srcloc !62
  br label %200

200:                                              ; preds = %192, %187
  %201 = or i32 %2, 32
  tail call void @set_task_cpu(ptr noundef %0, i32 noundef %183)
  br label %202

202:                                              ; preds = %200, %182
  %203 = phi i32 [ %201, %200 ], [ %2, %182 ]
  %204 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %183
  %205 = load i32, ptr %204, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  store i64 0, ptr %4, align 8, !annotation !10
  %206 = tail call fastcc zeroext i1 @ttwu_queue_wakelist(ptr noundef %0, i32 noundef %183, i32 noundef %203) #28
  br i1 %206, label %254, label %207

207:                                              ; preds = %202
  %208 = add i32 %205, ptrtoint (ptr @runqueues to i32)
  %209 = inttoptr i32 %208 to ptr
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %209) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %210 = getelementptr inbounds %struct.rq, ptr %209, i32 0, i32 19
  %211 = load i32, ptr %210, align 32
  %212 = and i32 %211, 3
  store i32 %212, ptr %210, align 32
  %213 = getelementptr inbounds %struct.rq, ptr %209, i32 0, i32 33
  %214 = load ptr, ptr %213, align 8
  %215 = icmp ne ptr %214, null
  %216 = icmp ne ptr %214, @balance_push_callback
  %217 = and i1 %215, %216
  %218 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %219 = xor i1 %218, true
  %220 = select i1 %217, i1 %219, i1 false
  br i1 %220, label %221, label %222, !prof !12

221:                                              ; preds = %207
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %222

222:                                              ; preds = %221, %207
  tail call void @update_rq_clock(ptr noundef %209) #28
  %223 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 47
  %224 = load i8, ptr %223, align 4
  %225 = and i8 %224, 2
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %222
  %228 = getelementptr inbounds %struct.rq, ptr %209, i32 0, i32 13
  %229 = load i32, ptr %228, align 8
  %230 = add i32 %229, -1
  store i32 %230, ptr %228, align 8
  br label %231

231:                                              ; preds = %227, %222
  %232 = and i32 %203, 32
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49
  %236 = load i8, ptr %235, align 8
  %237 = and i8 %236, 4
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %247, label %239

239:                                              ; preds = %234
  %240 = load volatile i32, ptr %184, align 8
  %241 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %240
  %242 = load i32, ptr %241, align 4
  %243 = add i32 %242, ptrtoint (ptr @runqueues to i32)
  %244 = inttoptr i32 %243 to ptr
  %245 = getelementptr inbounds %struct.rq, ptr %244, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %245) #28, !srcloc !29
  %246 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %245, ptr %245, i32 1, ptr elementtype(i32) %245) #28, !srcloc !62
  br label %247

247:                                              ; preds = %239, %234, %231
  %248 = phi i32 [ 9, %239 ], [ 9, %234 ], [ 73, %231 ]
  %249 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %250 = load ptr, ptr %249, align 8
  %251 = load ptr, ptr %250, align 4
  tail call void %251(ptr noundef %209, ptr noundef %0, i32 noundef %248) #28
  store i32 1, ptr %96, align 4
  call fastcc void @ttwu_do_wakeup(ptr noundef %209, ptr noundef %0, i32 noundef %203, ptr noundef nonnull %4) #28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %252 = load i16, ptr %209, align 4
  %253 = add i16 %252, 1
  store i16 %253, ptr %209, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  br label %254

254:                                              ; preds = %247, %202
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  br label %255

255:                                              ; preds = %254, %113, %103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #28
  br label %257

256:                                              ; preds = %63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #28
  br label %260

257:                                              ; preds = %255, %62, %41, %38
  %258 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %259 = load volatile i32, ptr %258, align 8
  br label %260

260:                                              ; preds = %257, %256, %8
  %261 = phi i32 [ 1, %257 ], [ 0, %256 ], [ 0, %8 ]
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !77
  ret i32 %261
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wake_up_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @try_to_wake_up(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_fork(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 13
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 3
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %4, i8 0, i64 44, i1 false) #28
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 2, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %7 to i32
  store i32 %8, ptr %7, align 32
  tail call void @init_dl_task_timer(ptr noundef %7) #28
  tail call void @init_dl_inactive_task_timer(ptr noundef %7) #28
  tail call void @__dl_clear_params(ptr noundef %1) #28
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 1
  store i32 0, ptr %11, align 8
  %12 = load i32, ptr @sched_rr_timeslice, align 4
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 3
  store i32 %12, ptr %13, align 16
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 4
  store i16 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 20, i32 5
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 119
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 7, i32 1
  store i32 48, ptr %17, align 4
  %18 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 30
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  store i32 2048, ptr %19, align 8
  %20 = tail call ptr @llvm.thread.pointer() #28
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 16
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  store i32 %22, ptr %23, align 16
  %24 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 47
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %61, label %28, !prof !11

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 25
  %30 = load i32, ptr %29, align 64
  switch i32 %30, label %36 [
    i32 6, label %31
    i32 2, label %31
    i32 1, label %31
  ]

31:                                               ; preds = %28, %28, %28
  store i32 0, ptr %29, align 64
  %32 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 15
  store i32 120, ptr %32, align 4
  %33 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 17
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 16
  store i32 120, ptr %34, align 8
  store i32 120, ptr %23, align 16
  %35 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  br label %48

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 15
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -120
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 120, ptr %37, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ %38, %36 ], [ 120, %41 ]
  %44 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 16
  store i32 %43, ptr %44, align 8
  store i32 %43, ptr %23, align 16
  %45 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  %46 = icmp eq i32 %30, 5
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 3, ptr %45, align 4
  br label %56

48:                                               ; preds = %42, %31
  %49 = phi ptr [ %35, %31 ], [ %45, %42 ]
  %50 = phi i32 [ 120, %31 ], [ %43, %42 ]
  %51 = add i32 %50, -100
  %52 = getelementptr [40 x i32], ptr @sched_prio_to_weight, i32 0, i32 %51
  %53 = load i32, ptr %52, align 4
  store i32 %53, ptr %49, align 4
  %54 = getelementptr [40 x i32], ptr @sched_prio_to_wmult, i32 0, i32 %51
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %48, %47
  %57 = phi i32 [ %43, %47 ], [ %50, %48 ]
  %58 = phi i32 [ 1431655765, %47 ], [ %55, %48 ]
  %59 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19, i32 0, i32 1
  store i32 %58, ptr %59, align 4
  %60 = and i8 %25, -2
  store i8 %60, ptr %24, align 4
  br label %61

61:                                               ; preds = %56, %2
  %62 = phi i32 [ %57, %56 ], [ %22, %2 ]
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = icmp ugt i32 %62, 99
  %66 = select i1 %65, ptr @fair_sched_class, ptr @rt_sched_class
  %67 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 22
  store ptr %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 19
  tail call void @init_entity_runnable_average(ptr noundef %68) #28
  %69 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 6
  store i32 0, ptr %69, align 4
  %70 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  store i32 0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35
  store i32 140, ptr %71, align 4
  %72 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 1
  store volatile ptr %72, ptr %72, align 4
  %73 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 1, i32 1
  store ptr %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 2
  store volatile ptr %74, ptr %74, align 4
  %75 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 35, i32 2, i32 1
  store ptr %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 36
  %77 = ptrtoint ptr %76 to i32
  store i32 %77, ptr %76, align 8
  br label %78

78:                                               ; preds = %64, %61
  %79 = phi i32 [ 0, %64 ], [ -11, %61 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_entity_runnable_average(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_cgroup_fork(ptr noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #28
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 135
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 4
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 133
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #28
  br label %12

12:                                               ; preds = %11, %2
  %13 = tail call ptr @llvm.thread.pointer() #28
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #28, !srcloc !49
  %16 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  store volatile i32 %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 12
  store i32 %15, ptr %17, align 8
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sched_class, ptr %19, i32 0, i32 18
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  tail call void %21(ptr noundef %0) #28
  br label %24

24:                                               ; preds = %23, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @sched_post_fork(ptr nocapture noundef %0) local_unnamed_addr #11 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @to_ratio(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i64 %1, -1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = shl i64 %1, 20
  %8 = tail call i64 @div64_u64(i64 noundef %7, i64 noundef %0) #28
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %6, %4, %2
  %11 = phi i32 [ %9, %6 ], [ 1048576, %2 ], [ 0, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wake_up_new_task(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rq_flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store i64 0, ptr %2, align 8, !annotation !10
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #28
  store i32 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  store volatile i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %7 = load volatile i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 11
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 135
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 4
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 133
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @_set_bit(i32 noundef 2, ptr noundef %0) #28
  br label %16

16:                                               ; preds = %15, %1
  %17 = load volatile i32, ptr %6, align 8
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 26
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %23 = load i16, ptr %22, align 8
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sched_class, ptr %27, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0, i32 noundef %17, i32 noundef 4) #28
  br label %35

31:                                               ; preds = %21, %16
  %32 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %33 = load ptr, ptr %32, align 8
  %34 = tail call i32 @_find_first_bit_le(ptr noundef %33, i32 noundef 16) #28
  br label %35

35:                                               ; preds = %31, %25
  %36 = phi i32 [ %34, %31 ], [ %30, %25 ]
  %37 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %38 = load ptr, ptr %37, align 8
  %39 = lshr i32 %36, 5
  %40 = getelementptr i32, ptr %38, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %36, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %68, label %46, !prof !75

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %48 = load i16, ptr %47, align 8
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 2097152
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = tail call zeroext i1 @kthread_is_per_cpu(ptr noundef %0) #28
  br i1 %56, label %62, label %57

57:                                               ; preds = %55
  %58 = getelementptr i32, ptr @__cpu_dying_mask, i32 %39
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, %43
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68, !prof !76

62:                                               ; preds = %57, %55, %50, %46
  %63 = phi ptr [ @__cpu_online_mask, %46 ], [ @__cpu_active_mask, %50 ], [ @__cpu_online_mask, %55 ], [ @__cpu_online_mask, %57 ]
  %64 = getelementptr i32, ptr %63, i32 %39
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, %43
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71, !prof !12

68:                                               ; preds = %62, %57, %35
  %69 = load volatile i32, ptr %6, align 8
  %70 = tail call fastcc i32 @select_fallback_rq(i32 noundef %69, ptr noundef %0) #28
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi i32 [ %70, %68 ], [ %36, %62 ]
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #28, !srcloc !49
  store volatile i32 %72, ptr %6, align 8
  %73 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 12
  store i32 %72, ptr %73, align 8
  %74 = call ptr @__task_rq_lock(ptr noundef %0, ptr noundef nonnull %2)
  tail call void @update_rq_clock(ptr noundef %74)
  tail call void @post_init_entity_util_avg(ptr noundef %0) #28
  %75 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %76 = load ptr, ptr %75, align 8
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %74, ptr noundef %0, i32 noundef 8) #28
  %78 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  store i32 1, ptr %78, align 4
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wakeup_new, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %71
  %82 = tail call ptr @llvm.thread.pointer() #28
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %81
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !78
  %93 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wakeup_new, i32 0, i32 7), align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %95, %92
  %96 = phi ptr [ %100, %95 ], [ %93, %92 ]
  %97 = load volatile ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.tracepoint_func, ptr %96, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  tail call void %97(ptr noundef %99, ptr noundef %0) #28
  %100 = getelementptr %struct.tracepoint_func, ptr %96, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95

103:                                              ; preds = %95, %92
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !79
  br label %104

104:                                              ; preds = %103, %81, %71
  %105 = load ptr, ptr %75, align 8
  %106 = getelementptr inbounds %struct.rq, ptr %74, i32 0, i32 14
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.task_struct, ptr %107, i32 0, i32 22
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %105, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.sched_class, ptr %105, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  tail call void %113(ptr noundef %74, ptr noundef %0, i32 noundef 4) #28
  br label %128

114:                                              ; preds = %104
  %115 = icmp ugt ptr %105, %109
  br i1 %115, label %116, label %128

116:                                              ; preds = %114
  %117 = load volatile i32, ptr %107, align 4
  %118 = and i32 %117, 2
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.rq, ptr %74, i32 0, i32 40
  %122 = load i32, ptr %121, align 4
  %123 = tail call ptr @llvm.thread.pointer() #28
  %124 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 8
  %126 = icmp eq i32 %122, %125
  tail call void @_set_bit(i32 noundef 1, ptr noundef %107) #28
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  tail call void @smp_send_reschedule(i32 noundef %122) #28
  br label %128

128:                                              ; preds = %127, %120, %116, %114, %111
  %129 = load ptr, ptr %106, align 4
  %130 = getelementptr inbounds %struct.task_struct, ptr %129, i32 0, i32 13
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load volatile i32, ptr %129, align 4
  %135 = and i32 %134, 2
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.rq, ptr %74, i32 0, i32 19
  %139 = load i32, ptr %138, align 32
  %140 = or i32 %139, 1
  store i32 %140, ptr %138, align 32
  br label %141

141:                                              ; preds = %137, %133, %128
  %142 = load ptr, ptr %75, align 8
  %143 = getelementptr inbounds %struct.sched_class, ptr %142, i32 0, i32 12
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %155, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.rq, ptr %74, i32 0, i32 19
  %148 = load i32, ptr %147, align 32
  %149 = icmp ugt i32 %148, 2
  %150 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  %151 = load i32, ptr %150, align 4
  %152 = select i1 %149, i32 4, i32 %151
  tail call void %144(ptr noundef %74, ptr noundef %0) #28
  %153 = load i32, ptr %147, align 32
  %154 = or i32 %153, %152
  store i32 %154, ptr %147, align 32
  br label %155

155:                                              ; preds = %146, %141
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %156 = load i16, ptr %74, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %74, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %158 = load i32, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %158) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @post_init_entity_util_avg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @balance_push(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  store ptr @balance_push_callback, ptr %4, align 8
  %5 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = getelementptr i32, ptr @__cpu_dying_mask, i32 %7
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %6, 31
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %64, label %14

14:                                               ; preds = %1
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #24, !srcloc !13
  %18 = add i32 %17, ptrtoint (ptr @runqueues to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %64

21:                                               ; preds = %14
  %22 = tail call zeroext i1 @kthread_is_per_cpu(ptr noundef %3) #28
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 31
  %25 = load i16, ptr %24, align 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %23, %21
  %28 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 60
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 52
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %40 = load i16, ptr %0, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %42 = tail call i32 @rcuwait_wake_up(ptr noundef %36) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %0) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  br label %64

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %44) #28, !srcloc !29
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #28, !srcloc !31
  %46 = extractvalue { i32, i32, i32 } %45, 0
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48, !prof !12

48:                                               ; preds = %43
  %49 = add i32 %46, 1
  %50 = or i32 %49, %46
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %54, label %52, !prof !11

52:                                               ; preds = %48, %43
  %53 = phi i32 [ 2, %43 ], [ 1, %48 ]
  tail call void @refcount_warn_saturate(ptr noundef %44, i32 noundef %53) #28
  br label %54

54:                                               ; preds = %52, %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %55 = load i16, ptr %0, align 4
  %56 = add i16 %55, 1
  store i16 %56, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %57 = load i32, ptr %5, align 4
  %58 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %59 = inttoptr i32 %58 to ptr
  %60 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %59) #24, !srcloc !13
  %61 = add i32 %60, ptrtoint (ptr @push_work to i32)
  %62 = inttoptr i32 %61 to ptr
  %63 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %57, ptr noundef nonnull @__balance_push_cpu_stop, ptr noundef %3, ptr noundef %62) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %0) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  br label %64

64:                                               ; preds = %54, %39, %35, %31, %27, %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @schedule_tail(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @finish_task_switch(ptr noundef %0)
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !80
  %2 = tail call ptr @llvm.thread.pointer() #28
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 67
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @__task_pid_nr_ns(ptr noundef %2, i32 noundef 0, ptr noundef null) #28
  %8 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %8) #24, !srcloc !81
  %10 = and i32 %9, -13
  %11 = or i32 %10, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %4, i32 %7, i32 -1090519041) #28, !srcloc !84
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  br label %13

13:                                               ; preds = %6, %1
  tail call void @calculate_sigpending() #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @finish_task_switch(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #24, !srcloc !13
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 18
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #28
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = load i1, ptr @finish_task_switch.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %21, !prof !12

16:                                               ; preds = %1
  store i1 true, ptr @finish_task_switch.__already_done, align 1
  %17 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 85
  %18 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = load volatile i32, ptr %10, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4852, i32 noundef 9, ptr noundef nonnull @.str.99, ptr noundef %17, i32 noundef %19, i32 noundef %20) #28
  br label %21

21:                                               ; preds = %16, %1
  br i1 %12, label %22, label %23

22:                                               ; preds = %21
  store volatile i32 0, ptr %10, align 4
  br label %23

23:                                               ; preds = %22, %21
  store ptr null, ptr %7, align 4
  %24 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 8
  %26 = load volatile i32, ptr @perf_sched_events, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %29, !prof !12

28:                                               ; preds = %23
  tail call void @__perf_event_task_sched_in(ptr noundef %0, ptr noundef %9) #28
  br label %29

29:                                               ; preds = %28, %23
  %30 = load volatile i32, ptr getelementptr inbounds ([12 x %struct.static_key], ptr @perf_swevent_enabled, i32 0, i32 4), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 47
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %32
  %38 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %39 = inttoptr i32 %38 to ptr
  %40 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %39) #24, !srcloc !13
  %41 = add i32 %40, ptrtoint (ptr @__perf_regs to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call ptr @llvm.returnaddress(i32 0) #28
  %44 = ptrtoint ptr %43 to i32
  %45 = getelementptr [18 x i32], ptr %42, i32 0, i32 15
  store i32 %44, ptr %45, align 4
  %46 = tail call ptr @llvm.frameaddress.p0(i32 0) #28
  %47 = ptrtoint ptr %46 to i32
  %48 = getelementptr [18 x i32], ptr %42, i32 0, i32 11
  store i32 %47, ptr %48, align 4
  %49 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %50 = getelementptr [18 x i32], ptr %42, i32 0, i32 13
  store i32 %49, ptr %50, align 4
  %51 = getelementptr [18 x i32], ptr %42, i32 0, i32 16
  store i32 19, ptr %51, align 4
  tail call void @___perf_sw_event(i32 noundef 4, i64 noundef 1, ptr noundef %42, i64 noundef 0) #28
  %52 = load i8, ptr %33, align 4
  %53 = and i8 %52, -5
  store i8 %53, ptr %33, align 4
  br label %54

54:                                               ; preds = %37, %32, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !85
  %55 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  store volatile i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 33
  %57 = load ptr, ptr %56, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  store ptr null, ptr %56, align 8
  br label %60

60:                                               ; preds = %60, %59
  %61 = phi ptr [ %64, %60 ], [ %57, %59 ]
  %62 = getelementptr inbounds %struct.callback_head, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr %61, align 4
  store ptr null, ptr %61, align 4
  tail call void %63(ptr noundef %6) #28
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %60

66:                                               ; preds = %60, %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %67 = load i16, ptr %6, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #28, !srcloc !40
  %69 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 148
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !11

72:                                               ; preds = %66
  tail call void @__kmap_local_sched_in() #28
  br label %73

73:                                               ; preds = %72, %66
  %74 = icmp eq ptr %8, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 37
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %8
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 9
  %81 = load volatile i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !86
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %83) #28, !srcloc !29
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %83, ptr %83, i32 1, ptr elementtype(i32) %83) #28, !srcloc !87
  %85 = extractvalue { i32, i32 } %84, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !88
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88, !prof !12

87:                                               ; preds = %82
  tail call void @__mmdrop(ptr noundef nonnull %8) #28
  br label %88

88:                                               ; preds = %87, %82, %73
  %89 = icmp eq i32 %25, 128
  br i1 %89, label %90, label %98, !prof !12

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.sched_class, ptr %92, i32 0, i32 19
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  tail call void %94(ptr noundef %0) #28
  br label %97

97:                                               ; preds = %96, %90
  tail call void @put_task_stack(ptr noundef %0) #28
  tail call void @put_task_struct_rcu_user(ptr noundef %0) #28
  br label %98

98:                                               ; preds = %97, %88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @calculate_sigpending() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nr_running() local_unnamed_addr #12 {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #29
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %4, label %16

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %14, %4 ], [ %2, %0 ]
  %6 = phi i32 [ %13, %4 ], [ 0, %0 ]
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %6
  %14 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_online_mask) #29
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %4, label %16

16:                                               ; preds = %4, %0
  %17 = phi i32 [ 0, %0 ], [ %13, %4 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @single_task_running() #12 {
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #24, !srcloc !13
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  ret i1 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i64 @nr_context_switches() local_unnamed_addr #12 {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #29
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %4, label %16

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %14, %4 ], [ %2, %0 ]
  %6 = phi i64 [ %13, %4 ], [ 0, %0 ]
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 8
  %12 = load i64, ptr %11, align 16
  %13 = add i64 %12, %6
  %14 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #29
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %4, label %16

16:                                               ; preds = %4, %0
  %17 = phi i64 [ 0, %0 ], [ %13, %4 ]
  ret i64 %17
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nr_iowait_cpu(i32 noundef %0) local_unnamed_addr #13 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 25
  %7 = load volatile i32, ptr %6, align 4
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nr_iowait() local_unnamed_addr #14 {
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #29
  %3 = icmp ult i32 %2, %1
  br i1 %3, label %4, label %16

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %14, %4 ], [ %2, %0 ]
  %6 = phi i32 [ %13, %4 ], [ 0, %0 ]
  %7 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 25
  %12 = load volatile i32, ptr %11, align 4
  %13 = add i32 %12, %6
  %14 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #29
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %4, label %16

16:                                               ; preds = %4, %0
  %17 = phi i32 [ 0, %0 ], [ %13, %4 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_exec() local_unnamed_addr #0 {
  %1 = alloca %struct.migration_arg, align 4
  %2 = tail call ptr @llvm.thread.pointer() #28
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 108
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #28
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 22
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sched_class, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %10 = load volatile i32, ptr %9, align 8
  %11 = tail call i32 %8(ptr noundef %2, i32 noundef %10, i32 noundef 2) #28
  %12 = load i32, ptr %9, align 8
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %27, label %14

14:                                               ; preds = %0
  %15 = lshr i32 %11, 5
  %16 = getelementptr i32, ptr @__cpu_active_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %11, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22, !prof !12

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %1) #28
  store ptr %2, ptr %1, align 4
  %23 = getelementptr inbounds %struct.migration_arg, ptr %1, i32 0, i32 1
  store i32 %11, ptr %23, align 4
  %24 = getelementptr inbounds %struct.migration_arg, ptr %1, i32 0, i32 2
  store ptr null, ptr %24, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #28
  %25 = load volatile i32, ptr %9, align 8
  %26 = call i32 @stop_one_cpu(i32 noundef %25, ptr noundef nonnull @migration_cpu_stop, ptr noundef nonnull %1) #28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %1) #28
  br label %28

27:                                               ; preds = %14, %0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #28
  br label %28

28:                                               ; preds = %27, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_one_cpu(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @migration_cpu_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.rq_flags, align 8
  %3 = getelementptr inbounds %struct.migration_arg, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #24, !srcloc !13
  %9 = add i32 %8, ptrtoint (ptr @runqueues to i32)
  %10 = inttoptr i32 %9 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  store i32 %11, ptr %2, align 8
  tail call void @flush_smp_call_function_from_idle() #28
  %12 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %12) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %10) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %13 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 19
  %14 = load i32, ptr %13, align 32
  %15 = and i32 %14, 3
  store i32 %15, ptr %13, align 32
  %16 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  store i32 0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rq, ptr %10, i32 0, i32 33
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  %20 = icmp ne ptr %18, @balance_push_callback
  %21 = and i1 %19, %20
  %22 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !12

25:                                               ; preds = %1
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %26

26:                                               ; preds = %25, %1
  %27 = icmp eq ptr %4, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 30
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ne ptr %4, %30
  %32 = load i1, ptr @migration_cpu_stop.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !12

35:                                               ; preds = %28
  store i1 true, ptr @migration_cpu_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2355, i32 noundef 9, ptr noundef null) #28
  br label %36

36:                                               ; preds = %35, %28
  %37 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %38 = load volatile i32, ptr %37, align 8
  %39 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, ptrtoint (ptr @runqueues to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = icmp eq ptr %42, %10
  br i1 %43, label %52, label %108

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %46 = load volatile i32, ptr %45, align 8
  %47 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, ptrtoint (ptr @runqueues to i32)
  %50 = inttoptr i32 %49 to ptr
  %51 = icmp eq ptr %50, %10
  br i1 %51, label %56, label %145

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 31
  %54 = load i16, ptr %53, align 8
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %60, label %141

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 31
  %58 = load i16, ptr %57, align 8
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %70, label %145

60:                                               ; preds = %52
  store ptr null, ptr %29, align 4
  %61 = load volatile i32, ptr %37, align 8
  %62 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 29
  %63 = lshr i32 %61, 5
  %64 = getelementptr i32, ptr %62, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %61, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %141

70:                                               ; preds = %60, %56
  %71 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 13
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 1
  %74 = getelementptr inbounds %struct.migration_arg, ptr %0, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  br i1 %73, label %76, label %106

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 27
  %78 = load ptr, ptr %77, align 8
  %79 = lshr i32 %75, 5
  %80 = getelementptr i32, ptr %78, i32 %79
  %81 = load volatile i32, ptr %80, align 4
  %82 = and i32 %75, 31
  %83 = shl nuw i32 1, %82
  %84 = and i32 %81, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %139, label %86

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, 2097152
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = tail call zeroext i1 @kthread_is_per_cpu(ptr noundef %5) #28
  br i1 %92, label %98, label %93

93:                                               ; preds = %91
  %94 = getelementptr i32, ptr @__cpu_dying_mask, i32 %79
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, %83
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %139

98:                                               ; preds = %93, %91, %86
  %99 = phi ptr [ @__cpu_active_mask, %86 ], [ @__cpu_online_mask, %91 ], [ @__cpu_online_mask, %93 ]
  %100 = getelementptr i32, ptr %99, i32 %79
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %101, %83
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %139, label %104

104:                                              ; preds = %98
  tail call void @update_rq_clock(ptr noundef %10) #28
  %105 = call fastcc ptr @move_queued_task(ptr noundef %10, ptr noundef nonnull %2, ptr noundef %5, i32 noundef %75) #28
  br label %139

106:                                              ; preds = %70
  %107 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 12
  store i32 %75, ptr %107, align 8
  br label %139

108:                                              ; preds = %36
  %109 = load volatile i32, ptr %37, align 8
  %110 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 27
  %111 = load ptr, ptr %110, align 8
  %112 = lshr i32 %109, 5
  %113 = getelementptr i32, ptr %111, i32 %112
  %114 = load volatile i32, ptr %113, align 4
  %115 = and i32 %109, 31
  %116 = shl nuw i32 1, %115
  %117 = and i32 %114, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %108
  store ptr null, ptr %29, align 4
  br label %141

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.set_affinity_pending, ptr %4, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = load i1, ptr @migration_cpu_stop.__already_done.100, align 1
  %125 = xor i1 %124, true
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %127, label %128, !prof !12

127:                                              ; preds = %120
  store i1 true, ptr @migration_cpu_stop.__already_done.100, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2412, i32 noundef 9, ptr noundef null) #28
  br label %128

128:                                              ; preds = %127, %120
  %129 = load i32, ptr %13, align 32
  %130 = icmp ugt i32 %129, 2
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 4, ptr %16, align 4
  br label %132

132:                                              ; preds = %131, %128
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %133 = load i16, ptr %10, align 4
  %134 = add i16 %133, 1
  store i16 %134, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %11) #28
  %135 = load volatile i32, ptr %37, align 8
  %136 = getelementptr inbounds %struct.set_affinity_pending, ptr %4, i32 0, i32 4
  %137 = getelementptr inbounds %struct.set_affinity_pending, ptr %4, i32 0, i32 3
  %138 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %135, ptr noundef nonnull @migration_cpu_stop, ptr noundef %136, ptr noundef %137) #28
  br label %158

139:                                              ; preds = %106, %104, %98, %93, %76
  %140 = phi ptr [ %10, %106 ], [ %10, %76 ], [ %10, %93 ], [ %10, %98 ], [ %105, %104 ]
  br i1 %27, label %145, label %141

141:                                              ; preds = %139, %119, %60, %52
  %142 = phi ptr [ %140, %139 ], [ %10, %60 ], [ %10, %119 ], [ %10, %52 ]
  %143 = phi i1 [ true, %139 ], [ true, %60 ], [ true, %119 ], [ false, %52 ]
  %144 = getelementptr inbounds %struct.set_affinity_pending, ptr %4, i32 0, i32 1
  store i32 0, ptr %144, align 4
  br label %145

145:                                              ; preds = %141, %139, %56, %44
  %146 = phi ptr [ %142, %141 ], [ %140, %139 ], [ %10, %44 ], [ %10, %56 ]
  %147 = phi i1 [ %143, %141 ], [ false, %139 ], [ false, %44 ], [ false, %56 ]
  %148 = getelementptr inbounds %struct.rq, ptr %146, i32 0, i32 19
  %149 = load i32, ptr %148, align 32
  %150 = icmp ugt i32 %149, 2
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store i32 4, ptr %16, align 4
  br label %152

152:                                              ; preds = %151, %145
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %153 = load i16, ptr %146, align 4
  %154 = add i16 %153, 1
  store i16 %154, ptr %146, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %155 = load i32, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %155) #28
  br i1 %147, label %156, label %158

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.set_affinity_pending, ptr %4, i32 0, i32 2
  tail call void @complete_all(ptr noundef %157) #28
  br label %158

158:                                              ; preds = %156, %152, %132
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @task_sched_runtime(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rq_flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store i64 0, ptr %2, align 8, !annotation !10
  %3 = call ptr @task_rq_lock(ptr noundef %0, ptr noundef nonnull %2)
  %4 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %13 = load volatile i32, ptr %12, align 8
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, ptrtoint (ptr @runqueues to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 10, i32 9
  %19 = load ptr, ptr %18, align 8
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %19) #28, !srcloc !89
  %20 = getelementptr inbounds %struct.sched_entity, ptr %19, i32 0, i32 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %20) #28, !srcloc !89
  tail call void @update_rq_clock(ptr noundef %3)
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.sched_class, ptr %22, i32 0, i32 24
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %3) #28
  br label %25

25:                                               ; preds = %11, %7, %1
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 5
  %27 = load i64, ptr %26, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %28 = load i16, ptr %3, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %30 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %31 = load i32, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret i64 %27
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_resched_latency_warn_ms(ptr noundef %0) #15 section ".init.text" {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #28
  store i32 0, ptr %2, align 4, !annotation !10
  %3 = call i32 @_kstrtol(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #28
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #31
  br label %9

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  store i32 %8, ptr @sysctl_resched_latency_warn_ms, align 4
  br label %9

9:                                                ; preds = %7, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #28
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scheduler_tick() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %7) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %10 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 19
  %11 = load i32, ptr %10, align 32
  %12 = and i32 %11, 3
  store i32 %12, ptr %10, align 32
  %13 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 33
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %14, @balance_push_callback
  %17 = and i1 %15, %16
  %18 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %0
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %22

22:                                               ; preds = %21, %0
  tail call void @update_rq_clock(ptr noundef %7)
  %23 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 40
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, ptrtoint (ptr @thermal_pressure to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %10, align 32
  %31 = icmp ult i32 %30, 2
  %32 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %36, !prof !12

35:                                               ; preds = %22
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.93) #28
  br label %36

36:                                               ; preds = %35, %22
  %37 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 22
  %38 = load i64, ptr %37, align 64
  %39 = load i32, ptr @sched_thermal_decay_shift, align 4
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %38, %40
  %42 = zext i32 %29 to i64
  %43 = tail call i32 @update_thermal_load_avg(i64 noundef %41, ptr noundef %7, i64 noundef %42) #28
  %44 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 22
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.sched_class, ptr %45, i32 0, i32 17
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %7, ptr noundef %9, i32 noundef 0) #28
  %48 = load i32, ptr @sysctl_sched_features, align 4
  %49 = and i32 %48, 4194304
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %90, label %51

51:                                               ; preds = %36
  %52 = load volatile i32, ptr @sysctl_resched_latency_warn_ms, align 4
  %53 = load i32, ptr %10, align 32
  %54 = icmp ult i32 %53, 2
  %55 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !12

58:                                               ; preds = %51
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.93) #28
  br label %59

59:                                               ; preds = %58, %51
  %60 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 20
  %61 = load i64, ptr %60, align 8
  %62 = load i32, ptr @sysctl_resched_latency_warn_once, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i1, ptr @cpu_resched_latency.warned_once, align 1
  br i1 %65, label %90, label %66

66:                                               ; preds = %64, %59
  %67 = load volatile i32, ptr %1, align 4
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = icmp eq i32 %52, 0
  %71 = select i1 %69, i1 true, i1 %70
  %72 = load i32, ptr @system_state, align 4
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %90, label %75

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 26
  %77 = load i64, ptr %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  store i64 %61, ptr %76, align 8
  %80 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 27
  store i32 0, ptr %80, align 32
  br label %90

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 27
  %83 = load i32, ptr %82, align 32
  %84 = add i32 %83, 1
  store i32 %84, ptr %82, align 32
  %85 = sub i64 %61, %77
  %86 = mul i32 %52, 1000000
  %87 = sext i32 %86 to i64
  %88 = icmp ugt i64 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i1 true, ptr @cpu_resched_latency.warned_once, align 1
  br label %90

90:                                               ; preds = %89, %81, %79, %66, %64, %36
  %91 = phi i64 [ 0, %36 ], [ %85, %89 ], [ 0, %79 ], [ 0, %64 ], [ 0, %66 ], [ 0, %81 ]
  tail call void @calc_global_load_tick(ptr noundef %7) #28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %92 = load i16, ptr %7, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %94 = load i32, ptr @sysctl_sched_features, align 4
  %95 = and i32 %94, 4194304
  %96 = icmp ne i32 %95, 0
  %97 = icmp ne i64 %91, 0
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  tail call void @resched_latency_warn(i32 noundef %3, i64 noundef %91) #28
  br label %100

100:                                              ; preds = %99, %90
  tail call void @perf_event_task_tick() #28
  %101 = load i32, ptr %4, align 4
  %102 = add i32 %101, ptrtoint (ptr @runqueues to i32)
  %103 = inttoptr i32 %102 to ptr
  %104 = getelementptr inbounds %struct.rq, ptr %103, i32 0, i32 14
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.rq, ptr %103, i32 0, i32 15
  %107 = load ptr, ptr %106, align 16
  %108 = icmp eq ptr %105, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.rq, ptr %103, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.rq, ptr %103, i32 0, i32 7
  %115 = load i32, ptr %114, align 8
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i8
  br label %118

118:                                              ; preds = %113, %109, %100
  %119 = phi i8 [ 0, %100 ], [ 0, %109 ], [ %117, %113 ]
  %120 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 35
  store i8 %119, ptr %120, align 1
  tail call void @trigger_load_balance(ptr noundef %7) #28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @update_thermal_load_avg(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_global_load_tick(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @resched_latency_warn(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_task_tick() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trigger_load_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @do_task_dead() local_unnamed_addr #16 {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 108
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #28
  %4 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  store volatile i32 128, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #28
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 32768
  store i32 %7, ptr %5, align 4
  tail call fastcc void @__schedule(i32 noundef 0)
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6323, 0\0A.popsection", ""() #28, !srcloc !90
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__schedule(i32 noundef %0) unnamed_addr #0 section ".sched.text" {
  %2 = alloca %struct.rq_flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store i64 0, ptr %2, align 8, !annotation !10
  %3 = tail call ptr @llvm.thread.pointer() #28
  %4 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne i32 %0, 0
  %13 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !11

16:                                               ; preds = %1
  tail call fastcc void @__schedule_bug(ptr noundef %11) #28
  store volatile i32 0, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, ptr @sysctl_sched_features, align 4
  %19 = and i32 %18, 192
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 57
  %23 = tail call zeroext i1 @hrtimer_active(ptr noundef %22) #28
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 @hrtimer_cancel(ptr noundef %22) #28
  br label %26

26:                                               ; preds = %24, %21, %17
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #28, !srcloc !91
  tail call void @rcu_note_context_switch(i1 noundef zeroext %12) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %9) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %27 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 19
  %28 = load i32, ptr %27, align 32
  %29 = and i32 %28, 3
  store i32 %29, ptr %27, align 32
  %30 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  %31 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 33
  %32 = load ptr, ptr %31, align 8
  %33 = icmp ne ptr %32, null
  %34 = icmp ne ptr %32, @balance_push_callback
  %35 = and i1 %33, %34
  %36 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %41, !prof !12

39:                                               ; preds = %26
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  %40 = load i32, ptr %27, align 32
  br label %41

41:                                               ; preds = %39, %26
  %42 = phi i32 [ %29, %26 ], [ %40, %39 ]
  %43 = shl i32 %42, 1
  store i32 %43, ptr %27, align 32
  tail call void @update_rq_clock(ptr noundef %9)
  %44 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 75
  %45 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 1
  %46 = load volatile i32, ptr %45, align 8
  %47 = icmp eq i32 %0, 0
  %48 = icmp ne i32 %46, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %108

50:                                               ; preds = %41
  %51 = and i32 %46, 257
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %50
  %54 = load volatile i32, ptr %11, align 4
  %55 = and i32 %54, 256
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61, !prof !11

57:                                               ; preds = %53
  %58 = load volatile i32, ptr %11, align 4
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %57, %53
  %62 = and i32 %46, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 98, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 256
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64, %61
  store volatile i32 0, ptr %45, align 8
  br label %106

70:                                               ; preds = %64, %57, %50
  %71 = and i32 %46, 1026
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 47
  %75 = load i8, ptr %74, align 4
  %76 = and i8 %75, -3
  store i8 %76, ptr %74, align 4
  br label %93

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = lshr i32 %79, 15
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 2
  %83 = xor i8 %82, 2
  %84 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 47
  %85 = load i8, ptr %84, align 4
  %86 = and i8 %85, -3
  %87 = or i8 %83, %86
  store i8 %87, ptr %84, align 4
  %88 = icmp eq i8 %83, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %77
  %90 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 13
  %91 = load i32, ptr %90, align 8
  %92 = add i32 %91, 1
  store i32 %92, ptr %90, align 8
  br label %93

93:                                               ; preds = %89, %77, %73
  %94 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 13
  store i32 0, ptr %94, align 4
  %95 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 22
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.sched_class, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  tail call void %98(ptr noundef %9, ptr noundef %11, i32 noundef 9) #28
  %99 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 49
  %100 = load i8, ptr %99, align 8
  %101 = and i8 %100, 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %104) #28, !srcloc !29
  %105 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %104, ptr %104, i32 1, ptr elementtype(i32) %104) #28, !srcloc !92
  br label %106

106:                                              ; preds = %103, %93, %69
  %107 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 74
  br label %108

108:                                              ; preds = %106, %41
  %109 = phi ptr [ %107, %106 ], [ %44, %41 ]
  %110 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 22
  %111 = load ptr, ptr %110, align 8
  %112 = icmp ugt ptr %111, @fair_sched_class
  br i1 %112, label %136, label %113, !prof !12

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 10, i32 2
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %136, !prof !11

119:                                              ; preds = %113
  %120 = call ptr @pick_next_task_fair(ptr noundef %9, ptr noundef %11, ptr noundef nonnull %2) #28
  %121 = ptrtoint ptr %120 to i32
  switch i32 %121, label %169 [
    i32 -1, label %122
    i32 0, label %124
  ], !prof !93

122:                                              ; preds = %119
  %123 = load ptr, ptr %110, align 8
  br label %136

124:                                              ; preds = %119
  %125 = load ptr, ptr %10, align 4
  %126 = icmp ne ptr %125, %11
  %127 = load i1, ptr @put_prev_task.__already_done, align 1
  %128 = xor i1 %127, true
  %129 = select i1 %126, i1 %128, i1 false
  br i1 %129, label %130, label %131, !prof !12

130:                                              ; preds = %124
  store i1 true, ptr @put_prev_task.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 2190, i32 noundef 9, ptr noundef null) #28
  br label %131

131:                                              ; preds = %130, %124
  %132 = load ptr, ptr %110, align 8
  %133 = getelementptr inbounds %struct.sched_class, ptr %132, i32 0, i32 6
  %134 = load ptr, ptr %133, align 4
  call void %134(ptr noundef %9, ptr noundef %11) #28
  %135 = call ptr @pick_next_task_idle(ptr noundef %9) #28
  br label %169

136:                                              ; preds = %122, %113, %108
  %137 = phi ptr [ %111, %108 ], [ %123, %122 ], [ %111, %113 ]
  %138 = icmp eq ptr %137, @idle_sched_class
  br i1 %138, label %148, label %139

139:                                              ; preds = %139, %136
  %140 = phi ptr [ %145, %139 ], [ %137, %136 ]
  %141 = getelementptr inbounds %struct.sched_class, ptr %140, i32 0, i32 8
  %142 = load ptr, ptr %141, align 4
  %143 = call i32 %142(ptr noundef %9, ptr noundef %11, ptr noundef nonnull %2) #28
  %144 = icmp ne i32 %143, 0
  %145 = getelementptr %struct.sched_class, ptr %140, i32 -1
  %146 = icmp eq ptr %145, @idle_sched_class
  %147 = select i1 %144, i1 true, i1 %146
  br i1 %147, label %148, label %139

148:                                              ; preds = %139, %136
  %149 = load ptr, ptr %10, align 4
  %150 = icmp ne ptr %149, %11
  %151 = load i1, ptr @put_prev_task.__already_done, align 1
  %152 = xor i1 %151, true
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %155, !prof !12

154:                                              ; preds = %148
  store i1 true, ptr @put_prev_task.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 2190, i32 noundef 9, ptr noundef null) #28
  br label %155

155:                                              ; preds = %154, %148
  %156 = load ptr, ptr %110, align 8
  %157 = getelementptr inbounds %struct.sched_class, ptr %156, i32 0, i32 6
  %158 = load ptr, ptr %157, align 4
  call void %158(ptr noundef %9, ptr noundef %11) #28
  br i1 icmp eq (ptr getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), ptr getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)), label %168, label %162

159:                                              ; preds = %162
  %160 = getelementptr %struct.sched_class, ptr %163, i32 -1
  %161 = icmp eq ptr %160, getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)
  br i1 %161, label %168, label %162

162:                                              ; preds = %159, %155
  %163 = phi ptr [ %160, %159 ], [ getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), %155 ]
  %164 = getelementptr inbounds %struct.sched_class, ptr %163, i32 0, i32 5
  %165 = load ptr, ptr %164, align 4
  %166 = call ptr %165(ptr noundef %9) #28
  %167 = icmp eq ptr %166, null
  br i1 %167, label %159, label %169

168:                                              ; preds = %159, %155
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 5639, 0\0A.popsection", ""() #28, !srcloc !94
  unreachable

169:                                              ; preds = %162, %131, %119
  %170 = phi ptr [ %135, %131 ], [ %120, %119 ], [ %166, %162 ]
  call void @_clear_bit(i32 noundef 1, ptr noundef %11) #28
  %171 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 26
  store i64 0, ptr %171, align 8
  %172 = icmp eq ptr %11, %170
  br i1 %172, label %312, label %173, !prof !12

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 8
  %175 = load i64, ptr %174, align 16
  %176 = add i64 %175, 1
  store i64 %176, ptr %174, align 16
  store volatile ptr %170, ptr %10, align 4
  %177 = load i32, ptr %109, align 4
  %178 = add i32 %177, 1
  store i32 %178, ptr %109, align 4
  %179 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 31
  %180 = load i16, ptr %179, align 8
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %196, label %182, !prof !11

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 27
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 29
  %186 = icmp eq ptr %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 40
  %189 = load i32, ptr %188, align 4
  %190 = and i32 %189, 31
  %191 = add nuw nsw i32 %190, 1
  %192 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %191
  %193 = lshr i32 %189, 5
  %194 = sub nsw i32 0, %193
  %195 = getelementptr i32, ptr %192, i32 %194
  call fastcc void @__do_set_cpus_allowed(ptr noundef %11, ptr noundef %195, i32 noundef 2) #28
  br label %196

196:                                              ; preds = %187, %182, %173
  %197 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_switch, i32 0, i32 1), align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %220

199:                                              ; preds = %196
  %200 = load i32, ptr %4, align 8
  %201 = lshr i32 %200, 5
  %202 = getelementptr i32, ptr @__cpu_online_mask, i32 %201
  %203 = load volatile i32, ptr %202, align 4
  %204 = and i32 %200, 31
  %205 = shl nuw i32 1, %204
  %206 = and i32 %205, %203
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %199
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !95
  %209 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_switch, i32 0, i32 7), align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %219, label %211

211:                                              ; preds = %211, %208
  %212 = phi ptr [ %216, %211 ], [ %209, %208 ]
  %213 = load volatile ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.tracepoint_func, ptr %212, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  call void %213(ptr noundef %215, i1 noundef zeroext %12, ptr noundef %11, ptr noundef %170) #28
  %216 = getelementptr %struct.tracepoint_func, ptr %212, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %211

219:                                              ; preds = %211, %208
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !96
  br label %220

220:                                              ; preds = %219, %199, %196
  %221 = load volatile i32, ptr getelementptr inbounds ([12 x %struct.static_key], ptr @perf_swevent_enabled, i32 0, i32 3), align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %220
  %224 = call i32 @llvm.read_register.i32(metadata !0) #28
  %225 = inttoptr i32 %224 to ptr
  %226 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %225) #24, !srcloc !13
  %227 = add i32 %226, ptrtoint (ptr @__perf_regs to i32)
  %228 = inttoptr i32 %227 to ptr
  %229 = call ptr @llvm.returnaddress(i32 0) #28
  %230 = ptrtoint ptr %229 to i32
  %231 = getelementptr [18 x i32], ptr %228, i32 0, i32 15
  store i32 %230, ptr %231, align 4
  %232 = call ptr @llvm.frameaddress.p0(i32 0) #28
  %233 = ptrtoint ptr %232 to i32
  %234 = getelementptr [18 x i32], ptr %228, i32 0, i32 11
  store i32 %233, ptr %234, align 4
  %235 = call i32 @llvm.read_register.i32(metadata !0) #28
  %236 = getelementptr [18 x i32], ptr %228, i32 0, i32 13
  store i32 %235, ptr %236, align 4
  %237 = getelementptr [18 x i32], ptr %228, i32 0, i32 16
  store i32 19, ptr %237, align 4
  call void @___perf_sw_event(i32 noundef 3, i64 noundef 1, ptr noundef %228, i64 noundef 0) #28
  br label %238

238:                                              ; preds = %223, %220
  %239 = load volatile i32, ptr @perf_sched_events, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %242, !prof !12

241:                                              ; preds = %238
  call void @__perf_event_task_sched_out(ptr noundef %11, ptr noundef %170) #28
  br label %242

242:                                              ; preds = %241, %238
  %243 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 135
  %244 = load i32, ptr %243, align 4
  %245 = or i32 %244, 1
  store i32 %245, ptr %243, align 4
  %246 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 133
  %247 = load ptr, ptr %246, align 8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %250, label %249

249:                                              ; preds = %242
  call void @_set_bit(i32 noundef 2, ptr noundef %11) #28
  br label %250

250:                                              ; preds = %249, %242
  %251 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 148
  %252 = load i32, ptr %251, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %255, label %254, !prof !11

254:                                              ; preds = %250
  call void @__kmap_local_sched_out() #28
  br label %255

255:                                              ; preds = %254, %250
  %256 = getelementptr inbounds %struct.task_struct, ptr %170, i32 0, i32 6
  store volatile i32 1, ptr %256, align 4
  %257 = getelementptr inbounds %struct.task_struct, ptr %170, i32 0, i32 37
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  %260 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 38
  %261 = load ptr, ptr %260, align 8
  br i1 %259, label %262, label %272

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.task_struct, ptr %170, i32 0, i32 38
  store ptr %261, ptr %263, align 8
  %264 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 37
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %262
  %268 = load ptr, ptr %260, align 8
  %269 = getelementptr inbounds %struct.anon, ptr %268, i32 0, i32 11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %269) #28, !srcloc !29
  %270 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %269, ptr %269, i32 1, ptr elementtype(i32) %269) #28, !srcloc !92
  br label %300

271:                                              ; preds = %262
  store ptr null, ptr %260, align 8
  br label %300

272:                                              ; preds = %255
  %273 = icmp eq ptr %261, %258
  br i1 %273, label %283, label %274

274:                                              ; preds = %272
  %275 = getelementptr inbounds %struct.anon, ptr %258, i32 0, i32 9
  %276 = load volatile i32, ptr %275, align 4
  %277 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 28
  %278 = load volatile i32, ptr %277, align 4
  %279 = icmp eq i32 %278, %276
  br i1 %279, label %283, label %280

280:                                              ; preds = %274
  store volatile i32 %276, ptr %277, align 4
  %281 = load ptr, ptr %260, align 8
  %282 = load ptr, ptr %257, align 4
  br label %283

283:                                              ; preds = %280, %274, %272
  %284 = phi ptr [ %258, %272 ], [ %258, %274 ], [ %282, %280 ]
  %285 = phi ptr [ %258, %272 ], [ %261, %274 ], [ %281, %280 ]
  %286 = load i32, ptr %4, align 8
  %287 = getelementptr inbounds %struct.mm_struct, ptr %284, i32 0, i32 1
  %288 = call i32 @_test_and_set_bit(i32 noundef %286, ptr noundef %287) #28
  %289 = icmp ne i32 %288, 0
  %290 = icmp eq ptr %285, %284
  %291 = and i1 %290, %289
  br i1 %291, label %293, label %292

292:                                              ; preds = %283
  call void @check_and_switch_context(ptr noundef %284, ptr noundef %170) #28
  br label %293

293:                                              ; preds = %292, %283
  %294 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 37
  %295 = load ptr, ptr %294, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load ptr, ptr %260, align 8
  %299 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 18
  store ptr %298, ptr %299, align 4
  store ptr null, ptr %260, align 8
  br label %300

300:                                              ; preds = %297, %293, %271, %267
  %301 = load i32, ptr %27, align 32
  %302 = and i32 %301, -4
  store i32 %302, ptr %27, align 32
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %300
  store i32 4, ptr %30, align 4
  br label %305

305:                                              ; preds = %304, %300
  %306 = call i32 @llvm.read_register.i32(metadata !0) #28
  %307 = inttoptr i32 %306 to ptr
  %308 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %307) #24, !srcloc !13
  %309 = add i32 %308, ptrtoint (ptr @__entry_task to i32)
  %310 = inttoptr i32 %309 to ptr
  store ptr %170, ptr %310, align 4
  %311 = call ptr @__switch_to(ptr noundef %11, ptr noundef %11, ptr noundef %170) #28
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !97
  call fastcc void @finish_task_switch(ptr noundef %311) #28
  br label %330

312:                                              ; preds = %169
  %313 = load i32, ptr %27, align 32
  %314 = and i32 %313, -4
  store i32 %314, ptr %27, align 32
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %312
  store i32 4, ptr %30, align 4
  br label %317

317:                                              ; preds = %316, %312
  %318 = load ptr, ptr %31, align 8
  %319 = icmp eq ptr %318, null
  br i1 %319, label %327, label %320

320:                                              ; preds = %317
  store ptr null, ptr %31, align 8
  br label %321

321:                                              ; preds = %321, %320
  %322 = phi ptr [ %325, %321 ], [ %318, %320 ]
  %323 = getelementptr inbounds %struct.callback_head, ptr %322, i32 0, i32 1
  %324 = load ptr, ptr %323, align 4
  %325 = load ptr, ptr %322, align 4
  store ptr null, ptr %322, align 4
  call void %324(ptr noundef %9) #28
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %321

327:                                              ; preds = %321, %317
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %328 = load i16, ptr %9, align 4
  %329 = add i16 %328, 1
  store i16 %329, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #28, !srcloc !40
  br label %330

330:                                              ; preds = %327, %305
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @schedule() #0 section ".sched.text" {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 48
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = and i32 %7, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @wq_worker_sleeping(ptr noundef %1) #28
  br label %15

14:                                               ; preds = %10
  tail call void @io_wq_worker_sleeping(ptr noundef %1) #28
  br label %15

15:                                               ; preds = %14, %13, %5
  %16 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 112
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 115
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.blk_plug, ptr %21, i32 0, i32 7
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %23
  tail call void @blk_flush_plug(ptr noundef nonnull %21, i1 noundef zeroext true) #28
  br label %31

31:                                               ; preds = %30, %26, %19, %15, %0
  br label %32

32:                                               ; preds = %32, %31
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !98
  tail call fastcc void @__schedule(i32 noundef 0)
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !99
  %33 = load volatile i32, ptr %1, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %32

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 48
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = and i32 %38, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @wq_worker_running(ptr noundef %1) #28
  br label %46

45:                                               ; preds = %41
  tail call void @io_wq_worker_running(ptr noundef %1) #28
  br label %46

46:                                               ; preds = %45, %44, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @schedule_idle() local_unnamed_addr #0 section ".sched.text" {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @schedule_idle.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !12

8:                                                ; preds = %0
  store i1 true, ptr @schedule_idle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6403, i32 noundef 9, ptr noundef null) #28
  br label %9

9:                                                ; preds = %8, %0
  br label %10

10:                                               ; preds = %10, %9
  tail call fastcc void @__schedule(i32 noundef 0)
  %11 = load volatile i32, ptr %1, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @schedule_preempt_disabled() local_unnamed_addr #0 section ".sched.text" {
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !100
  tail call void @schedule()
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @preempt_schedule_irq() local_unnamed_addr #0 section ".sched.text" {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9, !prof !11

5:                                                ; preds = %0
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #28, !srcloc !102
  %7 = and i32 %6, 128
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %5, %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 6712, 0\0A.popsection", ""() #28, !srcloc !103
  unreachable

10:                                               ; preds = %10, %5
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !104
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #28, !srcloc !40
  tail call fastcc void @__schedule(i32 noundef 1)
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #28, !srcloc !91
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !105
  %11 = load volatile i32, ptr %1, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @default_wake_function(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  %5 = and i32 %2, -17
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @default_wake_function.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !12

10:                                               ; preds = %4
  store i1 true, ptr @default_wake_function.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6730, i32 noundef 9, ptr noundef null) #28
  br label %11

11:                                               ; preds = %10, %4
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = tail call fastcc i32 @try_to_wake_up(ptr noundef %13, i32 noundef %1, i32 noundef %2)
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rt_mutex_setprio(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rq_flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !annotation !10
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %9 = load i32, ptr %8, align 16
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %5) #28
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i32 [ %10, %7 ], [ %5, %2 ]
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 111
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %18 = load i32, ptr %17, align 16
  %19 = icmp eq i32 %12, %18
  %20 = icmp sgt i32 %12, -1
  %21 = and i1 %20, %19
  br i1 %21, label %196, label %22

22:                                               ; preds = %16, %11
  %23 = call ptr @__task_rq_lock(ptr noundef %0, ptr noundef nonnull %3)
  tail call void @update_rq_clock(ptr noundef %23)
  store ptr %1, ptr %13, align 4
  %24 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %25 = load i32, ptr %24, align 16
  %26 = icmp eq i32 %12, %25
  %27 = icmp sgt i32 %12, -1
  %28 = and i1 %27, %26
  br i1 %28, label %182, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 15
  %31 = load ptr, ptr %30, align 16
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %43, !prof !12

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 14
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %38, label %37, !prof !11

37:                                               ; preds = %33
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6825, i32 noundef 9, ptr noundef null) #28
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 112
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %182, label %42, !prof !11

42:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 6826, i32 noundef 9, ptr noundef null) #28
  br label %182

43:                                               ; preds = %29
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_pi_setprio, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = tail call ptr @llvm.thread.pointer() #28
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !106
  %58 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_pi_setprio, i32 0, i32 7), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %60, %57
  %61 = phi ptr [ %65, %60 ], [ %58, %57 ]
  %62 = load volatile ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.tracepoint_func, ptr %61, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void %62(ptr noundef %64, ptr noundef %0, ptr noundef %1) #28
  %65 = getelementptr %struct.tracepoint_func, ptr %61, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %60

68:                                               ; preds = %60, %57
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !107
  %69 = load i32, ptr %24, align 16
  br label %70

70:                                               ; preds = %68, %46, %43
  %71 = phi i32 [ %25, %43 ], [ %25, %46 ], [ %69, %68 ]
  %72 = icmp eq i32 %71, %12
  %73 = select i1 %72, i32 10, i32 14
  %74 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 1
  %79 = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 14
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, %0
  br i1 %78, label %82, label %85

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.sched_class, ptr %75, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  tail call void %84(ptr noundef %23, ptr noundef %0, i32 noundef %73) #28
  br label %85

85:                                               ; preds = %82, %70
  br i1 %81, label %86, label %97

86:                                               ; preds = %85
  %87 = load ptr, ptr %79, align 4
  %88 = icmp ne ptr %87, %0
  %89 = load i1, ptr @put_prev_task.__already_done, align 1
  %90 = xor i1 %89, true
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %93, !prof !12

92:                                               ; preds = %86
  store i1 true, ptr @put_prev_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 2190, i32 noundef 9, ptr noundef null) #28
  br label %93

93:                                               ; preds = %92, %86
  %94 = load ptr, ptr %74, align 8
  %95 = getelementptr inbounds %struct.sched_class, ptr %94, i32 0, i32 6
  %96 = load ptr, ptr %95, align 4
  tail call void %96(ptr noundef %23, ptr noundef %0) #28
  br label %97

97:                                               ; preds = %93, %85
  br i1 %27, label %126, label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %4, align 8
  %100 = icmp sgt i32 %99, -1
  br i1 %100, label %118, label %101

101:                                              ; preds = %98
  br i1 %6, label %123, label %102

102:                                              ; preds = %101
  %103 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 14
  %104 = load i32, ptr %103, align 16
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %123, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 8
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 268435456
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 7
  %113 = load i64, ptr %112, align 8
  %114 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 7
  %115 = load i64, ptr %114, align 8
  %116 = sub i64 %113, %115
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111, %106, %98
  %119 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 21, i32 12
  %120 = load ptr, ptr %119, align 16
  %121 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 12
  store ptr %120, ptr %121, align 16
  %122 = or i32 %73, 32
  br label %145

123:                                              ; preds = %111, %102, %101
  %124 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21
  %125 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 12
  store ptr %124, ptr %125, align 16
  br label %145

126:                                              ; preds = %97
  %127 = icmp ugt i32 %12, 99
  %128 = icmp sgt i32 %71, -1
  br i1 %127, label %133, label %129

129:                                              ; preds = %126
  br i1 %128, label %141, label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21
  %132 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 12
  store ptr %131, ptr %132, align 16
  br label %141

133:                                              ; preds = %126
  br i1 %128, label %137, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21
  %136 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21, i32 12
  store ptr %135, ptr %136, align 16
  br label %139

137:                                              ; preds = %133
  %138 = icmp ugt i32 %71, 99
  br i1 %138, label %145, label %139

139:                                              ; preds = %137, %134
  %140 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 20, i32 1
  store i32 0, ptr %140, align 8
  br label %145

141:                                              ; preds = %130, %129
  %142 = icmp slt i32 %71, %12
  %143 = or i32 %73, 16
  %144 = select i1 %142, i32 %143, i32 %73
  br label %145

145:                                              ; preds = %141, %139, %137, %123, %118
  %146 = phi ptr [ @rt_sched_class, %141 ], [ @dl_sched_class, %123 ], [ @dl_sched_class, %118 ], [ @fair_sched_class, %139 ], [ @fair_sched_class, %137 ]
  %147 = phi i32 [ %144, %141 ], [ %73, %123 ], [ %122, %118 ], [ %73, %139 ], [ %73, %137 ]
  store ptr %146, ptr %74, align 8
  store i32 %12, ptr %24, align 16
  br i1 %78, label %148, label %156

148:                                              ; preds = %145
  %149 = and i32 %147, 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  tail call void @update_rq_clock(ptr noundef %23) #28
  %152 = load ptr, ptr %74, align 8
  br label %153

153:                                              ; preds = %151, %148
  %154 = phi ptr [ %146, %148 ], [ %152, %151 ]
  %155 = load ptr, ptr %154, align 4
  tail call void %155(ptr noundef %23, ptr noundef %0, i32 noundef %147) #28
  br label %156

156:                                              ; preds = %153, %145
  br i1 %81, label %157, label %161

157:                                              ; preds = %156
  %158 = load ptr, ptr %74, align 8
  %159 = getelementptr inbounds %struct.sched_class, ptr %158, i32 0, i32 7
  %160 = load ptr, ptr %159, align 4
  tail call void %160(ptr noundef %23, ptr noundef %0, i1 noundef zeroext false) #28
  br label %161

161:                                              ; preds = %157, %156
  %162 = load ptr, ptr %74, align 8
  %163 = icmp eq ptr %162, %75
  br i1 %163, label %174, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.sched_class, ptr %75, i32 0, i32 20
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  tail call void %166(ptr noundef %23, ptr noundef %0) #28
  %169 = load ptr, ptr %74, align 8
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi ptr [ %169, %168 ], [ %162, %164 ]
  %172 = getelementptr inbounds %struct.sched_class, ptr %171, i32 0, i32 21
  %173 = load ptr, ptr %172, align 4
  tail call void %173(ptr noundef %23, ptr noundef %0) #28
  br label %182

174:                                              ; preds = %161
  %175 = load i32, ptr %24, align 16
  %176 = icmp eq i32 %175, %71
  %177 = icmp sgt i32 %175, -1
  %178 = and i1 %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.sched_class, ptr %75, i32 0, i32 22
  %181 = load ptr, ptr %180, align 4
  tail call void %181(ptr noundef %23, ptr noundef %0, i32 noundef %71) #28
  br label %182

182:                                              ; preds = %179, %174, %170, %42, %38, %22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !108
  %183 = getelementptr inbounds %struct.rq, ptr %23, i32 0, i32 33
  %184 = load ptr, ptr %183, align 8
  %185 = icmp eq ptr %184, null
  br i1 %185, label %193, label %186

186:                                              ; preds = %182
  store ptr null, ptr %183, align 8
  br label %187

187:                                              ; preds = %187, %186
  %188 = phi ptr [ %191, %187 ], [ %184, %186 ]
  %189 = getelementptr inbounds %struct.callback_head, ptr %188, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = load ptr, ptr %188, align 4
  store ptr null, ptr %188, align 4
  tail call void %190(ptr noundef %23) #28
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %187

193:                                              ; preds = %187, %182
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %194 = load i16, ptr %23, align 4
  %195 = add i16 %194, 1
  store i16 %195, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !109
  br label %196

196:                                              ; preds = %193, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_user_nice(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.rq_flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !annotation !10
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -120
  %7 = icmp eq i32 %6, %1
  %8 = add i32 %1, -20
  %9 = icmp ult i32 %8, -40
  %10 = or i1 %9, %7
  br i1 %10, label %99, label %11

11:                                               ; preds = %2
  %12 = call ptr @task_rq_lock(ptr noundef %0, ptr noundef nonnull %3)
  tail call void @update_rq_clock(ptr noundef %12)
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %14 = load i32, ptr %13, align 64
  switch i32 %14, label %17 [
    i32 6, label %15
    i32 2, label %15
    i32 1, label %15
  ]

15:                                               ; preds = %11, %11, %11
  %16 = add nsw i32 %1, 120
  store i32 %16, ptr %4, align 4
  br label %94

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  %21 = getelementptr inbounds %struct.rq, ptr %12, i32 0, i32 14
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %20, label %24, label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.sched_class, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %28(ptr noundef %12, ptr noundef %0, i32 noundef 10) #28
  br label %29

29:                                               ; preds = %24, %17
  br i1 %23, label %30, label %42

30:                                               ; preds = %29
  %31 = load ptr, ptr %21, align 4
  %32 = icmp ne ptr %31, %0
  %33 = load i1, ptr @put_prev_task.__already_done, align 1
  %34 = xor i1 %33, true
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37, !prof !12

36:                                               ; preds = %30
  store i1 true, ptr @put_prev_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 2190, i32 noundef 9, ptr noundef null) #28
  br label %37

37:                                               ; preds = %36, %30
  %38 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.sched_class, ptr %39, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %12, ptr noundef %0) #28
  br label %42

42:                                               ; preds = %37, %29
  %43 = add nsw i32 %1, 120
  store i32 %43, ptr %4, align 4
  %44 = add nsw i32 %1, 20
  %45 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %46 = load i32, ptr %13, align 64
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  store i32 3, ptr %45, align 4
  %49 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 0, i32 1
  store i32 1431655765, ptr %49, align 4
  br label %63

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, @fair_sched_class
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  tail call void @reweight_task(ptr noundef %0, i32 noundef %44) #28
  %55 = load i32, ptr %13, align 64
  %56 = load i32, ptr %4, align 4
  br label %63

57:                                               ; preds = %50
  %58 = getelementptr [40 x i32], ptr @sched_prio_to_weight, i32 0, i32 %44
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %45, align 4
  %60 = getelementptr [40 x i32], ptr @sched_prio_to_wmult, i32 0, i32 %44
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %57, %54, %48
  %64 = phi i32 [ %43, %48 ], [ %56, %54 ], [ %43, %57 ]
  %65 = phi i32 [ 5, %48 ], [ %55, %54 ], [ %46, %57 ]
  %66 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %67 = load i32, ptr %66, align 16
  %68 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 17
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %65, 6
  %71 = add i32 %65, -3
  %72 = icmp ult i32 %71, -2
  %73 = sub i32 99, %69
  %74 = select i1 %72, i32 %64, i32 %73
  %75 = select i1 %70, i32 -1, i32 %74
  %76 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 16
  store i32 %75, ptr %76, align 8
  %77 = icmp sgt i32 %67, 99
  %78 = select i1 %77, i32 %75, i32 %67
  store i32 %78, ptr %66, align 16
  br i1 %20, label %79, label %83

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef %12, ptr noundef %0, i32 noundef 10) #28
  br label %83

83:                                               ; preds = %79, %63
  br i1 %23, label %84, label %89

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.sched_class, ptr %86, i32 0, i32 7
  %88 = load ptr, ptr %87, align 4
  tail call void %88(ptr noundef %12, ptr noundef %0, i1 noundef zeroext false) #28
  br label %89

89:                                               ; preds = %84, %83
  %90 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.sched_class, ptr %91, i32 0, i32 22
  %93 = load ptr, ptr %92, align 4
  tail call void %93(ptr noundef %12, ptr noundef %0, i32 noundef %67) #28
  br label %94

94:                                               ; preds = %89, %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %95 = load i16, ptr %12, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %97 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %98 = load i32, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %98) #28
  br label %99

99:                                               ; preds = %94, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @can_nice(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sub i32 20, %1
  %4 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %5 = load ptr, ptr %4, align 16
  %6 = getelementptr %struct.signal_struct, ptr %5, i32 0, i32 50, i32 13
  %7 = load volatile i32, ptr %6, align 8
  %8 = icmp ugt i32 %3, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = tail call zeroext i1 @capable(i32 noundef 23) #28
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ 1, %2 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_nice(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 -40) #28
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 40) #28
  %4 = tail call ptr @llvm.thread.pointer() #28
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = add nsw i32 %3, -120
  %8 = add i32 %7, %6
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 -20) #28
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 19) #28
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = sub nsw i32 20, %10
  %14 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 93
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 50, i32 13
  %17 = load volatile i32, ptr %16, align 8
  %18 = icmp ugt i32 %13, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call zeroext i1 @capable(i32 noundef 23) #28
  br i1 %20, label %21, label %25

21:                                               ; preds = %19, %12, %1
  %22 = tail call i32 @cap_task_setnice(ptr noundef %4, i32 noundef %10) #28
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  tail call void @set_user_nice(ptr noundef %4, i32 noundef %10) #28
  br label %25

25:                                               ; preds = %24, %21, %19
  %26 = phi i32 [ 0, %24 ], [ -1, %19 ], [ %22, %21 ]
  ret i32 %26
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @task_prio(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 16
  %4 = add i32 %3, -100
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @available_idle_cpu(i32 noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 15
  %9 = load ptr, ptr %8, align 16
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 7
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %15, %11, %1
  %21 = phi i32 [ 0, %1 ], [ 0, %11 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @idle_task(i32 noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 16
  ret ptr %7
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @effective_cpu_util(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture readnone %4) local_unnamed_addr #17 {
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 11, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 11, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15, %11
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %51, label %23, !prof !12

21:                                               ; preds = %5
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %51, label %31, !prof !12

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 44, i32 7
  %25 = load volatile i32, ptr %24, align 8
  %26 = add i32 %25, %1
  %27 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 45, i32 7
  %28 = load volatile i32, ptr %27, align 8
  %29 = add i32 %26, %28
  %30 = icmp ult i32 %29, %2
  br i1 %30, label %42, label %51

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 44, i32 7
  %33 = load volatile i32, ptr %32, align 8
  %34 = add i32 %33, %1
  %35 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 45, i32 7
  %36 = load volatile i32, ptr %35, align 8
  %37 = add i32 %34, %36
  %38 = icmp ult i32 %37, %2
  br i1 %38, label %39, label %51

39:                                               ; preds = %31
  %40 = icmp eq i32 %3, 1
  %41 = select i1 %40, i32 %37, i32 %34
  br label %48

42:                                               ; preds = %23
  %43 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 12, i32 6
  %44 = load i64, ptr %43, align 8
  %45 = lshr i64 %44, 10
  %46 = trunc i64 %45 to i32
  %47 = add i32 %26, %46
  br label %48

48:                                               ; preds = %42, %39
  %49 = phi i32 [ %47, %42 ], [ %41, %39 ]
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 %2)
  br label %51

51:                                               ; preds = %48, %31, %23, %21, %19, %15
  %52 = phi i32 [ %50, %48 ], [ %2, %15 ], [ 0, %19 ], [ %2, %23 ], [ 0, %21 ], [ %2, %31 ]
  ret i32 %52
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @sched_cpu_util(i32 noundef %0, i32 noundef %1) local_unnamed_addr #17 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 10, i32 15, i32 7
  %8 = load volatile i32, ptr %7, align 8
  %9 = load i32, ptr @sysctl_sched_features, align 4
  %10 = and i32 %9, 1048576
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 10, i32 15, i32 9
  %14 = load volatile i32, ptr %13, align 16
  %15 = tail call i32 @llvm.umax.i32(i32 %8, i32 %14) #28
  br label %16

16:                                               ; preds = %12, %2
  %17 = phi i32 [ %15, %12 ], [ %8, %2 ]
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %30, label %19, !prof !12

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 32
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %17, i32 %21) #28
  %23 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 44, i32 7
  %24 = load volatile i32, ptr %23, align 8
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 45, i32 7
  %27 = load volatile i32, ptr %26, align 8
  %28 = add i32 %25, %27
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %1)
  br label %30

30:                                               ; preds = %19, %16
  %31 = phi i32 [ 0, %16 ], [ %29, %19 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_setscheduler(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.sched_attr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #28
  %5 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28
  store i32 %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 3
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -120
  store i32 %9, ptr %6, align 8
  %10 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 4
  %11 = load i32, ptr %2, align 4
  store i32 %11, ptr %10, align 4
  %12 = icmp eq i32 %1, -1
  %13 = and i32 %1, 1073741824
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 2
  store i64 1, ptr %17, align 8
  %18 = and i32 %1, -1073741825
  store i32 %18, ptr %5, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = call fastcc i32 @__sched_setscheduler(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext true, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #28
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_setattr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @__sched_setscheduler(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__sched_setscheduler(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.rq_flags, align 8
  %6 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  store i64 0, ptr %5, align 8, !annotation !10
  br i1 %3, label %19, label %8

8:                                                ; preds = %19, %4
  %9 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 47
  %11 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %12 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 4
  %13 = getelementptr inbounds %struct.sched_attr, ptr %1, i32 0, i32 3
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 93
  %16 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 17
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 82
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  br label %32

19:                                               ; preds = %4
  %20 = tail call ptr @llvm.thread.pointer() #28
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %22, 15728640
  %24 = load volatile i32, ptr %21, align 4
  %25 = and i32 %24, 983040
  %26 = or i32 %25, %23
  %27 = load volatile i32, ptr %21, align 4
  %28 = and i32 %27, 65280
  %29 = or i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %8, label %31, !prof !11

31:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 7257, 0\0A.popsection", ""() #28, !srcloc !110
  unreachable

32:                                               ; preds = %211, %8
  %33 = phi i32 [ -1, %211 ], [ %7, %8 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i8, ptr %10, align 4
  %37 = and i8 %36, 1
  %38 = zext i8 %37 to i32
  %39 = load i32, ptr %11, align 64
  %40 = load i64, ptr %9, align 8
  br label %45

41:                                               ; preds = %32
  %42 = load i64, ptr %9, align 8
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 1
  switch i32 %33, label %413 [
    i32 5, label %45
    i32 3, label %45
    i32 0, label %45
    i32 6, label %45
    i32 2, label %45
    i32 1, label %45
  ]

45:                                               ; preds = %41, %41, %41, %41, %41, %41, %35
  %46 = phi i64 [ %40, %35 ], [ %42, %41 ], [ %42, %41 ], [ %42, %41 ], [ %42, %41 ], [ %42, %41 ], [ %42, %41 ]
  %47 = phi i32 [ %39, %35 ], [ -1, %41 ], [ -1, %41 ], [ -1, %41 ], [ -1, %41 ], [ -1, %41 ], [ -1, %41 ]
  %48 = phi i32 [ %39, %35 ], [ %33, %41 ], [ %33, %41 ], [ %33, %41 ], [ %33, %41 ], [ %33, %41 ], [ %33, %41 ]
  %49 = phi i32 [ %38, %35 ], [ %44, %41 ], [ %44, %41 ], [ %44, %41 ], [ %44, %41 ], [ %44, %41 ], [ %44, %41 ]
  %50 = and i64 %46, -268435584
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %413

52:                                               ; preds = %45
  %53 = load i32, ptr %12, align 4
  %54 = icmp ugt i32 %53, 99
  br i1 %54, label %413, label %55

55:                                               ; preds = %52
  %56 = icmp eq i32 %48, 6
  %57 = xor i1 %56, true
  br i1 %56, label %58, label %63

58:                                               ; preds = %55
  %59 = tail call zeroext i1 @__checkparam_dl(ptr noundef %1) #28
  br i1 %59, label %60, label %413

60:                                               ; preds = %58
  %61 = load i32, ptr %12, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %413

63:                                               ; preds = %55
  %64 = add i32 %48, -1
  %65 = icmp ult i32 %64, 2
  %66 = icmp eq i32 %53, 0
  %67 = xor i1 %65, %66
  br i1 %67, label %68, label %413

68:                                               ; preds = %63, %60
  %69 = phi i1 [ false, %60 ], [ %65, %63 ]
  br i1 %2, label %70, label %147

70:                                               ; preds = %68
  %71 = tail call zeroext i1 @capable(i32 noundef 23) #28
  br i1 %71, label %140, label %72

72:                                               ; preds = %70
  switch i32 %48, label %86 [
    i32 3, label %73
    i32 0, label %73
  ]

73:                                               ; preds = %72, %72
  %74 = load i32, ptr %13, align 8
  %75 = load i32, ptr %14, align 4
  %76 = add i32 %75, -120
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = sub i32 20, %74
  %80 = load ptr, ptr %15, align 16
  %81 = getelementptr %struct.signal_struct, ptr %80, i32 0, i32 50, i32 13
  %82 = load volatile i32, ptr %81, align 8
  %83 = icmp ugt i32 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = tail call zeroext i1 @capable(i32 noundef 23) #28
  br i1 %85, label %86, label %413

86:                                               ; preds = %84, %78, %73, %72
  br i1 %69, label %87, label %102

87:                                               ; preds = %86
  %88 = load ptr, ptr %15, align 16
  %89 = getelementptr %struct.signal_struct, ptr %88, i32 0, i32 50, i32 14
  %90 = load volatile i32, ptr %89, align 8
  %91 = load i32, ptr %11, align 64
  %92 = icmp eq i32 %48, %91
  %93 = icmp ne i32 %90, 0
  %94 = select i1 %92, i1 true, i1 %93
  br i1 %94, label %95, label %413

95:                                               ; preds = %87
  %96 = load i32, ptr %12, align 4
  %97 = load i32, ptr %16, align 4
  %98 = icmp ugt i32 %96, %97
  %99 = icmp ugt i32 %96, %90
  %100 = select i1 %98, i1 %99, i1 false
  %101 = select i1 %100, i1 true, i1 %56
  br i1 %101, label %413, label %105

102:                                              ; preds = %86
  br i1 %56, label %413, label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %11, align 64
  br label %105

105:                                              ; preds = %103, %95
  %106 = phi i32 [ %104, %103 ], [ %91, %95 ]
  %107 = icmp ne i32 %106, 5
  %108 = icmp eq i32 %48, 5
  %109 = select i1 %107, i1 true, i1 %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %14, align 4
  %112 = sub i32 140, %111
  %113 = load ptr, ptr %15, align 16
  %114 = getelementptr %struct.signal_struct, ptr %113, i32 0, i32 50, i32 13
  %115 = load volatile i32, ptr %114, align 8
  %116 = icmp ugt i32 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = tail call zeroext i1 @capable(i32 noundef 23) #28
  br i1 %118, label %119, label %413

119:                                              ; preds = %117, %110, %105
  %120 = tail call ptr @llvm.thread.pointer() #28
  %121 = getelementptr inbounds %struct.task_struct, ptr %120, i32 0, i32 83
  %122 = load ptr, ptr %121, align 8
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %123 = load volatile ptr, ptr %17, align 4
  %124 = getelementptr inbounds %struct.cred, ptr %122, i32 0, i32 5
  %125 = getelementptr inbounds %struct.cred, ptr %123, i32 0, i32 5
  %126 = load i32, ptr %124, align 4
  %127 = load i32, ptr %125, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %134

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.cred, ptr %123, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %126, %132
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br i1 %133, label %134, label %413

134:                                              ; preds = %130, %129
  %135 = load i8, ptr %10, align 4
  %136 = and i8 %135, 1
  %137 = icmp eq i8 %136, 0
  %138 = icmp ne i32 %49, 0
  %139 = select i1 %137, i1 true, i1 %138
  br i1 %139, label %140, label %413

140:                                              ; preds = %134, %70
  %141 = load i64, ptr %9, align 8
  %142 = and i64 %141, 268435456
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %413

144:                                              ; preds = %140
  %145 = tail call i32 @cap_task_setscheduler(ptr noundef %0) #28
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %413

147:                                              ; preds = %144, %68
  %148 = load i64, ptr %9, align 8
  %149 = and i64 %148, 96
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %413

151:                                              ; preds = %147
  %152 = call ptr @task_rq_lock(ptr noundef %0, ptr noundef nonnull %5)
  tail call void @update_rq_clock(ptr noundef %152)
  %153 = getelementptr inbounds %struct.rq, ptr %152, i32 0, i32 16
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, %0
  br i1 %155, label %401, label %156

156:                                              ; preds = %151
  %157 = load i32, ptr %11, align 64
  %158 = icmp eq i32 %48, %157
  br i1 %158, label %159, label %182, !prof !12

159:                                              ; preds = %156
  switch i32 %48, label %165 [
    i32 3, label %160
    i32 0, label %160
  ]

160:                                              ; preds = %159, %159
  %161 = load i32, ptr %13, align 8
  %162 = load i32, ptr %14, align 4
  %163 = add i32 %162, -120
  %164 = icmp eq i32 %161, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %160, %159
  br i1 %69, label %166, label %170

166:                                              ; preds = %165
  %167 = load i32, ptr %12, align 4
  %168 = load i32, ptr %16, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %166, %165
  br i1 %56, label %171, label %173

171:                                              ; preds = %170
  %172 = tail call zeroext i1 @dl_param_changed(ptr noundef %0, ptr noundef %1) #28
  br i1 %172, label %182, label %173

173:                                              ; preds = %171, %170
  %174 = load i64, ptr %9, align 8
  %175 = and i64 %174, 96
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = trunc i32 %49 to i8
  %179 = load i8, ptr %10, align 4
  %180 = and i8 %179, -2
  %181 = or i8 %180, %178
  store i8 %181, ptr %10, align 4
  br label %401

182:                                              ; preds = %173, %171, %166, %160, %156
  br i1 %2, label %183, label %206

183:                                              ; preds = %182
  %184 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %185 = icmp slt i32 %184, 0
  %186 = select i1 %185, i1 true, i1 %57
  br i1 %186, label %206, label %187

187:                                              ; preds = %183
  %188 = load i64, ptr %9, align 8
  %189 = and i64 %188, 268435456
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.rq, ptr %152, i32 0, i32 29
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.root_domain, ptr %193, i32 0, i32 3
  %195 = load ptr, ptr %18, align 8
  %196 = load i32, ptr %194, align 4
  %197 = load i32, ptr %195, align 4
  %198 = xor i32 %197, -1
  %199 = and i32 %196, 65535
  %200 = and i32 %199, %198
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %401

202:                                              ; preds = %191
  %203 = getelementptr inbounds %struct.root_domain, ptr %193, i32 0, i32 9, i32 1
  %204 = load i64, ptr %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %401, label %206

206:                                              ; preds = %202, %187, %183, %182
  %207 = icmp eq i32 %47, -1
  br i1 %207, label %212, label %208

208:                                              ; preds = %206
  %209 = load i32, ptr %11, align 64
  %210 = icmp eq i32 %47, %209
  br i1 %210, label %212, label %211, !prof !11

211:                                              ; preds = %208
  call fastcc void @task_rq_unlock(ptr noundef %152, ptr noundef %0, ptr noundef nonnull %5)
  br label %32

212:                                              ; preds = %208, %206
  br i1 %56, label %223, label %213

213:                                              ; preds = %212
  %214 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %215 = load i32, ptr %214, align 16
  %216 = icmp sgt i32 %215, -1
  br i1 %216, label %217, label %223

217:                                              ; preds = %213
  %218 = trunc i32 %49 to i8
  %219 = load i8, ptr %10, align 4
  %220 = and i8 %219, -2
  %221 = or i8 %220, %218
  store i8 %221, ptr %10, align 4
  %222 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  br label %234

223:                                              ; preds = %213, %212
  %224 = tail call i32 @sched_dl_overflow(ptr noundef %0, i32 noundef %48, ptr noundef %1) #28
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %401

226:                                              ; preds = %223
  %227 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %228 = load i32, ptr %227, align 16
  %229 = trunc i32 %49 to i8
  %230 = load i8, ptr %10, align 4
  %231 = and i8 %230, -2
  %232 = or i8 %231, %229
  store i8 %232, ptr %10, align 4
  %233 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  br i1 %56, label %245, label %234

234:                                              ; preds = %226, %217
  %235 = phi ptr [ %222, %217 ], [ %233, %226 ]
  %236 = phi i32 [ %215, %217 ], [ %228, %226 ]
  %237 = add i32 %48, -3
  %238 = icmp ult i32 %237, -2
  br i1 %238, label %242, label %239

239:                                              ; preds = %234
  %240 = load i32, ptr %12, align 4
  %241 = sub i32 99, %240
  br label %245

242:                                              ; preds = %234
  %243 = load i32, ptr %13, align 8
  %244 = add i32 %243, 120
  br label %245

245:                                              ; preds = %242, %239, %226
  %246 = phi ptr [ %235, %239 ], [ %235, %242 ], [ %233, %226 ]
  %247 = phi i32 [ %236, %239 ], [ %236, %242 ], [ %228, %226 ]
  %248 = phi i32 [ %241, %239 ], [ %244, %242 ], [ -1, %226 ]
  br i1 %3, label %249, label %261

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 111
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.task_struct, ptr %251, i32 0, i32 14
  %255 = load i32, ptr %254, align 16
  %256 = tail call i32 @llvm.smin.i32(i32 %255, i32 %248) #28
  br label %257

257:                                              ; preds = %253, %249
  %258 = phi i32 [ %256, %253 ], [ %248, %249 ]
  %259 = icmp eq i32 %258, %247
  %260 = select i1 %259, i32 10, i32 14
  br label %261

261:                                              ; preds = %257, %245
  %262 = phi i32 [ %248, %245 ], [ %258, %257 ]
  %263 = phi i32 [ 14, %245 ], [ %260, %257 ]
  %264 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %265 = load i32, ptr %264, align 4
  %266 = icmp eq i32 %265, 1
  %267 = getelementptr inbounds %struct.rq, ptr %152, i32 0, i32 14
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, %0
  br i1 %266, label %270, label %275

270:                                              ; preds = %261
  %271 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %272 = load ptr, ptr %271, align 8
  %273 = getelementptr inbounds %struct.sched_class, ptr %272, i32 0, i32 1
  %274 = load ptr, ptr %273, align 4
  tail call void %274(ptr noundef %152, ptr noundef %0, i32 noundef %263) #28
  br label %275

275:                                              ; preds = %270, %261
  br i1 %269, label %276, label %288

276:                                              ; preds = %275
  %277 = load ptr, ptr %267, align 4
  %278 = icmp ne ptr %277, %0
  %279 = load i1, ptr @put_prev_task.__already_done, align 1
  %280 = xor i1 %279, true
  %281 = select i1 %278, i1 %280, i1 false
  br i1 %281, label %282, label %283, !prof !12

282:                                              ; preds = %276
  store i1 true, ptr @put_prev_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 2190, i32 noundef 9, ptr noundef null) #28
  br label %283

283:                                              ; preds = %282, %276
  %284 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %285 = load ptr, ptr %284, align 8
  %286 = getelementptr inbounds %struct.sched_class, ptr %285, i32 0, i32 6
  %287 = load ptr, ptr %286, align 4
  tail call void %287(ptr noundef %152, ptr noundef %0) #28
  br label %288

288:                                              ; preds = %283, %275
  %289 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %290 = load ptr, ptr %289, align 8
  %291 = load i64, ptr %9, align 8
  %292 = and i64 %291, 16
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %294, label %337

294:                                              ; preds = %288
  %295 = load i32, ptr %6, align 4
  %296 = icmp eq i32 %295, -1
  br i1 %296, label %297, label %299

297:                                              ; preds = %294
  %298 = load i32, ptr %11, align 64
  br label %299

299:                                              ; preds = %297, %294
  %300 = phi i32 [ %298, %297 ], [ %295, %294 ]
  store i32 %300, ptr %11, align 64
  switch i32 %300, label %306 [
    i32 6, label %301
    i32 3, label %303
    i32 0, label %303
  ]

301:                                              ; preds = %299
  tail call void @__setparam_dl(ptr noundef %0, ptr noundef %1) #28
  %302 = load i32, ptr %11, align 64
  br label %306

303:                                              ; preds = %299, %299
  %304 = load i32, ptr %13, align 8
  %305 = add i32 %304, 120
  store i32 %305, ptr %14, align 4
  br label %306

306:                                              ; preds = %303, %301, %299
  %307 = phi i32 [ %300, %299 ], [ %300, %303 ], [ %302, %301 ]
  %308 = load i32, ptr %12, align 4
  store i32 %308, ptr %16, align 4
  %309 = load i32, ptr %14, align 4
  %310 = icmp eq i32 %307, 6
  %311 = add i32 %307, -3
  %312 = icmp ult i32 %311, -2
  %313 = sub i32 99, %308
  %314 = select i1 %312, i32 %309, i32 %313
  %315 = select i1 %310, i32 -1, i32 %314
  %316 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 16
  store i32 %315, ptr %316, align 8
  %317 = add i32 %309, -100
  %318 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19
  %319 = icmp eq i32 %307, 5
  br i1 %319, label %320, label %322

320:                                              ; preds = %306
  store i32 3, ptr %318, align 4
  %321 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 0, i32 1
  store i32 1431655765, ptr %321, align 4
  br label %332

322:                                              ; preds = %306
  %323 = load ptr, ptr %289, align 8
  %324 = icmp eq ptr %323, @fair_sched_class
  br i1 %324, label %325, label %326

325:                                              ; preds = %322
  tail call void @reweight_task(ptr noundef %0, i32 noundef %317) #28
  br label %332

326:                                              ; preds = %322
  %327 = getelementptr [40 x i32], ptr @sched_prio_to_weight, i32 0, i32 %317
  %328 = load i32, ptr %327, align 4
  store i32 %328, ptr %318, align 4
  %329 = getelementptr [40 x i32], ptr @sched_prio_to_wmult, i32 0, i32 %317
  %330 = load i32, ptr %329, align 4
  %331 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 0, i32 1
  store i32 %330, ptr %331, align 4
  br label %332

332:                                              ; preds = %326, %325, %320
  %333 = icmp sgt i32 %262, -1
  %334 = icmp ugt i32 %262, 99
  %335 = select i1 %334, ptr @fair_sched_class, ptr @rt_sched_class
  %336 = select i1 %333, ptr %335, ptr @dl_sched_class
  store ptr %336, ptr %289, align 8
  store i32 %262, ptr %246, align 16
  br label %337

337:                                              ; preds = %332, %288
  %338 = phi ptr [ %336, %332 ], [ %290, %288 ]
  br i1 %266, label %339, label %345

339:                                              ; preds = %337
  %340 = load i32, ptr %246, align 16
  %341 = icmp slt i32 %247, %340
  %342 = or i32 %263, 16
  %343 = select i1 %341, i32 %342, i32 %263
  %344 = load ptr, ptr %338, align 4
  tail call void %344(ptr noundef %152, ptr noundef %0, i32 noundef %343) #28
  br label %345

345:                                              ; preds = %339, %337
  br i1 %269, label %346, label %350

346:                                              ; preds = %345
  %347 = load ptr, ptr %289, align 8
  %348 = getelementptr inbounds %struct.sched_class, ptr %347, i32 0, i32 7
  %349 = load ptr, ptr %348, align 4
  tail call void %349(ptr noundef %152, ptr noundef %0, i1 noundef zeroext false) #28
  br label %350

350:                                              ; preds = %346, %345
  %351 = load ptr, ptr %289, align 8
  %352 = icmp eq ptr %351, %290
  br i1 %352, label %363, label %353

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.sched_class, ptr %290, i32 0, i32 20
  %355 = load ptr, ptr %354, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %359, label %357

357:                                              ; preds = %353
  tail call void %355(ptr noundef %152, ptr noundef %0) #28
  %358 = load ptr, ptr %289, align 8
  br label %359

359:                                              ; preds = %357, %353
  %360 = phi ptr [ %358, %357 ], [ %351, %353 ]
  %361 = getelementptr inbounds %struct.sched_class, ptr %360, i32 0, i32 21
  %362 = load ptr, ptr %361, align 4
  tail call void %362(ptr noundef %152, ptr noundef %0) #28
  br label %371

363:                                              ; preds = %350
  %364 = load i32, ptr %246, align 16
  %365 = icmp eq i32 %364, %247
  %366 = icmp sgt i32 %364, -1
  %367 = and i1 %365, %366
  br i1 %367, label %371, label %368

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.sched_class, ptr %290, i32 0, i32 22
  %370 = load ptr, ptr %369, align 4
  tail call void %370(ptr noundef %152, ptr noundef %0, i32 noundef %247) #28
  br label %371

371:                                              ; preds = %368, %363, %359
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !111
  %372 = getelementptr inbounds %struct.rq, ptr %152, i32 0, i32 33
  %373 = load ptr, ptr %372, align 8
  %374 = icmp eq ptr %373, null
  br i1 %374, label %376, label %375

375:                                              ; preds = %371
  store ptr null, ptr %372, align 8
  br label %376

376:                                              ; preds = %375, %371
  %377 = getelementptr inbounds %struct.rq, ptr %152, i32 0, i32 19
  %378 = load i32, ptr %377, align 32
  %379 = icmp ugt i32 %378, 2
  br i1 %379, label %380, label %382

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.rq_flags, ptr %5, i32 0, i32 2
  store i32 4, ptr %381, align 4
  br label %382

382:                                              ; preds = %380, %376
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %383 = load i16, ptr %152, align 4
  %384 = add i16 %383, 1
  store i16 %384, ptr %152, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %385 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %386 = load i32, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %385, i32 noundef %386) #28
  br i1 %3, label %387, label %388

387:                                              ; preds = %382
  tail call void @rt_mutex_adjust_pi(ptr noundef %0) #28
  br label %388

388:                                              ; preds = %387, %382
  br i1 %374, label %400, label %389, !prof !11

389:                                              ; preds = %388
  %390 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %152) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  br label %391

391:                                              ; preds = %391, %389
  %392 = phi ptr [ %395, %391 ], [ %373, %389 ]
  %393 = getelementptr inbounds %struct.callback_head, ptr %392, i32 0, i32 1
  %394 = load ptr, ptr %393, align 4
  %395 = load ptr, ptr %392, align 4
  store ptr null, ptr %392, align 4
  tail call void %394(ptr noundef %152) #28
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %391

397:                                              ; preds = %391
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %398 = load i16, ptr %152, align 4
  %399 = add i16 %398, 1
  store i16 %399, ptr %152, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %390) #28, !srcloc !36
  br label %400

400:                                              ; preds = %397, %388
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !112
  br label %413

401:                                              ; preds = %223, %202, %191, %177, %151
  %402 = phi i32 [ 0, %177 ], [ -16, %223 ], [ -1, %202 ], [ -1, %191 ], [ -22, %151 ]
  %403 = getelementptr inbounds %struct.rq, ptr %152, i32 0, i32 19
  %404 = load i32, ptr %403, align 32
  %405 = icmp ugt i32 %404, 2
  br i1 %405, label %406, label %408

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.rq_flags, ptr %5, i32 0, i32 2
  store i32 4, ptr %407, align 4
  br label %408

408:                                              ; preds = %406, %401
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %409 = load i16, ptr %152, align 4
  %410 = add i16 %409, 1
  store i16 %410, ptr %152, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %411 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %412 = load i32, ptr %5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %411, i32 noundef %412) #28
  br label %413

413:                                              ; preds = %408, %400, %147, %144, %140, %134, %130, %117, %102, %95, %87, %84, %63, %60, %58, %52, %45, %41
  %414 = phi i32 [ 0, %400 ], [ %402, %408 ], [ -22, %60 ], [ -22, %41 ], [ -95, %147 ], [ %145, %144 ], [ -22, %140 ], [ -1, %134 ], [ -1, %130 ], [ -1, %117 ], [ -1, %102 ], [ -1, %87 ], [ -1, %95 ], [ -1, %84 ], [ -22, %58 ], [ -22, %63 ], [ -22, %52 ], [ -22, %45 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  ret i32 %414
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_setattr_nocheck(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @__sched_setscheduler(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false, i1 noundef zeroext true)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_set_fifo(ptr noundef %0) #0 {
  %2 = alloca %struct.sched_attr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #28
  %3 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false) #28
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 3
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -120
  store i32 %7, ptr %4, align 8
  %8 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 4
  store i32 50, ptr %8, align 4
  %9 = call fastcc i32 @__sched_setscheduler(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #28
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @sched_set_fifo.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !12

14:                                               ; preds = %1
  store i1 true, ptr @sched_set_fifo.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 7600, i32 noundef 9, ptr noundef null) #28
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_set_fifo_low(ptr noundef %0) #0 {
  %2 = alloca %struct.sched_attr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #28
  %3 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false) #28
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 3
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -120
  store i32 %7, ptr %4, align 8
  %8 = getelementptr inbounds %struct.sched_attr, ptr %2, i32 0, i32 4
  store i32 1, ptr %8, align 4
  %9 = call fastcc i32 @__sched_setscheduler(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #28
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @sched_set_fifo_low.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !12

14:                                               ; preds = %1
  store i1 true, ptr @sched_set_fifo_low.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 7610, i32 noundef 9, ptr noundef null) #28
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_set_normal(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sched_attr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #28
  %4 = getelementptr inbounds %struct.sched_attr, ptr %3, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  store i32 %1, ptr %4, align 8
  %5 = call fastcc i32 @__sched_setscheduler(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext false, i1 noundef zeroext true) #28
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @sched_set_normal.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !12

10:                                               ; preds = %2
  store i1 true, ptr @sched_set_normal.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 7620, i32 noundef 9, ptr noundef null) #28
  br label %11

11:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #28
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_setscheduler(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = inttoptr i32 %2 to ptr
  %7 = tail call fastcc i32 @do_sched_setscheduler(i32 noundef %0, i32 noundef %1, ptr noundef %6) #28
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ %7, %5 ], [ -22, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_setparam(i32 noundef %0, i32 noundef %1) #0 {
  %3 = inttoptr i32 %1 to ptr
  %4 = tail call fastcc i32 @do_sched_setscheduler(i32 noundef %0, i32 noundef -1, ptr noundef %3) #28
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_setattr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.sched_attr, align 8
  %5 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #28
  %6 = icmp eq i32 %1, 0
  %7 = icmp slt i32 %0, 0
  %8 = or i1 %7, %6
  %9 = icmp ne i32 %2, 0
  %10 = or i1 %8, %9
  br i1 %10, label %128, label %11

11:                                               ; preds = %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i32 56, i1 false) #28
  %12 = tail call ptr @llvm.thread.pointer() #28
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #24, !srcloc !81
  %15 = and i32 %14, -13
  %16 = or i32 %15, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %5, i32 -1090519041) #28, !srcloc !113
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %128

20:                                               ; preds = %11
  %21 = extractvalue { i32, i32 } %17, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 48, i32 %21
  %24 = add i32 %23, -4097
  %25 = icmp ult i32 %24, -4049
  br i1 %25, label %63, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @llvm.umin.i32(i32 %23, i32 56) #28
  %28 = icmp ult i32 %23, 56
  %29 = tail call i32 @llvm.umax.i32(i32 %23, i32 56) #28
  %30 = sub nuw nsw i32 %29, %27
  br i1 %28, label %31, label %33

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %4, i32 %27
  call void @llvm.memset.p0.i32(ptr align 1 %32, i8 0, i32 %30, i1 false) #28
  br label %39

33:                                               ; preds = %26
  %34 = icmp eq i32 %23, 56
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = getelementptr i8, ptr %5, i32 %27
  %37 = tail call i32 @check_zeroed_user(ptr noundef %36, i32 noundef %30) #28
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %53, label %39

39:                                               ; preds = %35, %33, %31
  %40 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %5, i32 %27, i32 -1090519040) #32, !srcloc !114
  %41 = extractvalue { i32, i32 } %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49, !prof !11

43:                                               ; preds = %39
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #24, !srcloc !81
  %45 = and i32 %44, -13
  %46 = or i32 %45, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %46) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %47 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %27) #28
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #28, !srcloc !82
  call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %57, label %49, !prof !11

49:                                               ; preds = %43, %39
  %50 = phi i32 [ %47, %43 ], [ %27, %39 ]
  %51 = sub i32 %27, %50
  %52 = getelementptr i8, ptr %4, i32 %51
  call void @llvm.memset.p0.i32(ptr align 1 %52, i8 0, i32 %50, i1 false) #28
  br label %128

53:                                               ; preds = %35
  %54 = icmp eq i32 %37, 0
  %55 = select i1 %54, i32 -7, i32 %37
  %56 = icmp eq i32 %55, -7
  br i1 %56, label %63, label %128

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 96
  %61 = icmp ne i64 %60, 0
  %62 = select i1 %61, i1 %28, i1 false
  br i1 %62, label %128, label %68

63:                                               ; preds = %53, %20
  %64 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %13) #24, !srcloc !81
  %65 = and i32 %64, -13
  %66 = or i32 %65, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %67 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %5, i32 56, i32 -1090519041) #28, !srcloc !115
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  br label %128

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 3
  %70 = load i32, ptr %69, align 8
  %71 = call i32 @llvm.smax.i32(i32 %70, i32 -20) #28
  %72 = call i32 @llvm.smin.i32(i32 %71, i32 19) #28
  store i32 %72, ptr %69, align 8
  %73 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %128, label %76

76:                                               ; preds = %68
  %77 = and i64 %59, 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32 -1, ptr %73, align 4
  br label %80

80:                                               ; preds = %79, %76
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %81 = icmp eq i32 %0, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = call ptr @find_task_by_vpid(i32 noundef %0) #28
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi ptr [ %83, %82 ], [ %12, %80 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %127, label %87, !prof !12

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #28, !srcloc !29
  %89 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 1, ptr elementtype(i32) %88) #28, !srcloc !31
  %90 = extractvalue { i32, i32, i32 } %89, 0
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92, !prof !12

92:                                               ; preds = %87
  %93 = add i32 %90, 1
  %94 = or i32 %93, %90
  %95 = icmp sgt i32 %94, -1
  br i1 %95, label %98, label %96, !prof !11

96:                                               ; preds = %92, %87
  %97 = phi i32 [ 2, %87 ], [ 1, %92 ]
  call void @refcount_warn_saturate(ptr noundef %88, i32 noundef %97) #28
  br label %98

98:                                               ; preds = %96, %92
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  %99 = load i64, ptr %58, align 8
  %100 = and i64 %99, 16
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %118, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 25
  %104 = load i32, ptr %103, align 64
  %105 = icmp eq i32 %104, 6
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  call void @__getparam_dl(ptr noundef nonnull %85, ptr noundef nonnull %4) #28
  br label %118

107:                                              ; preds = %102
  %108 = add i32 %104, -3
  %109 = icmp ult i32 %108, -2
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 17
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 4
  store i32 %112, ptr %113, align 4
  br label %118

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.task_struct, ptr %85, i32 0, i32 15
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, -120
  store i32 %117, ptr %69, align 8
  br label %118

118:                                              ; preds = %114, %110, %106, %98
  %119 = call fastcc i32 @__sched_setscheduler(ptr noundef nonnull %85, ptr noundef nonnull %4, i1 noundef zeroext true, i1 noundef zeroext true) #28
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #28, !srcloc !29
  %120 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 1, ptr elementtype(i32) %88) #28, !srcloc !33
  %121 = extractvalue { i32, i32, i32 } %120, 0
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = icmp sgt i32 %121, 0
  br i1 %124, label %128, label %125, !prof !11

125:                                              ; preds = %123
  call void @refcount_warn_saturate(ptr noundef %88, i32 noundef 3) #28
  br label %128

126:                                              ; preds = %118
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !34
  call void @__put_task_struct(ptr noundef nonnull %85) #28
  br label %128

127:                                              ; preds = %84
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %128

128:                                              ; preds = %127, %126, %125, %123, %68, %63, %57, %53, %49, %11, %3
  %129 = phi i32 [ -22, %3 ], [ -22, %68 ], [ -3, %127 ], [ %119, %123 ], [ %119, %125 ], [ %119, %126 ], [ -14, %49 ], [ -22, %57 ], [ %55, %53 ], [ %18, %11 ], [ -7, %63 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #28
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_getscheduler(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @find_task_by_vpid(i32 noundef %0) #28
  br label %9

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #28
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 25
  %14 = load i32, ptr %13, align 64
  %15 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 47
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 30
  %20 = or i32 %19, %14
  br label %21

21:                                               ; preds = %12, %9
  %22 = phi i32 [ %20, %12 ], [ -3, %9 ]
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi i32 [ %22, %21 ], [ -22, %1 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_getparam(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.sched_param, align 4
  %4 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #28
  store i32 0, ptr %3, align 4
  %5 = icmp eq i32 %1, 0
  %6 = icmp slt i32 %0, 0
  %7 = or i1 %6, %5
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %9 = icmp eq i32 %0, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @find_task_by_vpid(i32 noundef %0) #28
  br label %14

12:                                               ; preds = %8
  %13 = tail call ptr @llvm.thread.pointer() #28
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 25
  %19 = load i32, ptr %18, align 64
  %20 = add i32 %19, -3
  %21 = icmp ult i32 %20, -2
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 17
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr %3, align 4
  br label %25

25:                                               ; preds = %22, %17
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %4, i32 4, i32 -1090519040) #32, !srcloc !116
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = tail call ptr @llvm.thread.pointer() #28
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %32 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %31) #24, !srcloc !81
  %33 = and i32 %32, -13
  %34 = or i32 %33, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %35 = call i32 @arm_copy_to_user(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 4) #28
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %32) #28, !srcloc !82
  call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 0, i32 -14
  br label %39

38:                                               ; preds = %14
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %39

39:                                               ; preds = %38, %29, %25, %2
  %40 = phi i32 [ -3, %38 ], [ -22, %2 ], [ -14, %25 ], [ %37, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #28
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_getattr(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.sched_attr, align 8
  %6 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i32 56, i1 false) #28
  %7 = icmp eq i32 %1, 0
  %8 = icmp slt i32 %0, 0
  %9 = or i1 %8, %7
  %10 = add i32 %2, -4097
  %11 = icmp ult i32 %10, -4049
  %12 = or i1 %9, %11
  %13 = icmp ne i32 %3, 0
  %14 = or i1 %13, %12
  br i1 %14, label %76, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %16 = icmp eq i32 %0, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @find_task_by_vpid(i32 noundef %0) #28
  br label %21

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #28
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %75, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 25
  %26 = load i32, ptr %25, align 64
  %27 = getelementptr inbounds %struct.sched_attr, ptr %5, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 47
  %29 = load i8, ptr %28, align 4
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.sched_attr, ptr %5, i32 0, i32 2
  store i64 1, ptr %33, align 8
  br label %34

34:                                               ; preds = %32, %24
  %35 = phi i64 [ 1, %32 ], [ 0, %24 ]
  %36 = icmp eq i32 %26, 6
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  call void @__getparam_dl(ptr noundef nonnull %22, ptr noundef nonnull %5) #28
  %38 = getelementptr inbounds %struct.sched_attr, ptr %5, i32 0, i32 2
  %39 = load i64, ptr %38, align 8
  br label %52

40:                                               ; preds = %34
  %41 = add i32 %26, -3
  %42 = icmp ult i32 %41, -2
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sched_attr, ptr %5, i32 0, i32 4
  store i32 %45, ptr %46, align 4
  br label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 15
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -120
  %51 = getelementptr inbounds %struct.sched_attr, ptr %5, i32 0, i32 3
  store i32 %50, ptr %51, align 8
  br label %52

52:                                               ; preds = %47, %43, %37
  %53 = phi i64 [ %39, %37 ], [ %35, %43 ], [ %35, %47 ]
  %54 = getelementptr inbounds %struct.sched_attr, ptr %5, i32 0, i32 2
  %55 = and i64 %53, 127
  store i64 %55, ptr %54, align 8
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  %56 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %6, i32 %2, i32 -1090519040) #32, !srcloc !117
  %57 = extractvalue { i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %52
  %60 = call i32 @llvm.umin.i32(i32 %2, i32 56) #28
  store i32 %60, ptr %5, align 8
  %61 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %6, i32 %60, i32 -1090519040) #32, !srcloc !116
  %62 = extractvalue { i32, i32 } %61, 0
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = tail call ptr @llvm.thread.pointer() #28
  %66 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %66) #24, !srcloc !81
  %68 = and i32 %67, -13
  %69 = or i32 %68, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %69) #28, !srcloc !82
  call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %70 = call i32 @arm_copy_to_user(ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %60) #28
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #28, !srcloc !82
  call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  br label %71

71:                                               ; preds = %64, %59
  %72 = phi i32 [ %70, %64 ], [ %60, %59 ]
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 0, i32 -14
  br label %76

75:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %76

76:                                               ; preds = %75, %71, %52, %4
  %77 = phi i32 [ -3, %75 ], [ -22, %4 ], [ -14, %52 ], [ %74, %71 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #28
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dl_task_check_affinity(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 25
  %4 = load i32, ptr %3, align 64
  %5 = icmp ne i32 %4, 6
  %6 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %7 = icmp slt i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %10 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %11 = load volatile i32, ptr %10, align 8
  %12 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, ptrtoint (ptr @runqueues to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 29
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.root_domain, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %1, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, 65535
  %23 = and i32 %22, %21
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 0, i32 -16
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %26

26:                                               ; preds = %9, %2
  %27 = phi i32 [ %25, %9 ], [ 0, %2 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_setaffinity(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @find_task_by_vpid(i32 noundef %0) #28
  br label %8

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #28
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %63

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #28, !srcloc !29
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #28, !srcloc !31
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !12

17:                                               ; preds = %12
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 2, %12 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #28
  br label %23

23:                                               ; preds = %21, %17
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  %24 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 67108864
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %23
  %29 = tail call ptr @llvm.thread.pointer() #28
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 83
  %31 = load ptr, ptr %30, align 8
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %32 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 82
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 5
  %35 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 5
  %36 = load i32, ptr %34, align 4
  %37 = load i32, ptr %35, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %49

40:                                               ; preds = %28
  %41 = getelementptr inbounds %struct.cred, ptr %33, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %36, %42
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %45 = load volatile ptr, ptr %32, align 4
  %46 = getelementptr inbounds %struct.cred, ptr %45, i32 0, i32 21
  %47 = load ptr, ptr %46, align 4
  %48 = tail call zeroext i1 @ns_capable(ptr noundef %47, i32 noundef 23) #28
  tail call void asm sideeffect "", "~{memory}"() #28
  br i1 %48, label %49, label %54

49:                                               ; preds = %44, %40, %39
  %50 = tail call i32 @cap_task_setscheduler(ptr noundef nonnull %9) #28
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = tail call fastcc i32 @__sched_setaffinity(ptr noundef nonnull %9, ptr noundef %1)
  br label %54

54:                                               ; preds = %52, %49, %44, %23
  %55 = phi i32 [ %50, %49 ], [ %53, %52 ], [ -22, %23 ], [ -1, %44 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #28, !srcloc !29
  %56 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #28, !srcloc !33
  %57 = extractvalue { i32, i32, i32 } %56, 0
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = icmp sgt i32 %57, 0
  br i1 %60, label %63, label %61, !prof !11

61:                                               ; preds = %59
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #28
  br label %63

62:                                               ; preds = %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !34
  tail call void @__put_task_struct(ptr noundef nonnull %9) #28
  br label %63

63:                                               ; preds = %62, %61, %59, %11
  %64 = phi i32 [ -3, %11 ], [ %55, %59 ], [ %55, %61 ], [ %55, %62 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_setaffinity(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [1 x %struct.cpumask], align 4
  %5 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  store i32 0, ptr %4, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 4) #28
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %6, i32 -1090519040) #32, !srcloc !114
  %8 = extractvalue { i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17, !prof !11

10:                                               ; preds = %3
  %11 = tail call ptr @llvm.thread.pointer() #28
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #24, !srcloc !81
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %16 = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %6) #28
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #28, !srcloc !82
  call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi i32 [ %16, %10 ], [ %6, %3 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !11

20:                                               ; preds = %17
  %21 = sub i32 %6, %18
  %22 = getelementptr i8, ptr %4, i32 %21
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %18, i1 false) #28
  br label %25

23:                                               ; preds = %17
  %24 = call i32 @sched_setaffinity(i32 noundef %0, ptr noundef nonnull %4) #28
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %24, %23 ], [ -14, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_getaffinity(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @find_task_by_vpid(i32 noundef %0) #28
  br label %8

6:                                                ; preds = %2
  %7 = tail call ptr @llvm.thread.pointer() #28
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 108
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #28
  %14 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 29
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr @__cpu_active_mask, align 4
  %17 = and i32 %15, 65535
  %18 = and i32 %17, %16
  store i32 %18, ptr %1, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #28
  br label %19

19:                                               ; preds = %11, %8
  %20 = phi i32 [ 0, %11 ], [ -3, %8 ]
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_getaffinity(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [1 x %struct.cpumask], align 4
  %5 = inttoptr i32 %2 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #28
  %6 = shl i32 %1, 3
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp uge i32 %6, %7
  %9 = and i32 %1, 3
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %10, %8
  br i1 %11, label %12, label %45

12:                                               ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %13 = icmp eq i32 %0, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = tail call ptr @find_task_by_vpid(i32 noundef %0) #28
  br label %18

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #28
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %45

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 108
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #28
  %25 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 29
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @__cpu_active_mask, align 4
  %28 = and i32 %26, 65535
  %29 = and i32 %28, %27
  store i32 %29, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  %30 = tail call i32 @llvm.umin.i32(i32 %1, i32 4) #28
  %31 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %30, i32 -1090519040) #32, !srcloc !116
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = tail call ptr @llvm.thread.pointer() #28
  %36 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %36) #24, !srcloc !81
  %38 = and i32 %37, -13
  %39 = or i32 %38, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %40 = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %4, i32 noundef %30) #28
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #28, !srcloc !82
  call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  br label %41

41:                                               ; preds = %34, %22
  %42 = phi i32 [ %40, %34 ], [ %30, %22 ]
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %30, i32 -14
  br label %45

45:                                               ; preds = %41, %21, %3
  %46 = phi i32 [ -22, %3 ], [ %44, %41 ], [ -3, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #28
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sys_sched_yield() local_unnamed_addr #0 {
  tail call fastcc void @do_sched_yield()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @do_sched_yield() unnamed_addr #0 {
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #28, !srcloc !91
  %1 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %2 = inttoptr i32 %1 to ptr
  %3 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %2) #24, !srcloc !13
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %5) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %6 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 19
  %7 = load i32, ptr %6, align 32
  %8 = and i32 %7, 3
  store i32 %8, ptr %6, align 32
  %9 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 33
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %10, @balance_push_callback
  %13 = and i1 %11, %12
  %14 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %18, !prof !12

17:                                               ; preds = %0
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %18

18:                                               ; preds = %17, %0
  %19 = tail call ptr @llvm.thread.pointer() #28
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 22
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.sched_class, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %5) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !118
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %24 = load i16, ptr %5, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #28, !srcloc !40
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !119
  tail call void @schedule()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cond_resched() #0 section ".sched.text" {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load volatile i32, ptr %1, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %5
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !120
  tail call fastcc void @__schedule(i32 noundef 1) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !121
  %10 = load volatile i32, ptr %1, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %9

13:                                               ; preds = %5, %0
  tail call void @rcu_all_qs() #28
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ 0, %13 ], [ 1, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_all_qs() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cond_resched_lock(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #28
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %11 = load i16, ptr %0, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %13 = load volatile i32, ptr %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load volatile i32, ptr %2, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %19, %15
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !120
  tail call fastcc void @__schedule(i32 noundef 1) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !121
  %20 = load volatile i32, ptr %2, align 4
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %19

23:                                               ; preds = %15, %10
  tail call void @rcu_all_qs() #28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !122
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #28, !srcloc !123
  br label %24

24:                                               ; preds = %23, %19
  tail call void @_raw_spin_lock(ptr noundef %0) #28
  br label %25

25:                                               ; preds = %24, %6, %1
  %26 = phi i32 [ 1, %24 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cond_resched_rwlock_read(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #28
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !124
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #28, !srcloc !29
  %11 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %0) #28, !srcloc !125
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  br label %15

15:                                               ; preds = %14, %10
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !126
  %16 = load volatile i32, ptr %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load volatile i32, ptr %2, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %22, %18
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !120
  tail call fastcc void @__schedule(i32 noundef 1) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !121
  %23 = load volatile i32, ptr %2, align 4
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %22

26:                                               ; preds = %18, %15
  tail call void @rcu_all_qs() #28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !127
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #28, !srcloc !128
  br label %27

27:                                               ; preds = %26, %22
  tail call void @_raw_read_lock(ptr noundef %0) #28
  br label %28

28:                                               ; preds = %27, %6, %1
  %29 = phi i32 [ 1, %27 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__cond_resched_rwlock_write(ptr noundef %0) #0 {
  %2 = tail call ptr @llvm.thread.pointer() #28
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !129
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %0, i32 0) #28, !srcloc !130
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !131
  %11 = load volatile i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load volatile i32, ptr %2, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %17, %13
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !120
  tail call fastcc void @__schedule(i32 noundef 1) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !121
  %18 = load volatile i32, ptr %2, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %17

21:                                               ; preds = %13, %10
  tail call void @rcu_all_qs() #28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !132
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #28, !srcloc !133
  br label %22

22:                                               ; preds = %21, %17
  tail call void @_raw_write_lock(ptr noundef %0) #28
  br label %23

23:                                               ; preds = %22, %6, %1
  %24 = phi i32 [ 1, %22 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @yield() #0 section ".sched.text" {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  store volatile i32 0, ptr %2, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !134
  tail call fastcc void @do_sched_yield()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @yield_to(ptr noundef %0, i1 noundef zeroext %1) #0 section ".sched.text" {
  %3 = tail call ptr @llvm.thread.pointer() #28
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  %5 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %6) #24, !srcloc !13
  %8 = add i32 %7, ptrtoint (ptr @runqueues to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rq, ptr %9, i32 0, i32 40
  br label %13

13:                                               ; preds = %47, %2
  %14 = load volatile i32, ptr %10, align 8
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, ptrtoint (ptr @runqueues to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i32, ptr %11, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #28, !srcloc !36
  br label %86

26:                                               ; preds = %21, %13
  %27 = getelementptr inbounds %struct.rq, ptr %18, i32 0, i32 40
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %12, align 4
  %30 = icmp slt i32 %28, %29
  %31 = select i1 %30, ptr %9, ptr %18
  %32 = select i1 %30, ptr %18, ptr %9
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %32) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %31) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  br label %35

35:                                               ; preds = %34, %26
  %36 = load volatile i32, ptr %10, align 8
  %37 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, ptrtoint (ptr @runqueues to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = icmp eq ptr %40, %18
  br i1 %41, label %50, label %42

42:                                               ; preds = %35
  %43 = icmp eq ptr %9, %18
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %45 = load i16, ptr %18, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  br label %47

47:                                               ; preds = %44, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %48 = load i16, ptr %9, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  br label %13

50:                                               ; preds = %35
  %51 = inttoptr i32 %17 to ptr
  %52 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 22
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.sched_class, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %53, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %67 = load volatile i32, ptr %66, align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = tail call zeroext i1 %55(ptr noundef %9, ptr noundef %0) #28
  %71 = and i1 %70, %1
  %72 = xor i1 %71, true
  %73 = icmp eq ptr %9, %51
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  tail call void @resched_curr(ptr noundef %51)
  br label %76

76:                                               ; preds = %75, %69, %65, %61, %57, %50
  %77 = phi i1 [ false, %57 ], [ false, %61 ], [ %70, %75 ], [ %70, %69 ], [ false, %65 ], [ false, %50 ]
  %78 = icmp eq ptr %9, %51
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %80 = load i16, ptr %51, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %51, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  br label %82

82:                                               ; preds = %79, %76
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %83 = load i16, ptr %9, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #28, !srcloc !36
  br i1 %77, label %85, label %86

85:                                               ; preds = %82
  tail call void @schedule()
  br label %86

86:                                               ; preds = %85, %82, %25
  %87 = phi i32 [ -3, %25 ], [ 1, %85 ], [ 0, %82 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @io_schedule_prepare() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 49
  %3 = load i8, ptr %2, align 8
  %4 = or i8 %3, 4
  store i8 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 115
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  tail call void @blk_flush_plug(ptr noundef nonnull %6, i1 noundef zeroext true) #28
  br label %9

9:                                                ; preds = %8, %0
  %10 = lshr i8 %3, 2
  %11 = and i8 %10, 1
  %12 = zext i8 %11 to i32
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_flush_plug(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @io_schedule_finish(i32 noundef %0) local_unnamed_addr #18 {
  %2 = tail call ptr @llvm.thread.pointer() #28
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 49
  %4 = trunc i32 %0 to i8
  %5 = load i8, ptr %3, align 8
  %6 = shl i8 %4, 2
  %7 = and i8 %6, 4
  %8 = and i8 %5, -5
  %9 = or i8 %8, %7
  store i8 %9, ptr %3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @io_schedule_timeout(i32 noundef %0) #0 section ".sched.text" {
  %2 = tail call ptr @llvm.thread.pointer() #28
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 49
  %4 = load i8, ptr %3, align 8
  %5 = or i8 %4, 4
  store i8 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 115
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @blk_flush_plug(ptr noundef nonnull %7, i1 noundef zeroext true) #28
  br label %10

10:                                               ; preds = %9, %1
  %11 = and i8 %4, 4
  %12 = tail call i32 @schedule_timeout(i32 noundef %0) #28
  %13 = load i8, ptr %3, align 8
  %14 = and i8 %13, -5
  %15 = or i8 %14, %11
  store i8 %15, ptr %3, align 8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @io_schedule() #0 section ".sched.text" {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 49
  %3 = load i8, ptr %2, align 8
  %4 = or i8 %3, 4
  store i8 %4, ptr %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 115
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  tail call void @blk_flush_plug(ptr noundef nonnull %6, i1 noundef zeroext true) #28
  br label %9

9:                                                ; preds = %8, %0
  %10 = and i8 %3, 4
  tail call void @schedule()
  %11 = load i8, ptr %2, align 8
  %12 = and i8 %11, -5
  %13 = or i8 %12, %10
  store i8 %13, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @__se_sys_sched_get_priority_max(i32 noundef %0) #11 {
  %2 = icmp ult i32 %0, 7
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [7 x i32], ptr @switch.table.__se_sys_sched_get_priority_max, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ -22, %1 ], [ %5, %3 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @__se_sys_sched_get_priority_min(i32 noundef %0) #11 {
  %2 = icmp ult i32 %0, 7
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = getelementptr inbounds [7 x i32], ptr @switch.table.__se_sys_sched_get_priority_min, i32 0, i32 %0
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ -22, %1 ], [ %5, %3 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_rr_get_interval(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #28, !annotation !10
  %4 = call fastcc i32 @sched_rr_get_interval(i32 noundef %0, ptr noundef nonnull %3) #28
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = inttoptr i32 %1 to ptr
  %8 = call i32 @put_timespec64(ptr noundef nonnull %3, ptr noundef %7) #28
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_sched_rr_get_interval_time32(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.timespec64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i32 16, i1 false) #28, !annotation !10
  %4 = call fastcc i32 @sched_rr_get_interval(i32 noundef %0, ptr noundef nonnull %3) #28
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = inttoptr i32 %1 to ptr
  %8 = call i32 @put_old_timespec32(ptr noundef nonnull %3, ptr noundef %7) #28
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sched_show_task(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 151
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %15, %1
  %6 = phi i32 [ %13, %15 ], [ %3, %1 ]
  %7 = add i32 %6, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #28, !srcloc !29
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %6, i32 %7, ptr elementtype(i32) %2) #28, !srcloc !135
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = icmp eq i32 %13, %6
  br i1 %14, label %17, label %15, !prof !11

15:                                               ; preds = %12
  %16 = icmp eq i32 %13, 0
  br i1 %16, label %17, label %5

17:                                               ; preds = %15, %12, %1
  %18 = phi i32 [ 0, %1 ], [ %6, %12 ], [ 0, %15 ]
  %19 = add i32 %18, 1
  %20 = or i32 %19, %18
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %23, label %22, !prof !11

22:                                               ; preds = %17
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 0) #28
  br label %23

23:                                               ; preds = %22, %17
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %66, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %66, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 85
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 41
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, %32
  %36 = and i32 %35, 127
  %37 = icmp eq i32 %32, 1026
  %38 = select i1 %37, i32 128, i32 %36
  %39 = icmp eq i32 %38, 0
  %40 = tail call i32 @llvm.ctlz.i32(i32 %38, i1 false) #28, !range !15
  %41 = sub nuw nsw i32 32, %40
  %42 = select i1 %39, i32 0, i32 %41
  %43 = getelementptr [10 x i8], ptr @task_index_to_char.state_char, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %30, i32 noundef %45) #31
  %47 = load volatile i32, ptr %31, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %29
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #31
  br label %51

51:                                               ; preds = %49, %29
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %52 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 62
  %53 = load ptr, ptr %52, align 64
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 55
  %57 = load volatile ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 52
  %59 = load i32, ptr %58, align 8
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i32 [ %59, %55 ], [ 0, %51 ]
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  %62 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %63 = load i32, ptr %62, align 8
  %64 = load volatile i32, ptr %0, align 8
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef %63, i32 noundef %61, i32 noundef %64) #31
  tail call void @print_worker_info(ptr noundef nonnull @.str.10, ptr noundef %0) #28
  tail call void @print_stop_info(ptr noundef nonnull @.str.10, ptr noundef %0) #28
  tail call void @show_stack(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.10) #28
  tail call void @put_task_stack(ptr noundef %0) #28
  br label %66

66:                                               ; preds = %60, %25, %23
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_worker_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_stop_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_stack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_task_stack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_state_filter(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %3 = getelementptr i8, ptr %2, i32 -1116
  %4 = icmp eq ptr %3, @init_task
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %0, 0
  %7 = icmp ne i32 %0, 2
  br label %12

8:                                                ; preds = %33, %12
  %9 = load volatile ptr, ptr %13, align 4
  %10 = getelementptr i8, ptr %9, i32 -1116
  %11 = icmp eq ptr %10, @init_task
  br i1 %11, label %38, label %12

12:                                               ; preds = %8, %5
  %13 = phi ptr [ %2, %5 ], [ %9, %8 ]
  %14 = getelementptr i8, ptr %13, i32 500
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr inbounds %struct.signal_struct, ptr %15, i32 0, i32 3
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %8, label %19

19:                                               ; preds = %33, %12
  %20 = phi ptr [ %34, %33 ], [ %15, %12 ]
  %21 = phi ptr [ %35, %33 ], [ %17, %12 ]
  %22 = getelementptr i8, ptr %21, i32 -1388
  %23 = getelementptr i8, ptr %21, i32 -852
  %24 = load volatile i32, ptr %23, align 8
  br i1 %6, label %31, label %25

25:                                               ; preds = %19
  %26 = and i32 %24, %0
  %27 = icmp ne i32 %26, 0
  %28 = icmp ne i32 %24, 1026
  %29 = select i1 %7, i1 true, i1 %28
  %30 = and i1 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %19
  tail call void @sched_show_task(ptr noundef %22)
  %32 = load ptr, ptr %14, align 16
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %20, %25 ], [ %32, %31 ]
  %35 = load volatile ptr, ptr %21, align 4
  %36 = getelementptr inbounds %struct.signal_struct, ptr %34, i32 0, i32 3
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %8, label %19

38:                                               ; preds = %8, %1
  %39 = icmp eq i32 %0, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %38
  tail call void @sysrq_sched_debug_show() #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %42

41:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %42

42:                                               ; preds = %41, %40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysrq_sched_debug_show() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_idle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #15 section ".init.text" {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 3
  %9 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %8, i8 0, i64 44, i1 false) #28
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 21
  %12 = ptrtoint ptr %11 to i32
  store i32 %12, ptr %11, align 32
  tail call void @init_dl_task_timer(ptr noundef %11) #28
  tail call void @init_dl_inactive_task_timer(ptr noundef %11) #28
  tail call void @__dl_clear_params(ptr noundef %0) #28
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 20
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 20, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 20, i32 1
  store i32 0, ptr %15, align 8
  %16 = load i32, ptr @sched_rr_timeslice, align 4
  %17 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 20, i32 3
  store i32 %16, ptr %17, align 16
  %18 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 20, i32 4
  store i16 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 20, i32 5
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 119
  store ptr null, ptr %20, align 4
  %21 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 7, i32 1
  store i32 48, ptr %21, align 4
  %22 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 30
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %6) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %25 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  store i32 0, ptr %25, align 8
  %26 = tail call i64 @sched_clock() #28
  %27 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 19, i32 4
  store i64 %26, ptr %27, align 32
  %28 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = or i32 %29, 69206018
  store i32 %30, ptr %28, align 4
  tail call void @kthread_set_per_cpu(ptr noundef %0, i32 noundef %1) #28
  %31 = and i32 %1, 31
  %32 = add nuw nsw i32 %31, 1
  %33 = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %32
  %34 = lshr i32 %1, 5
  %35 = sub nsw i32 0, %34
  %36 = getelementptr i32, ptr %33, i32 %35
  %37 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 29
  %38 = load i32, ptr %36, align 4
  store i32 %38, ptr %37, align 4
  %39 = and i32 %38, 65535
  %40 = tail call i32 @__sw_hweight32(i32 noundef %39) #28
  %41 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 26
  store i32 %40, ptr %41, align 4
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #28, !srcloc !49
  %42 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  store volatile i32 %1, ptr %42, align 8
  %43 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 12
  store i32 %1, ptr %43, align 8
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  %44 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 15
  store ptr %0, ptr %44, align 16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !136
  %45 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 14
  store volatile ptr %0, ptr %45, align 4
  store i32 1, ptr %7, align 4
  %46 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  store i32 1, ptr %46, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %47 = load i16, ptr %6, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #28
  %49 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 1
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 22
  store ptr @idle_sched_class, ptr %50, align 8
  %51 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 85
  %52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %51, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kthread_set_per_cpu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #19

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cpuset_cpumask_can_shrink(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, 65535
  %5 = tail call i32 @__sw_hweight32(i32 noundef %4) #28
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @dl_cpuset_cpumask_can_shrink(ptr noundef %0, ptr noundef %1) #28
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ 1, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dl_cpuset_cpumask_can_shrink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @task_can_attach(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 16
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %28, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %13 = load volatile i32, ptr %12, align 8
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, ptrtoint (ptr @runqueues to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 29
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.root_domain, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = load i32, ptr %1, align 4
  %23 = and i32 %21, 65535
  %24 = and i32 %23, %22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = tail call i32 @dl_task_can_attach(ptr noundef %0, ptr noundef %1) #28
  br label %28

28:                                               ; preds = %26, %11, %7, %2
  %29 = phi i32 [ 0, %11 ], [ %27, %26 ], [ 0, %7 ], [ -22, %2 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dl_task_can_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @idle_task_exit() local_unnamed_addr #0 {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 38
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 5
  %7 = getelementptr i32, ptr @__cpu_online_mask, i32 %6
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %5, 31
  %10 = shl nuw i32 1, %9
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 8806, 0\0A.popsection", ""() #28, !srcloc !137
  unreachable

14:                                               ; preds = %0
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #24, !srcloc !13
  %18 = add i32 %17, ptrtoint (ptr @runqueues to i32)
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.rq, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 16
  %22 = icmp eq ptr %1, %21
  br i1 %22, label %24, label %23, !prof !11

23:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 8807, 0\0A.popsection", ""() #28, !srcloc !138
  unreachable

24:                                               ; preds = %14
  %25 = icmp eq ptr %3, @init_mm
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @_test_and_set_bit(i32 noundef %5, ptr noundef getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 1, i32 0, i32 0)) #28
  tail call void @check_and_switch_context(ptr noundef nonnull @init_mm, ptr noundef %1) #28
  br label %28

28:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_rq_online(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 41
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.root_domain, ptr %9, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %7, ptr noundef %10) #28
  store i32 1, ptr %2, align 8
  br i1 icmp eq (ptr getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), ptr getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)), label %20, label %11

11:                                               ; preds = %17, %5
  %12 = phi ptr [ %18, %17 ], [ getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), %5 ]
  %13 = getelementptr inbounds %struct.sched_class, ptr %12, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void %14(ptr noundef %0) #28
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr %struct.sched_class, ptr %12, i32 -1
  %19 = icmp eq ptr %18, getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)
  br i1 %19, label %20, label %11

20:                                               ; preds = %17, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_rq_offline(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 41
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  br i1 icmp eq (ptr getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), ptr getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)), label %15, label %6

6:                                                ; preds = %12, %5
  %7 = phi ptr [ %13, %12 ], [ getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), %5 ]
  %8 = getelementptr inbounds %struct.sched_class, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void %9(ptr noundef %0) #28
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr %struct.sched_class, ptr %7, i32 -1
  %14 = icmp eq ptr %13, getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)
  br i1 %14, label %15, label %6

15:                                               ; preds = %12, %5
  %16 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 29
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.root_domain, ptr %19, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef %17, ptr noundef %20) #28
  store i32 0, ptr %2, align 8
  br label %21

21:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_cpu_activate(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %5) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %7 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 19
  %8 = load i32, ptr %7, align 32
  %9 = and i32 %8, 3
  store i32 %9, ptr %7, align 32
  %10 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 33
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %11, @balance_push_callback
  %14 = and i1 %12, %13
  %15 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %20, !prof !12

18:                                               ; preds = %1
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  %19 = load ptr, ptr %10, align 8
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %11, %1 ]
  %22 = icmp eq ptr %21, @balance_push_callback
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store ptr null, ptr %10, align 8
  br label %24

24:                                               ; preds = %23, %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %25 = load i16, ptr %5, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #28, !srcloc !36
  tail call void @_set_bit(i32 noundef %0, ptr noundef nonnull @__cpu_active_mask) #28
  %27 = load i8, ptr @sched_smp_initialized, align 1, !range !139
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load i8, ptr @cpuhp_tasks_frozen, align 1, !range !139
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  tail call void @partition_sched_domains(i32 noundef 1, ptr noundef null, ptr noundef null) #28
  %33 = load i32, ptr @num_cpus_frozen, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr @num_cpus_frozen, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %29
  tail call void @partition_sched_domains(i32 noundef 1, ptr noundef null, ptr noundef null) #28
  br label %37

37:                                               ; preds = %36, %32, %24
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %5) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %39 = load i32, ptr %7, align 32
  %40 = and i32 %39, 3
  store i32 %40, ptr %7, align 32
  %41 = load ptr, ptr %10, align 8
  %42 = icmp ne ptr %41, null
  %43 = icmp ne ptr %41, @balance_push_callback
  %44 = and i1 %42, %43
  %45 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !12

48:                                               ; preds = %37
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %49

49:                                               ; preds = %48, %37
  %50 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 29
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %80, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.root_domain, ptr %51, i32 0, i32 3
  %55 = lshr i32 %0, 5
  %56 = getelementptr i32, ptr %54, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %0, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63, !prof !12

62:                                               ; preds = %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 9071, 0\0A.popsection", ""() #28, !srcloc !140
  unreachable

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 41
  %65 = load i32, ptr %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 40
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.root_domain, ptr %51, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %69, ptr noundef %70) #28
  store i32 1, ptr %64, align 8
  br i1 icmp eq (ptr getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), ptr getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)), label %80, label %71

71:                                               ; preds = %77, %67
  %72 = phi ptr [ %78, %77 ], [ getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), %67 ]
  %73 = getelementptr inbounds %struct.sched_class, ptr %72, i32 0, i32 14
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void %74(ptr noundef %5) #28
  br label %77

77:                                               ; preds = %76, %71
  %78 = getelementptr %struct.sched_class, ptr %72, i32 -1
  %79 = icmp eq ptr %78, getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)
  br i1 %79, label %80, label %71

80:                                               ; preds = %77, %67, %63, %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %81 = load i16, ptr %5, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #28, !srcloc !36
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @balance_push_set(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %6) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %8 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 19
  %9 = load i32, ptr %8, align 32
  %10 = and i32 %9, 3
  store i32 %10, ptr %8, align 32
  %11 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 33
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  %14 = icmp ne ptr %12, @balance_push_callback
  %15 = and i1 %13, %14
  %16 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !12

19:                                               ; preds = %2
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %20

20:                                               ; preds = %19, %2
  %21 = load ptr, ptr %11, align 8
  br i1 %1, label %22, label %28

22:                                               ; preds = %20
  %23 = icmp ne ptr %21, null
  %24 = load i1, ptr @balance_push_set.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %30, !prof !12

27:                                               ; preds = %22
  store i1 true, ptr @balance_push_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8918, i32 noundef 9, ptr noundef null) #28
  br label %30

28:                                               ; preds = %20
  %29 = icmp eq ptr %21, @balance_push_callback
  br i1 %29, label %30, label %32

30:                                               ; preds = %28, %27, %22
  %31 = phi ptr [ @balance_push_callback, %27 ], [ @balance_push_callback, %22 ], [ null, %28 ]
  store ptr %31, ptr %11, align 8
  br label %32

32:                                               ; preds = %30, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %33 = load i16, ptr %6, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #28, !srcloc !36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_cpu_deactivate(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  tail call void @nohz_balance_exit_idle(ptr noundef %5) #28
  tail call void @_clear_bit(i32 noundef %0, ptr noundef nonnull @__cpu_active_mask) #28
  tail call fastcc void @balance_push_set(i32 noundef %0, i1 noundef zeroext true)
  tail call void @synchronize_rcu() #28
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %5) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %7 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 19
  %8 = load i32, ptr %7, align 32
  %9 = and i32 %8, 3
  store i32 %9, ptr %7, align 32
  %10 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 33
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %11, @balance_push_callback
  %14 = and i1 %12, %13
  %15 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !12

18:                                               ; preds = %1
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 29
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %19
  tail call void @update_rq_clock(ptr noundef %5)
  %24 = load ptr, ptr %20, align 8
  %25 = getelementptr inbounds %struct.root_domain, ptr %24, i32 0, i32 3
  %26 = lshr i32 %0, 5
  %27 = getelementptr i32, ptr %25, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %0, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34, !prof !12

33:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 9116, 0\0A.popsection", ""() #28, !srcloc !141
  unreachable

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 41
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %34
  br i1 icmp eq (ptr getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), ptr getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)), label %50, label %39

39:                                               ; preds = %45, %38
  %40 = phi ptr [ %46, %45 ], [ getelementptr ([0 x %struct.sched_class], ptr @__end_sched_classes, i32 0, i32 -1), %38 ]
  %41 = getelementptr inbounds %struct.sched_class, ptr %40, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void %42(ptr noundef %5) #28
  br label %45

45:                                               ; preds = %44, %39
  %46 = getelementptr %struct.sched_class, ptr %40, i32 -1
  %47 = icmp eq ptr %46, getelementptr ([0 x %struct.sched_class], ptr @__begin_sched_classes, i32 0, i32 -1)
  br i1 %47, label %48, label %39

48:                                               ; preds = %45
  %49 = load ptr, ptr %20, align 8
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi ptr [ %49, %48 ], [ %24, %38 ]
  %52 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 40
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.root_domain, ptr %51, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef %53, ptr noundef %54) #28
  store i32 0, ptr %35, align 8
  br label %55

55:                                               ; preds = %50, %34, %19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %56 = load i16, ptr %5, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #28, !srcloc !36
  %58 = load i8, ptr @sched_smp_initialized, align 1, !range !139
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %94, label %60

60:                                               ; preds = %55
  %61 = load i8, ptr @cpuhp_tasks_frozen, align 1, !range !139
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = tail call zeroext i1 @dl_cpu_busy(i32 noundef %0) #28
  br i1 %64, label %68, label %93

65:                                               ; preds = %60
  %66 = load i32, ptr @num_cpus_frozen, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr @num_cpus_frozen, align 4
  br label %93

68:                                               ; preds = %63
  %69 = load i32, ptr %2, align 4
  %70 = add i32 %69, ptrtoint (ptr @runqueues to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %71) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %73 = getelementptr inbounds %struct.rq, ptr %71, i32 0, i32 19
  %74 = load i32, ptr %73, align 32
  %75 = and i32 %74, 3
  store i32 %75, ptr %73, align 32
  %76 = getelementptr inbounds %struct.rq, ptr %71, i32 0, i32 33
  %77 = load ptr, ptr %76, align 8
  %78 = icmp ne ptr %77, null
  %79 = icmp ne ptr %77, @balance_push_callback
  %80 = and i1 %78, %79
  %81 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %82 = xor i1 %81, true
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %86, !prof !12

84:                                               ; preds = %68
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  %85 = load ptr, ptr %76, align 8
  br label %86

86:                                               ; preds = %84, %68
  %87 = phi ptr [ %85, %84 ], [ %77, %68 ]
  %88 = icmp eq ptr %87, @balance_push_callback
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store ptr null, ptr %76, align 8
  br label %90

90:                                               ; preds = %89, %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %91 = load i16, ptr %71, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %71, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %72) #28, !srcloc !36
  tail call void @_set_bit(i32 noundef %0, ptr noundef nonnull @__cpu_active_mask) #28
  br label %94

93:                                               ; preds = %65, %63
  tail call void @partition_sched_domains(i32 noundef 1, ptr noundef null, ptr noundef null) #28
  br label %94

94:                                               ; preds = %93, %90, %55
  %95 = phi i32 [ -16, %90 ], [ 0, %93 ], [ 0, %55 ]
  ret i32 %95
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nohz_balance_exit_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_cpu_starting(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i32, ptr @calc_load_update, align 4
  %7 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 53
  store i32 %6, ptr %7, align 4
  tail call void @update_max_interval() #28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_cpu_wait_empty(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #24, !srcloc !13
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 52
  %8 = tail call ptr @llvm.thread.pointer() #28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !142
  store volatile ptr %8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 60
  %10 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 1
  %11 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 1
  br label %12

12:                                               ; preds = %18, %1
  store volatile i32 2, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !143
  %13 = load i32, ptr %11, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, ptr %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %12
  tail call void @schedule() #28
  br label %12

19:                                               ; preds = %15
  store volatile ptr null, ptr %7, align 4
  store volatile i32 0, ptr %10, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sched_cpu_dying(i32 noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, ptrtoint (ptr @runqueues to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #28, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %5) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %7 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 19
  %8 = load i32, ptr %7, align 32
  %9 = and i32 %8, 3
  store i32 %9, ptr %7, align 32
  %10 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 33
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  %13 = icmp ne ptr %11, @balance_push_callback
  %14 = and i1 %12, %13
  %15 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %16 = xor i1 %15, true
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %19, !prof !12

18:                                               ; preds = %1
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %19

19:                                               ; preds = %18, %1
  %20 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 60
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %67, label %27

27:                                               ; preds = %23, %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 9225, i32 noundef 9, ptr noundef nonnull @.str.13) #28
  %28 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 40
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %20, align 4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.14, i32 noundef %29, i32 noundef %30) #31
  %32 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %33 = getelementptr i8, ptr %32, i32 -1116
  %34 = icmp eq ptr %33, @init_task
  br i1 %34, label %67, label %39

35:                                               ; preds = %62, %39
  %36 = load volatile ptr, ptr %40, align 4
  %37 = getelementptr i8, ptr %36, i32 -1116
  %38 = icmp eq ptr %37, @init_task
  br i1 %38, label %67, label %39

39:                                               ; preds = %35, %27
  %40 = phi ptr [ %36, %35 ], [ %32, %27 ]
  %41 = getelementptr i8, ptr %40, i32 500
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr inbounds %struct.signal_struct, ptr %42, i32 0, i32 3
  %44 = load volatile ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %35, label %46

46:                                               ; preds = %62, %39
  %47 = phi ptr [ %63, %62 ], [ %42, %39 ]
  %48 = phi ptr [ %64, %62 ], [ %44, %39 ]
  %49 = getelementptr i8, ptr %48, i32 -1380
  %50 = load volatile i32, ptr %49, align 8
  %51 = icmp eq i32 %50, %29
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %48, i32 -800
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = getelementptr i8, ptr %48, i32 -100
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr i8, ptr %48, i32 180
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.14, i32 noundef %58, ptr noundef %59) #31
  %61 = load ptr, ptr %41, align 16
  br label %62

62:                                               ; preds = %56, %52, %46
  %63 = phi ptr [ %47, %52 ], [ %47, %46 ], [ %61, %56 ]
  %64 = load volatile ptr, ptr %48, align 4
  %65 = getelementptr inbounds %struct.signal_struct, ptr %63, i32 0, i32 3
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %35, label %46

67:                                               ; preds = %35, %27, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %68 = load i16, ptr %5, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #28, !srcloc !36
  %70 = tail call i32 @calc_load_fold_active(ptr noundef %5, i32 noundef 1) #28
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @calc_load_tasks) #28, !srcloc !29
  %73 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @calc_load_tasks, ptr nonnull @calc_load_tasks, i32 %70, ptr nonnull elementtype(i32) @calc_load_tasks) #28, !srcloc !92
  br label %74

74:                                               ; preds = %72, %67
  tail call void @update_max_interval() #28
  %75 = getelementptr inbounds %struct.rq, ptr %5, i32 0, i32 57
  %76 = tail call zeroext i1 @hrtimer_active(ptr noundef %75) #28
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = tail call i32 @hrtimer_cancel(ptr noundef %75) #28
  br label %79

79:                                               ; preds = %77, %74
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_max_interval() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sched_init_smp() local_unnamed_addr #15 section ".init.text" {
  %1 = alloca %struct.rq_flags, align 8
  tail call void @mutex_lock(ptr noundef nonnull @sched_domains_mutex) #28
  %2 = tail call i32 @sched_init_domains(ptr noundef nonnull @__cpu_active_mask) #28
  tail call void @mutex_unlock(ptr noundef nonnull @sched_domains_mutex) #28
  %3 = tail call ptr @llvm.thread.pointer() #28
  %4 = tail call ptr @housekeeping_cpumask(i32 noundef 32) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  store i64 0, ptr %1, align 8, !annotation !10
  %5 = call ptr @task_rq_lock(ptr noundef %3, ptr noundef nonnull %1) #28
  %6 = call fastcc i32 @__set_cpus_allowed_ptr_locked(ptr noundef %3, ptr noundef %4, i32 noundef 0, ptr noundef %5, ptr noundef nonnull %1) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 9253, 0\0A.popsection", ""() #28, !srcloc !144
  unreachable

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -67108865
  store i32 %12, ptr %10, align 4
  tail call void @sched_init_granularity() #28
  tail call void @init_sched_rt_class() #28
  tail call void @init_sched_dl_class() #28
  store i8 1, ptr @sched_smp_initialized, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_init_domains(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_init_granularity() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_sched_rt_class() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_sched_dl_class() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @migration_init() #15 section ".init.text" {
  %1 = tail call ptr @llvm.thread.pointer() #28
  %2 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i32, ptr @calc_load_update, align 4
  %9 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 53
  store i32 %8, ptr %9, align 4
  tail call void @update_max_interval() #28
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @in_sched_functions(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @in_lock_functions(i32 noundef %0) #28
  %3 = icmp ne i32 %2, 0
  %4 = icmp uge i32 %0, ptrtoint (ptr @__sched_text_start to i32)
  %5 = icmp ult i32 %0, ptrtoint (ptr @__sched_text_end to i32)
  %6 = and i1 %4, %5
  %7 = or i1 %6, %3
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_lock_functions(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @sched_init() local_unnamed_addr #15 section ".init.text" {
  br i1 select (i1 icmp ne (ptr getelementptr inbounds (%struct.sched_class, ptr @idle_sched_class, i32 1), ptr @fair_sched_class), i1 true, i1 select (i1 icmp ne (ptr getelementptr inbounds (%struct.sched_class, ptr @fair_sched_class, i32 1), ptr @rt_sched_class), i1 true, i1 icmp ne (ptr getelementptr inbounds (%struct.sched_class, ptr @rt_sched_class, i32 1), ptr @dl_sched_class))), label %1, label %2, !prof !12

1:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 9307, 0\0A.popsection", ""() #28, !srcloc !145
  unreachable

2:                                                ; preds = %0
  br i1 icmp ne (ptr getelementptr inbounds (%struct.sched_class, ptr @dl_sched_class, i32 1), ptr @stop_sched_class), label %3, label %4, !prof !12

3:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 9309, 0\0A.popsection", ""() #28, !srcloc !146
  unreachable

4:                                                ; preds = %2
  tail call void @wait_bit_init() #31
  %5 = load i32, ptr @sysctl_sched_rt_period, align 4
  %6 = zext i32 %5 to i64
  %7 = mul nuw nsw i64 %6, 1000
  %8 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %9 = icmp slt i32 %8, 0
  %10 = sext i32 %8 to i64
  %11 = mul nsw i64 %10, 1000
  %12 = select i1 %9, i64 -1, i64 %11
  tail call void @init_rt_bandwidth(ptr noundef nonnull @def_rt_bandwidth, i64 noundef %7, i64 noundef %12) #28
  %13 = load i32, ptr @sysctl_sched_rt_period, align 4
  %14 = zext i32 %13 to i64
  %15 = mul nuw nsw i64 %14, 1000
  %16 = load i32, ptr @sysctl_sched_rt_runtime, align 4
  %17 = icmp slt i32 %16, 0
  %18 = sext i32 %16 to i64
  %19 = mul nsw i64 %18, 1000
  %20 = select i1 %17, i64 -1, i64 %19
  tail call void @init_dl_bandwidth(ptr noundef nonnull @def_dl_bandwidth, i64 noundef %15, i64 noundef %20) #28
  tail call void @init_defrootdomain() #28
  %21 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #29
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %24, %4
  %25 = phi i32 [ %76, %24 ], [ %21, %4 ]
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, ptrtoint (ptr @runqueues to i32)
  %29 = inttoptr i32 %28 to ptr
  store i32 0, ptr %29, align 64
  %30 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 1
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 54
  store i32 0, ptr %31, align 16
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = add i32 %32, 501
  %34 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 53
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 10
  tail call void @init_cfs_rq(ptr noundef %35) #28
  %36 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 11
  tail call void @init_rt_rq(ptr noundef %36) #28
  %37 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 12
  tail call void @init_dl_rq(ptr noundef %37) #28
  %38 = load i64, ptr getelementptr inbounds (%struct.rt_bandwidth, ptr @def_rt_bandwidth, i32 0, i32 2), align 8
  %39 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 11, i32 11
  store i64 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 30
  store ptr null, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 29
  store ptr null, ptr %41, align 8
  %42 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 32
  store i32 1024, ptr %42, align 4
  %43 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 31
  store i32 1024, ptr %43, align 16
  %44 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 33
  store ptr @balance_push_callback, ptr %44, align 8
  %45 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 37
  store i32 0, ptr %45, align 4
  %46 = load volatile i32, ptr @jiffies, align 64
  %47 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 17
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 38
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 40
  store i32 %25, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 41
  store i32 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 47
  store i64 0, ptr %51, align 64
  %52 = load i32, ptr @sysctl_sched_migration_cost, align 4
  %53 = shl i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 48
  store i64 %54, ptr %55, align 8
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 49
  store i32 %56, ptr %57, align 16
  %58 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 50
  store i64 %54, ptr %58, align 8
  %59 = zext i32 %52 to i64
  %60 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 51
  store i64 %59, ptr %60, align 32
  %61 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 42
  store volatile ptr %61, ptr %61, align 4
  %62 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 42, i32 1
  store ptr %61, ptr %62, align 4
  tail call void @rq_attach_root(ptr noundef %29, ptr noundef nonnull @def_root_domain) #28
  %63 = load volatile i32, ptr @jiffies, align 64
  %64 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 2
  store i32 %63, ptr %64, align 8
  %65 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 6
  store volatile i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 4
  store i64 0, ptr %66, align 16
  %67 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 4, i32 1
  store ptr @nohz_csd_func, ptr %67, align 8
  %68 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 4, i32 2
  store ptr %29, ptr %68, align 4
  %69 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 52
  store ptr null, ptr %69, align 4
  %70 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 56
  store i64 0, ptr %70, align 64
  %71 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 56, i32 1
  store ptr @__hrtick_start, ptr %71, align 8
  %72 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 56, i32 2
  store ptr %29, ptr %72, align 4
  %73 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 57
  tail call void @hrtimer_init(ptr noundef %73, i32 noundef 1, i32 noundef 9) #28
  %74 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 57, i32 2
  store ptr @hrtick, ptr %74, align 16
  %75 = getelementptr inbounds %struct.rq, ptr %29, i32 0, i32 25
  store volatile i32 0, ptr %75, align 4
  %76 = tail call i32 @cpumask_next(i32 noundef %25, ptr noundef nonnull @__cpu_possible_mask) #29
  %77 = load i32, ptr @nr_cpu_ids, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %24, label %79

79:                                               ; preds = %24, %4
  %80 = load i32, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 25), align 64
  %81 = icmp eq i32 %80, 5
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 3, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 19), align 64
  br label %90

83:                                               ; preds = %79
  %84 = load i32, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 15), align 4
  %85 = add i32 %84, -100
  %86 = getelementptr [40 x i32], ptr @sched_prio_to_weight, i32 0, i32 %85
  %87 = load i32, ptr %86, align 4
  store i32 %87, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 19), align 64
  %88 = getelementptr [40 x i32], ptr @sched_prio_to_wmult, i32 0, i32 %85
  %89 = load i32, ptr %88, align 4
  br label %90

90:                                               ; preds = %83, %82
  %91 = phi i32 [ %89, %83 ], [ 1431655765, %82 ]
  store i32 %91, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 19, i32 0, i32 1), align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11)) #28, !srcloc !29
  %92 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11), ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 11)) #28, !srcloc !92
  %93 = tail call ptr @llvm.thread.pointer() #28
  %94 = tail call zeroext i1 @set_kthread_struct(ptr noundef %93) #28
  br i1 %94, label %96, label %95, !prof !11

95:                                               ; preds = %90
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 9471, i32 noundef 9, ptr noundef null) #28
  br label %96

96:                                               ; preds = %95, %90
  %97 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  tail call void @init_idle(ptr noundef %93, i32 noundef %98) #33
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = add i32 %99, 501
  store i32 %100, ptr @calc_load_update, align 4
  tail call void @idle_thread_set_boot_cpu() #28
  %101 = load i32, ptr %97, align 8
  tail call fastcc void @balance_push_set(i32 noundef %101, i1 noundef zeroext false)
  tail call void @init_sched_fair_class() #28
  store i32 1, ptr @scheduler_running, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @wait_bit_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rt_bandwidth(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_bandwidth(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_defrootdomain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_cfs_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_rt_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rq_attach_root(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nohz_csd_func(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !147
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #28, !srcloc !29
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 15, ptr elementtype(i32) %8) #28, !srcloc !148
  %10 = extractvalue { i32, i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !149
  %11 = and i32 %10, 11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1120, i32 noundef 9, ptr noundef null) #28
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, ptr %4, align 4
  %16 = add i32 %15, ptrtoint (ptr @runqueues to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 15
  %21 = load ptr, ptr %20, align 16
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23, %14
  %28 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 35
  store i8 0, ptr %28, align 1
  br label %43

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rq, ptr %17, i32 0, i32 7
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 35
  store i8 %33, ptr %34, align 1
  br i1 %32, label %35, label %43

35:                                               ; preds = %29
  %36 = tail call ptr @llvm.thread.pointer() #28
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = trunc i32 %10 to i8
  %42 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 34
  store i8 %41, ptr %42, align 4
  tail call void @raise_softirq_irqoff(i32 noundef 7) #28
  br label %43

43:                                               ; preds = %40, %35, %29, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_kthread_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_thread_set_boot_cpu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_sched_fair_class() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @normalize_rt_tasks() local_unnamed_addr #0 {
  %1 = alloca %struct.sched_attr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i32 56, i1 false)
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #28
  %2 = load volatile ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 34), align 4
  %3 = getelementptr i8, ptr %2, i32 -1116
  %4 = icmp eq ptr %3, @init_task
  br i1 %4, label %41, label %9

5:                                                ; preds = %36, %9
  %6 = load volatile ptr, ptr %10, align 4
  %7 = getelementptr i8, ptr %6, i32 -1116
  %8 = icmp eq ptr %7, @init_task
  br i1 %8, label %41, label %9

9:                                                ; preds = %5, %0
  %10 = phi ptr [ %6, %5 ], [ %2, %0 ]
  %11 = getelementptr i8, ptr %10, i32 500
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr inbounds %struct.signal_struct, ptr %12, i32 0, i32 3
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %5, label %16

16:                                               ; preds = %36, %9
  %17 = phi ptr [ %37, %36 ], [ %14, %9 ]
  %18 = getelementptr i8, ptr %17, i32 -1388
  %19 = getelementptr i8, ptr %17, i32 -840
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %17, i32 -716
  store i64 0, ptr %24, align 32
  %25 = getelementptr i8, ptr %17, i32 -796
  %26 = load i32, ptr %25, align 16
  %27 = icmp sgt i32 %26, 99
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %17, i32 -792
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -120
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  call void @set_user_nice(ptr noundef %18, i32 noundef 0)
  br label %36

34:                                               ; preds = %23
  %35 = call fastcc i32 @__sched_setscheduler(ptr noundef %18, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %36

36:                                               ; preds = %34, %33, %28, %16
  %37 = load volatile ptr, ptr %17, align 4
  %38 = load ptr, ptr %11, align 16
  %39 = getelementptr inbounds %struct.signal_struct, ptr %38, i32 0, i32 3
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %5, label %16

41:                                               ; preds = %5, %0
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !124
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @tasklist_lock) #28, !srcloc !29
  %42 = call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr nonnull @tasklist_lock) #28, !srcloc !125
  %43 = extractvalue { i32, i32 } %42, 0
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  br label %46

46:                                               ; preds = %45, %41
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !126
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dump_cpu_task(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %0) #31
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  tail call void @sched_show_task(ptr noundef %8)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @call_trace_sched_update_nr_running(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #28
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr @__cpu_online_mask, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !150
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_update_nr_running_tp, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %24, %19 ], [ %17, %16 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tracepoint_func, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %21(ptr noundef %23, ptr noundef %0, i32 noundef %1) #28
  %24 = getelementptr %struct.tracepoint_func, ptr %20, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %16
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !151
  br label %28

28:                                               ; preds = %27, %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_kthread_stop(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_stop, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_stop, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %10, i32 noundef %12) #28
  %13 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi i32 [ %13, %8 ], [ %6, %3 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_kthread_stop_ret(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_stop_ret, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %11) #28
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_kthread_work_queue_work(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_queue_work, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_queue_work, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_queue_work, ptr %5, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.28, ptr noundef %11, ptr noundef %13, ptr noundef %15) #28
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_kthread_work_execute_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_start, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_start, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %11, ptr noundef %13) #28
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_kthread_work_execute_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_end, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_sched_kthread_work_execute_end, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %11, ptr noundef %13) #28
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_wakeup_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_sched_wakeup_template, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #28
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #20

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_switch(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %7, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %7, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.50, i32 noundef %18, ptr noundef nonnull @trace_raw_output_sched_switch.__flags) #28
  %22 = load i32, ptr %16, align 4
  br label %23

23:                                               ; preds = %20, %10
  %24 = phi i32 [ %22, %20 ], [ %17, %10 ]
  %25 = phi ptr [ %21, %20 ], [ @.str.51, %10 ]
  %26 = and i32 %24, 256
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.53, ptr @.str.52
  %29 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %7, i32 0, i32 5
  %30 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %7, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_sched_switch, ptr %7, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %25, ptr noundef nonnull %28, ptr noundef %29, i32 noundef %31, i32 noundef %33) #28
  %34 = tail call i32 @trace_handle_return(ptr noundef %4) #28
  br label %35

35:                                               ; preds = %23, %3
  %36 = phi i32 [ %34, %23 ], [ %8, %3 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_migrate_task(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_sched_migrate_task, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #28
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_process_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_process_template, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_sched_process_template, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_sched_process_template, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %10, i32 noundef %12, i32 noundef %14) #28
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_process_wait(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_process_wait, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_sched_process_wait, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_sched_process_wait, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %10, i32 noundef %12, i32 noundef %14) #28
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_process_fork(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %5, i32 0, i32 3
  %14 = getelementptr inbounds %struct.trace_event_raw_sched_process_fork, ptr %5, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef %10, i32 noundef %12, ptr noundef %13, i32 noundef %15) #28
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_process_exec(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_process_exec, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_sched_process_exec, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_sched_process_exec, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %13, i32 noundef %15, i32 noundef %17) #28
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_stat_runtime(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %5, i32 0, i32 3
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.trace_event_raw_sched_stat_runtime, ptr %5, i32 0, i32 4
  %16 = load i64, ptr %15, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.71, ptr noundef %10, i32 noundef %12, i64 noundef %14, i64 noundef %16) #28
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_pi_setprio(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_sched_pi_setprio, ptr %5, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #28
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_move_numa(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_sched_move_numa, ptr %5, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.81, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #28
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_numa_pair_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_sched_numa_pair_template, ptr %5, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.88, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #28
  %30 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %31

31:                                               ; preds = %8, %3
  %32 = phi i32 [ %30, %8 ], [ %6, %3 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_sched_wake_idle_without_ipi(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #28
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_sched_wake_idle_without_ipi, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.90, i32 noundef %11) #28
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #28
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #23

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #24

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #23

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @housekeeping_test_cpu(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #25

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__set_cpus_allowed_ptr_locked(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.set_affinity_pending, align 4
  %7 = alloca %struct.wait_bit_queue_entry, align 4
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2097152
  %11 = icmp eq i32 %10, 0
  tail call void @update_rq_clock(ptr noundef %3)
  br i1 %11, label %12, label %23

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %14 = load i16, ptr %13, align 8
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, ptr @__cpu_active_mask, ptr @__cpu_online_mask
  %17 = load i32, ptr %1, align 4
  %18 = load i32, ptr @__cpu_possible_mask, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, 65535
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %278

23:                                               ; preds = %12, %5
  %24 = phi ptr [ %16, %12 ], [ @__cpu_online_mask, %5 ]
  %25 = and i32 %2, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %8, align 4
  %29 = and i32 %28, 67108864
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %278

31:                                               ; preds = %27, %23
  %32 = and i32 %2, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 29
  %36 = load i32, ptr %35, align 4
  %37 = load i32, ptr %1, align 4
  %38 = xor i32 %37, %36
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %278, label %41

41:                                               ; preds = %34
  %42 = tail call ptr @llvm.thread.pointer() #28
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %46 = load i16, ptr %45, align 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %50 = load volatile i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr %1, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  %58 = load i1, ptr @__set_cpus_allowed_ptr_locked.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %62, !prof !12

61:                                               ; preds = %48
  store i1 true, ptr @__set_cpus_allowed_ptr_locked.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2835, i32 noundef 9, ptr noundef null) #28
  br label %278

62:                                               ; preds = %48
  br i1 %57, label %278, label %63

63:                                               ; preds = %62, %44, %41, %31
  %64 = tail call i32 @cpumask_any_and_distribute(ptr noundef nonnull %24, ptr noundef %1) #28
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %278

67:                                               ; preds = %63
  tail call fastcc void @__do_set_cpus_allowed(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %68 = and i32 %2, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 28
  %72 = load ptr, ptr %71, align 4
  store ptr null, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi ptr [ %72, %70 ], [ null, %67 ]
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %6, i8 0, i32 60, i1 false) #28
  %75 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %76 = load volatile i32, ptr %75, align 8
  %77 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 29
  %78 = lshr i32 %76, 5
  %79 = getelementptr i32, ptr %77, i32 %78
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %76, 31
  %82 = shl nuw i32 1, %81
  %83 = and i32 %82, %80
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %137, label %85

85:                                               ; preds = %73
  br i1 %33, label %106, label %86

86:                                               ; preds = %85
  %87 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 32
  %88 = load i16, ptr %87, align 2
  %89 = and i16 %88, 1
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %106, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 61
  %93 = load i32, ptr %92, align 16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  store i32 1, ptr %92, align 16
  %96 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %96) #28, !srcloc !29
  %97 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %96, ptr %96, i32 1, ptr elementtype(i32) %96) #28, !srcloc !31
  %98 = extractvalue { i32, i32, i32 } %97, 0
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %104, label %100, !prof !12

100:                                              ; preds = %95
  %101 = add i32 %98, 1
  %102 = or i32 %101, %98
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %106, label %104, !prof !11

104:                                              ; preds = %100, %95
  %105 = phi i32 [ 2, %95 ], [ 1, %100 ]
  tail call void @refcount_warn_saturate(ptr noundef %96, i32 noundef %105) #28
  br label %106

106:                                              ; preds = %104, %100, %91, %86, %85
  %107 = phi ptr [ null, %91 ], [ null, %86 ], [ null, %85 ], [ %0, %100 ], [ %0, %104 ]
  %108 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 30
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.set_affinity_pending, ptr %109, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store ptr null, ptr %108, align 4
  br label %116

116:                                              ; preds = %115, %111, %106
  %117 = phi i1 [ false, %111 ], [ true, %115 ], [ false, %106 ]
  %118 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 19
  %119 = load i32, ptr %118, align 32
  %120 = icmp ugt i32 %119, 2
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.rq_flags, ptr %4, i32 0, i32 2
  store i32 4, ptr %122, align 4
  br label %123

123:                                              ; preds = %121, %116
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %124 = load i16, ptr %3, align 4
  %125 = add i16 %124, 1
  store i16 %125, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %126 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %127 = load i32, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %126, i32 noundef %127) #28
  %128 = icmp eq ptr %107, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 40
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 62
  %133 = tail call zeroext i1 @stop_one_cpu_nowait(i32 noundef %131, ptr noundef nonnull @push_cpu_stop, ptr noundef %0, ptr noundef %132) #28
  br label %134

134:                                              ; preds = %129, %123
  br i1 %117, label %135, label %276

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.set_affinity_pending, ptr %109, i32 0, i32 2
  tail call void @complete_all(ptr noundef %136) #28
  br label %276

137:                                              ; preds = %73
  br i1 %33, label %138, label %160

138:                                              ; preds = %137
  %139 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 30
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %138
  store volatile i32 1, ptr %6, align 4
  %143 = getelementptr inbounds %struct.set_affinity_pending, ptr %6, i32 0, i32 2
  store i32 0, ptr %143, align 4
  %144 = getelementptr inbounds %struct.set_affinity_pending, ptr %6, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %144, ptr noundef nonnull @.str.97, ptr noundef nonnull @init_completion.__key) #28
  %145 = getelementptr inbounds %struct.set_affinity_pending, ptr %6, i32 0, i32 4
  store ptr %0, ptr %145, align 4
  %146 = getelementptr inbounds %struct.set_affinity_pending, ptr %6, i32 0, i32 4, i32 1
  store i32 %64, ptr %146, align 4
  %147 = getelementptr inbounds %struct.set_affinity_pending, ptr %6, i32 0, i32 4, i32 2
  store ptr %6, ptr %147, align 4
  store ptr %6, ptr %139, align 4
  br label %160

148:                                              ; preds = %138
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %140) #28, !srcloc !29
  %149 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %140, ptr nonnull %140, i32 1, ptr nonnull elementtype(i32) %140) #28, !srcloc !31
  %150 = extractvalue { i32, i32, i32 } %149, 0
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152, !prof !12

152:                                              ; preds = %148
  %153 = add i32 %150, 1
  %154 = or i32 %153, %150
  %155 = icmp sgt i32 %154, -1
  br i1 %155, label %158, label %156, !prof !11

156:                                              ; preds = %152, %148
  %157 = phi i32 [ 2, %148 ], [ 1, %152 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %140, i32 noundef %157) #28
  br label %158

158:                                              ; preds = %156, %152
  %159 = getelementptr inbounds %struct.set_affinity_pending, ptr %140, i32 0, i32 4, i32 1
  store i32 %64, ptr %159, align 4
  br label %160

160:                                              ; preds = %158, %142, %137
  %161 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 30
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  %164 = load i1, ptr @affine_move_task.__already_done, align 1
  %165 = xor i1 %164, true
  %166 = select i1 %163, i1 %165, i1 false
  br i1 %166, label %167, label %168, !prof !12

167:                                              ; preds = %160
  store i1 true, ptr @affine_move_task.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2720, i32 noundef 9, ptr noundef null) #28
  br label %168

168:                                              ; preds = %167, %160
  br i1 %163, label %169, label %180

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 19
  %171 = load i32, ptr %170, align 32
  %172 = icmp ugt i32 %171, 2
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.rq_flags, ptr %4, i32 0, i32 2
  store i32 4, ptr %174, align 4
  br label %175

175:                                              ; preds = %173, %169
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %176 = load i16, ptr %3, align 4
  %177 = add i16 %176, 1
  store i16 %177, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %178 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %179 = load i32, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %178, i32 noundef %179) #28
  br label %276

180:                                              ; preds = %168
  %181 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 6
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %186 = load volatile i32, ptr %185, align 8
  %187 = icmp eq i32 %186, 512
  br i1 %187, label %188, label %216

188:                                              ; preds = %184, %180
  %189 = getelementptr inbounds %struct.set_affinity_pending, ptr %162, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  store i32 1, ptr %189, align 4
  br label %193

193:                                              ; preds = %192, %188
  br i1 %33, label %198, label %194

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 32
  %196 = load i16, ptr %195, align 2
  %197 = and i16 %196, -2
  store i16 %197, ptr %195, align 2
  br label %198

198:                                              ; preds = %194, %193
  %199 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 19
  %200 = load i32, ptr %199, align 32
  %201 = icmp ugt i32 %200, 2
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.rq_flags, ptr %4, i32 0, i32 2
  store i32 4, ptr %203, align 4
  br label %204

204:                                              ; preds = %202, %198
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %205 = load i16, ptr %3, align 4
  %206 = add i16 %205, 1
  store i16 %206, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %207 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %208 = load i32, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %207, i32 noundef %208) #28
  br i1 %191, label %209, label %215

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 40
  %211 = load i32, ptr %210, align 4
  %212 = getelementptr inbounds %struct.set_affinity_pending, ptr %162, i32 0, i32 4
  %213 = getelementptr inbounds %struct.set_affinity_pending, ptr %162, i32 0, i32 3
  %214 = call zeroext i1 @stop_one_cpu_nowait(i32 noundef %211, ptr noundef nonnull @migration_cpu_stop, ptr noundef %212, ptr noundef %213) #28
  br label %215

215:                                              ; preds = %209, %204
  br i1 %33, label %245, label %276

216:                                              ; preds = %184
  %217 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %218 = load i16, ptr %217, align 8
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = call fastcc ptr @move_queued_task(ptr noundef %3, ptr noundef %4, ptr noundef %0, i32 noundef %64) #28
  br label %226

226:                                              ; preds = %224, %220
  %227 = phi ptr [ %225, %224 ], [ %3, %220 ]
  %228 = getelementptr inbounds %struct.set_affinity_pending, ptr %162, i32 0, i32 1
  %229 = load i32, ptr %228, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %226
  store ptr null, ptr %161, align 4
  call fastcc void @task_rq_unlock(ptr noundef %227, ptr noundef %0, ptr noundef %4) #28
  %232 = getelementptr inbounds %struct.set_affinity_pending, ptr %162, i32 0, i32 2
  call void @complete_all(ptr noundef %232) #28
  br label %245

233:                                              ; preds = %216
  %234 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 19
  %235 = load i32, ptr %234, align 32
  %236 = icmp ugt i32 %235, 2
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.rq_flags, ptr %4, i32 0, i32 2
  store i32 4, ptr %238, align 4
  br label %239

239:                                              ; preds = %237, %233
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %240 = load i16, ptr %3, align 4
  %241 = add i16 %240, 1
  store i16 %241, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %242 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %243 = load i32, ptr %4, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %242, i32 noundef %243) #28
  br label %245

244:                                              ; preds = %226
  call fastcc void @task_rq_unlock(ptr noundef %227, ptr noundef %0, ptr noundef %4) #28
  br label %245

245:                                              ; preds = %244, %239, %231, %215
  %246 = getelementptr inbounds %struct.set_affinity_pending, ptr %162, i32 0, i32 2
  call void @wait_for_completion(ptr noundef %246) #28
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %162) #28, !srcloc !29
  %247 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %162, ptr nonnull %162, i32 1, ptr nonnull elementtype(i32) %162) #28, !srcloc !33
  %248 = extractvalue { i32, i32, i32 } %247, 0
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %253, label %250

250:                                              ; preds = %245
  %251 = icmp sgt i32 %248, 0
  br i1 %251, label %254, label %252, !prof !11

252:                                              ; preds = %250
  call void @refcount_warn_saturate(ptr noundef nonnull %162, i32 noundef 3) #28
  br label %254

253:                                              ; preds = %245
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !34
  call void @wake_up_var(ptr noundef nonnull %162) #28
  br label %254

254:                                              ; preds = %253, %252, %250
  %255 = load volatile i32, ptr %6, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %268, label %257

257:                                              ; preds = %254
  %258 = call ptr @__var_waitqueue(ptr noundef nonnull %6) #28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #28
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %7, i8 0, i32 32, i1 false) #28, !annotation !10
  call void @init_wait_var_entry(ptr noundef nonnull %7, ptr noundef nonnull %6, i32 noundef 0) #28
  %259 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %7, i32 0, i32 1
  %260 = call i32 @prepare_to_wait_event(ptr noundef %258, ptr noundef %259, i32 noundef 2) #28
  %261 = load volatile i32, ptr %6, align 4
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %263, %257
  call void @schedule() #28
  %264 = call i32 @prepare_to_wait_event(ptr noundef %258, ptr noundef %259, i32 noundef 2) #28
  %265 = load volatile i32, ptr %6, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %263

267:                                              ; preds = %263, %257
  call void @finish_wait(ptr noundef %258, ptr noundef %259) #28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #28
  br label %268

268:                                              ; preds = %267, %254
  %269 = getelementptr inbounds %struct.set_affinity_pending, ptr %6, i32 0, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = icmp ne i32 %270, 0
  %272 = load i1, ptr @affine_move_task.__already_done.96, align 1
  %273 = xor i1 %272, true
  %274 = select i1 %271, i1 %273, i1 false
  br i1 %274, label %275, label %276, !prof !12

275:                                              ; preds = %268
  store i1 true, ptr @affine_move_task.__already_done.96, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2776, i32 noundef 9, ptr noundef null) #28
  br label %276

276:                                              ; preds = %275, %268, %215, %175, %135, %134
  %277 = phi i32 [ -22, %175 ], [ 0, %135 ], [ 0, %134 ], [ 0, %215 ], [ 0, %275 ], [ 0, %268 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #28
  call void @kfree(ptr noundef %74) #28
  br label %290

278:                                              ; preds = %63, %62, %61, %34, %27, %12
  %279 = phi i32 [ 0, %34 ], [ -22, %12 ], [ -22, %27 ], [ -16, %62 ], [ -22, %63 ], [ -16, %61 ]
  %280 = getelementptr inbounds %struct.rq, ptr %3, i32 0, i32 19
  %281 = load i32, ptr %280, align 32
  %282 = icmp ugt i32 %281, 2
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.rq_flags, ptr %4, i32 0, i32 2
  store i32 4, ptr %284, align 4
  br label %285

285:                                              ; preds = %283, %278
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %286 = load i16, ptr %3, align 4
  %287 = add i16 %286, 1
  store i16 %287, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %288 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  %289 = load i32, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %288, i32 noundef %289) #28
  br label %290

290:                                              ; preds = %285, %276
  %291 = phi i32 [ %279, %285 ], [ %277, %276 ]
  ret i32 %291
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_any_and_distribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @stop_one_cpu_nowait(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @move_queued_task(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 13
  store i32 2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 22
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sched_class, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, ptr noundef %2, i32 noundef 8) #28
  tail call void @set_task_cpu(ptr noundef %2, i32 noundef %3)
  %10 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %11 = load i32, ptr %10, align 32
  %12 = icmp ugt i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.rq_flags, ptr %1, i32 0, i32 2
  store i32 4, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %16 = load i16, ptr %0, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %18 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, ptrtoint (ptr @runqueues to i32)
  %21 = inttoptr i32 %20 to ptr
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %21) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %22 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 19
  %23 = load i32, ptr %22, align 32
  %24 = and i32 %23, 3
  store i32 %24, ptr %22, align 32
  %25 = getelementptr inbounds %struct.rq_flags, ptr %1, i32 0, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 33
  %27 = load ptr, ptr %26, align 8
  %28 = icmp ne ptr %27, null
  %29 = icmp ne ptr %27, @balance_push_callback
  %30 = and i1 %28, %29
  %31 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !12

34:                                               ; preds = %15
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %35

35:                                               ; preds = %34, %15
  %36 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %37 = load volatile i32, ptr %36, align 8
  %38 = icmp eq i32 %37, %3
  br i1 %38, label %40, label %39, !prof !11

39:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2275, 0\0A.popsection", ""() #28, !srcloc !152
  unreachable

40:                                               ; preds = %35
  tail call void @update_rq_clock(ptr noundef %21) #28
  %41 = load ptr, ptr %6, align 8
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %21, ptr noundef %2, i32 noundef 0) #28
  store i32 1, ptr %5, align 4
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 22
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %43, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.sched_class, ptr %43, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %21, ptr noundef %2, i32 noundef 0) #28
  br label %66

52:                                               ; preds = %40
  %53 = icmp ugt ptr %43, %47
  br i1 %53, label %54, label %66

54:                                               ; preds = %52
  %55 = load volatile i32, ptr %45, align 4
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rq, ptr %21, i32 0, i32 40
  %60 = load i32, ptr %59, align 4
  %61 = tail call ptr @llvm.thread.pointer() #28
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %60, %63
  tail call void @_set_bit(i32 noundef 1, ptr noundef %45) #28
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  tail call void @smp_send_reschedule(i32 noundef %60) #28
  br label %66

66:                                               ; preds = %65, %58, %54, %52, %49
  %67 = load ptr, ptr %44, align 4
  %68 = getelementptr inbounds %struct.task_struct, ptr %67, i32 0, i32 13
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load volatile i32, ptr %67, align 4
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load i32, ptr %22, align 32
  %77 = or i32 %76, 1
  store i32 %77, ptr %22, align 32
  br label %78

78:                                               ; preds = %75, %71, %66
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ttwu_do_wakeup(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 22
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 22
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %6, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.sched_class, ptr %6, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0, ptr noundef %1, i32 noundef %2) #28
  br label %29

15:                                               ; preds = %4
  %16 = icmp ugt ptr %6, %10
  br i1 %16, label %17, label %29

17:                                               ; preds = %15
  %18 = load volatile i32, ptr %8, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 40
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @llvm.thread.pointer() #28
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %23, %26
  tail call void @_set_bit(i32 noundef 1, ptr noundef %8) #28
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void @smp_send_reschedule(i32 noundef %23) #28
  br label %29

29:                                               ; preds = %28, %21, %17, %15, %12
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load volatile i32, ptr %30, align 4
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %40 = load i32, ptr %39, align 32
  %41 = or i32 %40, 1
  store i32 %41, ptr %39, align 32
  br label %42

42:                                               ; preds = %38, %34, %29
  %43 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 1
  store volatile i32 0, ptr %43, align 8
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wakeup, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = tail call ptr @llvm.thread.pointer() #28
  %48 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8
  %50 = lshr i32 %49, 5
  %51 = getelementptr i32, ptr @__cpu_online_mask, i32 %50
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %49, 31
  %54 = shl nuw i32 1, %53
  %55 = and i32 %54, %52
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %46
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !67
  %58 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_wakeup, i32 0, i32 7), align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %60, %57
  %61 = phi ptr [ %65, %60 ], [ %58, %57 ]
  %62 = load volatile ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.tracepoint_func, ptr %61, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void %62(ptr noundef %64, ptr noundef %1) #28
  %65 = getelementptr %struct.tracepoint_func, ptr %61, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %60

68:                                               ; preds = %60, %57
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !68
  br label %69

69:                                               ; preds = %68, %46, %42
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds %struct.sched_class, ptr %70, i32 0, i32 12
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %76 = load i32, ptr %75, align 32
  %77 = icmp ugt i32 %76, 2
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rq_flags, ptr %3, i32 0, i32 2
  store i32 4, ptr %79, align 4
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.sched_class, ptr %80, i32 0, i32 12
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi ptr [ %72, %74 ], [ %82, %78 ]
  tail call void %84(ptr noundef %0, ptr noundef %1) #28
  %85 = getelementptr inbounds %struct.rq_flags, ptr %3, i32 0, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %75, align 32
  %88 = or i32 %87, %86
  store i32 %88, ptr %75, align 32
  br label %89

89:                                               ; preds = %83, %69
  %90 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 47
  %91 = load i64, ptr %90, align 64
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %120, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %95 = load i32, ptr %94, align 32
  %96 = icmp ult i32 %95, 2
  %97 = load i1, ptr @assert_clock_updated.__already_done, align 1
  %98 = xor i1 %97, true
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %100, label %102, !prof !12

100:                                              ; preds = %93
  store i1 true, ptr @assert_clock_updated.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1459, i32 noundef 9, ptr noundef nonnull @.str.93) #28
  %101 = load i64, ptr %90, align 64
  br label %102

102:                                              ; preds = %100, %93
  %103 = phi i64 [ %91, %93 ], [ %101, %100 ]
  %104 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 20
  %105 = load i64, ptr %104, align 8
  %106 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 51
  %107 = load i64, ptr %106, align 32
  %108 = shl i64 %107, 1
  %109 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 48
  %110 = load i64, ptr %109, align 8
  %111 = add i64 %103, %110
  %112 = sub i64 %105, %111
  %113 = sdiv i64 %112, 8
  %114 = add i64 %113, %110
  %115 = tail call i64 @llvm.umin.i64(i64 %114, i64 %108)
  store i64 %115, ptr %109, align 8
  %116 = load volatile i32, ptr @jiffies, align 64
  %117 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 49
  store i32 %116, ptr %117, align 16
  %118 = lshr i64 %115, 1
  %119 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 50
  store i64 %118, ptr %119, align 8
  store i64 0, ptr %90, align 64
  br label %120

120:                                              ; preds = %102, %89
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ttwu_queue_wakelist(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr @sysctl_sched_features, align 4
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %64, label %7

7:                                                ; preds = %3
  %8 = lshr i32 %1, 5
  %9 = getelementptr i32, ptr @__cpu_active_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %1, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %7
  %16 = tail call ptr @llvm.thread.pointer() #28
  %17 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, ptrtoint (ptr @sd_llc_id to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, ptrtoint (ptr @sd_llc_id to i32)
  %29 = inttoptr i32 %28 to ptr
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %20, %15
  %33 = and i32 %2, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %32
  %36 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, ptrtoint (ptr @runqueues to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.rq, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %64

43:                                               ; preds = %35
  %44 = load i1, ptr @ttwu_queue_wakelist.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %19, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !12

47:                                               ; preds = %43
  store i1 true, ptr @ttwu_queue_wakelist.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3780, i32 noundef 9, ptr noundef null) #28
  br label %48

48:                                               ; preds = %47, %43
  br i1 %19, label %64, label %49

49:                                               ; preds = %48, %20
  %50 = tail call i64 @sched_clock_cpu(i32 noundef %1) #28
  %51 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, ptrtoint (ptr @runqueues to i32)
  %54 = inttoptr i32 %53 to ptr
  %55 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 49
  %56 = trunc i32 %2 to i8
  %57 = lshr i8 %56, 5
  %58 = and i8 %57, 1
  %59 = load i8, ptr %55, align 8
  %60 = and i8 %59, -2
  %61 = or i8 %60, %58
  store i8 %61, ptr %55, align 8
  %62 = getelementptr inbounds %struct.rq, ptr %54, i32 0, i32 7
  store volatile i32 1, ptr %62, align 8
  %63 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 7
  tail call void @__smp_call_single_queue(i32 noundef %1, ptr noundef %63) #28
  br label %64

64:                                               ; preds = %49, %48, %35, %32, %7, %3
  %65 = phi i1 [ true, %49 ], [ false, %48 ], [ false, %3 ], [ false, %7 ], [ false, %35 ], [ false, %32 ]
  ret i1 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__smp_call_single_queue(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_task_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_dl_inactive_task_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dl_clear_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @reweight_task(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @select_fallback_rq(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #29
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 27
  %8 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 31
  %9 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  br label %18

10:                                               ; preds = %48, %2
  %11 = phi i32 [ %4, %2 ], [ %50, %48 ]
  %12 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 27
  %13 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 31
  %14 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 4
  %15 = load ptr, ptr %12, align 8
  %16 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %15) #29
  %17 = icmp ult i32 %16, %11
  br i1 %17, label %52, label %87

18:                                               ; preds = %48, %6
  %19 = phi i32 [ %3, %6 ], [ %49, %48 ]
  %20 = load ptr, ptr %7, align 8
  %21 = lshr i32 %19, 5
  %22 = getelementptr i32, ptr %20, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %19, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %18
  %29 = load i16, ptr %8, align 8
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, ptr %9, align 4
  %33 = and i32 %32, 2097152
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = tail call zeroext i1 @kthread_is_per_cpu(ptr noundef %1) #28
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = getelementptr i32, ptr @__cpu_dying_mask, i32 %21
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, %25
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37, %35, %31, %28
  %43 = phi ptr [ @__cpu_online_mask, %28 ], [ @__cpu_active_mask, %31 ], [ @__cpu_online_mask, %35 ], [ @__cpu_online_mask, %37 ]
  %44 = getelementptr i32, ptr %43, i32 %21
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, %25
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %143

48:                                               ; preds = %42, %37, %18
  %49 = tail call i32 @cpumask_next(i32 noundef %19, ptr noundef nonnull @__cpu_online_mask) #29
  %50 = load i32, ptr @nr_cpu_ids, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %18, label %10

52:                                               ; preds = %82, %10
  %53 = phi i32 [ %84, %82 ], [ %16, %10 ]
  %54 = phi ptr [ %83, %82 ], [ %15, %10 ]
  %55 = lshr i32 %53, 5
  %56 = getelementptr i32, ptr %54, i32 %55
  %57 = load volatile i32, ptr %56, align 4
  %58 = and i32 %53, 31
  %59 = shl nuw i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %52
  %63 = load i16, ptr %13, align 8
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, ptr %14, align 4
  %67 = and i32 %66, 2097152
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = tail call zeroext i1 @kthread_is_per_cpu(ptr noundef %1) #28
  br i1 %70, label %76, label %71

71:                                               ; preds = %69
  %72 = getelementptr i32, ptr @__cpu_dying_mask, i32 %55
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %73, %59
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71, %69, %65, %62
  %77 = phi ptr [ @__cpu_online_mask, %62 ], [ @__cpu_active_mask, %65 ], [ @__cpu_online_mask, %69 ], [ @__cpu_online_mask, %71 ]
  %78 = getelementptr i32, ptr %77, i32 %55
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, %59
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %76, %71, %52
  %83 = load ptr, ptr %12, align 8
  %84 = tail call i32 @cpumask_next(i32 noundef %53, ptr noundef %83) #29
  %85 = load i32, ptr @nr_cpu_ids, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %52, label %87

87:                                               ; preds = %82, %10
  tail call fastcc void @__do_set_cpus_allowed(ptr noundef %1, ptr noundef nonnull @__cpu_possible_mask, i32 noundef 0) #28
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %89 = load ptr, ptr %12, align 8
  %90 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %89) #29
  %91 = icmp ult i32 %90, %88
  br i1 %91, label %92, label %127

92:                                               ; preds = %122, %87
  %93 = phi i32 [ %124, %122 ], [ %90, %87 ]
  %94 = phi ptr [ %123, %122 ], [ %89, %87 ]
  %95 = lshr i32 %93, 5
  %96 = getelementptr i32, ptr %94, i32 %95
  %97 = load volatile i32, ptr %96, align 4
  %98 = and i32 %93, 31
  %99 = shl nuw i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %122, label %102

102:                                              ; preds = %92
  %103 = load i16, ptr %13, align 8
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load i32, ptr %14, align 4
  %107 = and i32 %106, 2097152
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = tail call zeroext i1 @kthread_is_per_cpu(ptr noundef %1) #28
  br i1 %110, label %116, label %111

111:                                              ; preds = %109
  %112 = getelementptr i32, ptr @__cpu_dying_mask, i32 %95
  %113 = load volatile i32, ptr %112, align 4
  %114 = and i32 %113, %99
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111, %109, %105, %102
  %117 = phi ptr [ @__cpu_online_mask, %102 ], [ @__cpu_active_mask, %105 ], [ @__cpu_online_mask, %109 ], [ @__cpu_online_mask, %111 ]
  %118 = getelementptr i32, ptr %117, i32 %95
  %119 = load volatile i32, ptr %118, align 4
  %120 = and i32 %119, %99
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116, %111, %92
  %123 = load ptr, ptr %12, align 8
  %124 = tail call i32 @cpumask_next(i32 noundef %93, ptr noundef %123) #29
  %125 = load i32, ptr @nr_cpu_ids, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %92, label %127

127:                                              ; preds = %122, %87
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/sched/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3403, 0\0A.popsection", ""() #28, !srcloc !153
  unreachable

128:                                              ; preds = %116, %76
  %129 = phi i1 [ true, %76 ], [ false, %116 ]
  %130 = phi i32 [ %53, %76 ], [ %93, %116 ]
  br i1 %129, label %143, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 37
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.select_fallback_rq) #28
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 52
  %140 = load i32, ptr %139, align 8
  %141 = getelementptr inbounds %struct.task_struct, ptr %1, i32 0, i32 85
  %142 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.98, i32 noundef %140, ptr noundef %141, i32 noundef %0) #31
  br label %143

143:                                              ; preds = %138, %135, %131, %128, %42
  %144 = phi i32 [ %130, %131 ], [ %130, %135 ], [ %130, %138 ], [ %130, %128 ], [ %19, %42 ]
  ret i32 %144
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_is_per_cpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_task_struct_rcu_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__perf_event_task_sched_in(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @___perf_sw_event(i32 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kmap_local_sched_in() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_smp_call_function_from_idle() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_note_context_switch(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__schedule_bug(ptr noundef %0) unnamed_addr #26 {
  %2 = load i32, ptr @oops_in_progress, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 85
  %6 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 52
  %7 = load i32, ptr %6, align 8
  %8 = tail call ptr @llvm.thread.pointer() #28
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %5, i32 noundef %7, i32 noundef %10) #31
  tail call void @print_modules() #28
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #28, !srcloc !102
  %13 = load i32, ptr @panic_on_warn, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.104) #34
  unreachable

16:                                               ; preds = %4
  tail call void @dump_stack() #31
  tail call void @add_taint(i32 noundef 9, i32 noundef 0) #28
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_modules() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #27

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pick_next_task_fair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pick_next_task_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__switch_to(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__perf_event_task_sched_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kmap_local_sched_out() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wq_worker_sleeping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_wq_worker_sleeping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wq_worker_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_wq_worker_running(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_setnice(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__checkparam_dl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dl_param_changed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_dl_overflow(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_adjust_pi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__setparam_dl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_sched_setscheduler(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.sched_attr, align 8
  %5 = alloca %struct.sched_param, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #28
  store i32 0, ptr %5, align 4, !annotation !10
  %6 = icmp eq ptr %2, null
  %7 = icmp slt i32 %0, 0
  %8 = or i1 %7, %6
  br i1 %8, label %68, label %9

9:                                                ; preds = %3
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %2, i32 4, i32 -1090519040) #32, !srcloc !114
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !prof !11

13:                                               ; preds = %9
  %14 = tail call ptr @llvm.thread.pointer() #28
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #24, !srcloc !81
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #28, !srcloc !82
  tail call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %19 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 4) #28
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #28, !srcloc !82
  call void asm sideeffect "isb ", "~{memory}"() #28, !srcloc !83
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21, !prof !11

21:                                               ; preds = %13, %9
  %22 = phi i32 [ %19, %13 ], [ 4, %9 ]
  %23 = sub i32 4, %22
  %24 = getelementptr i8, ptr %5, i32 %23
  call void @llvm.memset.p0.i32(ptr align 1 %24, i8 0, i32 %22, i1 false) #28
  br label %68

25:                                               ; preds = %13
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %26 = icmp eq i32 %0, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %25
  %28 = call ptr @find_task_by_vpid(i32 noundef %0) #28
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi ptr [ %28, %27 ], [ %14, %25 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32, !prof !12

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 3
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #28, !srcloc !29
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #28, !srcloc !31
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !12

37:                                               ; preds = %32
  %38 = add i32 %35, 1
  %39 = or i32 %38, %35
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %43, label %41, !prof !11

41:                                               ; preds = %37, %32
  %42 = phi i32 [ 2, %32 ], [ 1, %37 ]
  call void @refcount_warn_saturate(ptr noundef %33, i32 noundef %42) #28
  br label %43

43:                                               ; preds = %41, %37
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #28
  %44 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #28
  store i32 %1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 3
  %46 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 15
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -120
  store i32 %48, ptr %45, align 8
  %49 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 4
  %50 = load i32, ptr %5, align 4
  store i32 %50, ptr %49, align 4
  %51 = icmp eq i32 %1, -1
  %52 = and i32 %1, 1073741824
  %53 = icmp eq i32 %52, 0
  %54 = or i1 %51, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.sched_attr, ptr %4, i32 0, i32 2
  store i64 1, ptr %56, align 8
  %57 = and i32 %1, -1073741825
  store i32 %57, ptr %44, align 4
  br label %58

58:                                               ; preds = %55, %43
  %59 = call fastcc i32 @__sched_setscheduler(ptr noundef nonnull %30, ptr noundef nonnull %4, i1 noundef zeroext true, i1 noundef zeroext true) #28
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #28
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !32
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #28, !srcloc !29
  %60 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #28, !srcloc !33
  %61 = extractvalue { i32, i32, i32 } %60, 0
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = icmp sgt i32 %61, 0
  br i1 %64, label %68, label %65, !prof !11

65:                                               ; preds = %63
  call void @refcount_warn_saturate(ptr noundef %33, i32 noundef 3) #28
  br label %68

66:                                               ; preds = %58
  call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !34
  call void @__put_task_struct(ptr noundef nonnull %30) #28
  br label %68

67:                                               ; preds = %29
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %68

68:                                               ; preds = %67, %66, %65, %63, %21, %3
  %69 = phi i32 [ -22, %3 ], [ -3, %67 ], [ %59, %63 ], [ %59, %65 ], [ %59, %66 ], [ -14, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #28
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__getparam_dl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_task_setscheduler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sched_rr_get_interval(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rq_flags, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store i64 0, ptr %3, align 8, !annotation !10
  %4 = icmp slt i32 %0, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %2
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !37
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @find_task_by_vpid(i32 noundef %0) #28
  br label %11

9:                                                ; preds = %5
  %10 = tail call ptr @llvm.thread.pointer() #28
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %11
  %15 = call ptr @task_rq_lock(ptr noundef nonnull %12, ptr noundef nonnull %3)
  %16 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 22
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sched_class, ptr %17, i32 0, i32 23
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = tail call i32 %19(ptr noundef %15, ptr noundef nonnull %12) #28
  br label %23

23:                                               ; preds = %21, %14
  %24 = phi i32 [ %22, %21 ], [ 0, %14 ]
  %25 = getelementptr inbounds %struct.rq, ptr %15, i32 0, i32 19
  %26 = load i32, ptr %25, align 32
  %27 = icmp ugt i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.rq_flags, ptr %3, i32 0, i32 2
  store i32 4, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %31 = load i16, ptr %15, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  %33 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 108
  %34 = load i32, ptr %3, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  tail call void @jiffies_to_timespec64(i32 noundef %24, ptr noundef %1) #28
  br label %36

35:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !38
  br label %36

36:                                               ; preds = %35, %30, %2
  %37 = phi i32 [ -3, %35 ], [ 0, %30 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_timespec64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @jiffies_to_timespec64(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_old_timespec32(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_switch_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcuwait_wake_up(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__balance_push_cpu_stop(ptr noundef %0) #0 {
  %2 = alloca %struct.rq_flags, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #28
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #24, !srcloc !13
  %6 = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %7 = inttoptr i32 %6 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store i64 0, ptr %2, align 8, !annotation !10
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 108
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %7) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %9 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 19
  %10 = load i32, ptr %9, align 32
  %11 = and i32 %10, 3
  store i32 %11, ptr %9, align 32
  %12 = getelementptr inbounds %struct.rq_flags, ptr %2, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 33
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %14, @balance_push_callback
  %17 = and i1 %15, %16
  %18 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !12

21:                                               ; preds = %1
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %22

22:                                               ; preds = %21, %1
  tail call void @update_rq_clock(ptr noundef %7)
  %23 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 2
  %24 = load volatile i32, ptr %23, align 8
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, ptrtoint (ptr @runqueues to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = icmp eq ptr %28, %7
  br i1 %29, label %30, label %71

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rq, ptr %7, i32 0, i32 40
  %36 = load i32, ptr %35, align 4
  %37 = tail call fastcc i32 @select_fallback_rq(i32 noundef %36, ptr noundef %0)
  %38 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 27
  %39 = load ptr, ptr %38, align 8
  %40 = lshr i32 %37, 5
  %41 = getelementptr i32, ptr %39, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %37, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 31
  %49 = load i16, ptr %48, align 8
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 2097152
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = tail call zeroext i1 @kthread_is_per_cpu(ptr noundef %0) #28
  br i1 %57, label %63, label %58

58:                                               ; preds = %56
  %59 = getelementptr i32, ptr @__cpu_dying_mask, i32 %40
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, %44
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58, %56, %51, %47
  %64 = phi ptr [ @__cpu_online_mask, %47 ], [ @__cpu_active_mask, %51 ], [ @__cpu_online_mask, %56 ], [ @__cpu_online_mask, %58 ]
  %65 = getelementptr i32, ptr %64, i32 %40
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, %44
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  tail call void @update_rq_clock(ptr noundef %7) #28
  %70 = call fastcc ptr @move_queued_task(ptr noundef %7, ptr noundef nonnull %2, ptr noundef %0, i32 noundef %37) #28
  br label %71

71:                                               ; preds = %69, %63, %58, %34, %30, %22
  %72 = phi ptr [ %7, %30 ], [ %7, %22 ], [ %70, %69 ], [ %7, %63 ], [ %7, %34 ], [ %7, %58 ]
  %73 = getelementptr inbounds %struct.rq, ptr %72, i32 0, i32 19
  %74 = load i32, ptr %73, align 32
  %75 = icmp ugt i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 4, ptr %12, align 4
  br label %77

77:                                               ; preds = %76, %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %78 = load i16, ptr %72, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %72, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %80 = load i16, ptr %8, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #28, !srcloc !40
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !41
  %82 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %82) #28, !srcloc !29
  %83 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %82, ptr %82, i32 1, ptr elementtype(i32) %82) #28, !srcloc !33
  %84 = extractvalue { i32, i32, i32 } %83, 0
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %89, label %86

86:                                               ; preds = %77
  %87 = icmp sgt i32 %84, 0
  br i1 %87, label %90, label %88, !prof !11

88:                                               ; preds = %86
  tail call void @refcount_warn_saturate(ptr noundef %82, i32 noundef 3) #28
  br label %90

89:                                               ; preds = %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !34
  tail call void @__put_task_struct(ptr noundef %0) #28
  br label %90

90:                                               ; preds = %89, %88, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @partition_sched_domains(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dl_cpu_busy(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @calc_load_fold_active(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq_irqoff(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__hrtick_start(ptr noundef %0) #0 {
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %0) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %2 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 19
  %3 = load i32, ptr %2, align 32
  %4 = and i32 %3, 3
  store i32 %4, ptr %2, align 32
  %5 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 33
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %6, @balance_push_callback
  %9 = and i1 %7, %8
  %10 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !12

13:                                               ; preds = %1
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %14

14:                                               ; preds = %13, %1
  %15 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 57
  %16 = getelementptr inbounds %struct.rq, ptr %0, i32 0, i32 58
  %17 = load i64, ptr %16, align 64
  tail call void @hrtimer_start_range_ns(ptr noundef %15, i64 noundef %17, i64 noundef 0, i32 noundef 10) #28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %18 = load i16, ptr %0, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hrtick(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -1808
  %3 = getelementptr i8, ptr %0, i32 -300
  %4 = load i32, ptr %3, align 4
  %5 = tail call ptr @llvm.thread.pointer() #28
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = icmp ne i32 %4, %7
  %9 = load i1, ptr @hrtick.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !12

12:                                               ; preds = %1
  store i1 true, ptr @hrtick.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 721, i32 noundef 9, ptr noundef null) #28
  br label %13

13:                                               ; preds = %12, %1
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !16
  tail call void @_raw_spin_lock(ptr noundef %2) #28
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !17
  %14 = getelementptr i8, ptr %0, i32 -432
  %15 = load i32, ptr %14, align 32
  %16 = and i32 %15, 3
  store i32 %16, ptr %14, align 32
  %17 = getelementptr i8, ptr %0, i32 -344
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  %20 = icmp ne ptr %18, @balance_push_callback
  %21 = and i1 %19, %20
  %22 = load i1, ptr @rq_pin_lock.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !12

25:                                               ; preds = %13
  store i1 true, ptr @rq_pin_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 1545, i32 noundef 9, ptr noundef nonnull @.str.92) #28
  br label %26

26:                                               ; preds = %25, %13
  tail call void @update_rq_clock(ptr noundef %2)
  %27 = getelementptr i8, ptr %0, i32 -452
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 22
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.sched_class, ptr %30, i32 0, i32 17
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %2, ptr noundef %28, i32 noundef 1) #28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #28, !srcloc !20
  %33 = load i16, ptr %2, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #28, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #28, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !23
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { noreturn nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #24 = { nounwind readonly }
attributes #25 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #26 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #27 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #28 = { nounwind }
attributes #29 = { nounwind readonly willreturn }
attributes #30 = { nounwind allocsize(2) }
attributes #31 = { cold nounwind }
attributes #32 = { nounwind readnone }
attributes #33 = { cold }
attributes #34 = { cold noreturn nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 858742}
!14 = !{i64 2151633947, i64 2151634440, i64 2151633984, i64 2151634040, i64 2151634074, i64 2151634098, i64 2151634139, i64 2151634160, i64 2151634188, i64 2151634222}
!15 = !{i32 0, i32 33}
!16 = !{i64 2158206109}
!17 = !{i64 2158206221}
!18 = !{i64 2158206481}
!19 = !{i64 2158206633}
!20 = !{i64 2149471103}
!21 = !{i64 2149466927}
!22 = !{i64 2149467002, i64 2149467029, i64 2149467076, i64 2149467098, i64 2149467126, i64 2149467146}
!23 = !{i64 2149494106}
!24 = !{i64 2158209734}
!25 = !{i64 2158209576}
!26 = !{i64 2158212901}
!27 = !{i64 2158212743}
!28 = !{i64 2158219393}
!29 = !{i64 822890, i64 2148324456, i64 2148324482, i64 2148324529, i64 2148324551, i64 2148324579, i64 2148324599}
!30 = !{i64 897706, i64 897727, i64 897750, i64 897769, i64 897788}
!31 = !{i64 2148389176, i64 2148389208, i64 2148389237, i64 2148389271, i64 2148389302, i64 2148389325}
!32 = !{i64 2148489398}
!33 = !{i64 2148391533, i64 2148391565, i64 2148391594, i64 2148391628, i64 2148391659, i64 2148391682}
!34 = !{i64 2149545018}
!35 = !{i64 851637, i64 851698}
!36 = !{i64 854654}
!37 = !{i64 2149244904}
!38 = !{i64 2149245121}
!39 = !{i64 2158250688}
!40 = !{i64 851882}
!41 = !{i64 2149495247}
!42 = !{i64 2158253159}
!43 = !{i64 2158253929}
!44 = !{i64 2158256229}
!45 = !{i64 2158256272}
!46 = !{i64 2158257042}
!47 = !{i64 2151661971}
!48 = !{i64 2151662141}
!49 = !{i64 2157798631}
!50 = !{i64 2158296865}
!51 = !{i64 2158296707}
!52 = !{i64 2151710109}
!53 = !{i64 2151710253}
!54 = !{i64 2158299986}
!55 = !{i64 2158299828}
!56 = !{i64 2158302870}
!57 = !{i64 2158302938}
!58 = !{i64 2158303106}
!59 = !{i64 2158344654}
!60 = !{i64 2158344496}
!61 = !{i64 2158344803}
!62 = !{i64 2148390075, i64 2148390101, i64 2148390130, i64 2148390164, i64 2148390195, i64 2148390218}
!63 = !{i64 2158386365}
!64 = !{i64 2158363939}
!65 = !{i64 2151592462}
!66 = !{i64 2151592600}
!67 = !{i64 2151607958}
!68 = !{i64 2151608096}
!69 = !{i64 2158366390}
!70 = !{i64 2158369253}
!71 = !{i64 2158376896}
!72 = !{i64 2158381836}
!73 = !{i64 2158381678}
!74 = !{i64 2158381985}
!75 = !{!"branch_weights", i32 1073205, i32 2146410443}
!76 = !{!"branch_weights", i32 2146410443, i32 1073205}
!77 = !{i64 2158383222}
!78 = !{i64 2151623606}
!79 = !{i64 2151623752}
!80 = !{i64 2158406042}
!81 = !{i64 5927837}
!82 = !{i64 5928034}
!83 = !{i64 2153413313}
!84 = !{i64 2158411582, i64 2158411862, i64 2158412196, i64 2158412530}
!85 = !{i64 2158396611}
!86 = !{i64 2148488397}
!87 = !{i64 2148390759, i64 2148390791, i64 2148390820, i64 2148390854, i64 2148390885, i64 2148390908}
!88 = !{i64 2148488600}
!89 = !{i64 822708}
!90 = !{i64 2158459036, i64 2158459521, i64 2158459073, i64 2158459129, i64 2158459163, i64 2158459187, i64 2158459228, i64 2158459249, i64 2158459277, i64 2158459311}
!91 = !{i64 852072}
!92 = !{i64 2148387718, i64 2148387744, i64 2148387773, i64 2148387807, i64 2148387838, i64 2148387861}
!93 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!94 = !{i64 2158445632, i64 2158446117, i64 2158445669, i64 2158445725, i64 2158445759, i64 2158445783, i64 2158445824, i64 2158445845, i64 2158445873, i64 2158445907}
!95 = !{i64 2151641658}
!96 = !{i64 2151641832}
!97 = !{i64 2158419979}
!98 = !{i64 2158463387}
!99 = !{i64 2158463439}
!100 = !{i64 2158465721}
!101 = !{i64 2158465769}
!102 = !{i64 854369}
!103 = !{i64 2158467861, i64 2158468346, i64 2158467898, i64 2158467954, i64 2158467988, i64 2158468012, i64 2158468053, i64 2158468074, i64 2158468102, i64 2158468136}
!104 = !{i64 2158468636}
!105 = !{i64 2158468865}
!106 = !{i64 2151804606}
!107 = !{i64 2151804774}
!108 = !{i64 2158474611}
!109 = !{i64 2158474659}
!110 = !{i64 2158514431, i64 2158514916, i64 2158514468, i64 2158514524, i64 2158514558, i64 2158514582, i64 2158514623, i64 2158514644, i64 2158514672, i64 2158514706}
!111 = !{i64 2158515868}
!112 = !{i64 2158515916}
!113 = !{i64 2158532761, i64 2158533041, i64 2158533375, i64 2158533709}
!114 = !{i64 2153431725, i64 2153431750}
!115 = !{i64 2158556392, i64 2158556672, i64 2158557006, i64 2158557340}
!116 = !{i64 2153432303, i64 2153432328}
!117 = !{i64 2158599465, i64 2158599490}
!118 = !{i64 2158643862}
!119 = !{i64 2158643910}
!120 = !{i64 2158465938}
!121 = !{i64 2158465990}
!122 = !{i64 2158645750}
!123 = !{i64 2158645592}
!124 = !{i64 2149478985}
!125 = !{i64 1982409, i64 1982432, i64 1982452, i64 1982476, i64 1982492}
!126 = !{i64 2149516588}
!127 = !{i64 2158647403}
!128 = !{i64 2158647245}
!129 = !{i64 2149478180}
!130 = !{i64 1981394}
!131 = !{i64 2149516149}
!132 = !{i64 2158649238}
!133 = !{i64 2158649080}
!134 = !{i64 2158657692}
!135 = !{i64 808953, i64 808977, i64 808998, i64 809015, i64 809032}
!136 = !{i64 2158773996}
!137 = !{i64 2158778252, i64 2158778737, i64 2158778289, i64 2158778345, i64 2158778379, i64 2158778403, i64 2158778444, i64 2158778465, i64 2158778493, i64 2158778527}
!138 = !{i64 2158780831, i64 2158781316, i64 2158780868, i64 2158780924, i64 2158780958, i64 2158780982, i64 2158781023, i64 2158781044, i64 2158781072, i64 2158781106}
!139 = !{i8 0, i8 2}
!140 = !{i64 2158792712, i64 2158793197, i64 2158792749, i64 2158792805, i64 2158792839, i64 2158792863, i64 2158792904, i64 2158792925, i64 2158792953, i64 2158792987}
!141 = !{i64 2158794615, i64 2158795100, i64 2158794652, i64 2158794708, i64 2158794742, i64 2158794766, i64 2158794807, i64 2158794828, i64 2158794856, i64 2158794890}
!142 = !{i64 2153539759}
!143 = !{i64 2158790963}
!144 = !{i64 2158860321, i64 2158860806, i64 2158860358, i64 2158860414, i64 2158860448, i64 2158860472, i64 2158860513, i64 2158860534, i64 2158860562, i64 2158860596}
!145 = !{i64 2158864919, i64 2158865404, i64 2158864956, i64 2158865012, i64 2158865046, i64 2158865070, i64 2158865111, i64 2158865132, i64 2158865160, i64 2158865194}
!146 = !{i64 2158865994, i64 2158866479, i64 2158866031, i64 2158866087, i64 2158866121, i64 2158866145, i64 2158866186, i64 2158866207, i64 2158866235, i64 2158866269}
!147 = !{i64 2148496903}
!148 = !{i64 2148394639, i64 2148394671, i64 2148394700, i64 2148394734, i64 2148394765, i64 2148394788}
!149 = !{i64 2148497108}
!150 = !{i64 2152062019}
!151 = !{i64 2152062203}
!152 = !{i64 2158259776, i64 2158260261, i64 2158259813, i64 2158259869, i64 2158259903, i64 2158259927, i64 2158259968, i64 2158259989, i64 2158260017, i64 2158260051}
!153 = !{i64 2158304931, i64 2158305416, i64 2158304968, i64 2158305024, i64 2158305058, i64 2158305082, i64 2158305123, i64 2158305144, i64 2158305172, i64 2158305206}
