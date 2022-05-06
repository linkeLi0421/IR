; ModuleID = '/llk/IR/drivers/mmc/host/sdhci.c_pt.bc'
source_filename = "../drivers/mmc/host/sdhci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_dumpregs:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_dumpregs\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_dumpregs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_enable_v4_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_enable_v4_mode\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_enable_v4_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_reset\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_adma_write_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_adma_write_desc\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_adma_write_desc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_set_data_timeout_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_set_data_timeout_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_set_data_timeout_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sdhci_set_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22__sdhci_set_timeout\22\09\09\09\09\09"
module asm "__kstrtabns___sdhci_set_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_switch_external_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_switch_external_dma\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_switch_external_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_calc_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_calc_clk\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_calc_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_enable_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_enable_clk\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_enable_clk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_set_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_set_clock\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_set_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_set_power_noreg:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_set_power_noreg\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_set_power_noreg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_set_power:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_set_power\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_set_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_set_power_and_bus_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_set_power_and_bus_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_set_power_and_bus_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_request:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_request\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_request_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_request_atomic\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_request_atomic:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_set_bus_width:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_set_bus_width\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_set_bus_width:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_set_uhs_signaling:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_set_uhs_signaling\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_set_uhs_signaling:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_set_ios:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_set_ios\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_set_ios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_get_cd_nogpio:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_get_cd_nogpio\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_get_cd_nogpio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_enable_sdio_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_enable_sdio_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_enable_sdio_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_start_signal_voltage_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_start_signal_voltage_switch\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_start_signal_voltage_switch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_start_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_start_tuning\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_start_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_end_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_end_tuning\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_end_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_reset_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_reset_tuning\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_reset_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_abort_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_abort_tuning\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_abort_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_send_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_send_tuning\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_send_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_execute_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_execute_tuning\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_execute_tuning:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_suspend_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_resume_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_runtime_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_runtime_suspend_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_runtime_suspend_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_runtime_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_runtime_resume_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_runtime_resume_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_cqe_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_cqe_enable\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_cqe_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_cqe_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_cqe_disable\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_cqe_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_cqe_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_cqe_irq\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_cqe_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_alloc_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_alloc_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_alloc_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sdhci_read_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22__sdhci_read_caps\22\09\09\09\09\09"
module asm "__kstrtabns___sdhci_read_caps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_setup_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_setup_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_setup_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_cleanup_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_cleanup_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_cleanup_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sdhci_add_host:\09\09\09\09\09"
module asm "\09.asciz \09\22__sdhci_add_host\22\09\09\09\09\09"
module asm "__kstrtabns___sdhci_add_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_add_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_add_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_add_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_remove_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_remove_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_remove_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdhci_free_host:\09\09\09\09\09"
module asm "\09.asciz \09\22sdhci_free_host\22\09\09\09\09\09"
module asm "__kstrtabns_sdhci_free_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.sdhci_host = type { ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, %struct.mmc_host_ops, i64, %struct.led_classdev, [32 x i8], %struct.spinlock, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x ptr], ptr, ptr, ptr, ptr, i8, %struct.sg_mapping_iter, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, %struct.timer_list, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i64, [56 x i8], [0 x i32] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.sdhci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdhci_adma2_64_desc = type { i16, i16, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.page = type { i32, %union.anon.1, %union.anon.67, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.54, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.54 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@.str = private unnamed_addr constant [59 x i8] c"\013%s: sdhci: ============ SDHCI REGISTER DUMP ===========\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Sys addr:  0x%08x | Version:  0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Blk size:  0x%08x | Blk cnt:  0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Argument:  0x%08x | Trn mode: 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Present:   0x%08x | Host ctl: 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Power:     0x%08x | Blk gap:  0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Wake-up:   0x%08x | Clock:    0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Timeout:   0x%08x | Int stat: 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Int enab:  0x%08x | Sig enab: 0x%08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: ACmd stat: 0x%08x | Slot int: 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Caps:      0x%08x | Caps_1:   0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Cmd:       0x%08x | Max curr: 0x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Resp[0]:   0x%08x | Resp[1]:  0x%08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: Resp[2]:   0x%08x | Resp[3]:  0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\013%s: sdhci: Host ctl2: 0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"\013%s: sdhci: ADMA Err:  0x%08x | ADMA Ptr: 0x%08x%08x\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"\013%s: sdhci: ADMA Err:  0x%08x | ADMA Ptr: 0x%08x\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"\013%s: sdhci: ============================================\0A\00", align 1
@__kstrtab_sdhci_dumpregs = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_dumpregs = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_dumpregs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_dumpregs to i32), ptr @__kstrtab_sdhci_dumpregs, ptr @__kstrtabns_sdhci_dumpregs }, section "___ksymtab_gpl+sdhci_dumpregs", align 4
@__kstrtab_sdhci_enable_v4_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_enable_v4_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_enable_v4_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_enable_v4_mode to i32), ptr @__kstrtab_sdhci_enable_v4_mode, ptr @__kstrtabns_sdhci_enable_v4_mode }, section "___ksymtab_gpl+sdhci_enable_v4_mode", align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"\013%s: Reset 0x%x never completed.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_sdhci_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_reset to i32), ptr @__kstrtab_sdhci_reset, ptr @__kstrtabns_sdhci_reset }, section "___ksymtab_gpl+sdhci_reset", align 4
@__kstrtab_sdhci_adma_write_desc = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_adma_write_desc = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_adma_write_desc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_adma_write_desc to i32), ptr @__kstrtab_sdhci_adma_write_desc, ptr @__kstrtabns_sdhci_adma_write_desc }, section "___ksymtab_gpl+sdhci_adma_write_desc", align 4
@__kstrtab_sdhci_set_data_timeout_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_set_data_timeout_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_set_data_timeout_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_set_data_timeout_irq to i32), ptr @__kstrtab_sdhci_set_data_timeout_irq, ptr @__kstrtabns_sdhci_set_data_timeout_irq }, section "___ksymtab_gpl+sdhci_set_data_timeout_irq", align 4
@__kstrtab___sdhci_set_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns___sdhci_set_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab___sdhci_set_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sdhci_set_timeout to i32), ptr @__kstrtab___sdhci_set_timeout, ptr @__kstrtabns___sdhci_set_timeout }, section "___ksymtab_gpl+__sdhci_set_timeout", align 4
@__kstrtab_sdhci_switch_external_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_switch_external_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_switch_external_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_switch_external_dma to i32), ptr @__kstrtab_sdhci_switch_external_dma, ptr @__kstrtabns_sdhci_switch_external_dma }, section "___ksymtab_gpl+sdhci_switch_external_dma", align 4
@__kstrtab_sdhci_calc_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_calc_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_calc_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_calc_clk to i32), ptr @__kstrtab_sdhci_calc_clk, ptr @__kstrtabns_sdhci_calc_clk }, section "___ksymtab_gpl+sdhci_calc_clk", align 4
@.str.19 = private unnamed_addr constant [40 x i8] c"\013%s: Internal clock never stabilised.\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"\013%s: PLL clock never stabilised.\0A\00", align 1
@__kstrtab_sdhci_enable_clk = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_enable_clk = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_enable_clk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_enable_clk to i32), ptr @__kstrtab_sdhci_enable_clk, ptr @__kstrtabns_sdhci_enable_clk }, section "___ksymtab_gpl+sdhci_enable_clk", align 4
@__kstrtab_sdhci_set_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_set_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_set_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_set_clock to i32), ptr @__kstrtab_sdhci_set_clock, ptr @__kstrtabns_sdhci_set_clock }, section "___ksymtab_gpl+sdhci_set_clock", align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"drivers/mmc/host/sdhci.c\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"%s: Invalid vdd %#x\0A\00", align 1
@__kstrtab_sdhci_set_power_noreg = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_set_power_noreg = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_set_power_noreg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_set_power_noreg to i32), ptr @__kstrtab_sdhci_set_power_noreg, ptr @__kstrtabns_sdhci_set_power_noreg }, section "___ksymtab_gpl+sdhci_set_power_noreg", align 4
@__kstrtab_sdhci_set_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_set_power = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_set_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_set_power to i32), ptr @__kstrtab_sdhci_set_power, ptr @__kstrtabns_sdhci_set_power }, section "___ksymtab_gpl+sdhci_set_power", align 4
@__kstrtab_sdhci_set_power_and_bus_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_set_power_and_bus_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_set_power_and_bus_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_set_power_and_bus_voltage to i32), ptr @__kstrtab_sdhci_set_power_and_bus_voltage, ptr @__kstrtabns_sdhci_set_power_and_bus_voltage }, section "___ksymtab_gpl+sdhci_set_power_and_bus_voltage", align 4
@__kstrtab_sdhci_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_request = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_request to i32), ptr @__kstrtab_sdhci_request, ptr @__kstrtabns_sdhci_request }, section "___ksymtab_gpl+sdhci_request", align 4
@__kstrtab_sdhci_request_atomic = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_request_atomic = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_request_atomic = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_request_atomic to i32), ptr @__kstrtab_sdhci_request_atomic, ptr @__kstrtabns_sdhci_request_atomic }, section "___ksymtab_gpl+sdhci_request_atomic", align 4
@__kstrtab_sdhci_set_bus_width = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_set_bus_width = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_set_bus_width = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_set_bus_width to i32), ptr @__kstrtab_sdhci_set_bus_width, ptr @__kstrtabns_sdhci_set_bus_width }, section "___ksymtab_gpl+sdhci_set_bus_width", align 4
@__kstrtab_sdhci_set_uhs_signaling = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_set_uhs_signaling = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_set_uhs_signaling = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_set_uhs_signaling to i32), ptr @__kstrtab_sdhci_set_uhs_signaling, ptr @__kstrtabns_sdhci_set_uhs_signaling }, section "___ksymtab_gpl+sdhci_set_uhs_signaling", align 4
@.str.23 = private unnamed_addr constant [53 x i8] c"\014%s: invalid driver type, default to driver type B\0A\00", align 1
@__kstrtab_sdhci_set_ios = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_set_ios = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_set_ios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_set_ios to i32), ptr @__kstrtab_sdhci_set_ios, ptr @__kstrtabns_sdhci_set_ios }, section "___ksymtab_gpl+sdhci_set_ios", align 4
@__kstrtab_sdhci_get_cd_nogpio = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_get_cd_nogpio = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_get_cd_nogpio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_get_cd_nogpio to i32), ptr @__kstrtab_sdhci_get_cd_nogpio, ptr @__kstrtabns_sdhci_get_cd_nogpio }, section "___ksymtab_gpl+sdhci_get_cd_nogpio", align 4
@__kstrtab_sdhci_enable_sdio_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_enable_sdio_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_enable_sdio_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_enable_sdio_irq to i32), ptr @__kstrtab_sdhci_enable_sdio_irq, ptr @__kstrtabns_sdhci_enable_sdio_irq }, section "___ksymtab_gpl+sdhci_enable_sdio_irq", align 4
@.str.24 = private unnamed_addr constant [51 x i8] c"\014%s: Switching to 3.3V signalling voltage failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"\014%s: 3.3V regulator output did not become stable\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"\014%s: Switching to 1.8V signalling voltage failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"\014%s: 1.8V regulator output did not become stable\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"\014%s: Switching to 1.2V signalling voltage failed\0A\00", align 1
@__kstrtab_sdhci_start_signal_voltage_switch = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_start_signal_voltage_switch = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_start_signal_voltage_switch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_start_signal_voltage_switch to i32), ptr @__kstrtab_sdhci_start_signal_voltage_switch, ptr @__kstrtabns_sdhci_start_signal_voltage_switch }, section "___ksymtab_gpl+sdhci_start_signal_voltage_switch", align 4
@__kstrtab_sdhci_start_tuning = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_start_tuning = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_start_tuning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_start_tuning to i32), ptr @__kstrtab_sdhci_start_tuning, ptr @__kstrtabns_sdhci_start_tuning }, section "___ksymtab_gpl+sdhci_start_tuning", align 4
@__kstrtab_sdhci_end_tuning = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_end_tuning = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_end_tuning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_end_tuning to i32), ptr @__kstrtab_sdhci_end_tuning, ptr @__kstrtabns_sdhci_end_tuning }, section "___ksymtab_gpl+sdhci_end_tuning", align 4
@__kstrtab_sdhci_reset_tuning = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_reset_tuning = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_reset_tuning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_reset_tuning to i32), ptr @__kstrtab_sdhci_reset_tuning, ptr @__kstrtabns_sdhci_reset_tuning }, section "___ksymtab_gpl+sdhci_reset_tuning", align 4
@__kstrtab_sdhci_abort_tuning = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_abort_tuning = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_abort_tuning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_abort_tuning to i32), ptr @__kstrtab_sdhci_abort_tuning, ptr @__kstrtabns_sdhci_abort_tuning }, section "___ksymtab_gpl+sdhci_abort_tuning", align 4
@__kstrtab_sdhci_send_tuning = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_send_tuning = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_send_tuning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_send_tuning to i32), ptr @__kstrtab_sdhci_send_tuning, ptr @__kstrtabns_sdhci_send_tuning }, section "___ksymtab_gpl+sdhci_send_tuning", align 4
@__kstrtab_sdhci_execute_tuning = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_execute_tuning = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_execute_tuning = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_execute_tuning to i32), ptr @__kstrtab_sdhci_execute_tuning, ptr @__kstrtabns_sdhci_execute_tuning }, section "___ksymtab_gpl+sdhci_execute_tuning", align 4
@__kstrtab_sdhci_suspend_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_suspend_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_suspend_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_suspend_host to i32), ptr @__kstrtab_sdhci_suspend_host, ptr @__kstrtabns_sdhci_suspend_host }, section "___ksymtab_gpl+sdhci_suspend_host", align 4
@__kstrtab_sdhci_resume_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_resume_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_resume_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_resume_host to i32), ptr @__kstrtab_sdhci_resume_host, ptr @__kstrtabns_sdhci_resume_host }, section "___ksymtab_gpl+sdhci_resume_host", align 4
@__kstrtab_sdhci_runtime_suspend_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_runtime_suspend_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_runtime_suspend_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_runtime_suspend_host to i32), ptr @__kstrtab_sdhci_runtime_suspend_host, ptr @__kstrtabns_sdhci_runtime_suspend_host }, section "___ksymtab_gpl+sdhci_runtime_suspend_host", align 4
@__kstrtab_sdhci_runtime_resume_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_runtime_resume_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_runtime_resume_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_runtime_resume_host to i32), ptr @__kstrtab_sdhci_runtime_resume_host, ptr @__kstrtabns_sdhci_runtime_resume_host }, section "___ksymtab_gpl+sdhci_runtime_resume_host", align 4
@__kstrtab_sdhci_cqe_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_cqe_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_cqe_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_cqe_enable to i32), ptr @__kstrtab_sdhci_cqe_enable, ptr @__kstrtabns_sdhci_cqe_enable }, section "___ksymtab_gpl+sdhci_cqe_enable", align 4
@__kstrtab_sdhci_cqe_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_cqe_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_cqe_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_cqe_disable to i32), ptr @__kstrtab_sdhci_cqe_disable, ptr @__kstrtabns_sdhci_cqe_disable }, section "___ksymtab_gpl+sdhci_cqe_disable", align 4
@.str.29 = private unnamed_addr constant [41 x i8] c"\013%s: Card is consuming too much power!\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"\013%s: CQE: Unexpected interrupt 0x%08x.\0A\00", align 1
@__kstrtab_sdhci_cqe_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_cqe_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_cqe_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_cqe_irq to i32), ptr @__kstrtab_sdhci_cqe_irq, ptr @__kstrtabns_sdhci_cqe_irq }, section "___ksymtab_gpl+sdhci_cqe_irq", align 4
@sdhci_ops = internal unnamed_addr constant %struct.mmc_host_ops { ptr @sdhci_post_req, ptr @sdhci_pre_req, ptr @sdhci_request, ptr null, ptr @sdhci_set_ios, ptr @sdhci_get_ro, ptr @sdhci_get_cd, ptr @sdhci_enable_sdio_irq, ptr @sdhci_ack_sdio_irq, ptr null, ptr @sdhci_start_signal_voltage_switch, ptr @sdhci_card_busy, ptr @sdhci_execute_tuning, ptr @sdhci_prepare_hs400_tuning, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdhci_hw_reset, ptr @sdhci_card_event, ptr null, ptr null }, align 4
@__kstrtab_sdhci_alloc_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_alloc_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_alloc_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_alloc_host to i32), ptr @__kstrtab_sdhci_alloc_host, ptr @__kstrtabns_sdhci_alloc_host }, section "___ksymtab_gpl+sdhci_alloc_host", align 4
@debug_quirks = internal global i32 0, align 4
@debug_quirks2 = internal global i32 0, align 4
@.str.31 = private unnamed_addr constant [16 x i8] c"sdhci-caps-mask\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"sdhci-caps\00", align 1
@__kstrtab___sdhci_read_caps = external dso_local constant [0 x i8], align 1
@__kstrtabns___sdhci_read_caps = external dso_local constant [0 x i8], align 1
@__ksymtab___sdhci_read_caps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sdhci_read_caps to i32), ptr @__kstrtab___sdhci_read_caps, ptr @__kstrtabns___sdhci_read_caps }, section "___ksymtab_gpl+__sdhci_read_caps", align 4
@.str.33 = private unnamed_addr constant [69 x i8] c"\013%s: Unknown controller version (%d). You may experience problems.\0A\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"\014%s: No suitable DMA available - falling back to PIO\0A\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c"\014%s: Unable to allocate ADMA buffers - falling back to standard DMA\0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"\014%s: unable to allocate aligned ADMA descriptor\0A\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"\013%s: Hardware doesn't specify base clock frequency.\0A\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"\013%s: Hardware doesn't specify timeout clock frequency.\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"\014%s: Failed to enable vqmmc regulator: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [53 x i8] c"\013%s: Hardware doesn't report any support voltages.\0A\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"\014%s: Invalid maximum block size, assuming 512 bytes\0A\00", align 1
@__kstrtab_sdhci_setup_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_setup_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_setup_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_setup_host to i32), ptr @__kstrtab_sdhci_setup_host, ptr @__kstrtabns_sdhci_setup_host }, section "___ksymtab_gpl+sdhci_setup_host", align 4
@__kstrtab_sdhci_cleanup_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_cleanup_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_cleanup_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_cleanup_host to i32), ptr @__kstrtab_sdhci_cleanup_host, ptr @__kstrtabns_sdhci_cleanup_host }, section "___ksymtab_gpl+sdhci_cleanup_host", align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"sdhci\00", align 1
@__sdhci_add_host.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"&host->buf_ready_int\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"\013%s: Failed to request IRQ %d: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"\013%s: Failed to register LED device: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"\016%s: SDHCI controller on %s [%s] using %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"External DMA\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"ADMA 64-bit\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"ADMA\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@__kstrtab___sdhci_add_host = external dso_local constant [0 x i8], align 1
@__kstrtabns___sdhci_add_host = external dso_local constant [0 x i8], align 1
@__ksymtab___sdhci_add_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sdhci_add_host to i32), ptr @__kstrtab___sdhci_add_host, ptr @__kstrtabns___sdhci_add_host }, section "___ksymtab_gpl+__sdhci_add_host", align 4
@__kstrtab_sdhci_add_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_add_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_add_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_add_host to i32), ptr @__kstrtab_sdhci_add_host, ptr @__kstrtabns_sdhci_add_host }, section "___ksymtab_gpl+sdhci_add_host", align 4
@.str.52 = private unnamed_addr constant [44 x i8] c"\013%s: Controller removed during  transfer!\0A\00", align 1
@__kstrtab_sdhci_remove_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_remove_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_remove_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_remove_host to i32), ptr @__kstrtab_sdhci_remove_host, ptr @__kstrtabns_sdhci_remove_host }, section "___ksymtab_gpl+sdhci_remove_host", align 4
@__kstrtab_sdhci_free_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdhci_free_host = external dso_local constant [0 x i8], align 1
@__ksymtab_sdhci_free_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdhci_free_host to i32), ptr @__kstrtab_sdhci_free_host, ptr @__kstrtabns_sdhci_free_host }, section "___ksymtab_gpl+sdhci_free_host", align 4
@__initcall__kmod_sdhci__356_4893_sdhci_drv_init6 = internal global ptr @sdhci_drv_init, section ".initcall6.init", align 4
@__exitcall_sdhci_drv_exit = internal global ptr @sdhci_drv_exit, section ".exitcall.exit", align 4
@__param_str_debug_quirks = internal constant [19 x i8] c"sdhci.debug_quirks\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug_quirks = internal constant %struct.kernel_param { ptr @__param_str_debug_quirks, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @debug_quirks } }, section "__param", align 4
@__UNIQUE_ID_debug_quirkstype357 = internal constant [33 x i8] c"sdhci.parmtype=debug_quirks:uint\00", section ".modinfo", align 1
@__param_str_debug_quirks2 = internal constant [20 x i8] c"sdhci.debug_quirks2\00", align 1
@__param_debug_quirks2 = internal constant %struct.kernel_param { ptr @__param_str_debug_quirks2, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @debug_quirks2 } }, section "__param", align 4
@__UNIQUE_ID_debug_quirks2type358 = internal constant [34 x i8] c"sdhci.parmtype=debug_quirks2:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_author359 = internal constant [46 x i8] c"sdhci.author=Pierre Ossman <pierre@ossman.eu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description360 = internal constant [71 x i8] c"sdhci.description=Secure Digital Host Controller Interface core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file361 = internal constant [34 x i8] c"sdhci.file=drivers/mmc/host/sdhci\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [18 x i8] c"sdhci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_quirks363 = internal constant [46 x i8] c"sdhci.parm=debug_quirks:Force certain quirks.\00", section ".modinfo", align 1
@__UNIQUE_ID_debug_quirks2364 = internal constant [53 x i8] c"sdhci.parm=debug_quirks2:Force certain other quirks.\00", section ".modinfo", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"\014%s: Invalid UHS-I mode selected\0A\00", align 1
@.str.54 = private unnamed_addr constant [49 x i8] c"\013%s: Controller never released inhibit bit(s).\0A\00", align 1
@sdhci_send_command.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"Unsupported response type!\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.56 = private unnamed_addr constant [85 x i8] c"\013%s: Cannot use external DMA, switch to the DMA/PIO which standard SDHCI provides.\0A\00", align 1
@.str.57 = private unnamed_addr constant [69 x i8] c"\013%s: asked for transfer of %u bytes exceeds bounce buffer %u bytes\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.58 = private unnamed_addr constant [59 x i8] c"\016%s: Tuning failed, falling back to fixed sampling clock\0A\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"\013%s: Unexpected interrupt 0x%08x.\0A\00", align 1
@.str.60 = private unnamed_addr constant [86 x i8] c"\013%s: Got command interrupt 0x%08x even though no command operation was in progress.\0A\00", align 1
@.str.61 = private unnamed_addr constant [80 x i8] c"\013%s: Got data interrupt 0x%08x even though no data operation was in progress.\0A\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"\013%s: ADMA error: 0x%08x\0A\00", align 1
@.str.63 = private unnamed_addr constant [62 x i8] c"\013%s: sdhci: %08llx: DMA 0x%08x%08x, LEN 0x%04x, Attr=0x%02x\0A\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"\013%s: sdhci: %08llx: DMA 0x%08x, LEN 0x%04x, Attr=0x%02x\0A\00", align 1
@.str.65 = private unnamed_addr constant [77 x i8] c"\013%s: bounce buffer is %u bytes but DMA claims to have transferred %u bytes\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"\013%s: Card removed during transfer!\0A\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"\013%s: Resetting controller.\0A\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.69 = private unnamed_addr constant [37 x i8] c"\014Failed to request TX DMA channel.\0A\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"\014Failed to request RX DMA channel.\0A\00", align 1
@.str.72 = private unnamed_addr constant [38 x i8] c"\014%s: Failed to set 64-bit DMA mask.\0A\00", align 1
@.str.73 = private unnamed_addr constant [38 x i8] c"\014%s: Failed to set 32-bit DMA mask.\0A\00", align 1
@.str.74 = private unnamed_addr constant [86 x i8] c"\013%s: failed to allocate %u bytes for bounce buffer, falling back to single segments\0A\00", align 1
@.str.75 = private unnamed_addr constant [67 x i8] c"\016%s bounce up to %u segments into one, max segment size %u bytes\0A\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"include/linux/dma-mapping.h\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.78 = private unnamed_addr constant [51 x i8] c"\013%s: Timeout waiting for hardware cmd interrupt.\0A\00", align 1
@.str.79 = private unnamed_addr constant [47 x i8] c"\013%s: Timeout waiting for hardware interrupt.\0A\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"%s::\00", align 1
@.str.81 = private unnamed_addr constant [58 x i8] c"\016sdhci: Secure Digital Host Controller Interface driver\0A\00", align 1
@.str.82 = private unnamed_addr constant [37 x i8] c"\016sdhci: Copyright(c) Pierre Ossman\0A\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_debug_quirks2364, ptr @__UNIQUE_ID_debug_quirks2type358, ptr @__UNIQUE_ID_debug_quirks363, ptr @__UNIQUE_ID_debug_quirkstype357, ptr @__UNIQUE_ID_description360, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_license362, ptr @__exitcall_sdhci_drv_exit, ptr @__initcall__kmod_sdhci__356_4893_sdhci_drv_init6, ptr @__ksymtab___sdhci_add_host, ptr @__ksymtab___sdhci_read_caps, ptr @__ksymtab___sdhci_set_timeout, ptr @__ksymtab_sdhci_abort_tuning, ptr @__ksymtab_sdhci_add_host, ptr @__ksymtab_sdhci_adma_write_desc, ptr @__ksymtab_sdhci_alloc_host, ptr @__ksymtab_sdhci_calc_clk, ptr @__ksymtab_sdhci_cleanup_host, ptr @__ksymtab_sdhci_cqe_disable, ptr @__ksymtab_sdhci_cqe_enable, ptr @__ksymtab_sdhci_cqe_irq, ptr @__ksymtab_sdhci_dumpregs, ptr @__ksymtab_sdhci_enable_clk, ptr @__ksymtab_sdhci_enable_sdio_irq, ptr @__ksymtab_sdhci_enable_v4_mode, ptr @__ksymtab_sdhci_end_tuning, ptr @__ksymtab_sdhci_execute_tuning, ptr @__ksymtab_sdhci_free_host, ptr @__ksymtab_sdhci_get_cd_nogpio, ptr @__ksymtab_sdhci_remove_host, ptr @__ksymtab_sdhci_request, ptr @__ksymtab_sdhci_request_atomic, ptr @__ksymtab_sdhci_reset, ptr @__ksymtab_sdhci_reset_tuning, ptr @__ksymtab_sdhci_resume_host, ptr @__ksymtab_sdhci_runtime_resume_host, ptr @__ksymtab_sdhci_runtime_suspend_host, ptr @__ksymtab_sdhci_send_tuning, ptr @__ksymtab_sdhci_set_bus_width, ptr @__ksymtab_sdhci_set_clock, ptr @__ksymtab_sdhci_set_data_timeout_irq, ptr @__ksymtab_sdhci_set_ios, ptr @__ksymtab_sdhci_set_power, ptr @__ksymtab_sdhci_set_power_and_bus_voltage, ptr @__ksymtab_sdhci_set_power_noreg, ptr @__ksymtab_sdhci_set_uhs_signaling, ptr @__ksymtab_sdhci_setup_host, ptr @__ksymtab_sdhci_start_signal_voltage_switch, ptr @__ksymtab_sdhci_start_tuning, ptr @__ksymtab_sdhci_suspend_host, ptr @__ksymtab_sdhci_switch_external_dma, ptr @__param_debug_quirks, ptr @__param_debug_quirks2, ptr @sdhci_drv_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_dumpregs(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %11) #14
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = phi ptr [ %19, %17 ], [ %15, %10 ]
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %20
  %27 = tail call i32 %24(ptr noundef %0, i32 noundef 0) #15
  br label %32

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i32 [ %27, %26 ], [ %31, %28 ]
  %34 = load ptr, ptr %22, align 4
  %35 = getelementptr inbounds %struct.sdhci_ops, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !8

38:                                               ; preds = %32
  %39 = tail call zeroext i16 %36(ptr noundef %0, i32 noundef 254) #15
  br label %45

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr i8, ptr %42, i32 254
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %43) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi i16 [ %39, %38 ], [ %44, %40 ]
  %47 = zext i16 %46 to i32
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %21, i32 noundef %33, i32 noundef %47) #14
  %49 = load ptr, ptr %2, align 8
  %50 = getelementptr inbounds %struct.mmc_host, ptr %49, i32 0, i32 1, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.mmc_host, ptr %49, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %45
  %57 = phi ptr [ %55, %53 ], [ %51, %45 ]
  %58 = load ptr, ptr %22, align 4
  %59 = getelementptr inbounds %struct.sdhci_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !8

62:                                               ; preds = %56
  %63 = tail call zeroext i16 %60(ptr noundef %0, i32 noundef 4) #15
  br label %69

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %66 = load ptr, ptr %65, align 16
  %67 = getelementptr i8, ptr %66, i32 4
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %69

69:                                               ; preds = %64, %62
  %70 = phi i16 [ %63, %62 ], [ %68, %64 ]
  %71 = zext i16 %70 to i32
  %72 = load ptr, ptr %22, align 4
  %73 = getelementptr inbounds %struct.sdhci_ops, ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76, !prof !8

76:                                               ; preds = %69
  %77 = tail call zeroext i16 %74(ptr noundef %0, i32 noundef 6) #15
  br label %83

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %80 = load ptr, ptr %79, align 16
  %81 = getelementptr i8, ptr %80, i32 6
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %81) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %83

83:                                               ; preds = %78, %76
  %84 = phi i16 [ %77, %76 ], [ %82, %78 ]
  %85 = zext i16 %84 to i32
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %57, i32 noundef %71, i32 noundef %85) #14
  %87 = load ptr, ptr %2, align 8
  %88 = getelementptr inbounds %struct.mmc_host, ptr %87, i32 0, i32 1, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = getelementptr inbounds %struct.mmc_host, ptr %87, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %91, %83
  %95 = phi ptr [ %93, %91 ], [ %89, %83 ]
  %96 = load ptr, ptr %22, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99, !prof !8

99:                                               ; preds = %94
  %100 = tail call i32 %97(ptr noundef %0, i32 noundef 8) #15
  br label %106

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %103 = load ptr, ptr %102, align 16
  %104 = getelementptr i8, ptr %103, i32 8
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %106

106:                                              ; preds = %101, %99
  %107 = phi i32 [ %100, %99 ], [ %105, %101 ]
  %108 = load ptr, ptr %22, align 4
  %109 = getelementptr inbounds %struct.sdhci_ops, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112, !prof !8

112:                                              ; preds = %106
  %113 = tail call zeroext i16 %110(ptr noundef %0, i32 noundef 12) #15
  br label %119

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %116 = load ptr, ptr %115, align 16
  %117 = getelementptr i8, ptr %116, i32 12
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %117) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %119

119:                                              ; preds = %114, %112
  %120 = phi i16 [ %113, %112 ], [ %118, %114 ]
  %121 = zext i16 %120 to i32
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %95, i32 noundef %107, i32 noundef %121) #14
  %123 = load ptr, ptr %2, align 8
  %124 = getelementptr inbounds %struct.mmc_host, ptr %123, i32 0, i32 1, i32 3
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.mmc_host, ptr %123, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  br label %130

130:                                              ; preds = %127, %119
  %131 = phi ptr [ %129, %127 ], [ %125, %119 ]
  %132 = load ptr, ptr %22, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135, !prof !8

135:                                              ; preds = %130
  %136 = tail call i32 %133(ptr noundef %0, i32 noundef 36) #15
  br label %142

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %139 = load ptr, ptr %138, align 16
  %140 = getelementptr i8, ptr %139, i32 36
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %142

142:                                              ; preds = %137, %135
  %143 = phi i32 [ %136, %135 ], [ %141, %137 ]
  %144 = load ptr, ptr %22, align 4
  %145 = getelementptr inbounds %struct.sdhci_ops, ptr %144, i32 0, i32 2
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148, !prof !8

148:                                              ; preds = %142
  %149 = tail call zeroext i8 %146(ptr noundef %0, i32 noundef 40) #15
  br label %155

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %152 = load ptr, ptr %151, align 16
  %153 = getelementptr i8, ptr %152, i32 40
  %154 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %153) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %155

155:                                              ; preds = %150, %148
  %156 = phi i8 [ %149, %148 ], [ %154, %150 ]
  %157 = zext i8 %156 to i32
  %158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %131, i32 noundef %143, i32 noundef %157) #14
  %159 = load ptr, ptr %2, align 8
  %160 = getelementptr inbounds %struct.mmc_host, ptr %159, i32 0, i32 1, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.mmc_host, ptr %159, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  br label %166

166:                                              ; preds = %163, %155
  %167 = phi ptr [ %165, %163 ], [ %161, %155 ]
  %168 = load ptr, ptr %22, align 4
  %169 = getelementptr inbounds %struct.sdhci_ops, ptr %168, i32 0, i32 2
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172, !prof !8

172:                                              ; preds = %166
  %173 = tail call zeroext i8 %170(ptr noundef %0, i32 noundef 41) #15
  br label %179

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %176 = load ptr, ptr %175, align 16
  %177 = getelementptr i8, ptr %176, i32 41
  %178 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %177) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %179

179:                                              ; preds = %174, %172
  %180 = phi i8 [ %173, %172 ], [ %178, %174 ]
  %181 = zext i8 %180 to i32
  %182 = load ptr, ptr %22, align 4
  %183 = getelementptr inbounds %struct.sdhci_ops, ptr %182, i32 0, i32 2
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %188, label %186, !prof !8

186:                                              ; preds = %179
  %187 = tail call zeroext i8 %184(ptr noundef %0, i32 noundef 42) #15
  br label %193

188:                                              ; preds = %179
  %189 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %190 = load ptr, ptr %189, align 16
  %191 = getelementptr i8, ptr %190, i32 42
  %192 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %191) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %193

193:                                              ; preds = %188, %186
  %194 = phi i8 [ %187, %186 ], [ %192, %188 ]
  %195 = zext i8 %194 to i32
  %196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %167, i32 noundef %181, i32 noundef %195) #14
  %197 = load ptr, ptr %2, align 8
  %198 = getelementptr inbounds %struct.mmc_host, ptr %197, i32 0, i32 1, i32 3
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.mmc_host, ptr %197, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  br label %204

204:                                              ; preds = %201, %193
  %205 = phi ptr [ %203, %201 ], [ %199, %193 ]
  %206 = load ptr, ptr %22, align 4
  %207 = getelementptr inbounds %struct.sdhci_ops, ptr %206, i32 0, i32 2
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210, !prof !8

210:                                              ; preds = %204
  %211 = tail call zeroext i8 %208(ptr noundef %0, i32 noundef 43) #15
  br label %217

212:                                              ; preds = %204
  %213 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %214 = load ptr, ptr %213, align 16
  %215 = getelementptr i8, ptr %214, i32 43
  %216 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %215) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %217

217:                                              ; preds = %212, %210
  %218 = phi i8 [ %211, %210 ], [ %216, %212 ]
  %219 = zext i8 %218 to i32
  %220 = load ptr, ptr %22, align 4
  %221 = getelementptr inbounds %struct.sdhci_ops, ptr %220, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224, !prof !8

224:                                              ; preds = %217
  %225 = tail call zeroext i16 %222(ptr noundef %0, i32 noundef 44) #15
  br label %231

226:                                              ; preds = %217
  %227 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %228 = load ptr, ptr %227, align 16
  %229 = getelementptr i8, ptr %228, i32 44
  %230 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %229) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %231

231:                                              ; preds = %226, %224
  %232 = phi i16 [ %225, %224 ], [ %230, %226 ]
  %233 = zext i16 %232 to i32
  %234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %205, i32 noundef %219, i32 noundef %233) #14
  %235 = load ptr, ptr %2, align 8
  %236 = getelementptr inbounds %struct.mmc_host, ptr %235, i32 0, i32 1, i32 3
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.mmc_host, ptr %235, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  br label %242

242:                                              ; preds = %239, %231
  %243 = phi ptr [ %241, %239 ], [ %237, %231 ]
  %244 = load ptr, ptr %22, align 4
  %245 = getelementptr inbounds %struct.sdhci_ops, ptr %244, i32 0, i32 2
  %246 = load ptr, ptr %245, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %250, label %248, !prof !8

248:                                              ; preds = %242
  %249 = tail call zeroext i8 %246(ptr noundef %0, i32 noundef 46) #15
  br label %255

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %252 = load ptr, ptr %251, align 16
  %253 = getelementptr i8, ptr %252, i32 46
  %254 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %253) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %255

255:                                              ; preds = %250, %248
  %256 = phi i8 [ %249, %248 ], [ %254, %250 ]
  %257 = zext i8 %256 to i32
  %258 = load ptr, ptr %22, align 4
  %259 = load ptr, ptr %258, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261, !prof !8

261:                                              ; preds = %255
  %262 = tail call i32 %259(ptr noundef %0, i32 noundef 48) #15
  br label %268

263:                                              ; preds = %255
  %264 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %265 = load ptr, ptr %264, align 16
  %266 = getelementptr i8, ptr %265, i32 48
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %266) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %268

268:                                              ; preds = %263, %261
  %269 = phi i32 [ %262, %261 ], [ %267, %263 ]
  %270 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %243, i32 noundef %257, i32 noundef %269) #14
  %271 = load ptr, ptr %2, align 8
  %272 = getelementptr inbounds %struct.mmc_host, ptr %271, i32 0, i32 1, i32 3
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = getelementptr inbounds %struct.mmc_host, ptr %271, i32 0, i32 1
  %277 = load ptr, ptr %276, align 4
  br label %278

278:                                              ; preds = %275, %268
  %279 = phi ptr [ %277, %275 ], [ %273, %268 ]
  %280 = load ptr, ptr %22, align 4
  %281 = load ptr, ptr %280, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283, !prof !8

283:                                              ; preds = %278
  %284 = tail call i32 %281(ptr noundef %0, i32 noundef 52) #15
  br label %290

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %287 = load ptr, ptr %286, align 16
  %288 = getelementptr i8, ptr %287, i32 52
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %288) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %290

290:                                              ; preds = %285, %283
  %291 = phi i32 [ %284, %283 ], [ %289, %285 ]
  %292 = load ptr, ptr %22, align 4
  %293 = load ptr, ptr %292, align 4
  %294 = icmp eq ptr %293, null
  br i1 %294, label %297, label %295, !prof !8

295:                                              ; preds = %290
  %296 = tail call i32 %293(ptr noundef %0, i32 noundef 56) #15
  br label %302

297:                                              ; preds = %290
  %298 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %299 = load ptr, ptr %298, align 16
  %300 = getelementptr i8, ptr %299, i32 56
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %300) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %302

302:                                              ; preds = %297, %295
  %303 = phi i32 [ %296, %295 ], [ %301, %297 ]
  %304 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %279, i32 noundef %291, i32 noundef %303) #14
  %305 = load ptr, ptr %2, align 8
  %306 = getelementptr inbounds %struct.mmc_host, ptr %305, i32 0, i32 1, i32 3
  %307 = load ptr, ptr %306, align 4
  %308 = icmp eq ptr %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.mmc_host, ptr %305, i32 0, i32 1
  %311 = load ptr, ptr %310, align 4
  br label %312

312:                                              ; preds = %309, %302
  %313 = phi ptr [ %311, %309 ], [ %307, %302 ]
  %314 = load ptr, ptr %22, align 4
  %315 = getelementptr inbounds %struct.sdhci_ops, ptr %314, i32 0, i32 1
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %320, label %318, !prof !8

318:                                              ; preds = %312
  %319 = tail call zeroext i16 %316(ptr noundef %0, i32 noundef 60) #15
  br label %325

320:                                              ; preds = %312
  %321 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %322 = load ptr, ptr %321, align 16
  %323 = getelementptr i8, ptr %322, i32 60
  %324 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %323) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %325

325:                                              ; preds = %320, %318
  %326 = phi i16 [ %319, %318 ], [ %324, %320 ]
  %327 = zext i16 %326 to i32
  %328 = load ptr, ptr %22, align 4
  %329 = getelementptr inbounds %struct.sdhci_ops, ptr %328, i32 0, i32 1
  %330 = load ptr, ptr %329, align 4
  %331 = icmp eq ptr %330, null
  br i1 %331, label %334, label %332, !prof !8

332:                                              ; preds = %325
  %333 = tail call zeroext i16 %330(ptr noundef %0, i32 noundef 252) #15
  br label %339

334:                                              ; preds = %325
  %335 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %336 = load ptr, ptr %335, align 16
  %337 = getelementptr i8, ptr %336, i32 252
  %338 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %337) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %339

339:                                              ; preds = %334, %332
  %340 = phi i16 [ %333, %332 ], [ %338, %334 ]
  %341 = zext i16 %340 to i32
  %342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %313, i32 noundef %327, i32 noundef %341) #14
  %343 = load ptr, ptr %2, align 8
  %344 = getelementptr inbounds %struct.mmc_host, ptr %343, i32 0, i32 1, i32 3
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %350

347:                                              ; preds = %339
  %348 = getelementptr inbounds %struct.mmc_host, ptr %343, i32 0, i32 1
  %349 = load ptr, ptr %348, align 4
  br label %350

350:                                              ; preds = %347, %339
  %351 = phi ptr [ %349, %347 ], [ %345, %339 ]
  %352 = load ptr, ptr %22, align 4
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, null
  br i1 %354, label %357, label %355, !prof !8

355:                                              ; preds = %350
  %356 = tail call i32 %353(ptr noundef %0, i32 noundef 64) #15
  br label %362

357:                                              ; preds = %350
  %358 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %359 = load ptr, ptr %358, align 16
  %360 = getelementptr i8, ptr %359, i32 64
  %361 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %360) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %362

362:                                              ; preds = %357, %355
  %363 = phi i32 [ %356, %355 ], [ %361, %357 ]
  %364 = load ptr, ptr %22, align 4
  %365 = load ptr, ptr %364, align 4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %369, label %367, !prof !8

367:                                              ; preds = %362
  %368 = tail call i32 %365(ptr noundef %0, i32 noundef 68) #15
  br label %374

369:                                              ; preds = %362
  %370 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %371 = load ptr, ptr %370, align 16
  %372 = getelementptr i8, ptr %371, i32 68
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %372) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %374

374:                                              ; preds = %369, %367
  %375 = phi i32 [ %368, %367 ], [ %373, %369 ]
  %376 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %351, i32 noundef %363, i32 noundef %375) #14
  %377 = load ptr, ptr %2, align 8
  %378 = getelementptr inbounds %struct.mmc_host, ptr %377, i32 0, i32 1, i32 3
  %379 = load ptr, ptr %378, align 4
  %380 = icmp eq ptr %379, null
  br i1 %380, label %381, label %384

381:                                              ; preds = %374
  %382 = getelementptr inbounds %struct.mmc_host, ptr %377, i32 0, i32 1
  %383 = load ptr, ptr %382, align 4
  br label %384

384:                                              ; preds = %381, %374
  %385 = phi ptr [ %383, %381 ], [ %379, %374 ]
  %386 = load ptr, ptr %22, align 4
  %387 = getelementptr inbounds %struct.sdhci_ops, ptr %386, i32 0, i32 1
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %392, label %390, !prof !8

390:                                              ; preds = %384
  %391 = tail call zeroext i16 %388(ptr noundef %0, i32 noundef 14) #15
  br label %397

392:                                              ; preds = %384
  %393 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %394 = load ptr, ptr %393, align 16
  %395 = getelementptr i8, ptr %394, i32 14
  %396 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %395) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %397

397:                                              ; preds = %392, %390
  %398 = phi i16 [ %391, %390 ], [ %396, %392 ]
  %399 = zext i16 %398 to i32
  %400 = load ptr, ptr %22, align 4
  %401 = load ptr, ptr %400, align 4
  %402 = icmp eq ptr %401, null
  br i1 %402, label %405, label %403, !prof !8

403:                                              ; preds = %397
  %404 = tail call i32 %401(ptr noundef %0, i32 noundef 72) #15
  br label %410

405:                                              ; preds = %397
  %406 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %407 = load ptr, ptr %406, align 16
  %408 = getelementptr i8, ptr %407, i32 72
  %409 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %408) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %410

410:                                              ; preds = %405, %403
  %411 = phi i32 [ %404, %403 ], [ %409, %405 ]
  %412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %385, i32 noundef %399, i32 noundef %411) #14
  %413 = load ptr, ptr %2, align 8
  %414 = getelementptr inbounds %struct.mmc_host, ptr %413, i32 0, i32 1, i32 3
  %415 = load ptr, ptr %414, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %420

417:                                              ; preds = %410
  %418 = getelementptr inbounds %struct.mmc_host, ptr %413, i32 0, i32 1
  %419 = load ptr, ptr %418, align 4
  br label %420

420:                                              ; preds = %417, %410
  %421 = phi ptr [ %419, %417 ], [ %415, %410 ]
  %422 = load ptr, ptr %22, align 4
  %423 = load ptr, ptr %422, align 4
  %424 = icmp eq ptr %423, null
  br i1 %424, label %427, label %425, !prof !8

425:                                              ; preds = %420
  %426 = tail call i32 %423(ptr noundef %0, i32 noundef 16) #15
  br label %432

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %429 = load ptr, ptr %428, align 16
  %430 = getelementptr i8, ptr %429, i32 16
  %431 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %430) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %432

432:                                              ; preds = %427, %425
  %433 = phi i32 [ %426, %425 ], [ %431, %427 ]
  %434 = load ptr, ptr %22, align 4
  %435 = load ptr, ptr %434, align 4
  %436 = icmp eq ptr %435, null
  br i1 %436, label %439, label %437, !prof !8

437:                                              ; preds = %432
  %438 = tail call i32 %435(ptr noundef %0, i32 noundef 20) #15
  br label %444

439:                                              ; preds = %432
  %440 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %441 = load ptr, ptr %440, align 16
  %442 = getelementptr i8, ptr %441, i32 20
  %443 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %442) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %444

444:                                              ; preds = %439, %437
  %445 = phi i32 [ %438, %437 ], [ %443, %439 ]
  %446 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %421, i32 noundef %433, i32 noundef %445) #14
  %447 = load ptr, ptr %2, align 8
  %448 = getelementptr inbounds %struct.mmc_host, ptr %447, i32 0, i32 1, i32 3
  %449 = load ptr, ptr %448, align 4
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %444
  %452 = getelementptr inbounds %struct.mmc_host, ptr %447, i32 0, i32 1
  %453 = load ptr, ptr %452, align 4
  br label %454

454:                                              ; preds = %451, %444
  %455 = phi ptr [ %453, %451 ], [ %449, %444 ]
  %456 = load ptr, ptr %22, align 4
  %457 = load ptr, ptr %456, align 4
  %458 = icmp eq ptr %457, null
  br i1 %458, label %461, label %459, !prof !8

459:                                              ; preds = %454
  %460 = tail call i32 %457(ptr noundef %0, i32 noundef 24) #15
  br label %466

461:                                              ; preds = %454
  %462 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %463 = load ptr, ptr %462, align 16
  %464 = getelementptr i8, ptr %463, i32 24
  %465 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %464) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %466

466:                                              ; preds = %461, %459
  %467 = phi i32 [ %460, %459 ], [ %465, %461 ]
  %468 = load ptr, ptr %22, align 4
  %469 = load ptr, ptr %468, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %473, label %471, !prof !8

471:                                              ; preds = %466
  %472 = tail call i32 %469(ptr noundef %0, i32 noundef 28) #15
  br label %478

473:                                              ; preds = %466
  %474 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %475 = load ptr, ptr %474, align 16
  %476 = getelementptr i8, ptr %475, i32 28
  %477 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %476) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %478

478:                                              ; preds = %473, %471
  %479 = phi i32 [ %472, %471 ], [ %477, %473 ]
  %480 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %455, i32 noundef %467, i32 noundef %479) #14
  %481 = load ptr, ptr %2, align 8
  %482 = getelementptr inbounds %struct.mmc_host, ptr %481, i32 0, i32 1, i32 3
  %483 = load ptr, ptr %482, align 4
  %484 = icmp eq ptr %483, null
  br i1 %484, label %485, label %488

485:                                              ; preds = %478
  %486 = getelementptr inbounds %struct.mmc_host, ptr %481, i32 0, i32 1
  %487 = load ptr, ptr %486, align 4
  br label %488

488:                                              ; preds = %485, %478
  %489 = phi ptr [ %487, %485 ], [ %483, %478 ]
  %490 = load ptr, ptr %22, align 4
  %491 = getelementptr inbounds %struct.sdhci_ops, ptr %490, i32 0, i32 1
  %492 = load ptr, ptr %491, align 4
  %493 = icmp eq ptr %492, null
  br i1 %493, label %496, label %494, !prof !8

494:                                              ; preds = %488
  %495 = tail call zeroext i16 %492(ptr noundef %0, i32 noundef 62) #15
  br label %501

496:                                              ; preds = %488
  %497 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %498 = load ptr, ptr %497, align 16
  %499 = getelementptr i8, ptr %498, i32 62
  %500 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %499) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %501

501:                                              ; preds = %496, %494
  %502 = phi i16 [ %495, %494 ], [ %500, %496 ]
  %503 = zext i16 %502 to i32
  %504 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %489, i32 noundef %503) #14
  %505 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %506 = load i32, ptr %505, align 4
  %507 = and i32 %506, 2
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %590, label %509

509:                                              ; preds = %501
  %510 = and i32 %506, 4096
  %511 = icmp eq i32 %510, 0
  %512 = load ptr, ptr %2, align 8
  %513 = getelementptr inbounds %struct.mmc_host, ptr %512, i32 0, i32 1, i32 3
  %514 = load ptr, ptr %513, align 4
  %515 = icmp eq ptr %514, null
  br i1 %511, label %559, label %516

516:                                              ; preds = %509
  br i1 %515, label %517, label %520

517:                                              ; preds = %516
  %518 = getelementptr inbounds %struct.mmc_host, ptr %512, i32 0, i32 1
  %519 = load ptr, ptr %518, align 4
  br label %520

520:                                              ; preds = %517, %516
  %521 = phi ptr [ %519, %517 ], [ %514, %516 ]
  %522 = load ptr, ptr %22, align 4
  %523 = load ptr, ptr %522, align 4
  %524 = icmp eq ptr %523, null
  br i1 %524, label %527, label %525, !prof !8

525:                                              ; preds = %520
  %526 = tail call i32 %523(ptr noundef %0, i32 noundef 84) #15
  br label %532

527:                                              ; preds = %520
  %528 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %529 = load ptr, ptr %528, align 16
  %530 = getelementptr i8, ptr %529, i32 84
  %531 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %530) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %532

532:                                              ; preds = %527, %525
  %533 = phi i32 [ %526, %525 ], [ %531, %527 ]
  %534 = load ptr, ptr %22, align 4
  %535 = load ptr, ptr %534, align 4
  %536 = icmp eq ptr %535, null
  br i1 %536, label %539, label %537, !prof !8

537:                                              ; preds = %532
  %538 = tail call i32 %535(ptr noundef %0, i32 noundef 92) #15
  br label %544

539:                                              ; preds = %532
  %540 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %541 = load ptr, ptr %540, align 16
  %542 = getelementptr i8, ptr %541, i32 92
  %543 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %542) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %544

544:                                              ; preds = %539, %537
  %545 = phi i32 [ %538, %537 ], [ %543, %539 ]
  %546 = load ptr, ptr %22, align 4
  %547 = load ptr, ptr %546, align 4
  %548 = icmp eq ptr %547, null
  br i1 %548, label %551, label %549, !prof !8

549:                                              ; preds = %544
  %550 = tail call i32 %547(ptr noundef %0, i32 noundef 88) #15
  br label %556

551:                                              ; preds = %544
  %552 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %553 = load ptr, ptr %552, align 16
  %554 = getelementptr i8, ptr %553, i32 88
  %555 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %554) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %556

556:                                              ; preds = %551, %549
  %557 = phi i32 [ %550, %549 ], [ %555, %551 ]
  %558 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %521, i32 noundef %533, i32 noundef %545, i32 noundef %557) #14
  br label %590

559:                                              ; preds = %509
  br i1 %515, label %560, label %563

560:                                              ; preds = %559
  %561 = getelementptr inbounds %struct.mmc_host, ptr %512, i32 0, i32 1
  %562 = load ptr, ptr %561, align 4
  br label %563

563:                                              ; preds = %560, %559
  %564 = phi ptr [ %562, %560 ], [ %514, %559 ]
  %565 = load ptr, ptr %22, align 4
  %566 = load ptr, ptr %565, align 4
  %567 = icmp eq ptr %566, null
  br i1 %567, label %570, label %568, !prof !8

568:                                              ; preds = %563
  %569 = tail call i32 %566(ptr noundef %0, i32 noundef 84) #15
  br label %575

570:                                              ; preds = %563
  %571 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %572 = load ptr, ptr %571, align 16
  %573 = getelementptr i8, ptr %572, i32 84
  %574 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %573) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %575

575:                                              ; preds = %570, %568
  %576 = phi i32 [ %569, %568 ], [ %574, %570 ]
  %577 = load ptr, ptr %22, align 4
  %578 = load ptr, ptr %577, align 4
  %579 = icmp eq ptr %578, null
  br i1 %579, label %582, label %580, !prof !8

580:                                              ; preds = %575
  %581 = tail call i32 %578(ptr noundef %0, i32 noundef 88) #15
  br label %587

582:                                              ; preds = %575
  %583 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %584 = load ptr, ptr %583, align 16
  %585 = getelementptr i8, ptr %584, i32 88
  %586 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %585) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %587

587:                                              ; preds = %582, %580
  %588 = phi i32 [ %581, %580 ], [ %586, %582 ]
  %589 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %564, i32 noundef %576, i32 noundef %588) #14
  br label %590

590:                                              ; preds = %587, %556, %501
  %591 = load ptr, ptr %22, align 4
  %592 = getelementptr inbounds %struct.sdhci_ops, ptr %591, i32 0, i32 29
  %593 = load ptr, ptr %592, align 4
  %594 = icmp eq ptr %593, null
  br i1 %594, label %596, label %595

595:                                              ; preds = %590
  tail call void %593(ptr noundef %0) #15
  br label %596

596:                                              ; preds = %595, %590
  %597 = load ptr, ptr %2, align 8
  %598 = getelementptr inbounds %struct.mmc_host, ptr %597, i32 0, i32 1, i32 3
  %599 = load ptr, ptr %598, align 4
  %600 = icmp eq ptr %599, null
  br i1 %600, label %601, label %604

601:                                              ; preds = %596
  %602 = getelementptr inbounds %struct.mmc_host, ptr %597, i32 0, i32 1
  %603 = load ptr, ptr %602, align 4
  br label %604

604:                                              ; preds = %601, %596
  %605 = phi ptr [ %603, %601 ], [ %599, %596 ]
  %606 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %605) #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_enable_v4_mode(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  store i8 1, ptr %2, align 2
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %1
  %9 = tail call zeroext i16 %6(ptr noundef %0, i32 noundef 62) #15
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 62
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i16 [ %9, %8 ], [ %14, %10 ]
  %17 = and i16 %16, 4096
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = or i16 %16, 4096
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !8

25:                                               ; preds = %19
  tail call void %23(ptr noundef %0, i16 noundef zeroext %20, i32 noundef 62) #15
  br label %30

26:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 16
  %29 = getelementptr i8, ptr %28, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 %20) #15, !srcloc !16
  br label %30

30:                                               ; preds = %26, %25, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_reset(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !8

8:                                                ; preds = %2
  tail call void %6(ptr noundef %0, i8 noundef zeroext %1, i32 noundef 47) #15
  br label %13

9:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 47
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %1) #15, !srcloc !18
  br label %13

13:                                               ; preds = %9, %8
  %14 = zext i8 %1 to i32
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 25
  %25 = load i8, ptr %24, align 2, !range !19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  store i8 0, ptr %24, align 2
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %29, align 64
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #15, !srcloc !21
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 0, i32 -1, ptr elementtype(i32) %31) #15, !srcloc !22
  %33 = extractvalue { i32, i32, i32 } %32, 0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  br label %36

36:                                               ; preds = %35, %27, %23, %17, %13
  %37 = tail call i64 @ktime_get() #15
  %38 = add i64 %37, 100000000
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %40

40:                                               ; preds = %70, %36
  %41 = tail call i64 @ktime_get() #15
  %42 = icmp sgt i64 %41, %38
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.sdhci_ops, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !8

47:                                               ; preds = %40
  %48 = tail call zeroext i8 %45(ptr noundef %0, i32 noundef 47) #15
  br label %53

49:                                               ; preds = %40
  %50 = load ptr, ptr %39, align 16
  %51 = getelementptr i8, ptr %50, i32 47
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %51) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i8 [ %48, %47 ], [ %52, %49 ]
  %55 = and i8 %54, %1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  br i1 %42, label %58, label %70

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.mmc_host, ptr %60, i32 0, i32 1, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.mmc_host, ptr %60, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi ptr [ %66, %64 ], [ %62, %58 ]
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %68, i32 noundef %14) #14
  tail call void @sdhci_dumpregs(ptr noundef %0)
  br label %72

70:                                               ; preds = %57
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 2147480) #15
  br label %40

72:                                               ; preds = %67, %53
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @sdhci_adma_write_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #4 {
  %6 = load ptr, ptr %1, align 4
  %7 = trunc i32 %4 to i16
  store i16 %7, ptr %6, align 4
  %8 = trunc i32 %3 to i16
  %9 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %6, i32 0, i32 1
  store i16 %8, ptr %9, align 2
  %10 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %6, i32 0, i32 2
  store i32 %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %6, i32 0, i32 3
  store i32 0, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %5
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 48
  %19 = load i32, ptr %18, align 16
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr i8, ptr %20, i32 %19
  store ptr %21, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_set_data_timeout_irq(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %4 = load i32, ptr %3, align 64
  %5 = and i32 %4, -1048577
  %6 = select i1 %1, i32 1048576, i32 0
  %7 = or i32 %5, %6
  store i32 %7, ptr %3, align 64
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %2
  tail call void %12(ptr noundef %0, i32 noundef %7, i32 noundef 52) #15
  br label %19

15:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %7) #15, !srcloc !25
  br label %19

19:                                               ; preds = %15, %14
  %20 = load i32, ptr %8, align 64
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !8

25:                                               ; preds = %19
  tail call void %23(ptr noundef %0, i32 noundef %20, i32 noundef 56) #15
  br label %30

26:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 16
  %29 = getelementptr i8, ptr %28, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %20) #15, !srcloc !25
  br label %30

30:                                               ; preds = %26, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sdhci_set_timeout(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4096
  %6 = icmp ne i32 %5, 0
  %7 = icmp eq ptr %1, null
  %8 = or i1 %6, %7
  br i1 %8, label %186, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %186, label %17

17:                                               ; preds = %13
  %18 = mul i32 %15, 1000
  br label %55

19:                                               ; preds = %9
  %20 = load i32, ptr %11, align 4
  %21 = add i32 %20, 999
  %22 = udiv i32 %21, 1000
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %55, label %26

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %26
  %31 = zext i32 %28 to i64
  %32 = mul nuw nsw i64 %31, 1000000
  %33 = icmp ult i64 %32, 4294967296
  br i1 %33, label %34, label %41, !prof !8

34:                                               ; preds = %30
  %35 = trunc i64 %32 to i32
  %36 = freeze i32 %35
  %37 = freeze i32 %24
  %38 = udiv i32 %36, %37
  %39 = mul i32 %38, %37
  %40 = sub i32 %36, %39
  br label %48

41:                                               ; preds = %30
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %32) #16, !srcloc !26
  %43 = extractvalue { i64, i64 } %42, 0
  %44 = extractvalue { i64, i64 } %42, 1
  %45 = lshr i64 %43, 32
  %46 = trunc i64 %45 to i32
  %47 = trunc i64 %44 to i32
  br label %48

48:                                               ; preds = %41, %34
  %49 = phi i32 [ %38, %34 ], [ %47, %41 ]
  %50 = phi i32 [ %40, %34 ], [ %46, %41 ]
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = add i32 %49, %22
  %54 = add i32 %53, %52
  br label %55

55:                                               ; preds = %48, %26, %19, %17
  %56 = phi i32 [ %54, %48 ], [ %22, %26 ], [ %22, %19 ], [ %18, %17 ]
  %57 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 19
  %58 = load i32, ptr %57, align 8
  %59 = udiv i32 8192000, %58
  %60 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 20
  br label %61

61:                                               ; preds = %65, %55
  %62 = phi i8 [ 0, %55 ], [ %66, %65 ]
  %63 = phi i32 [ %59, %55 ], [ %67, %65 ]
  %64 = icmp ult i32 %63, %56
  br i1 %64, label %65, label %189

65:                                               ; preds = %61
  %66 = add i8 %62, 1
  %67 = shl i32 %63, 1
  %68 = load i8, ptr %60, align 4
  %69 = icmp ugt i8 %66, %68
  br i1 %69, label %70, label %61

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 131072
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %189, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 28, i32 6
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw i32 1, %80
  br i1 %12, label %150, label %82

82:                                               ; preds = %75
  %83 = load i32, ptr %11, align 4
  %84 = add i32 %83, 999
  %85 = udiv i32 %84, 1000
  %86 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %118, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %118, label %93

93:                                               ; preds = %89
  %94 = zext i32 %91 to i64
  %95 = mul nuw nsw i64 %94, 1000000
  %96 = icmp ult i64 %95, 4294967296
  br i1 %96, label %97, label %104, !prof !8

97:                                               ; preds = %93
  %98 = trunc i64 %95 to i32
  %99 = freeze i32 %98
  %100 = freeze i32 %87
  %101 = udiv i32 %99, %100
  %102 = mul i32 %101, %100
  %103 = sub i32 %99, %102
  br label %111

104:                                              ; preds = %93
  %105 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %87, i64 %95) #16, !srcloc !26
  %106 = extractvalue { i64, i64 } %105, 0
  %107 = extractvalue { i64, i64 } %105, 1
  %108 = lshr i64 %106, 32
  %109 = trunc i64 %108 to i32
  %110 = trunc i64 %107 to i32
  br label %111

111:                                              ; preds = %104, %97
  %112 = phi i32 [ %101, %97 ], [ %110, %104 ]
  %113 = phi i32 [ %103, %97 ], [ %109, %104 ]
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = add i32 %112, %85
  %117 = add i32 %116, %115
  br label %118

118:                                              ; preds = %111, %89, %82
  %119 = phi i32 [ %85, %82 ], [ %85, %89 ], [ %117, %111 ]
  %120 = zext i32 %119 to i64
  %121 = mul nuw nsw i64 %120, 1000
  %122 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 2
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.mmc_host, ptr %77, i32 0, i32 57
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i32 %87, i32 %125
  %128 = zext i32 %123 to i64
  %129 = mul nuw nsw i64 %128, 1000000000
  %130 = trunc i32 %81 to i8
  %131 = udiv i8 8, %130
  %132 = zext i8 %131 to i64
  %133 = mul i64 %129, %132
  %134 = icmp ult i64 %133, 4294967296
  br i1 %134, label %135, label %139, !prof !8

135:                                              ; preds = %118
  %136 = trunc i64 %133 to i32
  %137 = udiv i32 %136, %127
  %138 = zext i32 %137 to i64
  br label %142

139:                                              ; preds = %118
  %140 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %127, i64 %133) #16, !srcloc !26
  %141 = extractvalue { i64, i64 } %140, 1
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi i64 [ %138, %135 ], [ %141, %139 ]
  %144 = shl i64 %143, 1
  %145 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = zext i32 %146 to i64
  %148 = mul i64 %121, %147
  %149 = add i64 %148, %144
  br label %156

150:                                              ; preds = %75
  %151 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  %152 = load i32, ptr %151, align 4
  %153 = mul i32 %152, 1000
  %154 = zext i32 %153 to i64
  %155 = mul nuw nsw i64 %154, 1000
  br label %156

156:                                              ; preds = %150, %142
  %157 = phi i64 [ %155, %150 ], [ %149, %142 ]
  %158 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 79
  %159 = icmp eq i64 %157, 0
  %160 = add i64 %157, 10000000
  %161 = select i1 %159, i64 0, i64 %160
  store i64 %161, ptr %158, align 64
  %162 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %163 = load i32, ptr %162, align 64
  %164 = and i32 %163, -1048577
  store i32 %164, ptr %162, align 64
  %165 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.sdhci_ops, ptr %166, i32 0, i32 3
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170, !prof !8

170:                                              ; preds = %156
  tail call void %168(ptr noundef %0, i32 noundef %164, i32 noundef 52) #15
  br label %175

171:                                              ; preds = %156
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %172 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %173 = load ptr, ptr %172, align 16
  %174 = getelementptr i8, ptr %173, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %164) #15, !srcloc !25
  br label %175

175:                                              ; preds = %171, %170
  %176 = load i32, ptr %162, align 64
  %177 = load ptr, ptr %165, align 4
  %178 = getelementptr inbounds %struct.sdhci_ops, ptr %177, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %182, label %181, !prof !8

181:                                              ; preds = %175
  tail call void %179(ptr noundef %0, i32 noundef %176, i32 noundef 56) #15
  br label %218

182:                                              ; preds = %175
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %183 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %184 = load ptr, ptr %183, align 16
  %185 = getelementptr i8, ptr %184, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %176) #15, !srcloc !25
  br label %218

186:                                              ; preds = %13, %2
  %187 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 20
  %188 = load i8, ptr %187, align 4
  br label %189

189:                                              ; preds = %186, %70, %61
  %190 = phi i8 [ %68, %70 ], [ %188, %186 ], [ %62, %61 ]
  %191 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %192 = load i32, ptr %191, align 64
  %193 = and i32 %192, 1048576
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %218

195:                                              ; preds = %189
  %196 = or i32 %192, 1048576
  store i32 %196, ptr %191, align 64
  %197 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.sdhci_ops, ptr %198, i32 0, i32 3
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %203, label %202, !prof !8

202:                                              ; preds = %195
  tail call void %200(ptr noundef %0, i32 noundef %196, i32 noundef 52) #15
  br label %207

203:                                              ; preds = %195
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %204 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %205 = load ptr, ptr %204, align 16
  %206 = getelementptr i8, ptr %205, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %196) #15, !srcloc !25
  br label %207

207:                                              ; preds = %203, %202
  %208 = load i32, ptr %191, align 64
  %209 = load ptr, ptr %197, align 4
  %210 = getelementptr inbounds %struct.sdhci_ops, ptr %209, i32 0, i32 3
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %214, label %213, !prof !8

213:                                              ; preds = %207
  tail call void %211(ptr noundef %0, i32 noundef %208, i32 noundef 56) #15
  br label %218

214:                                              ; preds = %207
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %215 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %216 = load ptr, ptr %215, align 16
  %217 = getelementptr i8, ptr %216, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %217, i32 %208) #15, !srcloc !25
  br label %218

218:                                              ; preds = %214, %213, %189, %182, %181
  %219 = phi i8 [ %190, %189 ], [ %68, %181 ], [ %68, %182 ], [ %190, %213 ], [ %190, %214 ]
  %220 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.sdhci_ops, ptr %221, i32 0, i32 5
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %226, label %225, !prof !8

225:                                              ; preds = %218
  tail call void %223(ptr noundef %0, i8 noundef zeroext %219, i32 noundef 46) #15
  br label %230

226:                                              ; preds = %218
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %227 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %228 = load ptr, ptr %227, align 16
  %229 = getelementptr i8, ptr %228, i32 46
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %229, i8 %219) #15, !srcloc !18
  br label %230

230:                                              ; preds = %226, %225
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @sdhci_switch_external_dma(ptr nocapture noundef writeonly %0, i1 noundef zeroext %1) #5 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 30
  store i8 %3, ptr %4, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @sdhci_calc_clk(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 64
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %80, label %102

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 26
  %13 = load i8, ptr %12, align 1, !range !19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !8

21:                                               ; preds = %15
  %22 = tail call zeroext i16 %19(ptr noundef %0, i32 noundef 44) #15
  br label %28

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr i8, ptr %25, i32 44
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i16 [ %22, %21 ], [ %27, %23 ]
  %30 = tail call fastcc zeroext i16 @sdhci_get_preset_value(ptr noundef %0)
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 1023
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 21
  %34 = load i32, ptr %33, align 16
  %35 = icmp eq i32 %34, 0
  %36 = and i32 %31, 1024
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  %39 = add nuw nsw i32 %32, 1
  br i1 %38, label %105, label %110

40:                                               ; preds = %11
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 21
  %42 = load i32, ptr %41, align 16
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 18
  %45 = load i32, ptr %44, align 4
  br i1 %43, label %61, label %46

46:                                               ; preds = %40
  %47 = mul i32 %45, %42
  br label %48

48:                                               ; preds = %52, %46
  %49 = phi i32 [ 1, %46 ], [ %53, %52 ]
  %50 = udiv i32 %47, %49
  %51 = icmp ugt i32 %50, %1
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = add nuw nsw i32 %49, 1
  %54 = icmp eq i32 %53, 1025
  br i1 %54, label %55, label %48

55:                                               ; preds = %52, %48
  %56 = phi i32 [ 1025, %52 ], [ %49, %48 ]
  %57 = udiv i32 %47, %56
  %58 = icmp ugt i32 %57, %1
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = add nsw i32 %56, -1
  br label %110

61:                                               ; preds = %55, %40
  %62 = icmp ugt i32 %45, %1
  br i1 %62, label %63, label %72

63:                                               ; preds = %69, %61
  %64 = phi i32 [ %70, %69 ], [ 2, %61 ]
  %65 = udiv i32 %45, %64
  %66 = icmp ugt i32 %65, %1
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = lshr exact i32 %64, 1
  br label %110

69:                                               ; preds = %63
  %70 = add nuw nsw i32 %64, 2
  %71 = icmp ult i32 %64, 2044
  br i1 %71, label %63, label %110

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 32768
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %110, label %77

77:                                               ; preds = %72
  %78 = icmp ult i32 %45, 25000001
  %79 = zext i1 %78 to i32
  br label %110

80:                                               ; preds = %7
  %81 = lshr i32 %9, 1
  %82 = icmp ugt i32 %81, %1
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = lshr i32 %9, 2
  %85 = icmp ugt i32 %84, %1
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = lshr i32 %9, 3
  %88 = icmp ugt i32 %87, %1
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = lshr i32 %9, 4
  %91 = icmp ugt i32 %90, %1
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = lshr i32 %9, 5
  %94 = icmp ugt i32 %93, %1
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = lshr i32 %9, 6
  %97 = icmp ugt i32 %96, %1
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = lshr i32 %9, 7
  %100 = icmp ugt i32 %99, %1
  %101 = select i1 %100, i32 256, i32 128
  br label %102

102:                                              ; preds = %98, %95, %92, %89, %86, %83, %80, %7
  %103 = phi i32 [ 1, %7 ], [ 2, %80 ], [ 4, %83 ], [ 8, %86 ], [ 16, %89 ], [ 32, %92 ], [ 64, %95 ], [ %101, %98 ]
  %104 = lshr i32 %103, 1
  br label %110

105:                                              ; preds = %28
  %106 = icmp eq i32 %32, 0
  %107 = shl nuw nsw i32 %32, 1
  %108 = select i1 %106, i32 1, i32 %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %105, %102, %77, %72, %69, %67, %59, %28
  %111 = phi i32 [ %32, %105 ], [ %32, %28 ], [ %68, %67 ], [ %79, %77 ], [ %60, %59 ], [ %104, %102 ], [ 0, %72 ], [ 1023, %69 ]
  %112 = phi i32 [ %108, %105 ], [ %39, %28 ], [ %64, %67 ], [ 1, %77 ], [ %56, %59 ], [ %103, %102 ], [ 1, %72 ], [ 2046, %69 ]
  %113 = phi i32 [ 1, %105 ], [ %34, %28 ], [ 1, %67 ], [ 1, %77 ], [ %42, %59 ], [ 1, %102 ], [ 1, %72 ], [ 1, %69 ]
  %114 = phi i16 [ %29, %105 ], [ 32, %28 ], [ 0, %67 ], [ 0, %77 ], [ 32, %59 ], [ 0, %102 ], [ 0, %72 ], [ 0, %69 ]
  %115 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 18
  %116 = load i32, ptr %115, align 4
  %117 = mul i32 %116, %113
  %118 = udiv i32 %117, %112
  store i32 %118, ptr %2, align 4
  br label %119

119:                                              ; preds = %110, %105
  %120 = phi i32 [ %32, %105 ], [ %111, %110 ]
  %121 = phi i16 [ %29, %105 ], [ %114, %110 ]
  %122 = trunc i32 %120 to i16
  %123 = shl i16 %122, 8
  %124 = or i16 %123, %121
  %125 = lshr i16 %122, 2
  %126 = and i16 %125, 192
  %127 = or i16 %124, %126
  ret i16 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i16 @sdhci_get_preset_value(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 64
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %95 [
    i32 1, label %4
    i32 2, label %4
    i32 3, label %17
    i32 4, label %30
    i32 5, label %43
    i32 6, label %56
    i32 9, label %56
    i32 7, label %69
    i32 8, label %69
    i32 10, label %82
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdhci_ops, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !8

10:                                               ; preds = %4
  %11 = tail call zeroext i16 %8(ptr noundef %0, i32 noundef 100) #15
  br label %119

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr i8, ptr %14, i32 100
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %119

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.sdhci_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !8

23:                                               ; preds = %17
  %24 = tail call zeroext i16 %21(ptr noundef %0, i32 noundef 102) #15
  br label %119

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %27 = load ptr, ptr %26, align 16
  %28 = getelementptr i8, ptr %27, i32 102
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %119

30:                                               ; preds = %1
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36, !prof !8

36:                                               ; preds = %30
  %37 = tail call zeroext i16 %34(ptr noundef %0, i32 noundef 104) #15
  br label %119

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %40 = load ptr, ptr %39, align 16
  %41 = getelementptr i8, ptr %40, i32 104
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %41) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %119

43:                                               ; preds = %1
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sdhci_ops, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !8

49:                                               ; preds = %43
  %50 = tail call zeroext i16 %47(ptr noundef %0, i32 noundef 106) #15
  br label %119

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %53 = load ptr, ptr %52, align 16
  %54 = getelementptr i8, ptr %53, i32 106
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %54) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %119

56:                                               ; preds = %1, %1
  %57 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sdhci_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !8

62:                                               ; preds = %56
  %63 = tail call zeroext i16 %60(ptr noundef %0, i32 noundef 108) #15
  br label %119

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %66 = load ptr, ptr %65, align 16
  %67 = getelementptr i8, ptr %66, i32 108
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %119

69:                                               ; preds = %1, %1
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.sdhci_ops, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !8

75:                                               ; preds = %69
  %76 = tail call zeroext i16 %73(ptr noundef %0, i32 noundef 110) #15
  br label %119

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %79 = load ptr, ptr %78, align 16
  %80 = getelementptr i8, ptr %79, i32 110
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %80) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %119

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.sdhci_ops, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88, !prof !8

88:                                               ; preds = %82
  %89 = tail call zeroext i16 %86(ptr noundef %0, i32 noundef 116) #15
  br label %119

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %92 = load ptr, ptr %91, align 16
  %93 = getelementptr i8, ptr %92, i32 116
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %93) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %119

95:                                               ; preds = %1
  %96 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.mmc_host, ptr %97, i32 0, i32 1, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.mmc_host, ptr %97, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  br label %104

104:                                              ; preds = %101, %95
  %105 = phi ptr [ %103, %101 ], [ %99, %95 ]
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %105) #14
  %107 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.sdhci_ops, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112, !prof !8

112:                                              ; preds = %104
  %113 = tail call zeroext i16 %110(ptr noundef %0, i32 noundef 102) #15
  br label %119

114:                                              ; preds = %104
  %115 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %116 = load ptr, ptr %115, align 16
  %117 = getelementptr i8, ptr %116, i32 102
  %118 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %117) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %119

119:                                              ; preds = %114, %112, %90, %88, %77, %75, %64, %62, %51, %49, %38, %36, %25, %23, %12, %10
  %120 = phi i16 [ %11, %10 ], [ %16, %12 ], [ %24, %23 ], [ %29, %25 ], [ %37, %36 ], [ %42, %38 ], [ %50, %49 ], [ %55, %51 ], [ %63, %62 ], [ %68, %64 ], [ %76, %75 ], [ %81, %77 ], [ %89, %88 ], [ %94, %90 ], [ %113, %112 ], [ %118, %114 ]
  ret i16 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_enable_clk(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = or i16 %1, 1
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdhci_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %2
  tail call void %7(ptr noundef %0, i16 noundef zeroext %3, i32 noundef 44) #15
  br label %14

10:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %13, i16 %3) #15, !srcloc !16
  br label %14

14:                                               ; preds = %10, %9
  %15 = tail call i64 @ktime_get() #15
  %16 = add i64 %15, 150000000
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  br label %18

18:                                               ; preds = %48, %14
  %19 = tail call i64 @ktime_get() #15
  %20 = icmp sgt i64 %19, %16
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !8

25:                                               ; preds = %18
  %26 = tail call zeroext i16 %23(ptr noundef %0, i32 noundef 44) #15
  br label %31

27:                                               ; preds = %18
  %28 = load ptr, ptr %17, align 16
  %29 = getelementptr i8, ptr %28, i32 44
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i16 [ %26, %25 ], [ %30, %27 ]
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  br i1 %20, label %36, label %48

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 1, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi ptr [ %44, %42 ], [ %40, %36 ]
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %46) #14
  tail call void @sdhci_dumpregs(ptr noundef %0)
  br label %115

48:                                               ; preds = %35
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #15
  br label %18

50:                                               ; preds = %31
  %51 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 17
  %52 = load i32, ptr %51, align 64
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %54, label %104

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %56 = load i8, ptr %55, align 2, !range !19
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %104, label %58

58:                                               ; preds = %54
  %59 = and i16 %32, -11
  %60 = or i16 %59, 8
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.sdhci_ops, ptr %61, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65, !prof !8

65:                                               ; preds = %58
  tail call void %63(ptr noundef %0, i16 noundef zeroext %60, i32 noundef 44) #15
  br label %69

66:                                               ; preds = %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %67 = load ptr, ptr %17, align 16
  %68 = getelementptr i8, ptr %67, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %68, i16 %60) #15, !srcloc !16
  br label %69

69:                                               ; preds = %66, %65
  %70 = tail call i64 @ktime_get() #15
  %71 = add i64 %70, 150000000
  br label %72

72:                                               ; preds = %102, %69
  %73 = tail call i64 @ktime_get() #15
  %74 = icmp sgt i64 %73, %71
  %75 = load ptr, ptr %4, align 4
  %76 = getelementptr inbounds %struct.sdhci_ops, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79, !prof !8

79:                                               ; preds = %72
  %80 = tail call zeroext i16 %77(ptr noundef %0, i32 noundef 44) #15
  br label %85

81:                                               ; preds = %72
  %82 = load ptr, ptr %17, align 16
  %83 = getelementptr i8, ptr %82, i32 44
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %83) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %85

85:                                               ; preds = %81, %79
  %86 = phi i16 [ %80, %79 ], [ %84, %81 ]
  %87 = and i16 %86, 2
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  br i1 %74, label %90, label %102

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.mmc_host, ptr %92, i32 0, i32 1, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.mmc_host, ptr %92, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  br label %99

99:                                               ; preds = %96, %90
  %100 = phi ptr [ %98, %96 ], [ %94, %90 ]
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %100) #14
  tail call void @sdhci_dumpregs(ptr noundef %0)
  br label %115

102:                                              ; preds = %89
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 2147480) #15
  br label %72

104:                                              ; preds = %85, %54, %50
  %105 = phi i16 [ %32, %54 ], [ %32, %50 ], [ %86, %85 ]
  %106 = or i16 %105, 4
  %107 = load ptr, ptr %4, align 4
  %108 = getelementptr inbounds %struct.sdhci_ops, ptr %107, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111, !prof !8

111:                                              ; preds = %104
  tail call void %109(ptr noundef %0, i16 noundef zeroext %106, i32 noundef 44) #15
  br label %115

112:                                              ; preds = %104
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %113 = load ptr, ptr %17, align 16
  %114 = getelementptr i8, ptr %113, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %114, i16 %106) #15, !srcloc !16
  br label %115

115:                                              ; preds = %112, %111, %99, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_set_clock(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 57
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sdhci_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %2
  tail call void %9(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 44) #15
  br label %16

12:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #15, !srcloc !16
  br label %16

16:                                               ; preds = %12, %11
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 57
  %21 = tail call zeroext i16 @sdhci_calc_clk(ptr noundef %0, i32 noundef %1, ptr noundef %20)
  tail call void @sdhci_enable_clk(ptr noundef %0, i16 noundef zeroext %21)
  br label %22

22:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_set_power_noreg(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = zext i16 %2 to i32
  %7 = shl nuw i32 1, %6
  switch i32 %7, label %10 [
    i32 128, label %21
    i32 256, label %21
    i32 131072, label %8
    i32 262144, label %8
    i32 1048576, label %9
    i32 2097152, label %9
    i32 4194304, label %9
    i32 8388608, label %9
  ]

8:                                                ; preds = %5, %5
  br label %21

9:                                                ; preds = %5, %5, %5, %5
  br label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi ptr [ %18, %16 ], [ %14, %10 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 2064, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %20, i32 noundef %6) #15
  br label %21

21:                                               ; preds = %19, %9, %8, %5, %5, %3
  %22 = phi i1 [ false, %8 ], [ false, %9 ], [ true, %19 ], [ true, %3 ], [ false, %5 ], [ false, %5 ]
  %23 = phi i8 [ 12, %8 ], [ 14, %9 ], [ 0, %19 ], [ 0, %3 ], [ 10, %5 ], [ 10, %5 ]
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 23
  %25 = load i8, ptr %24, align 8
  %26 = icmp eq i8 %25, %23
  br i1 %26, label %130, label %27

27:                                               ; preds = %21
  store i8 %23, ptr %24, align 8
  br i1 %22, label %28, label %57

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sdhci_ops, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !8

34:                                               ; preds = %28
  tail call void %32(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 41) #15
  br label %39

35:                                               ; preds = %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr i8, ptr %37, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 0) #15, !srcloc !18
  br label %39

39:                                               ; preds = %35, %34
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %130, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 25
  %46 = load i8, ptr %45, align 2, !range !19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %130, label %48

48:                                               ; preds = %44
  store i8 0, ptr %45, align 2
  %49 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %50, align 64
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %52) #15, !srcloc !21
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %52, ptr %52, i32 0, i32 -1, ptr elementtype(i32) %52) #15, !srcloc !22
  %54 = extractvalue { i32, i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %130, label %56

56:                                               ; preds = %48
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  br label %130

57:                                               ; preds = %27
  %58 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.sdhci_ops, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !8

68:                                               ; preds = %62
  tail call void %66(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 41) #15
  br label %73

69:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %71 = load ptr, ptr %70, align 16
  %72 = getelementptr i8, ptr %71, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %72, i8 0) #15, !srcloc !18
  br label %73

73:                                               ; preds = %69, %68, %57
  %74 = load i32, ptr %58, align 4
  %75 = and i32 %74, 2048
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.sdhci_ops, ptr %79, i32 0, i32 5
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !8

83:                                               ; preds = %77
  tail call void %81(ptr noundef %0, i8 noundef zeroext %23, i32 noundef 41) #15
  br label %88

84:                                               ; preds = %77
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %86 = load ptr, ptr %85, align 16
  %87 = getelementptr i8, ptr %86, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %87, i8 %23) #15, !srcloc !18
  br label %88

88:                                               ; preds = %84, %83, %73
  %89 = or i8 %23, 1
  %90 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sdhci_ops, ptr %91, i32 0, i32 5
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !8

95:                                               ; preds = %88
  tail call void %93(ptr noundef %0, i8 noundef zeroext %89, i32 noundef 41) #15
  br label %100

96:                                               ; preds = %88
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %97 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %98 = load ptr, ptr %97, align 16
  %99 = getelementptr i8, ptr %98, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %99, i8 %89) #15, !srcloc !18
  br label %100

100:                                              ; preds = %96, %95
  %101 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 25
  %107 = load i8, ptr %106, align 2, !range !19
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  store i8 1, ptr %106, align 2
  %110 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %111 = load ptr, ptr %110, align 8
  %112 = load ptr, ptr %111, align 64
  %113 = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %113) #15, !srcloc !21
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %113, ptr %113, i32 1, ptr elementtype(i32) %113) #15, !srcloc !27
  br label %115

115:                                              ; preds = %109, %105, %100
  %116 = load i32, ptr %58, align 4
  %117 = and i32 %116, 8388608
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %120(i32 noundef 214748000) #15
  %121 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %121(i32 noundef 214748000) #15
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %122(i32 noundef 214748000) #15
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %123(i32 noundef 214748000) #15
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %124(i32 noundef 214748000) #15
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 214748000) #15
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %126(i32 noundef 214748000) #15
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 214748000) #15
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748000) #15
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748000) #15
  br label %130

130:                                              ; preds = %119, %115, %56, %48, %44, %39, %21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_set_power(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @sdhci_set_power_noreg(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2)
  br label %30

10:                                               ; preds = %3
  %11 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %5, ptr noundef %7, i16 noundef zeroext %2) #15
  %12 = icmp eq i8 %1, 0
  %13 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sdhci_ops, ptr %14, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %12, label %24, label %18

18:                                               ; preds = %10
  br i1 %17, label %20, label %19, !prof !8

19:                                               ; preds = %18
  tail call void %16(ptr noundef %0, i8 noundef zeroext 1, i32 noundef 41) #15
  br label %30

20:                                               ; preds = %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %22 = load ptr, ptr %21, align 16
  %23 = getelementptr i8, ptr %22, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %23, i8 1) #15, !srcloc !18
  br label %30

24:                                               ; preds = %10
  br i1 %17, label %26, label %25, !prof !8

25:                                               ; preds = %24
  tail call void %16(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 41) #15
  br label %30

26:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 16
  %29 = getelementptr i8, ptr %28, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 0) #15, !srcloc !18
  br label %30

30:                                               ; preds = %26, %25, %20, %19, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_set_power_and_bus_voltage(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %5, ptr noundef %7, i16 noundef zeroext %2) #15
  br label %11

11:                                               ; preds = %9, %3
  tail call void @sdhci_set_power_noreg(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_host_ops, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #15
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %12 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  br i1 %9, label %19, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %2
  %20 = getelementptr inbounds %struct.mmc_command, ptr %13, i32 0, i32 5
  store i32 -123, ptr %20, align 4
  br label %32

21:                                               ; preds = %14
  %22 = load ptr, ptr %1, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = and i32 %16, 128
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr %1, ptr %12
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi ptr [ %13, %21 ], [ %28, %24 ]
  %31 = tail call fastcc zeroext i1 @sdhci_send_command_retry(ptr noundef %3, ptr noundef %30, i32 noundef %11)
  br i1 %31, label %37, label %32

32:                                               ; preds = %29, %19
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %3, ptr noundef %1) #15
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 16
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 17
  %36 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %34, ptr noundef %35) #15
  br label %37

37:                                               ; preds = %32, %29
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sdhci_send_command_retry(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %8 = icmp eq ptr %5, %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  br label %10

10:                                               ; preds = %42, %3
  %11 = phi i32 [ 10, %3 ], [ %15, %42 ]
  %12 = phi i32 [ %2, %3 ], [ %37, %42 ]
  %13 = tail call fastcc zeroext i1 @sdhci_send_command(ptr noundef %0, ptr noundef %1)
  br i1 %13, label %48, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %11, -1
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load ptr, ptr %7, align 8
  %19 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 1, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %24, %22 ], [ %20, %17 ]
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %26) #14
  tail call void @sdhci_dumpregs(ptr noundef %0)
  %28 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -5, ptr %28, align 4
  br label %52

29:                                               ; preds = %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %12) #15
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1250, i32 noundef 2) #15
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mmc_host_ops, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %30) #15
  %36 = icmp eq i32 %35, 0
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  br i1 %8, label %38, label %41

38:                                               ; preds = %29
  %39 = load ptr, ptr %4, align 4
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %41, label %52

41:                                               ; preds = %38, %29
  br i1 %36, label %46, label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %9, align 4
  %44 = and i32 %43, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %10, label %46

46:                                               ; preds = %42, %41
  %47 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 -123, ptr %47, align 4
  br label %52

48:                                               ; preds = %10
  %49 = load ptr, ptr %4, align 4
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store ptr null, ptr %4, align 4
  br label %52

52:                                               ; preds = %51, %48, %46, %38, %25
  %53 = phi i1 [ false, %25 ], [ true, %51 ], [ true, %48 ], [ false, %46 ], [ true, %38 ]
  ret i1 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_request_atomic(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 5
  store i32 -123, ptr %13, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %3, ptr noundef %1) #15
  %14 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 16
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 17
  %17 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %16) #15
  br label %28

18:                                               ; preds = %2
  %19 = load ptr, ptr %1, align 4
  %20 = icmp eq ptr %19, null
  %21 = and i32 %8, 128
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr %1, ptr %6
  %24 = select i1 %20, ptr %6, ptr %23
  %25 = load ptr, ptr %24, align 4
  %26 = tail call fastcc zeroext i1 @sdhci_send_command(ptr noundef %3, ptr noundef %25)
  %27 = select i1 %26, i32 0, i32 -16
  br label %28

28:                                               ; preds = %18, %11
  %29 = phi i32 [ 0, %11 ], [ %27, %18 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sdhci_send_command(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.dma_slave_config, align 4
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1608, i32 noundef 9, ptr noundef null) #15
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 5
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %1, align 4
  %16 = icmp eq i32 %15, 12
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %19, 8
  store i32 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %14, %8
  %22 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %21
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i32 [ 3, %30 ], [ 1, %25 ]
  %33 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mmc_request, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.mmc_data, ptr %36, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %1
  %42 = select i1 %41, i32 1, i32 %32
  br label %43

43:                                               ; preds = %38, %31
  %44 = phi i32 [ %32, %31 ], [ %42, %38 ]
  %45 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !8

49:                                               ; preds = %43
  %50 = tail call i32 %47(ptr noundef %0, i32 noundef 36) #15
  br label %56

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %53 = load ptr, ptr %52, align 16
  %54 = getelementptr i8, ptr %53, i32 36
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %56

56:                                               ; preds = %51, %49
  %57 = phi i32 [ %50, %49 ], [ %55, %51 ]
  %58 = and i32 %57, %44
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %546

60:                                               ; preds = %56
  store ptr %1, ptr %4, align 4
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 79
  store i64 0, ptr %61, align 64
  %62 = load ptr, ptr %22, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %64, %60
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 34
  %71 = load ptr, ptr %70, align 16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73, !prof !8

73:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1632, i32 noundef 9, ptr noundef null) #15
  br label %74

74:                                               ; preds = %73, %69
  store ptr %1, ptr %70, align 16
  %75 = load ptr, ptr %45, align 4
  %76 = getelementptr inbounds %struct.sdhci_ops, ptr %75, i32 0, i32 15
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  tail call void %77(ptr noundef %0, ptr noundef %1) #15
  br label %81

80:                                               ; preds = %74
  tail call void @__sdhci_set_timeout(ptr noundef %0, ptr noundef %1) #15
  br label %81

81:                                               ; preds = %80, %79, %64
  %82 = load ptr, ptr %22, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %250, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 30
  %86 = load i8, ptr %85, align 1, !range !19
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %249, label %88

88:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #15
  %89 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %159, label %92

92:                                               ; preds = %88
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %3, i8 0, i32 48, i1 false) #15
  %93 = add i32 %90, 32
  %94 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 1
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %93, ptr %95, align 4
  %96 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 3
  store i32 4, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 4, ptr %97, align 4
  %98 = getelementptr inbounds %struct.mmc_data, ptr %82, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = lshr i32 %99, 2
  %101 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 5
  store i32 %100, ptr %101, align 4
  %102 = load i32, ptr %98, align 4
  %103 = lshr i32 %102, 2
  %104 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.mmc_data, ptr %82, i32 0, i32 10
  %106 = load i32, ptr %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %92
  %109 = getelementptr inbounds %struct.mmc_data, ptr %82, i32 0, i32 12
  %110 = load ptr, ptr %109, align 4
  %111 = load i32, ptr %98, align 4
  br label %115

112:                                              ; preds = %115
  %113 = add nuw i32 %116, 1
  %114 = icmp eq i32 %113, %106
  br i1 %114, label %121, label %115

115:                                              ; preds = %112, %108
  %116 = phi i32 [ 0, %108 ], [ %113, %112 ]
  %117 = getelementptr %struct.scatterlist, ptr %110, i32 %116, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = urem i32 %118, %111
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %112, label %159

121:                                              ; preds = %112, %92
  %122 = getelementptr inbounds %struct.mmc_data, ptr %82, i32 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 256
  %125 = icmp eq i32 %124, 0
  %126 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 55
  %127 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 54
  %128 = select i1 %125, ptr %127, ptr %126
  %129 = load ptr, ptr %128, align 4
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.dma_device, ptr %130, i32 0, i32 44
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %159, label %134

134:                                              ; preds = %121
  %135 = call i32 %132(ptr noundef %129, ptr noundef nonnull %3) #15
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %134
  %138 = call fastcc i32 @sdhci_pre_dma_transfer(ptr noundef %0, ptr noundef nonnull %82, i32 noundef 2) #15
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %159, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr %122, align 4
  %142 = and i32 %141, 256
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 2, i32 1
  %145 = getelementptr inbounds %struct.mmc_data, ptr %82, i32 0, i32 12
  %146 = load ptr, ptr %145, align 4
  %147 = load i32, ptr %105, align 4
  %148 = icmp eq ptr %129, null
  br i1 %148, label %159, label %149

149:                                              ; preds = %140
  %150 = load ptr, ptr %129, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.dma_device, ptr %150, i32 0, i32 39
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = call ptr %154(ptr noundef nonnull %129, ptr noundef %146, i32 noundef %147, i32 noundef %144, i32 noundef 3, ptr noundef null) #15
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %156, %152, %149, %140, %137, %134, %121, %115, %88
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #15
  br label %227

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %157, i32 0, i32 6
  store ptr null, ptr %161, align 4
  %162 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %157, i32 0, i32 8
  store ptr null, ptr %162, align 4
  %163 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %157, i32 0, i32 4
  %164 = load ptr, ptr %163, align 4
  %165 = call i32 %164(ptr noundef nonnull %157) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #15
  %166 = icmp sgt i32 %165, -1
  br i1 %166, label %167, label %227

167:                                              ; preds = %160
  %168 = load ptr, ptr %22, align 4
  %169 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 36
  %170 = load ptr, ptr %169, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172, !prof !8

172:                                              ; preds = %167
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1054, i32 noundef 9, ptr noundef null) #15
  br label %173

173:                                              ; preds = %172, %167
  %174 = getelementptr inbounds %struct.mmc_data, ptr %168, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.mmc_data, ptr %168, i32 0, i32 3
  %177 = load i32, ptr %176, align 4
  %178 = mul i32 %177, %175
  %179 = icmp ugt i32 %178, 524288
  br i1 %179, label %180, label %181, !prof !28

180:                                              ; preds = %173
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1057, 0\0A.popsection", ""() #15, !srcloc !29
  unreachable

181:                                              ; preds = %173
  %182 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.mmc_host, ptr %183, i32 0, i32 24
  %185 = load i32, ptr %184, align 4
  %186 = icmp ugt i32 %175, %185
  br i1 %186, label %187, label %188, !prof !28

187:                                              ; preds = %181
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1058, 0\0A.popsection", ""() #15, !srcloc !30
  unreachable

188:                                              ; preds = %181
  %189 = icmp ugt i32 %177, 65535
  br i1 %189, label %190, label %191, !prof !28

190:                                              ; preds = %188
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #15, !srcloc !31
  unreachable

191:                                              ; preds = %188
  store ptr %168, ptr %169, align 8
  %192 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 37
  %193 = load i8, ptr %192, align 4
  %194 = and i8 %193, -2
  store i8 %194, ptr %192, align 4
  %195 = getelementptr inbounds %struct.mmc_data, ptr %168, i32 0, i32 7
  store i32 0, ptr %195, align 4
  %196 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %197 = load i32, ptr %196, align 4
  %198 = or i32 %197, 4
  store i32 %198, ptr %196, align 4
  %199 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %200 = load i32, ptr %199, align 64
  %201 = and i32 %200, -50331705
  %202 = and i32 %197, 192
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, i32 33554440, i32 50331656
  %205 = or i32 %204, %201
  store i32 %205, ptr %199, align 64
  %206 = load ptr, ptr %45, align 4
  %207 = getelementptr inbounds %struct.sdhci_ops, ptr %206, i32 0, i32 3
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210, !prof !8

210:                                              ; preds = %191
  call void %208(ptr noundef %0, i32 noundef %205, i32 noundef 52) #15
  br label %215

211:                                              ; preds = %191
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  call void @arm_heavy_mb() #15
  %212 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %213 = load ptr, ptr %212, align 16
  %214 = getelementptr i8, ptr %213, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %214, i32 %205) #15, !srcloc !25
  br label %215

215:                                              ; preds = %211, %210
  %216 = load i32, ptr %199, align 64
  %217 = load ptr, ptr %45, align 4
  %218 = getelementptr inbounds %struct.sdhci_ops, ptr %217, i32 0, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221, !prof !8

221:                                              ; preds = %215
  call void %219(ptr noundef %0, i32 noundef %216, i32 noundef 56) #15
  br label %226

222:                                              ; preds = %215
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  call void @arm_heavy_mb() #15
  %223 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %224 = load ptr, ptr %223, align 16
  %225 = getelementptr i8, ptr %224, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %216) #15, !srcloc !25
  br label %226

226:                                              ; preds = %222, %221
  call fastcc void @sdhci_set_block_info(ptr noundef %0, ptr noundef %168) #15
  br label %250

227:                                              ; preds = %160, %159
  %228 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 55
  %229 = load ptr, ptr %228, align 8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %227
  call void @dma_release_channel(ptr noundef nonnull %229) #15
  store ptr null, ptr %228, align 8
  br label %232

232:                                              ; preds = %231, %227
  %233 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 54
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %232
  call void @dma_release_channel(ptr noundef nonnull %234) #15
  store ptr null, ptr %233, align 4
  br label %237

237:                                              ; preds = %236, %232
  store i8 0, ptr %85, align 1
  %238 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %239 = load ptr, ptr %238, align 8
  %240 = getelementptr inbounds %struct.mmc_host, ptr %239, i32 0, i32 1, i32 3
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.mmc_host, ptr %239, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  br label %246

246:                                              ; preds = %243, %237
  %247 = phi ptr [ %245, %243 ], [ %241, %237 ]
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %247) #14
  call fastcc void @sdhci_prepare_data(ptr noundef %0, ptr noundef %1) #15
  br label %250

249:                                              ; preds = %84
  tail call fastcc void @sdhci_prepare_data(ptr noundef %0, ptr noundef %1)
  br label %250

250:                                              ; preds = %249, %246, %226, %81
  %251 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %252 = load i32, ptr %251, align 4
  %253 = load ptr, ptr %45, align 4
  %254 = getelementptr inbounds %struct.sdhci_ops, ptr %253, i32 0, i32 3
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %258, label %257, !prof !8

257:                                              ; preds = %250
  call void %255(ptr noundef %0, i32 noundef %252, i32 noundef 8) #15
  br label %262

258:                                              ; preds = %250
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  call void @arm_heavy_mb() #15
  %259 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %260 = load ptr, ptr %259, align 16
  %261 = getelementptr i8, ptr %260, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %261, i32 %252) #15, !srcloc !25
  br label %262

262:                                              ; preds = %258, %257
  %263 = load ptr, ptr %22, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %306

265:                                              ; preds = %262
  %266 = load i32, ptr %10, align 8
  %267 = and i32 %266, 1024
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %282, label %269

269:                                              ; preds = %265
  %270 = load i32, ptr %1, align 4
  %271 = icmp eq i32 %270, 21
  br i1 %271, label %424, label %272

272:                                              ; preds = %269
  %273 = load ptr, ptr %45, align 4
  %274 = getelementptr inbounds %struct.sdhci_ops, ptr %273, i32 0, i32 4
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %278, label %277, !prof !8

277:                                              ; preds = %272
  call void %275(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 12) #15
  br label %424

278:                                              ; preds = %272
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  %279 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %280 = load ptr, ptr %279, align 16
  %281 = getelementptr i8, ptr %280, i32 12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %281, i16 0) #15, !srcloc !16
  br label %424

282:                                              ; preds = %265
  %283 = load ptr, ptr %45, align 4
  %284 = getelementptr inbounds %struct.sdhci_ops, ptr %283, i32 0, i32 1
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, null
  br i1 %286, label %289, label %287, !prof !8

287:                                              ; preds = %282
  %288 = call zeroext i16 %285(ptr noundef %0, i32 noundef 12) #15
  br label %294

289:                                              ; preds = %282
  %290 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %291 = load ptr, ptr %290, align 16
  %292 = getelementptr i8, ptr %291, i32 12
  %293 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %292) #15, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %294

294:                                              ; preds = %289, %287
  %295 = phi i16 [ %288, %287 ], [ %293, %289 ]
  %296 = and i16 %295, -13
  %297 = load ptr, ptr %45, align 4
  %298 = getelementptr inbounds %struct.sdhci_ops, ptr %297, i32 0, i32 4
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %302, label %301, !prof !8

301:                                              ; preds = %294
  call void %299(ptr noundef %0, i16 noundef zeroext %296, i32 noundef 12) #15
  br label %424

302:                                              ; preds = %294
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  %303 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %304 = load ptr, ptr %303, align 16
  %305 = getelementptr i8, ptr %304, i32 12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %305, i16 %296) #15, !srcloc !16
  br label %424

306:                                              ; preds = %262
  %307 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 36
  %308 = load ptr, ptr %307, align 8
  %309 = icmp eq ptr %308, null
  br i1 %309, label %310, label %311, !prof !28

310:                                              ; preds = %306
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1444, i32 noundef 9, ptr noundef null) #15
  br label %311

311:                                              ; preds = %310, %306
  %312 = load i32, ptr %1, align 4
  switch i32 %312, label %313 [
    i32 25, label %322
    i32 18, label %322
  ]

313:                                              ; preds = %311
  %314 = load i32, ptr %10, align 8
  %315 = trunc i32 %314 to i16
  %316 = lshr i16 %315, 12
  %317 = and i16 %316, 2
  %318 = xor i16 %317, 2
  %319 = getelementptr inbounds %struct.mmc_data, ptr %263, i32 0, i32 3
  %320 = load i32, ptr %319, align 4
  %321 = icmp ugt i32 %320, 1
  br i1 %321, label %322, label %401

322:                                              ; preds = %313, %311, %311
  %323 = load ptr, ptr %33, align 4
  %324 = load ptr, ptr %323, align 4
  %325 = icmp eq ptr %324, null
  %326 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %327 = load i32, ptr %326, align 4
  br i1 %325, label %328, label %337

328:                                              ; preds = %322
  %329 = and i32 %327, 64
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %340, label %331

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.mmc_request, ptr %323, i32 0, i32 9
  %333 = load i8, ptr %332, align 4, !range !19
  %334 = icmp eq i8 %333, 0
  %335 = icmp ne i32 %312, 53
  %336 = select i1 %334, i1 %335, i1 false
  br label %340

337:                                              ; preds = %322
  %338 = and i32 %327, 128
  %339 = icmp ne i32 %338, 0
  br label %340

340:                                              ; preds = %337, %331, %328
  %341 = phi i1 [ false, %337 ], [ false, %328 ], [ %336, %331 ]
  %342 = phi i1 [ %339, %337 ], [ false, %328 ], [ false, %331 ]
  %343 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 17
  %344 = load i32, ptr %343, align 64
  %345 = icmp ugt i32 %344, 3
  br i1 %345, label %346, label %378

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %348 = load i8, ptr %347, align 2, !range !19
  %349 = icmp ne i8 %348, 0
  %350 = select i1 %341, i1 true, i1 %342
  %351 = select i1 %349, i1 %350, i1 false
  br i1 %351, label %352, label %378

352:                                              ; preds = %346
  %353 = load ptr, ptr %45, align 4
  %354 = getelementptr inbounds %struct.sdhci_ops, ptr %353, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %359, label %357, !prof !8

357:                                              ; preds = %352
  %358 = call zeroext i16 %355(ptr noundef %0, i32 noundef 62) #15
  br label %364

359:                                              ; preds = %352
  %360 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %361 = load ptr, ptr %360, align 16
  %362 = getelementptr i8, ptr %361, i32 62
  %363 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %362) #15, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %364

364:                                              ; preds = %359, %357
  %365 = phi i16 [ %358, %357 ], [ %363, %359 ]
  %366 = and i16 %365, -2049
  %367 = select i1 %342, i16 2048, i16 0
  %368 = or i16 %366, %367
  %369 = load ptr, ptr %45, align 4
  %370 = getelementptr inbounds %struct.sdhci_ops, ptr %369, i32 0, i32 4
  %371 = load ptr, ptr %370, align 4
  %372 = icmp eq ptr %371, null
  br i1 %372, label %374, label %373, !prof !8

373:                                              ; preds = %364
  call void %371(ptr noundef %0, i16 noundef zeroext %368, i32 noundef 62) #15
  br label %381

374:                                              ; preds = %364
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  %375 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %376 = load ptr, ptr %375, align 16
  %377 = getelementptr i8, ptr %376, i32 62
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %377, i16 %368) #15, !srcloc !16
  br label %381

378:                                              ; preds = %346, %340
  %379 = select i1 %342, i16 42, i16 34
  %380 = select i1 %341, i16 38, i16 %379
  br label %381

381:                                              ; preds = %378, %374, %373
  %382 = phi i16 [ 46, %374 ], [ 46, %373 ], [ %380, %378 ]
  %383 = load ptr, ptr %33, align 4
  %384 = load ptr, ptr %383, align 4
  %385 = icmp eq ptr %384, null
  br i1 %385, label %401, label %386

386:                                              ; preds = %381
  %387 = load i32, ptr %326, align 4
  %388 = and i32 %387, 128
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %401, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.mmc_command, ptr %384, i32 0, i32 1
  %392 = load i32, ptr %391, align 4
  %393 = load ptr, ptr %45, align 4
  %394 = getelementptr inbounds %struct.sdhci_ops, ptr %393, i32 0, i32 3
  %395 = load ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %398, label %397, !prof !8

397:                                              ; preds = %390
  call void %395(ptr noundef %0, i32 noundef %392, i32 noundef 0) #15
  br label %401

398:                                              ; preds = %390
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  call void @arm_heavy_mb() #15
  %399 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %400 = load ptr, ptr %399, align 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %400, i32 %392) #15, !srcloc !25
  br label %401

401:                                              ; preds = %398, %397, %386, %381, %313
  %402 = phi i16 [ %382, %386 ], [ %318, %313 ], [ %382, %397 ], [ %382, %398 ], [ %382, %381 ]
  %403 = getelementptr inbounds %struct.mmc_data, ptr %263, i32 0, i32 6
  %404 = load i32, ptr %403, align 4
  %405 = trunc i32 %404 to i16
  %406 = lshr i16 %405, 5
  %407 = and i16 %406, 16
  %408 = or i16 %407, %402
  %409 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %410 = load i32, ptr %409, align 4
  %411 = trunc i32 %410 to i16
  %412 = lshr i16 %411, 2
  %413 = and i16 %412, 1
  %414 = or i16 %408, %413
  %415 = load ptr, ptr %45, align 4
  %416 = getelementptr inbounds %struct.sdhci_ops, ptr %415, i32 0, i32 4
  %417 = load ptr, ptr %416, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %420, label %419, !prof !8

419:                                              ; preds = %401
  call void %417(ptr noundef %0, i16 noundef zeroext %414, i32 noundef 12) #15
  br label %424

420:                                              ; preds = %401
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  %421 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %422 = load ptr, ptr %421, align 16
  %423 = getelementptr i8, ptr %422, i32 12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %423, i16 %414) #15, !srcloc !16
  br label %424

424:                                              ; preds = %420, %419, %302, %301, %278, %277, %269
  %425 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %426 = load i32, ptr %425, align 4
  %427 = and i32 %426, 10
  %428 = icmp eq i32 %427, 10
  br i1 %428, label %429, label %436

429:                                              ; preds = %424
  %430 = load i1, ptr @sdhci_send_command.__already_done, align 1
  br i1 %430, label %433, label %431, !prof !8

431:                                              ; preds = %429
  store i1 true, ptr @sdhci_send_command.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1649, i32 noundef 9, ptr noundef nonnull @.str.55) #15
  %432 = load i32, ptr %425, align 4
  br label %433

433:                                              ; preds = %431, %429
  %434 = phi i32 [ %432, %431 ], [ %426, %429 ]
  %435 = and i32 %434, -9
  store i32 %435, ptr %425, align 4
  br label %436

436:                                              ; preds = %433, %424
  %437 = phi i32 [ %435, %433 ], [ %426, %424 ]
  %438 = and i32 %437, 1
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %447, label %440

440:                                              ; preds = %436
  %441 = and i32 %437, 2
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %440
  %444 = and i32 %437, 8
  %445 = icmp eq i32 %444, 0
  %446 = select i1 %445, i32 2, i32 3
  br label %447

447:                                              ; preds = %443, %440, %436
  %448 = phi i32 [ 0, %436 ], [ 1, %440 ], [ %446, %443 ]
  %449 = shl i32 %437, 1
  %450 = and i32 %449, 8
  %451 = and i32 %437, 16
  %452 = or i32 %450, %451
  %453 = or i32 %452, %448
  %454 = load ptr, ptr %22, align 4
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %463

456:                                              ; preds = %447
  %457 = load i32, ptr %1, align 4
  switch i32 %457, label %468 [
    i32 19, label %458
    i32 21, label %458
  ]

458:                                              ; preds = %456, %456
  %459 = or i32 %453, 32
  %460 = load volatile i32, ptr @jiffies, align 64
  %461 = load i64, ptr %61, align 64
  %462 = icmp eq i64 %461, 0
  br i1 %462, label %477, label %472

463:                                              ; preds = %447
  %464 = or i32 %453, 32
  %465 = load volatile i32, ptr @jiffies, align 64
  %466 = load i64, ptr %61, align 64
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %488, label %472

468:                                              ; preds = %456
  %469 = load volatile i32, ptr @jiffies, align 64
  %470 = load i64, ptr %61, align 64
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %477, label %472

472:                                              ; preds = %468, %463, %458
  %473 = phi i64 [ %470, %468 ], [ %461, %458 ], [ %466, %463 ]
  %474 = phi i32 [ %469, %468 ], [ %460, %458 ], [ %465, %463 ]
  %475 = phi i32 [ %453, %468 ], [ %459, %458 ], [ %464, %463 ]
  %476 = call i32 @nsecs_to_jiffies(i64 noundef %473) #15
  br label %488

477:                                              ; preds = %468, %458
  %478 = phi i32 [ %453, %468 ], [ %459, %458 ]
  %479 = phi i32 [ %469, %468 ], [ %460, %458 ]
  %480 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  %481 = load i32, ptr %480, align 4
  %482 = icmp ugt i32 %481, 9000
  br i1 %482, label %483, label %488

483:                                              ; preds = %477
  %484 = add i32 %481, 999
  %485 = udiv i32 %484, 1000
  %486 = mul nuw nsw i32 %485, 100
  %487 = add nuw nsw i32 %486, 100
  br label %488

488:                                              ; preds = %483, %477, %472, %463
  %489 = phi i32 [ %474, %472 ], [ %479, %483 ], [ %479, %477 ], [ %465, %463 ]
  %490 = phi i32 [ %475, %472 ], [ %478, %483 ], [ %478, %477 ], [ %464, %463 ]
  %491 = phi i32 [ %476, %472 ], [ %487, %483 ], [ 1000, %477 ], [ 1000, %463 ]
  %492 = add i32 %491, %489
  %493 = load ptr, ptr %33, align 4
  %494 = getelementptr inbounds %struct.mmc_request, ptr %493, i32 0, i32 1
  %495 = load ptr, ptr %494, align 4
  %496 = getelementptr inbounds %struct.mmc_command, ptr %495, i32 0, i32 7
  %497 = load ptr, ptr %496, align 4
  %498 = icmp eq ptr %497, null
  br i1 %498, label %499, label %504

499:                                              ; preds = %488
  %500 = getelementptr inbounds %struct.mmc_command, ptr %495, i32 0, i32 3
  %501 = load i32, ptr %500, align 4
  %502 = and i32 %501, 8
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %506, label %504

504:                                              ; preds = %499, %488
  %505 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 53
  br label %508

506:                                              ; preds = %499
  %507 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 52
  br label %508

508:                                              ; preds = %506, %504
  %509 = phi ptr [ %507, %506 ], [ %505, %504 ]
  %510 = call i32 @mod_timer(ptr noundef %509, i32 noundef %492) #15
  %511 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 30
  %512 = load i8, ptr %511, align 1, !range !19
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %531, label %514

514:                                              ; preds = %508
  %515 = load ptr, ptr %22, align 4
  %516 = icmp eq ptr %515, null
  br i1 %516, label %531, label %517

517:                                              ; preds = %514
  %518 = getelementptr inbounds %struct.mmc_data, ptr %515, i32 0, i32 6
  %519 = load i32, ptr %518, align 4
  %520 = and i32 %519, 256
  %521 = icmp eq i32 %520, 0
  %522 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 55
  %523 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 54
  %524 = select i1 %521, ptr %523, ptr %522
  %525 = load ptr, ptr %524, align 4
  %526 = icmp eq ptr %525, null
  br i1 %526, label %531, label %527

527:                                              ; preds = %517
  %528 = load ptr, ptr %525, align 4
  %529 = getelementptr inbounds %struct.dma_device, ptr %528, i32 0, i32 50
  %530 = load ptr, ptr %529, align 4
  call void %530(ptr noundef nonnull %525) #15
  br label %531

531:                                              ; preds = %527, %517, %514, %508
  %532 = load i32, ptr %1, align 4
  %533 = shl i32 %532, 8
  %534 = and i32 %490, 255
  %535 = or i32 %533, %534
  %536 = trunc i32 %535 to i16
  %537 = load ptr, ptr %45, align 4
  %538 = getelementptr inbounds %struct.sdhci_ops, ptr %537, i32 0, i32 4
  %539 = load ptr, ptr %538, align 4
  %540 = icmp eq ptr %539, null
  br i1 %540, label %542, label %541, !prof !8

541:                                              ; preds = %531
  call void %539(ptr noundef %0, i16 noundef zeroext %536, i32 noundef 14) #15
  br label %546

542:                                              ; preds = %531
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  %543 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %544 = load ptr, ptr %543, align 16
  %545 = getelementptr i8, ptr %544, i32 14
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %545, i16 %536) #15, !srcloc !16
  br label %546

546:                                              ; preds = %542, %541, %56
  ret i1 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_set_bus_width(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %2
  %9 = tail call zeroext i8 %6(ptr noundef %0, i32 noundef 40) #15
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 40
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i8 [ %9, %8 ], [ %14, %10 ]
  %17 = icmp eq i32 %1, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = and i8 %16, -35
  %20 = or i8 %19, 32
  br label %35

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 16
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  %28 = and i8 %16, -33
  %29 = select i1 %27, i8 %16, i8 %28
  %30 = icmp eq i32 %1, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = or i8 %29, 2
  br label %35

33:                                               ; preds = %21
  %34 = and i8 %29, -3
  br label %35

35:                                               ; preds = %33, %31, %18
  %36 = phi i8 [ %20, %18 ], [ %32, %31 ], [ %34, %33 ]
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.sdhci_ops, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !8

41:                                               ; preds = %35
  tail call void %39(ptr noundef %0, i8 noundef zeroext %36, i32 noundef 40) #15
  br label %46

42:                                               ; preds = %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %45, i8 %36) #15, !srcloc !18
  br label %46

46:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_set_uhs_signaling(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %2
  %9 = tail call zeroext i16 %6(ptr noundef %0, i32 noundef 62) #15
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 62
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i16 [ %9, %8 ], [ %14, %10 ]
  %17 = and i16 %16, -8
  switch i32 %1, label %24 [
    i32 9, label %18
    i32 6, label %18
    i32 3, label %33
    i32 4, label %20
    i32 5, label %22
  ]

18:                                               ; preds = %15, %15
  %19 = or i16 %17, 3
  br label %33

20:                                               ; preds = %15
  %21 = or i16 %17, 1
  br label %33

22:                                               ; preds = %15
  %23 = or i16 %17, 2
  br label %33

24:                                               ; preds = %15
  %25 = add i32 %1, -7
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = or i16 %17, 4
  br label %33

29:                                               ; preds = %24
  %30 = icmp eq i32 %1, 10
  %31 = or i16 %17, 5
  %32 = select i1 %30, i16 %31, i16 %17
  br label %33

33:                                               ; preds = %29, %27, %22, %20, %18, %15
  %34 = phi i16 [ %19, %18 ], [ %21, %20 ], [ %23, %22 ], [ %28, %27 ], [ %17, %15 ], [ %32, %29 ]
  %35 = load ptr, ptr %3, align 4
  %36 = getelementptr inbounds %struct.sdhci_ops, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !8

39:                                               ; preds = %33
  tail call void %37(ptr noundef %0, i16 noundef zeroext %34, i32 noundef 62) #15
  br label %44

40:                                               ; preds = %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 16
  %43 = getelementptr i8, ptr %42, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %34) #15, !srcloc !16
  br label %44

44:                                               ; preds = %40, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_set_ios(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %393, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ule ptr %14, inttoptr (i32 -4096 to ptr)
  %16 = icmp eq i8 %5, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %393

18:                                               ; preds = %12
  %19 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %14, i16 noundef zeroext 0) #15
  br label %393

20:                                               ; preds = %7
  %21 = icmp eq i8 %5, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !8

28:                                               ; preds = %22
  tail call void %26(ptr noundef %3, i32 noundef 0, i32 noundef 56) #15
  br label %33

29:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #15, !srcloc !25
  br label %33

33:                                               ; preds = %29, %28
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 3
  %35 = load i32, ptr %34, align 64
  tail call fastcc void @sdhci_init(ptr noundef %3, i32 noundef 0) #15
  tail call fastcc void @sdhci_set_card_detection(ptr noundef %3, i1 noundef zeroext true) #15
  %36 = load i32, ptr %34, align 64
  %37 = xor i32 %36, %35
  %38 = and i32 %37, 192
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %42 = load ptr, ptr %41, align 8
  tail call void @mmc_detect_change(ptr noundef %42, i32 noundef 20) #15
  br label %43

43:                                               ; preds = %40, %33, %20
  %44 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 18
  %45 = load i32, ptr %44, align 64
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load i8, ptr %4, align 2
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 26
  %57 = load i8, ptr %56, align 1, !range !19
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %87, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.sdhci_ops, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65, !prof !8

65:                                               ; preds = %59
  %66 = tail call zeroext i16 %63(ptr noundef %3, i32 noundef 62) #15
  br label %72

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %69 = load ptr, ptr %68, align 16
  %70 = getelementptr i8, ptr %69, i32 62
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %70) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %72

72:                                               ; preds = %67, %65
  %73 = phi i16 [ %66, %65 ], [ %71, %67 ]
  %74 = and i16 %73, 32767
  %75 = load ptr, ptr %60, align 4
  %76 = getelementptr inbounds %struct.sdhci_ops, ptr %75, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79, !prof !8

79:                                               ; preds = %72
  tail call void %77(ptr noundef %3, i16 noundef zeroext %74, i32 noundef 62) #15
  br label %84

80:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %81 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %82 = load ptr, ptr %81, align 16
  %83 = getelementptr i8, ptr %82, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 %74) #15, !srcloc !16
  br label %84

84:                                               ; preds = %80, %79
  %85 = load i32, ptr %8, align 4
  %86 = and i32 %85, -257
  store i32 %86, ptr %8, align 4
  store i8 0, ptr %56, align 1
  br label %87

87:                                               ; preds = %84, %55, %50, %47, %43
  %88 = load i32, ptr %1, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 21, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %88, %92
  br i1 %93, label %126, label %94

94:                                               ; preds = %90, %87
  %95 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.sdhci_ops, ptr %96, i32 0, i32 6
  %98 = load ptr, ptr %97, align 4
  tail call void %98(ptr noundef %3, i32 noundef %88) #15
  %99 = load i32, ptr %1, align 4
  %100 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 21, i32 1
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 16777216
  %104 = icmp eq i32 %103, 0
  %105 = icmp eq i32 %99, 0
  %106 = select i1 %104, i1 true, i1 %105
  br i1 %106, label %126, label %107

107:                                              ; preds = %94
  %108 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 57
  %109 = load i32, ptr %108, align 4
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 %99, i32 %109
  %112 = udiv i32 %111, 1000
  %113 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 19
  store i32 %112, ptr %113, align 8
  %114 = load ptr, ptr %95, align 4
  %115 = getelementptr inbounds %struct.sdhci_ops, ptr %114, i32 0, i32 14
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %107
  %119 = tail call i32 %116(ptr noundef %3) #15
  %120 = load i32, ptr %113, align 8
  br label %121

121:                                              ; preds = %118, %107
  %122 = phi i32 [ %120, %118 ], [ %112, %107 ]
  %123 = phi i32 [ %119, %118 ], [ 134217728, %107 ]
  %124 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 26
  %125 = udiv i32 %123, %122
  store i32 %125, ptr %124, align 4
  br label %126

126:                                              ; preds = %121, %94, %90
  %127 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.sdhci_ops, ptr %128, i32 0, i32 7
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  %132 = load i8, ptr %4, align 2
  %133 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %134 = load i16, ptr %133, align 4
  br i1 %131, label %136, label %135

135:                                              ; preds = %126
  tail call void %130(ptr noundef %3, i8 noundef zeroext %132, i16 noundef zeroext %134) #15
  br label %137

136:                                              ; preds = %126
  tail call void @sdhci_set_power(ptr noundef %3, i8 noundef zeroext %132, i16 noundef zeroext %134)
  br label %137

137:                                              ; preds = %136, %135
  %138 = load ptr, ptr %127, align 4
  %139 = getelementptr inbounds %struct.sdhci_ops, ptr %138, i32 0, i32 17
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load i8, ptr %4, align 2
  tail call void %140(ptr noundef %3, i8 noundef zeroext %143) #15
  %144 = load ptr, ptr %127, align 4
  br label %145

145:                                              ; preds = %142, %137
  %146 = phi ptr [ %144, %142 ], [ %138, %137 ]
  %147 = getelementptr inbounds %struct.sdhci_ops, ptr %146, i32 0, i32 16
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %150 = load i8, ptr %149, align 1
  %151 = zext i8 %150 to i32
  tail call void %148(ptr noundef %3, i32 noundef %151) #15
  %152 = load ptr, ptr %127, align 4
  %153 = getelementptr inbounds %struct.sdhci_ops, ptr %152, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %158, label %156, !prof !8

156:                                              ; preds = %145
  %157 = tail call zeroext i8 %154(ptr noundef %3, i32 noundef 40) #15
  br label %163

158:                                              ; preds = %145
  %159 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %160 = load ptr, ptr %159, align 16
  %161 = getelementptr i8, ptr %160, i32 40
  %162 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %161) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %163

163:                                              ; preds = %158, %156
  %164 = phi i8 [ %157, %156 ], [ %162, %158 ]
  %165 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = and i32 %166, 536870912
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %171 = load i8, ptr %170, align 4
  switch i8 %171, label %174 [
    i8 2, label %172
    i8 1, label %172
    i8 10, label %172
    i8 9, label %172
    i8 8, label %172
    i8 5, label %172
    i8 6, label %172
    i8 7, label %172
    i8 4, label %172
  ]

172:                                              ; preds = %169, %169, %169, %169, %169, %169, %169, %169, %169
  %173 = or i8 %164, 4
  br label %176

174:                                              ; preds = %169
  %175 = and i8 %164, -5
  br label %176

176:                                              ; preds = %174, %172, %163
  %177 = phi i8 [ %164, %163 ], [ %173, %172 ], [ %175, %174 ]
  %178 = load i32, ptr %44, align 64
  %179 = icmp ugt i32 %178, 1
  br i1 %179, label %180, label %363

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 26
  %182 = load i8, ptr %181, align 1, !range !19
  %183 = icmp eq i8 %182, 0
  %184 = load ptr, ptr %127, align 4
  br i1 %183, label %185, label %238

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.sdhci_ops, ptr %184, i32 0, i32 5
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189, !prof !8

189:                                              ; preds = %185
  tail call void %187(ptr noundef %3, i8 noundef zeroext %177, i32 noundef 40) #15
  br label %194

190:                                              ; preds = %185
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %191 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %192 = load ptr, ptr %191, align 16
  %193 = getelementptr i8, ptr %192, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %193, i8 %177) #15, !srcloc !18
  br label %194

194:                                              ; preds = %190, %189
  %195 = load ptr, ptr %127, align 4
  %196 = getelementptr inbounds %struct.sdhci_ops, ptr %195, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %201, label %199, !prof !8

199:                                              ; preds = %194
  %200 = tail call zeroext i16 %197(ptr noundef %3, i32 noundef 62) #15
  br label %206

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %203 = load ptr, ptr %202, align 16
  %204 = getelementptr i8, ptr %203, i32 62
  %205 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %204) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %206

206:                                              ; preds = %201, %199
  %207 = phi i16 [ %200, %199 ], [ %205, %201 ]
  %208 = and i16 %207, -49
  %209 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 9
  %210 = load i8, ptr %209, align 2
  switch i8 %210, label %217 [
    i8 1, label %211
    i8 0, label %227
    i8 2, label %213
    i8 3, label %215
  ]

211:                                              ; preds = %206
  %212 = or i16 %208, 16
  br label %227

213:                                              ; preds = %206
  %214 = or i16 %208, 32
  br label %227

215:                                              ; preds = %206
  %216 = or i16 %207, 48
  br label %227

217:                                              ; preds = %206
  %218 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %223 = load ptr, ptr %222, align 4
  br label %224

224:                                              ; preds = %221, %217
  %225 = phi ptr [ %223, %221 ], [ %219, %217 ]
  %226 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %225) #14
  br label %227

227:                                              ; preds = %224, %215, %213, %211, %206
  %228 = phi i16 [ %212, %211 ], [ %214, %213 ], [ %216, %215 ], [ %208, %224 ], [ %208, %206 ]
  %229 = load ptr, ptr %127, align 4
  %230 = getelementptr inbounds %struct.sdhci_ops, ptr %229, i32 0, i32 4
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233, !prof !8

233:                                              ; preds = %227
  tail call void %231(ptr noundef %3, i16 noundef zeroext %228, i32 noundef 62) #15
  br label %277

234:                                              ; preds = %227
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %235 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %236 = load ptr, ptr %235, align 16
  %237 = getelementptr i8, ptr %236, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %237, i16 %228) #15, !srcloc !16
  br label %277

238:                                              ; preds = %180
  %239 = getelementptr inbounds %struct.sdhci_ops, ptr %184, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242, !prof !8

242:                                              ; preds = %238
  %243 = tail call zeroext i16 %240(ptr noundef %3, i32 noundef 44) #15
  br label %249

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %246 = load ptr, ptr %245, align 16
  %247 = getelementptr i8, ptr %246, i32 44
  %248 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %247) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %249

249:                                              ; preds = %244, %242
  %250 = phi i16 [ %243, %242 ], [ %248, %244 ]
  %251 = and i16 %250, -5
  %252 = load ptr, ptr %127, align 4
  %253 = getelementptr inbounds %struct.sdhci_ops, ptr %252, i32 0, i32 4
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %257, label %256, !prof !8

256:                                              ; preds = %249
  tail call void %254(ptr noundef %3, i16 noundef zeroext %251, i32 noundef 44) #15
  br label %261

257:                                              ; preds = %249
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %258 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %259 = load ptr, ptr %258, align 16
  %260 = getelementptr i8, ptr %259, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %260, i16 %251) #15, !srcloc !16
  br label %261

261:                                              ; preds = %257, %256
  %262 = load ptr, ptr %127, align 4
  %263 = getelementptr inbounds %struct.sdhci_ops, ptr %262, i32 0, i32 5
  %264 = load ptr, ptr %263, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %267, label %266, !prof !8

266:                                              ; preds = %261
  tail call void %264(ptr noundef %3, i8 noundef zeroext %177, i32 noundef 40) #15
  br label %271

267:                                              ; preds = %261
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %268 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %269 = load ptr, ptr %268, align 16
  %270 = getelementptr i8, ptr %269, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %270, i8 %177) #15, !srcloc !18
  br label %271

271:                                              ; preds = %267, %266
  %272 = load ptr, ptr %127, align 4
  %273 = getelementptr inbounds %struct.sdhci_ops, ptr %272, i32 0, i32 6
  %274 = load ptr, ptr %273, align 4
  %275 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 21, i32 1
  %276 = load i32, ptr %275, align 4
  tail call void %274(ptr noundef %3, i32 noundef %276) #15
  br label %277

277:                                              ; preds = %271, %234, %233
  %278 = load ptr, ptr %127, align 4
  %279 = getelementptr inbounds %struct.sdhci_ops, ptr %278, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282, !prof !8

282:                                              ; preds = %277
  %283 = tail call zeroext i16 %280(ptr noundef %3, i32 noundef 44) #15
  br label %289

284:                                              ; preds = %277
  %285 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %286 = load ptr, ptr %285, align 16
  %287 = getelementptr i8, ptr %286, i32 44
  %288 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %287) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %289

289:                                              ; preds = %284, %282
  %290 = phi i16 [ %283, %282 ], [ %288, %284 ]
  %291 = and i16 %290, -5
  %292 = load ptr, ptr %127, align 4
  %293 = getelementptr inbounds %struct.sdhci_ops, ptr %292, i32 0, i32 4
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %297, label %296, !prof !8

296:                                              ; preds = %289
  tail call void %294(ptr noundef %3, i16 noundef zeroext %291, i32 noundef 44) #15
  br label %301

297:                                              ; preds = %289
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %298 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %299 = load ptr, ptr %298, align 16
  %300 = getelementptr i8, ptr %299, i32 44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %300, i16 %291) #15, !srcloc !16
  br label %301

301:                                              ; preds = %297, %296
  %302 = load ptr, ptr %127, align 4
  %303 = getelementptr inbounds %struct.sdhci_ops, ptr %302, i32 0, i32 21
  %304 = load ptr, ptr %303, align 4
  %305 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %306 = load i8, ptr %305, align 4
  %307 = zext i8 %306 to i32
  tail call void %304(ptr noundef %3, i32 noundef %307) #15
  %308 = load i8, ptr %305, align 4
  %309 = zext i8 %308 to i32
  %310 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 1
  store i32 %309, ptr %310, align 8
  %311 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1
  %312 = load i32, ptr %311, align 8
  %313 = and i32 %312, 8
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %357

315:                                              ; preds = %301
  %316 = load i8, ptr %305, align 4
  %317 = add i8 %316, -3
  %318 = icmp ult i8 %317, 6
  br i1 %318, label %319, label %357

319:                                              ; preds = %315
  %320 = load i32, ptr %44, align 64
  %321 = icmp ult i32 %320, 2
  br i1 %321, label %352, label %322

322:                                              ; preds = %319
  %323 = load i8, ptr %181, align 1, !range !19
  %324 = icmp eq i8 %323, 1
  br i1 %324, label %352, label %325

325:                                              ; preds = %322
  %326 = load ptr, ptr %127, align 4
  %327 = getelementptr inbounds %struct.sdhci_ops, ptr %326, i32 0, i32 1
  %328 = load ptr, ptr %327, align 4
  %329 = icmp eq ptr %328, null
  br i1 %329, label %332, label %330, !prof !8

330:                                              ; preds = %325
  %331 = tail call zeroext i16 %328(ptr noundef %3, i32 noundef 62) #15
  br label %337

332:                                              ; preds = %325
  %333 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %334 = load ptr, ptr %333, align 16
  %335 = getelementptr i8, ptr %334, i32 62
  %336 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %335) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %337

337:                                              ; preds = %332, %330
  %338 = phi i16 [ %331, %330 ], [ %336, %332 ]
  %339 = or i16 %338, -32768
  %340 = load ptr, ptr %127, align 4
  %341 = getelementptr inbounds %struct.sdhci_ops, ptr %340, i32 0, i32 4
  %342 = load ptr, ptr %341, align 4
  %343 = icmp eq ptr %342, null
  br i1 %343, label %345, label %344, !prof !8

344:                                              ; preds = %337
  tail call void %342(ptr noundef %3, i16 noundef zeroext %339, i32 noundef 62) #15
  br label %349

345:                                              ; preds = %337
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %346 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %347 = load ptr, ptr %346, align 16
  %348 = getelementptr i8, ptr %347, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %348, i16 %339) #15, !srcloc !16
  br label %349

349:                                              ; preds = %345, %344
  %350 = load i32, ptr %8, align 4
  %351 = or i32 %350, 256
  store i32 %351, ptr %8, align 4
  store i8 1, ptr %181, align 1
  br label %352

352:                                              ; preds = %349, %322, %319
  %353 = tail call fastcc zeroext i16 @sdhci_get_preset_value(ptr noundef %3)
  %354 = lshr i16 %353, 14
  %355 = trunc i16 %354 to i8
  %356 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 9
  store i8 %355, ptr %356, align 2
  br label %357

357:                                              ; preds = %352, %315, %301
  %358 = load ptr, ptr %127, align 4
  %359 = getelementptr inbounds %struct.sdhci_ops, ptr %358, i32 0, i32 6
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 21, i32 1
  %362 = load i32, ptr %361, align 4
  tail call void %360(ptr noundef %3, i32 noundef %362) #15
  br label %373

363:                                              ; preds = %176
  %364 = load ptr, ptr %127, align 4
  %365 = getelementptr inbounds %struct.sdhci_ops, ptr %364, i32 0, i32 5
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %369, label %368, !prof !8

368:                                              ; preds = %363
  tail call void %366(ptr noundef %3, i8 noundef zeroext %177, i32 noundef 40) #15
  br label %373

369:                                              ; preds = %363
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %370 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %371 = load ptr, ptr %370, align 16
  %372 = getelementptr i8, ptr %371, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %372, i8 %177) #15, !srcloc !18
  br label %373

373:                                              ; preds = %369, %368, %357
  %374 = load i32, ptr %165, align 4
  %375 = and i32 %374, 16
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %393, label %377

377:                                              ; preds = %373
  %378 = and i32 %374, 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %389, label %380

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %382 = load ptr, ptr %381, align 8
  %383 = getelementptr inbounds %struct.mmc_host, ptr %382, i32 0, i32 3
  %384 = load ptr, ptr %383, align 4
  %385 = getelementptr inbounds %struct.mmc_host_ops, ptr %384, i32 0, i32 6
  %386 = load ptr, ptr %385, align 4
  %387 = tail call i32 %386(ptr noundef %382) #15
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %393, label %389

389:                                              ; preds = %380, %377
  %390 = load ptr, ptr %127, align 4
  %391 = getelementptr inbounds %struct.sdhci_ops, ptr %390, i32 0, i32 19
  %392 = load ptr, ptr %391, align 4
  tail call void %392(ptr noundef %3, i8 noundef zeroext 6) #15
  br label %393

393:                                              ; preds = %389, %380, %373, %18, %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_get_cd_nogpio(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !8

14:                                               ; preds = %9
  %15 = tail call i32 %12(ptr noundef %2, i32 noundef 36) #15
  br label %21

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 16
  %19 = getelementptr i8, ptr %18, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %16 ]
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 1
  br label %25

25:                                               ; preds = %21, %1
  %26 = phi i32 [ 0, %1 ], [ %24, %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_enable_sdio_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #15, !srcloc !21
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #15, !srcloc !27
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #15
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 3
  %17 = load i32, ptr %16, align 64
  %18 = or i32 %17, 256
  store i32 %18, ptr %16, align 64
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sdhci_ops, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %15
  tail call void %22(ptr noundef %3, i32 noundef %18, i32 noundef 52) #15
  br label %29

25:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 16
  %28 = getelementptr i8, ptr %27, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %18) #15, !srcloc !25
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i32, ptr %16, align 64
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr inbounds %struct.sdhci_ops, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !8

35:                                               ; preds = %29
  tail call void %33(ptr noundef %3, i32 noundef %30, i32 noundef 56) #15
  br label %40

36:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %37 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 16
  %39 = getelementptr i8, ptr %38, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %30) #15, !srcloc !25
  br label %40

40:                                               ; preds = %36, %35, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #15
  br label %80

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #15
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 3
  %50 = load i32, ptr %49, align 64
  %51 = and i32 %50, -257
  store i32 %51, ptr %49, align 64
  %52 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.sdhci_ops, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !8

57:                                               ; preds = %48
  tail call void %55(ptr noundef %3, i32 noundef %51, i32 noundef 52) #15
  br label %62

58:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %59 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %60 = load ptr, ptr %59, align 16
  %61 = getelementptr i8, ptr %60, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %51) #15, !srcloc !25
  br label %62

62:                                               ; preds = %58, %57
  %63 = load i32, ptr %49, align 64
  %64 = load ptr, ptr %52, align 4
  %65 = getelementptr inbounds %struct.sdhci_ops, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !8

68:                                               ; preds = %62
  tail call void %66(ptr noundef %3, i32 noundef %63, i32 noundef 56) #15
  br label %73

69:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %70 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %71 = load ptr, ptr %70, align 16
  %72 = getelementptr i8, ptr %71, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %63) #15, !srcloc !25
  br label %73

73:                                               ; preds = %69, %68, %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #15
  %74 = load ptr, ptr %0, align 64
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !20
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %75) #15, !srcloc !21
  %76 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %75, ptr %75, i32 0, i32 -1, ptr elementtype(i32) %75) #15, !srcloc !22
  %77 = extractvalue { i32, i32, i32 } %76, 0
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !23
  br label %80

80:                                               ; preds = %79, %73, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_start_signal_voltage_switch(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 18
  %5 = load i32, ptr %4, align 64
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %171, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdhci_ops, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !8

13:                                               ; preds = %7
  %14 = tail call zeroext i16 %11(ptr noundef %3, i32 noundef 62) #15
  br label %20

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 62
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i16 [ %14, %13 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 8
  %23 = load i8, ptr %22, align 1
  switch i8 %23, label %171 [
    i8 0, label %24
    i8 1, label %83
    i8 2, label %149
  ]

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 16384
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %171, label %29

29:                                               ; preds = %24
  %30 = and i16 %21, -9
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr inbounds %struct.sdhci_ops, ptr %31, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !8

35:                                               ; preds = %29
  tail call void %33(ptr noundef %3, i16 noundef zeroext %30, i32 noundef 62) #15
  br label %40

36:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %37 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 16
  %39 = getelementptr i8, ptr %38, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 %30) #15, !srcloc !16
  br label %40

40:                                               ; preds = %36, %35
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %0, ptr noundef %1) #15
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi ptr [ %53, %51 ], [ %49, %47 ]
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %55) #14
  br label %171

57:                                               ; preds = %44, %40
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #15
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr inbounds %struct.sdhci_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !8

62:                                               ; preds = %57
  %63 = tail call zeroext i16 %60(ptr noundef %3, i32 noundef 62) #15
  br label %69

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %66 = load ptr, ptr %65, align 16
  %67 = getelementptr i8, ptr %66, i32 62
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %69

69:                                               ; preds = %64, %62
  %70 = phi i16 [ %63, %62 ], [ %68, %64 ]
  %71 = and i16 %70, 8
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %171, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi ptr [ %79, %77 ], [ %75, %73 ]
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %81) #14
  br label %171

83:                                               ; preds = %20
  %84 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 32768
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %171, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  br i1 %91, label %105, label %92

92:                                               ; preds = %88
  %93 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %0, ptr noundef %1) #15
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi ptr [ %101, %99 ], [ %97, %95 ]
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %103) #14
  br label %171

105:                                              ; preds = %92, %88
  %106 = or i16 %21, 8
  %107 = load ptr, ptr %8, align 4
  %108 = getelementptr inbounds %struct.sdhci_ops, ptr %107, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111, !prof !8

111:                                              ; preds = %105
  tail call void %109(ptr noundef %3, i16 noundef zeroext %106, i32 noundef 62) #15
  br label %116

112:                                              ; preds = %105
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %113 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %114 = load ptr, ptr %113, align 16
  %115 = getelementptr i8, ptr %114, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %115, i16 %106) #15, !srcloc !16
  br label %116

116:                                              ; preds = %112, %111
  %117 = load ptr, ptr %8, align 4
  %118 = getelementptr inbounds %struct.sdhci_ops, ptr %117, i32 0, i32 25
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  tail call void %119(ptr noundef %3) #15
  %122 = load ptr, ptr %8, align 4
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi ptr [ %122, %121 ], [ %117, %116 ]
  %125 = getelementptr inbounds %struct.sdhci_ops, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128, !prof !8

128:                                              ; preds = %123
  %129 = tail call zeroext i16 %126(ptr noundef %3, i32 noundef 62) #15
  br label %135

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %132 = load ptr, ptr %131, align 16
  %133 = getelementptr i8, ptr %132, i32 62
  %134 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %133) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %135

135:                                              ; preds = %130, %128
  %136 = phi i16 [ %129, %128 ], [ %134, %130 ]
  %137 = and i16 %136, 8
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %171

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  br label %146

146:                                              ; preds = %143, %139
  %147 = phi ptr [ %145, %143 ], [ %141, %139 ]
  %148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %147) #14
  br label %171

149:                                              ; preds = %20
  %150 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 65536
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %171, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %157, label %171, label %158

158:                                              ; preds = %154
  %159 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %0, ptr noundef %1) #15
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  br label %168

168:                                              ; preds = %165, %161
  %169 = phi ptr [ %167, %165 ], [ %163, %161 ]
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %169) #14
  br label %171

171:                                              ; preds = %168, %158, %154, %149, %146, %135, %102, %83, %80, %69, %54, %24, %20, %2
  %172 = phi i32 [ -5, %168 ], [ -11, %146 ], [ -5, %102 ], [ -11, %80 ], [ -5, %54 ], [ 0, %2 ], [ -22, %24 ], [ 0, %69 ], [ -22, %83 ], [ 0, %135 ], [ -22, %149 ], [ 0, %158 ], [ 0, %154 ], [ 0, %20 ]
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_start_tuning(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdhci_ops, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %1
  %8 = tail call zeroext i16 %5(ptr noundef %0, i32 noundef 62) #15
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 62
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i16 [ %8, %7 ], [ %13, %9 ]
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 4096
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i16 64, i16 192
  %21 = or i16 %20, %15
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.sdhci_ops, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !8

26:                                               ; preds = %14
  tail call void %24(ptr noundef %0, i16 noundef zeroext %21, i32 noundef 62) #15
  br label %31

27:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 16
  %30 = getelementptr i8, ptr %29, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %21) #15, !srcloc !16
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !8

36:                                               ; preds = %31
  tail call void %34(ptr noundef %0, i32 noundef 32, i32 noundef 52) #15
  br label %41

37:                                               ; preds = %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %38 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr i8, ptr %39, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 32) #15, !srcloc !25
  br label %41

41:                                               ; preds = %37, %36
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr inbounds %struct.sdhci_ops, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !8

46:                                               ; preds = %41
  tail call void %44(ptr noundef %0, i32 noundef 32, i32 noundef 56) #15
  br label %51

47:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 16
  %50 = getelementptr i8, ptr %49, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 32) #15, !srcloc !25
  br label %51

51:                                               ; preds = %47, %46
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_end_tuning(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %3 = load i32, ptr %2, align 64
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdhci_ops, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %1
  tail call void %7(ptr noundef %0, i32 noundef %3, i32 noundef 52) #15
  br label %14

10:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %3) #15, !srcloc !25
  br label %14

14:                                               ; preds = %10, %9
  %15 = load i32, ptr %2, align 64
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr inbounds %struct.sdhci_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !8

20:                                               ; preds = %14
  tail call void %18(ptr noundef %0, i32 noundef %15, i32 noundef 56) #15
  br label %25

21:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 16
  %24 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %15) #15, !srcloc !25
  br label %25

25:                                               ; preds = %21, %20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_reset_tuning(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sdhci_ops, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !8

7:                                                ; preds = %1
  %8 = tail call zeroext i16 %5(ptr noundef %0, i32 noundef 62) #15
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 62
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i16 [ %8, %7 ], [ %13, %9 ]
  %16 = and i16 %15, -193
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.sdhci_ops, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21, !prof !8

21:                                               ; preds = %14
  tail call void %19(ptr noundef %0, i16 noundef zeroext %16, i32 noundef 62) #15
  br label %26

22:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 16
  %25 = getelementptr i8, ptr %24, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %16) #15, !srcloc !16
  br label %26

26:                                               ; preds = %22, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_abort_tuning(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %2
  %9 = tail call zeroext i16 %6(ptr noundef %0, i32 noundef 62) #15
  br label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 16
  %13 = getelementptr i8, ptr %12, i32 62
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i16 [ %9, %8 ], [ %14, %10 ]
  %17 = and i16 %16, -193
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !8

22:                                               ; preds = %15
  tail call void %20(ptr noundef %0, i16 noundef zeroext %17, i32 noundef 62) #15
  br label %27

23:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 16
  %26 = getelementptr i8, ptr %25, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 %17) #15, !srcloc !16
  br label %27

27:                                               ; preds = %23, %22
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.mmc_host, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.mmc_host_ops, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %34) #15
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %32, %27
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.sdhci_ops, ptr %42, i32 0, i32 19
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %0, i8 noundef zeroext 2) #15
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, ptr %28, align 4
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.mmc_host, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_host_ops, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %51) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %49, %45
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr inbounds %struct.sdhci_ops, ptr %59, i32 0, i32 19
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %0, i8 noundef zeroext 4) #15
  br label %62

62:                                               ; preds = %58, %49
  %63 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %64 = load i32, ptr %63, align 64
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.sdhci_ops, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69, !prof !8

69:                                               ; preds = %62
  tail call void %67(ptr noundef %0, i32 noundef %64, i32 noundef 52) #15
  br label %74

70:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %71 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %72 = load ptr, ptr %71, align 16
  %73 = getelementptr i8, ptr %72, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %64) #15, !srcloc !25
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i32, ptr %63, align 64
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.sdhci_ops, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80, !prof !8

80:                                               ; preds = %74
  tail call void %78(ptr noundef %0, i32 noundef %75, i32 noundef 56) #15
  br label %85

81:                                               ; preds = %74
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %82 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %83 = load ptr, ptr %82, align 16
  %84 = getelementptr i8, ptr %83, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %75) #15, !srcloc !25
  br label %85

85:                                               ; preds = %81, %80
  %86 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %87 = load ptr, ptr %86, align 8
  %88 = tail call i32 @mmc_send_abort_tuning(ptr noundef %87, i32 noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_send_abort_tuning(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_send_tuning(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.mmc_command, align 4
  %4 = alloca %struct.mmc_request, align 4
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #15
  %8 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %8, i8 0, i32 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %4, i8 0, i32 68, i1 false)
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 77
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #15
  store i32 %1, ptr %3, align 4
  %13 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 3
  store i32 53, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mmc_command, ptr %3, i32 0, i32 8
  store ptr %4, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mmc_request, ptr %4, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  %16 = icmp eq i32 %1, 21
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 28, i32 6
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 3
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = trunc i32 %10 to i16
  %23 = shl i16 %22, 12
  %24 = and i16 %23, 28672
  %25 = or i16 %24, 128
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !8

31:                                               ; preds = %21
  call void %29(ptr noundef %0, i16 noundef zeroext %25, i32 noundef 4) #15
  br label %51

32:                                               ; preds = %21
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %34 = load ptr, ptr %33, align 16
  %35 = getelementptr i8, ptr %34, i32 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %25) #15, !srcloc !16
  br label %51

36:                                               ; preds = %17, %2
  %37 = trunc i32 %10 to i16
  %38 = shl i16 %37, 12
  %39 = and i16 %38, 28672
  %40 = or i16 %39, 64
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sdhci_ops, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !8

46:                                               ; preds = %36
  call void %44(ptr noundef %0, i16 noundef zeroext %40, i32 noundef 4) #15
  br label %51

47:                                               ; preds = %36
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 16
  %50 = getelementptr i8, ptr %49, i32 4
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %40) #15, !srcloc !16
  br label %51

51:                                               ; preds = %47, %46, %32, %31
  %52 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.sdhci_ops, ptr %53, i32 0, i32 4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57, !prof !8

57:                                               ; preds = %51
  call void %55(ptr noundef %0, i16 noundef zeroext 16, i32 noundef 12) #15
  br label %62

58:                                               ; preds = %51
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  %59 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %60 = load ptr, ptr %59, align 16
  %61 = getelementptr i8, ptr %60, i32 12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %61, i16 16) #15, !srcloc !16
  br label %62

62:                                               ; preds = %58, %57
  %63 = call fastcc zeroext i1 @sdhci_send_command_retry(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %12)
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #15
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 71
  store i32 0, ptr %65, align 4
  br label %105

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  store ptr null, ptr %67, align 4
  %68 = load ptr, ptr %15, align 4
  %69 = getelementptr inbounds %struct.mmc_command, ptr %68, i32 0, i32 7
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.mmc_command, ptr %68, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72, %66
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 53
  br label %81

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 52
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi ptr [ %80, %79 ], [ %78, %77 ]
  %83 = call i32 @del_timer(ptr noundef %82) #15
  %84 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 71
  store i32 0, ptr %84, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #15
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %105, label %87

87:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !32
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #15
  %88 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 70
  %89 = call i32 @prepare_to_wait_event(ptr noundef %88, ptr noundef nonnull %5, i32 noundef 2) #15
  %90 = load i32, ptr %84, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %104, label %92

92:                                               ; preds = %92, %87
  %93 = phi i32 [ %101, %92 ], [ 5, %87 ]
  %94 = call i32 @schedule_timeout(i32 noundef %93) #15
  %95 = call i32 @prepare_to_wait_event(ptr noundef %88, ptr noundef nonnull %5, i32 noundef 2) #15
  %96 = load i32, ptr %84, align 4
  %97 = icmp eq i32 %96, 1
  %98 = xor i1 %97, true
  %99 = icmp ne i32 %94, 0
  %100 = select i1 %98, i1 true, i1 %99
  %101 = select i1 %100, i32 %94, i32 1
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %97, i1 true, i1 %102
  br i1 %103, label %104, label %92

104:                                              ; preds = %92, %87
  call void @finish_wait(ptr noundef %88, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %105

105:                                              ; preds = %104, %81, %64
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_execute_tuning(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8192
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 41
  %13 = load i32, ptr %12, align 32
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 1
  %17 = load i32, ptr %16, align 8
  switch i32 %17, label %144 [
    i32 10, label %18
    i32 9, label %19
    i32 6, label %24
    i32 7, label %24
    i32 5, label %21
  ]

18:                                               ; preds = %14
  br label %144

19:                                               ; preds = %14
  %20 = select i1 %7, i32 %15, i32 0
  br label %24

21:                                               ; preds = %14
  %22 = and i32 %5, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %144, label %24

24:                                               ; preds = %21, %19, %14, %14
  %25 = phi i32 [ %15, %21 ], [ %15, %14 ], [ %15, %14 ], [ %20, %19 ]
  %26 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sdhci_ops, ptr %27, i32 0, i32 20
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = tail call i32 %29(ptr noundef %3, i32 noundef %1) #15
  br label %144

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 34
  store i32 %25, ptr %34, align 4
  %35 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42, i32 0, i32 1, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = icmp eq i32 %1, 19
  %40 = zext i1 %39 to i32
  store i32 %40, ptr %35, align 4
  br label %41

41:                                               ; preds = %38, %33
  tail call void @sdhci_start_tuning(ptr noundef %3)
  %42 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42, i32 0, i32 2
  %43 = load i32, ptr %42, align 16
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %84

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 40
  %47 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  br label %52

48:                                               ; preds = %76
  %49 = add nuw nsw i32 %53, 1
  %50 = load i32, ptr %42, align 16
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %84

52:                                               ; preds = %48, %45
  %53 = phi i32 [ 0, %45 ], [ %49, %48 ]
  tail call void @sdhci_send_tuning(ptr noundef %3, i32 noundef %1) #15
  %54 = load i32, ptr %46, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  tail call void @sdhci_abort_tuning(ptr noundef %3, i32 noundef %1) #15
  br label %119

57:                                               ; preds = %52
  %58 = load i32, ptr %35, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %60, %57
  %61 = phi i32 [ %62, %60 ], [ %58, %57 ]
  %62 = add i32 %61, -1
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #15
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %60

65:                                               ; preds = %60, %57
  %66 = load ptr, ptr %26, align 4
  %67 = getelementptr inbounds %struct.sdhci_ops, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70, !prof !8

70:                                               ; preds = %65
  %71 = tail call zeroext i16 %68(ptr noundef %3, i32 noundef 62) #15
  br label %76

72:                                               ; preds = %65
  %73 = load ptr, ptr %47, align 16
  %74 = getelementptr i8, ptr %73, i32 62
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %74) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi i16 [ %71, %70 ], [ %75, %72 ]
  %78 = zext i16 %77 to i32
  %79 = and i32 %78, 64
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %48

81:                                               ; preds = %76
  %82 = and i32 %78, 128
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %81, %48, %41
  %85 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.mmc_host, ptr %86, i32 0, i32 1, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.mmc_host, ptr %86, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = phi ptr [ %92, %90 ], [ %88, %84 ]
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %94) #14
  %96 = load ptr, ptr %26, align 4
  %97 = getelementptr inbounds %struct.sdhci_ops, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100, !prof !8

100:                                              ; preds = %93
  %101 = tail call zeroext i16 %98(ptr noundef %3, i32 noundef 62) #15
  br label %107

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %104 = load ptr, ptr %103, align 16
  %105 = getelementptr i8, ptr %104, i32 62
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %105) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i16 [ %101, %100 ], [ %106, %102 ]
  %109 = and i16 %108, -193
  %110 = load ptr, ptr %26, align 4
  %111 = getelementptr inbounds %struct.sdhci_ops, ptr %110, i32 0, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114, !prof !8

114:                                              ; preds = %107
  tail call void %112(ptr noundef %3, i16 noundef zeroext %109, i32 noundef 62) #15
  br label %119

115:                                              ; preds = %107
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %116 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %117 = load ptr, ptr %116, align 16
  %118 = getelementptr i8, ptr %117, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %118, i16 %109) #15, !srcloc !16
  br label %119

119:                                              ; preds = %115, %114, %81, %56
  %120 = phi i32 [ -11, %114 ], [ -11, %115 ], [ 0, %81 ], [ -110, %56 ]
  %121 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42, i32 0, i32 1
  store i32 %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 3
  %123 = load i32, ptr %122, align 64
  %124 = load ptr, ptr %26, align 4
  %125 = getelementptr inbounds %struct.sdhci_ops, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128, !prof !8

128:                                              ; preds = %119
  tail call void %126(ptr noundef %3, i32 noundef %123, i32 noundef 52) #15
  br label %133

129:                                              ; preds = %119
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %130 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %131 = load ptr, ptr %130, align 16
  %132 = getelementptr i8, ptr %131, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %123) #15, !srcloc !25
  br label %133

133:                                              ; preds = %129, %128
  %134 = load i32, ptr %122, align 64
  %135 = load ptr, ptr %26, align 4
  %136 = getelementptr inbounds %struct.sdhci_ops, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %139, !prof !8

139:                                              ; preds = %133
  tail call void %137(ptr noundef %3, i32 noundef %134, i32 noundef 56) #15
  br label %144

140:                                              ; preds = %133
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %141 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %142 = load ptr, ptr %141, align 16
  %143 = getelementptr i8, ptr %142, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %134) #15, !srcloc !25
  br label %144

144:                                              ; preds = %140, %139, %31, %21, %18, %14
  %145 = phi i32 [ 0, %14 ], [ %32, %31 ], [ 0, %21 ], [ -22, %18 ], [ 0, %139 ], [ 0, %140 ]
  %146 = load i32, ptr %4, align 4
  %147 = and i32 %146, -8193
  store i32 %147, ptr %4, align 4
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_suspend_host(ptr noundef %0) #0 {
  tail call fastcc void @sdhci_set_card_detection(ptr noundef %0, i1 noundef zeroext false) #15
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_retune_timer_stop(ptr noundef %3) #15
  %4 = load ptr, ptr %2, align 8
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %83, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %83, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 16
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 32768
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %4) #15
  br i1 %25, label %26, label %27

26:                                               ; preds = %24, %19, %14
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ 0, %26 ], [ 192, %24 ]
  %29 = phi i8 [ 0, %26 ], [ 6, %24 ]
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.mmc_host, ptr %30, i32 0, i32 51
  %32 = load i32, ptr %31, align 32
  %33 = and i32 %32, 2
  %34 = shl nuw nsw i32 %33, 7
  %35 = or i32 %34, %28
  %36 = lshr exact i32 %33, 1
  %37 = trunc i32 %36 to i8
  %38 = or i8 %29, %37
  %39 = icmp eq i32 %35, 0
  br i1 %39, label %83, label %40

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sdhci_ops, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %40
  %47 = tail call zeroext i8 %44(ptr noundef %0, i32 noundef 43) #15
  br label %53

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %50 = load ptr, ptr %49, align 16
  %51 = getelementptr i8, ptr %50, i32 43
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %51) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i8 [ %47, %46 ], [ %52, %48 ]
  %55 = and i8 %54, -8
  %56 = or i8 %38, %55
  %57 = load ptr, ptr %41, align 4
  %58 = getelementptr inbounds %struct.sdhci_ops, ptr %57, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61, !prof !8

61:                                               ; preds = %53
  tail call void %59(ptr noundef %0, i8 noundef zeroext %56, i32 noundef 43) #15
  br label %66

62:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %63 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %64 = load ptr, ptr %63, align 16
  %65 = getelementptr i8, ptr %64, i32 43
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %65, i8 %56) #15, !srcloc !18
  br label %66

66:                                               ; preds = %62, %61
  %67 = load ptr, ptr %41, align 4
  %68 = getelementptr inbounds %struct.sdhci_ops, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71, !prof !8

71:                                               ; preds = %66
  tail call void %69(ptr noundef %0, i32 noundef %35, i32 noundef 52) #15
  br label %76

72:                                               ; preds = %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %73 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %74 = load ptr, ptr %73, align 16
  %75 = getelementptr i8, ptr %74, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %35) #15, !srcloc !25
  br label %76

76:                                               ; preds = %72, %71
  %77 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = tail call i32 @irq_set_irq_wake(i32 noundef %78, i32 noundef 1) #15
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 28
  %82 = zext i1 %80 to i8
  store i8 %82, ptr %81, align 1
  br i1 %80, label %109, label %83

83:                                               ; preds = %76, %27, %10, %1
  %84 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  store i32 0, ptr %84, align 64
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.sdhci_ops, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90, !prof !8

90:                                               ; preds = %83
  tail call void %88(ptr noundef %0, i32 noundef 0, i32 noundef 52) #15
  br label %95

91:                                               ; preds = %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %92 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %93 = load ptr, ptr %92, align 16
  %94 = getelementptr i8, ptr %93, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 0) #15, !srcloc !25
  br label %95

95:                                               ; preds = %91, %90
  %96 = load ptr, ptr %85, align 4
  %97 = getelementptr inbounds %struct.sdhci_ops, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100, !prof !8

100:                                              ; preds = %95
  tail call void %98(ptr noundef %0, i32 noundef 0, i32 noundef 56) #15
  br label %105

101:                                              ; preds = %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %102 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %103 = load ptr, ptr %102, align 16
  %104 = getelementptr i8, ptr %103, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 0) #15, !srcloc !25
  br label %105

105:                                              ; preds = %101, %100
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = tail call ptr @free_irq(i32 noundef %107, ptr noundef %0) #15
  br label %109

109:                                              ; preds = %105, %76
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_timer_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_resume_host(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef %0) #15
  br label %16

16:                                               ; preds = %14, %8, %1
  %17 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 51
  %18 = load i32, ptr %17, align 32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  tail call fastcc void @sdhci_init(ptr noundef %0, i32 noundef 0)
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 23
  store i8 0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mmc_host_ops, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28
  tail call void %32(ptr noundef %3, ptr noundef %33) #15
  br label %35

34:                                               ; preds = %21, %16
  tail call fastcc void @sdhci_init(ptr noundef %0, i32 noundef %19)
  br label %35

35:                                               ; preds = %34, %26
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 28
  %37 = load i8, ptr %36, align 1, !range !19
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.sdhci_ops, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !8

45:                                               ; preds = %39
  %46 = tail call zeroext i8 %43(ptr noundef %0, i32 noundef 43) #15
  br label %52

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 16
  %50 = getelementptr i8, ptr %49, i32 43
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %50) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i8 [ %46, %45 ], [ %51, %47 ]
  %54 = and i8 %53, -8
  %55 = load ptr, ptr %40, align 4
  %56 = getelementptr inbounds %struct.sdhci_ops, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59, !prof !8

59:                                               ; preds = %52
  tail call void %57(ptr noundef %0, i8 noundef zeroext %54, i32 noundef 43) #15
  br label %64

60:                                               ; preds = %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %62 = load ptr, ptr %61, align 16
  %63 = getelementptr i8, ptr %62, i32 43
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 %54) #15, !srcloc !18
  br label %64

64:                                               ; preds = %60, %59
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @irq_set_irq_wake(i32 noundef %66, i32 noundef 0) #15
  store i8 0, ptr %36, align 1
  br label %81

68:                                               ; preds = %35
  %69 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi ptr [ %76, %74 ], [ %72, %68 ]
  %79 = tail call i32 @request_threaded_irq(i32 noundef %70, ptr noundef nonnull @sdhci_irq, ptr noundef nonnull @sdhci_thread_irq, i32 noundef 128, ptr noundef %78, ptr noundef %0) #15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %64
  tail call fastcc void @sdhci_set_card_detection(ptr noundef %0, i1 noundef zeroext true) #15
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ 0, %81 ], [ %79, %77 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %5, label %23, label %10

10:                                               ; preds = %2
  br i1 %9, label %18, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mmc_host_ops, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %4) #15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %11, %10
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sdhci_ops, ptr %20, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  tail call void %22(ptr noundef %0, i8 noundef zeroext 6) #15
  br label %49

23:                                               ; preds = %2
  br i1 %9, label %31, label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mmc_host_ops, ptr %26, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %4) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %24, %23
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.sdhci_ops, ptr %33, i32 0, i32 19
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %0, i8 noundef zeroext 1) #15
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %32, align 4
  %42 = getelementptr inbounds %struct.sdhci_ops, ptr %41, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = tail call i32 %43(ptr noundef %0) #15
  br label %47

47:                                               ; preds = %45, %40, %31
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 26
  store i8 0, ptr %48, align 1
  br label %49

49:                                               ; preds = %47, %24, %18, %11
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %51 = load i8, ptr %50, align 2, !range !19
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.sdhci_ops, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !8

59:                                               ; preds = %53
  %60 = tail call zeroext i16 %57(ptr noundef %0, i32 noundef 62) #15
  br label %66

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %63 = load ptr, ptr %62, align 16
  %64 = getelementptr i8, ptr %63, i32 62
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %64) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i16 [ %60, %59 ], [ %65, %61 ]
  %68 = and i16 %67, 4096
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %66
  %71 = or i16 %67, 4096
  %72 = load ptr, ptr %54, align 4
  %73 = getelementptr inbounds %struct.sdhci_ops, ptr %72, i32 0, i32 4
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76, !prof !8

76:                                               ; preds = %70
  tail call void %74(ptr noundef %0, i16 noundef zeroext %71, i32 noundef 62) #15
  br label %81

77:                                               ; preds = %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %79 = load ptr, ptr %78, align 16
  %80 = getelementptr i8, ptr %79, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %80, i16 %71) #15, !srcloc !16
  br label %81

81:                                               ; preds = %77, %76, %66, %49
  %82 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %82) #15
  %84 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 73
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, -1
  %88 = icmp ult i32 %87, 2
  %89 = select i1 %88, i32 16715779, i32 16711683
  store i32 %89, ptr %84, align 64
  %90 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sdhci_ops, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !8

95:                                               ; preds = %81
  tail call void %93(ptr noundef %0, i32 noundef %89, i32 noundef 52) #15
  br label %100

96:                                               ; preds = %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %97 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %98 = load ptr, ptr %97, align 16
  %99 = getelementptr i8, ptr %98, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %99, i32 %89) #15, !srcloc !25
  br label %100

100:                                              ; preds = %96, %95
  %101 = load i32, ptr %84, align 64
  %102 = load ptr, ptr %90, align 4
  %103 = getelementptr inbounds %struct.sdhci_ops, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %107, label %106, !prof !8

106:                                              ; preds = %100
  tail call void %104(ptr noundef %0, i32 noundef %101, i32 noundef 56) #15
  br label %111

107:                                              ; preds = %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %108 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %109 = load ptr, ptr %108, align 16
  %110 = getelementptr i8, ptr %109, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %101) #15, !srcloc !25
  br label %111

111:                                              ; preds = %107, %106
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %82, i32 noundef %83) #15
  %112 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 67
  store i8 0, ptr %112, align 4
  br i1 %5, label %120, label %113

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.mmc_host_ops, ptr %116, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28
  tail call void %118(ptr noundef %4, ptr noundef %119) #15
  br label %120

120:                                              ; preds = %113, %111
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 24
  %5 = load i8, ptr %4, align 1, !range !19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  %8 = load i16, ptr %3, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !36
  br label %861

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !8

15:                                               ; preds = %10
  %16 = tail call i32 %13(ptr noundef %1, i32 noundef 48) #15
  br label %22

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 16
  %20 = getelementptr i8, ptr %19, i32 48
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %16, %15 ], [ %21, %17 ]
  %24 = add i32 %23, 1
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %817, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 4
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 66
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 65
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 34
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 16
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 33
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 2
  %34 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 1
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 36
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 37
  %38 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 35
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 27
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 71
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 70
  %42 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 39
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 38
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 38, i32 2
  %45 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 38, i32 3
  %46 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 38, i32 1
  %47 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 6
  %48 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 7
  br label %49

49:                                               ; preds = %762, %26
  %50 = phi i32 [ %763, %762 ], [ %23, %26 ]
  %51 = phi i32 [ %749, %762 ], [ 0, %26 ]
  %52 = phi i32 [ %765, %762 ], [ 16, %26 ]
  %53 = phi i32 [ %752, %762 ], [ 0, %26 ]
  %54 = load ptr, ptr %11, align 4
  %55 = getelementptr inbounds %struct.sdhci_ops, ptr %54, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %49
  %59 = tail call i32 %56(ptr noundef %1, i32 noundef %50) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %748, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %11, align 4
  br label %63

63:                                               ; preds = %61, %49
  %64 = phi ptr [ %54, %49 ], [ %62, %61 ]
  %65 = phi i32 [ %50, %49 ], [ %59, %61 ]
  %66 = and i32 %65, 67043391
  %67 = getelementptr inbounds %struct.sdhci_ops, ptr %64, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70, !prof !8

70:                                               ; preds = %63
  tail call void %68(ptr noundef %1, i32 noundef %66, i32 noundef 48) #15
  br label %74

71:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %72 = load ptr, ptr %27, align 16
  %73 = getelementptr i8, ptr %72, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %66) #15, !srcloc !25
  br label %74

74:                                               ; preds = %71, %70
  %75 = and i32 %65, 192
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %125, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %11, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81, !prof !8

81:                                               ; preds = %77
  %82 = tail call i32 %79(ptr noundef %1, i32 noundef 36) #15
  br label %87

83:                                               ; preds = %77
  %84 = load ptr, ptr %27, align 16
  %85 = getelementptr i8, ptr %84, i32 36
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %87

87:                                               ; preds = %83, %81
  %88 = phi i32 [ %82, %81 ], [ %86, %83 ]
  %89 = and i32 %88, 65536
  %90 = load i32, ptr %28, align 64
  %91 = and i32 %90, -193
  %92 = icmp eq i32 %89, 0
  %93 = select i1 %92, i32 64, i32 128
  %94 = or i32 %93, %91
  store i32 %94, ptr %28, align 64
  %95 = load ptr, ptr %11, align 4
  %96 = getelementptr inbounds %struct.sdhci_ops, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99, !prof !8

99:                                               ; preds = %87
  tail call void %97(ptr noundef %1, i32 noundef %94, i32 noundef 52) #15
  br label %103

100:                                              ; preds = %87
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %101 = load ptr, ptr %27, align 16
  %102 = getelementptr i8, ptr %101, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %94) #15, !srcloc !25
  br label %103

103:                                              ; preds = %100, %99
  %104 = load i32, ptr %28, align 64
  %105 = load ptr, ptr %11, align 4
  %106 = getelementptr inbounds %struct.sdhci_ops, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109, !prof !8

109:                                              ; preds = %103
  tail call void %107(ptr noundef %1, i32 noundef %104, i32 noundef 56) #15
  br label %113

110:                                              ; preds = %103
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %111 = load ptr, ptr %27, align 16
  %112 = getelementptr i8, ptr %111, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %104) #15, !srcloc !25
  br label %113

113:                                              ; preds = %110, %109
  %114 = load ptr, ptr %11, align 4
  %115 = getelementptr inbounds %struct.sdhci_ops, ptr %114, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118, !prof !8

118:                                              ; preds = %113
  tail call void %116(ptr noundef %1, i32 noundef %75, i32 noundef 48) #15
  br label %122

119:                                              ; preds = %113
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %120 = load ptr, ptr %27, align 16
  %121 = getelementptr i8, ptr %120, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %75) #15, !srcloc !25
  br label %122

122:                                              ; preds = %119, %118
  %123 = load i32, ptr %29, align 4
  %124 = or i32 %123, %75
  store i32 %124, ptr %29, align 4
  br label %125

125:                                              ; preds = %122, %74
  %126 = phi i32 [ 2, %122 ], [ %53, %74 ]
  %127 = and i32 %65, 17760257
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %369, label %129

129:                                              ; preds = %125
  %130 = and i32 %65, 16777216
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %161, label %132

132:                                              ; preds = %129
  %133 = load ptr, ptr %30, align 16
  %134 = icmp eq ptr %133, null
  br i1 %134, label %161, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.mmc_command, ptr %133, i32 0, i32 8
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %11, align 4
  %139 = getelementptr inbounds %struct.sdhci_ops, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142, !prof !8

142:                                              ; preds = %135
  %143 = tail call zeroext i16 %140(ptr noundef %1, i32 noundef 60) #15
  br label %148

144:                                              ; preds = %135
  %145 = load ptr, ptr %27, align 16
  %146 = getelementptr i8, ptr %145, i32 60
  %147 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %146) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %148

148:                                              ; preds = %144, %142
  %149 = phi i16 [ %143, %142 ], [ %147, %144 ]
  %150 = and i16 %149, 2
  %151 = icmp eq i16 %150, 0
  %152 = select i1 %151, i32 2097152, i32 1048576
  %153 = load ptr, ptr %137, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load i32, ptr %31, align 4
  %157 = and i32 %156, 64
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %155
  %160 = or i32 %152, %65
  br label %369

161:                                              ; preds = %155, %148, %132, %129
  %162 = load ptr, ptr %32, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %178

164:                                              ; preds = %161
  %165 = load i8, ptr %39, align 4, !range !19
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %369

167:                                              ; preds = %164
  %168 = load ptr, ptr %34, align 8
  %169 = getelementptr inbounds %struct.mmc_host, ptr %168, i32 0, i32 1, i32 3
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.mmc_host, ptr %168, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = phi ptr [ %174, %172 ], [ %170, %167 ]
  %177 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %176, i32 noundef %127) #14
  tail call void @sdhci_dumpregs(ptr noundef %1) #15
  br label %369

178:                                              ; preds = %161
  %179 = and i32 %65, 983040
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %198, label %181

181:                                              ; preds = %178
  %182 = and i32 %65, 65536
  %183 = icmp eq i32 %182, 0
  %184 = select i1 %183, i32 -84, i32 -110
  %185 = getelementptr inbounds %struct.mmc_command, ptr %162, i32 0, i32 5
  store i32 %184, ptr %185, align 4
  %186 = load ptr, ptr %32, align 4
  %187 = getelementptr inbounds %struct.mmc_command, ptr %186, i32 0, i32 7
  %188 = load ptr, ptr %187, align 4
  %189 = icmp ne ptr %188, null
  %190 = and i32 %65, 196608
  %191 = icmp eq i32 %190, 131072
  %192 = and i1 %191, %189
  br i1 %192, label %193, label %195

193:                                              ; preds = %181
  store ptr null, ptr %32, align 4
  %194 = or i32 %65, 2097152
  br label %369

195:                                              ; preds = %181
  %196 = getelementptr inbounds %struct.mmc_command, ptr %186, i32 0, i32 8
  %197 = load ptr, ptr %196, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %1, ptr noundef %197) #15
  br label %369

198:                                              ; preds = %178
  br i1 %131, label %230, label %199

199:                                              ; preds = %198
  %200 = getelementptr inbounds %struct.mmc_command, ptr %162, i32 0, i32 8
  %201 = load ptr, ptr %200, align 4
  %202 = load ptr, ptr %11, align 4
  %203 = getelementptr inbounds %struct.sdhci_ops, ptr %202, i32 0, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %208, label %206, !prof !8

206:                                              ; preds = %199
  %207 = tail call zeroext i16 %204(ptr noundef %1, i32 noundef 60) #15
  br label %212

208:                                              ; preds = %199
  %209 = load ptr, ptr %27, align 16
  %210 = getelementptr i8, ptr %209, i32 60
  %211 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %210) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %212

212:                                              ; preds = %208, %206
  %213 = phi i16 [ %207, %206 ], [ %211, %208 ]
  %214 = load ptr, ptr %201, align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %225, label %216

216:                                              ; preds = %212
  %217 = load i32, ptr %31, align 4
  %218 = and i32 %217, 128
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %216
  %221 = and i16 %213, 2
  %222 = icmp eq i16 %221, 0
  %223 = select i1 %222, i32 -84, i32 -110
  %224 = getelementptr inbounds %struct.mmc_command, ptr %214, i32 0, i32 5
  store i32 %223, ptr %224, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %1, ptr noundef %201) #15
  br label %369

225:                                              ; preds = %216, %212
  %226 = and i32 %65, 1
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %369, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %32, align 4
  br label %233

230:                                              ; preds = %198
  %231 = and i32 %65, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %369, label %233

233:                                              ; preds = %230, %228
  %234 = phi ptr [ %229, %228 ], [ %162, %230 ]
  store ptr null, ptr %32, align 4
  %235 = getelementptr inbounds %struct.mmc_command, ptr %234, i32 0, i32 3
  %236 = load i32, ptr %235, align 4
  %237 = and i32 %236, 1
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %312, label %239

239:                                              ; preds = %233
  %240 = and i32 %236, 2
  %241 = icmp eq i32 %240, 0
  %242 = load ptr, ptr %11, align 4
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %241, label %302, label %245

245:                                              ; preds = %239
  br i1 %244, label %248, label %246, !prof !8

246:                                              ; preds = %245
  %247 = tail call i32 %243(ptr noundef %1, i32 noundef 28) #15
  br label %252

248:                                              ; preds = %245
  %249 = load ptr, ptr %27, align 16
  %250 = getelementptr i8, ptr %249, i32 28
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %250) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %252

252:                                              ; preds = %248, %246
  %253 = phi i32 [ %247, %246 ], [ %251, %248 ]
  %254 = getelementptr %struct.mmc_command, ptr %234, i32 0, i32 2, i32 0
  store i32 %253, ptr %254, align 4
  %255 = load ptr, ptr %11, align 4
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %260, label %258, !prof !8

258:                                              ; preds = %252
  %259 = tail call i32 %256(ptr noundef %1, i32 noundef 24) #15
  br label %264

260:                                              ; preds = %252
  %261 = load ptr, ptr %27, align 16
  %262 = getelementptr i8, ptr %261, i32 24
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %262) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %264

264:                                              ; preds = %260, %258
  %265 = phi i32 [ %259, %258 ], [ %263, %260 ]
  %266 = getelementptr %struct.mmc_command, ptr %234, i32 0, i32 2, i32 1
  store i32 %265, ptr %266, align 4
  %267 = load ptr, ptr %11, align 4
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %272, label %270, !prof !8

270:                                              ; preds = %264
  %271 = tail call i32 %268(ptr noundef %1, i32 noundef 20) #15
  br label %276

272:                                              ; preds = %264
  %273 = load ptr, ptr %27, align 16
  %274 = getelementptr i8, ptr %273, i32 20
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %274) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %276

276:                                              ; preds = %272, %270
  %277 = phi i32 [ %271, %270 ], [ %275, %272 ]
  %278 = getelementptr %struct.mmc_command, ptr %234, i32 0, i32 2, i32 2
  store i32 %277, ptr %278, align 4
  %279 = load ptr, ptr %11, align 4
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282, !prof !8

282:                                              ; preds = %276
  %283 = tail call i32 %280(ptr noundef %1, i32 noundef 16) #15
  br label %288

284:                                              ; preds = %276
  %285 = load ptr, ptr %27, align 16
  %286 = getelementptr i8, ptr %285, i32 16
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %286) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %288

288:                                              ; preds = %284, %282
  %289 = phi i32 [ %283, %282 ], [ %287, %284 ]
  %290 = getelementptr %struct.mmc_command, ptr %234, i32 0, i32 2, i32 3
  store i32 %289, ptr %290, align 4
  %291 = load i32, ptr %33, align 8
  %292 = and i32 %291, 65536
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %312

294:                                              ; preds = %288
  %295 = load i32, ptr %254, align 4
  %296 = load i32, ptr %266, align 4
  %297 = tail call i32 @llvm.fshl.i32(i32 %295, i32 %296, i32 8) #15
  store i32 %297, ptr %254, align 4
  %298 = load i32, ptr %278, align 4
  %299 = tail call i32 @llvm.fshl.i32(i32 %296, i32 %298, i32 8) #15
  store i32 %299, ptr %266, align 4
  %300 = tail call i32 @llvm.fshl.i32(i32 %298, i32 %289, i32 8) #15
  store i32 %300, ptr %278, align 4
  %301 = shl i32 %289, 8
  store i32 %301, ptr %290, align 4
  br label %312

302:                                              ; preds = %239
  br i1 %244, label %305, label %303, !prof !8

303:                                              ; preds = %302
  %304 = tail call i32 %243(ptr noundef %1, i32 noundef 16) #15
  br label %309

305:                                              ; preds = %302
  %306 = load ptr, ptr %27, align 16
  %307 = getelementptr i8, ptr %306, i32 16
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %307) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %309

309:                                              ; preds = %305, %303
  %310 = phi i32 [ %304, %303 ], [ %308, %305 ]
  %311 = getelementptr inbounds %struct.mmc_command, ptr %234, i32 0, i32 2
  store i32 %310, ptr %311, align 4
  br label %312

312:                                              ; preds = %309, %294, %288, %233
  %313 = getelementptr inbounds %struct.mmc_command, ptr %234, i32 0, i32 8
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.mmc_request, ptr %314, i32 0, i32 9
  %316 = load i8, ptr %315, align 4, !range !19
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %324, label %318

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.mmc_request, ptr %314, i32 0, i32 1
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %234, %320
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = load ptr, ptr %34, align 8
  tail call void @mmc_command_done(ptr noundef %323, ptr noundef %314) #15
  br label %324

324:                                              ; preds = %322, %318, %312
  %325 = load i32, ptr %235, align 4
  %326 = and i32 %325, 8
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %339, label %328

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.mmc_command, ptr %234, i32 0, i32 7
  %330 = load ptr, ptr %329, align 4
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %339

332:                                              ; preds = %328
  %333 = load i32, ptr %35, align 4
  %334 = and i32 %333, 16384
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %332
  %337 = load ptr, ptr %30, align 16
  %338 = icmp eq ptr %234, %337
  br i1 %338, label %369, label %339

339:                                              ; preds = %336, %332, %328, %324
  %340 = load ptr, ptr %313, align 4
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %234, %341
  br i1 %342, label %343, label %355

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.mmc_request, ptr %340, i32 0, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = tail call fastcc zeroext i1 @sdhci_send_command(ptr noundef %1, ptr noundef %345) #15
  br i1 %346, label %369, label %347

347:                                              ; preds = %343
  %348 = load ptr, ptr %38, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %351, label %350, !prof !8

350:                                              ; preds = %347
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1806, i32 noundef 9, ptr noundef null) #15
  br label %351

351:                                              ; preds = %350, %347
  %352 = load ptr, ptr %313, align 4
  %353 = getelementptr inbounds %struct.mmc_request, ptr %352, i32 0, i32 1
  %354 = load ptr, ptr %353, align 4
  store ptr %354, ptr %38, align 4
  br label %369

355:                                              ; preds = %339
  %356 = load ptr, ptr %36, align 8
  %357 = icmp eq ptr %356, null
  br i1 %357, label %363, label %358

358:                                              ; preds = %355
  %359 = load i8, ptr %37, align 4
  %360 = and i8 %359, 1
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %358
  tail call fastcc void @__sdhci_finish_data(ptr noundef %1, i1 noundef zeroext false) #15
  br label %363

363:                                              ; preds = %362, %358, %355
  %364 = getelementptr inbounds %struct.mmc_command, ptr %234, i32 0, i32 7
  %365 = load ptr, ptr %364, align 4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %369

367:                                              ; preds = %363
  %368 = load ptr, ptr %313, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %1, ptr noundef %368) #15
  br label %369

369:                                              ; preds = %367, %363, %351, %343, %336, %230, %225, %220, %195, %193, %175, %164, %159, %125
  %370 = phi i32 [ %65, %125 ], [ %65, %175 ], [ %65, %164 ], [ %65, %230 ], [ %65, %343 ], [ %65, %351 ], [ %65, %367 ], [ %65, %363 ], [ %65, %336 ], [ %65, %225 ], [ %65, %220 ], [ %194, %193 ], [ %65, %195 ], [ %160, %159 ]
  %371 = and i32 %370, 40894526
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %677, label %373

373:                                              ; preds = %369
  %374 = and i32 %370, 32
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %397, label %376

376:                                              ; preds = %373
  %377 = load ptr, ptr %36, align 8
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %438

379:                                              ; preds = %376
  %380 = load ptr, ptr %11, align 4
  %381 = getelementptr inbounds %struct.sdhci_ops, ptr %380, i32 0, i32 1
  %382 = load ptr, ptr %381, align 4
  %383 = icmp eq ptr %382, null
  br i1 %383, label %388, label %384, !prof !8

384:                                              ; preds = %379
  %385 = tail call zeroext i16 %382(ptr noundef %1, i32 noundef 14) #15
  %386 = lshr i16 %385, 8
  %387 = trunc i16 %386 to i6
  br label %394

388:                                              ; preds = %379
  %389 = load ptr, ptr %27, align 16
  %390 = getelementptr i8, ptr %389, i32 14
  %391 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %390) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  %392 = lshr i16 %391, 8
  %393 = trunc i16 %392 to i6
  br label %394

394:                                              ; preds = %388, %384
  %395 = phi i6 [ %393, %388 ], [ %387, %384 ]
  switch i6 %395, label %397 [
    i6 21, label %396
    i6 19, label %396
  ]

396:                                              ; preds = %394, %394
  store i32 1, ptr %40, align 4
  tail call void @__wake_up(ptr noundef %41, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %677

397:                                              ; preds = %394, %373
  %398 = load ptr, ptr %36, align 8
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %438

400:                                              ; preds = %397
  %401 = load ptr, ptr %30, align 16
  %402 = icmp eq ptr %401, null
  br i1 %402, label %424, label %403

403:                                              ; preds = %400
  %404 = getelementptr inbounds %struct.mmc_command, ptr %401, i32 0, i32 3
  %405 = load i32, ptr %404, align 4
  %406 = and i32 %405, 8
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %424, label %408

408:                                              ; preds = %403
  %409 = and i32 %370, 1048576
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %415, label %411

411:                                              ; preds = %408
  store ptr null, ptr %30, align 16
  %412 = getelementptr inbounds %struct.mmc_command, ptr %401, i32 0, i32 5
  store i32 -110, ptr %412, align 4
  %413 = getelementptr inbounds %struct.mmc_command, ptr %401, i32 0, i32 8
  %414 = load ptr, ptr %413, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %1, ptr noundef %414) #15
  br label %677

415:                                              ; preds = %408
  %416 = and i32 %370, 2
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %424, label %418

418:                                              ; preds = %415
  store ptr null, ptr %30, align 16
  %419 = load ptr, ptr %32, align 4
  %420 = icmp eq ptr %419, %401
  br i1 %420, label %677, label %421

421:                                              ; preds = %418
  %422 = getelementptr inbounds %struct.mmc_command, ptr %401, i32 0, i32 8
  %423 = load ptr, ptr %422, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %1, ptr noundef %423) #15
  br label %677

424:                                              ; preds = %415, %403, %400
  %425 = load i8, ptr %39, align 4, !range !19
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %427, label %677

427:                                              ; preds = %424
  %428 = load ptr, ptr %34, align 8
  %429 = getelementptr inbounds %struct.mmc_host, ptr %428, i32 0, i32 1, i32 3
  %430 = load ptr, ptr %429, align 4
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %435

432:                                              ; preds = %427
  %433 = getelementptr inbounds %struct.mmc_host, ptr %428, i32 0, i32 1
  %434 = load ptr, ptr %433, align 4
  br label %435

435:                                              ; preds = %432, %427
  %436 = phi ptr [ %434, %432 ], [ %430, %427 ]
  %437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %436, i32 noundef %371) #14
  tail call void @sdhci_dumpregs(ptr noundef %1) #15
  br label %677

438:                                              ; preds = %397, %376
  %439 = phi ptr [ %398, %397 ], [ %377, %376 ]
  %440 = and i32 %370, 1048576
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %444, label %442

442:                                              ; preds = %438
  %443 = getelementptr inbounds %struct.mmc_data, ptr %439, i32 0, i32 5
  store i32 -110, ptr %443, align 4
  br label %491

444:                                              ; preds = %438
  %445 = and i32 %370, 4194304
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %449, label %447

447:                                              ; preds = %444
  %448 = getelementptr inbounds %struct.mmc_data, ptr %439, i32 0, i32 5
  store i32 -84, ptr %448, align 4
  br label %491

449:                                              ; preds = %444
  %450 = and i32 %370, 2097152
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %470, label %452

452:                                              ; preds = %449
  %453 = load ptr, ptr %11, align 4
  %454 = getelementptr inbounds %struct.sdhci_ops, ptr %453, i32 0, i32 1
  %455 = load ptr, ptr %454, align 4
  %456 = icmp eq ptr %455, null
  br i1 %456, label %459, label %457, !prof !8

457:                                              ; preds = %452
  %458 = tail call zeroext i16 %455(ptr noundef %1, i32 noundef 14) #15
  br label %463

459:                                              ; preds = %452
  %460 = load ptr, ptr %27, align 16
  %461 = getelementptr i8, ptr %460, i32 14
  %462 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %461) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %463

463:                                              ; preds = %459, %457
  %464 = phi i16 [ %458, %457 ], [ %462, %459 ]
  %465 = and i16 %464, 16128
  %466 = icmp eq i16 %465, 3584
  br i1 %466, label %470, label %467

467:                                              ; preds = %463
  %468 = load ptr, ptr %36, align 8
  %469 = getelementptr inbounds %struct.mmc_data, ptr %468, i32 0, i32 5
  store i32 -84, ptr %469, align 4
  br label %491

470:                                              ; preds = %463, %449
  %471 = and i32 %370, 33554432
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %491, label %473

473:                                              ; preds = %470
  %474 = load ptr, ptr %34, align 8
  %475 = getelementptr inbounds %struct.mmc_host, ptr %474, i32 0, i32 1, i32 3
  %476 = load ptr, ptr %475, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %478, label %481

478:                                              ; preds = %473
  %479 = getelementptr inbounds %struct.mmc_host, ptr %474, i32 0, i32 1
  %480 = load ptr, ptr %479, align 4
  br label %481

481:                                              ; preds = %478, %473
  %482 = phi ptr [ %480, %478 ], [ %476, %473 ]
  %483 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %482, i32 noundef %371) #14
  tail call fastcc void @sdhci_adma_show_error(ptr noundef %1) #15
  %484 = load ptr, ptr %36, align 8
  %485 = getelementptr inbounds %struct.mmc_data, ptr %484, i32 0, i32 5
  store i32 -5, ptr %485, align 4
  %486 = load ptr, ptr %11, align 4
  %487 = getelementptr inbounds %struct.sdhci_ops, ptr %486, i32 0, i32 23
  %488 = load ptr, ptr %487, align 4
  %489 = icmp eq ptr %488, null
  br i1 %489, label %491, label %490

490:                                              ; preds = %481
  tail call void %488(ptr noundef %1, i32 noundef %371) #15
  br label %491

491:                                              ; preds = %490, %481, %470, %467, %447, %442
  %492 = load ptr, ptr %36, align 8
  %493 = getelementptr inbounds %struct.mmc_data, ptr %492, i32 0, i32 5
  %494 = load i32, ptr %493, align 4
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %497, label %496

496:                                              ; preds = %491
  tail call fastcc void @__sdhci_finish_data(ptr noundef %1, i1 noundef zeroext false) #15
  br label %677

497:                                              ; preds = %491
  %498 = and i32 %370, 48
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %646, label %500

500:                                              ; preds = %497
  %501 = load i32, ptr %42, align 4
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %646, label %503

503:                                              ; preds = %500
  %504 = getelementptr inbounds %struct.mmc_data, ptr %492, i32 0, i32 6
  %505 = load i32, ptr %504, align 4
  %506 = and i32 %505, 512
  %507 = icmp eq i32 %506, 0
  %508 = select i1 %507, i32 1024, i32 2048
  %509 = load i32, ptr %35, align 4
  %510 = and i32 %509, 8192
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %517, label %512

512:                                              ; preds = %503
  %513 = getelementptr inbounds %struct.mmc_data, ptr %492, i32 0, i32 3
  %514 = load i32, ptr %513, align 4
  %515 = icmp eq i32 %514, 1
  %516 = select i1 %515, i32 -1, i32 %508
  br label %517

517:                                              ; preds = %512, %503
  %518 = phi i32 [ %508, %503 ], [ %516, %512 ]
  br label %519

519:                                              ; preds = %642, %517
  %520 = load ptr, ptr %11, align 4
  %521 = load ptr, ptr %520, align 4
  %522 = icmp eq ptr %521, null
  br i1 %522, label %525, label %523, !prof !8

523:                                              ; preds = %519
  %524 = tail call i32 %521(ptr noundef %1, i32 noundef 36) #15
  br label %529

525:                                              ; preds = %519
  %526 = load ptr, ptr %27, align 16
  %527 = getelementptr i8, ptr %526, i32 36
  %528 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %527) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %529

529:                                              ; preds = %525, %523
  %530 = phi i32 [ %524, %523 ], [ %528, %525 ]
  %531 = and i32 %530, %518
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %646, label %533

533:                                              ; preds = %529
  %534 = load i32, ptr %35, align 4
  %535 = and i32 %534, 262144
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %539, label %537

537:                                              ; preds = %533
  %538 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %538(i32 noundef 21474800) #15
  br label %539

539:                                              ; preds = %537, %533
  %540 = load ptr, ptr %36, align 8
  %541 = getelementptr inbounds %struct.mmc_data, ptr %540, i32 0, i32 6
  %542 = load i32, ptr %541, align 4
  %543 = and i32 %542, 512
  %544 = icmp eq i32 %543, 0
  %545 = getelementptr inbounds %struct.mmc_data, ptr %540, i32 0, i32 2
  %546 = load i32, ptr %545, align 4
  %547 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15
  %548 = icmp eq i32 %546, 0
  br i1 %544, label %593, label %549

549:                                              ; preds = %539
  br i1 %548, label %592, label %554

550:                                              ; preds = %583, %560
  %551 = phi i32 [ %557, %560 ], [ %588, %583 ]
  %552 = phi i32 [ %556, %560 ], [ %589, %583 ]
  %553 = icmp eq i32 %563, 0
  br i1 %553, label %592, label %554

554:                                              ; preds = %550, %549
  %555 = phi i32 [ %563, %550 ], [ %546, %549 ]
  %556 = phi i32 [ %552, %550 ], [ 0, %549 ]
  %557 = phi i32 [ %551, %550 ], [ 0, %549 ]
  %558 = tail call zeroext i1 @sg_miter_next(ptr noundef %43) #15
  br i1 %558, label %560, label %559, !prof !8

559:                                              ; preds = %554
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #15, !srcloc !37
  unreachable

560:                                              ; preds = %554
  %561 = load i32, ptr %44, align 8
  %562 = tail call i32 @llvm.umin.i32(i32 %561, i32 %555) #15
  %563 = sub i32 %555, %562
  store i32 %562, ptr %45, align 4
  %564 = icmp eq i32 %562, 0
  br i1 %564, label %550, label %565

565:                                              ; preds = %560
  %566 = load ptr, ptr %46, align 4
  br label %567

567:                                              ; preds = %583, %565
  %568 = phi i32 [ %590, %583 ], [ %562, %565 ]
  %569 = phi i32 [ %589, %583 ], [ %556, %565 ]
  %570 = phi i32 [ %588, %583 ], [ %557, %565 ]
  %571 = phi ptr [ %587, %583 ], [ %566, %565 ]
  %572 = icmp eq i32 %569, 0
  br i1 %572, label %573, label %583

573:                                              ; preds = %567
  %574 = load ptr, ptr %11, align 4
  %575 = load ptr, ptr %574, align 4
  %576 = icmp eq ptr %575, null
  br i1 %576, label %579, label %577, !prof !8

577:                                              ; preds = %573
  %578 = tail call i32 %575(ptr noundef %1, i32 noundef 32) #15
  br label %583

579:                                              ; preds = %573
  %580 = load ptr, ptr %27, align 16
  %581 = getelementptr i8, ptr %580, i32 32
  %582 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %581) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %583

583:                                              ; preds = %579, %577, %567
  %584 = phi i32 [ %570, %567 ], [ %578, %577 ], [ %582, %579 ]
  %585 = phi i32 [ %569, %567 ], [ 4, %577 ], [ 4, %579 ]
  %586 = trunc i32 %584 to i8
  store i8 %586, ptr %571, align 1
  %587 = getelementptr i8, ptr %571, i32 1
  %588 = lshr i32 %584, 8
  %589 = add i32 %585, -1
  %590 = add i32 %568, -1
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %550, label %567

592:                                              ; preds = %550, %549
  tail call void @sg_miter_stop(ptr noundef %43) #15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %547) #15, !srcloc !38
  br label %642

593:                                              ; preds = %539
  br i1 %548, label %641, label %598

594:                                              ; preds = %638, %604
  %595 = phi i32 [ %601, %604 ], [ %639, %638 ]
  %596 = phi i32 [ %600, %604 ], [ %640, %638 ]
  %597 = icmp eq i32 %607, 0
  br i1 %597, label %641, label %598

598:                                              ; preds = %594, %593
  %599 = phi i32 [ %607, %594 ], [ %546, %593 ]
  %600 = phi i32 [ %596, %594 ], [ 0, %593 ]
  %601 = phi i32 [ %595, %594 ], [ 0, %593 ]
  %602 = tail call zeroext i1 @sg_miter_next(ptr noundef %43) #15
  br i1 %602, label %604, label %603, !prof !8

603:                                              ; preds = %598
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 551, 0\0A.popsection", ""() #15, !srcloc !39
  unreachable

604:                                              ; preds = %598
  %605 = load i32, ptr %44, align 8
  %606 = tail call i32 @llvm.umin.i32(i32 %605, i32 %599) #15
  %607 = sub i32 %599, %606
  store i32 %606, ptr %45, align 4
  %608 = icmp eq i32 %606, 0
  br i1 %608, label %594, label %609

609:                                              ; preds = %604
  %610 = load ptr, ptr %46, align 4
  %611 = icmp eq i32 %607, 0
  br label %612

612:                                              ; preds = %638, %609
  %613 = phi i32 [ %606, %609 ], [ %624, %638 ]
  %614 = phi i32 [ %600, %609 ], [ %640, %638 ]
  %615 = phi i32 [ %601, %609 ], [ %639, %638 ]
  %616 = phi ptr [ %610, %609 ], [ %622, %638 ]
  %617 = load i8, ptr %616, align 1
  %618 = zext i8 %617 to i32
  %619 = shl i32 %614, 3
  %620 = shl i32 %618, %619
  %621 = or i32 %620, %615
  %622 = getelementptr i8, ptr %616, i32 1
  %623 = add i32 %614, 1
  %624 = add i32 %613, -1
  %625 = icmp eq i32 %623, 4
  %626 = icmp eq i32 %624, 0
  %627 = select i1 %626, i1 %611, i1 false
  %628 = select i1 %625, i1 true, i1 %627
  br i1 %628, label %629, label %638

629:                                              ; preds = %612
  %630 = load ptr, ptr %11, align 4
  %631 = getelementptr inbounds %struct.sdhci_ops, ptr %630, i32 0, i32 3
  %632 = load ptr, ptr %631, align 4
  %633 = icmp eq ptr %632, null
  br i1 %633, label %635, label %634, !prof !8

634:                                              ; preds = %629
  tail call void %632(ptr noundef %1, i32 noundef %621, i32 noundef 32) #15
  br label %638

635:                                              ; preds = %629
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %636 = load ptr, ptr %27, align 16
  %637 = getelementptr i8, ptr %636, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %637, i32 %621) #15, !srcloc !25
  br label %638

638:                                              ; preds = %635, %634, %612
  %639 = phi i32 [ 0, %634 ], [ 0, %635 ], [ %621, %612 ]
  %640 = phi i32 [ 0, %634 ], [ 0, %635 ], [ %623, %612 ]
  br i1 %626, label %594, label %612

641:                                              ; preds = %594, %593
  tail call void @sg_miter_stop(ptr noundef %43) #15
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %547) #15, !srcloc !38
  br label %642

642:                                              ; preds = %641, %592
  %643 = load i32, ptr %42, align 4
  %644 = add i32 %643, -1
  store i32 %644, ptr %42, align 4
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %519

646:                                              ; preds = %642, %529, %500, %497
  %647 = and i32 %370, 8
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %666, label %649

649:                                              ; preds = %646
  %650 = load ptr, ptr %47, align 8
  %651 = icmp eq ptr %650, null
  %652 = load ptr, ptr %36, align 8
  br i1 %651, label %653, label %657

653:                                              ; preds = %649
  %654 = getelementptr inbounds %struct.mmc_data, ptr %652, i32 0, i32 12
  %655 = load ptr, ptr %654, align 4
  %656 = getelementptr inbounds %struct.scatterlist, ptr %655, i32 0, i32 3
  br label %657

657:                                              ; preds = %653, %649
  %658 = phi ptr [ %656, %653 ], [ %48, %649 ]
  %659 = load i32, ptr %658, align 4
  %660 = getelementptr inbounds %struct.mmc_data, ptr %652, i32 0, i32 7
  %661 = load i32, ptr %660, align 4
  %662 = add i32 %659, 524288
  %663 = add i32 %662, %661
  %664 = and i32 %663, -524288
  %665 = sub i32 %664, %659
  store i32 %665, ptr %660, align 4
  tail call fastcc void @sdhci_set_sdma_addr(ptr noundef %1, i32 noundef %664) #15
  br label %666

666:                                              ; preds = %657, %646
  %667 = and i32 %370, 2
  %668 = icmp eq i32 %667, 0
  br i1 %668, label %677, label %669

669:                                              ; preds = %666
  %670 = load ptr, ptr %32, align 4
  %671 = load ptr, ptr %30, align 16
  %672 = icmp eq ptr %670, %671
  br i1 %672, label %673, label %676

673:                                              ; preds = %669
  %674 = load i8, ptr %37, align 4
  %675 = or i8 %674, 1
  store i8 %675, ptr %37, align 4
  br label %677

676:                                              ; preds = %669
  tail call fastcc void @__sdhci_finish_data(ptr noundef %1, i1 noundef zeroext false) #15
  br label %677

677:                                              ; preds = %676, %673, %666, %496, %435, %424, %421, %418, %411, %396, %369
  %678 = and i32 %370, 8388608
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %691, label %680

680:                                              ; preds = %677
  %681 = load ptr, ptr %34, align 8
  %682 = getelementptr inbounds %struct.mmc_host, ptr %681, i32 0, i32 1, i32 3
  %683 = load ptr, ptr %682, align 4
  %684 = icmp eq ptr %683, null
  br i1 %684, label %685, label %688

685:                                              ; preds = %680
  %686 = getelementptr inbounds %struct.mmc_host, ptr %681, i32 0, i32 1
  %687 = load ptr, ptr %686, align 4
  br label %688

688:                                              ; preds = %685, %680
  %689 = phi ptr [ %687, %685 ], [ %683, %680 ]
  %690 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %689) #14
  br label %691

691:                                              ; preds = %688, %677
  %692 = and i32 %370, 4096
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %702, label %694

694:                                              ; preds = %691
  %695 = load ptr, ptr %34, align 8
  %696 = getelementptr inbounds %struct.mmc_host, ptr %695, i32 0, i32 29
  %697 = load i16, ptr %696, align 8
  %698 = and i16 %697, 8
  %699 = icmp eq i16 %698, 0
  br i1 %699, label %702, label %700

700:                                              ; preds = %694
  %701 = getelementptr inbounds %struct.mmc_host, ptr %695, i32 0, i32 32
  store i32 1, ptr %701, align 4
  br label %702

702:                                              ; preds = %700, %694, %691
  %703 = and i32 %370, 256
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %735, label %705

705:                                              ; preds = %702
  %706 = load i32, ptr %28, align 64
  %707 = and i32 %706, 256
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %735, label %709

709:                                              ; preds = %705
  %710 = load i32, ptr %31, align 4
  %711 = and i32 %710, 8
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %733

713:                                              ; preds = %709
  %714 = and i32 %706, -257
  store i32 %714, ptr %28, align 64
  %715 = load ptr, ptr %11, align 4
  %716 = getelementptr inbounds %struct.sdhci_ops, ptr %715, i32 0, i32 3
  %717 = load ptr, ptr %716, align 4
  %718 = icmp eq ptr %717, null
  br i1 %718, label %720, label %719, !prof !8

719:                                              ; preds = %713
  tail call void %717(ptr noundef %1, i32 noundef %714, i32 noundef 52) #15
  br label %723

720:                                              ; preds = %713
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %721 = load ptr, ptr %27, align 16
  %722 = getelementptr i8, ptr %721, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %722, i32 %714) #15, !srcloc !25
  br label %723

723:                                              ; preds = %720, %719
  %724 = load i32, ptr %28, align 64
  %725 = load ptr, ptr %11, align 4
  %726 = getelementptr inbounds %struct.sdhci_ops, ptr %725, i32 0, i32 3
  %727 = load ptr, ptr %726, align 4
  %728 = icmp eq ptr %727, null
  br i1 %728, label %730, label %729, !prof !8

729:                                              ; preds = %723
  tail call void %727(ptr noundef %1, i32 noundef %724, i32 noundef 56) #15
  br label %733

730:                                              ; preds = %723
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %731 = load ptr, ptr %27, align 16
  %732 = getelementptr i8, ptr %731, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %732, i32 %724) #15, !srcloc !25
  br label %733

733:                                              ; preds = %730, %729, %709
  %734 = load ptr, ptr %34, align 8
  tail call void @sdio_signal_irq(ptr noundef %734) #15
  br label %735

735:                                              ; preds = %733, %705, %702
  %736 = and i32 %370, -67080704
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %748, label %738

738:                                              ; preds = %735
  %739 = or i32 %736, %51
  %740 = load ptr, ptr %11, align 4
  %741 = getelementptr inbounds %struct.sdhci_ops, ptr %740, i32 0, i32 3
  %742 = load ptr, ptr %741, align 4
  %743 = icmp eq ptr %742, null
  br i1 %743, label %745, label %744, !prof !8

744:                                              ; preds = %738
  tail call void %742(ptr noundef %1, i32 noundef %736, i32 noundef 48) #15
  br label %748

745:                                              ; preds = %738
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %746 = load ptr, ptr %27, align 16
  %747 = getelementptr i8, ptr %746, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %747, i32 %736) #15, !srcloc !25
  br label %748

748:                                              ; preds = %745, %744, %735, %58
  %749 = phi i32 [ %51, %735 ], [ %51, %58 ], [ %739, %744 ], [ %739, %745 ]
  %750 = phi i32 [ %126, %735 ], [ %53, %58 ], [ %126, %744 ], [ %126, %745 ]
  %751 = icmp eq i32 %750, 0
  %752 = select i1 %751, i32 1, i32 %750
  %753 = load ptr, ptr %11, align 4
  %754 = load ptr, ptr %753, align 4
  %755 = icmp eq ptr %754, null
  br i1 %755, label %758, label %756, !prof !8

756:                                              ; preds = %748
  %757 = tail call i32 %754(ptr noundef %1, i32 noundef 48) #15
  br label %762

758:                                              ; preds = %748
  %759 = load ptr, ptr %27, align 16
  %760 = getelementptr i8, ptr %759, i32 48
  %761 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %760) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %762

762:                                              ; preds = %758, %756
  %763 = phi i32 [ %757, %756 ], [ %761, %758 ]
  %764 = icmp eq i32 %763, 0
  %765 = add nsw i32 %52, -1
  %766 = icmp eq i32 %765, 0
  %767 = select i1 %764, i1 true, i1 %766
  br i1 %767, label %768, label %49

768:                                              ; preds = %762
  %769 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 31
  %770 = getelementptr %struct.sdhci_host, ptr %1, i32 0, i32 32, i32 0
  %771 = load ptr, ptr %770, align 4
  %772 = icmp eq ptr %771, null
  br i1 %772, label %792, label %773

773:                                              ; preds = %768
  %774 = getelementptr inbounds %struct.mmc_request, ptr %771, i32 0, i32 2
  %775 = load ptr, ptr %774, align 4
  %776 = load i8, ptr %39, align 4, !range !19
  %777 = icmp eq i8 %776, 0
  br i1 %777, label %778, label %792

778:                                              ; preds = %773
  %779 = load i8, ptr %769, align 32, !range !19
  %780 = icmp eq i8 %779, 0
  br i1 %780, label %781, label %792

781:                                              ; preds = %778
  %782 = load i32, ptr %31, align 4
  %783 = and i32 %782, 4
  %784 = icmp ne i32 %783, 0
  %785 = icmp ne ptr %775, null
  %786 = select i1 %784, i1 %785, i1 false
  br i1 %786, label %787, label %791

787:                                              ; preds = %781
  %788 = getelementptr inbounds %struct.mmc_data, ptr %775, i32 0, i32 13
  %789 = load i32, ptr %788, align 4
  %790 = icmp eq i32 %789, 2
  br i1 %790, label %792, label %791

791:                                              ; preds = %787, %781
  store ptr null, ptr %770, align 4
  br label %792

792:                                              ; preds = %791, %787, %778, %773, %768
  %793 = phi ptr [ null, %768 ], [ null, %787 ], [ %771, %791 ], [ null, %778 ], [ null, %773 ]
  %794 = phi i32 [ %752, %768 ], [ 2, %787 ], [ %752, %791 ], [ 2, %778 ], [ 2, %773 ]
  %795 = getelementptr %struct.sdhci_host, ptr %1, i32 0, i32 32, i32 1
  %796 = load ptr, ptr %795, align 4
  %797 = icmp eq ptr %796, null
  br i1 %797, label %817, label %798

798:                                              ; preds = %792
  %799 = getelementptr inbounds %struct.mmc_request, ptr %796, i32 0, i32 2
  %800 = load ptr, ptr %799, align 4
  %801 = load i8, ptr %39, align 4, !range !19
  %802 = icmp eq i8 %801, 0
  br i1 %802, label %803, label %817

803:                                              ; preds = %798
  %804 = load i8, ptr %769, align 32, !range !19
  %805 = icmp eq i8 %804, 0
  br i1 %805, label %806, label %817

806:                                              ; preds = %803
  %807 = load i32, ptr %31, align 4
  %808 = and i32 %807, 4
  %809 = icmp ne i32 %808, 0
  %810 = icmp ne ptr %800, null
  %811 = select i1 %809, i1 %810, i1 false
  br i1 %811, label %812, label %816

812:                                              ; preds = %806
  %813 = getelementptr inbounds %struct.mmc_data, ptr %800, i32 0, i32 13
  %814 = load i32, ptr %813, align 4
  %815 = icmp eq i32 %814, 2
  br i1 %815, label %817, label %816

816:                                              ; preds = %812, %806
  store ptr null, ptr %795, align 4
  br label %817

817:                                              ; preds = %816, %812, %803, %798, %792, %22
  %818 = phi ptr [ null, %22 ], [ null, %792 ], [ null, %812 ], [ %796, %816 ], [ null, %803 ], [ null, %798 ]
  %819 = phi ptr [ null, %22 ], [ %793, %792 ], [ %793, %812 ], [ %793, %816 ], [ %793, %803 ], [ %793, %798 ]
  %820 = phi i32 [ 0, %22 ], [ %749, %792 ], [ %749, %812 ], [ %749, %816 ], [ %749, %803 ], [ %749, %798 ]
  %821 = phi i32 [ 0, %22 ], [ %794, %792 ], [ 2, %812 ], [ %794, %816 ], [ 2, %803 ], [ 2, %798 ]
  %822 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 35
  %823 = load ptr, ptr %822, align 4
  %824 = icmp eq ptr %823, null
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !33
  %825 = load i16, ptr %3, align 4
  %826 = add i16 %825, 1
  store i16 %826, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #15, !srcloc !34
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #15, !srcloc !35
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !36
  %827 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %828 = icmp eq ptr %819, null
  br i1 %828, label %837, label %829

829:                                              ; preds = %817
  %830 = load ptr, ptr %11, align 4
  %831 = getelementptr inbounds %struct.sdhci_ops, ptr %830, i32 0, i32 28
  %832 = load ptr, ptr %831, align 4
  %833 = icmp eq ptr %832, null
  br i1 %833, label %835, label %834

834:                                              ; preds = %829
  tail call void %832(ptr noundef %1, ptr noundef nonnull %819) #15
  br label %837

835:                                              ; preds = %829
  %836 = load ptr, ptr %827, align 8
  tail call void @mmc_request_done(ptr noundef %836, ptr noundef nonnull %819) #15
  br label %837

837:                                              ; preds = %835, %834, %817
  %838 = icmp eq ptr %818, null
  br i1 %838, label %847, label %839

839:                                              ; preds = %837
  %840 = load ptr, ptr %11, align 4
  %841 = getelementptr inbounds %struct.sdhci_ops, ptr %840, i32 0, i32 28
  %842 = load ptr, ptr %841, align 4
  %843 = icmp eq ptr %842, null
  br i1 %843, label %845, label %844

844:                                              ; preds = %839
  tail call void %842(ptr noundef %1, ptr noundef nonnull %818) #15
  br label %847

845:                                              ; preds = %839
  %846 = load ptr, ptr %827, align 8
  tail call void @mmc_request_done(ptr noundef %846, ptr noundef nonnull %818) #15
  br label %847

847:                                              ; preds = %845, %844, %837
  %848 = select i1 %824, i32 %821, i32 2
  %849 = icmp eq i32 %820, 0
  br i1 %849, label %861, label %850

850:                                              ; preds = %847
  %851 = load ptr, ptr %827, align 8
  %852 = getelementptr inbounds %struct.mmc_host, ptr %851, i32 0, i32 1, i32 3
  %853 = load ptr, ptr %852, align 4
  %854 = icmp eq ptr %853, null
  br i1 %854, label %855, label %858

855:                                              ; preds = %850
  %856 = getelementptr inbounds %struct.mmc_host, ptr %851, i32 0, i32 1
  %857 = load ptr, ptr %856, align 4
  br label %858

858:                                              ; preds = %855, %850
  %859 = phi ptr [ %857, %855 ], [ %853, %850 ]
  %860 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %859, i32 noundef %820) #14
  tail call void @sdhci_dumpregs(ptr noundef %1)
  br label %861

861:                                              ; preds = %858, %847, %7
  %862 = phi i32 [ 0, %7 ], [ %848, %858 ], [ %848, %847 ]
  ret i32 %862
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_thread_irq(i32 noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call fastcc zeroext i1 @sdhci_request_done(ptr noundef %1)
  br i1 %4, label %5, label %3

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 15
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #15
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 65
  %9 = load i32, ptr %8, align 4
  store i32 0, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 35
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %5
  %14 = tail call fastcc zeroext i1 @sdhci_send_command_retry(ptr noundef %1, ptr noundef nonnull %11, i32 noundef %7)
  br i1 %14, label %22, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %1, ptr noundef %17) #15
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 50
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 51
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %20) #15
  br label %22

22:                                               ; preds = %15, %13, %5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #15
  %23 = and i32 %9, 192
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %1, i32 0, i32 10
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mmc_host_ops, ptr %29, i32 0, i32 21
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %27) #15
  tail call void @mmc_detect_change(ptr noundef %27, i32 noundef 20) #15
  br label %32

32:                                               ; preds = %25, %22
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_runtime_suspend_host(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_retune_timer_stop(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %7 = load i32, ptr %6, align 64
  %8 = and i32 %7, 256
  store i32 %8, ptr %6, align 64
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %1
  tail call void %12(ptr noundef %0, i32 noundef %8, i32 noundef 52) #15
  br label %19

15:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 16
  %18 = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %8) #15, !srcloc !25
  br label %19

19:                                               ; preds = %15, %14
  %20 = load i32, ptr %6, align 64
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.sdhci_ops, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !8

25:                                               ; preds = %19
  tail call void %23(ptr noundef %0, i32 noundef %20, i32 noundef 56) #15
  br label %30

26:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %28 = load ptr, ptr %27, align 16
  %29 = getelementptr i8, ptr %28, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %20) #15, !srcloc !25
  br label %30

30:                                               ; preds = %26, %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = tail call zeroext i1 @synchronize_hardirq(i32 noundef %32) #15
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 24
  store i8 1, ptr %35, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %34) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @synchronize_hardirq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_runtime_resume_host(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sdhci_ops, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = tail call i32 %13(ptr noundef %0) #15
  br label %17

17:                                               ; preds = %15, %9, %2
  tail call fastcc void @sdhci_init(ptr noundef %0, i32 noundef %1)
  %18 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28
  %19 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 28, i32 5
  %20 = load i8, ptr %19, align 2
  switch i8 %20, label %21 [
    i8 3, label %89
    i8 0, label %89
  ]

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 23
  store i8 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mmc_host_ops, ptr %25, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %4, ptr noundef %18) #15
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr inbounds %struct.mmc_host_ops, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef %4, ptr noundef %18) #15
  %32 = and i32 %6, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %78, label %34

34:                                               ; preds = %21
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %40) #15
  %42 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 17
  %43 = load i32, ptr %42, align 64
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %77, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 26
  %47 = load i8, ptr %46, align 1, !range !19
  %48 = icmp eq i8 %47, 1
  br i1 %48, label %77, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sdhci_ops, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !8

55:                                               ; preds = %49
  %56 = tail call zeroext i16 %53(ptr noundef %0, i32 noundef 62) #15
  br label %62

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 16
  %60 = getelementptr i8, ptr %59, i32 62
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi i16 [ %56, %55 ], [ %61, %57 ]
  %64 = or i16 %63, -32768
  %65 = load ptr, ptr %50, align 4
  %66 = getelementptr inbounds %struct.sdhci_ops, ptr %65, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69, !prof !8

69:                                               ; preds = %62
  tail call void %67(ptr noundef %0, i16 noundef zeroext %64, i32 noundef 62) #15
  br label %74

70:                                               ; preds = %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %71 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %72 = load ptr, ptr %71, align 16
  %73 = getelementptr i8, ptr %72, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %73, i16 %64) #15, !srcloc !16
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i32, ptr %5, align 4
  %76 = or i32 %75, 256
  store i32 %76, ptr %5, align 4
  store i8 1, ptr %46, align 1
  br label %77

77:                                               ; preds = %74, %45, %39
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %41) #15
  br label %78

78:                                               ; preds = %77, %34, %21
  %79 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 17
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 1048576
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %24, align 4
  %85 = getelementptr inbounds %struct.mmc_host_ops, ptr %84, i32 0, i32 18
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  tail call void %86(ptr noundef %4, ptr noundef %18) #15
  br label %89

89:                                               ; preds = %88, %83, %78, %17, %17
  %90 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %91 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %90) #15
  %92 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 24
  store i8 0, ptr %92, align 1
  %93 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 46
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %125, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %5, align 4
  %98 = and i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %102 = load i32, ptr %101, align 64
  %103 = or i32 %102, 256
  store i32 %103, ptr %101, align 64
  %104 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.sdhci_ops, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %110, label %109, !prof !8

109:                                              ; preds = %100
  tail call void %107(ptr noundef %0, i32 noundef %103, i32 noundef 52) #15
  br label %114

110:                                              ; preds = %100
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %111 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %112 = load ptr, ptr %111, align 16
  %113 = getelementptr i8, ptr %112, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %103) #15, !srcloc !25
  br label %114

114:                                              ; preds = %110, %109
  %115 = load i32, ptr %101, align 64
  %116 = load ptr, ptr %104, align 4
  %117 = getelementptr inbounds %struct.sdhci_ops, ptr %116, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120, !prof !8

120:                                              ; preds = %114
  tail call void %118(ptr noundef %0, i32 noundef %115, i32 noundef 56) #15
  br label %125

121:                                              ; preds = %114
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %122 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %123 = load ptr, ptr %122, align 16
  %124 = getelementptr i8, ptr %123, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %115) #15, !srcloc !25
  br label %125

125:                                              ; preds = %121, %120, %96, %89
  tail call fastcc void @sdhci_set_card_detection(ptr noundef %0, i1 noundef zeroext true) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %90, i32 noundef %91) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_cqe_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sdhci_ops, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !8

10:                                               ; preds = %1
  %11 = tail call zeroext i8 %8(ptr noundef %2, i32 noundef 40) #15
  br label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 16
  %15 = getelementptr i8, ptr %14, i32 40
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i8 [ %11, %10 ], [ %16, %12 ]
  %19 = and i8 %18, -25
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 29
  %21 = load i8, ptr %20, align 2, !range !19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 31
  %25 = load i32, ptr %24, align 32
  %26 = and i32 %25, 134217728
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = or i8 %18, 24
  br label %39

30:                                               ; preds = %23, %17
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 16
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 4096
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = or i8 %18, 24
  br label %39

37:                                               ; preds = %30
  %38 = or i8 %19, 16
  br label %39

39:                                               ; preds = %37, %35, %28
  %40 = phi i8 [ %29, %28 ], [ %36, %35 ], [ %38, %37 ]
  %41 = load ptr, ptr %5, align 4
  %42 = getelementptr inbounds %struct.sdhci_ops, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !8

45:                                               ; preds = %39
  tail call void %43(ptr noundef %2, i8 noundef zeroext %40, i32 noundef 40) #15
  br label %50

46:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %47 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %48 = load ptr, ptr %47, align 16
  %49 = getelementptr i8, ptr %48, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 %40) #15, !srcloc !18
  br label %50

50:                                               ; preds = %46, %45
  %51 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = trunc i32 %52 to i16
  %54 = shl i16 %53, 12
  %55 = and i16 %54, 28672
  %56 = or i16 %55, 512
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr inbounds %struct.sdhci_ops, ptr %57, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61, !prof !8

61:                                               ; preds = %50
  tail call void %59(ptr noundef %2, i16 noundef zeroext %56, i32 noundef 4) #15
  br label %66

62:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %63 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %64 = load ptr, ptr %63, align 16
  %65 = getelementptr i8, ptr %64, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 %56) #15, !srcloc !16
  br label %66

66:                                               ; preds = %62, %61
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr inbounds %struct.sdhci_ops, ptr %67, i32 0, i32 15
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  tail call void %69(ptr noundef %2, ptr noundef null) #15
  br label %73

72:                                               ; preds = %66
  tail call void @__sdhci_set_timeout(ptr noundef %2, ptr noundef null) #15
  br label %73

73:                                               ; preds = %72, %71
  %74 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 37
  %75 = load i32, ptr %74, align 8
  %76 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 3
  store i32 %75, ptr %76, align 64
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr inbounds %struct.sdhci_ops, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %82, label %81, !prof !8

81:                                               ; preds = %73
  tail call void %79(ptr noundef %2, i32 noundef %75, i32 noundef 52) #15
  br label %86

82:                                               ; preds = %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %83 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %84 = load ptr, ptr %83, align 16
  %85 = getelementptr i8, ptr %84, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %75) #15, !srcloc !25
  br label %86

86:                                               ; preds = %82, %81
  %87 = load i32, ptr %76, align 64
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr inbounds %struct.sdhci_ops, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92, !prof !8

92:                                               ; preds = %86
  tail call void %90(ptr noundef %2, i32 noundef %87, i32 noundef 56) #15
  br label %97

93:                                               ; preds = %86
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %94 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %95 = load ptr, ptr %94, align 16
  %96 = getelementptr i8, ptr %95, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %87) #15, !srcloc !25
  br label %97

97:                                               ; preds = %93, %92
  %98 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 36
  store i8 1, ptr %98, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_cqe_disable(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 3
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 42
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 2
  %11 = select i1 %10, i32 16715779, i32 16711683
  store i32 %11, ptr %6, align 64
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sdhci_ops, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !8

17:                                               ; preds = %2
  tail call void %15(ptr noundef %3, i32 noundef %11, i32 noundef 52) #15
  br label %22

18:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %19 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %11) #15, !srcloc !25
  br label %22

22:                                               ; preds = %18, %17
  %23 = load i32, ptr %6, align 64
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr inbounds %struct.sdhci_ops, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !8

28:                                               ; preds = %22
  tail call void %26(ptr noundef %3, i32 noundef %23, i32 noundef 56) #15
  br label %33

29:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %23) #15, !srcloc !25
  br label %33

33:                                               ; preds = %29, %28
  %34 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 36
  store i8 0, ptr %34, align 4
  br i1 %1, label %35, label %70

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mmc_host_ops, ptr %44, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %42) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40, %35
  %50 = load ptr, ptr %12, align 4
  %51 = getelementptr inbounds %struct.sdhci_ops, ptr %50, i32 0, i32 19
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %3, i8 noundef zeroext 2) #15
  br label %53

53:                                               ; preds = %49, %40
  %54 = load i32, ptr %36, align 4
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.mmc_host, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.mmc_host_ops, ptr %61, i32 0, i32 6
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %59) #15
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %57, %53
  %67 = load ptr, ptr %12, align 4
  %68 = getelementptr inbounds %struct.sdhci_ops, ptr %67, i32 0, i32 19
  %69 = load ptr, ptr %68, align 4
  tail call void %69(ptr noundef %3, i8 noundef zeroext 4) #15
  br label %70

70:                                               ; preds = %66, %57, %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @sdhci_cqe_irq(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 67
  %6 = load i8, ptr %5, align 4, !range !19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %82, label %8

8:                                                ; preds = %4
  %9 = and i32 %1, 917504
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %1, 65536
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 -110
  %14 = select i1 %10, i32 %13, i32 -84
  store i32 %14, ptr %2, align 4
  %15 = and i32 %1, 6291456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  %18 = and i32 %1, 1048576
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = and i32 %1, 33554432
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 0, i32 -5
  br label %24

24:                                               ; preds = %20, %17, %8
  %25 = phi i32 [ -84, %8 ], [ -110, %17 ], [ %23, %20 ]
  store i32 %25, ptr %3, align 4
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 68
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, %1
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.sdhci_ops, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !8

34:                                               ; preds = %24
  tail call void %32(ptr noundef %0, i32 noundef %28, i32 noundef 48) #15
  br label %39

35:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %37 = load ptr, ptr %36, align 16
  %38 = getelementptr i8, ptr %37, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %28) #15, !srcloc !25
  br label %39

39:                                               ; preds = %35, %34
  %40 = and i32 %1, 8388608
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 1, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi ptr [ %50, %48 ], [ %46, %42 ]
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %52) #14
  br label %54

54:                                               ; preds = %51, %39
  %55 = load i32, ptr %26, align 8
  %56 = and i32 %55, -32769
  %57 = xor i32 %56, -32769
  %58 = and i32 %57, %1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %54
  %61 = load ptr, ptr %29, align 4
  %62 = getelementptr inbounds %struct.sdhci_ops, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65, !prof !8

65:                                               ; preds = %60
  tail call void %63(ptr noundef %0, i32 noundef %58, i32 noundef 48) #15
  br label %70

66:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %67 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %68 = load ptr, ptr %67, align 16
  %69 = getelementptr i8, ptr %68, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %58) #15, !srcloc !25
  br label %70

70:                                               ; preds = %66, %65
  %71 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.mmc_host, ptr %72, i32 0, i32 1, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.mmc_host, ptr %72, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %70
  %80 = phi ptr [ %78, %76 ], [ %74, %70 ]
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %80, i32 noundef %58) #14
  tail call void @sdhci_dumpregs(ptr noundef %0)
  br label %82

82:                                               ; preds = %79, %54, %4
  %83 = xor i1 %7, true
  ret i1 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sdhci_alloc_host(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !28

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 3956, i32 noundef 9, ptr noundef null) #15
  br label %5

5:                                                ; preds = %4, %2
  %6 = add i32 %1, 768
  %7 = tail call ptr @mmc_alloc_host(i32 noundef %6, ptr noundef %0) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 68
  %11 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 1, i32 0, i32 7
  store ptr %7, ptr %11, align 8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 1, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(96) %12, ptr noundef nonnull align 4 dereferenceable(96) @sdhci_ops, i32 96, i1 false)
  %13 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %10, i32 0, i32 16
  store i32 16384, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 37
  store i32 50282496, ptr %15, align 8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 38
  store i32 50266112, ptr %16, align 4
  %17 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 42, i32 0, i32 1, i32 1
  store i32 -1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 42, i32 0, i32 2
  store i32 40, ptr %18, align 16
  %19 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 42, i32 1
  store i32 7, ptr %19, align 4
  %20 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 42, i32 1, i32 0, i32 1
  store i32 257, ptr %20, align 8
  %21 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 7
  store i32 65536, ptr %21, align 4
  %22 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 1, i32 1, i32 20
  store i8 14, ptr %22, align 4
  br label %23

23:                                               ; preds = %9, %5
  %24 = phi ptr [ %10, %9 ], [ inttoptr (i32 -12 to ptr), %5 ]
  ret ptr %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__sdhci_read_caps(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  store i64 0, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  store i64 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 58
  %8 = load i8, ptr %7, align 4, !range !19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %176

10:                                               ; preds = %4
  store i8 1, ptr %7, align 4
  %11 = load i32, ptr @debug_quirks, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  store i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, ptr @debug_quirks2, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  store i32 %16, ptr %19, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mmc_host_ops, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %27) #15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %25, %20
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sdhci_ops, ptr %36, i32 0, i32 19
  %38 = load ptr, ptr %37, align 4
  tail call void %38(ptr noundef %0, i8 noundef zeroext 1) #15
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %34
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr inbounds %struct.sdhci_ops, ptr %44, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = tail call i32 %46(ptr noundef %0) #15
  br label %50

50:                                               ; preds = %48, %43, %34
  %51 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 26
  store i8 0, ptr %51, align 1
  br label %52

52:                                               ; preds = %50, %25
  %53 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %54 = load i8, ptr %53, align 2, !range !19
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.sdhci_ops, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62, !prof !8

62:                                               ; preds = %56
  %63 = tail call zeroext i16 %60(ptr noundef %0, i32 noundef 62) #15
  br label %69

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %66 = load ptr, ptr %65, align 16
  %67 = getelementptr i8, ptr %66, i32 62
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %69

69:                                               ; preds = %64, %62
  %70 = phi i16 [ %63, %62 ], [ %68, %64 ]
  %71 = and i16 %70, 4096
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = or i16 %70, 4096
  %75 = load ptr, ptr %57, align 4
  %76 = getelementptr inbounds %struct.sdhci_ops, ptr %75, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79, !prof !8

79:                                               ; preds = %73
  tail call void %77(ptr noundef %0, i16 noundef zeroext %74, i32 noundef 62) #15
  br label %84

80:                                               ; preds = %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %81 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %82 = load ptr, ptr %81, align 16
  %83 = getelementptr i8, ptr %82, i32 62
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %83, i16 %74) #15, !srcloc !16
  br label %84

84:                                               ; preds = %80, %79, %69, %52
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %86 = load ptr, ptr %85, align 8
  %87 = load ptr, ptr %86, align 64
  %88 = call i32 @device_property_read_u64_array(ptr noundef %87, ptr noundef nonnull @.str.31, ptr noundef nonnull %5, i32 noundef 1) #15
  %89 = load ptr, ptr %85, align 8
  %90 = load ptr, ptr %89, align 64
  %91 = call i32 @device_property_read_u64_array(ptr noundef %90, ptr noundef nonnull @.str.32, ptr noundef nonnull %6, i32 noundef 1) #15
  %92 = icmp eq ptr %1, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = load i16, ptr %1, align 2
  br label %108

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.sdhci_ops, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101, !prof !8

101:                                              ; preds = %95
  %102 = call zeroext i16 %99(ptr noundef %0, i32 noundef 254) #15
  br label %108

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %105 = load ptr, ptr %104, align 16
  %106 = getelementptr i8, ptr %105, i32 254
  %107 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %106) #15, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %108

108:                                              ; preds = %103, %101, %93
  %109 = phi i16 [ %94, %93 ], [ %102, %101 ], [ %107, %103 ]
  %110 = and i16 %109, 255
  %111 = zext i16 %110 to i32
  %112 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 17
  store i32 %111, ptr %112, align 64
  %113 = load i32, ptr %21, align 4
  %114 = and i32 %113, 134217728
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %176

116:                                              ; preds = %108
  %117 = icmp eq ptr %2, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %116
  %119 = load i32, ptr %2, align 4
  %120 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 56
  store i32 %119, ptr %120, align 4
  br label %144

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %123 = load ptr, ptr %122, align 4
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126, !prof !8

126:                                              ; preds = %121
  %127 = call i32 %124(ptr noundef %0, i32 noundef 64) #15
  br label %133

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %130 = load ptr, ptr %129, align 16
  %131 = getelementptr i8, ptr %130, i32 64
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %131) #15, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %133

133:                                              ; preds = %128, %126
  %134 = phi i32 [ %127, %126 ], [ %132, %128 ]
  %135 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 56
  %136 = load i64, ptr %5, align 8
  %137 = trunc i64 %136 to i32
  %138 = xor i32 %137, -1
  %139 = and i32 %134, %138
  %140 = load i64, ptr %6, align 8
  %141 = trunc i64 %140 to i32
  %142 = or i32 %139, %141
  store i32 %142, ptr %135, align 4
  %143 = load i32, ptr %112, align 64
  br label %144

144:                                              ; preds = %133, %118
  %145 = phi i32 [ %143, %133 ], [ %111, %118 ]
  %146 = icmp ult i32 %145, 2
  br i1 %146, label %176, label %147

147:                                              ; preds = %144
  %148 = icmp eq ptr %3, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %147
  %150 = load i32, ptr %3, align 4
  %151 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 57
  store i32 %150, ptr %151, align 32
  br label %176

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %154 = load ptr, ptr %153, align 4
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %159, label %157, !prof !8

157:                                              ; preds = %152
  %158 = call i32 %155(ptr noundef %0, i32 noundef 68) #15
  br label %164

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %161 = load ptr, ptr %160, align 16
  %162 = getelementptr i8, ptr %161, i32 68
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %162) #15, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %164

164:                                              ; preds = %159, %157
  %165 = phi i32 [ %158, %157 ], [ %163, %159 ]
  %166 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 57
  %167 = load i64, ptr %5, align 8
  %168 = lshr i64 %167, 32
  %169 = trunc i64 %168 to i32
  %170 = xor i32 %169, -1
  %171 = and i32 %165, %170
  %172 = load i64, ptr %6, align 8
  %173 = lshr i64 %172, 32
  %174 = trunc i64 %173 to i32
  %175 = or i32 %171, %174
  store i32 %175, ptr %166, align 32
  br label %176

176:                                              ; preds = %164, %149, %144, %108, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_setup_host(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !28

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 4164, i32 noundef 9, ptr noundef null) #15
  br label %914

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 54
  %9 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 54, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = tail call i32 @mmc_regulator_get_supply(ptr noundef %7) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %914

15:                                               ; preds = %12, %5
  tail call void @__sdhci_read_caps(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 19
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 17
  %19 = load i32, ptr %18, align 64
  %20 = icmp ugt i32 %19, 5
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi ptr [ %27, %25 ], [ %23, %21 ]
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %29, i32 noundef %19) #14
  br label %31

31:                                               ; preds = %28, %15
  %32 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 56
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 4194304
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36, %31
  %42 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, 1
  store i32 %44, ptr %42, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = and i32 %33, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = and i32 %50, -2
  store i32 %54, ptr %49, align 4
  br label %55

55:                                               ; preds = %53, %48, %45
  %56 = load i32, ptr %18, align 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 56
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 524288
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 2
  store i32 %66, ptr %64, align 4
  br label %67

67:                                               ; preds = %63, %58, %55
  %68 = and i32 %33, 64
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = and i32 %72, -3
  store i32 %76, ptr %71, align 4
  br label %77

77:                                               ; preds = %75, %70, %67
  %78 = icmp ugt i32 %56, 3
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %81 = load i8, ptr %80, align 2, !range !19
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %77
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i32 [ 268435456, %83 ], [ 134217728, %79 ]
  %86 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 56
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, %85
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 4096
  store i32 %93, ptr %91, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 30
  %96 = load i8, ptr %95, align 1, !range !19
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %133, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %6, align 8
  %100 = load ptr, ptr %99, align 64
  %101 = tail call ptr @dma_request_chan(ptr noundef %100, ptr noundef nonnull @.str.68) #15
  %102 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 55
  store ptr %101, ptr %102, align 8
  %103 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = icmp eq ptr %101, inttoptr (i32 -517 to ptr)
  br i1 %105, label %108, label %106

106:                                              ; preds = %104
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #14
  br label %108

108:                                              ; preds = %106, %104
  store ptr null, ptr %102, align 8
  br label %125

109:                                              ; preds = %98
  %110 = load ptr, ptr %99, align 64
  %111 = tail call ptr @dma_request_chan(ptr noundef %110, ptr noundef nonnull @.str.70) #15
  %112 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 54
  store ptr %111, ptr %112, align 4
  %113 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load ptr, ptr %102, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  tail call void @dma_release_channel(ptr noundef nonnull %115) #15
  store ptr null, ptr %102, align 8
  %118 = load ptr, ptr %112, align 4
  br label %119

119:                                              ; preds = %117, %114
  %120 = phi ptr [ %118, %117 ], [ %111, %114 ]
  %121 = icmp eq ptr %120, inttoptr (i32 -517 to ptr)
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #14
  br label %124

124:                                              ; preds = %122, %119
  store ptr null, ptr %112, align 4
  br label %125

125:                                              ; preds = %124, %108
  %126 = phi ptr [ %101, %108 ], [ %120, %124 ]
  %127 = ptrtoint ptr %126 to i32
  switch i32 %127, label %128 [
    i32 -517, label %890
    i32 0, label %129
  ]

128:                                              ; preds = %125
  store i8 0, ptr %95, align 1
  br label %133

129:                                              ; preds = %125, %109
  %130 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, -4
  store i32 %132, ptr %130, align 4
  br label %133

133:                                              ; preds = %129, %128, %94
  %134 = phi i32 [ %127, %128 ], [ 0, %129 ], [ 0, %94 ]
  %135 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 3
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %212, label %139

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.sdhci_ops, ptr %141, i32 0, i32 9
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %186

145:                                              ; preds = %139
  %146 = load ptr, ptr %6, align 8
  %147 = load ptr, ptr %146, align 64
  %148 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 512
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %145
  %153 = and i32 %136, -4097
  store i32 %153, ptr %135, align 4
  br label %154

154:                                              ; preds = %152, %145
  %155 = phi i32 [ %153, %152 ], [ %136, %145 ]
  %156 = and i32 %155, 4096
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %173, label %158

158:                                              ; preds = %154
  %159 = tail call i32 @dma_set_mask(ptr noundef %147, i64 noundef -1) #15
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %189, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.mmc_host, ptr %146, i32 0, i32 1, i32 3
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.mmc_host, ptr %146, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  br label %168

168:                                              ; preds = %165, %161
  %169 = phi ptr [ %167, %165 ], [ %163, %161 ]
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %169) #14
  %171 = load i32, ptr %135, align 4
  %172 = and i32 %171, -4097
  store i32 %172, ptr %135, align 4
  br label %173

173:                                              ; preds = %168, %154
  %174 = tail call i32 @dma_set_mask(ptr noundef %147, i64 noundef 4294967295) #15
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %189, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.mmc_host, ptr %146, i32 0, i32 1, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.mmc_host, ptr %146, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  br label %183

183:                                              ; preds = %180, %176
  %184 = phi ptr [ %182, %180 ], [ %178, %176 ]
  %185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %184) #14
  br label %200

186:                                              ; preds = %139
  %187 = tail call i32 %143(ptr noundef nonnull %0) #15
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %200

189:                                              ; preds = %173, %158
  %190 = phi i64 [ -1, %158 ], [ 4294967295, %173 ]
  %191 = tail call i32 @dma_set_coherent_mask(ptr noundef %147, i64 noundef %190) #15
  br label %192

192:                                              ; preds = %189, %186
  %193 = load ptr, ptr %140, align 4
  %194 = getelementptr inbounds %struct.sdhci_ops, ptr %193, i32 0, i32 10
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %212, label %197

197:                                              ; preds = %192
  %198 = tail call i32 %195(ptr noundef nonnull %0) #15
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %197, %186, %183
  %201 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi ptr [ %206, %204 ], [ %202, %200 ]
  %209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %208) #14
  %210 = load i32, ptr %135, align 4
  %211 = and i32 %210, -4
  store i32 %211, ptr %135, align 4
  br label %212

212:                                              ; preds = %207, %197, %192, %133
  %213 = phi i32 [ 0, %207 ], [ 0, %197 ], [ %134, %133 ], [ 0, %192 ]
  %214 = load i32, ptr %135, align 4
  %215 = and i32 %214, 4096
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %219 = load i8, ptr %218, align 2, !range !19
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = and i32 %214, -2
  store i32 %222, ptr %135, align 4
  br label %223

223:                                              ; preds = %221, %217, %212
  %224 = phi i32 [ %222, %221 ], [ %214, %217 ], [ %214, %212 ]
  %225 = and i32 %224, 2
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %296, label %227

227:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !annotation !32
  %228 = and i32 %224, 4096
  %229 = icmp eq i32 %228, 0
  %230 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 49
  br i1 %229, label %239, label %231

231:                                              ; preds = %227
  %232 = load i32, ptr %230, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %236 = load i8, ptr %235, align 2, !range !19
  %237 = icmp eq i8 %236, 0
  %238 = select i1 %237, i32 12, i32 16
  br label %239

239:                                              ; preds = %234, %227
  %240 = phi i32 [ %238, %234 ], [ 8, %227 ]
  store i32 %240, ptr %230, align 4
  br label %241

241:                                              ; preds = %239, %231
  %242 = phi i32 [ %232, %231 ], [ %240, %239 ]
  %243 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 48
  store i32 %242, ptr %243, align 16
  %244 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 78
  %245 = load i32, ptr %244, align 8
  %246 = mul i32 %245, %242
  %247 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 44
  store i32 %246, ptr %247, align 64
  %248 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 45
  store i32 512, ptr %248, align 4
  %249 = load ptr, ptr %7, align 64
  %250 = add i32 %246, 512
  %251 = call ptr @dma_alloc_attrs(ptr noundef %249, i32 noundef %250, ptr noundef nonnull %2, i32 noundef 3264, i32 noundef 0) #15
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %265

253:                                              ; preds = %241
  %254 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %255 = load ptr, ptr %254, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %253
  %258 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %259 = load ptr, ptr %258, align 4
  br label %260

260:                                              ; preds = %257, %253
  %261 = phi ptr [ %259, %257 ], [ %255, %253 ]
  %262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %261) #14
  %263 = load i32, ptr %135, align 4
  %264 = and i32 %263, -3
  store i32 %264, ptr %135, align 4
  br label %294

265:                                              ; preds = %241
  %266 = load i32, ptr %2, align 4
  %267 = load i32, ptr %248, align 4
  %268 = add i32 %267, %266
  %269 = and i32 %268, 7
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %288, label %271

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %273 = load ptr, ptr %272, align 4
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %277 = load ptr, ptr %276, align 4
  br label %278

278:                                              ; preds = %275, %271
  %279 = phi ptr [ %277, %275 ], [ %273, %271 ]
  %280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %279) #14
  %281 = load i32, ptr %135, align 4
  %282 = and i32 %281, -3
  store i32 %282, ptr %135, align 4
  %283 = load ptr, ptr %7, align 64
  %284 = load i32, ptr %248, align 4
  %285 = load i32, ptr %247, align 64
  %286 = add i32 %285, %284
  %287 = load i32, ptr %2, align 4
  call void @dma_free_attrs(ptr noundef %283, i32 noundef %286, ptr noundef nonnull %251, i32 noundef %287, i32 noundef 0) #15
  br label %294

288:                                              ; preds = %265
  %289 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 43
  store ptr %251, ptr %289, align 4
  %290 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 47
  store i32 %266, ptr %290, align 4
  %291 = getelementptr i8, ptr %251, i32 %267
  %292 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 42
  store ptr %291, ptr %292, align 8
  %293 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 46
  store i32 %268, ptr %293, align 8
  br label %294

294:                                              ; preds = %288, %278, %260
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %295 = load i32, ptr %135, align 4
  br label %296

296:                                              ; preds = %294, %223
  %297 = phi i32 [ %295, %294 ], [ %224, %223 ]
  %298 = and i32 %297, 3
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 12
  store i64 -1, ptr %301, align 16
  %302 = load ptr, ptr %7, align 64
  %303 = getelementptr inbounds %struct.device, ptr %302, i32 0, i32 16
  store ptr %301, ptr %303, align 4
  br label %304

304:                                              ; preds = %300, %296
  %305 = load i32, ptr %18, align 64
  %306 = icmp ugt i32 %305, 1
  %307 = load i32, ptr %86, align 4
  %308 = lshr i32 %307, 8
  %309 = select i1 %306, i32 255, i32 63
  %310 = and i32 %308, %309
  %311 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 18
  %312 = mul nuw nsw i32 %310, 1000000
  store i32 %312, ptr %311, align 4
  %313 = icmp eq i32 %310, 0
  br i1 %313, label %318, label %314

314:                                              ; preds = %304
  %315 = load i32, ptr %32, align 4
  %316 = and i32 %315, 33554432
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %336, label %318

318:                                              ; preds = %314, %304
  %319 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr inbounds %struct.sdhci_ops, ptr %320, i32 0, i32 11
  %322 = load ptr, ptr %321, align 4
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %334

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %326 = load ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %330 = load ptr, ptr %329, align 4
  br label %331

331:                                              ; preds = %328, %324
  %332 = phi ptr [ %330, %328 ], [ %326, %324 ]
  %333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %332) #14
  br label %898

334:                                              ; preds = %318
  %335 = call i32 %322(ptr noundef nonnull %0) #15
  store i32 %335, ptr %311, align 4
  br label %336

336:                                              ; preds = %334, %314
  %337 = phi i32 [ %312, %314 ], [ %335, %334 ]
  %338 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 57
  %339 = load i32, ptr %338, align 32
  %340 = lshr i32 %339, 16
  %341 = and i32 %340, 255
  %342 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 21
  %343 = icmp eq i32 %341, 0
  %344 = add nuw nsw i32 %341, 1
  %345 = select i1 %343, i32 0, i32 %344
  store i32 %345, ptr %342, align 16
  %346 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %347 = load ptr, ptr %346, align 4
  %348 = getelementptr inbounds %struct.sdhci_ops, ptr %347, i32 0, i32 12
  %349 = load ptr, ptr %348, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %353, label %351

351:                                              ; preds = %336
  %352 = call i32 %349(ptr noundef nonnull %0) #15
  br label %361

353:                                              ; preds = %336
  %354 = load i32, ptr %18, align 64
  %355 = icmp ugt i32 %354, 1
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = mul i32 %344, %337
  %358 = udiv i32 %337, 2046
  br label %361

359:                                              ; preds = %353
  %360 = lshr i32 %337, 8
  br label %361

361:                                              ; preds = %359, %356, %351
  %362 = phi i32 [ %358, %356 ], [ %360, %359 ], [ %352, %351 ]
  %363 = phi i32 [ %357, %356 ], [ %337, %359 ], [ %337, %351 ]
  %364 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 5
  store i32 %362, ptr %364, align 4
  %365 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 6
  %366 = load i32, ptr %365, align 16
  %367 = icmp eq i32 %366, 0
  %368 = icmp ugt i32 %366, %363
  %369 = select i1 %367, i1 true, i1 %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %361
  store i32 %363, ptr %365, align 16
  br label %371

371:                                              ; preds = %370, %361
  %372 = load i32, ptr %32, align 4
  %373 = and i32 %372, 16777216
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %417

375:                                              ; preds = %371
  %376 = load i32, ptr %86, align 4
  %377 = and i32 %376, 63
  %378 = and i32 %376, 128
  %379 = icmp eq i32 %378, 0
  %380 = mul nuw nsw i32 %377, 1000
  %381 = select i1 %379, i32 %377, i32 %380
  store i32 %381, ptr %16, align 8
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %402

383:                                              ; preds = %375
  %384 = load ptr, ptr %346, align 4
  %385 = getelementptr inbounds %struct.sdhci_ops, ptr %384, i32 0, i32 13
  %386 = load ptr, ptr %385, align 4
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %398

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %390 = load ptr, ptr %389, align 4
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %394 = load ptr, ptr %393, align 4
  br label %395

395:                                              ; preds = %392, %388
  %396 = phi ptr [ %394, %392 ], [ %390, %388 ]
  %397 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %396) #14
  br label %898

398:                                              ; preds = %383
  %399 = call i32 %386(ptr noundef nonnull %0) #15
  %400 = add i32 %399, 999
  %401 = udiv i32 %400, 1000
  store i32 %401, ptr %16, align 8
  br label %402

402:                                              ; preds = %398, %375
  %403 = icmp eq i32 %17, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %402
  store i32 %17, ptr %16, align 8
  br label %405

405:                                              ; preds = %404, %402
  %406 = load ptr, ptr %346, align 4
  %407 = getelementptr inbounds %struct.sdhci_ops, ptr %406, i32 0, i32 14
  %408 = load ptr, ptr %407, align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %412, label %410

410:                                              ; preds = %405
  %411 = call i32 %408(ptr noundef nonnull %0) #15
  br label %412

412:                                              ; preds = %410, %405
  %413 = phi i32 [ %411, %410 ], [ 134217728, %405 ]
  %414 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 26
  store i32 %413, ptr %414, align 4
  %415 = load i32, ptr %16, align 8
  %416 = udiv i32 %413, %415
  store i32 %416, ptr %414, align 4
  br label %417

417:                                              ; preds = %412, %371
  %418 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %419 = load i32, ptr %418, align 8
  %420 = and i32 %419, 131072
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %429, label %422

422:                                              ; preds = %417
  %423 = load ptr, ptr %346, align 4
  %424 = getelementptr inbounds %struct.sdhci_ops, ptr %423, i32 0, i32 14
  %425 = load ptr, ptr %424, align 4
  %426 = icmp eq ptr %425, null
  br i1 %426, label %427, label %429

427:                                              ; preds = %422
  %428 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 26
  store i32 0, ptr %428, align 4
  br label %429

429:                                              ; preds = %427, %422, %417
  %430 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %431 = load i32, ptr %430, align 8
  %432 = or i32 %431, 1073741832
  store i32 %432, ptr %430, align 8
  %433 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 17
  %434 = load i32, ptr %433, align 4
  %435 = or i32 %434, 131072
  store i32 %435, ptr %433, align 4
  %436 = load i32, ptr %32, align 4
  %437 = and i32 %436, 268435456
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %429
  %440 = load i32, ptr %135, align 4
  %441 = or i32 %440, 64
  store i32 %441, ptr %135, align 4
  br label %442

442:                                              ; preds = %439, %429
  %443 = load i32, ptr %18, align 64
  %444 = icmp ugt i32 %443, 1
  br i1 %444, label %445, label %459

445:                                              ; preds = %442
  %446 = load i32, ptr %135, align 4
  %447 = and i32 %446, 3
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %449, label %453

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %451 = load i8, ptr %450, align 2, !range !19
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %459, label %453

453:                                              ; preds = %449, %445
  %454 = load i32, ptr %418, align 8
  %455 = and i32 %454, 16384
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %453
  %458 = or i32 %446, 128
  store i32 %458, ptr %135, align 4
  br label %459

459:                                              ; preds = %457, %453, %449, %442
  %460 = and i32 %436, 4194304
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %459
  %463 = load i32, ptr %430, align 8
  %464 = or i32 %463, 1
  store i32 %464, ptr %430, align 8
  br label %465

465:                                              ; preds = %462, %459
  %466 = load i32, ptr %418, align 8
  %467 = and i32 %466, 2
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %465
  %470 = load i32, ptr %430, align 8
  %471 = and i32 %470, -1073741825
  store i32 %471, ptr %430, align 8
  br label %472

472:                                              ; preds = %469, %465
  %473 = load i32, ptr %86, align 4
  %474 = and i32 %473, 2097152
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %479, label %476

476:                                              ; preds = %472
  %477 = load i32, ptr %430, align 8
  %478 = or i32 %477, 6
  store i32 %478, ptr %430, align 8
  br label %479

479:                                              ; preds = %476, %472
  %480 = load i32, ptr %32, align 4
  %481 = and i32 %480, 32768
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %493, label %483

483:                                              ; preds = %479
  %484 = load i32, ptr %430, align 8
  %485 = and i32 %484, 256
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %483
  %488 = call i32 @mmc_gpio_get_cd(ptr noundef %7) #15
  %489 = icmp slt i32 %488, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %487
  %491 = load i32, ptr %430, align 8
  %492 = or i32 %491, 32
  store i32 %492, ptr %430, align 8
  br label %493

493:                                              ; preds = %490, %487, %483, %479
  %494 = load ptr, ptr %9, align 4
  %495 = icmp ugt ptr %494, inttoptr (i32 -4096 to ptr)
  br i1 %495, label %530, label %496

496:                                              ; preds = %493
  br i1 %11, label %497, label %503

497:                                              ; preds = %496
  %498 = call i32 @regulator_enable(ptr noundef %494) #15
  %499 = icmp eq i32 %498, 0
  %500 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 59
  %501 = zext i1 %499 to i8
  store i8 %501, ptr %500, align 1
  %502 = load ptr, ptr %9, align 4
  br label %503

503:                                              ; preds = %497, %496
  %504 = phi ptr [ %502, %497 ], [ %494, %496 ]
  %505 = phi i32 [ %498, %497 ], [ %213, %496 ]
  %506 = call i32 @regulator_is_supported_voltage(ptr noundef %504, i32 noundef 1700000, i32 noundef 1950000) #15
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %503
  %509 = load i32, ptr %338, align 32
  %510 = and i32 %509, -8
  store i32 %510, ptr %338, align 32
  br label %511

511:                                              ; preds = %508, %503
  %512 = load ptr, ptr %9, align 4
  %513 = call i32 @regulator_is_supported_voltage(ptr noundef %512, i32 noundef 2700000, i32 noundef 3600000) #15
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %515, label %518

515:                                              ; preds = %511
  %516 = load i32, ptr %135, align 4
  %517 = and i32 %516, -16385
  store i32 %517, ptr %135, align 4
  br label %518

518:                                              ; preds = %515, %511
  %519 = icmp eq i32 %505, 0
  br i1 %519, label %530, label %520

520:                                              ; preds = %518
  %521 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %522 = load ptr, ptr %521, align 4
  %523 = icmp eq ptr %522, null
  br i1 %523, label %524, label %527

524:                                              ; preds = %520
  %525 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %526 = load ptr, ptr %525, align 4
  br label %527

527:                                              ; preds = %524, %520
  %528 = phi ptr [ %526, %524 ], [ %522, %520 ]
  %529 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %528, i32 noundef %505) #14
  store ptr inttoptr (i32 -22 to ptr), ptr %9, align 4
  br label %530

530:                                              ; preds = %527, %518, %493
  %531 = load i32, ptr %418, align 8
  %532 = and i32 %531, 4
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %541, label %534

534:                                              ; preds = %530
  %535 = load i32, ptr %338, align 32
  %536 = and i32 %535, -8
  store i32 %536, ptr %338, align 32
  %537 = load i32, ptr %433, align 4
  %538 = and i32 %537, -1081377
  store i32 %538, ptr %433, align 4
  %539 = load i32, ptr %430, align 8
  %540 = and i32 %539, -2035713
  store i32 %540, ptr %430, align 8
  br label %541

541:                                              ; preds = %534, %530
  %542 = load i32, ptr %338, align 32
  %543 = and i32 %542, 7
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %549, label %545

545:                                              ; preds = %541
  %546 = load i32, ptr %430, align 8
  %547 = or i32 %546, 196608
  store i32 %547, ptr %430, align 8
  %548 = load i32, ptr %338, align 32
  br label %549

549:                                              ; preds = %545, %541
  %550 = phi i32 [ %548, %545 ], [ %542, %541 ]
  %551 = and i32 %550, 2
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %562, label %553

553:                                              ; preds = %549
  %554 = load i32, ptr %430, align 8
  %555 = or i32 %554, 786432
  store i32 %555, ptr %430, align 8
  %556 = load i32, ptr %418, align 8
  %557 = and i32 %556, 64
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %568

559:                                              ; preds = %553
  %560 = load i32, ptr %433, align 4
  %561 = or i32 %560, 96
  store i32 %561, ptr %433, align 4
  br label %568

562:                                              ; preds = %549
  %563 = and i32 %550, 1
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %568, label %565

565:                                              ; preds = %562
  %566 = load i32, ptr %430, align 8
  %567 = or i32 %566, 262144
  store i32 %567, ptr %430, align 8
  br label %568

568:                                              ; preds = %565, %562, %559, %553
  %569 = load i32, ptr %418, align 8
  %570 = and i32 %569, 2048
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %578, label %572

572:                                              ; preds = %568
  %573 = load i32, ptr %338, align 32
  %574 = icmp sgt i32 %573, -1
  br i1 %574, label %578, label %575

575:                                              ; preds = %572
  %576 = load i32, ptr %433, align 4
  %577 = or i32 %576, 98304
  store i32 %577, ptr %433, align 4
  br label %578

578:                                              ; preds = %575, %572, %568
  %579 = load i32, ptr %433, align 4
  %580 = and i32 %579, 65600
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %593, label %582

582:                                              ; preds = %578
  %583 = load ptr, ptr %9, align 4
  %584 = icmp ugt ptr %583, inttoptr (i32 -4096 to ptr)
  br i1 %584, label %590, label %585

585:                                              ; preds = %582
  %586 = call i32 @regulator_is_supported_voltage(ptr noundef %583, i32 noundef 1100000, i32 noundef 1300000) #15
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %593

588:                                              ; preds = %585
  %589 = load i32, ptr %433, align 4
  br label %590

590:                                              ; preds = %588, %582
  %591 = phi i32 [ %589, %588 ], [ %579, %582 ]
  %592 = and i32 %591, -65601
  store i32 %592, ptr %433, align 4
  br label %593

593:                                              ; preds = %590, %585, %578
  %594 = load i32, ptr %338, align 32
  %595 = and i32 %594, 4
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %605, label %597

597:                                              ; preds = %593
  %598 = load i32, ptr %418, align 8
  %599 = and i32 %598, 128
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %605

601:                                              ; preds = %597
  %602 = load i32, ptr %430, align 8
  %603 = or i32 %602, 1048576
  store i32 %603, ptr %430, align 8
  %604 = load i32, ptr %338, align 32
  br label %605

605:                                              ; preds = %601, %597, %593
  %606 = phi i32 [ %604, %601 ], [ %594, %597 ], [ %594, %593 ]
  %607 = and i32 %606, 8192
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %612, label %609

609:                                              ; preds = %605
  %610 = load i32, ptr %135, align 4
  %611 = or i32 %610, 16
  store i32 %611, ptr %135, align 4
  br label %612

612:                                              ; preds = %609, %605
  %613 = and i32 %606, 16
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %619, label %615

615:                                              ; preds = %612
  %616 = load i32, ptr %430, align 8
  %617 = or i32 %616, 8388608
  store i32 %617, ptr %430, align 8
  %618 = load i32, ptr %338, align 32
  br label %619

619:                                              ; preds = %615, %612
  %620 = phi i32 [ %618, %615 ], [ %606, %612 ]
  %621 = and i32 %620, 32
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %627, label %623

623:                                              ; preds = %619
  %624 = load i32, ptr %430, align 8
  %625 = or i32 %624, 16777216
  store i32 %625, ptr %430, align 8
  %626 = load i32, ptr %338, align 32
  br label %627

627:                                              ; preds = %623, %619
  %628 = phi i32 [ %626, %623 ], [ %620, %619 ]
  %629 = and i32 %628, 64
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %635, label %631

631:                                              ; preds = %627
  %632 = load i32, ptr %430, align 8
  %633 = or i32 %632, 33554432
  store i32 %633, ptr %430, align 8
  %634 = load i32, ptr %338, align 32
  br label %635

635:                                              ; preds = %631, %627
  %636 = phi i32 [ %628, %627 ], [ %634, %631 ]
  %637 = lshr i32 %636, 8
  %638 = and i32 %637, 15
  %639 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 72
  %640 = icmp eq i32 %638, 0
  %641 = add nsw i32 %638, -1
  %642 = shl nuw nsw i32 1, %641
  %643 = select i1 %640, i32 0, i32 %642
  store i32 %643, ptr %639, align 32
  %644 = lshr i32 %636, 14
  %645 = and i32 %644, 3
  %646 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 73
  store i32 %645, ptr %646, align 4
  %647 = load ptr, ptr %346, align 4
  %648 = load ptr, ptr %647, align 4
  %649 = icmp eq ptr %648, null
  br i1 %649, label %652, label %650, !prof !8

650:                                              ; preds = %635
  %651 = call i32 %648(ptr noundef nonnull %0, i32 noundef 72) #15
  br label %657

652:                                              ; preds = %635
  %653 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %654 = load ptr, ptr %653, align 16
  %655 = getelementptr i8, ptr %654, i32 72
  %656 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %655) #15, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %657

657:                                              ; preds = %652, %650
  %658 = phi i32 [ %651, %650 ], [ %656, %652 ]
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %670

660:                                              ; preds = %657
  %661 = load ptr, ptr %8, align 4
  %662 = icmp ugt ptr %661, inttoptr (i32 -4096 to ptr)
  br i1 %662, label %670, label %663

663:                                              ; preds = %660
  %664 = call i32 @regulator_get_current_limit(ptr noundef %661) #15
  %665 = icmp sgt i32 %664, 0
  br i1 %665, label %666, label %670

666:                                              ; preds = %663
  %667 = udiv i32 %664, 4000
  %668 = call i32 @llvm.umin.i32(i32 %667, i32 255)
  %669 = mul nuw nsw i32 %668, 65793
  br label %670

670:                                              ; preds = %666, %663, %660, %657
  %671 = phi i32 [ %658, %657 ], [ 0, %660 ], [ %669, %666 ], [ 0, %663 ]
  %672 = load i32, ptr %86, align 4
  %673 = and i32 %672, 16777216
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %680, label %675

675:                                              ; preds = %670
  %676 = shl i32 %671, 2
  %677 = and i32 %676, 1020
  %678 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 13
  store i32 %677, ptr %678, align 4
  %679 = load i32, ptr %86, align 4
  br label %680

680:                                              ; preds = %675, %670
  %681 = phi i32 [ %679, %675 ], [ %672, %670 ]
  %682 = phi i32 [ 3145728, %675 ], [ 0, %670 ]
  %683 = and i32 %681, 33554432
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %691, label %685

685:                                              ; preds = %680
  %686 = or i32 %682, 393216
  %687 = lshr i32 %671, 6
  %688 = and i32 %687, 1020
  %689 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 14
  store i32 %688, ptr %689, align 16
  %690 = load i32, ptr %86, align 4
  br label %691

691:                                              ; preds = %685, %680
  %692 = phi i32 [ %690, %685 ], [ %681, %680 ]
  %693 = phi i32 [ %686, %685 ], [ %682, %680 ]
  %694 = and i32 %692, 67108864
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %701, label %696

696:                                              ; preds = %691
  %697 = or i32 %693, 128
  %698 = lshr i32 %671, 14
  %699 = and i32 %698, 1020
  %700 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 15
  store i32 %699, ptr %700, align 4
  br label %701

701:                                              ; preds = %696, %691
  %702 = phi i32 [ %697, %696 ], [ %693, %691 ]
  %703 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 63
  %704 = load i32, ptr %703, align 4
  %705 = icmp eq i32 %704, 0
  %706 = select i1 %705, i32 %702, i32 %704
  %707 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 8
  %708 = load i32, ptr %707, align 8
  %709 = icmp eq i32 %708, 0
  %710 = select i1 %709, i32 %706, i32 %708
  store i32 %710, ptr %707, align 8
  %711 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 9
  store i32 %710, ptr %711, align 4
  %712 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 60
  %713 = load i32, ptr %712, align 8
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %717, label %715

715:                                              ; preds = %701
  %716 = and i32 %713, %710
  store i32 %716, ptr %711, align 4
  br label %717

717:                                              ; preds = %715, %701
  %718 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 10
  store i32 %710, ptr %718, align 64
  %719 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 61
  %720 = load i32, ptr %719, align 4
  %721 = icmp eq i32 %720, 0
  %722 = select i1 %721, i32 -129, i32 %720
  %723 = and i32 %722, %710
  store i32 %723, ptr %718, align 64
  %724 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 11
  store i32 %710, ptr %724, align 4
  %725 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 62
  %726 = load i32, ptr %725, align 16
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %730, label %728

728:                                              ; preds = %717
  %729 = and i32 %726, %710
  store i32 %729, ptr %724, align 4
  br label %730

730:                                              ; preds = %728, %717
  %731 = icmp eq i32 %710, 0
  br i1 %731, label %732, label %742

732:                                              ; preds = %730
  %733 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %734 = load ptr, ptr %733, align 4
  %735 = icmp eq ptr %734, null
  br i1 %735, label %736, label %739

736:                                              ; preds = %732
  %737 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %738 = load ptr, ptr %737, align 4
  br label %739

739:                                              ; preds = %736, %732
  %740 = phi ptr [ %738, %736 ], [ %734, %732 ]
  %741 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %740) #14
  br label %890

742:                                              ; preds = %730
  %743 = load i32, ptr %430, align 8
  %744 = and i32 %743, 2035712
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %750

746:                                              ; preds = %742
  %747 = load i32, ptr %433, align 4
  %748 = and i32 %747, 32800
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %754, label %750

750:                                              ; preds = %746, %742
  %751 = load i32, ptr %135, align 4
  %752 = or i32 %751, 32768
  store i32 %752, ptr %135, align 4
  %753 = load i32, ptr %433, align 4
  br label %754

754:                                              ; preds = %750, %746
  %755 = phi i32 [ %753, %750 ], [ %747, %746 ]
  %756 = and i32 %755, 65600
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %761, label %758

758:                                              ; preds = %754
  %759 = load i32, ptr %135, align 4
  %760 = or i32 %759, 65536
  store i32 %760, ptr %135, align 4
  br label %761

761:                                              ; preds = %758, %754
  %762 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  store i32 0, ptr %762, align 8
  %763 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 23
  store i32 524288, ptr %763, align 16
  %764 = load i32, ptr %135, align 4
  %765 = and i32 %764, 2
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %769, label %767

767:                                              ; preds = %761
  %768 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 21
  store i16 128, ptr %768, align 4
  br label %778

769:                                              ; preds = %761
  %770 = and i32 %764, 1
  %771 = icmp eq i32 %770, 0
  %772 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 21
  br i1 %771, label %777, label %773

773:                                              ; preds = %769
  store i16 1, ptr %772, align 4
  %774 = load ptr, ptr %7, align 64
  %775 = call i32 @dma_max_mapping_size(ptr noundef %774) #15
  %776 = call i32 @llvm.umin.i32(i32 %775, i32 524288)
  store i32 %776, ptr %763, align 16
  br label %778

777:                                              ; preds = %769
  store i16 128, ptr %772, align 4
  br label %778

778:                                              ; preds = %777, %773, %767
  %779 = phi i32 [ %776, %773 ], [ 524288, %777 ], [ 524288, %767 ]
  %780 = load i32, ptr %135, align 4
  %781 = and i32 %780, 2
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %789, label %783

783:                                              ; preds = %778
  %784 = load i32, ptr %32, align 4
  %785 = and i32 %784, 1073741824
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %789, label %787

787:                                              ; preds = %783
  %788 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 41
  store i32 65532, ptr %788, align 4
  br label %789

789:                                              ; preds = %787, %783, %778
  %790 = phi i32 [ 65535, %787 ], [ 65536, %783 ], [ %779, %778 ]
  %791 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 20
  store i32 %790, ptr %791, align 8
  %792 = load i32, ptr %32, align 4
  %793 = and i32 %792, 1048576
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %797, label %795

795:                                              ; preds = %789
  %796 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 24
  store i32 2, ptr %796, align 4
  br label %813

797:                                              ; preds = %789
  %798 = load i32, ptr %86, align 4
  %799 = lshr i32 %798, 16
  %800 = and i32 %799, 3
  %801 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 24
  store i32 %800, ptr %801, align 4
  %802 = icmp eq i32 %800, 3
  br i1 %802, label %803, label %813

803:                                              ; preds = %797
  %804 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1, i32 3
  %805 = load ptr, ptr %804, align 4
  %806 = icmp eq ptr %805, null
  br i1 %806, label %807, label %810

807:                                              ; preds = %803
  %808 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 1
  %809 = load ptr, ptr %808, align 4
  br label %810

810:                                              ; preds = %807, %803
  %811 = phi ptr [ %809, %807 ], [ %805, %803 ]
  %812 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %811) #14
  store i32 0, ptr %801, align 4
  br label %813

813:                                              ; preds = %810, %797, %795
  %814 = phi i32 [ %800, %797 ], [ 0, %810 ], [ 2, %795 ]
  %815 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 24
  %816 = shl nuw nsw i32 512, %814
  store i32 %816, ptr %815, align 4
  %817 = load i32, ptr %32, align 4
  %818 = and i32 %817, 2097152
  %819 = icmp eq i32 %818, 0
  %820 = select i1 %819, i32 65535, i32 1
  %821 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 25
  store i32 %820, ptr %821, align 8
  %822 = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 21
  %823 = load i16, ptr %822, align 4
  %824 = icmp eq i16 %823, 1
  br i1 %824, label %825, label %914

825:                                              ; preds = %813
  %826 = load ptr, ptr %6, align 8
  %827 = getelementptr inbounds %struct.mmc_host, ptr %826, i32 0, i32 23
  %828 = load i32, ptr %827, align 16
  %829 = call i32 @llvm.umin.i32(i32 %828, i32 65536) #15
  %830 = lshr i32 %829, 9
  %831 = load ptr, ptr %826, align 64
  %832 = call noalias ptr @devm_kmalloc(ptr noundef %831, i32 noundef %829, i32 noundef 3264) #15
  %833 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 6
  store ptr %832, ptr %833, align 8
  %834 = icmp eq ptr %832, null
  br i1 %834, label %835, label %845

835:                                              ; preds = %825
  %836 = getelementptr inbounds %struct.mmc_host, ptr %826, i32 0, i32 1, i32 3
  %837 = load ptr, ptr %836, align 4
  %838 = icmp eq ptr %837, null
  br i1 %838, label %839, label %842

839:                                              ; preds = %835
  %840 = getelementptr inbounds %struct.mmc_host, ptr %826, i32 0, i32 1
  %841 = load ptr, ptr %840, align 4
  br label %842

842:                                              ; preds = %839, %835
  %843 = phi ptr [ %841, %839 ], [ %837, %835 ]
  %844 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %843, i32 noundef %829) #14
  br label %914

845:                                              ; preds = %825
  %846 = load ptr, ptr %826, align 64
  %847 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %832) #15
  %848 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  %849 = xor i1 %848, true
  %850 = select i1 %847, i1 %849, i1 false
  br i1 %850, label %851, label %860, !prof !28

851:                                              ; preds = %845
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %852 = call ptr @dev_driver_string(ptr noundef %846) #15
  %853 = getelementptr inbounds %struct.device, ptr %846, i32 0, i32 3
  %854 = load ptr, ptr %853, align 4
  %855 = icmp eq ptr %854, null
  br i1 %855, label %856, label %858

856:                                              ; preds = %851
  %857 = load ptr, ptr %846, align 4
  br label %858

858:                                              ; preds = %856, %851
  %859 = phi ptr [ %857, %856 ], [ %854, %851 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %852, ptr noundef %859) #15
  br label %860

860:                                              ; preds = %858, %845
  br i1 %847, label %861, label %863

861:                                              ; preds = %860
  %862 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 7
  store i32 -1, ptr %862, align 4
  br label %873

863:                                              ; preds = %860
  %864 = load ptr, ptr @mem_map, align 4
  %865 = ptrtoint ptr %832 to i32
  %866 = add i32 %865, 1073741824
  %867 = lshr i32 %866, 12
  %868 = getelementptr %struct.page, ptr %864, i32 %867
  %869 = and i32 %865, 4095
  %870 = call i32 @dma_map_page_attrs(ptr noundef %846, ptr noundef %868, i32 noundef %869, i32 noundef %829, i32 noundef 0, i32 noundef 0) #15
  %871 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 7
  store i32 %870, ptr %871, align 4
  %872 = icmp eq i32 %870, -1
  br i1 %872, label %873, label %876

873:                                              ; preds = %863, %861
  %874 = load ptr, ptr %826, align 64
  %875 = load ptr, ptr %833, align 8
  call void @devm_kfree(ptr noundef %874, ptr noundef %875) #15
  store ptr null, ptr %833, align 8
  br label %914

876:                                              ; preds = %863
  %877 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 8
  store i32 %829, ptr %877, align 32
  %878 = trunc i32 %830 to i16
  %879 = getelementptr inbounds %struct.mmc_host, ptr %826, i32 0, i32 21
  store i16 %878, ptr %879, align 4
  %880 = getelementptr inbounds %struct.mmc_host, ptr %826, i32 0, i32 20
  store i32 %829, ptr %880, align 8
  store i32 %829, ptr %827, align 16
  %881 = getelementptr inbounds %struct.mmc_host, ptr %826, i32 0, i32 1, i32 3
  %882 = load ptr, ptr %881, align 4
  %883 = icmp eq ptr %882, null
  br i1 %883, label %884, label %887

884:                                              ; preds = %876
  %885 = getelementptr inbounds %struct.mmc_host, ptr %826, i32 0, i32 1
  %886 = load ptr, ptr %885, align 4
  br label %887

887:                                              ; preds = %884, %876
  %888 = phi ptr [ %886, %884 ], [ %882, %876 ]
  %889 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %888, i32 noundef %830, i32 noundef %829) #14
  br label %914

890:                                              ; preds = %739, %125
  %891 = phi i32 [ %127, %125 ], [ -19, %739 ]
  %892 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 59
  %893 = load i8, ptr %892, align 1, !range !19
  %894 = icmp eq i8 %893, 0
  br i1 %894, label %898, label %895

895:                                              ; preds = %890
  %896 = load ptr, ptr %9, align 4
  %897 = call i32 @regulator_disable(ptr noundef %896) #15
  br label %898

898:                                              ; preds = %895, %890, %395, %331
  %899 = phi i32 [ %891, %895 ], [ %891, %890 ], [ -19, %395 ], [ -19, %331 ]
  %900 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 43
  %901 = load ptr, ptr %900, align 4
  %902 = icmp eq ptr %901, null
  br i1 %902, label %912, label %903

903:                                              ; preds = %898
  %904 = load ptr, ptr %7, align 64
  %905 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 45
  %906 = load i32, ptr %905, align 4
  %907 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 44
  %908 = load i32, ptr %907, align 64
  %909 = add i32 %908, %906
  %910 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 47
  %911 = load i32, ptr %910, align 4
  call void @dma_free_attrs(ptr noundef %904, i32 noundef %909, ptr noundef nonnull %901, i32 noundef %911, i32 noundef 0) #15
  br label %912

912:                                              ; preds = %903, %898
  %913 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 42
  store ptr null, ptr %913, align 8
  store ptr null, ptr %900, align 4
  br label %914

914:                                              ; preds = %912, %887, %873, %842, %813, %12, %4
  %915 = phi i32 [ -22, %4 ], [ %899, %912 ], [ %13, %12 ], [ 0, %813 ], [ 0, %842 ], [ 0, %873 ], [ 0, %887 ]
  ret i32 %915
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_max_mapping_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_cleanup_host(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 59
  %5 = load i8, ptr %4, align 1, !range !19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 54, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regulator_disable(ptr noundef %9) #15
  br label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 43
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 64
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 45
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 44
  %20 = load i32, ptr %19, align 64
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 47
  %23 = load i32, ptr %22, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef %21, ptr noundef nonnull %13, i32 noundef %23, i32 noundef 0) #15
  br label %24

24:                                               ; preds = %15, %11
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 30
  %26 = load i8, ptr %25, align 1, !range !19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 55
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @dma_release_channel(ptr noundef nonnull %30) #15
  store ptr null, ptr %29, align 8
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 54
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @dma_release_channel(ptr noundef nonnull %35) #15
  store ptr null, ptr %34, align 4
  br label %38

38:                                               ; preds = %37, %33
  store i8 0, ptr %25, align 1
  br label %39

39:                                               ; preds = %38, %24
  %40 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 42
  store ptr null, ptr %40, align 8
  store ptr null, ptr %12, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__sdhci_add_host(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8388608
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 131072
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = and i32 %5, -8388609
  store i32 %14, ptr %4, align 4
  %15 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 61
  store ptr null, ptr %15, align 4
  br label %16

16:                                               ; preds = %13, %8, %1
  %17 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.42, i32 noundef 26, i32 noundef 0) #15
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 50
  store ptr %17, ptr %18, align 8
  %19 = icmp eq ptr %17, null
  br i1 %19, label %189, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 51
  store i32 -32, ptr %21, align 4
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 51, i32 1
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 51, i32 1, i32 1
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 51, i32 2
  store ptr @sdhci_complete_work, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 52
  tail call void @init_timer_key(ptr noundef %25, ptr noundef nonnull @sdhci_timeout_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %26 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 53
  tail call void @init_timer_key(ptr noundef %26, ptr noundef nonnull @sdhci_timeout_data_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #15
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 70
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str.43, ptr noundef nonnull @__sdhci_add_host.__key) #15
  tail call fastcc void @sdhci_init(ptr noundef %0, i32 noundef 0)
  %28 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 1, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load ptr, ptr %30, align 4
  br label %36

36:                                               ; preds = %34, %20
  %37 = phi ptr [ %35, %34 ], [ %32, %20 ]
  %38 = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @sdhci_irq, ptr noundef nonnull @sdhci_thread_irq, i32 noundef 128, ptr noundef %37, ptr noundef %0) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %31, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load ptr, ptr %30, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi ptr [ %44, %43 ], [ %41, %40 ]
  %47 = load i32, ptr %28, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %46, i32 noundef %47, i32 noundef %38) #14
  br label %186

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 524288
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %87

54:                                               ; preds = %49
  %55 = load ptr, ptr %2, align 8
  %56 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 14
  %57 = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 1
  %58 = getelementptr inbounds %struct.mmc_host, ptr %55, i32 0, i32 1, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load ptr, ptr %57, align 4
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi ptr [ %62, %61 ], [ %59, %54 ]
  %65 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %56, i32 noundef 32, ptr noundef nonnull @.str.80, ptr noundef %64) #15
  %66 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 13
  store ptr %56, ptr %66, align 8
  %67 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 13, i32 1
  store i32 0, ptr %67, align 4
  %68 = load ptr, ptr %58, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load ptr, ptr %57, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi ptr [ %71, %70 ], [ %68, %63 ]
  %74 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 13, i32 14
  store ptr %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 13, i32 5
  store ptr @sdhci_led_control, ptr %75, align 4
  %76 = load ptr, ptr %55, align 64
  %77 = tail call i32 @led_classdev_register_ext(ptr noundef %76, ptr noundef %66, ptr noundef null) #15
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %31, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load ptr, ptr %30, align 4
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi ptr [ %83, %82 ], [ %80, %79 ]
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %85, i32 noundef %77) #14
  br label %131

87:                                               ; preds = %72, %49
  %88 = tail call i32 @mmc_add_host(ptr noundef %3) #15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %87
  %91 = load ptr, ptr %31, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load ptr, ptr %30, align 4
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi ptr [ %94, %93 ], [ %91, %90 ]
  %97 = load ptr, ptr %0, align 64
  %98 = load ptr, ptr %3, align 64
  %99 = getelementptr inbounds %struct.device, ptr %98, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load ptr, ptr %98, align 4
  br label %104

104:                                              ; preds = %102, %95
  %105 = phi ptr [ %103, %102 ], [ %100, %95 ]
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 30
  %107 = load i8, ptr %106, align 1, !range !19
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = and i32 %111, 4096
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, ptr @.str.49, ptr @.str.48
  br label %122

118:                                              ; preds = %109
  %119 = and i32 %111, 1
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, ptr @.str.51, ptr @.str.50
  br label %122

122:                                              ; preds = %118, %114, %104
  %123 = phi ptr [ @.str.47, %104 ], [ %117, %114 ], [ %121, %118 ]
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %96, ptr noundef %97, ptr noundef %105, ptr noundef nonnull %123) #14
  tail call fastcc void @sdhci_set_card_detection(ptr noundef %0, i1 noundef zeroext true) #15
  br label %189

125:                                              ; preds = %87
  %126 = load i32, ptr %50, align 4
  %127 = and i32 %126, 524288
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 13
  tail call void @led_classdev_unregister(ptr noundef %130) #15
  br label %131

131:                                              ; preds = %129, %125, %84
  %132 = phi i32 [ %77, %84 ], [ %88, %125 ], [ %88, %129 ]
  %133 = load i32, ptr %50, align 4
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %144, label %136

136:                                              ; preds = %131
  %137 = load ptr, ptr %2, align 8
  %138 = getelementptr inbounds %struct.mmc_host, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.mmc_host_ops, ptr %139, i32 0, i32 6
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i32 %141(ptr noundef %137) #15
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %162, label %144

144:                                              ; preds = %136, %131
  %145 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.sdhci_ops, ptr %146, i32 0, i32 19
  %148 = load ptr, ptr %147, align 4
  tail call void %148(ptr noundef %0, i8 noundef zeroext 1) #15
  %149 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %150 = load i32, ptr %149, align 4
  %151 = and i32 %150, 3
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %144
  %154 = load ptr, ptr %145, align 4
  %155 = getelementptr inbounds %struct.sdhci_ops, ptr %154, i32 0, i32 10
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %153
  %159 = tail call i32 %156(ptr noundef %0) #15
  br label %160

160:                                              ; preds = %158, %153, %144
  %161 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 26
  store i8 0, ptr %161, align 1
  br label %162

162:                                              ; preds = %160, %136
  %163 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %164 = load ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.sdhci_ops, ptr %164, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168, !prof !8

168:                                              ; preds = %162
  tail call void %166(ptr noundef %0, i32 noundef 0, i32 noundef 52) #15
  br label %173

169:                                              ; preds = %162
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %170 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %171 = load ptr, ptr %170, align 16
  %172 = getelementptr i8, ptr %171, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 0) #15, !srcloc !25
  br label %173

173:                                              ; preds = %169, %168
  %174 = load ptr, ptr %163, align 4
  %175 = getelementptr inbounds %struct.sdhci_ops, ptr %174, i32 0, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178, !prof !8

178:                                              ; preds = %173
  tail call void %176(ptr noundef %0, i32 noundef 0, i32 noundef 56) #15
  br label %183

179:                                              ; preds = %173
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %180 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %181 = load ptr, ptr %180, align 16
  %182 = getelementptr i8, ptr %181, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %182, i32 0) #15, !srcloc !25
  br label %183

183:                                              ; preds = %179, %178
  %184 = load i32, ptr %28, align 4
  %185 = tail call ptr @free_irq(i32 noundef %184, ptr noundef %0) #15
  br label %186

186:                                              ; preds = %183, %45
  %187 = phi i32 [ %38, %45 ], [ %132, %183 ]
  %188 = load ptr, ptr %18, align 8
  tail call void @destroy_workqueue(ptr noundef %188) #15
  br label %189

189:                                              ; preds = %186, %122, %16
  %190 = phi i32 [ %187, %186 ], [ 0, %122 ], [ -12, %16 ]
  ret i32 %190
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_complete_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -540
  br label %3

3:                                                ; preds = %3, %1
  %4 = tail call fastcc zeroext i1 @sdhci_request_done(ptr noundef %2)
  br i1 %4, label %5, label %3

5:                                                ; preds = %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_timeout_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -556
  %3 = getelementptr i8, ptr %0, i32 -180
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr i8, ptr %0, i32 -128
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_command, ptr %6, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %0, i32 -516
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.mmc_host, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi ptr [ %25, %23 ], [ %21, %17 ]
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %27) #14
  tail call void @sdhci_dumpregs(ptr noundef %2)
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.mmc_command, ptr %29, i32 0, i32 5
  store i32 -110, ptr %30, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr inbounds %struct.mmc_command, ptr %31, i32 0, i32 8
  %33 = load ptr, ptr %32, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %2, ptr noundef %33) #15
  %34 = getelementptr i8, ptr %0, i32 -20
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %0, i32 -16
  %37 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %35, ptr noundef %36) #15
  br label %38

38:                                               ; preds = %26, %12, %8, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_timeout_data_timer(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -576
  %3 = getelementptr i8, ptr %0, i32 -200
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr i8, ptr %0, i32 -136
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -144
  %10 = load ptr, ptr %9, align 16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 -148
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %62, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mmc_command, ptr %14, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %62, label %25

25:                                               ; preds = %20, %16, %8, %1
  %26 = getelementptr i8, ptr %0, i32 -536
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.mmc_host, ptr %27, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi ptr [ %33, %31 ], [ %29, %25 ]
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %35) #14
  tail call void @sdhci_dumpregs(ptr noundef %2)
  %37 = load ptr, ptr %5, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.mmc_data, ptr %37, i32 0, i32 5
  store i32 -110, ptr %40, align 4
  tail call fastcc void @__sdhci_finish_data(ptr noundef %2, i1 noundef zeroext true)
  br label %57

41:                                               ; preds = %34
  %42 = getelementptr i8, ptr %0, i32 -144
  %43 = load ptr, ptr %42, align 16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.mmc_command, ptr %43, i32 0, i32 5
  store i32 -110, ptr %46, align 4
  %47 = load ptr, ptr %42, align 16
  %48 = getelementptr inbounds %struct.mmc_command, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %2, ptr noundef %49) #15
  br label %57

50:                                               ; preds = %41
  %51 = getelementptr i8, ptr %0, i32 -148
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.mmc_command, ptr %52, i32 0, i32 5
  store i32 -110, ptr %53, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.mmc_command, ptr %54, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %2, ptr noundef %56) #15
  br label %57

57:                                               ; preds = %50, %45, %39
  %58 = getelementptr i8, ptr %0, i32 -40
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr i8, ptr %0, i32 -36
  %61 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %59, ptr noundef %60) #15
  br label %62

62:                                               ; preds = %57, %20, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sdhci_add_host(ptr noundef %0) #0 {
  %2 = tail call i32 @sdhci_setup_host(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @__sdhci_add_host(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @sdhci_cleanup_host(ptr noundef %0)
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %5, %7 ], [ %2, %1 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_remove_host(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %60, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = or i32 %10, 8
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 34
  %17 = load ptr, ptr %16, align 16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %53, label %19

19:                                               ; preds = %15, %6
  %20 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %25, %23 ], [ %21, %19 ]
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %27) #14
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 34
  %30 = load ptr, ptr %29, align 16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.mmc_command, ptr %30, i32 0, i32 5
  store i32 -123, ptr %33, align 4
  %34 = load ptr, ptr %29, align 16
  %35 = getelementptr inbounds %struct.mmc_command, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %0, ptr noundef %36) #15
  %37 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 50
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 51
  %40 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %39) #15
  br label %41

41:                                               ; preds = %32, %26
  %42 = load ptr, ptr %12, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.mmc_command, ptr %42, i32 0, i32 5
  store i32 -123, ptr %45, align 4
  %46 = load ptr, ptr %12, align 4
  %47 = getelementptr inbounds %struct.mmc_command, ptr %46, i32 0, i32 8
  %48 = load ptr, ptr %47, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %0, ptr noundef %48) #15
  %49 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 50
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 51
  %52 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %50, ptr noundef %51) #15
  br label %53

53:                                               ; preds = %44, %41, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #15
  tail call fastcc void @sdhci_set_card_detection(ptr noundef %0, i1 noundef zeroext false) #15
  tail call void @mmc_remove_host(ptr noundef %4) #15
  %54 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 524288
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 13
  tail call void @led_classdev_unregister(ptr noundef %59) #15
  br label %98

60:                                               ; preds = %2
  tail call fastcc void @sdhci_set_card_detection(ptr noundef %0, i1 noundef zeroext false) #15
  tail call void @mmc_remove_host(ptr noundef %4) #15
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 524288
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 13
  tail call void @led_classdev_unregister(ptr noundef %66) #15
  %67 = load i32, ptr %61, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi i32 [ %62, %60 ], [ %67, %65 ]
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %struct.mmc_host, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mmc_host_ops, ptr %75, i32 0, i32 6
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %73) #15
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %72, %68
  %81 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.sdhci_ops, ptr %82, i32 0, i32 19
  %84 = load ptr, ptr %83, align 4
  tail call void %84(ptr noundef %0, i8 noundef zeroext 1) #15
  %85 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 3
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %80
  %90 = load ptr, ptr %81, align 4
  %91 = getelementptr inbounds %struct.sdhci_ops, ptr %90, i32 0, i32 10
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = tail call i32 %92(ptr noundef %0) #15
  br label %96

96:                                               ; preds = %94, %89, %80
  %97 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 26
  store i8 0, ptr %97, align 1
  br label %98

98:                                               ; preds = %96, %72, %58, %53
  %99 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.sdhci_ops, ptr %100, i32 0, i32 3
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104, !prof !8

104:                                              ; preds = %98
  tail call void %102(ptr noundef %0, i32 noundef 0, i32 noundef 52) #15
  br label %109

105:                                              ; preds = %98
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %107 = load ptr, ptr %106, align 16
  %108 = getelementptr i8, ptr %107, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 0) #15, !srcloc !25
  br label %109

109:                                              ; preds = %105, %104
  %110 = load ptr, ptr %99, align 4
  %111 = getelementptr inbounds %struct.sdhci_ops, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114, !prof !8

114:                                              ; preds = %109
  tail call void %112(ptr noundef %0, i32 noundef 0, i32 noundef 56) #15
  br label %119

115:                                              ; preds = %109
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %116 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %117 = load ptr, ptr %116, align 16
  %118 = getelementptr i8, ptr %117, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 0) #15, !srcloc !25
  br label %119

119:                                              ; preds = %115, %114
  %120 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = tail call ptr @free_irq(i32 noundef %121, ptr noundef %0) #15
  %123 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 52
  %124 = tail call i32 @del_timer_sync(ptr noundef %123) #15
  %125 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 53
  %126 = tail call i32 @del_timer_sync(ptr noundef %125) #15
  %127 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 50
  %128 = load ptr, ptr %127, align 8
  tail call void @destroy_workqueue(ptr noundef %128) #15
  %129 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 59
  %130 = load i8, ptr %129, align 1, !range !19
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %119
  %133 = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 54, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = tail call i32 @regulator_disable(ptr noundef %134) #15
  br label %136

136:                                              ; preds = %132, %119
  %137 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 43
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %149, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %4, align 64
  %142 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 45
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 44
  %145 = load i32, ptr %144, align 64
  %146 = add i32 %145, %143
  %147 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 47
  %148 = load i32, ptr %147, align 4
  tail call void @dma_free_attrs(ptr noundef %141, i32 noundef %146, ptr noundef nonnull %138, i32 noundef %148, i32 noundef 0) #15
  br label %149

149:                                              ; preds = %140, %136
  %150 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 30
  %151 = load i8, ptr %150, align 1, !range !19
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 55
  %155 = load ptr, ptr %154, align 8
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  tail call void @dma_release_channel(ptr noundef nonnull %155) #15
  store ptr null, ptr %154, align 8
  br label %158

158:                                              ; preds = %157, %153
  %159 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 54
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call void @dma_release_channel(ptr noundef nonnull %160) #15
  store ptr null, ptr %159, align 4
  br label %163

163:                                              ; preds = %162, %158
  store i8 0, ptr %150, align 1
  br label %164

164:                                              ; preds = %163, %149
  %165 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 42
  store ptr null, ptr %165, align 8
  store ptr null, ptr %137, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @sdhci_free_host(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_free_host(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal void @sdhci_drv_exit() #8 section ".exit.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sdhci_drv_init() #9 section ".init.text" {
  %1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #14
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sdhci_finish_mrq(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store ptr null, ptr %3, align 4
  br label %11

11:                                               ; preds = %10, %6, %2
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 34
  %13 = load ptr, ptr %12, align 16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.mmc_command, ptr %13, i32 0, i32 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store ptr null, ptr %12, align 16
  br label %20

20:                                               ; preds = %19, %15, %11
  %21 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 35
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mmc_command, ptr %22, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr null, ptr %21, align 4
  br label %29

29:                                               ; preds = %28, %24, %20
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 36
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.mmc_data, ptr %31, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store ptr null, ptr %30, align 8
  br label %38

38:                                               ; preds = %37, %33, %29
  %39 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.mmc_command, ptr %45, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %47, %43
  %52 = load ptr, ptr %1, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.mmc_command, ptr %52, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %54, %51
  %59 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.mmc_data, ptr %60, i32 0, i32 8
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.mmc_command, ptr %64, i32 0, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66, %62, %58
  %71 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 1024
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70, %66, %54, %47
  %76 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 27
  store i8 1, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %70, %38
  %78 = getelementptr %struct.sdhci_host, ptr %0, i32 0, i32 32, i32 0
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, %1
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = getelementptr %struct.sdhci_host, ptr %0, i32 0, i32 32, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %1
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = icmp eq ptr %79, null
  br i1 %86, label %91, label %88

87:                                               ; preds = %81, %77
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1479, i32 noundef 9, ptr noundef null) #15
  br label %93

88:                                               ; preds = %85
  %89 = icmp eq ptr %83, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1491, i32 noundef 9, ptr noundef null) #15
  br label %93

91:                                               ; preds = %88, %85
  %92 = phi ptr [ %78, %85 ], [ %82, %88 ]
  store ptr %1, ptr %92, align 4
  br label %93

93:                                               ; preds = %91, %90, %87
  %94 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.mmc_command, ptr %95, i32 0, i32 7
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.mmc_command, ptr %95, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99, %93
  %105 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 53
  br label %108

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 52
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi ptr [ %107, %106 ], [ %105, %104 ]
  %110 = tail call i32 @del_timer(ptr noundef %109) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_prepare_data(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 36
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1054, i32 noundef 9, ptr noundef null) #15
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %12
  %16 = icmp ugt i32 %15, 524288
  br i1 %16, label %17, label %18, !prof !28

17:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1057, 0\0A.popsection", ""() #15, !srcloc !29
  unreachable

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 0, i32 24
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %12, %22
  br i1 %23, label %24, label %25, !prof !28

24:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1058, 0\0A.popsection", ""() #15, !srcloc !30
  unreachable

25:                                               ; preds = %18
  %26 = icmp ugt i32 %14, 65535
  br i1 %26, label %27, label %28, !prof !28

27:                                               ; preds = %25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mmc/host/sdhci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1059, 0\0A.popsection", ""() #15, !srcloc !31
  unreachable

28:                                               ; preds = %25
  store ptr %5, ptr %6, align 8
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 37
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, -2
  store i8 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 7
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %91, label %37

37:                                               ; preds = %28
  %38 = or i32 %34, 4
  store i32 %38, ptr %33, align 4
  %39 = and i32 %34, 2
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  br i1 %40, label %47, label %43

43:                                               ; preds = %37
  %44 = and i32 %42, 512
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 0, i32 3
  br label %54

47:                                               ; preds = %37
  %48 = and i32 %42, 256
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, i32 0, i32 3
  %51 = and i32 %42, 128
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 0, i32 3
  br label %54

54:                                               ; preds = %47, %43
  %55 = phi i32 [ %46, %43 ], [ %53, %47 ]
  %56 = phi i32 [ %46, %43 ], [ %50, %47 ]
  %57 = or i32 %56, %55
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %91, label %59, !prof !8

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %91, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %84, %63
  %67 = phi ptr [ %86, %84 ], [ %65, %63 ]
  %68 = phi i32 [ %85, %84 ], [ 0, %63 ]
  %69 = getelementptr inbounds %struct.scatterlist, ptr %67, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, %56
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = load i32, ptr %33, align 4
  %75 = and i32 %74, -5
  store i32 %75, ptr %33, align 4
  br label %91

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.scatterlist, ptr %67, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, %55
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr %33, align 4
  %83 = and i32 %82, -5
  store i32 %83, ptr %33, align 4
  br label %91

84:                                               ; preds = %76
  %85 = add nuw i32 %68, 1
  %86 = tail call ptr @sg_next(ptr noundef %67) #15
  %87 = load i32, ptr %60, align 4
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %66, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %33, align 4
  br label %91

91:                                               ; preds = %89, %81, %73, %59, %54, %28
  %92 = phi i32 [ %90, %89 ], [ %38, %59 ], [ %38, %54 ], [ %83, %81 ], [ %75, %73 ], [ %34, %28 ]
  %93 = and i32 %92, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %322, label %95

95:                                               ; preds = %91
  %96 = tail call fastcc i32 @sdhci_pre_dma_transfer(ptr noundef %0, ptr noundef %5, i32 noundef 2)
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1151, i32 noundef 9, ptr noundef null) #15
  %99 = load i32, ptr %33, align 4
  %100 = and i32 %99, -5
  store i32 %100, ptr %33, align 4
  br label %322

101:                                              ; preds = %95
  %102 = load i32, ptr %33, align 4
  %103 = and i32 %102, 2
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %305, label %105

105:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %106 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 40
  store i32 %96, ptr %106, align 16
  %107 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 42
  %108 = load ptr, ptr %107, align 8
  store ptr %108, ptr %3, align 4
  %109 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 47
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 43
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %116 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %117 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 48
  %118 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 41
  %119 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 44
  br label %120

120:                                              ; preds = %244, %105
  %121 = phi ptr [ %110, %105 ], [ %246, %244 ]
  %122 = phi i32 [ 0, %105 ], [ %245, %244 ]
  %123 = phi ptr [ %114, %105 ], [ %180, %244 ]
  %124 = phi i32 [ %112, %105 ], [ %179, %244 ]
  %125 = getelementptr inbounds %struct.scatterlist, ptr %121, i32 0, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.scatterlist, ptr %121, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = sub i32 0, %126
  %130 = and i32 %129, 3
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %178, label %132

132:                                              ; preds = %120
  %133 = load i32, ptr %115, align 4
  %134 = and i32 %133, 256
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %153, label %136

136:                                              ; preds = %132
  %137 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !40
  %138 = load i32, ptr %121, align 4
  %139 = and i32 %138, -4
  %140 = inttoptr i32 %139 to ptr
  %141 = load i32, ptr @pgprot_kernel, align 4
  %142 = or i32 %141, 512
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !41
  %143 = tail call ptr @llvm.thread.pointer() #15
  %144 = getelementptr inbounds %struct.task_struct, ptr %143, i32 0, i32 149
  %145 = load i32, ptr %144, align 8
  %146 = add i32 %145, 1
  store i32 %146, ptr %144, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !42
  %147 = call ptr @__kmap_local_page_prot(ptr noundef %140, i32 noundef %142) #15
  %148 = getelementptr inbounds %struct.scatterlist, ptr %121, i32 0, i32 1
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr i8, ptr %147, i32 %149
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %123, ptr align 1 %150, i32 %130, i1 false) #15
  call void @kunmap_local_indexed(ptr noundef %150) #15
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !43
  %151 = load i32, ptr %144, align 8
  %152 = add i32 %151, -1
  store i32 %152, ptr %144, align 8
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !44
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %137) #15, !srcloc !38
  br label %153

153:                                              ; preds = %136, %132
  %154 = load ptr, ptr %116, align 4
  %155 = getelementptr inbounds %struct.sdhci_ops, ptr %154, i32 0, i32 26
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  call void %156(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %124, i32 noundef %130, i32 noundef 33) #15
  br label %173

159:                                              ; preds = %153
  %160 = load ptr, ptr %3, align 4
  store i16 33, ptr %160, align 4
  %161 = trunc i32 %130 to i16
  %162 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %160, i32 0, i32 1
  store i16 %161, ptr %162, align 2
  %163 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %160, i32 0, i32 2
  store i32 %124, ptr %163, align 4
  %164 = load i32, ptr %33, align 4
  %165 = and i32 %164, 4096
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %159
  %168 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %160, i32 0, i32 3
  store i32 0, ptr %168, align 4
  br label %169

169:                                              ; preds = %167, %159
  %170 = load i32, ptr %117, align 16
  %171 = load ptr, ptr %3, align 4
  %172 = getelementptr i8, ptr %171, i32 %170
  store ptr %172, ptr %3, align 4
  br label %173

173:                                              ; preds = %169, %158
  %174 = getelementptr i8, ptr %123, i32 4
  %175 = add i32 %124, 4
  %176 = add i32 %130, %126
  %177 = sub i32 %128, %130
  br label %178

178:                                              ; preds = %173, %120
  %179 = phi i32 [ %175, %173 ], [ %124, %120 ]
  %180 = phi ptr [ %174, %173 ], [ %123, %120 ]
  %181 = phi i32 [ %177, %173 ], [ %128, %120 ]
  %182 = phi i32 [ %176, %173 ], [ %126, %120 ]
  %183 = load i32, ptr %118, align 4
  %184 = icmp sgt i32 %181, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %206, %178
  %186 = phi i32 [ %207, %206 ], [ %182, %178 ]
  %187 = phi i32 [ %208, %206 ], [ %181, %178 ]
  %188 = load ptr, ptr %116, align 4
  %189 = getelementptr inbounds %struct.sdhci_ops, ptr %188, i32 0, i32 26
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %185
  call void %190(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %186, i32 noundef 32768, i32 noundef 33) #15
  br label %206

193:                                              ; preds = %185
  %194 = load ptr, ptr %3, align 4
  store i16 33, ptr %194, align 4
  %195 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %194, i32 0, i32 1
  store i16 -32768, ptr %195, align 2
  %196 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %194, i32 0, i32 2
  store i32 %186, ptr %196, align 4
  %197 = load i32, ptr %33, align 4
  %198 = and i32 %197, 4096
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %194, i32 0, i32 3
  store i32 0, ptr %201, align 4
  br label %202

202:                                              ; preds = %200, %193
  %203 = load i32, ptr %117, align 16
  %204 = load ptr, ptr %3, align 4
  %205 = getelementptr i8, ptr %204, i32 %203
  store ptr %205, ptr %3, align 4
  br label %206

206:                                              ; preds = %202, %192
  %207 = add i32 %186, 32768
  %208 = add i32 %187, -32768
  %209 = load i32, ptr %118, align 4
  %210 = icmp sgt i32 %208, %209
  br i1 %210, label %185, label %211

211:                                              ; preds = %206, %178
  %212 = phi i32 [ %181, %178 ], [ %208, %206 ]
  %213 = phi i32 [ %182, %178 ], [ %207, %206 ]
  %214 = icmp eq i32 %212, 0
  br i1 %214, label %235, label %215

215:                                              ; preds = %211
  %216 = load ptr, ptr %116, align 4
  %217 = getelementptr inbounds %struct.sdhci_ops, ptr %216, i32 0, i32 26
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220

220:                                              ; preds = %215
  call void %218(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %213, i32 noundef %212, i32 noundef 33) #15
  br label %235

221:                                              ; preds = %215
  %222 = load ptr, ptr %3, align 4
  store i16 33, ptr %222, align 4
  %223 = trunc i32 %212 to i16
  %224 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %222, i32 0, i32 1
  store i16 %223, ptr %224, align 2
  %225 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %222, i32 0, i32 2
  store i32 %213, ptr %225, align 4
  %226 = load i32, ptr %33, align 4
  %227 = and i32 %226, 4096
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %221
  %230 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %222, i32 0, i32 3
  store i32 0, ptr %230, align 4
  br label %231

231:                                              ; preds = %229, %221
  %232 = load i32, ptr %117, align 16
  %233 = load ptr, ptr %3, align 4
  %234 = getelementptr i8, ptr %233, i32 %232
  store ptr %234, ptr %3, align 4
  br label %235

235:                                              ; preds = %231, %220, %211
  %236 = load ptr, ptr %3, align 4
  %237 = load ptr, ptr %107, align 8
  %238 = ptrtoint ptr %236 to i32
  %239 = ptrtoint ptr %237 to i32
  %240 = sub i32 %238, %239
  %241 = load i32, ptr %119, align 64
  %242 = icmp ult i32 %240, %241
  br i1 %242, label %244, label %243, !prof !8

243:                                              ; preds = %235
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 797, i32 noundef 9, ptr noundef null) #15
  br label %244

244:                                              ; preds = %243, %235
  %245 = add nuw nsw i32 %122, 1
  %246 = call ptr @sg_next(ptr noundef %121) #15
  %247 = load i32, ptr %106, align 16
  %248 = icmp slt i32 %245, %247
  br i1 %248, label %120, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %251 = load i32, ptr %250, align 4
  %252 = and i32 %251, 67108864
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %264, label %254

254:                                              ; preds = %249
  %255 = load ptr, ptr %3, align 4
  %256 = load ptr, ptr %107, align 8
  %257 = icmp eq ptr %255, %256
  br i1 %257, label %279, label %258

258:                                              ; preds = %254
  %259 = load i32, ptr %117, align 16
  %260 = sub i32 0, %259
  %261 = getelementptr i8, ptr %255, i32 %260
  store ptr %261, ptr %3, align 4
  %262 = load i16, ptr %261, align 4
  %263 = or i16 %262, 2
  store i16 %263, ptr %261, align 4
  br label %279

264:                                              ; preds = %249
  %265 = load ptr, ptr %116, align 4
  %266 = getelementptr inbounds %struct.sdhci_ops, ptr %265, i32 0, i32 26
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %264
  call void %267(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i32 noundef 3) #15
  br label %279

270:                                              ; preds = %264
  %271 = load ptr, ptr %3, align 4
  store i16 3, ptr %271, align 4
  %272 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %271, i32 0, i32 1
  store i16 0, ptr %272, align 2
  %273 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %271, i32 0, i32 2
  store i32 0, ptr %273, align 4
  %274 = load i32, ptr %33, align 4
  %275 = and i32 %274, 4096
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %271, i32 0, i32 3
  store i32 0, ptr %278, align 4
  br label %279

279:                                              ; preds = %277, %270, %269, %258, %254
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %280 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 46
  %281 = load i32, ptr %280, align 8
  %282 = load ptr, ptr %116, align 4
  %283 = getelementptr inbounds %struct.sdhci_ops, ptr %282, i32 0, i32 3
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %287, label %286, !prof !8

286:                                              ; preds = %279
  call void %284(ptr noundef %0, i32 noundef %281, i32 noundef 88) #15
  br label %291

287:                                              ; preds = %279
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  call void @arm_heavy_mb() #15
  %288 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %289 = load ptr, ptr %288, align 16
  %290 = getelementptr i8, ptr %289, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %290, i32 %281) #15, !srcloc !25
  br label %291

291:                                              ; preds = %287, %286
  %292 = load i32, ptr %33, align 4
  %293 = and i32 %292, 4096
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %322, label %295

295:                                              ; preds = %291
  %296 = load ptr, ptr %116, align 4
  %297 = getelementptr inbounds %struct.sdhci_ops, ptr %296, i32 0, i32 3
  %298 = load ptr, ptr %297, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %301, label %300, !prof !8

300:                                              ; preds = %295
  call void %298(ptr noundef %0, i32 noundef 0, i32 noundef 92) #15
  br label %322

301:                                              ; preds = %295
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  call void @arm_heavy_mb() #15
  %302 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %303 = load ptr, ptr %302, align 16
  %304 = getelementptr i8, ptr %303, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %304, i32 0) #15, !srcloc !25
  br label %322

305:                                              ; preds = %101
  %306 = icmp eq i32 %96, 1
  br i1 %306, label %308, label %307, !prof !8

307:                                              ; preds = %305
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1157, i32 noundef 9, ptr noundef null) #15
  br label %308

308:                                              ; preds = %307, %305
  %309 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 6
  %310 = load ptr, ptr %309, align 8
  %311 = icmp eq ptr %310, null
  br i1 %311, label %314, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 7
  br label %319

314:                                              ; preds = %308
  %315 = load ptr, ptr %6, align 8
  %316 = getelementptr inbounds %struct.mmc_data, ptr %315, i32 0, i32 12
  %317 = load ptr, ptr %316, align 4
  %318 = getelementptr inbounds %struct.scatterlist, ptr %317, i32 0, i32 3
  br label %319

319:                                              ; preds = %314, %312
  %320 = phi ptr [ %313, %312 ], [ %318, %314 ]
  %321 = load i32, ptr %320, align 4
  tail call fastcc void @sdhci_set_sdma_addr(ptr noundef %0, i32 noundef %321)
  br label %322

322:                                              ; preds = %319, %301, %300, %291, %98, %91
  %323 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 17
  %324 = load i32, ptr %323, align 64
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %394, label %326

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %328 = load ptr, ptr %327, align 4
  %329 = getelementptr inbounds %struct.sdhci_ops, ptr %328, i32 0, i32 2
  %330 = load ptr, ptr %329, align 4
  %331 = icmp eq ptr %330, null
  br i1 %331, label %334, label %332, !prof !8

332:                                              ; preds = %326
  %333 = call zeroext i8 %330(ptr noundef %0, i32 noundef 40) #15
  br label %339

334:                                              ; preds = %326
  %335 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %336 = load ptr, ptr %335, align 16
  %337 = getelementptr i8, ptr %336, i32 40
  %338 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %337) #15, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %339

339:                                              ; preds = %334, %332
  %340 = phi i8 [ %333, %332 ], [ %338, %334 ]
  %341 = and i8 %340, -25
  %342 = load i32, ptr %33, align 4
  %343 = and i32 %342, 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %383, label %345

345:                                              ; preds = %339
  %346 = and i32 %342, 2
  %347 = icmp eq i32 %346, 0
  %348 = or i8 %341, 16
  %349 = select i1 %347, i8 %341, i8 %348
  %350 = and i32 %342, 4096
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %383, label %352

352:                                              ; preds = %345
  %353 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %354 = load i8, ptr %353, align 2, !range !19
  %355 = icmp eq i8 %354, 0
  br i1 %355, label %380, label %356

356:                                              ; preds = %352
  %357 = load ptr, ptr %327, align 4
  %358 = getelementptr inbounds %struct.sdhci_ops, ptr %357, i32 0, i32 1
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %363, label %361, !prof !8

361:                                              ; preds = %356
  %362 = call zeroext i16 %359(ptr noundef %0, i32 noundef 62) #15
  br label %368

363:                                              ; preds = %356
  %364 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %365 = load ptr, ptr %364, align 16
  %366 = getelementptr i8, ptr %365, i32 62
  %367 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %366) #15, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %368

368:                                              ; preds = %363, %361
  %369 = phi i16 [ %362, %361 ], [ %367, %363 ]
  %370 = or i16 %369, 8192
  %371 = load ptr, ptr %327, align 4
  %372 = getelementptr inbounds %struct.sdhci_ops, ptr %371, i32 0, i32 4
  %373 = load ptr, ptr %372, align 4
  %374 = icmp eq ptr %373, null
  br i1 %374, label %376, label %375, !prof !8

375:                                              ; preds = %368
  call void %373(ptr noundef %0, i16 noundef zeroext %370, i32 noundef 62) #15
  br label %383

376:                                              ; preds = %368
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  call void @arm_heavy_mb() #15
  %377 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %378 = load ptr, ptr %377, align 16
  %379 = getelementptr i8, ptr %378, i32 62
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %379, i16 %370) #15, !srcloc !16
  br label %383

380:                                              ; preds = %352
  %381 = select i1 %347, i8 0, i8 24
  %382 = or i8 %381, %341
  br label %383

383:                                              ; preds = %380, %376, %375, %345, %339
  %384 = phi i8 [ %349, %345 ], [ %341, %339 ], [ %382, %380 ], [ %349, %375 ], [ %349, %376 ]
  %385 = load ptr, ptr %327, align 4
  %386 = getelementptr inbounds %struct.sdhci_ops, ptr %385, i32 0, i32 5
  %387 = load ptr, ptr %386, align 4
  %388 = icmp eq ptr %387, null
  br i1 %388, label %390, label %389, !prof !8

389:                                              ; preds = %383
  call void %387(ptr noundef %0, i8 noundef zeroext %384, i32 noundef 40) #15
  br label %394

390:                                              ; preds = %383
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  call void @arm_heavy_mb() #15
  %391 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %392 = load ptr, ptr %391, align 16
  %393 = getelementptr i8, ptr %392, i32 40
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %393, i8 %384) #15, !srcloc !18
  br label %394

394:                                              ; preds = %390, %389, %322
  %395 = load i32, ptr %33, align 4
  %396 = and i32 %395, 4
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %414

398:                                              ; preds = %394
  %399 = load ptr, ptr %6, align 8
  %400 = getelementptr inbounds %struct.mmc_data, ptr %399, i32 0, i32 6
  %401 = load i32, ptr %400, align 4
  %402 = and i32 %401, 512
  %403 = icmp eq i32 %402, 0
  %404 = select i1 %403, i32 5, i32 3
  %405 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 38
  %406 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %407 = load ptr, ptr %406, align 4
  %408 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %409 = load i32, ptr %408, align 4
  call void @sg_miter_start(ptr noundef %405, ptr noundef %407, i32 noundef %409, i32 noundef %404) #15
  %410 = load i32, ptr %13, align 4
  %411 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 39
  store i32 %410, ptr %411, align 4
  %412 = load i32, ptr %33, align 4
  %413 = and i32 %412, 4
  br label %414

414:                                              ; preds = %398, %394
  %415 = phi i32 [ %413, %398 ], [ %396, %394 ]
  %416 = phi i32 [ %412, %398 ], [ %395, %394 ]
  %417 = icmp eq i32 %415, 0
  %418 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %419 = load i32, ptr %418, align 64
  %420 = and i32 %419, -50331705
  %421 = select i1 %417, i32 48, i32 33554440
  %422 = or i32 %421, %420
  %423 = and i32 %416, 192
  %424 = icmp eq i32 %423, 0
  %425 = select i1 %424, i32 0, i32 16777216
  %426 = or i32 %422, %425
  store i32 %426, ptr %418, align 64
  %427 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %428 = load ptr, ptr %427, align 4
  %429 = getelementptr inbounds %struct.sdhci_ops, ptr %428, i32 0, i32 3
  %430 = load ptr, ptr %429, align 4
  %431 = icmp eq ptr %430, null
  br i1 %431, label %433, label %432, !prof !8

432:                                              ; preds = %414
  call void %430(ptr noundef %0, i32 noundef %426, i32 noundef 52) #15
  br label %437

433:                                              ; preds = %414
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  call void @arm_heavy_mb() #15
  %434 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %435 = load ptr, ptr %434, align 16
  %436 = getelementptr i8, ptr %435, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %436, i32 %426) #15, !srcloc !25
  br label %437

437:                                              ; preds = %433, %432
  %438 = load i32, ptr %418, align 64
  %439 = load ptr, ptr %427, align 4
  %440 = getelementptr inbounds %struct.sdhci_ops, ptr %439, i32 0, i32 3
  %441 = load ptr, ptr %440, align 4
  %442 = icmp eq ptr %441, null
  br i1 %442, label %444, label %443, !prof !8

443:                                              ; preds = %437
  call void %441(ptr noundef %0, i32 noundef %438, i32 noundef 56) #15
  br label %448

444:                                              ; preds = %437
  call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  call void @arm_heavy_mb() #15
  %445 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %446 = load ptr, ptr %445, align 16
  %447 = getelementptr i8, ptr %446, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %447, i32 %438) #15, !srcloc !25
  br label %448

448:                                              ; preds = %444, %443
  call fastcc void @sdhci_set_block_info(ptr noundef %0, ptr noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nsecs_to_jiffies(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_pre_dma_transfer(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  br label %82

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %64, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, %16
  %20 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 32
  %22 = icmp ugt i32 %19, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 1, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi ptr [ %31, %29 ], [ %27, %23 ]
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %33, i32 noundef %19, i32 noundef %21) #14
  br label %82

35:                                               ; preds = %14
  %36 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sdhci_ops, ptr %42, i32 0, i32 27
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  tail call void %44(ptr noundef %0, ptr noundef %1, i32 noundef %19) #15
  br label %53

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @sg_copy_to_buffer(ptr noundef %49, i32 noundef %51, ptr noundef nonnull %12, i32 noundef %19) #15
  br label %53

53:                                               ; preds = %47, %46, %35
  %54 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %55 = load ptr, ptr %54, align 8
  %56 = load ptr, ptr %55, align 64
  %57 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %20, align 32
  %60 = load i32, ptr %36, align 4
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 2, i32 1
  tail call void @dma_sync_single_for_device(ptr noundef %56, i32 noundef %58, i32 noundef %59, i32 noundef %63) #15
  br label %79

64:                                               ; preds = %10
  %65 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %66 = load ptr, ptr %65, align 8
  %67 = load ptr, ptr %66, align 64
  %68 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 12
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 10
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 256
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 2, i32 1
  %77 = tail call i32 @dma_map_sg_attrs(ptr noundef %67, ptr noundef %69, i32 noundef %71, i32 noundef %76, i32 noundef 0) #15
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %64, %53
  %80 = phi i32 [ 1, %53 ], [ %77, %64 ]
  %81 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 11
  store i32 %80, ptr %81, align 4
  store i32 %2, ptr %4, align 4
  br label %82

82:                                               ; preds = %79, %64, %32, %7
  %83 = phi i32 [ %9, %7 ], [ %80, %79 ], [ -28, %64 ], [ -5, %32 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_set_block_info(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 77
  %4 = load i32, ptr %3, align 4
  %5 = shl i32 %4, 12
  %6 = and i32 %5, 28672
  %7 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4095
  %10 = or i32 %6, %9
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sdhci_ops, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !8

17:                                               ; preds = %2
  tail call void %15(ptr noundef %0, i16 noundef zeroext %11, i32 noundef 4) #15
  br label %22

18:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %19 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 16
  %21 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %21, i16 %11) #15, !srcloc !16
  br label %22

22:                                               ; preds = %18, %17
  %23 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 17
  %24 = load i32, ptr %23, align 64
  %25 = icmp ugt i32 %24, 3
  br i1 %25, label %26, label %72

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %28 = load i8, ptr %27, align 2, !range !19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %72, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 262144
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %72, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %12, align 4
  %37 = getelementptr inbounds %struct.sdhci_ops, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !8

40:                                               ; preds = %35
  %41 = tail call zeroext i16 %38(ptr noundef %0, i32 noundef 6) #15
  br label %47

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %44 = load ptr, ptr %43, align 16
  %45 = getelementptr i8, ptr %44, i32 6
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %45) #15, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !12
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi i16 [ %41, %40 ], [ %46, %42 ]
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds %struct.sdhci_ops, ptr %51, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55, !prof !8

55:                                               ; preds = %50
  tail call void %53(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 6) #15
  br label %60

56:                                               ; preds = %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %57 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %58 = load ptr, ptr %57, align 16
  %59 = getelementptr i8, ptr %58, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 0) #15, !srcloc !16
  br label %60

60:                                               ; preds = %56, %55, %47
  %61 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = trunc i32 %62 to i16
  %64 = load ptr, ptr %12, align 4
  %65 = getelementptr inbounds %struct.sdhci_ops, ptr %64, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !8

68:                                               ; preds = %60
  tail call void %66(ptr noundef %0, i16 noundef zeroext %63, i32 noundef 0) #15
  br label %85

69:                                               ; preds = %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %71 = load ptr, ptr %70, align 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %71, i16 %63) #15, !srcloc !16
  br label %85

72:                                               ; preds = %30, %26, %22
  %73 = getelementptr inbounds %struct.mmc_data, ptr %1, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = trunc i32 %74 to i16
  %76 = load ptr, ptr %12, align 4
  %77 = getelementptr inbounds %struct.sdhci_ops, ptr %76, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80, !prof !8

80:                                               ; preds = %72
  tail call void %78(ptr noundef %0, i16 noundef zeroext %75, i32 noundef 6) #15
  br label %85

81:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !15
  tail call void @arm_heavy_mb() #15
  %82 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %83 = load ptr, ptr %82, align 16
  %84 = getelementptr i8, ptr %83, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %84, i16 %75) #15, !srcloc !16
  br label %85

85:                                               ; preds = %81, %80, %69, %68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_set_sdma_addr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 29
  %4 = load i8, ptr %3, align 2, !range !19
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sdhci_ops, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %5, label %32, label %11

11:                                               ; preds = %2
  br i1 %10, label %13, label %12, !prof !8

12:                                               ; preds = %11
  tail call void %9(ptr noundef %0, i32 noundef %1, i32 noundef 88) #15
  br label %17

13:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %14 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr i8, ptr %15, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %1) #15, !srcloc !25
  br label %17

17:                                               ; preds = %13, %12
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.sdhci_ops, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !8

27:                                               ; preds = %22
  tail call void %25(ptr noundef %0, i32 noundef 0, i32 noundef 92) #15
  br label %37

28:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %29 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 16
  %31 = getelementptr i8, ptr %30, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #15, !srcloc !25
  br label %37

32:                                               ; preds = %2
  br i1 %10, label %34, label %33, !prof !8

33:                                               ; preds = %32
  tail call void %9(ptr noundef %0, i32 noundef %1, i32 noundef 0) #15
  br label %37

34:                                               ; preds = %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %35 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %1) #15, !srcloc !25
  br label %37

37:                                               ; preds = %34, %33, %28, %27, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_detect_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_set_card_detection(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %65

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %7
  %15 = tail call zeroext i1 @mmc_can_gpio_cd(ptr noundef %9) #15
  br i1 %15, label %65, label %16

16:                                               ; preds = %14
  br i1 %1, label %17, label %37

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !8

22:                                               ; preds = %17
  %23 = tail call i32 %20(ptr noundef %0, i32 noundef 36) #15
  br label %29

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr i8, ptr %26, i32 36
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = and i32 %30, 65536
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 64, i32 128
  %34 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %35 = load i32, ptr %34, align 64
  %36 = or i32 %33, %35
  store i32 %36, ptr %34, align 64
  br label %41

37:                                               ; preds = %16
  %38 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %39 = load i32, ptr %38, align 64
  %40 = and i32 %39, -193
  store i32 %40, ptr %38, align 64
  br label %41

41:                                               ; preds = %37, %29
  %42 = phi i32 [ %40, %37 ], [ %36, %29 ]
  %43 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 66
  %44 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sdhci_ops, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49, !prof !8

49:                                               ; preds = %41
  tail call void %47(ptr noundef %0, i32 noundef %42, i32 noundef 52) #15
  br label %54

50:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %51 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %52 = load ptr, ptr %51, align 16
  %53 = getelementptr i8, ptr %52, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %42) #15, !srcloc !25
  br label %54

54:                                               ; preds = %50, %49
  %55 = load i32, ptr %43, align 64
  %56 = load ptr, ptr %44, align 4
  %57 = getelementptr inbounds %struct.sdhci_ops, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !8

60:                                               ; preds = %54
  tail call void %58(ptr noundef %0, i32 noundef %55, i32 noundef 56) #15
  br label %65

61:                                               ; preds = %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %62 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %63 = load ptr, ptr %62, align 16
  %64 = getelementptr i8, ptr %63, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %55) #15, !srcloc !25
  br label %65

65:                                               ; preds = %61, %60, %14, %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_cd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdio_signal_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_command_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__sdhci_finish_data(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 34
  %4 = load ptr, ptr %3, align 16
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 36
  %6 = load ptr, ptr %5, align 8
  store ptr null, ptr %5, align 8
  store ptr null, ptr %3, align 16
  %7 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp eq ptr %12, %4
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.mmc_host, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.mmc_host_ops, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef %23) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21, %16
  %31 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 19
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %0, i8 noundef zeroext 2) #15
  br label %35

35:                                               ; preds = %30, %21, %10
  %36 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.mmc_host, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.mmc_host_ops, ptr %44, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %42) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40, %35
  %50 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.sdhci_ops, ptr %51, i32 0, i32 19
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %0, i8 noundef zeroext 4) #15
  br label %54

54:                                               ; preds = %49, %40, %2
  %55 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, 6
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %59, label %129

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 512
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %129, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 12
  %66 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 40
  %67 = load i32, ptr %66, align 16
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %129

69:                                               ; preds = %64
  %70 = load ptr, ptr %65, align 4
  br label %71

71:                                               ; preds = %78, %69
  %72 = phi i32 [ %79, %78 ], [ 0, %69 ]
  %73 = phi ptr [ %80, %78 ], [ %70, %69 ]
  %74 = getelementptr inbounds %struct.scatterlist, ptr %73, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, 3
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = add nuw nsw i32 %72, 1
  %80 = tail call ptr @sg_next(ptr noundef %73) #15
  %81 = load i32, ptr %66, align 16
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %71, label %129

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %85 = load ptr, ptr %84, align 8
  %86 = load ptr, ptr %85, align 64
  %87 = load ptr, ptr %65, align 4
  %88 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 10
  %89 = load i32, ptr %88, align 4
  tail call void @dma_sync_sg_for_cpu(ptr noundef %86, ptr noundef %87, i32 noundef %89, i32 noundef 2) #15
  %90 = load i32, ptr %66, align 16
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %83
  %93 = load ptr, ptr %65, align 4
  %94 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 43
  %95 = load ptr, ptr %94, align 4
  br label %96

96:                                               ; preds = %123, %92
  %97 = phi ptr [ %124, %123 ], [ %95, %92 ]
  %98 = phi i32 [ %125, %123 ], [ 0, %92 ]
  %99 = phi ptr [ %126, %123 ], [ %93, %92 ]
  %100 = getelementptr inbounds %struct.scatterlist, ptr %99, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 3
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %96
  %105 = sub nuw nsw i32 4, %102
  %106 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !40
  %107 = load i32, ptr %99, align 4
  %108 = and i32 %107, -4
  %109 = inttoptr i32 %108 to ptr
  %110 = load i32, ptr @pgprot_kernel, align 4
  %111 = or i32 %110, 512
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !41
  %112 = tail call ptr @llvm.thread.pointer() #15
  %113 = getelementptr inbounds %struct.task_struct, ptr %112, i32 0, i32 149
  %114 = load i32, ptr %113, align 8
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !42
  %116 = tail call ptr @__kmap_local_page_prot(ptr noundef %109, i32 noundef %111) #15
  %117 = getelementptr inbounds %struct.scatterlist, ptr %99, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr i8, ptr %116, i32 %118
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %119, ptr align 1 %97, i32 %105, i1 false) #15
  tail call void @kunmap_local_indexed(ptr noundef %119) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !43
  %120 = load i32, ptr %113, align 8
  %121 = add i32 %120, -1
  store i32 %121, ptr %113, align 8
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !44
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %106) #15, !srcloc !38
  %122 = getelementptr i8, ptr %97, i32 4
  br label %123

123:                                              ; preds = %104, %96
  %124 = phi ptr [ %122, %104 ], [ %97, %96 ]
  %125 = add nuw nsw i32 %98, 1
  %126 = tail call ptr @sg_next(ptr noundef %99) #15
  %127 = load i32, ptr %66, align 16
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %96, label %129

129:                                              ; preds = %123, %83, %78, %64, %59, %54
  %130 = load i32, ptr %7, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = mul i32 %136, %134
  br label %138

138:                                              ; preds = %132, %129
  %139 = phi i32 [ %137, %132 ], [ 0, %129 ]
  %140 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 7
  store i32 %139, ptr %140, align 4
  %141 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 8
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  %144 = getelementptr inbounds %struct.mmc_data, ptr %6, i32 0, i32 9
  %145 = load ptr, ptr %144, align 4
  br i1 %143, label %181, label %146

146:                                              ; preds = %138
  %147 = load ptr, ptr %145, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, ptr %55, align 4
  %151 = and i32 %150, 64
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %160, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.mmc_request, ptr %145, i32 0, i32 9
  %155 = load i8, ptr %154, align 4, !range !19
  %156 = icmp ne i8 %155, 0
  %157 = xor i1 %131, true
  %158 = select i1 %156, i1 true, i1 %157
  br i1 %158, label %160, label %181

159:                                              ; preds = %146
  br i1 %131, label %181, label %160

160:                                              ; preds = %159, %153, %149
  %161 = getelementptr inbounds %struct.mmc_request, ptr %145, i32 0, i32 9
  %162 = load i8, ptr %161, align 4, !range !19
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %0, ptr noundef %145)
  br label %182

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  store ptr null, ptr %166, align 4
  %167 = load ptr, ptr %141, align 4
  %168 = tail call fastcc zeroext i1 @sdhci_send_command(ptr noundef %0, ptr noundef %167)
  br i1 %168, label %182, label %169

169:                                              ; preds = %165
  br i1 %1, label %170, label %174

170:                                              ; preds = %169
  %171 = load ptr, ptr %141, align 4
  %172 = getelementptr inbounds %struct.mmc_command, ptr %171, i32 0, i32 5
  store i32 -5, ptr %172, align 4
  %173 = load ptr, ptr %144, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %0, ptr noundef %173)
  br label %182

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 35
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %179, label %178, !prof !8

178:                                              ; preds = %174
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1587, i32 noundef 9, ptr noundef null) #15
  br label %179

179:                                              ; preds = %178, %174
  %180 = load ptr, ptr %141, align 4
  store ptr %180, ptr %175, align 4
  br label %182

181:                                              ; preds = %159, %153, %138
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %0, ptr noundef %145)
  br label %182

182:                                              ; preds = %181, %179, %170, %165, %164
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_cpu(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sdhci_adma_show_error(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 42
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 46
  %5 = load i32, ptr %4, align 8
  tail call void @sdhci_dumpregs(ptr noundef %0)
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %8 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 48
  br label %9

9:                                                ; preds = %51, %1
  %10 = phi i32 [ %5, %1 ], [ %54, %51 ]
  %11 = phi ptr [ %3, %1 ], [ %53, %51 ]
  %12 = load i32, ptr %6, align 4
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 1, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %14, label %36, label %19

19:                                               ; preds = %9
  br i1 %18, label %20, label %23

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi ptr [ %22, %20 ], [ %17, %19 ]
  %25 = zext i32 %10 to i64
  %26 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %11, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %11, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %11, i32 0, i32 1
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, ptr %11, align 4
  %34 = zext i16 %33 to i32
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %24, i64 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %32, i32 noundef %34) #14
  br label %51

36:                                               ; preds = %9
  br i1 %18, label %37, label %40

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi ptr [ %39, %37 ], [ %17, %36 ]
  %42 = zext i32 %10 to i64
  %43 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %11, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.sdhci_adma2_64_desc, ptr %11, i32 0, i32 1
  %46 = load i16, ptr %45, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, ptr %11, align 4
  %49 = zext i16 %48 to i32
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %41, i64 noundef %42, i32 noundef %44, i32 noundef %47, i32 noundef %49) #14
  br label %51

51:                                               ; preds = %40, %23
  %52 = load i32, ptr %8, align 16
  %53 = getelementptr i8, ptr %11, i32 %52
  %54 = add i32 %52, %10
  %55 = load i16, ptr %11, align 4
  %56 = and i16 %55, 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %9, label %58

58:                                               ; preds = %51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sdhci_request_done(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %4 = getelementptr %struct.sdhci_host, ptr %0, i32 0, i32 32, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr %struct.sdhci_host, ptr %0, i32 0, i32 32, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  br label %255

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 0, %1 ], [ 1, %7 ]
  %14 = phi ptr [ %5, %1 ], [ %9, %7 ]
  %15 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %112

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.mmc_request, ptr %14, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.mmc_command, ptr %21, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %23, %19
  %28 = load ptr, ptr %14, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.mmc_command, ptr %28, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %30, %27
  %35 = getelementptr inbounds %struct.mmc_request, ptr %14, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.mmc_data, ptr %36, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.mmc_command, ptr %40, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %38, %34
  %47 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1024
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %112, label %51

51:                                               ; preds = %46, %42, %30, %23
  %52 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 33
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 34
  %57 = load ptr, ptr %56, align 16
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %55, %51
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  br label %255

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.sdhci_ops, ptr %67, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 22
  %71 = load i32, ptr %70, align 4
  tail call void %69(ptr noundef %0, i32 noundef %71) #15
  %72 = load i32, ptr %61, align 4
  br label %73

73:                                               ; preds = %65, %60
  %74 = phi i32 [ %72, %65 ], [ %62, %60 ]
  %75 = and i32 %74, 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.mmc_host, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.mmc_host_ops, ptr %81, i32 0, i32 6
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 %83(ptr noundef %79) #15
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %77, %73
  %87 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.sdhci_ops, ptr %88, i32 0, i32 19
  %90 = load ptr, ptr %89, align 4
  tail call void %90(ptr noundef %0, i8 noundef zeroext 2) #15
  br label %91

91:                                               ; preds = %86, %77
  %92 = load i32, ptr %61, align 4
  %93 = and i32 %92, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr inbounds %struct.mmc_host, ptr %97, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.mmc_host_ops, ptr %99, i32 0, i32 6
  %101 = load ptr, ptr %100, align 4
  %102 = tail call i32 %101(ptr noundef %97) #15
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %95, %91
  %105 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.sdhci_ops, ptr %106, i32 0, i32 19
  %108 = load ptr, ptr %107, align 4
  tail call void %108(ptr noundef %0, i8 noundef zeroext 4) #15
  br label %109

109:                                              ; preds = %104, %95
  %110 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 27
  store i8 0, ptr %110, align 4
  %111 = load i32, ptr %15, align 4
  br label %112

112:                                              ; preds = %109, %46, %12
  %113 = phi i32 [ %16, %12 ], [ %111, %109 ], [ %16, %46 ]
  %114 = and i32 %113, 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %243, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.mmc_request, ptr %14, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 30
  %120 = load i8, ptr %119, align 1, !range !19
  %121 = icmp ne i8 %120, 0
  %122 = icmp ne ptr %118, null
  %123 = select i1 %121, i1 %122, i1 false
  br i1 %123, label %124, label %173

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.mmc_request, ptr %14, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.mmc_command, ptr %126, i32 0, i32 5
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 5
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %173, label %134

134:                                              ; preds = %130, %124
  %135 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 6
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 256
  %138 = icmp eq i32 %137, 0
  %139 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 55
  %140 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 54
  %141 = select i1 %138, ptr %140, ptr %139
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr %struct.sdhci_host, ptr %0, i32 0, i32 32, i32 %13
  store ptr null, ptr %143, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  %144 = load ptr, ptr %142, align 4
  %145 = getelementptr inbounds %struct.dma_device, ptr %144, i32 0, i32 47
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, null
  br i1 %147, label %157, label %148

148:                                              ; preds = %134
  %149 = tail call i32 %146(ptr noundef %142) #15
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load ptr, ptr %142, align 4
  %153 = getelementptr inbounds %struct.dma_device, ptr %152, i32 0, i32 48
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  tail call void %154(ptr noundef %142) #15
  br label %157

157:                                              ; preds = %156, %151, %148, %134
  %158 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %159 = load ptr, ptr %4, align 4
  %160 = icmp eq ptr %159, %14
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = getelementptr %struct.sdhci_host, ptr %0, i32 0, i32 32, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, %14
  br i1 %164, label %167, label %165

165:                                              ; preds = %161
  %166 = icmp eq ptr %159, null
  br i1 %166, label %171, label %168

167:                                              ; preds = %161, %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1479, i32 noundef 9, ptr noundef null) #15
  br label %173

168:                                              ; preds = %165
  %169 = icmp eq ptr %163, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %168
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 1491, i32 noundef 9, ptr noundef null) #15
  br label %173

171:                                              ; preds = %168, %165
  %172 = phi ptr [ %4, %165 ], [ %162, %168 ]
  store ptr %14, ptr %172, align 4
  br label %173

173:                                              ; preds = %171, %170, %167, %130, %116
  %174 = phi i32 [ %3, %130 ], [ %3, %116 ], [ %158, %167 ], [ %158, %170 ], [ %158, %171 ]
  br i1 %122, label %175, label %243

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 13
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 2
  br i1 %178, label %179, label %243

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 6
  %181 = load ptr, ptr %180, align 8
  %182 = icmp eq ptr %181, null
  br i1 %182, label %229, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 6
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, 256
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %221

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 7
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 8
  %192 = load i32, ptr %191, align 32
  %193 = icmp ugt i32 %190, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds %struct.mmc_host, ptr %196, i32 0, i32 1, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.mmc_host, ptr %196, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  br label %203

203:                                              ; preds = %200, %194
  %204 = phi ptr [ %202, %200 ], [ %198, %194 ]
  %205 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %204, i32 noundef %192, i32 noundef %190) #14
  %206 = load i32, ptr %191, align 32
  br label %207

207:                                              ; preds = %203, %188
  %208 = phi i32 [ %206, %203 ], [ %192, %188 ]
  %209 = phi i32 [ %206, %203 ], [ %190, %188 ]
  %210 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %211 = load ptr, ptr %210, align 8
  %212 = load ptr, ptr %211, align 64
  %213 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 7
  %214 = load i32, ptr %213, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %212, i32 noundef %214, i32 noundef %208, i32 noundef 2) #15
  %215 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 12
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 10
  %218 = load i32, ptr %217, align 4
  %219 = load ptr, ptr %180, align 8
  %220 = tail call i32 @sg_copy_from_buffer(ptr noundef %216, i32 noundef %218, ptr noundef %219, i32 noundef %209) #15
  br label %242

221:                                              ; preds = %183
  %222 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %223 = load ptr, ptr %222, align 8
  %224 = load ptr, ptr %223, align 64
  %225 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 7
  %226 = load i32, ptr %225, align 4
  %227 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 8
  %228 = load i32, ptr %227, align 32
  tail call void @dma_sync_single_for_cpu(ptr noundef %224, i32 noundef %226, i32 noundef %228, i32 noundef 1) #15
  br label %242

229:                                              ; preds = %179
  %230 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %231 = load ptr, ptr %230, align 8
  %232 = load ptr, ptr %231, align 64
  %233 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 12
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 10
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds %struct.mmc_data, ptr %118, i32 0, i32 6
  %238 = load i32, ptr %237, align 4
  %239 = and i32 %238, 256
  %240 = icmp eq i32 %239, 0
  %241 = select i1 %240, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %232, ptr noundef %234, i32 noundef %236, i32 noundef %241, i32 noundef 0) #15
  br label %242

242:                                              ; preds = %229, %221, %207
  store i32 0, ptr %176, align 4
  br label %243

243:                                              ; preds = %242, %175, %173, %112
  %244 = phi i32 [ %3, %112 ], [ %174, %242 ], [ %174, %175 ], [ %174, %173 ]
  %245 = getelementptr %struct.sdhci_host, ptr %0, i32 0, i32 32, i32 %13
  store ptr null, ptr %245, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %244) #15
  %246 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.sdhci_ops, ptr %247, i32 0, i32 28
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %243
  tail call void %249(ptr noundef %0, ptr noundef nonnull %14) #15
  br label %255

252:                                              ; preds = %243
  %253 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %254 = load ptr, ptr %253, align 8
  tail call void @mmc_request_done(ptr noundef %254, ptr noundef nonnull %14) #15
  br label %255

255:                                              ; preds = %252, %251, %59, %11
  %256 = phi i1 [ true, %59 ], [ true, %11 ], [ false, %252 ], [ false, %251 ]
  ret i1 %256
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_post_req(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 64
  %11 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %10, ptr noundef %12, i32 noundef %14, i32 noundef %19, i32 noundef 0) #15
  br label %20

20:                                               ; preds = %9, %3
  store i32 0, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_pre_req(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_data, ptr %5, i32 0, i32 13
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr %4, align 4
  %17 = tail call fastcc i32 @sdhci_pre_dma_transfer(ptr noundef %3, ptr noundef %16, i32 noundef 1)
  br label %18

18:                                               ; preds = %15, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_get_ro(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, -1
  %6 = tail call fastcc i32 @sdhci_check_ro(ptr noundef %2)
  br i1 %5, label %33, label %7

7:                                                ; preds = %1
  %8 = icmp ne i32 %6, 0
  %9 = zext i1 %8 to i32
  tail call void @msleep(i32 noundef 30) #15
  %10 = tail call fastcc i32 @sdhci_check_ro(ptr noundef %2)
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %8, i32 2, i32 1
  %13 = select i1 %11, i32 %9, i32 %12
  tail call void @msleep(i32 noundef 30) #15
  %14 = tail call fastcc i32 @sdhci_check_ro(ptr noundef %2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %7
  %17 = add nuw nsw i32 %13, 1
  %18 = icmp ugt i32 %13, 1
  br i1 %18, label %33, label %19

19:                                               ; preds = %16, %7
  %20 = phi i32 [ %17, %16 ], [ %13, %7 ]
  tail call void @msleep(i32 noundef 30) #15
  %21 = tail call fastcc i32 @sdhci_check_ro(ptr noundef %2)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = add nuw nsw i32 %20, 1
  %25 = icmp ugt i32 %20, 1
  br i1 %25, label %33, label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ %24, %23 ], [ %20, %19 ]
  tail call void @msleep(i32 noundef 30) #15
  %28 = tail call fastcc i32 @sdhci_check_ro(ptr noundef %2)
  %29 = icmp ne i32 %28, 0
  %30 = icmp ugt i32 %27, 1
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @msleep(i32 noundef 30) #15
  br label %33

33:                                               ; preds = %32, %26, %23, %16, %1
  %34 = phi i32 [ 1, %16 ], [ 1, %23 ], [ 0, %32 ], [ %6, %1 ], [ 1, %26 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_get_cd(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = tail call i32 @mmc_gpio_get_cd(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 16
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = icmp sgt i32 %3, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = icmp ne i32 %3, 0
  br label %38

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 32768
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !8

27:                                               ; preds = %22
  %28 = tail call i32 %25(ptr noundef %2, i32 noundef 36) #15
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 36
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = and i32 %35, 65536
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %34, %17, %15, %8, %1
  %39 = phi i1 [ %16, %15 ], [ %37, %34 ], [ false, %1 ], [ true, %8 ], [ true, %17 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_ack_sdio_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 35, i32 3
  %11 = load i32, ptr %10, align 64
  %12 = or i32 %11, 256
  store i32 %12, ptr %10, align 64
  %13 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sdhci_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %9
  tail call void %16(ptr noundef %2, i32 noundef %12, i32 noundef 52) #15
  br label %23

19:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %20 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 16
  %22 = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %12) #15, !srcloc !25
  br label %23

23:                                               ; preds = %19, %18
  %24 = load i32, ptr %10, align 64
  %25 = load ptr, ptr %13, align 4
  %26 = getelementptr inbounds %struct.sdhci_ops, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29, !prof !8

29:                                               ; preds = %23
  tail call void %27(ptr noundef %2, i32 noundef %24, i32 noundef 56) #15
  br label %34

30:                                               ; preds = %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !24
  tail call void @arm_heavy_mb() #15
  %31 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 16
  %33 = getelementptr i8, ptr %32, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %24) #15, !srcloc !25
  br label %34

34:                                               ; preds = %30, %29, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_card_busy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %8 = tail call i32 %4(ptr noundef %7, i32 noundef 36) #15
  br label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 16
  %12 = getelementptr i8, ptr %11, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i32 [ %8, %6 ], [ %13, %9 ]
  %16 = lshr i32 %15, 20
  %17 = and i32 %16, 1
  %18 = xor i32 %17, 1
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sdhci_prepare_hs400_tuning(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.sdhci_host, ptr %3, i32 0, i32 16
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 8192
  store i32 %8, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_hw_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %2) #15
  br label %11

11:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_card_event(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sdhci_ops, ptr %4, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef %2) #15
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mmc_host_ops, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0) #15
  %15 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 17
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 26
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 27
  %22 = load ptr, ptr %21, align 16
  %23 = icmp eq ptr %22, null
  br label %24

24:                                               ; preds = %20, %9
  %25 = phi i1 [ false, %9 ], [ %23, %20 ]
  %26 = icmp ne i32 %14, 0
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %104, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1
  %30 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 1, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load ptr, ptr %29, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %31, %28 ]
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %36) #14
  %38 = load ptr, ptr %30, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load ptr, ptr %29, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi ptr [ %41, %40 ], [ %38, %35 ]
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %43) #14
  %45 = getelementptr inbounds %struct.sdhci_host, ptr %2, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.mmc_host, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.mmc_host_ops, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 %55(ptr noundef %51) #15
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %49, %42
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr inbounds %struct.sdhci_ops, ptr %59, i32 0, i32 19
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %2, i8 noundef zeroext 2) #15
  br label %62

62:                                               ; preds = %58, %49
  %63 = load i32, ptr %45, align 4
  %64 = and i32 %63, 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.mmc_host, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.mmc_host_ops, ptr %70, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef %68) #15
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %66, %62
  %76 = load ptr, ptr %3, align 4
  %77 = getelementptr inbounds %struct.sdhci_ops, ptr %76, i32 0, i32 19
  %78 = load ptr, ptr %77, align 4
  tail call void %78(ptr noundef %2, i8 noundef zeroext 4) #15
  br label %79

79:                                               ; preds = %75, %66
  %80 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 27
  %81 = load ptr, ptr %80, align 16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %92, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mmc_command, ptr %81, i32 0, i32 5
  store i32 -123, ptr %84, align 4
  %85 = load ptr, ptr %80, align 16
  %86 = getelementptr inbounds %struct.mmc_command, ptr %85, i32 0, i32 8
  %87 = load ptr, ptr %86, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %2, ptr noundef %87) #15
  %88 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 16
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 17
  %91 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %89, ptr noundef %90) #15
  br label %92

92:                                               ; preds = %83, %79
  %93 = load ptr, ptr %17, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.mmc_command, ptr %93, i32 0, i32 5
  store i32 -123, ptr %96, align 4
  %97 = load ptr, ptr %17, align 4
  %98 = getelementptr inbounds %struct.mmc_command, ptr %97, i32 0, i32 8
  %99 = load ptr, ptr %98, align 4
  tail call fastcc void @__sdhci_finish_mrq(ptr noundef %2, ptr noundef %99) #15
  %100 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 16
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 17
  %103 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %101, ptr noundef %102) #15
  br label %104

104:                                              ; preds = %95, %92, %24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sdhci_check_ro(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 15
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sdhci_ops, ptr %10, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = tail call i32 %12(ptr noundef %0) #15
  br label %39

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 8
  %19 = tail call zeroext i1 @mmc_can_gpio_ro(ptr noundef %18) #15
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load ptr, ptr %17, align 8
  %22 = tail call i32 @mmc_gpio_get_ro(ptr noundef %21) #15
  br label %39

23:                                               ; preds = %16
  %24 = load ptr, ptr %9, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !8

27:                                               ; preds = %23
  %28 = tail call i32 %25(ptr noundef %0, i32 noundef 36) #15
  br label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 16
  %32 = getelementptr i8, ptr %31, i32 36
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #15, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !10
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = lshr i32 %35, 19
  %37 = and i32 %36, 1
  %38 = xor i32 %37, 1
  br label %39

39:                                               ; preds = %34, %20, %14, %1
  %40 = phi i32 [ %15, %14 ], [ %22, %20 ], [ %38, %34 ], [ 0, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  %41 = getelementptr inbounds %struct.sdhci_host, ptr %0, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 65536
  %44 = icmp eq i32 %43, 0
  %45 = icmp eq i32 %40, 0
  %46 = zext i1 %45 to i32
  %47 = select i1 %44, i32 %40, i32 %46
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_can_gpio_ro(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u64_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sdhci_led_control(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -152
  %4 = getelementptr i8, ptr %0, i32 224
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #15
  %6 = getelementptr i8, ptr %0, i32 257
  %7 = load i8, ptr %6, align 1, !range !19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %67

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  %11 = getelementptr i8, ptr %0, i32 -148
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 524288
  %14 = icmp eq i32 %13, 0
  br i1 %10, label %15, label %41

15:                                               ; preds = %9
  br i1 %14, label %16, label %67

16:                                               ; preds = %15
  %17 = getelementptr i8, ptr %0, i32 -116
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sdhci_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !8

22:                                               ; preds = %16
  %23 = tail call zeroext i8 %20(ptr noundef %3, i32 noundef 40) #15
  br label %29

24:                                               ; preds = %16
  %25 = getelementptr i8, ptr %0, i32 -136
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr i8, ptr %26, i32 40
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i8 [ %23, %22 ], [ %28, %24 ]
  %31 = and i8 %30, -2
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr inbounds %struct.sdhci_ops, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36, !prof !8

36:                                               ; preds = %29
  tail call void %34(ptr noundef %3, i8 noundef zeroext %31, i32 noundef 40) #15
  br label %67

37:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %38 = getelementptr i8, ptr %0, i32 -136
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr i8, ptr %39, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %40, i8 %31) #15, !srcloc !18
  br label %67

41:                                               ; preds = %9
  br i1 %14, label %42, label %67

42:                                               ; preds = %41
  %43 = getelementptr i8, ptr %0, i32 -116
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.sdhci_ops, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !8

48:                                               ; preds = %42
  %49 = tail call zeroext i8 %46(ptr noundef %3, i32 noundef 40) #15
  br label %55

50:                                               ; preds = %42
  %51 = getelementptr i8, ptr %0, i32 -136
  %52 = load ptr, ptr %51, align 16
  %53 = getelementptr i8, ptr %52, i32 40
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %53) #15, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #15, !srcloc !14
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i8 [ %49, %48 ], [ %54, %50 ]
  %57 = or i8 %56, 1
  %58 = load ptr, ptr %43, align 4
  %59 = getelementptr inbounds %struct.sdhci_ops, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62, !prof !8

62:                                               ; preds = %55
  tail call void %60(ptr noundef %3, i8 noundef zeroext %57, i32 noundef 40) #15
  br label %67

63:                                               ; preds = %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #15, !srcloc !17
  tail call void @arm_heavy_mb() #15
  %64 = getelementptr i8, ptr %0, i32 -136
  %65 = load ptr, ptr %64, align 16
  %66 = getelementptr i8, ptr %65, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %66, i8 %57) #15, !srcloc !18
  br label %67

67:                                               ; preds = %63, %62, %41, %37, %36, %15, %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 5170381}
!10 = !{i64 2154139460}
!11 = !{i64 5169543}
!12 = !{i64 2154140011}
!13 = !{i64 5170161}
!14 = !{i64 2154140430}
!15 = !{i64 2154138322}
!16 = !{i64 5169343}
!17 = !{i64 2154138853}
!18 = !{i64 5169766}
!19 = !{i8 0, i8 2}
!20 = !{i64 2148077875}
!21 = !{i64 576185, i64 2148066156, i64 2148066182, i64 2148066229, i64 2148066251, i64 2148066279, i64 2148066299}
!22 = !{i64 562754, i64 562779, i64 562801, i64 562817, i64 562829, i64 562849, i64 562873, i64 562889, i64 562901}
!23 = !{i64 2148078001}
!24 = !{i64 2154137791}
!25 = !{i64 5169963}
!26 = !{i64 2147911266, i64 2147911546, i64 2147911880, i64 2147912214}
!27 = !{i64 2148078368, i64 2148078394, i64 2148078423, i64 2148078457, i64 2148078488, i64 2148078511}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2154206406, i64 2154206896, i64 2154206443, i64 2154206499, i64 2154206533, i64 2154206557, i64 2154206598, i64 2154206619, i64 2154206647, i64 2154206681}
!30 = !{i64 2154207490, i64 2154207980, i64 2154207527, i64 2154207583, i64 2154207617, i64 2154207641, i64 2154207682, i64 2154207703, i64 2154207731, i64 2154207765}
!31 = !{i64 2154208540, i64 2154209030, i64 2154208577, i64 2154208633, i64 2154208667, i64 2154208691, i64 2154208732, i64 2154208753, i64 2154208781, i64 2154208815}
!32 = !{!"auto-init"}
!33 = !{i64 2149322383}
!34 = !{i64 2149318207}
!35 = !{i64 2149318282, i64 2149318309, i64 2149318356, i64 2149318378, i64 2149318406, i64 2149318426}
!36 = !{i64 2149345386}
!37 = !{i64 2154170972, i64 2154171461, i64 2154171009, i64 2154171065, i64 2154171099, i64 2154171123, i64 2154171164, i64 2154171185, i64 2154171213, i64 2154171247}
!38 = !{i64 474441}
!39 = !{i64 2154179082, i64 2154179571, i64 2154179119, i64 2154179175, i64 2154179209, i64 2154179233, i64 2154179274, i64 2154179295, i64 2154179323, i64 2154179357}
!40 = !{i64 471424, i64 471485}
!41 = !{i64 2152973522}
!42 = !{i64 2152205711}
!43 = !{i64 2152205918}
!44 = !{i64 2152976147}
