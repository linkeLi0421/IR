; ModuleID = '/llk/IR/drivers/ata/libata-sff.c_pt.bc'
source_filename = "../drivers/ata/libata-sff.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_port_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_check_status:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_check_status\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_check_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_pause\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_dma_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_dma_pause\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_dma_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_busy_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_busy_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_busy_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_wait_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_wait_ready\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_wait_ready:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_dev_select:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_dev_select\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_dev_select:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_irq_on:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_irq_on\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_irq_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_tf_load:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_tf_load\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_tf_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_tf_read:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_tf_read\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_tf_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_exec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_exec_command\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_exec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_data_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_data_xfer\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_data_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_data_xfer32:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_data_xfer32\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_data_xfer32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_hsm_move:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_hsm_move\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_hsm_move:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_queue_work\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_queue_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_queue_delayed_work\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_queue_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_queue_pio_task:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_queue_pio_task\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_queue_pio_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_qc_issue:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_qc_issue\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_qc_issue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_qc_fill_rtf:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_qc_fill_rtf\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_qc_fill_rtf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_port_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_port_intr\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_port_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_lost_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_lost_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_lost_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_freeze:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_freeze\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_freeze:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_thaw:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_thaw\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_thaw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_prereset:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_prereset\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_prereset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_dev_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_dev_classify\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_dev_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_wait_after_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_wait_after_reset\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_wait_after_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_softreset:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_softreset\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_softreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_sff_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_sff_hardreset\22\09\09\09\09\09"
module asm "__kstrtabns_sata_sff_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_postreset:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_postreset\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_postreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_drain_fifo:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_drain_fifo\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_drain_fifo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sff_std_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sff_std_ports\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sff_std_ports:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_sff_init_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_sff_init_host\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_sff_init_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_sff_prepare_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_sff_prepare_host\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_sff_prepare_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_sff_activate_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_sff_activate_host\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_sff_activate_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_sff_init_one:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_sff_init_one\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_sff_init_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_port_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma32_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma32_port_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma32_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_qc_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_qc_prep\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_qc_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_dumb_qc_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_dumb_qc_prep\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_dumb_qc_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_qc_issue:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_qc_issue\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_qc_issue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_port_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_port_intr\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_port_intr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_error_handler\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_error_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_post_internal_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_post_internal_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_post_internal_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_irq_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_irq_clear\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_irq_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_setup\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_start:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_start\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_stop\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_status:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_status\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_port_start:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_port_start\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_port_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_bmdma_port_start32:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_bmdma_port_start32\22\09\09\09\09\09"
module asm "__kstrtabns_ata_bmdma_port_start32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_bmdma_clear_simplex:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_bmdma_clear_simplex\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_bmdma_clear_simplex:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_bmdma_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_bmdma_init\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_bmdma_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_bmdma_prepare_host:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_bmdma_prepare_host\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_bmdma_prepare_host:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_bmdma_init_one:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_bmdma_init_one\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_bmdma_init_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.74, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.74 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.71, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.71 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%union.anon.58 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.ata_bmdma_prd = type { i32, i32 }

@ata_base_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@ata_sff_port_ops = dso_local constant %struct.ata_port_operations { ptr null, ptr null, ptr @ata_noop_qc_prep, ptr @ata_sff_qc_issue, ptr @ata_sff_qc_fill_rtf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_freeze, ptr @ata_sff_thaw, ptr @ata_sff_prereset, ptr @ata_sff_softreset, ptr @sata_sff_hardreset, ptr @ata_sff_postreset, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_error_handler, ptr @ata_sff_lost_interrupt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_dev_select, ptr null, ptr @ata_sff_check_status, ptr null, ptr @ata_sff_tf_load, ptr @ata_sff_tf_read, ptr @ata_sff_exec_command, ptr @ata_sff_data_xfer, ptr null, ptr null, ptr null, ptr @ata_sff_drain_fifo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_base_port_ops }, align 4
@__kstrtab_ata_sff_port_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_port_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_port_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_port_ops to i32), ptr @__kstrtab_ata_sff_port_ops, ptr @__kstrtabns_ata_sff_port_ops }, section "___ksymtab_gpl+ata_sff_port_ops", align 4
@__kstrtab_ata_sff_check_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_check_status = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_check_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_check_status to i32), ptr @__kstrtab_ata_sff_check_status, ptr @__kstrtabns_ata_sff_check_status }, section "___ksymtab_gpl+ata_sff_check_status", align 4
@__kstrtab_ata_sff_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_pause to i32), ptr @__kstrtab_ata_sff_pause, ptr @__kstrtabns_ata_sff_pause }, section "___ksymtab_gpl+ata_sff_pause", align 4
@__kstrtab_ata_sff_dma_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_dma_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_dma_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_dma_pause to i32), ptr @__kstrtab_ata_sff_dma_pause, ptr @__kstrtabns_ata_sff_dma_pause }, section "___ksymtab_gpl+ata_sff_dma_pause", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [67 x i8] c"\014ata%u: port is slow to respond, please be patient (Status 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"\013ata%u: port failed to respond (%lu secs, Status 0x%x)\0A\00", align 1
@__kstrtab_ata_sff_busy_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_busy_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_busy_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_busy_sleep to i32), ptr @__kstrtab_ata_sff_busy_sleep, ptr @__kstrtabns_ata_sff_busy_sleep }, section "___ksymtab_gpl+ata_sff_busy_sleep", align 4
@__kstrtab_ata_sff_wait_ready = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_wait_ready = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_wait_ready = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_wait_ready to i32), ptr @__kstrtab_ata_sff_wait_ready, ptr @__kstrtabns_ata_sff_wait_ready }, section "___ksymtab_gpl+ata_sff_wait_ready", align 4
@__kstrtab_ata_sff_dev_select = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_dev_select = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_dev_select = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_dev_select to i32), ptr @__kstrtab_ata_sff_dev_select, ptr @__kstrtabns_ata_sff_dev_select }, section "___ksymtab_gpl+ata_sff_dev_select", align 4
@__kstrtab_ata_sff_irq_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_irq_on = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_irq_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_irq_on to i32), ptr @__kstrtab_ata_sff_irq_on, ptr @__kstrtabns_ata_sff_irq_on }, section "___ksymtab_gpl+ata_sff_irq_on", align 4
@ata_sff_tf_load.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"drivers/ata/libata-sff.c\00", align 1
@__kstrtab_ata_sff_tf_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_tf_load = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_tf_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_tf_load to i32), ptr @__kstrtab_ata_sff_tf_load, ptr @__kstrtabns_ata_sff_tf_load }, section "___ksymtab_gpl+ata_sff_tf_load", align 4
@ata_sff_tf_read.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ata_sff_tf_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_tf_read = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_tf_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_tf_read to i32), ptr @__kstrtab_ata_sff_tf_read, ptr @__kstrtabns_ata_sff_tf_read }, section "___ksymtab_gpl+ata_sff_tf_read", align 4
@__kstrtab_ata_sff_exec_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_exec_command = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_exec_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_exec_command to i32), ptr @__kstrtab_ata_sff_exec_command, ptr @__kstrtabns_ata_sff_exec_command }, section "___ksymtab_gpl+ata_sff_exec_command", align 4
@__kstrtab_ata_sff_data_xfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_data_xfer = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_data_xfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_data_xfer to i32), ptr @__kstrtab_ata_sff_data_xfer, ptr @__kstrtabns_ata_sff_data_xfer }, section "___ksymtab_gpl+ata_sff_data_xfer", align 4
@__kstrtab_ata_sff_data_xfer32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_data_xfer32 = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_data_xfer32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_data_xfer32 to i32), ptr @__kstrtab_ata_sff_data_xfer32, ptr @__kstrtabns_ata_sff_data_xfer32 }, section "___ksymtab_gpl+ata_sff_data_xfer32", align 4
@ata_sff_hsm_move.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ata_sff_hsm_move.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ST_FIRST: !(DRQ|ERR|DF)\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"ST_FIRST: DRQ=1 with device error, dev_stat 0x%X\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"ST-ATAPI: DRQ=1 with device error, dev_stat 0x%X\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"ST-ATA: DRQ=0 without device error, dev_stat 0x%X\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"ST-ATA: BUSY|DRQ persists on ERR|DF, dev_stat 0x%X\00", align 1
@ata_sff_hsm_move.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"ata%d: SFF host state machine in invalid state %d\00", align 1
@__kstrtab_ata_sff_hsm_move = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_hsm_move = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_hsm_move = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_hsm_move to i32), ptr @__kstrtab_ata_sff_hsm_move, ptr @__kstrtabns_ata_sff_hsm_move }, section "___ksymtab_gpl+ata_sff_hsm_move", align 4
@ata_sff_wq = internal unnamed_addr global ptr null, align 4
@__kstrtab_ata_sff_queue_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_queue_work = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_queue_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_queue_work to i32), ptr @__kstrtab_ata_sff_queue_work, ptr @__kstrtabns_ata_sff_queue_work }, section "___ksymtab_gpl+ata_sff_queue_work", align 4
@__kstrtab_ata_sff_queue_delayed_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_queue_delayed_work = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_queue_delayed_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_queue_delayed_work to i32), ptr @__kstrtab_ata_sff_queue_delayed_work, ptr @__kstrtabns_ata_sff_queue_delayed_work }, section "___ksymtab_gpl+ata_sff_queue_delayed_work", align 4
@__kstrtab_ata_sff_queue_pio_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_queue_pio_task = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_queue_pio_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_queue_pio_task to i32), ptr @__kstrtab_ata_sff_queue_pio_task, ptr @__kstrtabns_ata_sff_queue_pio_task }, section "___ksymtab_gpl+ata_sff_queue_pio_task", align 4
@__kstrtab_ata_sff_qc_issue = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_qc_issue = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_qc_issue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_qc_issue to i32), ptr @__kstrtab_ata_sff_qc_issue, ptr @__kstrtabns_ata_sff_qc_issue }, section "___ksymtab_gpl+ata_sff_qc_issue", align 4
@__kstrtab_ata_sff_qc_fill_rtf = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_qc_fill_rtf = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_qc_fill_rtf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_qc_fill_rtf to i32), ptr @__kstrtab_ata_sff_qc_fill_rtf, ptr @__kstrtabns_ata_sff_qc_fill_rtf }, section "___ksymtab_gpl+ata_sff_qc_fill_rtf", align 4
@__kstrtab_ata_sff_port_intr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_port_intr = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_port_intr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_port_intr to i32), ptr @__kstrtab_ata_sff_port_intr, ptr @__kstrtabns_ata_sff_port_intr }, section "___ksymtab_gpl+ata_sff_port_intr", align 4
@__kstrtab_ata_sff_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_interrupt to i32), ptr @__kstrtab_ata_sff_interrupt, ptr @__kstrtabns_ata_sff_interrupt }, section "___ksymtab_gpl+ata_sff_interrupt", align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"\014ata%u: lost interrupt (Status 0x%x)\0A\00", align 1
@__kstrtab_ata_sff_lost_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_lost_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_lost_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_lost_interrupt to i32), ptr @__kstrtab_ata_sff_lost_interrupt, ptr @__kstrtabns_ata_sff_lost_interrupt }, section "___ksymtab_gpl+ata_sff_lost_interrupt", align 4
@__kstrtab_ata_sff_freeze = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_freeze = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_freeze = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_freeze to i32), ptr @__kstrtab_ata_sff_freeze, ptr @__kstrtabns_ata_sff_freeze }, section "___ksymtab_gpl+ata_sff_freeze", align 4
@__kstrtab_ata_sff_thaw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_thaw = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_thaw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_thaw to i32), ptr @__kstrtab_ata_sff_thaw, ptr @__kstrtabns_ata_sff_thaw }, section "___ksymtab_gpl+ata_sff_thaw", align 4
@.str.12 = private unnamed_addr constant [62 x i8] c"\014ata%u.%02u: device not ready (errno=%d), forcing hardreset\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"\014ata%u: device not ready (errno=%d), forcing hardreset\0A\00", align 1
@__kstrtab_ata_sff_prereset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_prereset = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_prereset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_prereset to i32), ptr @__kstrtab_ata_sff_prereset, ptr @__kstrtabns_ata_sff_prereset }, section "___ksymtab_gpl+ata_sff_prereset", align 4
@__kstrtab_ata_sff_dev_classify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_dev_classify = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_dev_classify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_dev_classify to i32), ptr @__kstrtab_ata_sff_dev_classify, ptr @__kstrtabns_ata_sff_dev_classify }, section "___ksymtab_gpl+ata_sff_dev_classify", align 4
@__kstrtab_ata_sff_wait_after_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_wait_after_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_wait_after_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_wait_after_reset to i32), ptr @__kstrtab_ata_sff_wait_after_reset, ptr @__kstrtabns_ata_sff_wait_after_reset }, section "___ksymtab_gpl+ata_sff_wait_after_reset", align 4
@.str.14 = private unnamed_addr constant [38 x i8] c"\013ata%u.%02u: SRST failed (errno=%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\013ata%u: SRST failed (errno=%d)\0A\00", align 1
@__kstrtab_ata_sff_softreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_softreset = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_softreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_softreset to i32), ptr @__kstrtab_ata_sff_softreset, ptr @__kstrtabns_ata_sff_softreset }, section "___ksymtab_gpl+ata_sff_softreset", align 4
@__kstrtab_sata_sff_hardreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_sff_hardreset = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_sff_hardreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_sff_hardreset to i32), ptr @__kstrtab_sata_sff_hardreset, ptr @__kstrtabns_sata_sff_hardreset }, section "___ksymtab_gpl+sata_sff_hardreset", align 4
@__kstrtab_ata_sff_postreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_postreset = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_postreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_postreset to i32), ptr @__kstrtab_ata_sff_postreset, ptr @__kstrtabns_ata_sff_postreset }, section "___ksymtab_gpl+ata_sff_postreset", align 4
@__kstrtab_ata_sff_drain_fifo = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_drain_fifo = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_drain_fifo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_drain_fifo to i32), ptr @__kstrtab_ata_sff_drain_fifo, ptr @__kstrtabns_ata_sff_drain_fifo }, section "___ksymtab_gpl+ata_sff_drain_fifo", align 4
@__kstrtab_ata_sff_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_error_handler to i32), ptr @__kstrtab_ata_sff_error_handler, ptr @__kstrtabns_ata_sff_error_handler }, section "___ksymtab_gpl+ata_sff_error_handler", align 4
@__kstrtab_ata_sff_std_ports = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sff_std_ports = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sff_std_ports = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sff_std_ports to i32), ptr @__kstrtab_ata_sff_std_ports, ptr @__kstrtabns_ata_sff_std_ports }, section "___ksymtab_gpl+ata_sff_std_ports", align 4
@ata_dummy_port_ops = external dso_local global %struct.ata_port_operations, align 4
@.str.16 = private unnamed_addr constant [53 x i8] c"failed to request/iomap BARs for port %d (errno=%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"cmd 0x%llx ctl 0x%llx\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"no available native port\0A\00", align 1
@__kstrtab_ata_pci_sff_init_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_sff_init_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_sff_init_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_sff_init_host to i32), ptr @__kstrtab_ata_pci_sff_init_host, ptr @__kstrtabns_ata_pci_sff_init_host }, section "___ksymtab_gpl+ata_pci_sff_init_host", align 4
@.str.19 = private unnamed_addr constant [29 x i8] c"failed to allocate ATA host\0A\00", align 1
@__kstrtab_ata_pci_sff_prepare_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_sff_prepare_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_sff_prepare_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_sff_prepare_host to i32), ptr @__kstrtab_ata_pci_sff_prepare_host, ptr @__kstrtabns_ata_pci_sff_prepare_host }, section "___ksymtab_gpl+ata_pci_sff_prepare_host", align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"irq %d\00", align 1
@__kstrtab_ata_pci_sff_activate_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_sff_activate_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_sff_activate_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_sff_activate_host to i32), ptr @__kstrtab_ata_pci_sff_activate_host, ptr @__kstrtabns_ata_pci_sff_activate_host }, section "___ksymtab_gpl+ata_pci_sff_activate_host", align 4
@__kstrtab_ata_pci_sff_init_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_sff_init_one = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_sff_init_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_sff_init_one to i32), ptr @__kstrtab_ata_pci_sff_init_one, ptr @__kstrtabns_ata_pci_sff_init_one }, section "___ksymtab_gpl+ata_pci_sff_init_one", align 4
@ata_bmdma_port_ops = dso_local constant %struct.ata_port_operations { ptr null, ptr null, ptr @ata_bmdma_qc_prep, ptr @ata_bmdma_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_error_handler, ptr null, ptr @ata_bmdma_post_internal_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_irq_clear, ptr null, ptr @ata_bmdma_setup, ptr @ata_bmdma_start, ptr @ata_bmdma_stop, ptr @ata_bmdma_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_port_ops }, align 4
@__kstrtab_ata_bmdma_port_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_port_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_port_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_port_ops to i32), ptr @__kstrtab_ata_bmdma_port_ops, ptr @__kstrtabns_ata_bmdma_port_ops }, section "___ksymtab_gpl+ata_bmdma_port_ops", align 4
@ata_bmdma32_port_ops = dso_local constant %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_start32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_sff_data_xfer32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_bmdma_port_ops }, align 4
@__kstrtab_ata_bmdma32_port_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma32_port_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma32_port_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma32_port_ops to i32), ptr @__kstrtab_ata_bmdma32_port_ops, ptr @__kstrtabns_ata_bmdma32_port_ops }, section "___ksymtab_gpl+ata_bmdma32_port_ops", align 4
@__kstrtab_ata_bmdma_qc_prep = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_qc_prep = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_qc_prep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_qc_prep to i32), ptr @__kstrtab_ata_bmdma_qc_prep, ptr @__kstrtabns_ata_bmdma_qc_prep }, section "___ksymtab_gpl+ata_bmdma_qc_prep", align 4
@__kstrtab_ata_bmdma_dumb_qc_prep = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_dumb_qc_prep = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_dumb_qc_prep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_dumb_qc_prep to i32), ptr @__kstrtab_ata_bmdma_dumb_qc_prep, ptr @__kstrtabns_ata_bmdma_dumb_qc_prep }, section "___ksymtab_gpl+ata_bmdma_dumb_qc_prep", align 4
@ata_bmdma_qc_issue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ata_bmdma_qc_issue.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ata_bmdma_qc_issue = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_qc_issue = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_qc_issue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_qc_issue to i32), ptr @__kstrtab_ata_bmdma_qc_issue, ptr @__kstrtabns_ata_bmdma_qc_issue }, section "___ksymtab_gpl+ata_bmdma_qc_issue", align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"BMDMA stat 0x%x\00", align 1
@__kstrtab_ata_bmdma_port_intr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_port_intr = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_port_intr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_port_intr to i32), ptr @__kstrtab_ata_bmdma_port_intr, ptr @__kstrtabns_ata_bmdma_port_intr }, section "___ksymtab_gpl+ata_bmdma_port_intr", align 4
@__kstrtab_ata_bmdma_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_interrupt to i32), ptr @__kstrtab_ata_bmdma_interrupt, ptr @__kstrtabns_ata_bmdma_interrupt }, section "___ksymtab_gpl+ata_bmdma_interrupt", align 4
@__kstrtab_ata_bmdma_error_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_error_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_error_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_error_handler to i32), ptr @__kstrtab_ata_bmdma_error_handler, ptr @__kstrtabns_ata_bmdma_error_handler }, section "___ksymtab_gpl+ata_bmdma_error_handler", align 4
@__kstrtab_ata_bmdma_post_internal_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_post_internal_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_post_internal_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_post_internal_cmd to i32), ptr @__kstrtab_ata_bmdma_post_internal_cmd, ptr @__kstrtabns_ata_bmdma_post_internal_cmd }, section "___ksymtab_gpl+ata_bmdma_post_internal_cmd", align 4
@__kstrtab_ata_bmdma_irq_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_irq_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_irq_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_irq_clear to i32), ptr @__kstrtab_ata_bmdma_irq_clear, ptr @__kstrtabns_ata_bmdma_irq_clear }, section "___ksymtab_gpl+ata_bmdma_irq_clear", align 4
@__kstrtab_ata_bmdma_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_setup to i32), ptr @__kstrtab_ata_bmdma_setup, ptr @__kstrtabns_ata_bmdma_setup }, section "___ksymtab_gpl+ata_bmdma_setup", align 4
@__kstrtab_ata_bmdma_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_start = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_start to i32), ptr @__kstrtab_ata_bmdma_start, ptr @__kstrtabns_ata_bmdma_start }, section "___ksymtab_gpl+ata_bmdma_start", align 4
@__kstrtab_ata_bmdma_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_stop to i32), ptr @__kstrtab_ata_bmdma_stop, ptr @__kstrtabns_ata_bmdma_stop }, section "___ksymtab_gpl+ata_bmdma_stop", align 4
@__kstrtab_ata_bmdma_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_status = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_status to i32), ptr @__kstrtab_ata_bmdma_status, ptr @__kstrtabns_ata_bmdma_status }, section "___ksymtab_gpl+ata_bmdma_status", align 4
@__kstrtab_ata_bmdma_port_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_port_start = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_port_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_port_start to i32), ptr @__kstrtab_ata_bmdma_port_start, ptr @__kstrtabns_ata_bmdma_port_start }, section "___ksymtab_gpl+ata_bmdma_port_start", align 4
@__kstrtab_ata_bmdma_port_start32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_bmdma_port_start32 = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_bmdma_port_start32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_bmdma_port_start32 to i32), ptr @__kstrtab_ata_bmdma_port_start32, ptr @__kstrtabns_ata_bmdma_port_start32 }, section "___ksymtab_gpl+ata_bmdma_port_start32", align 4
@__kstrtab_ata_pci_bmdma_clear_simplex = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_bmdma_clear_simplex = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_bmdma_clear_simplex = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_bmdma_clear_simplex to i32), ptr @__kstrtab_ata_pci_bmdma_clear_simplex, ptr @__kstrtabns_ata_pci_bmdma_clear_simplex }, section "___ksymtab_gpl+ata_pci_bmdma_clear_simplex", align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"BAR4 is zero\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"failed to set dma mask\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"failed to request/iomap BAR4\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"bmdma 0x%llx\00", align 1
@__kstrtab_ata_pci_bmdma_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_bmdma_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_bmdma_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_bmdma_init to i32), ptr @__kstrtab_ata_pci_bmdma_init, ptr @__kstrtabns_ata_pci_bmdma_init }, section "___ksymtab_gpl+ata_pci_bmdma_init", align 4
@__kstrtab_ata_pci_bmdma_prepare_host = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_bmdma_prepare_host = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_bmdma_prepare_host = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_bmdma_prepare_host to i32), ptr @__kstrtab_ata_pci_bmdma_prepare_host, ptr @__kstrtabns_ata_pci_bmdma_prepare_host }, section "___ksymtab_gpl+ata_pci_bmdma_prepare_host", align 4
@__kstrtab_ata_pci_bmdma_init_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_bmdma_init_one = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_bmdma_init_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_bmdma_init_one to i32), ptr @__kstrtab_ata_pci_bmdma_init_one, ptr @__kstrtabns_ata_pci_bmdma_init_one }, section "___ksymtab_gpl+ata_pci_bmdma_init_one", align 4
@.str.27 = private unnamed_addr constant [8 x i8] c"ata_sff\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__tracepoint_ata_sff_hsm_state = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@ata_pio_sectors.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ata_pio_sector.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_ata_sff_pio_transfer_data = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@atapi_send_cdb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_atapi_send_cdb = external dso_local global %struct.tracepoint, align 4
@.str.29 = private unnamed_addr constant [43 x i8] c"ATAPI check failed (ireason=0x%x bytes=%u)\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"unexpected or too much trailing data buf=%u cur=%u bytes=%u\00", align 1
@__tracepoint_atapi_pio_transfer_data = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_sff_hsm_command_complete = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_sff_flush_pio_task = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_exec_command = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_sff_port_intr = external dso_local global %struct.tracepoint, align 4
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@.str.31 = private unnamed_addr constant [30 x i8] c"no valid port_info specified\0A\00", align 1
@__tracepoint_ata_tf_load = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_bmdma_setup = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_bmdma_start = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_bmdma_status = external dso_local global %struct.tracepoint, align 4
@__tracepoint_ata_bmdma_stop = external dso_local global %struct.tracepoint, align 4
@.str.32 = private unnamed_addr constant [32 x i8] c"BMDMA: %s, falling back to PIO\0A\00", align 1
@ata_sff_pio_task.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [57 x ptr] [ptr @__ksymtab_ata_bmdma32_port_ops, ptr @__ksymtab_ata_bmdma_dumb_qc_prep, ptr @__ksymtab_ata_bmdma_error_handler, ptr @__ksymtab_ata_bmdma_interrupt, ptr @__ksymtab_ata_bmdma_irq_clear, ptr @__ksymtab_ata_bmdma_port_intr, ptr @__ksymtab_ata_bmdma_port_ops, ptr @__ksymtab_ata_bmdma_port_start, ptr @__ksymtab_ata_bmdma_port_start32, ptr @__ksymtab_ata_bmdma_post_internal_cmd, ptr @__ksymtab_ata_bmdma_qc_issue, ptr @__ksymtab_ata_bmdma_qc_prep, ptr @__ksymtab_ata_bmdma_setup, ptr @__ksymtab_ata_bmdma_start, ptr @__ksymtab_ata_bmdma_status, ptr @__ksymtab_ata_bmdma_stop, ptr @__ksymtab_ata_pci_bmdma_clear_simplex, ptr @__ksymtab_ata_pci_bmdma_init, ptr @__ksymtab_ata_pci_bmdma_init_one, ptr @__ksymtab_ata_pci_bmdma_prepare_host, ptr @__ksymtab_ata_pci_sff_activate_host, ptr @__ksymtab_ata_pci_sff_init_host, ptr @__ksymtab_ata_pci_sff_init_one, ptr @__ksymtab_ata_pci_sff_prepare_host, ptr @__ksymtab_ata_sff_busy_sleep, ptr @__ksymtab_ata_sff_check_status, ptr @__ksymtab_ata_sff_data_xfer, ptr @__ksymtab_ata_sff_data_xfer32, ptr @__ksymtab_ata_sff_dev_classify, ptr @__ksymtab_ata_sff_dev_select, ptr @__ksymtab_ata_sff_dma_pause, ptr @__ksymtab_ata_sff_drain_fifo, ptr @__ksymtab_ata_sff_error_handler, ptr @__ksymtab_ata_sff_exec_command, ptr @__ksymtab_ata_sff_freeze, ptr @__ksymtab_ata_sff_hsm_move, ptr @__ksymtab_ata_sff_interrupt, ptr @__ksymtab_ata_sff_irq_on, ptr @__ksymtab_ata_sff_lost_interrupt, ptr @__ksymtab_ata_sff_pause, ptr @__ksymtab_ata_sff_port_intr, ptr @__ksymtab_ata_sff_port_ops, ptr @__ksymtab_ata_sff_postreset, ptr @__ksymtab_ata_sff_prereset, ptr @__ksymtab_ata_sff_qc_fill_rtf, ptr @__ksymtab_ata_sff_qc_issue, ptr @__ksymtab_ata_sff_queue_delayed_work, ptr @__ksymtab_ata_sff_queue_pio_task, ptr @__ksymtab_ata_sff_queue_work, ptr @__ksymtab_ata_sff_softreset, ptr @__ksymtab_ata_sff_std_ports, ptr @__ksymtab_ata_sff_tf_load, ptr @__ksymtab_ata_sff_tf_read, ptr @__ksymtab_ata_sff_thaw, ptr @__ksymtab_ata_sff_wait_after_reset, ptr @__ksymtab_ata_sff_wait_ready, ptr @__ksymtab_sata_sff_hardreset], section "llvm.metadata"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_noop_qc_prep(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_qc_issue(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 64
  store i32 %13, ptr %11, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.ata_device, ptr %4, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  br label %18

18:                                               ; preds = %26, %14
  %19 = phi i32 [ 1000, %14 ], [ %27, %26 ]
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #10
  %21 = load ptr, ptr %17, align 4
  %22 = getelementptr inbounds %struct.ata_port_operations, ptr %21, i32 0, i32 39
  %23 = load ptr, ptr %22, align 4
  %24 = tail call zeroext i8 %23(ptr noundef %2) #10
  %25 = icmp eq i8 %24, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = add nsw i32 %19, -1
  %28 = and i8 %24, -120
  %29 = icmp ne i8 %28, 0
  %30 = icmp ne i32 %27, 0
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %18, label %32

32:                                               ; preds = %26, %18
  %33 = load ptr, ptr %17, align 4
  %34 = getelementptr inbounds %struct.ata_port_operations, ptr %33, i32 0, i32 37
  %35 = load ptr, ptr %34, align 4
  tail call void %35(ptr noundef %2, i32 noundef %16) #10
  br label %36

36:                                               ; preds = %44, %32
  %37 = phi i32 [ 1000, %32 ], [ %45, %44 ]
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #10
  %39 = load ptr, ptr %17, align 4
  %40 = getelementptr inbounds %struct.ata_port_operations, ptr %39, i32 0, i32 39
  %41 = load ptr, ptr %40, align 4
  %42 = tail call zeroext i8 %41(ptr noundef %2) #10
  %43 = icmp eq i8 %42, -1
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = add nsw i32 %37, -1
  %46 = and i8 %42, -120
  %47 = icmp ne i8 %46, 0
  %48 = icmp ne i32 %45, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %36, label %50

50:                                               ; preds = %44, %36
  %51 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %52 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %53 = load i8, ptr %52, align 4
  switch i8 %53, label %260 [
    i8 0, label %54
    i8 1, label %114
    i8 9, label %185
    i8 8, label %185
  ]

54:                                               ; preds = %50
  %55 = load i32, ptr %51, align 4
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = or i8 %60, 2
  store i8 %61, ptr %59, align 1
  br label %62

62:                                               ; preds = %58, %54
  %63 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %64 = load i32, ptr %63, align 4
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = tail call ptr @llvm.thread.pointer() #10
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %79 = tail call i32 @__traceiter_ata_tf_load(ptr noundef null, ptr noundef %2, ptr noundef %51) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %80

80:                                               ; preds = %78, %67, %62
  %81 = load ptr, ptr %17, align 4
  %82 = getelementptr inbounds %struct.ata_port_operations, ptr %81, i32 0, i32 41
  %83 = load ptr, ptr %82, align 4
  tail call void %83(ptr noundef %2, ptr noundef %51) #10
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = tail call ptr @llvm.thread.pointer() #10
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %98 = tail call i32 @__traceiter_ata_exec_command(ptr noundef null, ptr noundef %2, ptr noundef %51, i32 noundef %64) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %99

99:                                               ; preds = %97, %86, %80
  %100 = load ptr, ptr %17, align 4
  %101 = getelementptr inbounds %struct.ata_port_operations, ptr %100, i32 0, i32 43
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef %2, ptr noundef %51) #10
  %103 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 37
  store i32 3, ptr %103, align 16
  %104 = load i32, ptr %51, align 4
  %105 = and i32 %104, 64
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %260, label %107

107:                                              ; preds = %99
  %108 = load ptr, ptr %5, align 64
  %109 = getelementptr inbounds %struct.ata_port, ptr %108, i32 0, i32 11
  %110 = load ptr, ptr %109, align 32
  %111 = icmp ne ptr %110, null
  %112 = icmp ne ptr %110, %5
  %113 = and i1 %111, %112
  br i1 %113, label %251, label %254, !prof !12

114:                                              ; preds = %50
  %115 = load i32, ptr %51, align 4
  %116 = and i32 %115, 64
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 2
  %120 = load i8, ptr %119, align 1
  %121 = or i8 %120, 2
  store i8 %121, ptr %119, align 1
  br label %122

122:                                              ; preds = %118, %114
  %123 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %124 = load i32, ptr %123, align 4
  %125 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 1), align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = tail call ptr @llvm.thread.pointer() #10
  %129 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = lshr i32 %130, 5
  %132 = getelementptr i32, ptr @__cpu_online_mask, i32 %131
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %130, 31
  %135 = shl nuw i32 1, %134
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %127
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %139 = tail call i32 @__traceiter_ata_tf_load(ptr noundef null, ptr noundef %2, ptr noundef %51) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %140

140:                                              ; preds = %138, %127, %122
  %141 = load ptr, ptr %17, align 4
  %142 = getelementptr inbounds %struct.ata_port_operations, ptr %141, i32 0, i32 41
  %143 = load ptr, ptr %142, align 4
  tail call void %143(ptr noundef %2, ptr noundef %51) #10
  %144 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 1), align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = tail call ptr @llvm.thread.pointer() #10
  %148 = getelementptr inbounds %struct.thread_info, ptr %147, i32 0, i32 2
  %149 = load i32, ptr %148, align 8
  %150 = lshr i32 %149, 5
  %151 = getelementptr i32, ptr @__cpu_online_mask, i32 %150
  %152 = load volatile i32, ptr %151, align 4
  %153 = and i32 %149, 31
  %154 = shl nuw i32 1, %153
  %155 = and i32 %154, %152
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %146
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %158 = tail call i32 @__traceiter_ata_exec_command(ptr noundef null, ptr noundef %2, ptr noundef %51, i32 noundef %124) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %159

159:                                              ; preds = %157, %146, %140
  %160 = load ptr, ptr %17, align 4
  %161 = getelementptr inbounds %struct.ata_port_operations, ptr %160, i32 0, i32 43
  %162 = load ptr, ptr %161, align 4
  tail call void %162(ptr noundef %2, ptr noundef %51) #10
  %163 = load i32, ptr %51, align 4
  %164 = and i32 %163, 8
  %165 = icmp eq i32 %164, 0
  %166 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 37
  br i1 %165, label %174, label %167

167:                                              ; preds = %159
  store i32 1, ptr %166, align 16
  %168 = load ptr, ptr %5, align 64
  %169 = getelementptr inbounds %struct.ata_port, ptr %168, i32 0, i32 11
  %170 = load ptr, ptr %169, align 32
  %171 = icmp ne ptr %170, null
  %172 = icmp ne ptr %170, %5
  %173 = and i1 %171, %172
  br i1 %173, label %251, label %254, !prof !12

174:                                              ; preds = %159
  store i32 2, ptr %166, align 16
  %175 = load i32, ptr %51, align 4
  %176 = and i32 %175, 64
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %260, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %5, align 64
  %180 = getelementptr inbounds %struct.ata_port, ptr %179, i32 0, i32 11
  %181 = load ptr, ptr %180, align 32
  %182 = icmp ne ptr %181, null
  %183 = icmp ne ptr %181, %5
  %184 = and i1 %182, %183
  br i1 %184, label %251, label %254, !prof !12

185:                                              ; preds = %50, %50
  %186 = load i32, ptr %51, align 4
  %187 = and i32 %186, 64
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 2
  %191 = load i8, ptr %190, align 1
  %192 = or i8 %191, 2
  store i8 %192, ptr %190, align 1
  br label %193

193:                                              ; preds = %189, %185
  %194 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %195 = load i32, ptr %194, align 4
  %196 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 1), align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %193
  %199 = tail call ptr @llvm.thread.pointer() #10
  %200 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 2
  %201 = load i32, ptr %200, align 8
  %202 = lshr i32 %201, 5
  %203 = getelementptr i32, ptr @__cpu_online_mask, i32 %202
  %204 = load volatile i32, ptr %203, align 4
  %205 = and i32 %201, 31
  %206 = shl nuw i32 1, %205
  %207 = and i32 %206, %204
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %198
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %210 = tail call i32 @__traceiter_ata_tf_load(ptr noundef null, ptr noundef %2, ptr noundef %51) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %211

211:                                              ; preds = %209, %198, %193
  %212 = load ptr, ptr %17, align 4
  %213 = getelementptr inbounds %struct.ata_port_operations, ptr %212, i32 0, i32 41
  %214 = load ptr, ptr %213, align 4
  tail call void %214(ptr noundef %2, ptr noundef %51) #10
  %215 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 1), align 4
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %211
  %218 = tail call ptr @llvm.thread.pointer() #10
  %219 = getelementptr inbounds %struct.thread_info, ptr %218, i32 0, i32 2
  %220 = load i32, ptr %219, align 8
  %221 = lshr i32 %220, 5
  %222 = getelementptr i32, ptr @__cpu_online_mask, i32 %221
  %223 = load volatile i32, ptr %222, align 4
  %224 = and i32 %220, 31
  %225 = shl nuw i32 1, %224
  %226 = and i32 %225, %223
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %217
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %229 = tail call i32 @__traceiter_ata_exec_command(ptr noundef null, ptr noundef %2, ptr noundef %51, i32 noundef %195) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %230

230:                                              ; preds = %228, %217, %211
  %231 = load ptr, ptr %17, align 4
  %232 = getelementptr inbounds %struct.ata_port_operations, ptr %231, i32 0, i32 43
  %233 = load ptr, ptr %232, align 4
  tail call void %233(ptr noundef %2, ptr noundef %51) #10
  %234 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 37
  store i32 1, ptr %234, align 16
  %235 = load ptr, ptr %3, align 4
  %236 = getelementptr inbounds %struct.ata_device, ptr %235, i32 0, i32 3
  %237 = load i32, ptr %236, align 4
  %238 = and i32 %237, 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %230
  %241 = load i32, ptr %51, align 4
  %242 = and i32 %241, 64
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %260, label %244

244:                                              ; preds = %240, %230
  %245 = load ptr, ptr %5, align 64
  %246 = getelementptr inbounds %struct.ata_port, ptr %245, i32 0, i32 11
  %247 = load ptr, ptr %246, align 32
  %248 = icmp ne ptr %247, null
  %249 = icmp ne ptr %247, %5
  %250 = and i1 %248, %249
  br i1 %250, label %251, label %254, !prof !12

251:                                              ; preds = %244, %178, %167, %107
  %252 = phi ptr [ %109, %107 ], [ %169, %167 ], [ %180, %178 ], [ %246, %244 ]
  %253 = phi ptr [ %108, %107 ], [ %168, %167 ], [ %179, %178 ], [ %245, %244 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1236, i32 noundef 9, ptr noundef null) #10
  br label %254

254:                                              ; preds = %251, %244, %178, %167, %107
  %255 = phi ptr [ %109, %107 ], [ %169, %167 ], [ %180, %178 ], [ %246, %244 ], [ %252, %251 ]
  %256 = phi ptr [ %108, %107 ], [ %168, %167 ], [ %179, %178 ], [ %245, %244 ], [ %253, %251 ]
  store ptr %5, ptr %255, align 32
  %257 = getelementptr inbounds %struct.ata_port, ptr %256, i32 0, i32 12
  %258 = load ptr, ptr @ata_sff_wq, align 4
  %259 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %258, ptr noundef %257, i32 noundef 0) #10
  br label %260

260:                                              ; preds = %254, %240, %174, %99, %50
  %261 = phi i32 [ 64, %50 ], [ 0, %240 ], [ 0, %174 ], [ 0, %99 ], [ 0, %254 ]
  ret i32 %261
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ata_sff_qc_fill_rtf(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port_operations, ptr %4, i32 0, i32 42
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21
  tail call void %6(ptr noundef %2, ptr noundef %7) #10
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_freeze(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 4
  %4 = or i8 %3, 2
  store i8 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 10
  store i8 %4, ptr %5, align 1
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port_operations, ptr %7, i32 0, i32 38
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 12
  %13 = load ptr, ptr %12, align 16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %16

15:                                               ; preds = %1
  tail call void %9(ptr noundef %0, i8 noundef zeroext %4) #10
  br label %17

16:                                               ; preds = %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %4) #10, !srcloc !14
  br label %17

17:                                               ; preds = %16, %15, %11
  %18 = load ptr, ptr %6, align 4
  %19 = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 39
  %20 = load ptr, ptr %19, align 4
  %21 = tail call zeroext i8 %20(ptr noundef %0) #10
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.ata_port_operations, ptr %22, i32 0, i32 47
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  tail call void %24(ptr noundef %0) #10
  br label %27

27:                                               ; preds = %26, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_thaw(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 39
  %5 = load ptr, ptr %4, align 4
  %6 = tail call zeroext i8 %5(ptr noundef %0) #10
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.ata_port_operations, ptr %7, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  tail call void %9(ptr noundef %0) #10
  %12 = load ptr, ptr %2, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi ptr [ %12, %11 ], [ %7, %1 ]
  %15 = getelementptr inbounds %struct.ata_port_operations, ptr %14, i32 0, i32 45
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %52

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 9
  %20 = load i8, ptr %19, align 4
  %21 = and i8 %20, -3
  store i8 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 10
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.ata_port_operations, ptr %14, i32 0, i32 38
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %31

30:                                               ; preds = %18
  tail call void %24(ptr noundef %0, i8 noundef zeroext %21) #10
  br label %32

31:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %21) #10, !srcloc !14
  br label %32

32:                                               ; preds = %31, %30, %26
  br label %33

33:                                               ; preds = %41, %32
  %34 = phi i32 [ %42, %41 ], [ 1000, %32 ]
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #10
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.ata_port_operations, ptr %36, i32 0, i32 39
  %38 = load ptr, ptr %37, align 4
  %39 = tail call zeroext i8 %38(ptr noundef %0) #10
  %40 = icmp eq i8 %39, -1
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  %42 = add nsw i32 %34, -1
  %43 = and i8 %39, -120
  %44 = icmp ne i8 %43, 0
  %45 = icmp ne i32 %42, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %33, label %47

47:                                               ; preds = %41, %33
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr inbounds %struct.ata_port_operations, ptr %48, i32 0, i32 47
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47, %13
  %53 = phi ptr [ %16, %13 ], [ %50, %47 ]
  tail call void %53(ptr noundef %0) #10
  br label %54

54:                                               ; preds = %52, %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_prereset(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call i32 @ata_std_prereset(ptr noundef %0, i32 noundef %1) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %36

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %5
  %11 = tail call zeroext i1 @ata_link_offline(ptr noundef %0) #10
  br i1 %11, label %36, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @ata_wait_ready(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @ata_sff_check_ready) #10
  switch i32 %13, label %14 [
    i32 -19, label %36
    i32 0, label %36
  ]

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 64
  %16 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 27
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 26
  %21 = load ptr, ptr %20, align 64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19, %14
  %24 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %25, i32 noundef %27, i32 noundef %13) #11
  br label %33

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %31, i32 noundef %13) #11
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, ptr %6, align 4
  %35 = or i32 %34, 4
  store i32 %35, ptr %6, align 4
  br label %36

36:                                               ; preds = %33, %12, %12, %10, %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_softreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #1 {
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %0, align 64
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !15
  %9 = tail call fastcc i32 @ata_devchk(ptr noundef %5, i32 noundef 0)
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %8, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = tail call fastcc i32 @ata_devchk(ptr noundef %5, i32 noundef 1)
  %15 = icmp eq i32 %14, 0
  %16 = or i32 %11, 2
  %17 = select i1 %15, i32 %11, i32 %16
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i32 [ %11, %3 ], [ %17, %13 ]
  %20 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ata_port_operations, ptr %21, i32 0, i32 37
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %5, i32 noundef 0) #10
  %24 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 8, i32 12
  %25 = load ptr, ptr %24, align 16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 9
  %29 = load i8, ptr %28, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %29) #10, !srcloc !14
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 4294960) #10
  %31 = load i8, ptr %28, align 4
  %32 = or i8 %31, 4
  %33 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %32) #10, !srcloc !14
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 4294960) #10
  %35 = load i8, ptr %28, align 4
  %36 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %36, i8 %35) #10, !srcloc !14
  %37 = load i8, ptr %28, align 4
  %38 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 10
  store i8 %37, ptr %38, align 1
  br label %39

39:                                               ; preds = %27, %18
  %40 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 25
  %41 = tail call i32 @ata_sff_wait_after_reset(ptr noundef %40, i32 noundef %19, i32 noundef %2) #10
  switch i32 %41, label %45 [
    i32 0, label %64
    i32 -19, label %42
  ]

42:                                               ; preds = %39
  %43 = tail call i32 @sata_scr_valid(ptr noundef %0) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %42, %39
  %46 = load ptr, ptr %0, align 64
  %47 = getelementptr inbounds %struct.ata_port, ptr %46, i32 0, i32 27
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ata_port, ptr %46, i32 0, i32 26
  %52 = load ptr, ptr %51, align 64
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds %struct.ata_port, ptr %46, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %56, i32 noundef %58, i32 noundef %41) #11
  br label %76

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.ata_port, ptr %46, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %62, i32 noundef %41) #11
  br label %76

64:                                               ; preds = %42, %39
  %65 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  %66 = and i32 %19, 1
  %67 = call i32 @ata_sff_dev_classify(ptr noundef %65, i32 noundef %66, ptr noundef nonnull %4)
  store i32 %67, ptr %1, align 4
  %68 = load i8, ptr %4, align 1
  %69 = icmp ne i8 %68, -127
  %70 = select i1 %12, i1 %69, i1 false
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = getelementptr %struct.ata_link, ptr %0, i32 0, i32 14, i32 1
  %73 = and i32 %19, 2
  %74 = call i32 @ata_sff_dev_classify(ptr noundef %72, i32 noundef %73, ptr noundef nonnull %4)
  %75 = getelementptr i32, ptr %1, i32 1
  store i32 %74, ptr %75, align 4
  br label %76

76:                                               ; preds = %71, %64, %60, %54
  %77 = phi i32 [ %41, %60 ], [ %41, %54 ], [ 0, %71 ], [ 0, %64 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_sff_hardreset(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #1 {
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !15
  %11 = call i32 @sata_link_hardreset(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull @ata_sff_check_ready) #10
  %12 = load i8, ptr %5, align 1, !range !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %55, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  %16 = load ptr, ptr %15, align 64
  %17 = load ptr, ptr %16, align 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %18 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ata_port_operations, ptr %19, i32 0, i32 37
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  call void %21(ptr noundef %17, i32 noundef %23) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #10
  %24 = load ptr, ptr %18, align 4
  %25 = getelementptr inbounds %struct.ata_port_operations, ptr %24, i32 0, i32 42
  %26 = load ptr, ptr %25, align 4
  call void %26(ptr noundef %17, ptr noundef nonnull %4) #10
  %27 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  %28 = load i8, ptr %27, align 1
  switch i8 %28, label %33 [
    i8 0, label %29
    i8 1, label %38
  ]

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = or i32 %31, 1
  store i32 %32, ptr %30, align 8
  br label %38

33:                                               ; preds = %14
  %34 = load i32, ptr %22, align 4
  %35 = icmp eq i32 %34, 0
  %36 = icmp eq i8 %28, -127
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %53

38:                                               ; preds = %33, %29, %14
  %39 = call i32 @ata_port_classify(ptr noundef %17, ptr noundef nonnull %4) #10
  switch i32 %39, label %53 [
    i32 0, label %40
    i32 1, label %46
  ]

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 11, i32 1
  br label %53

46:                                               ; preds = %38
  %47 = load ptr, ptr %18, align 4
  %48 = getelementptr inbounds %struct.ata_port_operations, ptr %47, i32 0, i32 39
  %49 = load ptr, ptr %48, align 4
  %50 = call zeroext i8 %49(ptr noundef %17) #10
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i32 11, i32 1
  br label %53

53:                                               ; preds = %46, %40, %38, %33
  %54 = phi i32 [ 11, %33 ], [ %39, %38 ], [ %52, %46 ], [ %45, %40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  store i32 %54, ptr %1, align 4
  br label %55

55:                                               ; preds = %53, %3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_postreset(ptr noundef %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr %0, align 64
  tail call void @ata_std_postreset(ptr noundef %0, ptr noundef %1) #10
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 11
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %3, i32 noundef 1) #10
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr i32, ptr %1, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 11
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ata_port_operations, ptr %17, i32 0, i32 37
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %3, i32 noundef 0) #10
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, ptr %1, align 4
  %22 = icmp eq i32 %21, 11
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, ptr %12, align 4
  %25 = icmp eq i32 %24, 11
  br i1 %25, label %46, label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ata_port_operations, ptr %28, i32 0, i32 38
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 12
  %34 = load ptr, ptr %33, align 16
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %39

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 9
  %38 = load i8, ptr %37, align 4
  tail call void %30(ptr noundef %3, i8 noundef zeroext %38) #10
  br label %42

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 9
  %41 = load i8, ptr %40, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %41) #10, !srcloc !14
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi ptr [ %37, %36 ], [ %40, %39 ]
  %44 = load i8, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 10
  store i8 %44, ptr %45, align 1
  br label %46

46:                                               ; preds = %42, %32, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_error_handler(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 3
  %10 = load i32, ptr %9, align 32
  %11 = icmp ugt i32 %10, 32
  %12 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %10
  %13 = icmp eq ptr %12, null
  %14 = or i1 %11, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %10, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr null, ptr %12
  br label %21

21:                                               ; preds = %15, %1
  %22 = phi ptr [ %20, %15 ], [ null, %1 ]
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #10
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.ata_port_operations, ptr %26, i32 0, i32 48
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  tail call void %28(ptr noundef %22) #10
  br label %31

31:                                               ; preds = %30, %21
  %32 = load ptr, ptr %23, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %32, i32 noundef %25) #10
  %33 = icmp eq ptr %7, @sata_std_hardreset
  %34 = icmp eq ptr %7, @sata_sff_hardreset
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = tail call i32 @sata_scr_valid(ptr noundef %8) #10
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, ptr null, ptr %7
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi ptr [ %7, %31 ], [ %39, %36 ]
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr inbounds %struct.ata_port_operations, ptr %42, i32 0, i32 14
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ata_port_operations, ptr %42, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  tail call void @ata_do_eh(ptr noundef %0, ptr noundef %44, ptr noundef %5, ptr noundef %41, ptr noundef %46) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_lost_interrupt(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 3
  %3 = load i32, ptr %2, align 32
  %4 = icmp ugt i32 %3, 32
  %5 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %44, label %8, !prof !12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 22
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 65537
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %44

19:                                               ; preds = %14, %8
  %20 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 64
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 40
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call zeroext i8 %26(ptr noundef %0) #10
  br label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %32) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i8 [ %29, %28 ], [ %33, %30 ]
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 128
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %41, i32 noundef %36) #11
  %43 = tail call fastcc i32 @__ata_sff_port_intr(ptr noundef %0, ptr noundef nonnull %5, i1 noundef zeroext false) #10
  br label %44

44:                                               ; preds = %39, %34, %19, %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_dev_select(ptr noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, 0
  %4 = select i1 %3, i8 -96, i8 -80
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 8
  %6 = load ptr, ptr %5, align 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #10, !srcloc !14
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 40
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call zeroext i8 %10(ptr noundef %0) #10
  br label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %20

20:                                               ; preds = %18, %14, %12
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @ata_sff_check_status(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_tf_load(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 2
  %5 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 10
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %6, %8
  br i1 %9, label %33, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %6) #10, !srcloc !14
  %15 = load i8, ptr %5, align 1
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i8 [ %15, %14 ], [ %6, %10 ]
  store i8 %17, ptr %7, align 1
  %18 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  br label %19

19:                                               ; preds = %27, %16
  %20 = phi i32 [ 1000, %16 ], [ %28, %27 ]
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 2147480) #10
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr inbounds %struct.ata_port_operations, ptr %22, i32 0, i32 39
  %24 = load ptr, ptr %23, align 4
  %25 = tail call zeroext i8 %24(ptr noundef %0) #10
  %26 = icmp eq i8 %25, -1
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = add nsw i32 %20, -1
  %29 = and i8 %25, -120
  %30 = icmp ne i8 %29, 0
  %31 = icmp ne i32 %28, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %19, label %33

33:                                               ; preds = %27, %19, %2
  %34 = icmp eq i32 %4, 0
  br i1 %34, label %89, label %35

35:                                               ; preds = %33
  %36 = load i32, ptr %1, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = load i1, ptr @ata_sff_tf_load.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !12

46:                                               ; preds = %39
  store i1 true, ptr @ata_sff_tf_load.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 402, i32 noundef 9, ptr noundef null) #10
  br label %47

47:                                               ; preds = %46, %39
  %48 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 3
  %49 = load i8, ptr %48, align 2
  %50 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 3
  %51 = load ptr, ptr %50, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 %49) #10, !srcloc !14
  %52 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 4
  %55 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %55, i8 %53) #10, !srcloc !14
  %56 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 5
  %57 = load i8, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 5
  %59 = load ptr, ptr %58, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %59, i8 %57) #10, !srcloc !14
  %60 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 6
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 6
  %63 = load ptr, ptr %62, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %63, i8 %61) #10, !srcloc !14
  %64 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 7
  %65 = load i8, ptr %64, align 2
  %66 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 7
  %67 = load ptr, ptr %66, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %67, i8 %65) #10, !srcloc !14
  br label %68

68:                                               ; preds = %47, %35
  %69 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 8
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 3
  %72 = load ptr, ptr %71, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %72, i8 %70) #10, !srcloc !14
  %73 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 9
  %74 = load i8, ptr %73, align 4
  %75 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 4
  %76 = load ptr, ptr %75, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %76, i8 %74) #10, !srcloc !14
  %77 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 10
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 5
  %80 = load ptr, ptr %79, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %80, i8 %78) #10, !srcloc !14
  %81 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 11
  %82 = load i8, ptr %81, align 2
  %83 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 6
  %84 = load ptr, ptr %83, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %84, i8 %82) #10, !srcloc !14
  %85 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 12
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 7
  %88 = load ptr, ptr %87, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %88, i8 %86) #10, !srcloc !14
  br label %89

89:                                               ; preds = %68, %33
  %90 = load i32, ptr %1, align 4
  %91 = and i32 %90, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 13
  %95 = load i8, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 8
  %97 = load ptr, ptr %96, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %97, i8 %95) #10, !srcloc !14
  br label %98

98:                                               ; preds = %93, %89
  %99 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  br label %100

100:                                              ; preds = %108, %98
  %101 = phi i32 [ 1000, %98 ], [ %109, %108 ]
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 2147480) #10
  %103 = load ptr, ptr %99, align 4
  %104 = getelementptr inbounds %struct.ata_port_operations, ptr %103, i32 0, i32 39
  %105 = load ptr, ptr %104, align 4
  %106 = tail call zeroext i8 %105(ptr noundef %0) #10
  %107 = icmp eq i8 %106, -1
  br i1 %107, label %114, label %108

108:                                              ; preds = %100
  %109 = add nsw i32 %101, -1
  %110 = and i8 %106, -120
  %111 = icmp ne i8 %110, 0
  %112 = icmp ne i32 %109, 0
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %100, label %114

114:                                              ; preds = %108, %100
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_tf_read(ptr nocapture noundef %0, ptr nocapture noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %6 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 14
  store i8 %5, ptr %6, align 1
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %10 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 8
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %14 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 9
  store i8 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %16) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %18 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 10
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %22 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 11
  store i8 %21, ptr %22, align 2
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %26 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 12
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %28) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %30 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 13
  store i8 %29, ptr %30, align 4
  %31 = load i32, ptr %1, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %61, label %38, !prof !12

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = or i8 %40, -128
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %41) #10, !srcloc !14
  %42 = load ptr, ptr %7, align 4
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %42) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %44 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 3
  store i8 %43, ptr %44, align 2
  %45 = load ptr, ptr %11, align 4
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %45) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %47 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 4
  store i8 %46, ptr %47, align 1
  %48 = load ptr, ptr %15, align 4
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %50 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 5
  store i8 %49, ptr %50, align 4
  %51 = load ptr, ptr %19, align 4
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %51) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %53 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 6
  store i8 %52, ptr %53, align 1
  %54 = load ptr, ptr %23, align 4
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %54) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %56 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 7
  store i8 %55, ptr %56, align 2
  %57 = load i8, ptr %39, align 1
  %58 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 %57) #10, !srcloc !14
  %59 = load i8, ptr %39, align 1
  %60 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 10
  store i8 %59, ptr %60, align 1
  br label %64

61:                                               ; preds = %34
  %62 = load i1, ptr @ata_sff_tf_read.__already_done, align 1
  br i1 %62, label %64, label %63, !prof !19

63:                                               ; preds = %61
  store i1 true, ptr @ata_sff_tf_read.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 461, i32 noundef 9, ptr noundef null) #10
  br label %64

64:                                               ; preds = %63, %61, %38, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_exec_command(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 14
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 10
  %6 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #10, !srcloc !14
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 40
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call zeroext i8 %10(ptr noundef %0) #10
  br label %20

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %20

20:                                               ; preds = %18, %14, %12
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_data_xfer(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 64
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = lshr i32 %2, 1
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  tail call void @__raw_readsw(ptr noundef %11, ptr noundef %1, i32 noundef %12) #10
  %15 = and i32 %2, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %20, !prof !19

17:                                               ; preds = %4
  tail call void @__raw_writesw(ptr noundef %11, ptr noundef %1, i32 noundef %12) #10
  %18 = and i32 %2, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %24, !prof !19

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2
  %21 = add i32 %2, -1
  %22 = getelementptr i8, ptr %1, i32 %21
  call void @__raw_readsw(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 1) #10
  %23 = load i8, ptr %5, align 2
  store i8 %23, ptr %22, align 1
  br label %28

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i16 0, ptr %5, align 2
  %25 = add i32 %2, -1
  %26 = getelementptr i8, ptr %1, i32 %25
  %27 = load i8, ptr %26, align 1
  store i8 %27, ptr %5, align 2
  call void @__raw_writesw(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 1) #10
  br label %28

28:                                               ; preds = %24, %20
  %29 = add nuw i32 %12, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %30

30:                                               ; preds = %28, %17, %14
  %31 = phi i32 [ %29, %28 ], [ %12, %14 ], [ %12, %17 ]
  %32 = shl i32 %31, 1
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_drain_fifo(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %31, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port_operations, ptr %10, i32 0, i32 39
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i8 %12(ptr noundef %8) #10
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 8, i32 1
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %22, %18 ]
  %20 = load ptr, ptr %17, align 4
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #10, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %22 = add nuw nsw i32 %19, 2
  %23 = load ptr, ptr %9, align 4
  %24 = getelementptr inbounds %struct.ata_port_operations, ptr %23, i32 0, i32 39
  %25 = load ptr, ptr %24, align 4
  %26 = tail call zeroext i8 %25(ptr noundef %8) #10
  %27 = and i8 %26, 8
  %28 = icmp ne i8 %27, 0
  %29 = icmp ult i32 %19, 65534
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %18, label %31

31:                                               ; preds = %18, %7, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_pause(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 40
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call zeroext i8 %5(ptr noundef %0) #10
  br label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %15

15:                                               ; preds = %13, %9, %7
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_dma_pause(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 40
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %13

11:                                               ; preds = %1
  %12 = tail call zeroext i8 %5(ptr noundef %0) #10
  br label %15

13:                                               ; preds = %7
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %15

15:                                               ; preds = %13, %11
  ret void

16:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libata-sff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !22
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_busy_sleep(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  br label %5

5:                                                ; preds = %13, %3
  %6 = phi i32 [ 300, %3 ], [ %14, %13 ]
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #10
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 39
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i8 %10(ptr noundef %0) #10
  %12 = icmp eq i8 %11, -1
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = add nsw i32 %6, -1
  %15 = icmp slt i8 %11, 0
  %16 = icmp ne i32 %14, 0
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %5, label %18

18:                                               ; preds = %13, %5
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #10
  %21 = zext i8 %11 to i32
  %22 = icmp eq i8 %11, -1
  %23 = and i32 %21, 128
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %71, label %26

26:                                               ; preds = %18
  %27 = add i32 %20, %19
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = sub i32 %28, %27
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %65

31:                                               ; preds = %60
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = sub i32 %32, %27
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %31, %26
  tail call void @ata_msleep(ptr noundef %0, i32 noundef 50) #10
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #10
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.ata_port_operations, ptr %37, i32 0, i32 39
  %39 = load ptr, ptr %38, align 4
  %40 = tail call zeroext i8 %39(ptr noundef %0) #10
  %41 = icmp eq i8 %40, -1
  br i1 %41, label %71, label %42

42:                                               ; preds = %35
  %43 = icmp slt i8 %40, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %42
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 2147480) #10
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.ata_port_operations, ptr %46, i32 0, i32 39
  %48 = load ptr, ptr %47, align 4
  %49 = tail call zeroext i8 %48(ptr noundef %0) #10
  %50 = icmp eq i8 %49, -1
  br i1 %50, label %71, label %51

51:                                               ; preds = %44
  %52 = icmp slt i8 %49, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %51
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 2147480) #10
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr inbounds %struct.ata_port_operations, ptr %55, i32 0, i32 39
  %57 = load ptr, ptr %56, align 4
  %58 = tail call zeroext i8 %57(ptr noundef %0) #10
  %59 = icmp eq i8 %58, -1
  br i1 %59, label %71, label %60

60:                                               ; preds = %53, %51, %42
  %61 = phi i8 [ %40, %42 ], [ %49, %51 ], [ %58, %53 ]
  %62 = zext i8 %61 to i32
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %31

65:                                               ; preds = %31, %26
  %66 = phi i32 [ %21, %26 ], [ %62, %31 ]
  %67 = phi i8 [ %11, %26 ], [ %61, %31 ]
  %68 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %69, i32 noundef %66) #11
  br label %71

71:                                               ; preds = %65, %60, %53, %44, %35, %18
  %72 = phi i8 [ %67, %65 ], [ %11, %18 ], [ -1, %53 ], [ -1, %44 ], [ -1, %35 ], [ %61, %60 ]
  %73 = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #10
  %74 = zext i8 %72 to i32
  %75 = icmp eq i8 %72, -1
  %76 = and i32 %74, 128
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %98, label %79

79:                                               ; preds = %71
  %80 = add i32 %73, %19
  %81 = load volatile i32, ptr @jiffies, align 64
  %82 = sub i32 %81, %80
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %88, label %104

84:                                               ; preds = %88
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = sub i32 %85, %80
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %84, %79
  tail call void @ata_msleep(ptr noundef %0, i32 noundef 50) #10
  %89 = load ptr, ptr %4, align 4
  %90 = getelementptr inbounds %struct.ata_port_operations, ptr %89, i32 0, i32 39
  %91 = load ptr, ptr %90, align 4
  %92 = tail call zeroext i8 %91(ptr noundef %0) #10
  %93 = zext i8 %92 to i32
  %94 = icmp eq i8 %92, -1
  %95 = and i32 %93, 128
  %96 = icmp eq i32 %95, 0
  %97 = select i1 %94, i1 true, i1 %96
  br i1 %97, label %98, label %84

98:                                               ; preds = %88, %71
  %99 = phi i32 [ %74, %71 ], [ %93, %88 ]
  %100 = phi i1 [ %75, %71 ], [ %94, %88 ]
  %101 = phi i1 [ %77, %71 ], [ %96, %88 ]
  %102 = select i1 %100, i1 true, i1 %101
  %103 = select i1 %100, i32 -19, i32 0
  br i1 %102, label %111, label %104

104:                                              ; preds = %98, %84, %79
  %105 = phi i32 [ %99, %98 ], [ %74, %79 ], [ %93, %84 ]
  %106 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %2, 999
  %109 = udiv i32 %108, 1000
  %110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %107, i32 noundef %109, i32 noundef %105) #11
  br label %111

111:                                              ; preds = %104, %98
  %112 = phi i32 [ -16, %104 ], [ %103, %98 ]
  ret i32 %112
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_wait_ready(ptr noundef %0, i32 noundef %1) #1 {
  %3 = tail call i32 @ata_wait_ready(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @ata_sff_check_ready) #10
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_ready(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_sff_check_ready(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port_operations, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i8 %6(ptr noundef %2) #10
  %8 = icmp sgt i8 %7, -1
  %9 = icmp eq i8 %7, -1
  %10 = select i1 %9, i32 -19, i32 0
  %11 = select i1 %8, i32 1, i32 %10
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_irq_on(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 45
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, -3
  store i8 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 10
  store i8 %10, ptr %11, align 1
  %12 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 38
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %20

19:                                               ; preds = %7
  tail call void %13(ptr noundef %0, i8 noundef zeroext %10) #10
  br label %21

20:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %10) #10, !srcloc !14
  br label %21

21:                                               ; preds = %20, %19, %15
  br label %22

22:                                               ; preds = %30, %21
  %23 = phi i32 [ %31, %30 ], [ 1000, %21 ]
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #10
  %25 = load ptr, ptr %2, align 4
  %26 = getelementptr inbounds %struct.ata_port_operations, ptr %25, i32 0, i32 39
  %27 = load ptr, ptr %26, align 4
  %28 = tail call zeroext i8 %27(ptr noundef %0) #10
  %29 = icmp eq i8 %28, -1
  br i1 %29, label %36, label %30

30:                                               ; preds = %22
  %31 = add nsw i32 %23, -1
  %32 = and i8 %28, -120
  %33 = icmp ne i8 %32, 0
  %34 = icmp ne i32 %31, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %22, label %36

36:                                               ; preds = %30, %22
  %37 = load ptr, ptr %2, align 4
  %38 = getelementptr inbounds %struct.ata_port_operations, ptr %37, i32 0, i32 47
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36, %1
  %42 = phi ptr [ %5, %1 ], [ %39, %36 ]
  tail call void %42(ptr noundef %0) #10
  br label %43

43:                                               ; preds = %41, %36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_data_xfer32(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca [4 x i8], align 4
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 64
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 8, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = lshr i32 %2, 2
  %13 = and i32 %2, 3
  %14 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 4
  %15 = load i32, ptr %14, align 16
  %16 = and i32 %15, 1048576
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = tail call i32 @ata_sff_data_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %43

20:                                               ; preds = %4
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  tail call void @__raw_readsl(ptr noundef %11, ptr noundef %1, i32 noundef %12) #10
  %23 = icmp eq i32 %13, 0
  br i1 %23, label %40, label %26, !prof !19

24:                                               ; preds = %20
  tail call void @__raw_writesl(ptr noundef %11, ptr noundef %1, i32 noundef %12) #10
  %25 = icmp eq i32 %13, 0
  br i1 %25, label %40, label %33, !prof !19

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  %27 = and i32 %2, -4
  %28 = getelementptr i8, ptr %1, i32 %27
  %29 = icmp eq i32 %13, 3
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @__raw_readsw(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 1) #10
  br label %32

31:                                               ; preds = %26
  call void @__raw_readsl(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 1) #10
  br label %32

32:                                               ; preds = %31, %30
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %28, ptr nonnull align 4 %5, i32 %13, i1 false)
  br label %39

33:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4
  %34 = and i32 %2, -4
  %35 = getelementptr i8, ptr %1, i32 %34
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %5, ptr align 1 %35, i32 %13, i1 false)
  %36 = icmp eq i32 %13, 3
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  call void @__raw_writesw(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 1) #10
  br label %39

38:                                               ; preds = %33
  call void @__raw_writesl(ptr noundef %11, ptr noundef nonnull %5, i32 noundef 1) #10
  br label %39

39:                                               ; preds = %38, %37, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %40

40:                                               ; preds = %39, %24, %22
  %41 = add i32 %2, 1
  %42 = and i32 %41, -2
  br label %43

43:                                               ; preds = %40, %18
  %44 = phi i32 [ %42, %40 ], [ %19, %18 ]
  ret i32 %44
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_hsm_move(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) #1 {
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.ata_link, ptr %7, i32 0, i32 11
  %9 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  %13 = load i1, ptr @ata_sff_hsm_move.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !12

16:                                               ; preds = %4
  store i1 true, ptr @ata_sff_hsm_move.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 979, i32 noundef 9, ptr noundef null) #10
  br label %17

17:                                               ; preds = %16, %4
  %18 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 37
  %24 = load i32, ptr %23, align 16
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = icmp ne i8 %28, 1
  %30 = and i32 %19, 8
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = and i8 %28, 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr inbounds %struct.ata_device, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36, %33, %22
  br label %43

43:                                               ; preds = %42, %36, %26, %17
  %44 = phi i32 [ 0, %42 ], [ 1, %17 ], [ 1, %26 ], [ 1, %36 ]
  %45 = icmp ne i32 %44, %3
  %46 = load i1, ptr @ata_sff_hsm_move.__already_done.3, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !12

49:                                               ; preds = %43
  store i1 true, ptr @ata_sff_hsm_move.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 985, i32 noundef 9, ptr noundef null) #10
  br label %50

50:                                               ; preds = %49, %43
  %51 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 37
  %52 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %53 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 1
  %54 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %55 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21
  %56 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 9
  %57 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 11
  %58 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 12
  %59 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 18
  %60 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 19
  %61 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 15
  %62 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 13
  br label %63

63:                                               ; preds = %107, %50
  %64 = phi i8 [ %2, %50 ], [ %108, %107 ]
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  %68 = and i32 %65, 33
  %69 = icmp eq i32 %68, 0
  br label %70

70:                                               ; preds = %332, %63
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_hsm_state, i32 0, i32 1), align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = tail call ptr @llvm.thread.pointer() #10
  %75 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 8
  %77 = lshr i32 %76, 5
  %78 = getelementptr i32, ptr @__cpu_online_mask, i32 %77
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %76, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %81, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %73
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  %85 = tail call i32 @__traceiter_ata_sff_hsm_state(ptr noundef null, ptr noundef %1, i8 noundef zeroext %64) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  br label %86

86:                                               ; preds = %84, %73, %70
  %87 = load i32, ptr %51, align 16
  switch i32 %87, label %454 [
    i32 1, label %88
    i32 2, label %202
    i32 3, label %413
    i32 4, label %453
  ]

88:                                               ; preds = %86
  %89 = load i32, ptr %18, align 4
  %90 = zext i8 %64 to i32
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  %93 = and i32 %90, 33
  %94 = icmp eq i32 %93, 0
  br i1 %92, label %95, label %109, !prof !12

95:                                               ; preds = %88
  br i1 %94, label %96, label %97, !prof !12

96:                                               ; preds = %95
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %8, ptr noundef nonnull @.str.4) #10
  br label %97

97:                                               ; preds = %96, %95
  %98 = phi i32 [ 2, %96 ], [ 1, %95 ]
  %99 = load i32, ptr %52, align 4
  %100 = or i32 %99, %98
  br label %101

101:                                              ; preds = %416, %389, %349, %347, %207, %116, %97
  %102 = phi i32 [ %391, %389 ], [ %427, %416 ], [ %209, %207 ], [ %118, %116 ], [ %100, %97 ], [ %348, %347 ], [ %351, %349 ]
  %103 = phi i8 [ %387, %389 ], [ %64, %416 ], [ %64, %207 ], [ %64, %116 ], [ %64, %97 ], [ %64, %347 ], [ %64, %349 ]
  store i32 %102, ptr %52, align 4
  br label %104

104:                                              ; preds = %386, %339, %205, %101
  %105 = phi i32 [ 4, %386 ], [ 4, %339 ], [ 4, %101 ], [ 3, %205 ]
  %106 = phi i8 [ %387, %386 ], [ %64, %339 ], [ %103, %101 ], [ %64, %205 ]
  store i32 %105, ptr %51, align 16
  br label %107

107:                                              ; preds = %407, %399, %104
  %108 = phi i8 [ %106, %104 ], [ %405, %407 ], [ -1, %399 ]
  br label %63

109:                                              ; preds = %88
  br i1 %94, label %119, label %110, !prof !19

110:                                              ; preds = %109
  %111 = load ptr, ptr %5, align 4
  %112 = getelementptr inbounds %struct.ata_device, ptr %111, i32 0, i32 2
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 512
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %8, ptr noundef nonnull @.str.5, i32 noundef %90) #10
  %117 = load i32, ptr %52, align 4
  %118 = or i32 %117, 2
  br label %101

119:                                              ; preds = %110, %109
  %120 = and i32 %89, 64
  %121 = load i8, ptr %53, align 4
  %122 = icmp eq i8 %121, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 2, ptr %51, align 16
  tail call fastcc void @ata_pio_sectors(ptr noundef %1)
  br label %457

124:                                              ; preds = %119
  %125 = load ptr, ptr %5, align 4
  %126 = getelementptr inbounds %struct.ata_device, ptr %125, i32 0, i32 17
  %127 = load i32, ptr %126, align 8
  %128 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_atapi_send_cdb, i32 0, i32 1), align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %124
  %131 = tail call ptr @llvm.thread.pointer() #10
  %132 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2
  %133 = load i32, ptr %132, align 8
  %134 = lshr i32 %133, 5
  %135 = getelementptr i32, ptr @__cpu_online_mask, i32 %134
  %136 = load volatile i32, ptr %135, align 4
  %137 = and i32 %133, 31
  %138 = shl nuw i32 1, %137
  %139 = and i32 %138, %136
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %130
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  %142 = tail call i32 @__traceiter_atapi_send_cdb(ptr noundef null, ptr noundef %1, i32 noundef 0, i32 noundef %127) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !26
  %143 = load ptr, ptr %5, align 4
  %144 = getelementptr inbounds %struct.ata_device, ptr %143, i32 0, i32 17
  %145 = load i32, ptr %144, align 8
  br label %146

146:                                              ; preds = %141, %130, %124
  %147 = phi i32 [ %127, %124 ], [ %127, %130 ], [ %145, %141 ]
  %148 = icmp ult i32 %147, 12
  %149 = load i1, ptr @atapi_send_cdb.__already_done, align 1
  %150 = xor i1 %149, true
  %151 = select i1 %148, i1 %150, i1 false
  br i1 %151, label %152, label %156, !prof !12

152:                                              ; preds = %146
  store i1 true, ptr @atapi_send_cdb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 738, i32 noundef 9, ptr noundef null) #10
  %153 = load ptr, ptr %5, align 4
  %154 = getelementptr inbounds %struct.ata_device, ptr %153, i32 0, i32 17
  %155 = load i32, ptr %154, align 8
  br label %156

156:                                              ; preds = %152, %146
  %157 = phi i32 [ %155, %152 ], [ %147, %146 ]
  %158 = load ptr, ptr %54, align 4
  %159 = getelementptr inbounds %struct.ata_port_operations, ptr %158, i32 0, i32 44
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 5
  %162 = tail call i32 %160(ptr noundef %1, ptr noundef %161, i32 noundef %157, i32 noundef 1) #10
  %163 = load ptr, ptr %54, align 4
  %164 = getelementptr inbounds %struct.ata_port_operations, ptr %163, i32 0, i32 40
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %156
  %168 = tail call zeroext i8 %165(ptr noundef %0) #10
  br label %175

169:                                              ; preds = %156
  %170 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 11
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %171) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %175

175:                                              ; preds = %173, %169, %167
  %176 = load i8, ptr %53, align 4
  switch i8 %176, label %201 [
    i8 9, label %177
    i8 8, label %178
    i8 10, label %179
  ]

177:                                              ; preds = %175
  store i32 2, ptr %51, align 16
  br label %457

178:                                              ; preds = %175
  store i32 3, ptr %51, align 16
  br label %457

179:                                              ; preds = %175
  store i32 3, ptr %51, align 16
  %180 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %181 = load i32, ptr %180, align 4
  %182 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_start, i32 0, i32 1), align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %197

184:                                              ; preds = %179
  %185 = tail call ptr @llvm.thread.pointer() #10
  %186 = getelementptr inbounds %struct.thread_info, ptr %185, i32 0, i32 2
  %187 = load i32, ptr %186, align 8
  %188 = lshr i32 %187, 5
  %189 = getelementptr i32, ptr @__cpu_online_mask, i32 %188
  %190 = load volatile i32, ptr %189, align 4
  %191 = and i32 %187, 31
  %192 = shl nuw i32 1, %191
  %193 = and i32 %192, %190
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %184
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %196 = tail call i32 @__traceiter_ata_bmdma_start(ptr noundef null, ptr noundef %0, ptr noundef %18, i32 noundef %181) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  br label %197

197:                                              ; preds = %195, %184, %179
  %198 = load ptr, ptr %54, align 4
  %199 = getelementptr inbounds %struct.ata_port_operations, ptr %198, i32 0, i32 50
  %200 = load ptr, ptr %199, align 4
  tail call void %200(ptr noundef %1) #10
  br label %457

201:                                              ; preds = %175
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libata-sff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 760, 0\0A.popsection", ""() #10, !srcloc !29
  unreachable

202:                                              ; preds = %86
  %203 = load i8, ptr %53, align 4
  %204 = icmp eq i8 %203, 9
  br i1 %204, label %205, label %335

205:                                              ; preds = %202
  br i1 %67, label %104, label %206

206:                                              ; preds = %205
  br i1 %69, label %210, label %207, !prof !19

207:                                              ; preds = %206
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef %65) #10
  %208 = load i32, ptr %52, align 4
  %209 = or i32 %208, 2
  br label %101

210:                                              ; preds = %206
  %211 = load ptr, ptr %1, align 4
  %212 = load ptr, ptr %5, align 4
  %213 = load ptr, ptr %212, align 64
  %214 = getelementptr inbounds %struct.ata_link, ptr %213, i32 0, i32 11
  %215 = load i32, ptr %18, align 4
  %216 = getelementptr inbounds %struct.ata_port, ptr %211, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = getelementptr inbounds %struct.ata_port_operations, ptr %217, i32 0, i32 42
  %219 = load ptr, ptr %218, align 4
  tail call void %219(ptr noundef %211, ptr noundef %55) #10
  %220 = load i8, ptr %56, align 4
  %221 = zext i8 %220 to i32
  %222 = load i8, ptr %57, align 2
  %223 = zext i8 %222 to i32
  %224 = load i8, ptr %58, align 1
  %225 = zext i8 %224 to i32
  %226 = shl nuw nsw i32 %225, 8
  %227 = or i32 %226, %223
  %228 = and i32 %221, 1
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %327, !prof !19

230:                                              ; preds = %210
  %231 = lshr i32 %215, 3
  %232 = and i32 %231, 1
  %233 = lshr i32 %221, 1
  %234 = and i32 %233, 1
  %235 = xor i32 %234, 1
  %236 = icmp ne i32 %232, %235
  %237 = icmp eq i32 %227, 0
  %238 = select i1 %236, i1 true, i1 %237
  br i1 %238, label %327, label %239, !prof !30

239:                                              ; preds = %230
  %240 = load i32, ptr %18, align 4
  %241 = lshr i32 %240, 3
  %242 = and i32 %241, 1
  %243 = load ptr, ptr %1, align 4
  %244 = load ptr, ptr %5, align 4
  %245 = load ptr, ptr %244, align 64
  %246 = getelementptr inbounds %struct.ata_link, ptr %245, i32 0, i32 11
  %247 = getelementptr inbounds %struct.ata_port, ptr %243, i32 0, i32 1
  br label %248

248:                                              ; preds = %309, %239
  %249 = phi i32 [ %227, %239 ], [ %299, %309 ]
  %250 = load ptr, ptr %59, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %311, label %252, !prof !12

252:                                              ; preds = %248
  %253 = load i32, ptr %250, align 4
  %254 = and i32 %253, -4
  %255 = inttoptr i32 %254 to ptr
  %256 = getelementptr inbounds %struct.scatterlist, ptr %250, i32 0, i32 1
  %257 = load i32, ptr %256, align 4
  %258 = load i32, ptr %60, align 4
  %259 = add i32 %258, %257
  %260 = lshr i32 %259, 12
  %261 = getelementptr %struct.page, ptr %255, i32 %260
  %262 = and i32 %259, 4095
  %263 = getelementptr inbounds %struct.scatterlist, ptr %250, i32 0, i32 2
  %264 = load i32, ptr %263, align 4
  %265 = sub i32 %264, %258
  %266 = tail call i32 @llvm.umin.i32(i32 %265, i32 %249) #10
  %267 = sub nuw nsw i32 4096, %262
  %268 = tail call i32 @llvm.umin.i32(i32 %266, i32 %267) #10
  %269 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_atapi_pio_transfer_data, i32 0, i32 1), align 4
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %252
  %272 = tail call ptr @llvm.thread.pointer() #10
  %273 = getelementptr inbounds %struct.thread_info, ptr %272, i32 0, i32 2
  %274 = load i32, ptr %273, align 8
  %275 = lshr i32 %274, 5
  %276 = getelementptr i32, ptr @__cpu_online_mask, i32 %275
  %277 = load volatile i32, ptr %276, align 4
  %278 = and i32 %274, 31
  %279 = shl nuw i32 1, %278
  %280 = and i32 %279, %277
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %271
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  %283 = tail call i32 @__traceiter_atapi_pio_transfer_data(ptr noundef null, ptr noundef %1, i32 noundef %262, i32 noundef %268) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  br label %284

284:                                              ; preds = %282, %271, %252
  %285 = load i32, ptr @pgprot_kernel, align 4
  %286 = or i32 %285, 512
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %287 = tail call ptr @llvm.thread.pointer() #10
  %288 = getelementptr inbounds %struct.task_struct, ptr %287, i32 0, i32 149
  %289 = load i32, ptr %288, align 8
  %290 = add i32 %289, 1
  store i32 %290, ptr %288, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %291 = tail call ptr @__kmap_local_page_prot(ptr noundef %261, i32 noundef %286) #10
  %292 = load ptr, ptr %247, align 4
  %293 = getelementptr inbounds %struct.ata_port_operations, ptr %292, i32 0, i32 44
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr i8, ptr %291, i32 %262
  %296 = tail call i32 %294(ptr noundef %1, ptr noundef %295, i32 noundef %268, i32 noundef %242) #10
  tail call void @kunmap_local_indexed(ptr noundef %291) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %297 = load i32, ptr %288, align 8
  %298 = add i32 %297, -1
  store i32 %298, ptr %288, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  %299 = tail call i32 @llvm.usub.sat.i32(i32 %249, i32 %296) #10
  %300 = load i32, ptr %61, align 4
  %301 = add i32 %300, %268
  store i32 %301, ptr %61, align 4
  %302 = load i32, ptr %60, align 4
  %303 = add i32 %302, %268
  store i32 %303, ptr %60, align 4
  %304 = load i32, ptr %263, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %284
  %307 = load ptr, ptr %59, align 4
  %308 = tail call ptr @sg_next(ptr noundef %307) #10
  store ptr %308, ptr %59, align 4
  store i32 0, ptr %60, align 4
  br label %309

309:                                              ; preds = %306, %284
  %310 = icmp ugt i32 %249, %296
  br i1 %310, label %248, label %314

311:                                              ; preds = %248
  %312 = load i32, ptr %62, align 4
  %313 = load i32, ptr %61, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %246, ptr noundef nonnull @.str.30, i32 noundef %312, i32 noundef %313, i32 noundef %249) #10
  br label %328

314:                                              ; preds = %309
  %315 = load ptr, ptr %216, align 4
  %316 = getelementptr inbounds %struct.ata_port_operations, ptr %315, i32 0, i32 40
  %317 = load ptr, ptr %316, align 4
  %318 = icmp eq ptr %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %314
  %320 = tail call zeroext i8 %317(ptr noundef %211) #10
  br label %332

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.ata_port, ptr %211, i32 0, i32 8, i32 11
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %332, label %325

325:                                              ; preds = %321
  %326 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %323) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %332

327:                                              ; preds = %230, %210
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %214, ptr noundef nonnull @.str.29, i32 noundef %221, i32 noundef %227) #10
  br label %328

328:                                              ; preds = %327, %311
  %329 = load i32, ptr %52, align 4
  %330 = or i32 %329, 2
  store i32 %330, ptr %52, align 4
  %331 = getelementptr inbounds %struct.ata_port, ptr %211, i32 0, i32 37
  store i32 4, ptr %331, align 16
  br label %332

332:                                              ; preds = %328, %325, %321, %319
  %333 = load i32, ptr %51, align 16
  %334 = icmp eq i32 %333, 4
  br i1 %334, label %70, label %457, !prof !12

335:                                              ; preds = %202
  %336 = and i32 %65, 33
  %337 = icmp eq i32 %336, 0
  br i1 %67, label %338, label %352, !prof !12

338:                                              ; preds = %335
  br i1 %337, label %349, label %339, !prof !12

339:                                              ; preds = %338
  %340 = load i32, ptr %52, align 4
  %341 = or i32 %340, 1
  store i32 %341, ptr %52, align 4
  %342 = load ptr, ptr %5, align 4
  %343 = getelementptr inbounds %struct.ata_device, ptr %342, i32 0, i32 2
  %344 = load i32, ptr %343, align 8
  %345 = and i32 %344, 1
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %104, label %347

347:                                              ; preds = %339
  %348 = or i32 %340, 513
  br label %101

349:                                              ; preds = %338
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %65) #10
  %350 = load i32, ptr %52, align 4
  %351 = or i32 %350, 514
  br label %101

352:                                              ; preds = %335
  br i1 %337, label %392, label %353, !prof !19

353:                                              ; preds = %352
  %354 = load i32, ptr %52, align 4
  %355 = or i32 %354, 1
  store i32 %355, ptr %52, align 4
  %356 = load i32, ptr %18, align 4
  %357 = and i32 %356, 8
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %376

359:                                              ; preds = %353
  tail call fastcc void @ata_pio_sectors(ptr noundef %1)
  br label %360

360:                                              ; preds = %368, %359
  %361 = phi i32 [ 1000, %359 ], [ %369, %368 ]
  %362 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %362(i32 noundef 2147480) #10
  %363 = load ptr, ptr %54, align 4
  %364 = getelementptr inbounds %struct.ata_port_operations, ptr %363, i32 0, i32 39
  %365 = load ptr, ptr %364, align 4
  %366 = tail call zeroext i8 %365(ptr noundef %0) #10
  %367 = icmp eq i8 %366, -1
  br i1 %367, label %381, label %368

368:                                              ; preds = %360
  %369 = add nsw i32 %361, -1
  %370 = and i8 %366, -120
  %371 = icmp ne i8 %370, 0
  %372 = icmp ne i32 %369, 0
  %373 = select i1 %371, i1 %372, i1 false
  br i1 %373, label %360, label %374

374:                                              ; preds = %368
  %375 = zext i8 %366 to i32
  br label %376

376:                                              ; preds = %374, %353
  %377 = phi i32 [ %375, %374 ], [ %65, %353 ]
  %378 = phi i8 [ %366, %374 ], [ %64, %353 ]
  %379 = and i32 %377, 136
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %386, label %381

381:                                              ; preds = %376, %360
  %382 = phi i32 [ %377, %376 ], [ 255, %360 ]
  %383 = phi i8 [ %378, %376 ], [ -1, %360 ]
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %382) #10
  %384 = load i32, ptr %52, align 4
  %385 = or i32 %384, 2
  store i32 %385, ptr %52, align 4
  br label %386

386:                                              ; preds = %381, %376
  %387 = phi i8 [ %383, %381 ], [ %378, %376 ]
  %388 = icmp eq i8 %387, 127
  br i1 %388, label %389, label %104

389:                                              ; preds = %386
  %390 = load i32, ptr %52, align 4
  %391 = or i32 %390, 512
  br label %101

392:                                              ; preds = %352
  tail call fastcc void @ata_pio_sectors(ptr noundef %1)
  %393 = load i32, ptr %51, align 16
  %394 = icmp eq i32 %393, 3
  br i1 %394, label %395, label %457

395:                                              ; preds = %392
  %396 = load i32, ptr %18, align 4
  %397 = and i32 %396, 8
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %457

399:                                              ; preds = %407, %395
  %400 = phi i32 [ %408, %407 ], [ 1000, %395 ]
  %401 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %401(i32 noundef 2147480) #10
  %402 = load ptr, ptr %54, align 4
  %403 = getelementptr inbounds %struct.ata_port_operations, ptr %402, i32 0, i32 39
  %404 = load ptr, ptr %403, align 4
  %405 = tail call zeroext i8 %404(ptr noundef %0) #10
  %406 = icmp eq i8 %405, -1
  br i1 %406, label %107, label %407

407:                                              ; preds = %399
  %408 = add nsw i32 %400, -1
  %409 = and i8 %405, -120
  %410 = icmp ne i8 %409, 0
  %411 = icmp ne i32 %408, 0
  %412 = select i1 %410, i1 %411, i1 false
  br i1 %412, label %399, label %107

413:                                              ; preds = %86
  %414 = and i8 %64, -23
  %415 = icmp eq i8 %414, 64
  br i1 %415, label %428, label %416, !prof !19

416:                                              ; preds = %413
  %417 = zext i8 %64 to i32
  %418 = and i32 %417, 136
  %419 = icmp eq i32 %418, 0
  %420 = and i32 %417, 33
  %421 = icmp ne i32 %420, 0
  %422 = zext i1 %421 to i32
  %423 = select i1 %419, i32 %422, i32 2
  %424 = icmp eq i32 %423, 0
  %425 = select i1 %424, i32 256, i32 %423
  %426 = load i32, ptr %52, align 4
  %427 = or i32 %426, %425
  br label %101

428:                                              ; preds = %413
  %429 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_hsm_command_complete, i32 0, i32 1), align 4
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %444

431:                                              ; preds = %428
  %432 = tail call ptr @llvm.thread.pointer() #10
  %433 = getelementptr inbounds %struct.thread_info, ptr %432, i32 0, i32 2
  %434 = load i32, ptr %433, align 8
  %435 = lshr i32 %434, 5
  %436 = getelementptr i32, ptr @__cpu_online_mask, i32 %435
  %437 = load volatile i32, ptr %436, align 4
  %438 = and i32 %434, 31
  %439 = shl nuw i32 1, %438
  %440 = and i32 %439, %437
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %444, label %442

442:                                              ; preds = %431
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  %443 = tail call i32 @__traceiter_ata_sff_hsm_command_complete(ptr noundef null, ptr noundef %1, i8 noundef zeroext %64) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  br label %444

444:                                              ; preds = %442, %431, %428
  %445 = load i32, ptr %52, align 4
  %446 = and i32 %445, 3
  %447 = icmp ne i32 %446, 0
  %448 = load i1, ptr @ata_sff_hsm_move.__already_done.9, align 1
  %449 = xor i1 %448, true
  %450 = select i1 %447, i1 %449, i1 false
  br i1 %450, label %451, label %452, !prof !12

451:                                              ; preds = %444
  store i1 true, ptr @ata_sff_hsm_move.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1191, i32 noundef 9, ptr noundef null) #10
  br label %452

452:                                              ; preds = %451, %444
  store i32 0, ptr %51, align 16
  tail call fastcc void @ata_hsm_qc_complete(ptr noundef %1, i32 noundef %3)
  br label %457

453:                                              ; preds = %86
  store i32 0, ptr %51, align 16
  tail call fastcc void @ata_hsm_qc_complete(ptr noundef %1, i32 noundef %3)
  br label %457

454:                                              ; preds = %86
  %455 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %456 = load i32, ptr %455, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1212, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %456, i32 noundef %87) #10
  br label %457

457:                                              ; preds = %454, %453, %452, %395, %392, %332, %197, %178, %177, %123
  %458 = phi i32 [ 0, %454 ], [ 0, %453 ], [ 0, %452 ], [ %120, %123 ], [ %120, %177 ], [ %120, %178 ], [ %120, %197 ], [ 1, %392 ], [ 1, %395 ], [ 1, %332 ]
  ret i32 %458
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_pio_sectors(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %33 [
    i8 -60, label %4
    i8 -59, label %4
    i8 41, label %4
    i8 57, label %4
    i8 -50, label %4
  ]

4:                                                ; preds = %1, %1, %1, %1, %1
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_device, ptr %6, i32 0, i32 15
  %8 = load i32, ptr %7, align 16
  %9 = icmp eq i32 %8, 0
  %10 = load i1, ptr @ata_pio_sectors.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %17, !prof !12

13:                                               ; preds = %4
  store i1 true, ptr @ata_pio_sectors.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 711, i32 noundef 9, ptr noundef null) #10
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.ata_device, ptr %14, i32 0, i32 15
  %16 = load i32, ptr %15, align 16
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %16, %13 ], [ %8, %4 ]
  %19 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %20, %22
  %24 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = udiv i32 %23, %25
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %18)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %29, %17
  %30 = phi i32 [ %31, %29 ], [ %27, %17 ]
  %31 = add i32 %30, -1
  tail call fastcc void @ata_pio_sector(ptr noundef %0)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %29

33:                                               ; preds = %1
  tail call fastcc void @ata_pio_sector(ptr noundef %0)
  br label %34

34:                                               ; preds = %33, %29, %17
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ata_port_operations, ptr %37, i32 0, i32 40
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = tail call zeroext i8 %39(ptr noundef %35) #10
  br label %49

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 8, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %49

49:                                               ; preds = %47, %43, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_hsm_qc_complete(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port_operations, ptr %5, i32 0, i32 22
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i32 %1, 0
  br i1 %8, label %79, label %10

10:                                               ; preds = %2
  br i1 %9, label %71, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, 32
  %15 = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %13
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %122, label %18, !prof !12

18:                                               ; preds = %11
  %19 = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %13, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 65537
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %122

23:                                               ; preds = %18
  %24 = getelementptr %struct.ata_port, ptr %3, i32 0, i32 19, i32 %13, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %69, !prof !19

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ata_port_operations, ptr %5, i32 0, i32 45
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 9
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, -3
  store i8 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 10
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.ata_port_operations, ptr %5, i32 0, i32 38
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 12
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %45

44:                                               ; preds = %32
  tail call void %38(ptr noundef %3, i8 noundef zeroext %35) #10
  br label %46

45:                                               ; preds = %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %35) #10, !srcloc !14
  br label %46

46:                                               ; preds = %45, %44, %40
  br label %47

47:                                               ; preds = %55, %46
  %48 = phi i32 [ %56, %55 ], [ 1000, %46 ]
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #10
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.ata_port_operations, ptr %50, i32 0, i32 39
  %52 = load ptr, ptr %51, align 4
  %53 = tail call zeroext i8 %52(ptr noundef %3) #10
  %54 = icmp eq i8 %53, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = add nsw i32 %48, -1
  %57 = and i8 %53, -120
  %58 = icmp ne i8 %57, 0
  %59 = icmp ne i32 %56, 0
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %47, label %61

61:                                               ; preds = %55, %47
  %62 = load ptr, ptr %4, align 4
  %63 = getelementptr inbounds %struct.ata_port_operations, ptr %62, i32 0, i32 47
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61, %28
  %67 = phi ptr [ %30, %28 ], [ %64, %61 ]
  tail call void %67(ptr noundef %3) #10
  br label %68

68:                                               ; preds = %66, %61
  tail call void @ata_qc_complete(ptr noundef nonnull %15) #10
  br label %122

69:                                               ; preds = %23
  %70 = tail call i32 @ata_port_freeze(ptr noundef %3) #10
  br label %122

71:                                               ; preds = %10
  %72 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77, !prof !19

76:                                               ; preds = %71
  tail call void @ata_qc_complete(ptr noundef %0) #10
  br label %122

77:                                               ; preds = %71
  %78 = tail call i32 @ata_port_freeze(ptr noundef %3) #10
  br label %122

79:                                               ; preds = %2
  br i1 %9, label %121, label %80

80:                                               ; preds = %79
  %81 = getelementptr inbounds %struct.ata_port_operations, ptr %5, i32 0, i32 45
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %118

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 9
  %86 = load i8, ptr %85, align 4
  %87 = and i8 %86, -3
  store i8 %87, ptr %85, align 4
  %88 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 10
  store i8 %87, ptr %88, align 1
  %89 = getelementptr inbounds %struct.ata_port_operations, ptr %5, i32 0, i32 38
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 8, i32 12
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %97

96:                                               ; preds = %84
  tail call void %90(ptr noundef %3, i8 noundef zeroext %87) #10
  br label %98

97:                                               ; preds = %92
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %94, i8 %87) #10, !srcloc !14
  br label %98

98:                                               ; preds = %97, %96, %92
  br label %99

99:                                               ; preds = %107, %98
  %100 = phi i32 [ %108, %107 ], [ 1000, %98 ]
  %101 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %101(i32 noundef 2147480) #10
  %102 = load ptr, ptr %4, align 4
  %103 = getelementptr inbounds %struct.ata_port_operations, ptr %102, i32 0, i32 39
  %104 = load ptr, ptr %103, align 4
  %105 = tail call zeroext i8 %104(ptr noundef %3) #10
  %106 = icmp eq i8 %105, -1
  br i1 %106, label %113, label %107

107:                                              ; preds = %99
  %108 = add nsw i32 %100, -1
  %109 = and i8 %105, -120
  %110 = icmp ne i8 %109, 0
  %111 = icmp ne i32 %108, 0
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %99, label %113

113:                                              ; preds = %107, %99
  %114 = load ptr, ptr %4, align 4
  %115 = getelementptr inbounds %struct.ata_port_operations, ptr %114, i32 0, i32 47
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %113, %80
  %119 = phi ptr [ %82, %80 ], [ %116, %113 ]
  tail call void %119(ptr noundef %3) #10
  br label %120

120:                                              ; preds = %118, %113
  tail call void @ata_qc_complete(ptr noundef %0) #10
  br label %122

121:                                              ; preds = %79
  tail call void @ata_qc_complete(ptr noundef %0) #10
  br label %122

122:                                              ; preds = %121, %120, %77, %76, %69, %68, %18, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_queue_work(ptr noundef %0) #1 {
  %2 = load ptr, ptr @ata_sff_wq, align 4
  %3 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %2, ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_queue_delayed_work(ptr noundef %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr @ata_sff_wq, align 4
  %4 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %0, i32 noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_queue_pio_task(ptr noundef %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr %0, align 64
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 32
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %5, %0
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1236, i32 noundef 9, ptr noundef null) #10
  br label %10

10:                                               ; preds = %9, %2
  store ptr %0, ptr %4, align 32
  %11 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #10
  %12 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 12
  %13 = load ptr, ptr @ata_sff_wq, align 4
  %14 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %12, i32 noundef %11) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_flush_pio_task(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_flush_pio_task, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #10
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  %16 = tail call i32 @__traceiter_ata_sff_flush_pio_task(ptr noundef null, ptr noundef %0) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !40
  br label %17

17:                                               ; preds = %15, %4, %1
  %18 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 12
  %19 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %18) #10
  %20 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 37
  store i32 0, ptr %22, align 16
  %23 = load ptr, ptr %20, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !41
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !42
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !43
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %26 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 11
  store ptr null, ptr %26, align 32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_port_intr(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call fastcc i32 @__ata_sff_port_intr(ptr noundef %0, ptr noundef %1, i1 noundef zeroext false)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ata_sff_port_intr(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 {
  %4 = zext i1 %2 to i8
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_port_intr, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !46
  %19 = tail call i32 @__traceiter_ata_sff_port_intr(ptr noundef null, ptr noundef %1, i8 noundef zeroext %4) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !47
  br label %20

20:                                               ; preds = %18, %7, %3
  %21 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 37
  %22 = load i32, ptr %21, align 16
  switch i32 %22, label %38 [
    i32 1, label %23
    i32 0, label %34
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ata_device, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 30, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 4
  br label %82

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 30, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  br label %82

38:                                               ; preds = %23, %20
  %39 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ata_port_operations, ptr %40, i32 0, i32 40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %50

48:                                               ; preds = %38
  %49 = tail call zeroext i8 %42(ptr noundef %0) #10
  br label %52

50:                                               ; preds = %44
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %46) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i8 [ %49, %48 ], [ %51, %50 ]
  %54 = icmp sgt i8 %53, -1
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load ptr, ptr %39, align 4
  br label %57

57:                                               ; preds = %55, %44
  %58 = phi ptr [ %56, %55 ], [ %40, %44 ]
  %59 = getelementptr inbounds %struct.ata_port_operations, ptr %58, i32 0, i32 39
  %60 = load ptr, ptr %59, align 4
  %61 = tail call zeroext i8 %60(ptr noundef %0) #10
  %62 = icmp sgt i8 %61, -1
  br i1 %62, label %73, label %63

63:                                               ; preds = %57, %52
  %64 = phi i8 [ %61, %57 ], [ %53, %52 ]
  br i1 %2, label %65, label %69

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %67 = load i32, ptr %66, align 4
  %68 = or i32 %67, 2
  store i32 %68, ptr %66, align 4
  store i32 4, ptr %21, align 16
  br label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 30, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  br label %82

73:                                               ; preds = %65, %57
  %74 = phi i8 [ %64, %65 ], [ %61, %57 ]
  %75 = load ptr, ptr %39, align 4
  %76 = getelementptr inbounds %struct.ata_port_operations, ptr %75, i32 0, i32 47
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  tail call void %77(ptr noundef %0) #10
  br label %80

80:                                               ; preds = %79, %73
  %81 = tail call i32 @ata_sff_hsm_move(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %74, i32 noundef 0)
  br label %82

82:                                               ; preds = %80, %69, %34, %30
  %83 = phi i32 [ 1, %80 ], [ 0, %69 ], [ 0, %34 ], [ 0, %30 ]
  ret i32 %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_interrupt(i32 %0, ptr noundef %1) #1 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %4 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %99, %2
  %7 = phi i32 [ %5, %2 ], [ %97, %99 ]
  %8 = phi i1 [ false, %2 ], [ true, %99 ]
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %100, label %10

10:                                               ; preds = %50, %6
  %11 = phi i32 [ %51, %50 ], [ %7, %6 ]
  %12 = phi i32 [ %54, %50 ], [ 0, %6 ]
  %13 = phi i32 [ %53, %50 ], [ 0, %6 ]
  %14 = phi i32 [ %52, %50 ], [ 0, %6 ]
  %15 = phi i32 [ %55, %50 ], [ 0, %6 ]
  %16 = getelementptr %struct.ata_host, ptr %1, i32 0, i32 12, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 25, i32 3
  %19 = load i32, ptr %18, align 32
  %20 = icmp ugt i32 %19, 32
  %21 = getelementptr %struct.ata_port, ptr %17, i32 0, i32 19, i32 %19
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %47, label %24, !prof !12

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_port_operations, ptr %26, i32 0, i32 22
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr %struct.ata_port, ptr %17, i32 0, i32 19, i32 %19, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 65537
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %47

35:                                               ; preds = %30, %24
  %36 = getelementptr %struct.ata_port, ptr %17, i32 0, i32 19, i32 %19, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = tail call fastcc i32 @__ata_sff_port_intr(ptr noundef %17, ptr noundef nonnull %21, i1 noundef zeroext false) #10
  %42 = or i32 %41, %14
  %43 = load i32, ptr %4, align 4
  br label %50

44:                                               ; preds = %35
  %45 = shl nuw i32 1, %15
  %46 = or i32 %45, %12
  br label %50

47:                                               ; preds = %30, %10
  %48 = shl nuw i32 1, %15
  %49 = or i32 %48, %13
  br label %50

50:                                               ; preds = %47, %44, %40
  %51 = phi i32 [ %11, %44 ], [ %43, %40 ], [ %11, %47 ]
  %52 = phi i32 [ %14, %44 ], [ %42, %40 ], [ %14, %47 ]
  %53 = phi i32 [ %13, %44 ], [ %13, %40 ], [ %49, %47 ]
  %54 = phi i32 [ %46, %44 ], [ %12, %40 ], [ %12, %47 ]
  %55 = add nuw i32 %15, 1
  %56 = icmp ult i32 %55, %51
  br i1 %56, label %10, label %57

57:                                               ; preds = %50
  %58 = icmp ne i32 %52, 0
  %59 = or i1 %8, %58
  br i1 %59, label %100, label %60

60:                                               ; preds = %57
  %61 = icmp eq i32 %51, 0
  br i1 %61, label %100, label %62

62:                                               ; preds = %94, %60
  %63 = phi i1 [ %95, %94 ], [ false, %60 ]
  %64 = phi i32 [ %96, %94 ], [ 0, %60 ]
  %65 = getelementptr %struct.ata_host, ptr %1, i32 0, i32 12, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = shl nuw i32 1, %64
  %68 = and i32 %67, %54
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.ata_port, ptr %66, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ata_port_operations, ptr %72, i32 0, i32 46
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %70
  %77 = tail call zeroext i1 %74(ptr noundef %66) #10
  br i1 %77, label %78, label %94

78:                                               ; preds = %76
  %79 = and i32 %67, %53
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr %71, align 4
  %82 = getelementptr inbounds %struct.ata_port_operations, ptr %81, i32 0, i32 39
  %83 = load ptr, ptr %82, align 4
  %84 = tail call zeroext i8 %83(ptr noundef %66) #10
  br i1 %80, label %91, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr %71, align 4
  %87 = getelementptr inbounds %struct.ata_port_operations, ptr %86, i32 0, i32 47
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  tail call void %88(ptr noundef %66) #10
  br label %94

91:                                               ; preds = %78
  %92 = icmp sgt i8 %84, -1
  %93 = select i1 %92, i1 true, i1 %63
  br label %94

94:                                               ; preds = %91, %90, %85, %76, %70, %62
  %95 = phi i1 [ %63, %62 ], [ %63, %76 ], [ %63, %70 ], [ %63, %90 ], [ %63, %85 ], [ %93, %91 ]
  %96 = add nuw i32 %64, 1
  %97 = load i32, ptr %4, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %62, label %99

99:                                               ; preds = %94
  br i1 %95, label %6, label %100

100:                                              ; preds = %99, %60, %57, %6
  %101 = phi i1 [ false, %6 ], [ %58, %57 ], [ false, %99 ], [ false, %60 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #10
  %102 = zext i1 %101 to i32
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_prereset(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_link_offline(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_dev_classify(ptr nocapture noundef %0, i32 noundef %1, ptr noundef writeonly %2) #1 {
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = load ptr, ptr %0, align 64
  %6 = load ptr, ptr %5, align 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 37
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  tail call void %10(ptr noundef %6, i32 noundef %12) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.ata_port_operations, ptr %13, i32 0, i32 42
  %15 = load ptr, ptr %14, align 4
  call void %15(ptr noundef %6, ptr noundef nonnull %4) #10
  %16 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq ptr %2, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i8 %17, ptr %2, align 1
  br label %20

20:                                               ; preds = %19, %3
  switch i8 %17, label %25 [
    i8 0, label %21
    i8 1, label %30
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = or i32 %23, 1
  store i32 %24, ptr %22, align 8
  br label %30

25:                                               ; preds = %20
  %26 = load i32, ptr %11, align 4
  %27 = icmp eq i32 %26, 0
  %28 = icmp eq i8 %17, -127
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %47

30:                                               ; preds = %25, %21, %20
  %31 = call i32 @ata_port_classify(ptr noundef %6, ptr noundef nonnull %4) #10
  switch i32 %31, label %47 [
    i32 0, label %32
    i32 1, label %40
  ]

32:                                               ; preds = %30
  %33 = icmp eq i32 %1, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34, %32
  br label %47

40:                                               ; preds = %30
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr inbounds %struct.ata_port_operations, ptr %41, i32 0, i32 39
  %43 = load ptr, ptr %42, align 4
  %44 = call zeroext i8 %43(ptr noundef %6) #10
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 11, i32 1
  br label %47

47:                                               ; preds = %40, %39, %34, %30, %25
  %48 = phi i32 [ 11, %25 ], [ 11, %39 ], [ 1, %34 ], [ %31, %30 ], [ %46, %40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_classify(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sff_wait_after_reset(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = load ptr, ptr %0, align 64
  %5 = and i32 %1, 1
  tail call void @ata_msleep(ptr noundef %4, i32 noundef 150) #10
  %6 = tail call i32 @ata_wait_ready(ptr noundef %0, i32 noundef %2, ptr noundef nonnull @ata_sff_check_ready) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %3
  %9 = and i32 %1, 2
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ata_port_operations, ptr %12, i32 0, i32 37
  %14 = load ptr, ptr %13, align 4
  br i1 %10, label %15, label %16

15:                                               ; preds = %8
  tail call void %14(ptr noundef %4, i32 noundef 0) #10
  br label %44

16:                                               ; preds = %8
  tail call void %14(ptr noundef %4, i32 noundef 1) #10
  %17 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 8, i32 4
  %18 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 8, i32 5
  %19 = load ptr, ptr %17, align 4
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %21 = load ptr, ptr %18, align 4
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %23 = icmp eq i8 %20, 1
  %24 = icmp eq i8 %22, 1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %35, label %26

26:                                               ; preds = %16
  tail call void @ata_msleep(ptr noundef %4, i32 noundef 50) #10
  %27 = load ptr, ptr %17, align 4
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %27) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %29 = load ptr, ptr %18, align 4
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %31 = icmp eq i8 %28, 1
  %32 = icmp eq i8 %30, 1
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  tail call void @ata_msleep(ptr noundef %4, i32 noundef 50) #10
  br label %35

35:                                               ; preds = %34, %26, %16
  %36 = tail call i32 @ata_wait_ready(ptr noundef %0, i32 noundef %2, ptr noundef nonnull @ata_sff_check_ready) #10
  switch i32 %36, label %51 [
    i32 0, label %37
    i32 -19, label %37
  ]

37:                                               ; preds = %35, %35
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr inbounds %struct.ata_port_operations, ptr %38, i32 0, i32 37
  %40 = load ptr, ptr %39, align 4
  tail call void %40(ptr noundef %4, i32 noundef 0) #10
  %41 = load ptr, ptr %11, align 4
  %42 = getelementptr inbounds %struct.ata_port_operations, ptr %41, i32 0, i32 37
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %4, i32 noundef 1) #10
  br label %44

44:                                               ; preds = %37, %15
  %45 = phi i32 [ 0, %15 ], [ %36, %37 ]
  %46 = icmp eq i32 %5, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr inbounds %struct.ata_port_operations, ptr %48, i32 0, i32 37
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %4, i32 noundef 0) #10
  br label %51

51:                                               ; preds = %47, %44, %35, %3
  %52 = phi i32 [ %6, %3 ], [ %45, %47 ], [ %45, %44 ], [ %36, %35 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ata_devchk(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port_operations, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i32 noundef %1) #10
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 85) #10, !srcloc !14
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 -86) #10, !srcloc !14
  %11 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %11, i8 -86) #10, !srcloc !14
  %12 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 85) #10, !srcloc !14
  %13 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 85) #10, !srcloc !14
  %14 = load ptr, ptr %9, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 -86) #10, !srcloc !14
  %15 = load ptr, ptr %7, align 4
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %17 = load ptr, ptr %9, align 4
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %17) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %19 = icmp eq i8 %16, 85
  %20 = icmp eq i8 %18, -86
  %21 = select i1 %19, i1 %20, i1 false
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_postreset(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_std_hardreset(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_do_eh(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ata_sff_std_ports(ptr nocapture noundef %0) #6 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr i8, ptr %2, i32 1
  %5 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 2
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 3
  store ptr %4, ptr %6, align 4
  %7 = getelementptr i8, ptr %2, i32 2
  %8 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 4
  store ptr %7, ptr %8, align 4
  %9 = getelementptr i8, ptr %2, i32 3
  %10 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 5
  store ptr %9, ptr %10, align 4
  %11 = getelementptr i8, ptr %2, i32 4
  %12 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 6
  store ptr %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %2, i32 5
  %14 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 7
  store ptr %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %2, i32 6
  %16 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 8
  store ptr %15, ptr %16, align 4
  %17 = getelementptr i8, ptr %2, i32 7
  %18 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 9
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ata_ioports, ptr %0, i32 0, i32 10
  store ptr %17, ptr %19, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_sff_init_host(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -136
  %5 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 2
  %6 = getelementptr i8, ptr %3, i32 480
  br label %7

7:                                                ; preds = %87, %1
  %8 = phi i1 [ true, %1 ], [ false, %87 ]
  %9 = phi i32 [ 0, %1 ], [ 1, %87 ]
  %10 = phi i32 [ 0, %1 ], [ %88, %87 ]
  %11 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = shl nuw nsw i32 %9, 1
  %14 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @ata_dummy_port_ops
  br i1 %16, label %87, label %17

17:                                               ; preds = %7
  %18 = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %13
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %40, label %26

21:                                               ; preds = %26
  %22 = or i32 %13, 1
  %23 = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %22
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %33

26:                                               ; preds = %17
  %27 = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %13, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = sub i32 %28, %19
  %31 = icmp eq i32 %30, -1
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %40, label %21

33:                                               ; preds = %21
  %34 = getelementptr %struct.pci_dev, ptr %4, i32 0, i32 47, i32 %22, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = sub i32 %35, %24
  %38 = icmp eq i32 %37, -1
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %26, %21, %17
  store ptr @ata_dummy_port_ops, ptr %14, align 4
  br label %87

41:                                               ; preds = %33
  %42 = shl nuw nsw i32 3, %13
  %43 = tail call ptr @dev_driver_string(ptr noundef %3) #10
  %44 = tail call i32 @pcim_iomap_regions(ptr noundef %4, i32 noundef %42, ptr noundef %43) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %9, i32 noundef %44) #11
  %47 = icmp eq i32 %44, -16
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  tail call void @pcim_pin_device(ptr noundef %4) #10
  br label %49

49:                                               ; preds = %48, %46
  store ptr @ata_dummy_port_ops, ptr %14, align 4
  br label %87

50:                                               ; preds = %41
  %51 = tail call ptr @pcim_iomap_table(ptr noundef %4) #10
  store ptr %51, ptr %5, align 4
  %52 = getelementptr ptr, ptr %51, i32 %13
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8
  store ptr %53, ptr %54, align 32
  %55 = getelementptr ptr, ptr %51, i32 %22
  %56 = load ptr, ptr %55, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = or i32 %57, 2
  %59 = inttoptr i32 %58 to ptr
  %60 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 12
  store ptr %59, ptr %60, align 16
  %61 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 11
  store ptr %59, ptr %61, align 4
  %62 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 1
  store ptr %53, ptr %62, align 4
  %63 = getelementptr i8, ptr %53, i32 1
  %64 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 2
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 3
  store ptr %63, ptr %65, align 4
  %66 = getelementptr i8, ptr %53, i32 2
  %67 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 4
  store ptr %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %53, i32 3
  %69 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 5
  store ptr %68, ptr %69, align 4
  %70 = getelementptr i8, ptr %53, i32 4
  %71 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 6
  store ptr %70, ptr %71, align 4
  %72 = getelementptr i8, ptr %53, i32 5
  %73 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 7
  store ptr %72, ptr %73, align 4
  %74 = getelementptr i8, ptr %53, i32 6
  %75 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 8
  store ptr %74, ptr %75, align 4
  %76 = getelementptr i8, ptr %53, i32 7
  %77 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 9
  store ptr %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 8, i32 10
  store ptr %76, ptr %78, align 4
  %79 = getelementptr [11 x %struct.resource], ptr %6, i32 0, i32 %13
  %80 = load i32, ptr %79, align 8
  %81 = zext i32 %80 to i64
  %82 = getelementptr [11 x %struct.resource], ptr %6, i32 0, i32 %22
  %83 = load i32, ptr %82, align 8
  %84 = zext i32 %83 to i64
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %12, ptr noundef nonnull @.str.17, i64 noundef %81, i64 noundef %84) #10
  %85 = shl nuw nsw i32 1, %9
  %86 = or i32 %85, %10
  br label %87

87:                                               ; preds = %50, %49, %40, %7
  %88 = phi i32 [ %10, %49 ], [ %86, %50 ], [ %10, %40 ], [ %10, %7 ]
  br i1 %8, label %7, label %89

89:                                               ; preds = %87
  %90 = icmp eq i32 %88, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %89
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #11
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ -19, %91 ], [ 0, %89 ]
  ret i32 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcim_pin_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_sff_prepare_host(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %5 = tail call ptr @devres_open_group(ptr noundef %4, ptr noundef null, i32 noundef 3264) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @ata_host_alloc_pinfo(ptr noundef %4, ptr noundef %1, i32 noundef 2) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.19) #11
  br label %15

11:                                               ; preds = %7
  %12 = tail call i32 @ata_pci_sff_init_host(ptr noundef nonnull %8)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @devres_remove_group(ptr noundef %4, ptr noundef null) #10
  store ptr %8, ptr %2, align 4
  br label %18

15:                                               ; preds = %11, %10
  %16 = phi i32 [ %12, %11 ], [ -12, %10 ]
  %17 = tail call i32 @devres_release_group(ptr noundef %4, ptr noundef null) #10
  br label %18

18:                                               ; preds = %15, %14, %3
  %19 = phi i32 [ %16, %15 ], [ 0, %14 ], [ -12, %3 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_sff_activate_host(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -136
  %8 = tail call ptr @dev_driver_string(ptr noundef %6) #10
  %9 = tail call i32 @ata_host_start(ptr noundef %0) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %90

11:                                               ; preds = %3
  %12 = getelementptr i8, ptr %6, i32 -96
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -256
  %15 = icmp eq i32 %14, 65792
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !15
  %17 = call i32 @pci_read_config_byte(ptr noundef %7, i32 noundef 9, ptr noundef nonnull %4) #10
  %18 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 12
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.ata_host, ptr %0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ata_port, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %27 = call ptr @devres_open_group(ptr noundef %6, ptr noundef null, i32 noundef 3264) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %90, label %32

29:                                               ; preds = %11
  %30 = tail call ptr @devres_open_group(ptr noundef %6, ptr noundef null, i32 noundef 3264) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %90, label %40

32:                                               ; preds = %16
  %33 = icmp eq ptr %25, @ata_dummy_port_ops
  %34 = icmp ne ptr %21, @ata_dummy_port_ops
  %35 = zext i1 %34 to i8
  %36 = or i8 %35, 4
  %37 = select i1 %33, i8 %35, i8 %36
  %38 = and i8 %37, %26
  %39 = icmp eq i8 %38, %37
  br i1 %39, label %40, label %63

40:                                               ; preds = %32, %29
  %41 = getelementptr i8, ptr %6, i32 476
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %83, label %44

44:                                               ; preds = %40
  %45 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef %42, ptr noundef %1, ptr noundef null, i32 noundef 128, ptr noundef %8, ptr noundef %0) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %44
  %48 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 0
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ata_port, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, @ata_dummy_port_ops
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, ptr %41, align 4
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %49, ptr noundef nonnull @.str.20, i32 noundef %54) #10
  br label %55

55:                                               ; preds = %53, %47
  %56 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, @ata_dummy_port_ops
  br i1 %60, label %83, label %61

61:                                               ; preds = %55
  %62 = load i32, ptr %41, align 4
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %57, ptr noundef nonnull @.str.20, i32 noundef %62) #10
  br label %83

63:                                               ; preds = %32
  %64 = load ptr, ptr %18, align 4
  %65 = getelementptr inbounds %struct.ata_port, ptr %64, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, @ata_dummy_port_ops
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef 14, ptr noundef %1, ptr noundef null, i32 noundef 128, ptr noundef %8, ptr noundef %0) #10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %72, ptr noundef nonnull @.str.20, i32 noundef 14) #10
  br label %73

73:                                               ; preds = %71, %63
  %74 = load ptr, ptr %22, align 4
  %75 = getelementptr inbounds %struct.ata_port, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, @ata_dummy_port_ops
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = call i32 @devm_request_threaded_irq(ptr noundef %6, i32 noundef 15, ptr noundef %1, ptr noundef null, i32 noundef 128, ptr noundef %8, ptr noundef %0) #10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load ptr, ptr %22, align 4
  call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %82, ptr noundef nonnull @.str.20, i32 noundef 15) #10
  br label %83

83:                                               ; preds = %81, %73, %61, %55, %40
  %84 = call i32 @ata_host_register(ptr noundef %0, ptr noundef %2) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  call void @devres_remove_group(ptr noundef %6, ptr noundef null) #10
  br label %90

87:                                               ; preds = %83, %78, %68, %44
  %88 = phi i32 [ %84, %83 ], [ %45, %44 ], [ %69, %68 ], [ %79, %78 ]
  %89 = call i32 @devres_release_group(ptr noundef %6, ptr noundef null) #10
  br label %90

90:                                               ; preds = %87, %86, %29, %16, %3
  %91 = phi i32 [ %9, %3 ], [ -12, %16 ], [ %88, %87 ], [ 0, %86 ], [ -12, %29 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_sff_init_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
  %6 = tail call fastcc i32 @ata_pci_init_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext false)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ata_pci_init_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #1 {
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store ptr null, ptr %7, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %19

11:                                               ; preds = %19
  %12 = getelementptr ptr, ptr %1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ata_port_info, ptr %13, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @ata_dummy_port_ops
  br i1 %18, label %23, label %24

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.ata_port_info, ptr %9, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @ata_dummy_port_ops
  br i1 %22, label %11, label %24

23:                                               ; preds = %15, %11, %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.31) #11
  br label %58

24:                                               ; preds = %19, %15
  %25 = tail call ptr @devres_open_group(ptr noundef %8, ptr noundef null, i32 noundef 3264) #10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %58, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @pcim_enable_device(ptr noundef %0) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %27
  br i1 %5, label %31, label %34

31:                                               ; preds = %30
  %32 = call i32 @ata_pci_sff_prepare_host(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %55

34:                                               ; preds = %30
  %35 = call i32 @ata_pci_sff_prepare_host(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %55

37:                                               ; preds = %31
  %38 = load ptr, ptr %7, align 4
  tail call void @ata_pci_bmdma_init(ptr noundef %38) #10
  %39 = getelementptr inbounds %struct.ata_host, ptr %38, i32 0, i32 5
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ata_host, ptr %38, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %4
  store i32 %42, ptr %40, align 4
  tail call void @pci_set_master(ptr noundef %0) #10
  %43 = tail call i32 @ata_pci_sff_activate_host(ptr noundef %38, ptr noundef nonnull @ata_bmdma_interrupt, ptr noundef %2)
  br label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr inbounds %struct.ata_host, ptr %45, i32 0, i32 5
  store ptr %3, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ata_host, ptr %45, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = or i32 %48, %4
  store i32 %49, ptr %47, align 4
  %50 = tail call i32 @ata_pci_sff_activate_host(ptr noundef %45, ptr noundef nonnull @ata_sff_interrupt, ptr noundef %2)
  br label %51

51:                                               ; preds = %44, %37
  %52 = phi i32 [ %43, %37 ], [ %50, %44 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void @devres_remove_group(ptr noundef %8, ptr noundef null) #10
  br label %58

55:                                               ; preds = %51, %34, %31, %27
  %56 = phi i32 [ %52, %51 ], [ %35, %34 ], [ %28, %27 ], [ %32, %31 ]
  %57 = tail call i32 @devres_release_group(ptr noundef %8, ptr noundef null) #10
  br label %58

58:                                               ; preds = %55, %54, %24, %23
  %59 = phi i32 [ -22, %23 ], [ -12, %24 ], [ %56, %55 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_bmdma_qc_prep(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %42, %13
  %17 = phi i32 [ %43, %42 ], [ 0, %13 ]
  %18 = phi i32 [ %44, %42 ], [ 0, %13 ]
  %19 = phi ptr [ %45, %42 ], [ %15, %13 ]
  %20 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi i32 [ %39, %26 ], [ %21, %23 ]
  %28 = phi i32 [ %40, %26 ], [ %25, %23 ]
  %29 = phi i32 [ %38, %26 ], [ %17, %23 ]
  %30 = and i32 %28, 65535
  %31 = add i32 %30, %27
  %32 = icmp ugt i32 %31, 65536
  %33 = sub nuw nsw i32 65536, %30
  %34 = select i1 %32, i32 %33, i32 %27
  %35 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %29
  store i32 %28, ptr %35, align 4
  %36 = and i32 %34, 65535
  %37 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %29, i32 1
  store i32 %36, ptr %37, align 4
  %38 = add i32 %29, 1
  %39 = sub i32 %27, %34
  %40 = add i32 %34, %28
  %41 = icmp eq i32 %39, 0
  br i1 %41, label %42, label %26

42:                                               ; preds = %26, %16
  %43 = phi i32 [ %17, %16 ], [ %38, %26 ]
  %44 = add nuw i32 %18, 1
  %45 = tail call ptr @sg_next(ptr noundef %19) #10
  %46 = load i32, ptr %10, align 4
  %47 = icmp ult i32 %44, %46
  br i1 %47, label %16, label %48

48:                                               ; preds = %42, %6
  %49 = phi i32 [ 0, %6 ], [ %43, %42 ]
  %50 = add i32 %49, -1
  %51 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %50, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, -2147483648
  store i32 %53, ptr %51, align 4
  br label %54

54:                                               ; preds = %48, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_bmdma_qc_issue(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = tail call i32 @ata_sff_qc_issue(ptr noundef %0)
  br label %189

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ata_device, ptr %4, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  br label %17

17:                                               ; preds = %25, %13
  %18 = phi i32 [ 1000, %13 ], [ %26, %25 ]
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #10
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr inbounds %struct.ata_port_operations, ptr %20, i32 0, i32 39
  %22 = load ptr, ptr %21, align 4
  %23 = tail call zeroext i8 %22(ptr noundef %2) #10
  %24 = icmp eq i8 %23, -1
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = add nsw i32 %18, -1
  %27 = and i8 %23, -120
  %28 = icmp ne i8 %27, 0
  %29 = icmp ne i32 %26, 0
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %17, label %31

31:                                               ; preds = %25, %17
  %32 = load ptr, ptr %16, align 4
  %33 = getelementptr inbounds %struct.ata_port_operations, ptr %32, i32 0, i32 37
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %2, i32 noundef %15) #10
  br label %35

35:                                               ; preds = %43, %31
  %36 = phi i32 [ 1000, %31 ], [ %44, %43 ]
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 2147480) #10
  %38 = load ptr, ptr %16, align 4
  %39 = getelementptr inbounds %struct.ata_port_operations, ptr %38, i32 0, i32 39
  %40 = load ptr, ptr %39, align 4
  %41 = tail call zeroext i8 %40(ptr noundef %2) #10
  %42 = icmp eq i8 %41, -1
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = add nsw i32 %36, -1
  %45 = and i8 %41, -120
  %46 = icmp ne i8 %45, 0
  %47 = icmp ne i32 %44, 0
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %35, label %49

49:                                               ; preds = %43, %35
  %50 = load i8, ptr %7, align 4
  switch i8 %50, label %188 [
    i8 2, label %51
    i8 10, label %121
  ]

51:                                               ; preds = %49
  %52 = load i32, ptr %6, align 4
  %53 = and i32 %52, 64
  %54 = icmp ne i32 %53, 0
  %55 = load i1, ptr @ata_bmdma_qc_issue.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !12

58:                                               ; preds = %51
  store i1 true, ptr @ata_bmdma_qc_issue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2720, i32 noundef 9, ptr noundef null) #10
  br label %59

59:                                               ; preds = %58, %51
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 1), align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %74 = tail call i32 @__traceiter_ata_tf_load(ptr noundef null, ptr noundef %2, ptr noundef %6) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %75

75:                                               ; preds = %73, %62, %59
  %76 = load ptr, ptr %16, align 4
  %77 = getelementptr inbounds %struct.ata_port_operations, ptr %76, i32 0, i32 41
  %78 = load ptr, ptr %77, align 4
  tail call void %78(ptr noundef %2, ptr noundef %6) #10
  %79 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %80 = load i32, ptr %79, align 4
  %81 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_setup, i32 0, i32 1), align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = tail call ptr @llvm.thread.pointer() #10
  %85 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 2
  %86 = load i32, ptr %85, align 8
  %87 = lshr i32 %86, 5
  %88 = getelementptr i32, ptr @__cpu_online_mask, i32 %87
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %86, 31
  %91 = shl nuw i32 1, %90
  %92 = and i32 %91, %89
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %83
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %95 = tail call i32 @__traceiter_ata_bmdma_setup(ptr noundef null, ptr noundef %2, ptr noundef %6, i32 noundef %80) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !49
  br label %96

96:                                               ; preds = %94, %83, %75
  %97 = load ptr, ptr %16, align 4
  %98 = getelementptr inbounds %struct.ata_port_operations, ptr %97, i32 0, i32 49
  %99 = load ptr, ptr %98, align 4
  tail call void %99(ptr noundef %0) #10
  %100 = load i32, ptr %79, align 4
  %101 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_start, i32 0, i32 1), align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %96
  %104 = tail call ptr @llvm.thread.pointer() #10
  %105 = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %106 = load i32, ptr %105, align 8
  %107 = lshr i32 %106, 5
  %108 = getelementptr i32, ptr @__cpu_online_mask, i32 %107
  %109 = load volatile i32, ptr %108, align 4
  %110 = and i32 %106, 31
  %111 = shl nuw i32 1, %110
  %112 = and i32 %111, %109
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %103
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !27
  %115 = tail call i32 @__traceiter_ata_bmdma_start(ptr noundef null, ptr noundef %2, ptr noundef %6, i32 noundef %100) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  br label %116

116:                                              ; preds = %114, %103, %96
  %117 = load ptr, ptr %16, align 4
  %118 = getelementptr inbounds %struct.ata_port_operations, ptr %117, i32 0, i32 50
  %119 = load ptr, ptr %118, align 4
  tail call void %119(ptr noundef %0) #10
  %120 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 37
  store i32 3, ptr %120, align 16
  br label %189

121:                                              ; preds = %49
  %122 = load i32, ptr %6, align 4
  %123 = and i32 %122, 64
  %124 = icmp ne i32 %123, 0
  %125 = load i1, ptr @ata_bmdma_qc_issue.__already_done.21, align 1
  %126 = xor i1 %125, true
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %129, !prof !12

128:                                              ; preds = %121
  store i1 true, ptr @ata_bmdma_qc_issue.__already_done.21, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2732, i32 noundef 9, ptr noundef null) #10
  br label %129

129:                                              ; preds = %128, %121
  %130 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 1), align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = tail call ptr @llvm.thread.pointer() #10
  %134 = getelementptr inbounds %struct.thread_info, ptr %133, i32 0, i32 2
  %135 = load i32, ptr %134, align 8
  %136 = lshr i32 %135, 5
  %137 = getelementptr i32, ptr @__cpu_online_mask, i32 %136
  %138 = load volatile i32, ptr %137, align 4
  %139 = and i32 %135, 31
  %140 = shl nuw i32 1, %139
  %141 = and i32 %140, %138
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %132
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !8
  %144 = tail call i32 @__traceiter_ata_tf_load(ptr noundef null, ptr noundef %2, ptr noundef %6) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  br label %145

145:                                              ; preds = %143, %132, %129
  %146 = load ptr, ptr %16, align 4
  %147 = getelementptr inbounds %struct.ata_port_operations, ptr %146, i32 0, i32 41
  %148 = load ptr, ptr %147, align 4
  tail call void %148(ptr noundef %2, ptr noundef %6) #10
  %149 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_setup, i32 0, i32 1), align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %145
  %154 = tail call ptr @llvm.thread.pointer() #10
  %155 = getelementptr inbounds %struct.thread_info, ptr %154, i32 0, i32 2
  %156 = load i32, ptr %155, align 8
  %157 = lshr i32 %156, 5
  %158 = getelementptr i32, ptr @__cpu_online_mask, i32 %157
  %159 = load volatile i32, ptr %158, align 4
  %160 = and i32 %156, 31
  %161 = shl nuw i32 1, %160
  %162 = and i32 %161, %159
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %153
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !48
  %165 = tail call i32 @__traceiter_ata_bmdma_setup(ptr noundef null, ptr noundef %2, ptr noundef %6, i32 noundef %150) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !49
  br label %166

166:                                              ; preds = %164, %153, %145
  %167 = load ptr, ptr %16, align 4
  %168 = getelementptr inbounds %struct.ata_port_operations, ptr %167, i32 0, i32 49
  %169 = load ptr, ptr %168, align 4
  tail call void %169(ptr noundef %0) #10
  %170 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 37
  store i32 1, ptr %170, align 16
  %171 = load ptr, ptr %3, align 4
  %172 = getelementptr inbounds %struct.ata_device, ptr %171, i32 0, i32 3
  %173 = load i32, ptr %172, align 4
  %174 = and i32 %173, 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %166
  %177 = load ptr, ptr %5, align 64
  %178 = getelementptr inbounds %struct.ata_port, ptr %177, i32 0, i32 11
  %179 = load ptr, ptr %178, align 32
  %180 = icmp ne ptr %179, null
  %181 = icmp ne ptr %179, %5
  %182 = and i1 %180, %181
  br i1 %182, label %183, label %184, !prof !12

183:                                              ; preds = %176
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1236, i32 noundef 9, ptr noundef null) #10
  br label %184

184:                                              ; preds = %183, %176
  store ptr %5, ptr %178, align 32
  %185 = getelementptr inbounds %struct.ata_port, ptr %177, i32 0, i32 12
  %186 = load ptr, ptr @ata_sff_wq, align 4
  %187 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %186, ptr noundef %185, i32 noundef 0) #10
  br label %189

188:                                              ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2746, i32 noundef 9, ptr noundef null) #10
  br label %189

189:                                              ; preds = %188, %184, %166, %116, %11
  %190 = phi i32 [ 64, %188 ], [ %12, %11 ], [ 0, %166 ], [ 0, %184 ], [ 0, %116 ]
  ret i32 %190
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_bmdma_error_handler(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 3
  %3 = load i32, ptr %2, align 32
  %4 = icmp ugt i32 %3, 32
  %5 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %109, label %8

8:                                                ; preds = %1
  %9 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %109, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #10
  %17 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 4
  %18 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 4, i32 1
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %107, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.ata_port_operations, ptr %24, i32 0, i32 52
  %26 = load ptr, ptr %25, align 4
  %27 = tail call zeroext i8 %26(ptr noundef %0) #10
  %28 = zext i8 %27 to i32
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_status, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %22
  %32 = tail call ptr @llvm.thread.pointer() #10
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !50
  %43 = tail call i32 @__traceiter_ata_bmdma_status(ptr noundef null, ptr noundef %0, i32 noundef %28) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  br label %44

44:                                               ; preds = %42, %31, %22
  %45 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 20
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 4
  %48 = and i32 %28, 2
  %49 = icmp eq i32 %48, 0
  %50 = or i1 %49, %47
  br i1 %50, label %81, label %51

51:                                               ; preds = %44
  store i32 32, ptr %45, align 4
  %52 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_stop, i32 0, i32 1), align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = tail call ptr @llvm.thread.pointer() #10
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 8
  %60 = lshr i32 %59, 5
  %61 = getelementptr i32, ptr @__cpu_online_mask, i32 %60
  %62 = load volatile i32, ptr %61, align 4
  %63 = and i32 %59, 31
  %64 = shl nuw i32 1, %63
  %65 = and i32 %64, %62
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %56
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %68 = tail call i32 @__traceiter_ata_bmdma_stop(ptr noundef null, ptr noundef %0, ptr noundef %17, i32 noundef %53) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %69

69:                                               ; preds = %67, %56, %51
  %70 = load ptr, ptr %23, align 4
  %71 = getelementptr inbounds %struct.ata_port_operations, ptr %70, i32 0, i32 51
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef nonnull %5) #10
  %73 = load ptr, ptr %23, align 4
  %74 = getelementptr inbounds %struct.ata_port_operations, ptr %73, i32 0, i32 39
  %75 = load ptr, ptr %74, align 4
  %76 = tail call zeroext i8 %75(ptr noundef %0) #10
  %77 = load ptr, ptr %23, align 4
  %78 = getelementptr inbounds %struct.ata_port_operations, ptr %77, i32 0, i32 47
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %105, label %104

81:                                               ; preds = %44
  %82 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %3, i32 7
  %83 = load i32, ptr %82, align 4
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_stop, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = tail call ptr @llvm.thread.pointer() #10
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %98 = tail call i32 @__traceiter_ata_bmdma_stop(ptr noundef null, ptr noundef %0, ptr noundef %17, i32 noundef %83) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %99

99:                                               ; preds = %97, %86, %81
  %100 = load ptr, ptr %23, align 4
  %101 = getelementptr inbounds %struct.ata_port_operations, ptr %100, i32 0, i32 51
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef nonnull %5) #10
  %103 = load ptr, ptr %14, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %103, i32 noundef %16) #10
  br label %114

104:                                              ; preds = %69
  tail call void %79(ptr noundef %0) #10
  br label %105

105:                                              ; preds = %104, %69
  %106 = load ptr, ptr %14, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %106, i32 noundef %16) #10
  tail call void @ata_eh_thaw_port(ptr noundef %0) #10
  br label %114

107:                                              ; preds = %13
  %108 = load ptr, ptr %14, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %108, i32 noundef %16) #10
  br label %114

109:                                              ; preds = %8, %1
  %110 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8
  %112 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %111) #10
  %113 = load ptr, ptr %110, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %113, i32 noundef %112) #10
  br label %114

114:                                              ; preds = %109, %107, %105, %99
  tail call void @ata_sff_error_handler(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_bmdma_post_internal_cmd(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #10
  %12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_stop, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %7
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %28 = tail call i32 @__traceiter_ata_bmdma_stop(ptr noundef null, ptr noundef %2, ptr noundef %8, i32 noundef %13) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %29

29:                                               ; preds = %27, %16, %7
  %30 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ata_port_operations, ptr %31, i32 0, i32 51
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %0) #10
  %34 = load ptr, ptr %9, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %11) #10
  br label %35

35:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_bmdma_port_start(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 17
  %7 = load i32, ptr %6, align 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 14
  %15 = tail call ptr @dmam_alloc_attrs(ptr noundef %13, i32 noundef 2048, ptr noundef %14, i32 noundef 3264, i32 noundef 0) #10
  %16 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 13
  store ptr %15, ptr %16, align 16
  %17 = icmp eq ptr %15, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %9, %5
  br label %19

19:                                               ; preds = %18, %9
  %20 = phi i32 [ 0, %18 ], [ -12, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_bmdma_irq_clear(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %3, i32 2
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %6) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %7) #10, !srcloc !14
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_bmdma_setup(ptr noundef %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !54
  tail call void @arm_heavy_mb() #10
  %5 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !55
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #10, !srcloc !56
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %12 = and i8 %11, -10
  %13 = trunc i32 %4 to i8
  %14 = and i8 %13, 8
  %15 = or i8 %12, %14
  %16 = xor i8 %15, 8
  %17 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %17, i8 %16) #10, !srcloc !14
  %18 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ata_port_operations, ptr %19, i32 0, i32 43
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %2, ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_bmdma_start(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %6 = or i8 %5, 1
  %7 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 %6) #10, !srcloc !14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_bmdma_stop(ptr nocapture noundef readonly %0) #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %6 = and i8 %5, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %4, i8 %6) #10, !srcloc !14
  %7 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 40
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 8, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %18

16:                                               ; preds = %1
  %17 = tail call zeroext i8 %10(ptr noundef %2) #10
  br label %21

18:                                               ; preds = %12
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  br label %21

20:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libata-sff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 176, 0\0A.popsection", ""() #10, !srcloc !22
  unreachable

21:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @ata_bmdma_status(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 8, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 2
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %4) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_bmdma_port_start32(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 16
  %4 = or i32 %3, 3145728
  store i32 %4, ptr %2, align 16
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_host, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 14
  %18 = tail call ptr @dmam_alloc_attrs(ptr noundef %16, i32 noundef 2048, ptr noundef %17, i32 noundef 3264, i32 noundef 0) #10
  %19 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 13
  store ptr %18, ptr %19, align 16
  %20 = icmp eq ptr %18, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12, %8
  br label %22

22:                                               ; preds = %21, %12
  %23 = phi i32 [ 0, %21 ], [ -12, %12 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_bmdma_dumb_qc_prep(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %63, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %57, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %51, %13
  %17 = phi i32 [ %52, %51 ], [ 0, %13 ]
  %18 = phi i32 [ %53, %51 ], [ 0, %13 ]
  %19 = phi ptr [ %54, %51 ], [ %15, %13 ]
  %20 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %43, %23
  %27 = phi i32 [ %48, %43 ], [ %21, %23 ]
  %28 = phi i32 [ %49, %43 ], [ %25, %23 ]
  %29 = phi i32 [ %47, %43 ], [ %17, %23 ]
  %30 = and i32 %28, 65535
  %31 = add i32 %30, %27
  %32 = icmp ugt i32 %31, 65536
  %33 = sub nuw nsw i32 65536, %30
  %34 = select i1 %32, i32 %33, i32 %27
  %35 = and i32 %34, 65535
  %36 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %29
  store i32 %28, ptr %36, align 4
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %29, i32 1
  store i32 32768, ptr %39, align 4
  %40 = add i32 %28, 32768
  %41 = add i32 %29, 1
  %42 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %41
  store i32 %40, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %26
  %44 = phi i32 [ %41, %38 ], [ %29, %26 ]
  %45 = phi i32 [ 32768, %38 ], [ %35, %26 ]
  %46 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %44, i32 1
  store i32 %45, ptr %46, align 4
  %47 = add i32 %44, 1
  %48 = sub i32 %27, %34
  %49 = add i32 %34, %28
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %51, label %26

51:                                               ; preds = %43, %16
  %52 = phi i32 [ %17, %16 ], [ %47, %43 ]
  %53 = add nuw i32 %18, 1
  %54 = tail call ptr @sg_next(ptr noundef %19) #10
  %55 = load i32, ptr %10, align 4
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %16, label %57

57:                                               ; preds = %51, %6
  %58 = phi i32 [ 0, %6 ], [ %52, %51 ]
  %59 = add i32 %58, -1
  %60 = getelementptr %struct.ata_bmdma_prd, ptr %9, i32 %59, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = or i32 %61, -2147483648
  store i32 %62, ptr %60, align 4
  br label %63

63:                                               ; preds = %57, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_bmdma_port_intr(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 37
  %5 = load i32, ptr %4, align 16
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %70

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4
  %9 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 52
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i8 %17(ptr noundef %0) #10
  %19 = zext i8 %18 to i32
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_status, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !50
  %34 = tail call i32 @__traceiter_ata_bmdma_status(ptr noundef null, ptr noundef %0, i32 noundef %19) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !51
  br label %35

35:                                               ; preds = %33, %22, %13
  %36 = and i32 %19, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 30, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  br label %84

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_stop, i32 0, i32 1), align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = tail call ptr @llvm.thread.pointer() #10
  %49 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 8
  %51 = lshr i32 %50, 5
  %52 = getelementptr i32, ptr @__cpu_online_mask, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %50, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !52
  %59 = tail call i32 @__traceiter_ata_bmdma_stop(ptr noundef null, ptr noundef %0, ptr noundef %8, i32 noundef %44) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !53
  br label %60

60:                                               ; preds = %58, %47, %42
  %61 = load ptr, ptr %14, align 4
  %62 = getelementptr inbounds %struct.ata_port_operations, ptr %61, i32 0, i32 51
  %63 = load ptr, ptr %62, align 4
  tail call void %63(ptr noundef %1) #10
  %64 = and i32 %19, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66, !prof !19

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %68 = load i32, ptr %67, align 4
  %69 = or i32 %68, 32
  store i32 %69, ptr %67, align 4
  store i32 4, ptr %4, align 16
  br label %70

70:                                               ; preds = %66, %60, %7, %2
  %71 = phi i8 [ %18, %66 ], [ %18, %60 ], [ 0, %7 ], [ 0, %2 ]
  %72 = phi i1 [ true, %66 ], [ true, %60 ], [ false, %7 ], [ false, %2 ]
  %73 = tail call fastcc i32 @__ata_sff_port_intr(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %72)
  %74 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77, !prof !19

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 1
  %79 = load i8, ptr %78, align 4
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %83) #10
  br label %84

84:                                               ; preds = %82, %77, %70, %38
  %85 = phi i32 [ 0, %38 ], [ %73, %82 ], [ %73, %77 ], [ %73, %70 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_bmdma_interrupt(i32 %0, ptr noundef %1) #1 {
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #10
  %4 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %99, %2
  %7 = phi i32 [ %5, %2 ], [ %97, %99 ]
  %8 = phi i1 [ false, %2 ], [ true, %99 ]
  %9 = icmp eq i32 %7, 0
  br i1 %9, label %100, label %10

10:                                               ; preds = %50, %6
  %11 = phi i32 [ %51, %50 ], [ %7, %6 ]
  %12 = phi i32 [ %54, %50 ], [ 0, %6 ]
  %13 = phi i32 [ %53, %50 ], [ 0, %6 ]
  %14 = phi i32 [ %52, %50 ], [ 0, %6 ]
  %15 = phi i32 [ %55, %50 ], [ 0, %6 ]
  %16 = getelementptr %struct.ata_host, ptr %1, i32 0, i32 12, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 25, i32 3
  %19 = load i32, ptr %18, align 32
  %20 = icmp ugt i32 %19, 32
  %21 = getelementptr %struct.ata_port, ptr %17, i32 0, i32 19, i32 %19
  %22 = icmp eq ptr %21, null
  %23 = or i1 %20, %22
  br i1 %23, label %47, label %24, !prof !12

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_port_operations, ptr %26, i32 0, i32 22
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = getelementptr %struct.ata_port, ptr %17, i32 0, i32 19, i32 %19, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 65537
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %47

35:                                               ; preds = %30, %24
  %36 = getelementptr %struct.ata_port, ptr %17, i32 0, i32 19, i32 %19, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = tail call i32 @ata_bmdma_port_intr(ptr noundef %17, ptr noundef nonnull %21) #10, !callees !57
  %42 = or i32 %41, %14
  %43 = load i32, ptr %4, align 4
  br label %50

44:                                               ; preds = %35
  %45 = shl nuw i32 1, %15
  %46 = or i32 %45, %12
  br label %50

47:                                               ; preds = %30, %10
  %48 = shl nuw i32 1, %15
  %49 = or i32 %48, %13
  br label %50

50:                                               ; preds = %47, %44, %40
  %51 = phi i32 [ %11, %44 ], [ %43, %40 ], [ %11, %47 ]
  %52 = phi i32 [ %14, %44 ], [ %42, %40 ], [ %14, %47 ]
  %53 = phi i32 [ %13, %44 ], [ %13, %40 ], [ %49, %47 ]
  %54 = phi i32 [ %46, %44 ], [ %12, %40 ], [ %12, %47 ]
  %55 = add nuw i32 %15, 1
  %56 = icmp ult i32 %55, %51
  br i1 %56, label %10, label %57

57:                                               ; preds = %50
  %58 = icmp ne i32 %52, 0
  %59 = or i1 %8, %58
  br i1 %59, label %100, label %60

60:                                               ; preds = %57
  %61 = icmp eq i32 %51, 0
  br i1 %61, label %100, label %62

62:                                               ; preds = %94, %60
  %63 = phi i1 [ %95, %94 ], [ false, %60 ]
  %64 = phi i32 [ %96, %94 ], [ 0, %60 ]
  %65 = getelementptr %struct.ata_host, ptr %1, i32 0, i32 12, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = shl nuw i32 1, %64
  %68 = and i32 %67, %54
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.ata_port, ptr %66, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ata_port_operations, ptr %72, i32 0, i32 46
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %70
  %77 = tail call zeroext i1 %74(ptr noundef %66) #10
  br i1 %77, label %78, label %94

78:                                               ; preds = %76
  %79 = and i32 %67, %53
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr %71, align 4
  %82 = getelementptr inbounds %struct.ata_port_operations, ptr %81, i32 0, i32 39
  %83 = load ptr, ptr %82, align 4
  %84 = tail call zeroext i8 %83(ptr noundef %66) #10
  br i1 %80, label %91, label %85

85:                                               ; preds = %78
  %86 = load ptr, ptr %71, align 4
  %87 = getelementptr inbounds %struct.ata_port_operations, ptr %86, i32 0, i32 47
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  tail call void %88(ptr noundef %66) #10
  br label %94

91:                                               ; preds = %78
  %92 = icmp sgt i8 %84, -1
  %93 = select i1 %92, i1 true, i1 %63
  br label %94

94:                                               ; preds = %91, %90, %85, %76, %70, %62
  %95 = phi i1 [ %63, %62 ], [ %63, %76 ], [ %63, %70 ], [ %63, %90 ], [ %63, %85 ], [ %93, %91 ]
  %96 = add nuw i32 %64, 1
  %97 = load i32, ptr %4, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %62, label %99

99:                                               ; preds = %94
  br i1 %95, label %6, label %100

100:                                              ; preds = %99, %60, %57, %6
  %101 = phi i1 [ false, %6 ], [ %58, %57 ], [ false, %99 ], [ false, %60 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %3) #10
  %102 = zext i1 %101 to i32
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_thaw_port(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_bmdma_clear_simplex(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, 2
  %7 = and i32 %6, 1048575
  %8 = or i32 %7, -18874368
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !58
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %11 = and i8 %10, 96
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %11) #10, !srcloc !14
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !60
  %13 = icmp sgt i8 %12, -1
  %14 = select i1 %13, i32 0, i32 -95
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi i32 [ -2, %1 ], [ %14, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_pci_bmdma_init(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -136
  %5 = getelementptr i8, ptr %3, i32 608
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.23) #11
  %9 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 0
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 16
  store i32 0, ptr %11, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 17
  store i32 0, ptr %13, align 32
  %14 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 16
  store i32 0, ptr %16, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 17
  store i32 0, ptr %18, align 32
  br label %107

19:                                               ; preds = %1
  %20 = tail call i32 @dma_set_mask(ptr noundef %3, i64 noundef 4294967295) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = tail call i32 @dma_set_coherent_mask(ptr noundef %3, i64 noundef 4294967295) #10
  br label %36

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24) #11
  %26 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 0
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 16
  store i32 0, ptr %28, align 4
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 17
  store i32 0, ptr %30, align 32
  %31 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ata_port, ptr %32, i32 0, i32 16
  store i32 0, ptr %33, align 4
  %34 = load ptr, ptr %31, align 4
  %35 = getelementptr inbounds %struct.ata_port, ptr %34, i32 0, i32 17
  store i32 0, ptr %35, align 32
  br label %36

36:                                               ; preds = %24, %22
  %37 = tail call ptr @dev_driver_string(ptr noundef %3) #10
  %38 = tail call i32 @pcim_iomap_regions(ptr noundef %4, i32 noundef 16, ptr noundef %37) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25) #11
  %42 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 0
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ata_port, ptr %43, i32 0, i32 16
  store i32 0, ptr %44, align 4
  %45 = load ptr, ptr %42, align 4
  %46 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 17
  store i32 0, ptr %46, align 32
  %47 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 16
  store i32 0, ptr %49, align 4
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.ata_port, ptr %50, i32 0, i32 17
  store i32 0, ptr %51, align 32
  br label %107

52:                                               ; preds = %36
  %53 = tail call ptr @pcim_iomap_table(ptr noundef %4) #10
  %54 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 2
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 7
  %56 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 0
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr ptr, ptr %53, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, @ata_dummy_port_ops
  br i1 %62, label %82, label %63

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 8, i32 13
  store ptr %59, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 32768
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = getelementptr i8, ptr %59, i32 2
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %70) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %72 = icmp sgt i8 %71, -1
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr %55, align 4
  %75 = or i32 %74, 1
  store i32 %75, ptr %55, align 4
  br label %76

76:                                               ; preds = %73, %69, %63
  %77 = load i32, ptr %5, align 8
  %78 = zext i32 %77 to i64
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %57, ptr noundef nonnull @.str.26, i64 noundef %78) #10
  %79 = load ptr, ptr %54, align 4
  %80 = getelementptr ptr, ptr %79, i32 4
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %76, %52
  %83 = phi ptr [ %59, %52 ], [ %81, %76 ]
  %84 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.ata_port, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, @ata_dummy_port_ops
  br i1 %88, label %107, label %89

89:                                               ; preds = %82
  %90 = getelementptr i8, ptr %83, i32 8
  %91 = getelementptr inbounds %struct.ata_port, ptr %85, i32 0, i32 8, i32 13
  store ptr %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.ata_port, ptr %85, i32 0, i32 3
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, 32768
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = getelementptr i8, ptr %83, i32 10
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %97) #10, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %99 = icmp sgt i8 %98, -1
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %55, align 4
  %102 = or i32 %101, 1
  store i32 %102, ptr %55, align 4
  br label %103

103:                                              ; preds = %100, %96, %89
  %104 = load i32, ptr %5, align 8
  %105 = zext i32 %104 to i64
  %106 = add nuw nsw i64 %105, 8
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %85, ptr noundef nonnull @.str.26, i64 noundef %106) #10
  br label %107

107:                                              ; preds = %103, %82, %40, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_bmdma_prepare_host(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #1 {
  %4 = tail call i32 @ata_pci_sff_prepare_host(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 4
  tail call void @ata_pci_bmdma_init(ptr noundef %7)
  br label %8

8:                                                ; preds = %6, %3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_bmdma_init_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #1 {
  %6 = tail call fastcc i32 @ata_pci_init_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext true)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_port_init(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 12
  store i32 -32, ptr %2, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 12, i32 0, i32 1
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 12, i32 0, i32 1, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 12, i32 0, i32 2
  store ptr @ata_sff_pio_task, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 12, i32 1
  tail call void @init_timer_key(ptr noundef %6, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #10
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 9
  store i8 8, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 10
  store i8 -1, ptr %8, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ata_sff_pio_task(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -100
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 32
  %5 = getelementptr i8, ptr %0, i32 -92
  %6 = load ptr, ptr %5, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #10
  %7 = load ptr, ptr %3, align 32
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libata-sff.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1276, 0\0A.popsection", ""() #10, !srcloc !61
  unreachable

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ata_link, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 32
  %13 = icmp ugt i32 %12, 32
  %14 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %12
  %15 = icmp eq ptr %14, null
  %16 = or i1 %13, %15
  br i1 %16, label %30, label %17, !prof !12

17:                                               ; preds = %10
  %18 = getelementptr i8, ptr %0, i32 -96
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ata_port_operations, ptr %19, i32 0, i32 22
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %12, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 65537
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %17
  %29 = getelementptr i8, ptr %0, i32 10668
  br label %31

30:                                               ; preds = %23, %10
  store ptr null, ptr %3, align 32
  br label %120

31:                                               ; preds = %116, %28
  %32 = load i32, ptr %29, align 16
  %33 = icmp eq i32 %32, 0
  %34 = load i1, ptr @ata_sff_pio_task.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !12

37:                                               ; preds = %31
  store i1 true, ptr @ata_sff_pio_task.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1285, i32 noundef 9, ptr noundef null) #10
  br label %38

38:                                               ; preds = %37, %31
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #10
  %40 = load ptr, ptr %18, align 4
  %41 = getelementptr inbounds %struct.ata_port_operations, ptr %40, i32 0, i32 39
  %42 = load ptr, ptr %41, align 4
  %43 = tail call zeroext i8 %42(ptr noundef %2) #10
  %44 = icmp eq i8 %43, -1
  br i1 %44, label %84, label %45

45:                                               ; preds = %38
  %46 = icmp slt i8 %43, 0
  br i1 %46, label %47, label %81

47:                                               ; preds = %45
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 2147480) #10
  %49 = load ptr, ptr %18, align 4
  %50 = getelementptr inbounds %struct.ata_port_operations, ptr %49, i32 0, i32 39
  %51 = load ptr, ptr %50, align 4
  %52 = tail call zeroext i8 %51(ptr noundef %2) #10
  %53 = icmp eq i8 %52, -1
  br i1 %53, label %84, label %54

54:                                               ; preds = %47
  %55 = icmp slt i8 %52, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %54
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 2147480) #10
  %58 = load ptr, ptr %18, align 4
  %59 = getelementptr inbounds %struct.ata_port_operations, ptr %58, i32 0, i32 39
  %60 = load ptr, ptr %59, align 4
  %61 = tail call zeroext i8 %60(ptr noundef %2) #10
  %62 = icmp eq i8 %61, -1
  br i1 %62, label %84, label %63

63:                                               ; preds = %56
  %64 = icmp slt i8 %61, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %63
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 2147480) #10
  %67 = load ptr, ptr %18, align 4
  %68 = getelementptr inbounds %struct.ata_port_operations, ptr %67, i32 0, i32 39
  %69 = load ptr, ptr %68, align 4
  %70 = tail call zeroext i8 %69(ptr noundef %2) #10
  %71 = icmp eq i8 %70, -1
  br i1 %71, label %84, label %72

72:                                               ; preds = %65
  %73 = icmp slt i8 %70, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %72
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 2147480) #10
  %76 = load ptr, ptr %18, align 4
  %77 = getelementptr inbounds %struct.ata_port_operations, ptr %76, i32 0, i32 39
  %78 = load ptr, ptr %77, align 4
  %79 = tail call zeroext i8 %78(ptr noundef %2) #10
  %80 = icmp eq i8 %79, -1
  br i1 %80, label %84, label %81

81:                                               ; preds = %74, %72, %63, %54, %45
  %82 = phi i8 [ %43, %45 ], [ %52, %54 ], [ %61, %63 ], [ %70, %72 ], [ %79, %74 ]
  %83 = icmp sgt i8 %82, -1
  br i1 %83, label %116, label %84

84:                                               ; preds = %81, %74, %65, %56, %47, %38
  %85 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !41
  %86 = load i16, ptr %85, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %85, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !42
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !43
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  tail call void @ata_msleep(ptr noundef %2, i32 noundef 2) #10
  %88 = load ptr, ptr %5, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %88) #10
  br label %89

89:                                               ; preds = %97, %84
  %90 = phi i32 [ 10, %84 ], [ %98, %97 ]
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %91(i32 noundef 2147480) #10
  %92 = load ptr, ptr %18, align 4
  %93 = getelementptr inbounds %struct.ata_port_operations, ptr %92, i32 0, i32 39
  %94 = load ptr, ptr %93, align 4
  %95 = tail call zeroext i8 %94(ptr noundef %2) #10
  %96 = icmp eq i8 %95, -1
  br i1 %96, label %104, label %97

97:                                               ; preds = %89
  %98 = add nsw i32 %90, -1
  %99 = icmp slt i8 %95, 0
  %100 = icmp ne i32 %98, 0
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %89, label %102

102:                                              ; preds = %97
  %103 = icmp sgt i8 %95, -1
  br i1 %103, label %116, label %104

104:                                              ; preds = %102, %89
  %105 = load ptr, ptr %4, align 64
  %106 = getelementptr inbounds %struct.ata_port, ptr %105, i32 0, i32 11
  %107 = load ptr, ptr %106, align 32
  %108 = icmp ne ptr %107, null
  %109 = icmp ne ptr %107, %4
  %110 = and i1 %108, %109
  br i1 %110, label %111, label %112, !prof !12

111:                                              ; preds = %104
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1236, i32 noundef 9, ptr noundef null) #10
  br label %112

112:                                              ; preds = %111, %104
  store ptr %4, ptr %106, align 32
  %113 = getelementptr inbounds %struct.ata_port, ptr %105, i32 0, i32 12
  %114 = load ptr, ptr @ata_sff_wq, align 4
  %115 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %114, ptr noundef %113, i32 noundef 2) #10
  br label %120

116:                                              ; preds = %102, %81
  %117 = phi i8 [ %95, %102 ], [ %82, %81 ]
  store ptr null, ptr %3, align 32
  %118 = tail call i32 @ata_sff_hsm_move(ptr noundef %2, ptr noundef nonnull %14, i8 noundef zeroext %117, i32 noundef 1)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %31

120:                                              ; preds = %116, %112, %30
  %121 = load ptr, ptr %5, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !41
  %122 = load i16, ptr %121, align 4
  %123 = add i16 %122, 1
  store i16 %123, ptr %121, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !42
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !43
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !44
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @ata_sff_init() local_unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.27, i32 noundef 8, i32 noundef 512) #10
  store ptr %1, ptr @ata_sff_wq, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -12, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sff_exit() local_unnamed_addr #1 {
  %1 = load ptr, ptr @ata_sff_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_sff_hsm_state(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_pio_sector(ptr noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 18
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 15
  store i32 %8, ptr %9, align 4
  br label %85

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = icmp eq i32 %12, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 37
  store i32 3, ptr %20, align 16
  %21 = load ptr, ptr %3, align 4
  %22 = load i32, ptr %15, align 4
  br label %23

23:                                               ; preds = %19, %10
  %24 = phi i32 [ %22, %19 ], [ %16, %10 ]
  %25 = phi ptr [ %21, %19 ], [ %4, %10 ]
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, -4
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 19
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %30
  %34 = lshr i32 %33, 12
  %35 = getelementptr %struct.page, ptr %28, i32 %34
  %36 = and i32 %33, 4095
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_pio_transfer_data, i32 0, i32 1), align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %23
  %40 = tail call ptr @llvm.thread.pointer() #10
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 2
  %42 = load i32, ptr %41, align 8
  %43 = lshr i32 %42, 5
  %44 = getelementptr i32, ptr @__cpu_online_mask, i32 %43
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = and i32 %47, %45
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %39
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !62
  %51 = tail call i32 @__traceiter_ata_sff_pio_transfer_data(ptr noundef null, ptr noundef %0, i32 noundef %36, i32 noundef %24) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !63
  br label %52

52:                                               ; preds = %50, %39, %23
  %53 = and i32 %33, 3
  %54 = icmp ne i32 %53, 0
  %55 = load i1, ptr @ata_pio_sector.__already_done, align 1
  %56 = xor i1 %55, true
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %59, !prof !12

58:                                               ; preds = %52
  store i1 true, ptr @ata_pio_sector.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 673, i32 noundef 9, ptr noundef null) #10
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, ptr %15, align 4
  %61 = add i32 %60, %36
  %62 = icmp ugt i32 %61, 4096
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = sub nuw nsw i32 4096, %36
  tail call fastcc void @ata_pio_xfer(ptr noundef %0, ptr noundef %35, i32 noundef %36, i32 noundef %64)
  %65 = getelementptr %struct.page, ptr %35, i32 1
  %66 = load i32, ptr %15, align 4
  %67 = sub i32 %66, %64
  tail call fastcc void @ata_pio_xfer(ptr noundef %0, ptr noundef %65, i32 noundef 0, i32 noundef %67)
  br label %69

68:                                               ; preds = %59
  tail call fastcc void @ata_pio_xfer(ptr noundef %0, ptr noundef %35, i32 noundef %36, i32 noundef %60)
  br label %69

69:                                               ; preds = %68, %63
  %70 = load i32, ptr %15, align 4
  %71 = load i32, ptr %11, align 4
  %72 = add i32 %71, %70
  store i32 %72, ptr %11, align 4
  %73 = load i32, ptr %31, align 4
  %74 = add i32 %73, %70
  store i32 %74, ptr %31, align 4
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr inbounds %struct.scatterlist, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = tail call ptr @sg_next(ptr noundef %75) #10
  store ptr %80, ptr %3, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 37
  store i32 3, ptr %83, align 16
  br label %84

84:                                               ; preds = %82, %79
  store i32 0, ptr %31, align 4
  br label %85

85:                                               ; preds = %84, %69, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_pio_xfer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr @pgprot_kernel, align 4
  %10 = or i32 %9, 512
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 149
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %15 = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %10) #10
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 44
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %15, i32 %2
  %22 = lshr exact i32 %7, 3
  %23 = tail call i32 %20(ptr noundef %0, ptr noundef %21, i32 noundef %3, i32 noundef %22) #10
  tail call void @kunmap_local_indexed(ptr noundef %15) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  %24 = load i32, ptr %12, align 8
  %25 = add i32 %24, -1
  store i32 %25, ptr %12, align 8
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  br i1 %8, label %26, label %42

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !19

31:                                               ; preds = %26
  %32 = add i32 %28, -1
  br label %35

33:                                               ; preds = %26
  %34 = ptrtoint ptr %1 to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = inttoptr i32 %36 to ptr
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %38, 512
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call void @flush_dcache_page(ptr noundef %1) #10
  br label %42

42:                                               ; preds = %41, %35, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_sff_pio_transfer_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_atapi_send_cdb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_atapi_pio_transfer_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_sff_hsm_command_complete(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_sff_flush_pio_task(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_exec_command(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_sff_port_intr(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_tf_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_bmdma_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_bmdma_start(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_bmdma_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ata_bmdma_stop(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i64 2154672210}
!9 = !{i64 2154672356}
!10 = !{i64 2154688652}
!11 = !{i64 2154688818}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2151437366}
!14 = !{i64 3896946}
!15 = !{!"auto-init"}
!16 = !{i8 0, i8 2}
!17 = !{i64 3897341}
!18 = !{i64 2151436068}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 3896723}
!21 = !{i64 2151436541}
!22 = !{i64 2155190487, i64 2155190976, i64 2155190524, i64 2155190580, i64 2155190614, i64 2155190638, i64 2155190679, i64 2155190700, i64 2155190728, i64 2155190762}
!23 = !{i64 2155048724}
!24 = !{i64 2155048888}
!25 = !{i64 2155138705}
!26 = !{i64 2155138879}
!27 = !{i64 2154726159}
!28 = !{i64 2154726323}
!29 = !{i64 2155216545, i64 2155217034, i64 2155216582, i64 2155216638, i64 2155216672, i64 2155216696, i64 2155216737, i64 2155216758, i64 2155216786, i64 2155216820}
!30 = !{!"branch_weights", i32 4001, i32 4000000}
!31 = !{i64 2155121545}
!32 = !{i64 2155121737}
!33 = !{i64 2153556124}
!34 = !{i64 2152721154}
!35 = !{i64 2152721361}
!36 = !{i64 2153558749}
!37 = !{i64 2155065636}
!38 = !{i64 2155065822}
!39 = !{i64 2155154890}
!40 = !{i64 2155155050}
!41 = !{i64 2148982187}
!42 = !{i64 2148978011}
!43 = !{i64 2148978086, i64 2148978113, i64 2148978160, i64 2148978182, i64 2148978210, i64 2148978230}
!44 = !{i64 387729}
!45 = !{i64 2149006331}
!46 = !{i64 2155082724}
!47 = !{i64 2155082888}
!48 = !{i64 2154705402}
!49 = !{i64 2154705566}
!50 = !{i64 2154759165}
!51 = !{i64 2154759335}
!52 = !{i64 2154742817}
!53 = !{i64 2154742979}
!54 = !{i64 2155307515}
!55 = !{i64 2151438236}
!56 = !{i64 3897143}
!57 = !{ptr @ata_bmdma_port_intr, ptr @ata_sff_port_intr}
!58 = !{i64 2155315678}
!59 = !{i64 2155315873}
!60 = !{i64 2155316252}
!61 = !{i64 2155240259, i64 2155240749, i64 2155240296, i64 2155240352, i64 2155240386, i64 2155240410, i64 2155240451, i64 2155240472, i64 2155240500, i64 2155240534}
!62 = !{i64 2155103935}
!63 = !{i64 2155104131}
