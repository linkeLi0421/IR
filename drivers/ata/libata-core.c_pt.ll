; ModuleID = '/llk/IR/drivers/ata/libata-core.c_pt.bc'
source_filename = "../drivers/ata/libata-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_port_ops\22\09\09\09\09\09"
module asm "__kstrtabns_sata_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_link_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_link_next\22\09\09\09\09\09"
module asm "__kstrtabns_ata_link_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_dev_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_dev_next\22\09\09\09\09\09"
module asm "__kstrtabns_ata_dev_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atapi_cmd_type:\09\09\09\09\09"
module asm "\09.asciz \09\22atapi_cmd_type\22\09\09\09\09\09"
module asm "__kstrtabns_atapi_cmd_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pack_xfermask:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pack_xfermask\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pack_xfermask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_xfer_mask2mode:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_xfer_mask2mode\22\09\09\09\09\09"
module asm "__kstrtabns_ata_xfer_mask2mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_xfer_mode2mask:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_xfer_mode2mask\22\09\09\09\09\09"
module asm "__kstrtabns_ata_xfer_mode2mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_xfer_mode2shift:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_xfer_mode2shift\22\09\09\09\09\09"
module asm "__kstrtabns_ata_xfer_mode2shift:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_mode_string:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_mode_string\22\09\09\09\09\09"
module asm "__kstrtabns_ata_mode_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_dev_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_dev_classify\22\09\09\09\09\09"
module asm "__kstrtabns_ata_dev_classify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_id_string:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_id_string\22\09\09\09\09\09"
module asm "__kstrtabns_ata_id_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_id_c_string:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_id_c_string\22\09\09\09\09\09"
module asm "__kstrtabns_ata_id_c_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_id_xfermask:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_id_xfermask\22\09\09\09\09\09"
module asm "__kstrtabns_ata_id_xfermask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pio_need_iordy:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pio_need_iordy\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pio_need_iordy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_do_dev_read_id:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_do_dev_read_id\22\09\09\09\09\09"
module asm "__kstrtabns_ata_do_dev_read_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_cable_40wire:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_cable_40wire\22\09\09\09\09\09"
module asm "__kstrtabns_ata_cable_40wire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_cable_80wire:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_cable_80wire\22\09\09\09\09\09"
module asm "__kstrtabns_ata_cable_80wire:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_cable_unknown:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_cable_unknown\22\09\09\09\09\09"
module asm "__kstrtabns_ata_cable_unknown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_cable_ignore:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_cable_ignore\22\09\09\09\09\09"
module asm "__kstrtabns_ata_cable_ignore:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_cable_sata:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_cable_sata\22\09\09\09\09\09"
module asm "__kstrtabns_ata_cable_sata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_dev_pair:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_dev_pair\22\09\09\09\09\09"
module asm "__kstrtabns_ata_dev_pair:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_do_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_do_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_ata_do_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_wait_after_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_wait_after_reset\22\09\09\09\09\09"
module asm "__kstrtabns_ata_wait_after_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_std_prereset:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_std_prereset\22\09\09\09\09\09"
module asm "__kstrtabns_ata_std_prereset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_std_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_std_hardreset\22\09\09\09\09\09"
module asm "__kstrtabns_sata_std_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_std_postreset:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_std_postreset\22\09\09\09\09\09"
module asm "__kstrtabns_ata_std_postreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_dev_set_feature:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_dev_set_feature\22\09\09\09\09\09"
module asm "__kstrtabns_ata_dev_set_feature:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_std_qc_defer:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_std_qc_defer\22\09\09\09\09\09"
module asm "__kstrtabns_ata_std_qc_defer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_noop_qc_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_noop_qc_prep\22\09\09\09\09\09"
module asm "__kstrtabns_ata_noop_qc_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_qc_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_qc_complete\22\09\09\09\09\09"
module asm "__kstrtabns_ata_qc_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_qc_get_active:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_qc_get_active\22\09\09\09\09\09"
module asm "__kstrtabns_ata_qc_get_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_link_online:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_link_online\22\09\09\09\09\09"
module asm "__kstrtabns_ata_link_online:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_link_offline:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_link_offline\22\09\09\09\09\09"
module asm "__kstrtabns_ata_link_offline:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_port_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_port_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_port_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_port_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_port_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_put\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_alloc_pinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_alloc_pinfo\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_alloc_pinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_start:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_start\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_init\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_register\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_activate\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_host_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_host_detach\22\09\09\09\09\09"
module asm "__kstrtabns_ata_host_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_remove_one:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_remove_one\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_remove_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_shutdown_one:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_shutdown_one\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_shutdown_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_test_config_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_test_config_bits\22\09\09\09\09\09"
module asm "__kstrtabns_pci_test_config_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_device_do_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_device_do_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_device_do_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_device_do_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_device_do_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_device_do_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_device_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_device_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_device_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_pci_device_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_pci_device_resume\22\09\09\09\09\09"
module asm "__kstrtabns_ata_pci_device_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_platform_remove_one:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_platform_remove_one\22\09\09\09\09\09"
module asm "__kstrtabns_ata_platform_remove_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_ratelimit\22\09\09\09\09\09"
module asm "__kstrtabns_ata_ratelimit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_msleep:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_msleep\22\09\09\09\09\09"
module asm "__kstrtabns_ata_msleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_wait_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_wait_register\22\09\09\09\09\09"
module asm "__kstrtabns_ata_wait_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_dummy_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_dummy_port_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ata_dummy_port_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_dummy_port_info:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_dummy_port_info\22\09\09\09\09\09"
module asm "__kstrtabns_ata_dummy_port_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_print_version:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_print_version\22\09\09\09\09\09"
module asm "__kstrtabns_ata_print_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_ata_tf_load:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_ata_tf_load\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_ata_tf_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_ata_tf_load:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_ata_tf_load\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_ata_tf_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_ata_tf_load:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_ata_tf_load\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_ata_tf_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_ata_exec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_ata_exec_command\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_ata_exec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_ata_exec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_ata_exec_command\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_ata_exec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_ata_exec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_ata_exec_command\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_ata_exec_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_ata_bmdma_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_ata_bmdma_setup\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_ata_bmdma_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_ata_bmdma_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_ata_bmdma_setup\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_ata_bmdma_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_ata_bmdma_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_ata_bmdma_setup\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_ata_bmdma_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_ata_bmdma_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_ata_bmdma_start\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_ata_bmdma_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_ata_bmdma_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_ata_bmdma_start\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_ata_bmdma_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_ata_bmdma_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_ata_bmdma_start\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_ata_bmdma_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_ata_bmdma_status:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_ata_bmdma_status\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_ata_bmdma_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_ata_bmdma_status:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_ata_bmdma_status\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_ata_bmdma_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_ata_bmdma_status:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_ata_bmdma_status\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_ata_bmdma_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.106 }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.108, %struct.trace_event, ptr, ptr, %union.anon.109, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.108 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.109 = type { ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.ata_xfer_ent = type { i32, i32, i8 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.ata_blacklist_entry = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ata_force_param = type { ptr, i8, i8, i32, i32, i32, i16 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [24 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [16 x i8], [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [60 x i8], [2 x %struct.ata_device], i32, [60 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [18 x i8], %union.anon.79, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.79 = type { [128 x i32] }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pm_message = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.trace_event_raw_ata_qc_issue_template = type { %struct.trace_entry, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_ata_qc_complete_template = type { %struct.trace_entry, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [0 x i8] }
%struct.trace_event_raw_ata_tf_load = type { %struct.trace_entry, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.trace_event_raw_ata_exec_command_template = type { %struct.trace_entry, i32, i32, i8, i8, i8, i8, [0 x i8] }
%struct.trace_event_raw_ata_bmdma_status = type { %struct.trace_entry, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_ata_eh_link_autopsy = type { %struct.trace_entry, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_ata_eh_link_autopsy_qc = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_ata_eh_action_template = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_ata_link_reset_begin_template = type { %struct.trace_entry, i32, [2 x i32], i32, [0 x i8] }
%struct.trace_event_raw_ata_link_reset_end_template = type { %struct.trace_entry, i32, [2 x i32], i32, [0 x i8] }
%struct.trace_event_raw_ata_port_eh_begin_template = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_ata_sff_hsm_template = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_ata_transfer_data_template = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_ata_sff_template = type { %struct.trace_entry, i32, i8, [0 x i8] }
%struct.ata_force_ent = type { i32, i32, %struct.ata_force_param }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ata_cpr_log = type { i8, [0 x %struct.ata_cpr] }
%struct.ata_cpr = type { i8, i8, i64, i64 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bits = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_ata_qc_prep = internal constant [12 x i8] c"ata_qc_prep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_qc_prep = dso_local global %struct.static_call_key { ptr @__traceiter_ata_qc_prep }, align 4
@__tracepoint_ata_qc_prep = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_qc_prep, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_qc_prep, ptr null, ptr @__traceiter_ata_qc_prep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_qc_prep = internal constant ptr @__tracepoint_ata_qc_prep, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_qc_issue = internal constant [13 x i8] c"ata_qc_issue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_qc_issue = dso_local global %struct.static_call_key { ptr @__traceiter_ata_qc_issue }, align 4
@__tracepoint_ata_qc_issue = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_qc_issue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_qc_issue, ptr null, ptr @__traceiter_ata_qc_issue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_qc_issue = internal constant ptr @__tracepoint_ata_qc_issue, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_qc_complete_internal = internal constant [25 x i8] c"ata_qc_complete_internal\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_qc_complete_internal = dso_local global %struct.static_call_key { ptr @__traceiter_ata_qc_complete_internal }, align 4
@__tracepoint_ata_qc_complete_internal = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_qc_complete_internal, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_qc_complete_internal, ptr null, ptr @__traceiter_ata_qc_complete_internal, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_qc_complete_internal = internal constant ptr @__tracepoint_ata_qc_complete_internal, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_qc_complete_failed = internal constant [23 x i8] c"ata_qc_complete_failed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_qc_complete_failed = dso_local global %struct.static_call_key { ptr @__traceiter_ata_qc_complete_failed }, align 4
@__tracepoint_ata_qc_complete_failed = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_qc_complete_failed, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_qc_complete_failed, ptr null, ptr @__traceiter_ata_qc_complete_failed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_qc_complete_failed = internal constant ptr @__tracepoint_ata_qc_complete_failed, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_qc_complete_done = internal constant [21 x i8] c"ata_qc_complete_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_qc_complete_done = dso_local global %struct.static_call_key { ptr @__traceiter_ata_qc_complete_done }, align 4
@__tracepoint_ata_qc_complete_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_qc_complete_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_qc_complete_done, ptr null, ptr @__traceiter_ata_qc_complete_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_qc_complete_done = internal constant ptr @__tracepoint_ata_qc_complete_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_tf_load = internal constant [12 x i8] c"ata_tf_load\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_tf_load = dso_local global %struct.static_call_key { ptr @__traceiter_ata_tf_load }, align 4
@__tracepoint_ata_tf_load = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_tf_load, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_tf_load, ptr null, ptr @__traceiter_ata_tf_load, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_tf_load = internal constant ptr @__tracepoint_ata_tf_load, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_exec_command = internal constant [17 x i8] c"ata_exec_command\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_exec_command = dso_local global %struct.static_call_key { ptr @__traceiter_ata_exec_command }, align 4
@__tracepoint_ata_exec_command = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_exec_command, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_exec_command, ptr null, ptr @__traceiter_ata_exec_command, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_exec_command = internal constant ptr @__tracepoint_ata_exec_command, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_bmdma_setup = internal constant [16 x i8] c"ata_bmdma_setup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_bmdma_setup = dso_local global %struct.static_call_key { ptr @__traceiter_ata_bmdma_setup }, align 4
@__tracepoint_ata_bmdma_setup = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_bmdma_setup, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_bmdma_setup, ptr null, ptr @__traceiter_ata_bmdma_setup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_bmdma_setup = internal constant ptr @__tracepoint_ata_bmdma_setup, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_bmdma_start = internal constant [16 x i8] c"ata_bmdma_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_bmdma_start = dso_local global %struct.static_call_key { ptr @__traceiter_ata_bmdma_start }, align 4
@__tracepoint_ata_bmdma_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_bmdma_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_bmdma_start, ptr null, ptr @__traceiter_ata_bmdma_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_bmdma_start = internal constant ptr @__tracepoint_ata_bmdma_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_bmdma_stop = internal constant [15 x i8] c"ata_bmdma_stop\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_bmdma_stop = dso_local global %struct.static_call_key { ptr @__traceiter_ata_bmdma_stop }, align 4
@__tracepoint_ata_bmdma_stop = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_bmdma_stop, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_bmdma_stop, ptr null, ptr @__traceiter_ata_bmdma_stop, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_bmdma_stop = internal constant ptr @__tracepoint_ata_bmdma_stop, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_bmdma_status = internal constant [17 x i8] c"ata_bmdma_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_bmdma_status = dso_local global %struct.static_call_key { ptr @__traceiter_ata_bmdma_status }, align 4
@__tracepoint_ata_bmdma_status = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_bmdma_status, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_bmdma_status, ptr null, ptr @__traceiter_ata_bmdma_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_bmdma_status = internal constant ptr @__tracepoint_ata_bmdma_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_eh_link_autopsy = internal constant [20 x i8] c"ata_eh_link_autopsy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_eh_link_autopsy = dso_local global %struct.static_call_key { ptr @__traceiter_ata_eh_link_autopsy }, align 4
@__tracepoint_ata_eh_link_autopsy = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_eh_link_autopsy, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_eh_link_autopsy, ptr null, ptr @__traceiter_ata_eh_link_autopsy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_eh_link_autopsy = internal constant ptr @__tracepoint_ata_eh_link_autopsy, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_eh_link_autopsy_qc = internal constant [23 x i8] c"ata_eh_link_autopsy_qc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_eh_link_autopsy_qc = dso_local global %struct.static_call_key { ptr @__traceiter_ata_eh_link_autopsy_qc }, align 4
@__tracepoint_ata_eh_link_autopsy_qc = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_eh_link_autopsy_qc, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_eh_link_autopsy_qc, ptr null, ptr @__traceiter_ata_eh_link_autopsy_qc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_eh_link_autopsy_qc = internal constant ptr @__tracepoint_ata_eh_link_autopsy_qc, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_eh_about_to_do = internal constant [19 x i8] c"ata_eh_about_to_do\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_eh_about_to_do = dso_local global %struct.static_call_key { ptr @__traceiter_ata_eh_about_to_do }, align 4
@__tracepoint_ata_eh_about_to_do = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_eh_about_to_do, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_eh_about_to_do, ptr null, ptr @__traceiter_ata_eh_about_to_do, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_eh_about_to_do = internal constant ptr @__tracepoint_ata_eh_about_to_do, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_eh_done = internal constant [12 x i8] c"ata_eh_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_eh_done = dso_local global %struct.static_call_key { ptr @__traceiter_ata_eh_done }, align 4
@__tracepoint_ata_eh_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_eh_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_eh_done, ptr null, ptr @__traceiter_ata_eh_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_eh_done = internal constant ptr @__tracepoint_ata_eh_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_link_hardreset_begin = internal constant [25 x i8] c"ata_link_hardreset_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_link_hardreset_begin = dso_local global %struct.static_call_key { ptr @__traceiter_ata_link_hardreset_begin }, align 4
@__tracepoint_ata_link_hardreset_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_link_hardreset_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_link_hardreset_begin, ptr null, ptr @__traceiter_ata_link_hardreset_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_link_hardreset_begin = internal constant ptr @__tracepoint_ata_link_hardreset_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_slave_hardreset_begin = internal constant [26 x i8] c"ata_slave_hardreset_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_slave_hardreset_begin = dso_local global %struct.static_call_key { ptr @__traceiter_ata_slave_hardreset_begin }, align 4
@__tracepoint_ata_slave_hardreset_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_slave_hardreset_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_slave_hardreset_begin, ptr null, ptr @__traceiter_ata_slave_hardreset_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_slave_hardreset_begin = internal constant ptr @__tracepoint_ata_slave_hardreset_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_link_softreset_begin = internal constant [25 x i8] c"ata_link_softreset_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_link_softreset_begin = dso_local global %struct.static_call_key { ptr @__traceiter_ata_link_softreset_begin }, align 4
@__tracepoint_ata_link_softreset_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_link_softreset_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_link_softreset_begin, ptr null, ptr @__traceiter_ata_link_softreset_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_link_softreset_begin = internal constant ptr @__tracepoint_ata_link_softreset_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_link_hardreset_end = internal constant [23 x i8] c"ata_link_hardreset_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_link_hardreset_end = dso_local global %struct.static_call_key { ptr @__traceiter_ata_link_hardreset_end }, align 4
@__tracepoint_ata_link_hardreset_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_link_hardreset_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_link_hardreset_end, ptr null, ptr @__traceiter_ata_link_hardreset_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_link_hardreset_end = internal constant ptr @__tracepoint_ata_link_hardreset_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_slave_hardreset_end = internal constant [24 x i8] c"ata_slave_hardreset_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_slave_hardreset_end = dso_local global %struct.static_call_key { ptr @__traceiter_ata_slave_hardreset_end }, align 4
@__tracepoint_ata_slave_hardreset_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_slave_hardreset_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_slave_hardreset_end, ptr null, ptr @__traceiter_ata_slave_hardreset_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_slave_hardreset_end = internal constant ptr @__tracepoint_ata_slave_hardreset_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_link_softreset_end = internal constant [23 x i8] c"ata_link_softreset_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_link_softreset_end = dso_local global %struct.static_call_key { ptr @__traceiter_ata_link_softreset_end }, align 4
@__tracepoint_ata_link_softreset_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_link_softreset_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_link_softreset_end, ptr null, ptr @__traceiter_ata_link_softreset_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_link_softreset_end = internal constant ptr @__tracepoint_ata_link_softreset_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_link_postreset = internal constant [19 x i8] c"ata_link_postreset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_link_postreset = dso_local global %struct.static_call_key { ptr @__traceiter_ata_link_postreset }, align 4
@__tracepoint_ata_link_postreset = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_link_postreset, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_link_postreset, ptr null, ptr @__traceiter_ata_link_postreset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_link_postreset = internal constant ptr @__tracepoint_ata_link_postreset, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_slave_postreset = internal constant [20 x i8] c"ata_slave_postreset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_slave_postreset = dso_local global %struct.static_call_key { ptr @__traceiter_ata_slave_postreset }, align 4
@__tracepoint_ata_slave_postreset = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_slave_postreset, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_slave_postreset, ptr null, ptr @__traceiter_ata_slave_postreset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_slave_postreset = internal constant ptr @__tracepoint_ata_slave_postreset, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_std_sched_eh = internal constant [17 x i8] c"ata_std_sched_eh\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_std_sched_eh = dso_local global %struct.static_call_key { ptr @__traceiter_ata_std_sched_eh }, align 4
@__tracepoint_ata_std_sched_eh = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_std_sched_eh, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_std_sched_eh, ptr null, ptr @__traceiter_ata_std_sched_eh, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_std_sched_eh = internal constant ptr @__tracepoint_ata_std_sched_eh, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_port_freeze = internal constant [16 x i8] c"ata_port_freeze\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_port_freeze = dso_local global %struct.static_call_key { ptr @__traceiter_ata_port_freeze }, align 4
@__tracepoint_ata_port_freeze = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_port_freeze, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_port_freeze, ptr null, ptr @__traceiter_ata_port_freeze, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_port_freeze = internal constant ptr @__tracepoint_ata_port_freeze, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_port_thaw = internal constant [14 x i8] c"ata_port_thaw\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_port_thaw = dso_local global %struct.static_call_key { ptr @__traceiter_ata_port_thaw }, align 4
@__tracepoint_ata_port_thaw = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_port_thaw, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_port_thaw, ptr null, ptr @__traceiter_ata_port_thaw, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_port_thaw = internal constant ptr @__tracepoint_ata_port_thaw, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_sff_hsm_state = internal constant [18 x i8] c"ata_sff_hsm_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_sff_hsm_state = dso_local global %struct.static_call_key { ptr @__traceiter_ata_sff_hsm_state }, align 4
@__tracepoint_ata_sff_hsm_state = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_sff_hsm_state, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_sff_hsm_state, ptr null, ptr @__traceiter_ata_sff_hsm_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_sff_hsm_state = internal constant ptr @__tracepoint_ata_sff_hsm_state, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_sff_hsm_command_complete = internal constant [29 x i8] c"ata_sff_hsm_command_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_sff_hsm_command_complete = dso_local global %struct.static_call_key { ptr @__traceiter_ata_sff_hsm_command_complete }, align 4
@__tracepoint_ata_sff_hsm_command_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_sff_hsm_command_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_sff_hsm_command_complete, ptr null, ptr @__traceiter_ata_sff_hsm_command_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_sff_hsm_command_complete = internal constant ptr @__tracepoint_ata_sff_hsm_command_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_sff_port_intr = internal constant [18 x i8] c"ata_sff_port_intr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_sff_port_intr = dso_local global %struct.static_call_key { ptr @__traceiter_ata_sff_port_intr }, align 4
@__tracepoint_ata_sff_port_intr = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_sff_port_intr, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_sff_port_intr, ptr null, ptr @__traceiter_ata_sff_port_intr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_sff_port_intr = internal constant ptr @__tracepoint_ata_sff_port_intr, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_sff_pio_transfer_data = internal constant [26 x i8] c"ata_sff_pio_transfer_data\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_sff_pio_transfer_data = dso_local global %struct.static_call_key { ptr @__traceiter_ata_sff_pio_transfer_data }, align 4
@__tracepoint_ata_sff_pio_transfer_data = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_sff_pio_transfer_data, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_sff_pio_transfer_data, ptr null, ptr @__traceiter_ata_sff_pio_transfer_data, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_sff_pio_transfer_data = internal constant ptr @__tracepoint_ata_sff_pio_transfer_data, section "__tracepoints_ptrs", align 4
@__tpstrtab_atapi_pio_transfer_data = internal constant [24 x i8] c"atapi_pio_transfer_data\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_atapi_pio_transfer_data = dso_local global %struct.static_call_key { ptr @__traceiter_atapi_pio_transfer_data }, align 4
@__tracepoint_atapi_pio_transfer_data = dso_local global %struct.tracepoint { ptr @__tpstrtab_atapi_pio_transfer_data, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_atapi_pio_transfer_data, ptr null, ptr @__traceiter_atapi_pio_transfer_data, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_atapi_pio_transfer_data = internal constant ptr @__tracepoint_atapi_pio_transfer_data, section "__tracepoints_ptrs", align 4
@__tpstrtab_atapi_send_cdb = internal constant [15 x i8] c"atapi_send_cdb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_atapi_send_cdb = dso_local global %struct.static_call_key { ptr @__traceiter_atapi_send_cdb }, align 4
@__tracepoint_atapi_send_cdb = dso_local global %struct.tracepoint { ptr @__tpstrtab_atapi_send_cdb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_atapi_send_cdb, ptr null, ptr @__traceiter_atapi_send_cdb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_atapi_send_cdb = internal constant ptr @__tracepoint_atapi_send_cdb, section "__tracepoints_ptrs", align 4
@__tpstrtab_ata_sff_flush_pio_task = internal constant [23 x i8] c"ata_sff_flush_pio_task\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_ata_sff_flush_pio_task = dso_local global %struct.static_call_key { ptr @__traceiter_ata_sff_flush_pio_task }, align 4
@__tracepoint_ata_sff_flush_pio_task = dso_local global %struct.tracepoint { ptr @__tpstrtab_ata_sff_flush_pio_task, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_ata_sff_flush_pio_task, ptr null, ptr @__traceiter_ata_sff_flush_pio_task, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_ata_sff_flush_pio_task = internal constant ptr @__tracepoint_ata_sff_flush_pio_task, section "__tracepoints_ptrs", align 4
@trace_event_fields_ata_qc_issue_template = internal global [19 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.102, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.103, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.104, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.105, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.106, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.107, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.108, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.109, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.110, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.111, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.112, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.113, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.114, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.115, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.116, %union.anon.106 { %struct.anon.107 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_qc_issue_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_qc_issue_template, ptr @perf_trace_ata_qc_issue_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_qc_issue_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_qc_issue_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_qc_issue_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_qc_issue_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_qc_issue_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_qc_issue_template = internal global [5341 x i8] c"\22ata_port=%u ata_dev=%u tag=%d proto=%s cmd=%s%s  tf=(%02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x)\22, REC->ata_port, REC->ata_dev, REC->tag, __print_symbolic(REC->proto, { ATA_PROT_UNKNOWN, \22ATA_PROT_UNKNOWN\22 }, { ATA_PROT_NODATA, \22ATA_PROT_NODATA\22 }, { ATA_PROT_PIO, \22ATA_PROT_PIO\22 }, { ATA_PROT_DMA, \22ATA_PROT_DMA\22 }, { ATA_PROT_NCQ, \22ATA_PROT_NCQ\22 }, { ATA_PROT_NCQ_NODATA, \22ATA_PROT_NCQ_NODATA\22 }, { ATAPI_PROT_NODATA, \22ATAPI_PROT_NODATA\22 }, { ATAPI_PROT_PIO, \22ATAPI_PROT_PIO\22 }, { ATAPI_PROT_DMA, \22ATAPI_PROT_DMA\22 }), __print_symbolic(REC->cmd, { ATA_CMD_DEV_RESET, \22ATA_CMD_DEV_RESET\22 }, { ATA_CMD_CHK_POWER, \22ATA_CMD_CHK_POWER\22 }, { ATA_CMD_STANDBY, \22ATA_CMD_STANDBY\22 }, { ATA_CMD_IDLE, \22ATA_CMD_IDLE\22 }, { ATA_CMD_EDD, \22ATA_CMD_EDD\22 }, { ATA_CMD_DOWNLOAD_MICRO, \22ATA_CMD_DOWNLOAD_MICRO\22 }, { ATA_CMD_DOWNLOAD_MICRO_DMA, \22ATA_CMD_DOWNLOAD_MICRO_DMA\22 }, { ATA_CMD_NOP, \22ATA_CMD_NOP\22 }, { ATA_CMD_FLUSH, \22ATA_CMD_FLUSH\22 }, { ATA_CMD_FLUSH_EXT, \22ATA_CMD_FLUSH_EXT\22 }, { ATA_CMD_ID_ATA, \22ATA_CMD_ID_ATA\22 }, { ATA_CMD_ID_ATAPI, \22ATA_CMD_ID_ATAPI\22 }, { ATA_CMD_SERVICE, \22ATA_CMD_SERVICE\22 }, { ATA_CMD_READ, \22ATA_CMD_READ\22 }, { ATA_CMD_READ_EXT, \22ATA_CMD_READ_EXT\22 }, { ATA_CMD_READ_QUEUED, \22ATA_CMD_READ_QUEUED\22 }, { ATA_CMD_READ_STREAM_EXT, \22ATA_CMD_READ_STREAM_EXT\22 }, { ATA_CMD_READ_STREAM_DMA_EXT, \22ATA_CMD_READ_STREAM_DMA_EXT\22 }, { ATA_CMD_WRITE, \22ATA_CMD_WRITE\22 }, { ATA_CMD_WRITE_EXT, \22ATA_CMD_WRITE_EXT\22 }, { ATA_CMD_WRITE_QUEUED, \22ATA_CMD_WRITE_QUEUED\22 }, { ATA_CMD_WRITE_STREAM_EXT, \22ATA_CMD_WRITE_STREAM_EXT\22 }, { ATA_CMD_WRITE_STREAM_DMA_EXT, \22ATA_CMD_WRITE_STREAM_DMA_EXT\22 }, { ATA_CMD_WRITE_FUA_EXT, \22ATA_CMD_WRITE_FUA_EXT\22 }, { ATA_CMD_WRITE_QUEUED_FUA_EXT, \22ATA_CMD_WRITE_QUEUED_FUA_EXT\22 }, { ATA_CMD_FPDMA_READ, \22ATA_CMD_FPDMA_READ\22 }, { ATA_CMD_FPDMA_WRITE, \22ATA_CMD_FPDMA_WRITE\22 }, { ATA_CMD_NCQ_NON_DATA, \22ATA_CMD_NCQ_NON_DATA\22 }, { ATA_CMD_FPDMA_SEND, \22ATA_CMD_FPDMA_SEND\22 }, { ATA_CMD_FPDMA_RECV, \22ATA_CMD_FPDMA_RECV\22 }, { ATA_CMD_PIO_READ, \22ATA_CMD_PIO_READ\22 }, { ATA_CMD_PIO_READ_EXT, \22ATA_CMD_PIO_READ_EXT\22 }, { ATA_CMD_PIO_WRITE, \22ATA_CMD_PIO_WRITE\22 }, { ATA_CMD_PIO_WRITE_EXT, \22ATA_CMD_PIO_WRITE_EXT\22 }, { ATA_CMD_READ_MULTI, \22ATA_CMD_READ_MULTI\22 }, { ATA_CMD_READ_MULTI_EXT, \22ATA_CMD_READ_MULTI_EXT\22 }, { ATA_CMD_WRITE_MULTI, \22ATA_CMD_WRITE_MULTI\22 }, { ATA_CMD_WRITE_MULTI_EXT, \22ATA_CMD_WRITE_MULTI_EXT\22 }, { ATA_CMD_WRITE_MULTI_FUA_EXT, \22ATA_CMD_WRITE_MULTI_FUA_EXT\22 }, { ATA_CMD_SET_FEATURES, \22ATA_CMD_SET_FEATURES\22 }, { ATA_CMD_SET_MULTI, \22ATA_CMD_SET_MULTI\22 }, { ATA_CMD_PACKET, \22ATA_CMD_PACKET\22 }, { ATA_CMD_VERIFY, \22ATA_CMD_VERIFY\22 }, { ATA_CMD_VERIFY_EXT, \22ATA_CMD_VERIFY_EXT\22 }, { ATA_CMD_WRITE_UNCORR_EXT, \22ATA_CMD_WRITE_UNCORR_EXT\22 }, { ATA_CMD_STANDBYNOW1, \22ATA_CMD_STANDBYNOW1\22 }, { ATA_CMD_IDLEIMMEDIATE, \22ATA_CMD_IDLEIMMEDIATE\22 }, { ATA_CMD_SLEEP, \22ATA_CMD_SLEEP\22 }, { ATA_CMD_INIT_DEV_PARAMS, \22ATA_CMD_INIT_DEV_PARAMS\22 }, { ATA_CMD_READ_NATIVE_MAX, \22ATA_CMD_READ_NATIVE_MAX\22 }, { ATA_CMD_READ_NATIVE_MAX_EXT, \22ATA_CMD_READ_NATIVE_MAX_EXT\22 }, { ATA_CMD_SET_MAX, \22ATA_CMD_SET_MAX\22 }, { ATA_CMD_SET_MAX_EXT, \22ATA_CMD_SET_MAX_EXT\22 }, { ATA_CMD_READ_LOG_EXT, \22ATA_CMD_READ_LOG_EXT\22 }, { ATA_CMD_WRITE_LOG_EXT, \22ATA_CMD_WRITE_LOG_EXT\22 }, { ATA_CMD_READ_LOG_DMA_EXT, \22ATA_CMD_READ_LOG_DMA_EXT\22 }, { ATA_CMD_WRITE_LOG_DMA_EXT, \22ATA_CMD_WRITE_LOG_DMA_EXT\22 }, { ATA_CMD_TRUSTED_NONDATA, \22ATA_CMD_TRUSTED_NONDATA\22 }, { ATA_CMD_TRUSTED_RCV, \22ATA_CMD_TRUSTED_RCV\22 }, { ATA_CMD_TRUSTED_RCV_DMA, \22ATA_CMD_TRUSTED_RCV_DMA\22 }, { ATA_CMD_TRUSTED_SND, \22ATA_CMD_TRUSTED_SND\22 }, { ATA_CMD_TRUSTED_SND_DMA, \22ATA_CMD_TRUSTED_SND_DMA\22 }, { ATA_CMD_PMP_READ, \22ATA_CMD_PMP_READ\22 }, { ATA_CMD_PMP_READ_DMA, \22ATA_CMD_PMP_READ_DMA\22 }, { ATA_CMD_PMP_WRITE, \22ATA_CMD_PMP_WRITE\22 }, { ATA_CMD_PMP_WRITE_DMA, \22ATA_CMD_PMP_WRITE_DMA\22 }, { ATA_CMD_CONF_OVERLAY, \22ATA_CMD_CONF_OVERLAY\22 }, { ATA_CMD_SEC_SET_PASS, \22ATA_CMD_SEC_SET_PASS\22 }, { ATA_CMD_SEC_UNLOCK, \22ATA_CMD_SEC_UNLOCK\22 }, { ATA_CMD_SEC_ERASE_PREP, \22ATA_CMD_SEC_ERASE_PREP\22 }, { ATA_CMD_SEC_ERASE_UNIT, \22ATA_CMD_SEC_ERASE_UNIT\22 }, { ATA_CMD_SEC_FREEZE_LOCK, \22ATA_CMD_SEC_FREEZE_LOCK\22 }, { ATA_CMD_SEC_DISABLE_PASS, \22ATA_CMD_SEC_DISABLE_PASS\22 }, { ATA_CMD_CONFIG_STREAM, \22ATA_CMD_CONFIG_STREAM\22 }, { ATA_CMD_SMART, \22ATA_CMD_SMART\22 }, { ATA_CMD_MEDIA_LOCK, \22ATA_CMD_MEDIA_LOCK\22 }, { ATA_CMD_MEDIA_UNLOCK, \22ATA_CMD_MEDIA_UNLOCK\22 }, { ATA_CMD_DSM, \22ATA_CMD_DSM\22 }, { ATA_CMD_CHK_MED_CRD_TYP, \22ATA_CMD_CHK_MED_CRD_TYP\22 }, { ATA_CMD_CFA_REQ_EXT_ERR, \22ATA_CMD_CFA_REQ_EXT_ERR\22 }, { ATA_CMD_CFA_WRITE_NE, \22ATA_CMD_CFA_WRITE_NE\22 }, { ATA_CMD_CFA_TRANS_SECT, \22ATA_CMD_CFA_TRANS_SECT\22 }, { ATA_CMD_CFA_ERASE, \22ATA_CMD_CFA_ERASE\22 }, { ATA_CMD_CFA_WRITE_MULT_NE, \22ATA_CMD_CFA_WRITE_MULT_NE\22 }, { ATA_CMD_REQ_SENSE_DATA, \22ATA_CMD_REQ_SENSE_DATA\22 }, { ATA_CMD_SANITIZE_DEVICE, \22ATA_CMD_SANITIZE_DEVICE\22 }, { ATA_CMD_ZAC_MGMT_IN, \22ATA_CMD_ZAC_MGMT_IN\22 }, { ATA_CMD_ZAC_MGMT_OUT, \22ATA_CMD_ZAC_MGMT_OUT\22 }, { ATA_CMD_RESTORE, \22ATA_CMD_RESTORE\22 }, { ATA_CMD_READ_LONG, \22ATA_CMD_READ_LONG\22 }, { ATA_CMD_READ_LONG_ONCE, \22ATA_CMD_READ_LONG_ONCE\22 }, { ATA_CMD_WRITE_LONG, \22ATA_CMD_WRITE_LONG\22 }, { ATA_CMD_WRITE_LONG_ONCE, \22ATA_CMD_WRITE_LONG_ONCE\22 }), libata_trace_parse_subcmd(p, REC->cmd, REC->feature, REC->hob_nsect), REC->cmd, REC->feature, REC->nsect, REC->lbal, REC->lbam, REC->lbah, REC->hob_feature, REC->hob_nsect, REC->hob_lbal, REC->hob_lbam, REC->hob_lbah, REC->dev\00", align 1
@event_ata_qc_prep = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_qc_issue_template, %union.anon.108 { ptr @__tracepoint_ata_qc_prep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_qc_issue_template }, ptr @print_fmt_ata_qc_issue_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_qc_prep = internal global ptr @event_ata_qc_prep, section "_ftrace_events", align 4
@event_ata_qc_issue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_qc_issue_template, %union.anon.108 { ptr @__tracepoint_ata_qc_issue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_qc_issue_template }, ptr @print_fmt_ata_qc_issue_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_qc_issue = internal global ptr @event_ata_qc_issue, section "_ftrace_events", align 4
@trace_event_fields_ata_qc_complete_template = internal global [18 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.222, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.103, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.104, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.105, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.106, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.107, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.223, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.109, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.110, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.111, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.112, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.113, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.114, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.116, %union.anon.106 { %struct.anon.107 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_qc_complete_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_qc_complete_template, ptr @perf_trace_ata_qc_complete_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_qc_complete_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_qc_complete_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_qc_complete_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_qc_complete_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_qc_complete_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_qc_complete_template = internal global [403 x i8] c"\22ata_port=%u ata_dev=%u tag=%d flags=%s status=%s  res=(%02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x)\22, REC->ata_port, REC->ata_dev, REC->tag, libata_trace_parse_qc_flags(p, REC->flags), libata_trace_parse_status(p, REC->status), REC->status, REC->error, REC->nsect, REC->lbal, REC->lbam, REC->lbah, REC->hob_feature, REC->hob_nsect, REC->hob_lbal, REC->hob_lbam, REC->hob_lbah, REC->dev\00", align 1
@event_ata_qc_complete_internal = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_qc_complete_template, %union.anon.108 { ptr @__tracepoint_ata_qc_complete_internal }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_qc_complete_template }, ptr @print_fmt_ata_qc_complete_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_qc_complete_internal = internal global ptr @event_ata_qc_complete_internal, section "_ftrace_events", align 4
@event_ata_qc_complete_failed = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_qc_complete_template, %union.anon.108 { ptr @__tracepoint_ata_qc_complete_failed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_qc_complete_template }, ptr @print_fmt_ata_qc_complete_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_qc_complete_failed = internal global ptr @event_ata_qc_complete_failed, section "_ftrace_events", align 4
@event_ata_qc_complete_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_qc_complete_template, %union.anon.108 { ptr @__tracepoint_ata_qc_complete_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_qc_complete_template }, ptr @print_fmt_ata_qc_complete_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_qc_complete_done = internal global ptr @event_ata_qc_complete_done, section "_ftrace_events", align 4
@trace_event_fields_ata_tf_load = internal global [15 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.102, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.103, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.104, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.105, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.106, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.107, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.108, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.109, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.110, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.111, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.112, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.113, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.115, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_tf_load = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_tf_load, ptr @perf_trace_ata_tf_load, ptr @trace_event_reg, ptr @trace_event_fields_ata_tf_load, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_tf_load, i64 24), ptr getelementptr (i8, ptr @event_class_ata_tf_load, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_tf_load = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_tf_load, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_tf_load = internal global [5299 x i8] c"\22ata_port=%u proto=%s cmd=%s%s  tf=(%02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x)\22, REC->ata_port, __print_symbolic(REC->proto, { ATA_PROT_UNKNOWN, \22ATA_PROT_UNKNOWN\22 }, { ATA_PROT_NODATA, \22ATA_PROT_NODATA\22 }, { ATA_PROT_PIO, \22ATA_PROT_PIO\22 }, { ATA_PROT_DMA, \22ATA_PROT_DMA\22 }, { ATA_PROT_NCQ, \22ATA_PROT_NCQ\22 }, { ATA_PROT_NCQ_NODATA, \22ATA_PROT_NCQ_NODATA\22 }, { ATAPI_PROT_NODATA, \22ATAPI_PROT_NODATA\22 }, { ATAPI_PROT_PIO, \22ATAPI_PROT_PIO\22 }, { ATAPI_PROT_DMA, \22ATAPI_PROT_DMA\22 }), __print_symbolic(REC->cmd, { ATA_CMD_DEV_RESET, \22ATA_CMD_DEV_RESET\22 }, { ATA_CMD_CHK_POWER, \22ATA_CMD_CHK_POWER\22 }, { ATA_CMD_STANDBY, \22ATA_CMD_STANDBY\22 }, { ATA_CMD_IDLE, \22ATA_CMD_IDLE\22 }, { ATA_CMD_EDD, \22ATA_CMD_EDD\22 }, { ATA_CMD_DOWNLOAD_MICRO, \22ATA_CMD_DOWNLOAD_MICRO\22 }, { ATA_CMD_DOWNLOAD_MICRO_DMA, \22ATA_CMD_DOWNLOAD_MICRO_DMA\22 }, { ATA_CMD_NOP, \22ATA_CMD_NOP\22 }, { ATA_CMD_FLUSH, \22ATA_CMD_FLUSH\22 }, { ATA_CMD_FLUSH_EXT, \22ATA_CMD_FLUSH_EXT\22 }, { ATA_CMD_ID_ATA, \22ATA_CMD_ID_ATA\22 }, { ATA_CMD_ID_ATAPI, \22ATA_CMD_ID_ATAPI\22 }, { ATA_CMD_SERVICE, \22ATA_CMD_SERVICE\22 }, { ATA_CMD_READ, \22ATA_CMD_READ\22 }, { ATA_CMD_READ_EXT, \22ATA_CMD_READ_EXT\22 }, { ATA_CMD_READ_QUEUED, \22ATA_CMD_READ_QUEUED\22 }, { ATA_CMD_READ_STREAM_EXT, \22ATA_CMD_READ_STREAM_EXT\22 }, { ATA_CMD_READ_STREAM_DMA_EXT, \22ATA_CMD_READ_STREAM_DMA_EXT\22 }, { ATA_CMD_WRITE, \22ATA_CMD_WRITE\22 }, { ATA_CMD_WRITE_EXT, \22ATA_CMD_WRITE_EXT\22 }, { ATA_CMD_WRITE_QUEUED, \22ATA_CMD_WRITE_QUEUED\22 }, { ATA_CMD_WRITE_STREAM_EXT, \22ATA_CMD_WRITE_STREAM_EXT\22 }, { ATA_CMD_WRITE_STREAM_DMA_EXT, \22ATA_CMD_WRITE_STREAM_DMA_EXT\22 }, { ATA_CMD_WRITE_FUA_EXT, \22ATA_CMD_WRITE_FUA_EXT\22 }, { ATA_CMD_WRITE_QUEUED_FUA_EXT, \22ATA_CMD_WRITE_QUEUED_FUA_EXT\22 }, { ATA_CMD_FPDMA_READ, \22ATA_CMD_FPDMA_READ\22 }, { ATA_CMD_FPDMA_WRITE, \22ATA_CMD_FPDMA_WRITE\22 }, { ATA_CMD_NCQ_NON_DATA, \22ATA_CMD_NCQ_NON_DATA\22 }, { ATA_CMD_FPDMA_SEND, \22ATA_CMD_FPDMA_SEND\22 }, { ATA_CMD_FPDMA_RECV, \22ATA_CMD_FPDMA_RECV\22 }, { ATA_CMD_PIO_READ, \22ATA_CMD_PIO_READ\22 }, { ATA_CMD_PIO_READ_EXT, \22ATA_CMD_PIO_READ_EXT\22 }, { ATA_CMD_PIO_WRITE, \22ATA_CMD_PIO_WRITE\22 }, { ATA_CMD_PIO_WRITE_EXT, \22ATA_CMD_PIO_WRITE_EXT\22 }, { ATA_CMD_READ_MULTI, \22ATA_CMD_READ_MULTI\22 }, { ATA_CMD_READ_MULTI_EXT, \22ATA_CMD_READ_MULTI_EXT\22 }, { ATA_CMD_WRITE_MULTI, \22ATA_CMD_WRITE_MULTI\22 }, { ATA_CMD_WRITE_MULTI_EXT, \22ATA_CMD_WRITE_MULTI_EXT\22 }, { ATA_CMD_WRITE_MULTI_FUA_EXT, \22ATA_CMD_WRITE_MULTI_FUA_EXT\22 }, { ATA_CMD_SET_FEATURES, \22ATA_CMD_SET_FEATURES\22 }, { ATA_CMD_SET_MULTI, \22ATA_CMD_SET_MULTI\22 }, { ATA_CMD_PACKET, \22ATA_CMD_PACKET\22 }, { ATA_CMD_VERIFY, \22ATA_CMD_VERIFY\22 }, { ATA_CMD_VERIFY_EXT, \22ATA_CMD_VERIFY_EXT\22 }, { ATA_CMD_WRITE_UNCORR_EXT, \22ATA_CMD_WRITE_UNCORR_EXT\22 }, { ATA_CMD_STANDBYNOW1, \22ATA_CMD_STANDBYNOW1\22 }, { ATA_CMD_IDLEIMMEDIATE, \22ATA_CMD_IDLEIMMEDIATE\22 }, { ATA_CMD_SLEEP, \22ATA_CMD_SLEEP\22 }, { ATA_CMD_INIT_DEV_PARAMS, \22ATA_CMD_INIT_DEV_PARAMS\22 }, { ATA_CMD_READ_NATIVE_MAX, \22ATA_CMD_READ_NATIVE_MAX\22 }, { ATA_CMD_READ_NATIVE_MAX_EXT, \22ATA_CMD_READ_NATIVE_MAX_EXT\22 }, { ATA_CMD_SET_MAX, \22ATA_CMD_SET_MAX\22 }, { ATA_CMD_SET_MAX_EXT, \22ATA_CMD_SET_MAX_EXT\22 }, { ATA_CMD_READ_LOG_EXT, \22ATA_CMD_READ_LOG_EXT\22 }, { ATA_CMD_WRITE_LOG_EXT, \22ATA_CMD_WRITE_LOG_EXT\22 }, { ATA_CMD_READ_LOG_DMA_EXT, \22ATA_CMD_READ_LOG_DMA_EXT\22 }, { ATA_CMD_WRITE_LOG_DMA_EXT, \22ATA_CMD_WRITE_LOG_DMA_EXT\22 }, { ATA_CMD_TRUSTED_NONDATA, \22ATA_CMD_TRUSTED_NONDATA\22 }, { ATA_CMD_TRUSTED_RCV, \22ATA_CMD_TRUSTED_RCV\22 }, { ATA_CMD_TRUSTED_RCV_DMA, \22ATA_CMD_TRUSTED_RCV_DMA\22 }, { ATA_CMD_TRUSTED_SND, \22ATA_CMD_TRUSTED_SND\22 }, { ATA_CMD_TRUSTED_SND_DMA, \22ATA_CMD_TRUSTED_SND_DMA\22 }, { ATA_CMD_PMP_READ, \22ATA_CMD_PMP_READ\22 }, { ATA_CMD_PMP_READ_DMA, \22ATA_CMD_PMP_READ_DMA\22 }, { ATA_CMD_PMP_WRITE, \22ATA_CMD_PMP_WRITE\22 }, { ATA_CMD_PMP_WRITE_DMA, \22ATA_CMD_PMP_WRITE_DMA\22 }, { ATA_CMD_CONF_OVERLAY, \22ATA_CMD_CONF_OVERLAY\22 }, { ATA_CMD_SEC_SET_PASS, \22ATA_CMD_SEC_SET_PASS\22 }, { ATA_CMD_SEC_UNLOCK, \22ATA_CMD_SEC_UNLOCK\22 }, { ATA_CMD_SEC_ERASE_PREP, \22ATA_CMD_SEC_ERASE_PREP\22 }, { ATA_CMD_SEC_ERASE_UNIT, \22ATA_CMD_SEC_ERASE_UNIT\22 }, { ATA_CMD_SEC_FREEZE_LOCK, \22ATA_CMD_SEC_FREEZE_LOCK\22 }, { ATA_CMD_SEC_DISABLE_PASS, \22ATA_CMD_SEC_DISABLE_PASS\22 }, { ATA_CMD_CONFIG_STREAM, \22ATA_CMD_CONFIG_STREAM\22 }, { ATA_CMD_SMART, \22ATA_CMD_SMART\22 }, { ATA_CMD_MEDIA_LOCK, \22ATA_CMD_MEDIA_LOCK\22 }, { ATA_CMD_MEDIA_UNLOCK, \22ATA_CMD_MEDIA_UNLOCK\22 }, { ATA_CMD_DSM, \22ATA_CMD_DSM\22 }, { ATA_CMD_CHK_MED_CRD_TYP, \22ATA_CMD_CHK_MED_CRD_TYP\22 }, { ATA_CMD_CFA_REQ_EXT_ERR, \22ATA_CMD_CFA_REQ_EXT_ERR\22 }, { ATA_CMD_CFA_WRITE_NE, \22ATA_CMD_CFA_WRITE_NE\22 }, { ATA_CMD_CFA_TRANS_SECT, \22ATA_CMD_CFA_TRANS_SECT\22 }, { ATA_CMD_CFA_ERASE, \22ATA_CMD_CFA_ERASE\22 }, { ATA_CMD_CFA_WRITE_MULT_NE, \22ATA_CMD_CFA_WRITE_MULT_NE\22 }, { ATA_CMD_REQ_SENSE_DATA, \22ATA_CMD_REQ_SENSE_DATA\22 }, { ATA_CMD_SANITIZE_DEVICE, \22ATA_CMD_SANITIZE_DEVICE\22 }, { ATA_CMD_ZAC_MGMT_IN, \22ATA_CMD_ZAC_MGMT_IN\22 }, { ATA_CMD_ZAC_MGMT_OUT, \22ATA_CMD_ZAC_MGMT_OUT\22 }, { ATA_CMD_RESTORE, \22ATA_CMD_RESTORE\22 }, { ATA_CMD_READ_LONG, \22ATA_CMD_READ_LONG\22 }, { ATA_CMD_READ_LONG_ONCE, \22ATA_CMD_READ_LONG_ONCE\22 }, { ATA_CMD_WRITE_LONG, \22ATA_CMD_WRITE_LONG\22 }, { ATA_CMD_WRITE_LONG_ONCE, \22ATA_CMD_WRITE_LONG_ONCE\22 }), libata_trace_parse_subcmd(p, REC->cmd, REC->feature, REC->hob_nsect), REC->cmd, REC->feature, REC->nsect, REC->lbal, REC->lbam, REC->lbah, REC->hob_feature, REC->hob_nsect, REC->hob_lbal, REC->hob_lbam, REC->hob_lbah, REC->dev\00", align 1
@event_ata_tf_load = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_tf_load, %union.anon.108 { ptr @__tracepoint_ata_tf_load }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_tf_load }, ptr @print_fmt_ata_tf_load, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_tf_load = internal global ptr @event_ata_tf_load, section "_ftrace_events", align 4
@trace_event_fields_ata_exec_command_template = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.102, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.108, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.112, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.115, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_exec_command_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_exec_command_template, ptr @perf_trace_ata_exec_command_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_exec_command_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_exec_command_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_exec_command_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_exec_command_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_exec_command_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_exec_command_template = internal global [5092 x i8] c"\22ata_port=%u tag=%d proto=%s cmd=%s%s\22, REC->ata_port, REC->tag, __print_symbolic(REC->proto, { ATA_PROT_UNKNOWN, \22ATA_PROT_UNKNOWN\22 }, { ATA_PROT_NODATA, \22ATA_PROT_NODATA\22 }, { ATA_PROT_PIO, \22ATA_PROT_PIO\22 }, { ATA_PROT_DMA, \22ATA_PROT_DMA\22 }, { ATA_PROT_NCQ, \22ATA_PROT_NCQ\22 }, { ATA_PROT_NCQ_NODATA, \22ATA_PROT_NCQ_NODATA\22 }, { ATAPI_PROT_NODATA, \22ATAPI_PROT_NODATA\22 }, { ATAPI_PROT_PIO, \22ATAPI_PROT_PIO\22 }, { ATAPI_PROT_DMA, \22ATAPI_PROT_DMA\22 }), __print_symbolic(REC->cmd, { ATA_CMD_DEV_RESET, \22ATA_CMD_DEV_RESET\22 }, { ATA_CMD_CHK_POWER, \22ATA_CMD_CHK_POWER\22 }, { ATA_CMD_STANDBY, \22ATA_CMD_STANDBY\22 }, { ATA_CMD_IDLE, \22ATA_CMD_IDLE\22 }, { ATA_CMD_EDD, \22ATA_CMD_EDD\22 }, { ATA_CMD_DOWNLOAD_MICRO, \22ATA_CMD_DOWNLOAD_MICRO\22 }, { ATA_CMD_DOWNLOAD_MICRO_DMA, \22ATA_CMD_DOWNLOAD_MICRO_DMA\22 }, { ATA_CMD_NOP, \22ATA_CMD_NOP\22 }, { ATA_CMD_FLUSH, \22ATA_CMD_FLUSH\22 }, { ATA_CMD_FLUSH_EXT, \22ATA_CMD_FLUSH_EXT\22 }, { ATA_CMD_ID_ATA, \22ATA_CMD_ID_ATA\22 }, { ATA_CMD_ID_ATAPI, \22ATA_CMD_ID_ATAPI\22 }, { ATA_CMD_SERVICE, \22ATA_CMD_SERVICE\22 }, { ATA_CMD_READ, \22ATA_CMD_READ\22 }, { ATA_CMD_READ_EXT, \22ATA_CMD_READ_EXT\22 }, { ATA_CMD_READ_QUEUED, \22ATA_CMD_READ_QUEUED\22 }, { ATA_CMD_READ_STREAM_EXT, \22ATA_CMD_READ_STREAM_EXT\22 }, { ATA_CMD_READ_STREAM_DMA_EXT, \22ATA_CMD_READ_STREAM_DMA_EXT\22 }, { ATA_CMD_WRITE, \22ATA_CMD_WRITE\22 }, { ATA_CMD_WRITE_EXT, \22ATA_CMD_WRITE_EXT\22 }, { ATA_CMD_WRITE_QUEUED, \22ATA_CMD_WRITE_QUEUED\22 }, { ATA_CMD_WRITE_STREAM_EXT, \22ATA_CMD_WRITE_STREAM_EXT\22 }, { ATA_CMD_WRITE_STREAM_DMA_EXT, \22ATA_CMD_WRITE_STREAM_DMA_EXT\22 }, { ATA_CMD_WRITE_FUA_EXT, \22ATA_CMD_WRITE_FUA_EXT\22 }, { ATA_CMD_WRITE_QUEUED_FUA_EXT, \22ATA_CMD_WRITE_QUEUED_FUA_EXT\22 }, { ATA_CMD_FPDMA_READ, \22ATA_CMD_FPDMA_READ\22 }, { ATA_CMD_FPDMA_WRITE, \22ATA_CMD_FPDMA_WRITE\22 }, { ATA_CMD_NCQ_NON_DATA, \22ATA_CMD_NCQ_NON_DATA\22 }, { ATA_CMD_FPDMA_SEND, \22ATA_CMD_FPDMA_SEND\22 }, { ATA_CMD_FPDMA_RECV, \22ATA_CMD_FPDMA_RECV\22 }, { ATA_CMD_PIO_READ, \22ATA_CMD_PIO_READ\22 }, { ATA_CMD_PIO_READ_EXT, \22ATA_CMD_PIO_READ_EXT\22 }, { ATA_CMD_PIO_WRITE, \22ATA_CMD_PIO_WRITE\22 }, { ATA_CMD_PIO_WRITE_EXT, \22ATA_CMD_PIO_WRITE_EXT\22 }, { ATA_CMD_READ_MULTI, \22ATA_CMD_READ_MULTI\22 }, { ATA_CMD_READ_MULTI_EXT, \22ATA_CMD_READ_MULTI_EXT\22 }, { ATA_CMD_WRITE_MULTI, \22ATA_CMD_WRITE_MULTI\22 }, { ATA_CMD_WRITE_MULTI_EXT, \22ATA_CMD_WRITE_MULTI_EXT\22 }, { ATA_CMD_WRITE_MULTI_FUA_EXT, \22ATA_CMD_WRITE_MULTI_FUA_EXT\22 }, { ATA_CMD_SET_FEATURES, \22ATA_CMD_SET_FEATURES\22 }, { ATA_CMD_SET_MULTI, \22ATA_CMD_SET_MULTI\22 }, { ATA_CMD_PACKET, \22ATA_CMD_PACKET\22 }, { ATA_CMD_VERIFY, \22ATA_CMD_VERIFY\22 }, { ATA_CMD_VERIFY_EXT, \22ATA_CMD_VERIFY_EXT\22 }, { ATA_CMD_WRITE_UNCORR_EXT, \22ATA_CMD_WRITE_UNCORR_EXT\22 }, { ATA_CMD_STANDBYNOW1, \22ATA_CMD_STANDBYNOW1\22 }, { ATA_CMD_IDLEIMMEDIATE, \22ATA_CMD_IDLEIMMEDIATE\22 }, { ATA_CMD_SLEEP, \22ATA_CMD_SLEEP\22 }, { ATA_CMD_INIT_DEV_PARAMS, \22ATA_CMD_INIT_DEV_PARAMS\22 }, { ATA_CMD_READ_NATIVE_MAX, \22ATA_CMD_READ_NATIVE_MAX\22 }, { ATA_CMD_READ_NATIVE_MAX_EXT, \22ATA_CMD_READ_NATIVE_MAX_EXT\22 }, { ATA_CMD_SET_MAX, \22ATA_CMD_SET_MAX\22 }, { ATA_CMD_SET_MAX_EXT, \22ATA_CMD_SET_MAX_EXT\22 }, { ATA_CMD_READ_LOG_EXT, \22ATA_CMD_READ_LOG_EXT\22 }, { ATA_CMD_WRITE_LOG_EXT, \22ATA_CMD_WRITE_LOG_EXT\22 }, { ATA_CMD_READ_LOG_DMA_EXT, \22ATA_CMD_READ_LOG_DMA_EXT\22 }, { ATA_CMD_WRITE_LOG_DMA_EXT, \22ATA_CMD_WRITE_LOG_DMA_EXT\22 }, { ATA_CMD_TRUSTED_NONDATA, \22ATA_CMD_TRUSTED_NONDATA\22 }, { ATA_CMD_TRUSTED_RCV, \22ATA_CMD_TRUSTED_RCV\22 }, { ATA_CMD_TRUSTED_RCV_DMA, \22ATA_CMD_TRUSTED_RCV_DMA\22 }, { ATA_CMD_TRUSTED_SND, \22ATA_CMD_TRUSTED_SND\22 }, { ATA_CMD_TRUSTED_SND_DMA, \22ATA_CMD_TRUSTED_SND_DMA\22 }, { ATA_CMD_PMP_READ, \22ATA_CMD_PMP_READ\22 }, { ATA_CMD_PMP_READ_DMA, \22ATA_CMD_PMP_READ_DMA\22 }, { ATA_CMD_PMP_WRITE, \22ATA_CMD_PMP_WRITE\22 }, { ATA_CMD_PMP_WRITE_DMA, \22ATA_CMD_PMP_WRITE_DMA\22 }, { ATA_CMD_CONF_OVERLAY, \22ATA_CMD_CONF_OVERLAY\22 }, { ATA_CMD_SEC_SET_PASS, \22ATA_CMD_SEC_SET_PASS\22 }, { ATA_CMD_SEC_UNLOCK, \22ATA_CMD_SEC_UNLOCK\22 }, { ATA_CMD_SEC_ERASE_PREP, \22ATA_CMD_SEC_ERASE_PREP\22 }, { ATA_CMD_SEC_ERASE_UNIT, \22ATA_CMD_SEC_ERASE_UNIT\22 }, { ATA_CMD_SEC_FREEZE_LOCK, \22ATA_CMD_SEC_FREEZE_LOCK\22 }, { ATA_CMD_SEC_DISABLE_PASS, \22ATA_CMD_SEC_DISABLE_PASS\22 }, { ATA_CMD_CONFIG_STREAM, \22ATA_CMD_CONFIG_STREAM\22 }, { ATA_CMD_SMART, \22ATA_CMD_SMART\22 }, { ATA_CMD_MEDIA_LOCK, \22ATA_CMD_MEDIA_LOCK\22 }, { ATA_CMD_MEDIA_UNLOCK, \22ATA_CMD_MEDIA_UNLOCK\22 }, { ATA_CMD_DSM, \22ATA_CMD_DSM\22 }, { ATA_CMD_CHK_MED_CRD_TYP, \22ATA_CMD_CHK_MED_CRD_TYP\22 }, { ATA_CMD_CFA_REQ_EXT_ERR, \22ATA_CMD_CFA_REQ_EXT_ERR\22 }, { ATA_CMD_CFA_WRITE_NE, \22ATA_CMD_CFA_WRITE_NE\22 }, { ATA_CMD_CFA_TRANS_SECT, \22ATA_CMD_CFA_TRANS_SECT\22 }, { ATA_CMD_CFA_ERASE, \22ATA_CMD_CFA_ERASE\22 }, { ATA_CMD_CFA_WRITE_MULT_NE, \22ATA_CMD_CFA_WRITE_MULT_NE\22 }, { ATA_CMD_REQ_SENSE_DATA, \22ATA_CMD_REQ_SENSE_DATA\22 }, { ATA_CMD_SANITIZE_DEVICE, \22ATA_CMD_SANITIZE_DEVICE\22 }, { ATA_CMD_ZAC_MGMT_IN, \22ATA_CMD_ZAC_MGMT_IN\22 }, { ATA_CMD_ZAC_MGMT_OUT, \22ATA_CMD_ZAC_MGMT_OUT\22 }, { ATA_CMD_RESTORE, \22ATA_CMD_RESTORE\22 }, { ATA_CMD_READ_LONG, \22ATA_CMD_READ_LONG\22 }, { ATA_CMD_READ_LONG_ONCE, \22ATA_CMD_READ_LONG_ONCE\22 }, { ATA_CMD_WRITE_LONG, \22ATA_CMD_WRITE_LONG\22 }, { ATA_CMD_WRITE_LONG_ONCE, \22ATA_CMD_WRITE_LONG_ONCE\22 }), libata_trace_parse_subcmd(p, REC->cmd, REC->feature, REC->hob_nsect)\00", align 1
@event_ata_exec_command = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_exec_command_template, %union.anon.108 { ptr @__tracepoint_ata_exec_command }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_exec_command_template }, ptr @print_fmt_ata_exec_command_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_exec_command = internal global ptr @event_ata_exec_command, section "_ftrace_events", align 4
@event_ata_bmdma_setup = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_exec_command_template, %union.anon.108 { ptr @__tracepoint_ata_bmdma_setup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_exec_command_template }, ptr @print_fmt_ata_exec_command_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_bmdma_setup = internal global ptr @event_ata_bmdma_setup, section "_ftrace_events", align 4
@event_ata_bmdma_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_exec_command_template, %union.anon.108 { ptr @__tracepoint_ata_bmdma_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_exec_command_template }, ptr @print_fmt_ata_exec_command_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_bmdma_start = internal global ptr @event_ata_bmdma_start, section "_ftrace_events", align 4
@event_ata_bmdma_stop = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_exec_command_template, %union.anon.108 { ptr @__tracepoint_ata_bmdma_stop }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_exec_command_template }, ptr @print_fmt_ata_exec_command_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_bmdma_stop = internal global ptr @event_ata_bmdma_stop, section "_ftrace_events", align 4
@trace_event_fields_ata_bmdma_status = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.229, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_bmdma_status = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_bmdma_status, ptr @perf_trace_ata_bmdma_status, ptr @trace_event_reg, ptr @trace_event_fields_ata_bmdma_status, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_bmdma_status, i64 24), ptr getelementptr (i8, ptr @event_class_ata_bmdma_status, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_bmdma_status = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_bmdma_status, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_bmdma_status = internal global [91 x i8] c"\22ata_port=%u host_stat=%s\22, REC->ata_port, libata_trace_parse_host_stat(p, REC->host_stat)\00", align 1
@event_ata_bmdma_status = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_bmdma_status, %union.anon.108 { ptr @__tracepoint_ata_bmdma_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_bmdma_status }, ptr @print_fmt_ata_bmdma_status, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_bmdma_status = internal global ptr @event_ata_bmdma_status, section "_ftrace_events", align 4
@trace_event_fields_ata_eh_link_autopsy = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.231, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.232, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_eh_link_autopsy = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_eh_link_autopsy, ptr @perf_trace_ata_eh_link_autopsy, ptr @trace_event_reg, ptr @trace_event_fields_ata_eh_link_autopsy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_eh_link_autopsy, i64 24), ptr getelementptr (i8, ptr @event_class_ata_eh_link_autopsy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_eh_link_autopsy = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_eh_link_autopsy, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_eh_link_autopsy = internal global [181 x i8] c"\22ata_port=%u ata_dev=%u eh_action=%s err_mask=%s\22, REC->ata_port, REC->ata_dev, libata_trace_parse_eh_action(p, REC->eh_action), libata_trace_parse_eh_err_mask(p, REC->eh_err_mask)\00", align 1
@event_ata_eh_link_autopsy = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_eh_link_autopsy, %union.anon.108 { ptr @__tracepoint_ata_eh_link_autopsy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_eh_link_autopsy }, ptr @print_fmt_ata_eh_link_autopsy, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_eh_link_autopsy = internal global ptr @event_ata_eh_link_autopsy, section "_ftrace_events", align 4
@trace_event_fields_ata_eh_link_autopsy_qc = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.234, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.232, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_eh_link_autopsy_qc = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_eh_link_autopsy_qc, ptr @perf_trace_ata_eh_link_autopsy_qc, ptr @trace_event_reg, ptr @trace_event_fields_ata_eh_link_autopsy_qc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_eh_link_autopsy_qc, i64 24), ptr getelementptr (i8, ptr @event_class_ata_eh_link_autopsy_qc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_eh_link_autopsy_qc = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_eh_link_autopsy_qc, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_eh_link_autopsy_qc = internal global [192 x i8] c"\22ata_port=%u ata_dev=%u tag=%d flags=%s err_mask=%s\22, REC->ata_port, REC->ata_dev, REC->tag, libata_trace_parse_qc_flags(p, REC->qc_flags), libata_trace_parse_eh_err_mask(p, REC->eh_err_mask)\00", align 1
@event_ata_eh_link_autopsy_qc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_eh_link_autopsy_qc, %union.anon.108 { ptr @__tracepoint_ata_eh_link_autopsy_qc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_eh_link_autopsy_qc }, ptr @print_fmt_ata_eh_link_autopsy_qc, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_eh_link_autopsy_qc = internal global ptr @event_ata_eh_link_autopsy_qc, section "_ftrace_events", align 4
@trace_event_fields_ata_eh_action_template = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.231, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_eh_action_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_eh_action_template, ptr @perf_trace_ata_eh_action_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_eh_action_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_eh_action_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_eh_action_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_eh_action_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_eh_action_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_eh_action_template = internal global [116 x i8] c"\22ata_port=%u ata_dev=%u eh_action=%s\22, REC->ata_port, REC->ata_dev, libata_trace_parse_eh_action(p, REC->eh_action)\00", align 1
@event_ata_eh_about_to_do = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_eh_action_template, %union.anon.108 { ptr @__tracepoint_ata_eh_about_to_do }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_eh_action_template }, ptr @print_fmt_ata_eh_action_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_eh_about_to_do = internal global ptr @event_ata_eh_about_to_do, section "_ftrace_events", align 4
@event_ata_eh_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_eh_action_template, %union.anon.108 { ptr @__tracepoint_ata_eh_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_eh_action_template }, ptr @print_fmt_ata_eh_action_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_eh_done = internal global ptr @event_ata_eh_done, section "_ftrace_events", align 4
@trace_event_fields_ata_link_reset_begin_template = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.237, %union.anon.106 { %struct.anon.107 { ptr @.str.238, i32 8, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.116, %union.anon.106 { %struct.anon.107 { ptr @.str.239, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_link_reset_begin_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_link_reset_begin_template, ptr @perf_trace_ata_link_reset_begin_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_link_reset_begin_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_link_reset_begin_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_link_reset_begin_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_link_reset_begin_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_link_reset_begin_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_link_reset_begin_template = internal global [1071 x i8] c"\22ata_port=%u deadline=%lu classes=[%s,%s]\22, REC->ata_port, REC->deadline, __print_symbolic(REC->class[0], { ATA_DEV_UNKNOWN, \22ATA_DEV_UNKNOWN\22 }, { ATA_DEV_ATA, \22ATA_DEV_ATA\22 }, { ATA_DEV_ATA_UNSUP, \22ATA_DEV_ATA_UNSUP\22 }, { ATA_DEV_ATAPI, \22ATA_DEV_ATAPI\22 }, { ATA_DEV_ATAPI_UNSUP, \22ATA_DEV_ATAPI_UNSUP\22 }, { ATA_DEV_PMP, \22ATA_DEV_PMP\22 }, { ATA_DEV_PMP_UNSUP, \22ATA_DEV_PMP_UNSUP\22 }, { ATA_DEV_SEMB, \22ATA_DEV_SEMB\22 }, { ATA_DEV_SEMB_UNSUP, \22ATA_DEV_SEMB_UNSUP\22 }, { ATA_DEV_ZAC, \22ATA_DEV_ZAC\22 }, { ATA_DEV_ZAC_UNSUP, \22ATA_DEV_ZAC_UNSUP\22 }, { ATA_DEV_NONE, \22ATA_DEV_NONE\22 }), __print_symbolic(REC->class[1], { ATA_DEV_UNKNOWN, \22ATA_DEV_UNKNOWN\22 }, { ATA_DEV_ATA, \22ATA_DEV_ATA\22 }, { ATA_DEV_ATA_UNSUP, \22ATA_DEV_ATA_UNSUP\22 }, { ATA_DEV_ATAPI, \22ATA_DEV_ATAPI\22 }, { ATA_DEV_ATAPI_UNSUP, \22ATA_DEV_ATAPI_UNSUP\22 }, { ATA_DEV_PMP, \22ATA_DEV_PMP\22 }, { ATA_DEV_PMP_UNSUP, \22ATA_DEV_PMP_UNSUP\22 }, { ATA_DEV_SEMB, \22ATA_DEV_SEMB\22 }, { ATA_DEV_SEMB_UNSUP, \22ATA_DEV_SEMB_UNSUP\22 }, { ATA_DEV_ZAC, \22ATA_DEV_ZAC\22 }, { ATA_DEV_ZAC_UNSUP, \22ATA_DEV_ZAC_UNSUP\22 }, { ATA_DEV_NONE, \22ATA_DEV_NONE\22 })\00", align 1
@event_ata_link_hardreset_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_link_reset_begin_template, %union.anon.108 { ptr @__tracepoint_ata_link_hardreset_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_link_reset_begin_template }, ptr @print_fmt_ata_link_reset_begin_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_link_hardreset_begin = internal global ptr @event_ata_link_hardreset_begin, section "_ftrace_events", align 4
@event_ata_slave_hardreset_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_link_reset_begin_template, %union.anon.108 { ptr @__tracepoint_ata_slave_hardreset_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_link_reset_begin_template }, ptr @print_fmt_ata_link_reset_begin_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_slave_hardreset_begin = internal global ptr @event_ata_slave_hardreset_begin, section "_ftrace_events", align 4
@event_ata_link_softreset_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_link_reset_begin_template, %union.anon.108 { ptr @__tracepoint_ata_link_softreset_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_link_reset_begin_template }, ptr @print_fmt_ata_link_reset_begin_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_link_softreset_begin = internal global ptr @event_ata_link_softreset_begin, section "_ftrace_events", align 4
@trace_event_fields_ata_link_reset_end_template = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.237, %union.anon.106 { %struct.anon.107 { ptr @.str.238, i32 8, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.254, %union.anon.106 { %struct.anon.107 { ptr @.str.255, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_link_reset_end_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_link_reset_end_template, ptr @perf_trace_ata_link_reset_end_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_link_reset_end_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_link_reset_end_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_link_reset_end_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_link_reset_end_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_link_reset_end_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_link_reset_end_template = internal global [1056 x i8] c"\22ata_port=%u rc=%d class=[%s,%s]\22, REC->ata_port, REC->rc, __print_symbolic(REC->class[0], { ATA_DEV_UNKNOWN, \22ATA_DEV_UNKNOWN\22 }, { ATA_DEV_ATA, \22ATA_DEV_ATA\22 }, { ATA_DEV_ATA_UNSUP, \22ATA_DEV_ATA_UNSUP\22 }, { ATA_DEV_ATAPI, \22ATA_DEV_ATAPI\22 }, { ATA_DEV_ATAPI_UNSUP, \22ATA_DEV_ATAPI_UNSUP\22 }, { ATA_DEV_PMP, \22ATA_DEV_PMP\22 }, { ATA_DEV_PMP_UNSUP, \22ATA_DEV_PMP_UNSUP\22 }, { ATA_DEV_SEMB, \22ATA_DEV_SEMB\22 }, { ATA_DEV_SEMB_UNSUP, \22ATA_DEV_SEMB_UNSUP\22 }, { ATA_DEV_ZAC, \22ATA_DEV_ZAC\22 }, { ATA_DEV_ZAC_UNSUP, \22ATA_DEV_ZAC_UNSUP\22 }, { ATA_DEV_NONE, \22ATA_DEV_NONE\22 }), __print_symbolic(REC->class[1], { ATA_DEV_UNKNOWN, \22ATA_DEV_UNKNOWN\22 }, { ATA_DEV_ATA, \22ATA_DEV_ATA\22 }, { ATA_DEV_ATA_UNSUP, \22ATA_DEV_ATA_UNSUP\22 }, { ATA_DEV_ATAPI, \22ATA_DEV_ATAPI\22 }, { ATA_DEV_ATAPI_UNSUP, \22ATA_DEV_ATAPI_UNSUP\22 }, { ATA_DEV_PMP, \22ATA_DEV_PMP\22 }, { ATA_DEV_PMP_UNSUP, \22ATA_DEV_PMP_UNSUP\22 }, { ATA_DEV_SEMB, \22ATA_DEV_SEMB\22 }, { ATA_DEV_SEMB_UNSUP, \22ATA_DEV_SEMB_UNSUP\22 }, { ATA_DEV_ZAC, \22ATA_DEV_ZAC\22 }, { ATA_DEV_ZAC_UNSUP, \22ATA_DEV_ZAC_UNSUP\22 }, { ATA_DEV_NONE, \22ATA_DEV_NONE\22 })\00", align 1
@event_ata_link_hardreset_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_link_reset_end_template, %union.anon.108 { ptr @__tracepoint_ata_link_hardreset_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_link_reset_end_template }, ptr @print_fmt_ata_link_reset_end_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_link_hardreset_end = internal global ptr @event_ata_link_hardreset_end, section "_ftrace_events", align 4
@event_ata_slave_hardreset_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_link_reset_end_template, %union.anon.108 { ptr @__tracepoint_ata_slave_hardreset_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_link_reset_end_template }, ptr @print_fmt_ata_link_reset_end_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_slave_hardreset_end = internal global ptr @event_ata_slave_hardreset_end, section "_ftrace_events", align 4
@event_ata_link_softreset_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_link_reset_end_template, %union.anon.108 { ptr @__tracepoint_ata_link_softreset_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_link_reset_end_template }, ptr @print_fmt_ata_link_reset_end_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_link_softreset_end = internal global ptr @event_ata_link_softreset_end, section "_ftrace_events", align 4
@event_ata_link_postreset = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_link_reset_end_template, %union.anon.108 { ptr @__tracepoint_ata_link_postreset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_link_reset_end_template }, ptr @print_fmt_ata_link_reset_end_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_link_postreset = internal global ptr @event_ata_link_postreset, section "_ftrace_events", align 4
@event_ata_slave_postreset = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_link_reset_end_template, %union.anon.108 { ptr @__tracepoint_ata_slave_postreset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_link_reset_end_template }, ptr @print_fmt_ata_link_reset_end_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_slave_postreset = internal global ptr @event_ata_slave_postreset, section "_ftrace_events", align 4
@trace_event_fields_ata_port_eh_begin_template = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_port_eh_begin_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_port_eh_begin_template, ptr @perf_trace_ata_port_eh_begin_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_port_eh_begin_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_port_eh_begin_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_port_eh_begin_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_port_eh_begin_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_port_eh_begin_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_port_eh_begin_template = internal global [29 x i8] c"\22ata_port=%u\22, REC->ata_port\00", align 1
@event_ata_std_sched_eh = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_port_eh_begin_template, %union.anon.108 { ptr @__tracepoint_ata_std_sched_eh }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_port_eh_begin_template }, ptr @print_fmt_ata_port_eh_begin_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_std_sched_eh = internal global ptr @event_ata_std_sched_eh, section "_ftrace_events", align 4
@event_ata_port_freeze = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_port_eh_begin_template, %union.anon.108 { ptr @__tracepoint_ata_port_freeze }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_port_eh_begin_template }, ptr @print_fmt_ata_port_eh_begin_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_port_freeze = internal global ptr @event_ata_port_freeze, section "_ftrace_events", align 4
@event_ata_port_thaw = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_port_eh_begin_template, %union.anon.108 { ptr @__tracepoint_ata_port_thaw }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_port_eh_begin_template }, ptr @print_fmt_ata_port_eh_begin_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_port_thaw = internal global ptr @event_ata_port_thaw, section "_ftrace_events", align 4
@trace_event_fields_ata_sff_hsm_template = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.234, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.259, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.260, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.261, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_sff_hsm_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_sff_hsm_template, ptr @perf_trace_ata_sff_hsm_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_sff_hsm_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_sff_hsm_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_sff_hsm_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_sff_hsm_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_sff_hsm_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_sff_hsm_template = internal global [749 x i8] c"\22ata_port=%u ata_dev=%u tag=%d proto=%s flags=%s task_state=%s dev_stat=0x%X\22, REC->ata_port, REC->ata_dev, REC->tag, __print_symbolic(REC->protocol, { ATA_PROT_UNKNOWN, \22ATA_PROT_UNKNOWN\22 }, { ATA_PROT_NODATA, \22ATA_PROT_NODATA\22 }, { ATA_PROT_PIO, \22ATA_PROT_PIO\22 }, { ATA_PROT_DMA, \22ATA_PROT_DMA\22 }, { ATA_PROT_NCQ, \22ATA_PROT_NCQ\22 }, { ATA_PROT_NCQ_NODATA, \22ATA_PROT_NCQ_NODATA\22 }, { ATAPI_PROT_NODATA, \22ATAPI_PROT_NODATA\22 }, { ATAPI_PROT_PIO, \22ATAPI_PROT_PIO\22 }, { ATAPI_PROT_DMA, \22ATAPI_PROT_DMA\22 }), libata_trace_parse_qc_flags(p, REC->qc_flags), __print_symbolic(REC->hsm_state, { HSM_ST_IDLE, \22HSM_ST_IDLE\22 }, { HSM_ST_FIRST, \22HSM_ST_FIRST\22 }, { HSM_ST, \22HSM_ST\22 }, { HSM_ST_LAST, \22HSM_ST_LAST\22 }, { HSM_ST_ERR, \22HSM_ST_ERR\22 }), REC->dev_state\00", align 1
@event_ata_sff_hsm_state = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_sff_hsm_template, %union.anon.108 { ptr @__tracepoint_ata_sff_hsm_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_sff_hsm_template }, ptr @print_fmt_ata_sff_hsm_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_sff_hsm_state = internal global ptr @event_ata_sff_hsm_state, section "_ftrace_events", align 4
@event_ata_sff_hsm_command_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_sff_hsm_template, %union.anon.108 { ptr @__tracepoint_ata_sff_hsm_command_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_sff_hsm_template }, ptr @print_fmt_ata_sff_hsm_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_sff_hsm_command_complete = internal global ptr @event_ata_sff_hsm_command_complete, section "_ftrace_events", align 4
@event_ata_sff_port_intr = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_sff_hsm_template, %union.anon.108 { ptr @__tracepoint_ata_sff_port_intr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_sff_hsm_template }, ptr @print_fmt_ata_sff_hsm_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_sff_port_intr = internal global ptr @event_ata_sff_port_intr, section "_ftrace_events", align 4
@trace_event_fields_ata_transfer_data_template = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.269, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.270, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_transfer_data_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_transfer_data_template, ptr @perf_trace_ata_transfer_data_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_transfer_data_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_transfer_data_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_transfer_data_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_transfer_data_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_transfer_data_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_transfer_data_template = internal global [168 x i8] c"\22ata_port=%u ata_dev=%u tag=%d flags=%s offset=%u bytes=%u\22, REC->ata_port, REC->ata_dev, REC->tag, libata_trace_parse_tf_flags(p, REC->flags), REC->offset, REC->bytes\00", align 1
@event_ata_sff_pio_transfer_data = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_transfer_data_template, %union.anon.108 { ptr @__tracepoint_ata_sff_pio_transfer_data }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_transfer_data_template }, ptr @print_fmt_ata_transfer_data_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_sff_pio_transfer_data = internal global ptr @event_ata_sff_pio_transfer_data, section "_ftrace_events", align 4
@event_atapi_pio_transfer_data = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_transfer_data_template, %union.anon.108 { ptr @__tracepoint_atapi_pio_transfer_data }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_transfer_data_template }, ptr @print_fmt_ata_transfer_data_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_atapi_pio_transfer_data = internal global ptr @event_atapi_pio_transfer_data, section "_ftrace_events", align 4
@event_atapi_send_cdb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_transfer_data_template, %union.anon.108 { ptr @__tracepoint_atapi_send_cdb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_transfer_data_template }, ptr @print_fmt_ata_transfer_data_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_atapi_send_cdb = internal global ptr @event_atapi_send_cdb, section "_ftrace_events", align 4
@trace_event_fields_ata_sff_template = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.98, %union.anon.106 { %struct.anon.107 { ptr @.str.82, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.101, %union.anon.106 { %struct.anon.107 { ptr @.str.260, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_ata_sff_template = internal global %struct.trace_event_class { ptr @.str.1, ptr @trace_event_raw_event_ata_sff_template, ptr @perf_trace_ata_sff_template, ptr @trace_event_reg, ptr @trace_event_fields_ata_sff_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_ata_sff_template, i64 24), ptr getelementptr (i8, ptr @event_class_ata_sff_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_ata_sff_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_ata_sff_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_ata_sff_template = internal global [227 x i8] c"\22ata_port=%u task_state=%s\22, REC->ata_port, __print_symbolic(REC->hsm_state, { HSM_ST_IDLE, \22HSM_ST_IDLE\22 }, { HSM_ST_FIRST, \22HSM_ST_FIRST\22 }, { HSM_ST, \22HSM_ST\22 }, { HSM_ST_LAST, \22HSM_ST_LAST\22 }, { HSM_ST_ERR, \22HSM_ST_ERR\22 })\00", align 1
@event_ata_sff_flush_pio_task = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_ata_sff_template, %union.anon.108 { ptr @__tracepoint_ata_sff_flush_pio_task }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_ata_sff_template }, ptr @print_fmt_ata_sff_template, ptr null, %union.anon.109 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_ata_sff_flush_pio_task = internal global ptr @event_ata_sff_flush_pio_task, section "_ftrace_events", align 4
@ata_base_port_ops = dso_local constant %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_std_prereset, ptr null, ptr null, ptr @ata_std_postreset, ptr null, ptr null, ptr null, ptr null, ptr @ata_std_error_handler, ptr null, ptr null, ptr @ata_std_sched_eh, ptr @ata_std_end_eh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sata_port_ops = dso_local constant %struct.ata_port_operations { ptr @ata_std_qc_defer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_std_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_base_port_ops }, align 4
@__kstrtab_sata_port_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_port_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_port_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_port_ops to i32), ptr @__kstrtab_sata_port_ops, ptr @__kstrtabns_sata_port_ops }, section "___ksymtab_gpl+sata_port_ops", align 4
@ata_print_id = dso_local global %struct.atomic_t zeroinitializer, align 4
@__param_str_force = internal constant [13 x i8] c"libata.force\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_force = internal constant %struct.kparam_string { i32 1024, ptr @ata_force_param_buf }, align 4
@__param_force = internal constant %struct.kernel_param { ptr @__param_str_force, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.14 { ptr @__param_string_force } }, section "__param", align 4
@__UNIQUE_ID_forcetype465 = internal constant [29 x i8] c"libata.parmtype=force:string\00", section ".modinfo", align 1
@__UNIQUE_ID_force466 = internal constant [160 x i8] c"libata.parm=force:Force ATA configurations including cable type, link speed and transfer mode (see Documentation/admin-guide/kernel-parameters.rst for details)\00", section ".modinfo", align 1
@__param_str_atapi_enabled = internal constant [21 x i8] c"libata.atapi_enabled\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@atapi_enabled = internal global i32 1, align 4
@__param_atapi_enabled = internal constant %struct.kernel_param { ptr @__param_str_atapi_enabled, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.14 { ptr @atapi_enabled } }, section "__param", align 4
@__UNIQUE_ID_atapi_enabledtype467 = internal constant [34 x i8] c"libata.parmtype=atapi_enabled:int\00", section ".modinfo", align 1
@__UNIQUE_ID_atapi_enabled468 = internal constant [84 x i8] c"libata.parm=atapi_enabled:Enable discovery of ATAPI devices (0=off, 1=on [default])\00", section ".modinfo", align 1
@__param_str_atapi_dmadir = internal constant [20 x i8] c"libata.atapi_dmadir\00", align 1
@atapi_dmadir = internal global i32 0, align 4
@__param_atapi_dmadir = internal constant %struct.kernel_param { ptr @__param_str_atapi_dmadir, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.14 { ptr @atapi_dmadir } }, section "__param", align 4
@__UNIQUE_ID_atapi_dmadirtype469 = internal constant [33 x i8] c"libata.parmtype=atapi_dmadir:int\00", section ".modinfo", align 1
@__UNIQUE_ID_atapi_dmadir470 = internal constant [84 x i8] c"libata.parm=atapi_dmadir:Enable ATAPI DMADIR bridge support (0=off [default], 1=on)\00", section ".modinfo", align 1
@atapi_passthru16 = dso_local global i32 1, align 4
@__param_str_atapi_passthru16 = internal constant [24 x i8] c"libata.atapi_passthru16\00", align 1
@__param_atapi_passthru16 = internal constant %struct.kernel_param { ptr @__param_str_atapi_passthru16, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.14 { ptr @atapi_passthru16 } }, section "__param", align 4
@__UNIQUE_ID_atapi_passthru16type471 = internal constant [37 x i8] c"libata.parmtype=atapi_passthru16:int\00", section ".modinfo", align 1
@__UNIQUE_ID_atapi_passthru16472 = internal constant [94 x i8] c"libata.parm=atapi_passthru16:Enable ATA_16 passthru for ATAPI devices (0=off, 1=on [default])\00", section ".modinfo", align 1
@libata_fua = dso_local global i32 0, align 4
@__param_str_fua = internal constant [11 x i8] c"libata.fua\00", align 1
@__param_fua = internal constant %struct.kernel_param { ptr @__param_str_fua, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.14 { ptr @libata_fua } }, section "__param", align 4
@__UNIQUE_ID_fuatype473 = internal constant [24 x i8] c"libata.parmtype=fua:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fua474 = internal constant [52 x i8] c"libata.parm=fua:FUA support (0=off [default], 1=on)\00", section ".modinfo", align 1
@__param_str_ignore_hpa = internal constant [18 x i8] c"libata.ignore_hpa\00", align 1
@ata_ignore_hpa = internal global i32 0, align 4
@__param_ignore_hpa = internal constant %struct.kernel_param { ptr @__param_str_ignore_hpa, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @ata_ignore_hpa } }, section "__param", align 4
@__UNIQUE_ID_ignore_hpatype475 = internal constant [31 x i8] c"libata.parmtype=ignore_hpa:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ignore_hpa476 = internal constant [95 x i8] c"libata.parm=ignore_hpa:Ignore HPA limit (0=keep BIOS limits, 1=ignore limits, using full disk)\00", section ".modinfo", align 1
@__param_str_dma = internal constant [11 x i8] c"libata.dma\00", align 1
@libata_dma_mask = internal global i32 7, align 4
@__param_dma = internal constant %struct.kernel_param { ptr @__param_str_dma, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.14 { ptr @libata_dma_mask } }, section "__param", align 4
@__UNIQUE_ID_dmatype477 = internal constant [24 x i8] c"libata.parmtype=dma:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dma478 = internal constant [67 x i8] c"libata.parm=dma:DMA enable/disable (0x1==ATA, 0x2==ATAPI, 0x4==CF)\00", section ".modinfo", align 1
@__param_str_ata_probe_timeout = internal constant [25 x i8] c"libata.ata_probe_timeout\00", align 1
@ata_probe_timeout = internal global i32 0, align 4
@__param_ata_probe_timeout = internal constant %struct.kernel_param { ptr @__param_str_ata_probe_timeout, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.14 { ptr @ata_probe_timeout } }, section "__param", align 4
@__UNIQUE_ID_ata_probe_timeouttype479 = internal constant [38 x i8] c"libata.parmtype=ata_probe_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ata_probe_timeout480 = internal constant [64 x i8] c"libata.parm=ata_probe_timeout:Set ATA probing timeout (seconds)\00", section ".modinfo", align 1
@libata_noacpi = dso_local global i32 0, align 4
@__param_str_noacpi = internal constant [14 x i8] c"libata.noacpi\00", align 1
@__param_noacpi = internal constant %struct.kernel_param { ptr @__param_str_noacpi, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.14 { ptr @libata_noacpi } }, section "__param", align 4
@__UNIQUE_ID_noacpitype481 = internal constant [27 x i8] c"libata.parmtype=noacpi:int\00", section ".modinfo", align 1
@__UNIQUE_ID_noacpi482 = internal constant [91 x i8] c"libata.parm=noacpi:Disable the use of ACPI in probe/suspend/resume (0=off [default], 1=on)\00", section ".modinfo", align 1
@libata_allow_tpm = dso_local global i32 0, align 4
@__param_str_allow_tpm = internal constant [17 x i8] c"libata.allow_tpm\00", align 1
@__param_allow_tpm = internal constant %struct.kernel_param { ptr @__param_str_allow_tpm, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.14 { ptr @libata_allow_tpm } }, section "__param", align 4
@__UNIQUE_ID_allow_tpmtype483 = internal constant [30 x i8] c"libata.parmtype=allow_tpm:int\00", section ".modinfo", align 1
@__UNIQUE_ID_allow_tpm484 = internal constant [77 x i8] c"libata.parm=allow_tpm:Permit the use of TPM commands (0=off [default], 1=on)\00", section ".modinfo", align 1
@__param_str_atapi_an = internal constant [16 x i8] c"libata.atapi_an\00", align 1
@atapi_an = internal global i32 0, align 4
@__param_atapi_an = internal constant %struct.kernel_param { ptr @__param_str_atapi_an, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.14 { ptr @atapi_an } }, section "__param", align 4
@__UNIQUE_ID_atapi_antype485 = internal constant [29 x i8] c"libata.parmtype=atapi_an:int\00", section ".modinfo", align 1
@__UNIQUE_ID_atapi_an486 = internal constant [89 x i8] c"libata.parm=atapi_an:Enable ATAPI AN media presence notification (0=0ff [default], 1=on)\00", section ".modinfo", align 1
@__UNIQUE_ID_author487 = internal constant [26 x i8] c"libata.author=Jeff Garzik\00", section ".modinfo", align 1
@__UNIQUE_ID_description488 = internal constant [50 x i8] c"libata.description=Library module for ATA devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file489 = internal constant [31 x i8] c"libata.file=drivers/ata/libata\00", section ".modinfo", align 1
@__UNIQUE_ID_license490 = internal constant [19 x i8] c"libata.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version491 = internal constant [20 x i8] c"libata.version=3.00\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private constant [7 x i8] c"libata\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"3.00\00", align 1
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__kstrtab_ata_link_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_link_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_link_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_link_next to i32), ptr @__kstrtab_ata_link_next, ptr @__kstrtabns_ata_link_next }, section "___ksymtab_gpl+ata_link_next", align 4
@__kstrtab_ata_dev_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_dev_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_dev_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_dev_next to i32), ptr @__kstrtab_ata_dev_next, ptr @__kstrtabns_ata_dev_next }, section "___ksymtab_gpl+ata_dev_next", align 4
@ata_force_tbl_size = internal unnamed_addr global i32 0, align 4
@ata_force_tbl = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"\015ata%u: FORCE: cable set to %s\0A\00", align 1
@__kstrtab_atapi_cmd_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_atapi_cmd_type = external dso_local constant [0 x i8], align 1
@__ksymtab_atapi_cmd_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atapi_cmd_type to i32), ptr @__kstrtab_atapi_cmd_type, ptr @__kstrtabns_atapi_cmd_type }, section "___ksymtab_gpl+atapi_cmd_type", align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"\014ata%u.%02u: device reported invalid CHS sector 0\0A\00", align 1
@__kstrtab_ata_pack_xfermask = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pack_xfermask = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pack_xfermask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pack_xfermask to i32), ptr @__kstrtab_ata_pack_xfermask, ptr @__kstrtabns_ata_pack_xfermask }, section "___ksymtab_gpl+ata_pack_xfermask", align 4
@ata_xfer_tbl = internal unnamed_addr constant [4 x %struct.ata_xfer_ent] [%struct.ata_xfer_ent { i32 0, i32 7, i8 8 }, %struct.ata_xfer_ent { i32 7, i32 5, i8 32 }, %struct.ata_xfer_ent { i32 12, i32 8, i8 64 }, %struct.ata_xfer_ent { i32 -1, i32 0, i8 0 }], align 4
@__kstrtab_ata_xfer_mask2mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_xfer_mask2mode = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_xfer_mask2mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_xfer_mask2mode to i32), ptr @__kstrtab_ata_xfer_mask2mode, ptr @__kstrtabns_ata_xfer_mask2mode }, section "___ksymtab_gpl+ata_xfer_mask2mode", align 4
@__kstrtab_ata_xfer_mode2mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_xfer_mode2mask = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_xfer_mode2mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_xfer_mode2mask to i32), ptr @__kstrtab_ata_xfer_mode2mask, ptr @__kstrtabns_ata_xfer_mode2mask }, section "___ksymtab_gpl+ata_xfer_mode2mask", align 4
@__kstrtab_ata_xfer_mode2shift = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_xfer_mode2shift = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_xfer_mode2shift = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_xfer_mode2shift to i32), ptr @__kstrtab_ata_xfer_mode2shift, ptr @__kstrtabns_ata_xfer_mode2shift }, section "___ksymtab_gpl+ata_xfer_mode2shift", align 4
@ata_mode_string.xfer_mode_str = internal unnamed_addr constant [20 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"PIO0\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PIO1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"PIO2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"PIO3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"PIO4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"PIO5\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"PIO6\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"MWDMA0\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"MWDMA1\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"MWDMA2\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"MWDMA3\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"MWDMA4\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"UDMA/16\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"UDMA/25\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"UDMA/33\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"UDMA/44\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"UDMA/66\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"UDMA/100\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"UDMA/133\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"UDMA7\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"<n/a>\00", align 1
@__kstrtab_ata_mode_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_mode_string = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_mode_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_mode_string to i32), ptr @__kstrtab_ata_mode_string, ptr @__kstrtabns_ata_mode_string }, section "___ksymtab_gpl+ata_mode_string", align 4
@sata_spd_string.spd_str = internal unnamed_addr constant [3 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28], align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"1.5 Gbps\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"3.0 Gbps\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"6.0 Gbps\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@__kstrtab_ata_dev_classify = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_dev_classify = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_dev_classify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_dev_classify to i32), ptr @__kstrtab_ata_dev_classify, ptr @__kstrtabns_ata_dev_classify }, section "___ksymtab_gpl+ata_dev_classify", align 4
@__kstrtab_ata_id_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_id_string = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_id_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_id_string to i32), ptr @__kstrtab_ata_id_string, ptr @__kstrtabns_ata_id_string }, section "___ksymtab_gpl+ata_id_string", align 4
@__kstrtab_ata_id_c_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_id_c_string = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_id_c_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_id_c_string to i32), ptr @__kstrtab_ata_id_c_string, ptr @__kstrtabns_ata_id_c_string }, section "___ksymtab_gpl+ata_id_c_string", align 4
@__kstrtab_ata_id_xfermask = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_id_xfermask = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_id_xfermask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_id_xfermask to i32), ptr @__kstrtab_ata_id_xfermask, ptr @__kstrtabns_ata_id_xfermask }, section "___ksymtab_gpl+ata_id_xfermask", align 4
@.str.30 = private unnamed_addr constant [37 x i8] c"\014ata%u.%02u: qc timeout (cmd 0x%x)\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"drivers/ata/libata-core.c\00", align 1
@__kstrtab_ata_pio_need_iordy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pio_need_iordy = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pio_need_iordy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pio_need_iordy to i32), ptr @__kstrtab_ata_pio_need_iordy, ptr @__kstrtabns_ata_pio_need_iordy }, section "___ksymtab_gpl+ata_pio_need_iordy", align 4
@__kstrtab_ata_do_dev_read_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_do_dev_read_id = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_do_dev_read_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_do_dev_read_id to i32), ptr @__kstrtab_ata_do_dev_read_id, ptr @__kstrtabns_ata_do_dev_read_id }, section "___ksymtab_gpl+ata_do_dev_read_id", align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"unsupported class\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"\016ata%u.%02u: IDENTIFY failed on device w/ SEMB sig, disabled\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"I/O error\00", align 1
@.str.35 = private unnamed_addr constant [79 x i8] c"\016ata%u.%02u: dumping IDENTIFY data, class=%d may_fallback=%d tried_spinup=%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"device reports invalid type\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"SPINUP failed\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"INIT_DEV_PARAMS failed\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"\014ata%u.%02u: failed to IDENTIFY (%s, err_mask=0x%x)\0A\00", align 1
@.str.42 = private unnamed_addr constant [62 x i8] c"\013ata%u.%02u: Read log 0x%02x page 0x%02x failed, Emask 0x%x\0A\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"\016ata%u.%02u: unsupported device, disabling\0A\00", align 1
@.str.44 = private unnamed_addr constant [52 x i8] c"\014ata%u.%02u: WARNING: ATAPI is %s, device ignored\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"not supported with this driver\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"\014ata%u.%02u: LPM support broken, forcing max_power\0A\00", align 1
@.str.48 = private unnamed_addr constant [70 x i8] c"\014ata%u.%02u: supports DRM functions and may not be fully accessible\0A\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"ATA-%d\00", align 1
@.str.51 = private unnamed_addr constant [34 x i8] c"\016ata%u.%02u: %s: %s, %s, max %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"\014ata%u.%02u: unsupported CDB len %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [57 x i8] c"\013ata%u.%02u: failed to enable ATAPI AN (err_mask=0x%x)\0A\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c", ATAPI AN\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c", CDB intr\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c", DMADIR\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"\016ata%u.%02u: ATAPI: %s, %s, max %s%s%s%s\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"\016ata%u.%02u: applying bridge limits\0A\00", align 1
@.str.59 = private unnamed_addr constant [76 x i8] c"\014ata%u.%02u: Drive reports diagnostics failure. This may indicate a drive\0A\00", align 1
@.str.60 = private unnamed_addr constant [81 x i8] c"\014ata%u.%02u: fault or invalid emulation. Contact drive vendor for information.\0A\00", align 1
@.str.61 = private unnamed_addr constant [79 x i8] c"\014ata%u.%02u: WARNING: device requires firmware update to be fully functional\0A\00", align 1
@.str.62 = private unnamed_addr constant [79 x i8] c"\014ata%u.%02u:          contact the vendor or visit http://ata.wiki.kernel.org\0A\00", align 1
@__kstrtab_ata_cable_40wire = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_cable_40wire = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_cable_40wire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_cable_40wire to i32), ptr @__kstrtab_ata_cable_40wire, ptr @__kstrtabns_ata_cable_40wire }, section "___ksymtab_gpl+ata_cable_40wire", align 4
@__kstrtab_ata_cable_80wire = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_cable_80wire = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_cable_80wire = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_cable_80wire to i32), ptr @__kstrtab_ata_cable_80wire, ptr @__kstrtabns_ata_cable_80wire }, section "___ksymtab_gpl+ata_cable_80wire", align 4
@__kstrtab_ata_cable_unknown = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_cable_unknown = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_cable_unknown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_cable_unknown to i32), ptr @__kstrtab_ata_cable_unknown, ptr @__kstrtabns_ata_cable_unknown }, section "___ksymtab_gpl+ata_cable_unknown", align 4
@__kstrtab_ata_cable_ignore = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_cable_ignore = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_cable_ignore = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_cable_ignore to i32), ptr @__kstrtab_ata_cable_ignore, ptr @__kstrtabns_ata_cable_ignore }, section "___ksymtab_gpl+ata_cable_ignore", align 4
@__kstrtab_ata_cable_sata = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_cable_sata = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_cable_sata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_cable_sata to i32), ptr @__kstrtab_ata_cable_sata, ptr @__kstrtabns_ata_cable_sata }, section "___ksymtab_gpl+ata_cable_sata", align 4
@__kstrtab_ata_dev_pair = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_dev_pair = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_dev_pair = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_dev_pair to i32), ptr @__kstrtab_ata_dev_pair, ptr @__kstrtabns_ata_dev_pair }, section "___ksymtab_gpl+ata_dev_pair", align 4
@.str.63 = private unnamed_addr constant [46 x i8] c"\014ata%u.%02u: limiting SATA link speed to %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"\014ata%u: limiting SATA link speed to %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.67 = private unnamed_addr constant [36 x i8] c"\014ata%u.%02u: limiting speed to %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"\014ata%u.%02u: no PIO support\0A\00", align 1
@__kstrtab_ata_do_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_do_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_do_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_do_set_mode to i32), ptr @__kstrtab_ata_do_set_mode, ptr @__kstrtabns_ata_do_set_mode }, section "___ksymtab_gpl+ata_do_set_mode", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.69 = private unnamed_addr constant [69 x i8] c"\014ata%u.%02u: link is slow to respond, please be patient (ready=%d)\0A\00", align 1
@.str.70 = private unnamed_addr constant [64 x i8] c"\014ata%u: link is slow to respond, please be patient (ready=%d)\0A\00", align 1
@__kstrtab_ata_wait_after_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_wait_after_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_wait_after_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_wait_after_reset to i32), ptr @__kstrtab_ata_wait_after_reset, ptr @__kstrtabns_ata_wait_after_reset }, section "___ksymtab_gpl+ata_wait_after_reset", align 4
@.str.71 = private unnamed_addr constant [58 x i8] c"\014ata%u.%02u: failed to resume link for reset (errno=%d)\0A\00", align 1
@.str.72 = private unnamed_addr constant [53 x i8] c"\014ata%u: failed to resume link for reset (errno=%d)\0A\00", align 1
@__kstrtab_ata_std_prereset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_std_prereset = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_std_prereset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_std_prereset to i32), ptr @__kstrtab_ata_std_prereset, ptr @__kstrtabns_ata_std_prereset }, section "___ksymtab_gpl+ata_std_prereset", align 4
@__kstrtab_sata_std_hardreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_std_hardreset = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_std_hardreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_std_hardreset to i32), ptr @__kstrtab_sata_std_hardreset, ptr @__kstrtabns_sata_std_hardreset }, section "___ksymtab_gpl+sata_std_hardreset", align 4
@__kstrtab_ata_std_postreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_std_postreset = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_std_postreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_std_postreset to i32), ptr @__kstrtab_ata_std_postreset, ptr @__kstrtabns_ata_std_postreset }, section "___ksymtab_gpl+ata_std_postreset", align 4
@.str.73 = private unnamed_addr constant [39 x i8] c"\016ata%u.%02u: class mismatch %u != %u\0A\00", align 1
@.str.74 = private unnamed_addr constant [47 x i8] c"\014ata%u.%02u: n_sectors mismatch %llu != %llu\0A\00", align 1
@.str.75 = private unnamed_addr constant [89 x i8] c"\014ata%u.%02u: new n_sectors matches native, probably late HPA unlock, n_sectors updated\0A\00", align 1
@.str.76 = private unnamed_addr constant [92 x i8] c"\014ata%u.%02u: old n_sectors matches native, probably late HPA lock, will try to unlock HPA\0A\00", align 1
@.str.77 = private unnamed_addr constant [46 x i8] c"\013ata%u.%02u: revalidation failed (errno=%d)\0A\00", align 1
@__kstrtab_ata_dev_set_feature = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_dev_set_feature = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_dev_set_feature = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_dev_set_feature to i32), ptr @__kstrtab_ata_dev_set_feature, ptr @__kstrtabns_ata_dev_set_feature }, section "___ksymtab_gpl+ata_dev_set_feature", align 4
@__kstrtab_ata_std_qc_defer = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_std_qc_defer = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_std_qc_defer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_std_qc_defer to i32), ptr @__kstrtab_ata_std_qc_defer, ptr @__kstrtabns_ata_std_qc_defer }, section "___ksymtab_gpl+ata_std_qc_defer", align 4
@__kstrtab_ata_noop_qc_prep = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_noop_qc_prep = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_noop_qc_prep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_noop_qc_prep to i32), ptr @__kstrtab_ata_noop_qc_prep, ptr @__kstrtabns_ata_noop_qc_prep }, section "___ksymtab_gpl+ata_noop_qc_prep", align 4
@ata_qc_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ata_qc_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__ata_qc_complete.__already_done.78 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ata_qc_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ata_qc_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_qc_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_qc_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_qc_complete to i32), ptr @__kstrtab_ata_qc_complete, ptr @__kstrtabns_ata_qc_complete }, section "___ksymtab_gpl+ata_qc_complete", align 4
@__kstrtab_ata_qc_get_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_qc_get_active = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_qc_get_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_qc_get_active to i32), ptr @__kstrtab_ata_qc_get_active, ptr @__kstrtabns_ata_qc_get_active }, section "___ksymtab_gpl+ata_qc_get_active", align 4
@ata_qc_issue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ata_qc_issue.__already_done.79 = internal unnamed_addr global i1 false, section ".data.once", align 1
@ata_qc_issue.__already_done.80 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"waking up from sleep\00", align 1
@__kstrtab_ata_link_online = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_link_online = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_link_online = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_link_online to i32), ptr @__kstrtab_ata_link_online, ptr @__kstrtabns_ata_link_online }, section "___ksymtab_gpl+ata_link_online", align 4
@__kstrtab_ata_link_offline = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_link_offline = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_link_offline = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_link_offline to i32), ptr @__kstrtab_ata_link_offline, ptr @__kstrtabns_ata_link_offline }, section "___ksymtab_gpl+ata_link_offline", align 4
@__kstrtab_ata_sas_port_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_port_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_port_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_port_suspend to i32), ptr @__kstrtab_ata_sas_port_suspend, ptr @__kstrtabns_ata_sas_port_suspend }, section "___ksymtab_gpl+ata_sas_port_suspend", align 4
@__kstrtab_ata_sas_port_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_port_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_port_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_port_resume to i32), ptr @__kstrtab_ata_sas_port_resume, ptr @__kstrtabns_ata_sas_port_resume }, section "___ksymtab_gpl+ata_sas_port_resume", align 4
@__kstrtab_ata_host_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_suspend to i32), ptr @__kstrtab_ata_host_suspend, ptr @__kstrtabns_ata_host_suspend }, section "___ksymtab_gpl+ata_host_suspend", align 4
@__kstrtab_ata_host_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_resume to i32), ptr @__kstrtab_ata_host_resume, ptr @__kstrtabns_ata_host_resume }, section "___ksymtab_gpl+ata_host_resume", align 4
@.str.82 = private unnamed_addr constant [9 x i8] c"ata_port\00", align 1
@ata_port_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @ata_port_pm_suspend, ptr @ata_port_pm_resume, ptr @ata_port_pm_freeze, ptr @ata_port_pm_resume, ptr @ata_port_pm_poweroff, ptr @ata_port_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_port_runtime_suspend, ptr @ata_port_runtime_resume, ptr @ata_port_runtime_idle }, align 4
@ata_port_type = dso_local local_unnamed_addr constant %struct.device_type { ptr @.str.82, ptr null, ptr null, ptr null, ptr null, ptr @ata_port_pm_ops }, align 4
@ata_port_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"&ap->scsi_scan_mutex\00", align 1
@ata_port_alloc.__key.84 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"&ap->eh_wait_q\00", align 1
@__kstrtab_ata_host_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_put to i32), ptr @__kstrtab_ata_host_put, ptr @__kstrtabns_ata_host_put }, section "___ksymtab_gpl+ata_host_put", align 4
@.str.86 = private unnamed_addr constant [19 x i8] c"ata_devres_release\00", align 1
@ata_host_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"&host->eh_mutex\00", align 1
@__kstrtab_ata_host_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_alloc to i32), ptr @__kstrtab_ata_host_alloc, ptr @__kstrtabns_ata_host_alloc }, section "___ksymtab_gpl+ata_host_alloc", align 4
@ata_dummy_port_ops = dso_local global %struct.ata_port_operations { ptr null, ptr null, ptr @ata_noop_qc_prep, ptr @ata_dummy_qc_issue, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_dummy_error_handler, ptr null, ptr null, ptr @ata_std_sched_eh, ptr @ata_std_end_eh, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_ata_host_alloc_pinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_alloc_pinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_alloc_pinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_alloc_pinfo to i32), ptr @__kstrtab_ata_host_alloc_pinfo, ptr @__kstrtabns_ata_host_alloc_pinfo }, section "___ksymtab_gpl+ata_host_alloc_pinfo", align 4
@.str.88 = private unnamed_addr constant [14 x i8] c"ata_host_stop\00", align 1
@.str.89 = private unnamed_addr constant [36 x i8] c"failed to start port %d (errno=%d)\0A\00", align 1
@__kstrtab_ata_host_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_start = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_start to i32), ptr @__kstrtab_ata_host_start, ptr @__kstrtabns_ata_host_start }, section "___ksymtab_gpl+ata_host_start", align 4
@ata_host_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@__kstrtab_ata_host_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_init to i32), ptr @__kstrtab_ata_host_init, ptr @__kstrtabns_ata_host_init }, section "___ksymtab_gpl+ata_host_init", align 4
@.str.90 = private unnamed_addr constant [40 x i8] c"BUG: trying to register unstarted host\0A\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"\016ata%u: %cATA max %s %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"\016ata%u: DUMMY\0A\00", align 1
@__kstrtab_ata_host_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_register to i32), ptr @__kstrtab_ata_host_register, ptr @__kstrtabns_ata_host_register }, section "___ksymtab_gpl+ata_host_register", align 4
@.str.93 = private unnamed_addr constant [7 x i8] c"%s[%s]\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"irq %d\00", align 1
@__kstrtab_ata_host_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_activate to i32), ptr @__kstrtab_ata_host_activate, ptr @__kstrtabns_ata_host_activate }, section "___ksymtab_gpl+ata_host_activate", align 4
@__kstrtab_ata_host_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_host_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_host_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_host_detach to i32), ptr @__kstrtab_ata_host_detach, ptr @__kstrtabns_ata_host_detach }, section "___ksymtab_gpl+ata_host_detach", align 4
@__kstrtab_ata_pci_remove_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_remove_one = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_remove_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_remove_one to i32), ptr @__kstrtab_ata_pci_remove_one, ptr @__kstrtabns_ata_pci_remove_one }, section "___ksymtab_gpl+ata_pci_remove_one", align 4
@__kstrtab_ata_pci_shutdown_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_shutdown_one = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_shutdown_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_shutdown_one to i32), ptr @__kstrtab_ata_pci_shutdown_one, ptr @__kstrtabns_ata_pci_shutdown_one }, section "___ksymtab_gpl+ata_pci_shutdown_one", align 4
@__kstrtab_pci_test_config_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_test_config_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_test_config_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_test_config_bits to i32), ptr @__kstrtab_pci_test_config_bits, ptr @__kstrtabns_pci_test_config_bits }, section "___ksymtab_gpl+pci_test_config_bits", align 4
@__kstrtab_ata_pci_device_do_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_device_do_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_device_do_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_device_do_suspend to i32), ptr @__kstrtab_ata_pci_device_do_suspend, ptr @__kstrtabns_ata_pci_device_do_suspend }, section "___ksymtab_gpl+ata_pci_device_do_suspend", align 4
@.str.95 = private unnamed_addr constant [43 x i8] c"failed to enable device after resume (%d)\0A\00", align 1
@__kstrtab_ata_pci_device_do_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_device_do_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_device_do_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_device_do_resume to i32), ptr @__kstrtab_ata_pci_device_do_resume, ptr @__kstrtabns_ata_pci_device_do_resume }, section "___ksymtab_gpl+ata_pci_device_do_resume", align 4
@__kstrtab_ata_pci_device_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_device_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_device_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_device_suspend to i32), ptr @__kstrtab_ata_pci_device_suspend, ptr @__kstrtabns_ata_pci_device_suspend }, section "___ksymtab_gpl+ata_pci_device_suspend", align 4
@__kstrtab_ata_pci_device_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_pci_device_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_pci_device_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_pci_device_resume to i32), ptr @__kstrtab_ata_pci_device_resume, ptr @__kstrtabns_ata_pci_device_resume }, section "___ksymtab_gpl+ata_pci_device_resume", align 4
@__kstrtab_ata_platform_remove_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_platform_remove_one = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_platform_remove_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_platform_remove_one to i32), ptr @__kstrtab_ata_platform_remove_one, ptr @__kstrtabns_ata_platform_remove_one }, section "___ksymtab_gpl+ata_platform_remove_one", align 4
@ata_scsi_transport_template = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_libata__504_6375_ata_init4 = internal global ptr @ata_init, section ".initcall4.init", align 4
@__exitcall_ata_exit = internal global ptr @ata_exit, section ".exitcall.exit", align 4
@ratelimit = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 20, i32 1, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.ata_ratelimit = private unnamed_addr constant [14 x i8] c"ata_ratelimit\00", align 1
@__kstrtab_ata_ratelimit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_ratelimit = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_ratelimit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_ratelimit to i32), ptr @__kstrtab_ata_ratelimit, ptr @__kstrtabns_ata_ratelimit }, section "___ksymtab_gpl+ata_ratelimit", align 4
@__kstrtab_ata_msleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_msleep = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_msleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_msleep to i32), ptr @__kstrtab_ata_msleep, ptr @__kstrtabns_ata_msleep }, section "___ksymtab_gpl+ata_msleep", align 4
@__kstrtab_ata_wait_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_wait_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_wait_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_wait_register to i32), ptr @__kstrtab_ata_wait_register, ptr @__kstrtabns_ata_wait_register }, section "___ksymtab_gpl+ata_wait_register", align 4
@__kstrtab_ata_dummy_port_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_dummy_port_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_dummy_port_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_dummy_port_ops to i32), ptr @__kstrtab_ata_dummy_port_ops, ptr @__kstrtabns_ata_dummy_port_ops }, section "___ksymtab_gpl+ata_dummy_port_ops", align 4
@ata_dummy_port_info = dso_local constant %struct.ata_port_info { i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ata_dummy_port_ops, ptr null }, align 4
@__kstrtab_ata_dummy_port_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_dummy_port_info = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_dummy_port_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_dummy_port_info to i32), ptr @__kstrtab_ata_dummy_port_info, ptr @__kstrtabns_ata_dummy_port_info }, section "___ksymtab_gpl+ata_dummy_port_info", align 4
@.str.96 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"version %s\0A\00", align 1
@__kstrtab_ata_print_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_print_version = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_print_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_print_version to i32), ptr @__kstrtab_ata_print_version, ptr @__kstrtabns_ata_print_version }, section "___ksymtab+ata_print_version", align 4
@__kstrtab___tracepoint_ata_tf_load = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_ata_tf_load = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_ata_tf_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_ata_tf_load to i32), ptr @__kstrtab___tracepoint_ata_tf_load, ptr @__kstrtabns___tracepoint_ata_tf_load }, section "___ksymtab_gpl+__tracepoint_ata_tf_load", align 4
@__kstrtab___traceiter_ata_tf_load = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_ata_tf_load = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_ata_tf_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_ata_tf_load to i32), ptr @__kstrtab___traceiter_ata_tf_load, ptr @__kstrtabns___traceiter_ata_tf_load }, section "___ksymtab_gpl+__traceiter_ata_tf_load", align 4
@__kstrtab___SCK__tp_func_ata_tf_load = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_ata_tf_load = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_ata_tf_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_ata_tf_load to i32), ptr @__kstrtab___SCK__tp_func_ata_tf_load, ptr @__kstrtabns___SCK__tp_func_ata_tf_load }, section "___ksymtab_gpl+__SCK__tp_func_ata_tf_load", align 4
@__kstrtab___tracepoint_ata_exec_command = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_ata_exec_command = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_ata_exec_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_ata_exec_command to i32), ptr @__kstrtab___tracepoint_ata_exec_command, ptr @__kstrtabns___tracepoint_ata_exec_command }, section "___ksymtab_gpl+__tracepoint_ata_exec_command", align 4
@__kstrtab___traceiter_ata_exec_command = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_ata_exec_command = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_ata_exec_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_ata_exec_command to i32), ptr @__kstrtab___traceiter_ata_exec_command, ptr @__kstrtabns___traceiter_ata_exec_command }, section "___ksymtab_gpl+__traceiter_ata_exec_command", align 4
@__kstrtab___SCK__tp_func_ata_exec_command = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_ata_exec_command = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_ata_exec_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_ata_exec_command to i32), ptr @__kstrtab___SCK__tp_func_ata_exec_command, ptr @__kstrtabns___SCK__tp_func_ata_exec_command }, section "___ksymtab_gpl+__SCK__tp_func_ata_exec_command", align 4
@__kstrtab___tracepoint_ata_bmdma_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_ata_bmdma_setup = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_ata_bmdma_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_ata_bmdma_setup to i32), ptr @__kstrtab___tracepoint_ata_bmdma_setup, ptr @__kstrtabns___tracepoint_ata_bmdma_setup }, section "___ksymtab_gpl+__tracepoint_ata_bmdma_setup", align 4
@__kstrtab___traceiter_ata_bmdma_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_ata_bmdma_setup = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_ata_bmdma_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_ata_bmdma_setup to i32), ptr @__kstrtab___traceiter_ata_bmdma_setup, ptr @__kstrtabns___traceiter_ata_bmdma_setup }, section "___ksymtab_gpl+__traceiter_ata_bmdma_setup", align 4
@__kstrtab___SCK__tp_func_ata_bmdma_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_ata_bmdma_setup = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_ata_bmdma_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_ata_bmdma_setup to i32), ptr @__kstrtab___SCK__tp_func_ata_bmdma_setup, ptr @__kstrtabns___SCK__tp_func_ata_bmdma_setup }, section "___ksymtab_gpl+__SCK__tp_func_ata_bmdma_setup", align 4
@__kstrtab___tracepoint_ata_bmdma_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_ata_bmdma_start = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_ata_bmdma_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_ata_bmdma_start to i32), ptr @__kstrtab___tracepoint_ata_bmdma_start, ptr @__kstrtabns___tracepoint_ata_bmdma_start }, section "___ksymtab_gpl+__tracepoint_ata_bmdma_start", align 4
@__kstrtab___traceiter_ata_bmdma_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_ata_bmdma_start = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_ata_bmdma_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_ata_bmdma_start to i32), ptr @__kstrtab___traceiter_ata_bmdma_start, ptr @__kstrtabns___traceiter_ata_bmdma_start }, section "___ksymtab_gpl+__traceiter_ata_bmdma_start", align 4
@__kstrtab___SCK__tp_func_ata_bmdma_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_ata_bmdma_start = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_ata_bmdma_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_ata_bmdma_start to i32), ptr @__kstrtab___SCK__tp_func_ata_bmdma_start, ptr @__kstrtabns___SCK__tp_func_ata_bmdma_start }, section "___ksymtab_gpl+__SCK__tp_func_ata_bmdma_start", align 4
@__kstrtab___tracepoint_ata_bmdma_status = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_ata_bmdma_status = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_ata_bmdma_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_ata_bmdma_status to i32), ptr @__kstrtab___tracepoint_ata_bmdma_status, ptr @__kstrtabns___tracepoint_ata_bmdma_status }, section "___ksymtab_gpl+__tracepoint_ata_bmdma_status", align 4
@__kstrtab___traceiter_ata_bmdma_status = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_ata_bmdma_status = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_ata_bmdma_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_ata_bmdma_status to i32), ptr @__kstrtab___traceiter_ata_bmdma_status, ptr @__kstrtabns___traceiter_ata_bmdma_status }, section "___ksymtab_gpl+__traceiter_ata_bmdma_status", align 4
@__kstrtab___SCK__tp_func_ata_bmdma_status = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_ata_bmdma_status = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_ata_bmdma_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_ata_bmdma_status to i32), ptr @__kstrtab___SCK__tp_func_ata_bmdma_status, ptr @__kstrtabns___SCK__tp_func_ata_bmdma_status }, section "___ksymtab_gpl+__SCK__tp_func_ata_bmdma_status", align 4
@.str.98 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"ata_dev\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"lbal\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"lbam\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"lbah\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"nsect\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"feature\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"hob_lbal\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"hob_lbam\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"hob_lbah\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"hob_nsect\00", align 1
@.str.113 = private unnamed_addr constant [12 x i8] c"hob_feature\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.118 = private unnamed_addr constant [115 x i8] c"ata_port=%u ata_dev=%u tag=%d proto=%s cmd=%s%s  tf=(%02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x)\0A\00", align 1
@trace_raw_output_ata_qc_issue_template.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 255, ptr @.str.119 }, %struct.trace_print_flags { i32 0, ptr @.str.120 }, %struct.trace_print_flags { i32 1, ptr @.str.121 }, %struct.trace_print_flags { i32 2, ptr @.str.122 }, %struct.trace_print_flags { i32 6, ptr @.str.123 }, %struct.trace_print_flags { i32 4, ptr @.str.124 }, %struct.trace_print_flags { i32 8, ptr @.str.125 }, %struct.trace_print_flags { i32 9, ptr @.str.126 }, %struct.trace_print_flags { i32 10, ptr @.str.127 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.119 = private unnamed_addr constant [17 x i8] c"ATA_PROT_UNKNOWN\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"ATA_PROT_NODATA\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"ATA_PROT_PIO\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"ATA_PROT_DMA\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"ATA_PROT_NCQ\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"ATA_PROT_NCQ_NODATA\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"ATAPI_PROT_NODATA\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"ATAPI_PROT_PIO\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"ATAPI_PROT_DMA\00", align 1
@trace_raw_output_ata_qc_issue_template.symbols.128 = internal constant [94 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 8, ptr @.str.129 }, %struct.trace_print_flags { i32 229, ptr @.str.130 }, %struct.trace_print_flags { i32 226, ptr @.str.131 }, %struct.trace_print_flags { i32 227, ptr @.str.132 }, %struct.trace_print_flags { i32 144, ptr @.str.133 }, %struct.trace_print_flags { i32 146, ptr @.str.134 }, %struct.trace_print_flags { i32 147, ptr @.str.135 }, %struct.trace_print_flags { i32 0, ptr @.str.136 }, %struct.trace_print_flags { i32 231, ptr @.str.137 }, %struct.trace_print_flags { i32 234, ptr @.str.138 }, %struct.trace_print_flags { i32 236, ptr @.str.139 }, %struct.trace_print_flags { i32 161, ptr @.str.140 }, %struct.trace_print_flags { i32 162, ptr @.str.141 }, %struct.trace_print_flags { i32 200, ptr @.str.142 }, %struct.trace_print_flags { i32 37, ptr @.str.143 }, %struct.trace_print_flags { i32 38, ptr @.str.144 }, %struct.trace_print_flags { i32 43, ptr @.str.145 }, %struct.trace_print_flags { i32 42, ptr @.str.146 }, %struct.trace_print_flags { i32 202, ptr @.str.147 }, %struct.trace_print_flags { i32 53, ptr @.str.148 }, %struct.trace_print_flags { i32 54, ptr @.str.149 }, %struct.trace_print_flags { i32 59, ptr @.str.150 }, %struct.trace_print_flags { i32 58, ptr @.str.151 }, %struct.trace_print_flags { i32 61, ptr @.str.152 }, %struct.trace_print_flags { i32 62, ptr @.str.153 }, %struct.trace_print_flags { i32 96, ptr @.str.154 }, %struct.trace_print_flags { i32 97, ptr @.str.155 }, %struct.trace_print_flags { i32 99, ptr @.str.156 }, %struct.trace_print_flags { i32 100, ptr @.str.157 }, %struct.trace_print_flags { i32 101, ptr @.str.158 }, %struct.trace_print_flags { i32 32, ptr @.str.159 }, %struct.trace_print_flags { i32 36, ptr @.str.160 }, %struct.trace_print_flags { i32 48, ptr @.str.161 }, %struct.trace_print_flags { i32 52, ptr @.str.162 }, %struct.trace_print_flags { i32 196, ptr @.str.163 }, %struct.trace_print_flags { i32 41, ptr @.str.164 }, %struct.trace_print_flags { i32 197, ptr @.str.165 }, %struct.trace_print_flags { i32 57, ptr @.str.166 }, %struct.trace_print_flags { i32 206, ptr @.str.167 }, %struct.trace_print_flags { i32 239, ptr @.str.168 }, %struct.trace_print_flags { i32 198, ptr @.str.169 }, %struct.trace_print_flags { i32 160, ptr @.str.170 }, %struct.trace_print_flags { i32 64, ptr @.str.171 }, %struct.trace_print_flags { i32 66, ptr @.str.172 }, %struct.trace_print_flags { i32 69, ptr @.str.173 }, %struct.trace_print_flags { i32 224, ptr @.str.174 }, %struct.trace_print_flags { i32 225, ptr @.str.175 }, %struct.trace_print_flags { i32 230, ptr @.str.176 }, %struct.trace_print_flags { i32 145, ptr @.str.177 }, %struct.trace_print_flags { i32 248, ptr @.str.178 }, %struct.trace_print_flags { i32 39, ptr @.str.179 }, %struct.trace_print_flags { i32 249, ptr @.str.180 }, %struct.trace_print_flags { i32 55, ptr @.str.181 }, %struct.trace_print_flags { i32 47, ptr @.str.182 }, %struct.trace_print_flags { i32 63, ptr @.str.183 }, %struct.trace_print_flags { i32 71, ptr @.str.184 }, %struct.trace_print_flags { i32 87, ptr @.str.185 }, %struct.trace_print_flags { i32 91, ptr @.str.186 }, %struct.trace_print_flags { i32 92, ptr @.str.187 }, %struct.trace_print_flags { i32 93, ptr @.str.188 }, %struct.trace_print_flags { i32 94, ptr @.str.189 }, %struct.trace_print_flags { i32 95, ptr @.str.190 }, %struct.trace_print_flags { i32 228, ptr @.str.191 }, %struct.trace_print_flags { i32 233, ptr @.str.192 }, %struct.trace_print_flags { i32 232, ptr @.str.193 }, %struct.trace_print_flags { i32 235, ptr @.str.194 }, %struct.trace_print_flags { i32 177, ptr @.str.195 }, %struct.trace_print_flags { i32 241, ptr @.str.196 }, %struct.trace_print_flags { i32 242, ptr @.str.197 }, %struct.trace_print_flags { i32 243, ptr @.str.198 }, %struct.trace_print_flags { i32 244, ptr @.str.199 }, %struct.trace_print_flags { i32 245, ptr @.str.200 }, %struct.trace_print_flags { i32 246, ptr @.str.201 }, %struct.trace_print_flags { i32 81, ptr @.str.202 }, %struct.trace_print_flags { i32 176, ptr @.str.203 }, %struct.trace_print_flags { i32 222, ptr @.str.204 }, %struct.trace_print_flags { i32 223, ptr @.str.205 }, %struct.trace_print_flags { i32 6, ptr @.str.206 }, %struct.trace_print_flags { i32 209, ptr @.str.207 }, %struct.trace_print_flags { i32 3, ptr @.str.208 }, %struct.trace_print_flags { i32 56, ptr @.str.209 }, %struct.trace_print_flags { i32 135, ptr @.str.210 }, %struct.trace_print_flags { i32 192, ptr @.str.211 }, %struct.trace_print_flags { i32 205, ptr @.str.212 }, %struct.trace_print_flags { i32 11, ptr @.str.213 }, %struct.trace_print_flags { i32 180, ptr @.str.214 }, %struct.trace_print_flags { i32 74, ptr @.str.215 }, %struct.trace_print_flags { i32 159, ptr @.str.216 }, %struct.trace_print_flags { i32 16, ptr @.str.217 }, %struct.trace_print_flags { i32 34, ptr @.str.218 }, %struct.trace_print_flags { i32 35, ptr @.str.219 }, %struct.trace_print_flags { i32 50, ptr @.str.220 }, %struct.trace_print_flags { i32 51, ptr @.str.221 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.129 = private unnamed_addr constant [18 x i8] c"ATA_CMD_DEV_RESET\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"ATA_CMD_CHK_POWER\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"ATA_CMD_STANDBY\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"ATA_CMD_IDLE\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"ATA_CMD_EDD\00", align 1
@.str.134 = private unnamed_addr constant [23 x i8] c"ATA_CMD_DOWNLOAD_MICRO\00", align 1
@.str.135 = private unnamed_addr constant [27 x i8] c"ATA_CMD_DOWNLOAD_MICRO_DMA\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"ATA_CMD_NOP\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"ATA_CMD_FLUSH\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"ATA_CMD_FLUSH_EXT\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"ATA_CMD_ID_ATA\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"ATA_CMD_ID_ATAPI\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"ATA_CMD_SERVICE\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"ATA_CMD_READ\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"ATA_CMD_READ_EXT\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"ATA_CMD_READ_QUEUED\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"ATA_CMD_READ_STREAM_EXT\00", align 1
@.str.146 = private unnamed_addr constant [28 x i8] c"ATA_CMD_READ_STREAM_DMA_EXT\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"ATA_CMD_WRITE\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"ATA_CMD_WRITE_EXT\00", align 1
@.str.149 = private unnamed_addr constant [21 x i8] c"ATA_CMD_WRITE_QUEUED\00", align 1
@.str.150 = private unnamed_addr constant [25 x i8] c"ATA_CMD_WRITE_STREAM_EXT\00", align 1
@.str.151 = private unnamed_addr constant [29 x i8] c"ATA_CMD_WRITE_STREAM_DMA_EXT\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"ATA_CMD_WRITE_FUA_EXT\00", align 1
@.str.153 = private unnamed_addr constant [29 x i8] c"ATA_CMD_WRITE_QUEUED_FUA_EXT\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"ATA_CMD_FPDMA_READ\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"ATA_CMD_FPDMA_WRITE\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c"ATA_CMD_NCQ_NON_DATA\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"ATA_CMD_FPDMA_SEND\00", align 1
@.str.158 = private unnamed_addr constant [19 x i8] c"ATA_CMD_FPDMA_RECV\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"ATA_CMD_PIO_READ\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"ATA_CMD_PIO_READ_EXT\00", align 1
@.str.161 = private unnamed_addr constant [18 x i8] c"ATA_CMD_PIO_WRITE\00", align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"ATA_CMD_PIO_WRITE_EXT\00", align 1
@.str.163 = private unnamed_addr constant [19 x i8] c"ATA_CMD_READ_MULTI\00", align 1
@.str.164 = private unnamed_addr constant [23 x i8] c"ATA_CMD_READ_MULTI_EXT\00", align 1
@.str.165 = private unnamed_addr constant [20 x i8] c"ATA_CMD_WRITE_MULTI\00", align 1
@.str.166 = private unnamed_addr constant [24 x i8] c"ATA_CMD_WRITE_MULTI_EXT\00", align 1
@.str.167 = private unnamed_addr constant [28 x i8] c"ATA_CMD_WRITE_MULTI_FUA_EXT\00", align 1
@.str.168 = private unnamed_addr constant [21 x i8] c"ATA_CMD_SET_FEATURES\00", align 1
@.str.169 = private unnamed_addr constant [18 x i8] c"ATA_CMD_SET_MULTI\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"ATA_CMD_PACKET\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"ATA_CMD_VERIFY\00", align 1
@.str.172 = private unnamed_addr constant [19 x i8] c"ATA_CMD_VERIFY_EXT\00", align 1
@.str.173 = private unnamed_addr constant [25 x i8] c"ATA_CMD_WRITE_UNCORR_EXT\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"ATA_CMD_STANDBYNOW1\00", align 1
@.str.175 = private unnamed_addr constant [22 x i8] c"ATA_CMD_IDLEIMMEDIATE\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"ATA_CMD_SLEEP\00", align 1
@.str.177 = private unnamed_addr constant [24 x i8] c"ATA_CMD_INIT_DEV_PARAMS\00", align 1
@.str.178 = private unnamed_addr constant [24 x i8] c"ATA_CMD_READ_NATIVE_MAX\00", align 1
@.str.179 = private unnamed_addr constant [28 x i8] c"ATA_CMD_READ_NATIVE_MAX_EXT\00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"ATA_CMD_SET_MAX\00", align 1
@.str.181 = private unnamed_addr constant [20 x i8] c"ATA_CMD_SET_MAX_EXT\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"ATA_CMD_READ_LOG_EXT\00", align 1
@.str.183 = private unnamed_addr constant [22 x i8] c"ATA_CMD_WRITE_LOG_EXT\00", align 1
@.str.184 = private unnamed_addr constant [25 x i8] c"ATA_CMD_READ_LOG_DMA_EXT\00", align 1
@.str.185 = private unnamed_addr constant [26 x i8] c"ATA_CMD_WRITE_LOG_DMA_EXT\00", align 1
@.str.186 = private unnamed_addr constant [24 x i8] c"ATA_CMD_TRUSTED_NONDATA\00", align 1
@.str.187 = private unnamed_addr constant [20 x i8] c"ATA_CMD_TRUSTED_RCV\00", align 1
@.str.188 = private unnamed_addr constant [24 x i8] c"ATA_CMD_TRUSTED_RCV_DMA\00", align 1
@.str.189 = private unnamed_addr constant [20 x i8] c"ATA_CMD_TRUSTED_SND\00", align 1
@.str.190 = private unnamed_addr constant [24 x i8] c"ATA_CMD_TRUSTED_SND_DMA\00", align 1
@.str.191 = private unnamed_addr constant [17 x i8] c"ATA_CMD_PMP_READ\00", align 1
@.str.192 = private unnamed_addr constant [21 x i8] c"ATA_CMD_PMP_READ_DMA\00", align 1
@.str.193 = private unnamed_addr constant [18 x i8] c"ATA_CMD_PMP_WRITE\00", align 1
@.str.194 = private unnamed_addr constant [22 x i8] c"ATA_CMD_PMP_WRITE_DMA\00", align 1
@.str.195 = private unnamed_addr constant [21 x i8] c"ATA_CMD_CONF_OVERLAY\00", align 1
@.str.196 = private unnamed_addr constant [21 x i8] c"ATA_CMD_SEC_SET_PASS\00", align 1
@.str.197 = private unnamed_addr constant [19 x i8] c"ATA_CMD_SEC_UNLOCK\00", align 1
@.str.198 = private unnamed_addr constant [23 x i8] c"ATA_CMD_SEC_ERASE_PREP\00", align 1
@.str.199 = private unnamed_addr constant [23 x i8] c"ATA_CMD_SEC_ERASE_UNIT\00", align 1
@.str.200 = private unnamed_addr constant [24 x i8] c"ATA_CMD_SEC_FREEZE_LOCK\00", align 1
@.str.201 = private unnamed_addr constant [25 x i8] c"ATA_CMD_SEC_DISABLE_PASS\00", align 1
@.str.202 = private unnamed_addr constant [22 x i8] c"ATA_CMD_CONFIG_STREAM\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"ATA_CMD_SMART\00", align 1
@.str.204 = private unnamed_addr constant [19 x i8] c"ATA_CMD_MEDIA_LOCK\00", align 1
@.str.205 = private unnamed_addr constant [21 x i8] c"ATA_CMD_MEDIA_UNLOCK\00", align 1
@.str.206 = private unnamed_addr constant [12 x i8] c"ATA_CMD_DSM\00", align 1
@.str.207 = private unnamed_addr constant [24 x i8] c"ATA_CMD_CHK_MED_CRD_TYP\00", align 1
@.str.208 = private unnamed_addr constant [24 x i8] c"ATA_CMD_CFA_REQ_EXT_ERR\00", align 1
@.str.209 = private unnamed_addr constant [21 x i8] c"ATA_CMD_CFA_WRITE_NE\00", align 1
@.str.210 = private unnamed_addr constant [23 x i8] c"ATA_CMD_CFA_TRANS_SECT\00", align 1
@.str.211 = private unnamed_addr constant [18 x i8] c"ATA_CMD_CFA_ERASE\00", align 1
@.str.212 = private unnamed_addr constant [26 x i8] c"ATA_CMD_CFA_WRITE_MULT_NE\00", align 1
@.str.213 = private unnamed_addr constant [23 x i8] c"ATA_CMD_REQ_SENSE_DATA\00", align 1
@.str.214 = private unnamed_addr constant [24 x i8] c"ATA_CMD_SANITIZE_DEVICE\00", align 1
@.str.215 = private unnamed_addr constant [20 x i8] c"ATA_CMD_ZAC_MGMT_IN\00", align 1
@.str.216 = private unnamed_addr constant [21 x i8] c"ATA_CMD_ZAC_MGMT_OUT\00", align 1
@.str.217 = private unnamed_addr constant [16 x i8] c"ATA_CMD_RESTORE\00", align 1
@.str.218 = private unnamed_addr constant [18 x i8] c"ATA_CMD_READ_LONG\00", align 1
@.str.219 = private unnamed_addr constant [23 x i8] c"ATA_CMD_READ_LONG_ONCE\00", align 1
@.str.220 = private unnamed_addr constant [19 x i8] c"ATA_CMD_WRITE_LONG\00", align 1
@.str.221 = private unnamed_addr constant [24 x i8] c"ATA_CMD_WRITE_LONG_ONCE\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.224 = private unnamed_addr constant [117 x i8] c"ata_port=%u ata_dev=%u tag=%d flags=%s status=%s  res=(%02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x)\0A\00", align 1
@.str.225 = private unnamed_addr constant [97 x i8] c"ata_port=%u proto=%s cmd=%s%s  tf=(%02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x)\0A\00", align 1
@trace_raw_output_ata_tf_load.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 255, ptr @.str.119 }, %struct.trace_print_flags { i32 0, ptr @.str.120 }, %struct.trace_print_flags { i32 1, ptr @.str.121 }, %struct.trace_print_flags { i32 2, ptr @.str.122 }, %struct.trace_print_flags { i32 6, ptr @.str.123 }, %struct.trace_print_flags { i32 4, ptr @.str.124 }, %struct.trace_print_flags { i32 8, ptr @.str.125 }, %struct.trace_print_flags { i32 9, ptr @.str.126 }, %struct.trace_print_flags { i32 10, ptr @.str.127 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_ata_tf_load.symbols.226 = internal constant [94 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 8, ptr @.str.129 }, %struct.trace_print_flags { i32 229, ptr @.str.130 }, %struct.trace_print_flags { i32 226, ptr @.str.131 }, %struct.trace_print_flags { i32 227, ptr @.str.132 }, %struct.trace_print_flags { i32 144, ptr @.str.133 }, %struct.trace_print_flags { i32 146, ptr @.str.134 }, %struct.trace_print_flags { i32 147, ptr @.str.135 }, %struct.trace_print_flags { i32 0, ptr @.str.136 }, %struct.trace_print_flags { i32 231, ptr @.str.137 }, %struct.trace_print_flags { i32 234, ptr @.str.138 }, %struct.trace_print_flags { i32 236, ptr @.str.139 }, %struct.trace_print_flags { i32 161, ptr @.str.140 }, %struct.trace_print_flags { i32 162, ptr @.str.141 }, %struct.trace_print_flags { i32 200, ptr @.str.142 }, %struct.trace_print_flags { i32 37, ptr @.str.143 }, %struct.trace_print_flags { i32 38, ptr @.str.144 }, %struct.trace_print_flags { i32 43, ptr @.str.145 }, %struct.trace_print_flags { i32 42, ptr @.str.146 }, %struct.trace_print_flags { i32 202, ptr @.str.147 }, %struct.trace_print_flags { i32 53, ptr @.str.148 }, %struct.trace_print_flags { i32 54, ptr @.str.149 }, %struct.trace_print_flags { i32 59, ptr @.str.150 }, %struct.trace_print_flags { i32 58, ptr @.str.151 }, %struct.trace_print_flags { i32 61, ptr @.str.152 }, %struct.trace_print_flags { i32 62, ptr @.str.153 }, %struct.trace_print_flags { i32 96, ptr @.str.154 }, %struct.trace_print_flags { i32 97, ptr @.str.155 }, %struct.trace_print_flags { i32 99, ptr @.str.156 }, %struct.trace_print_flags { i32 100, ptr @.str.157 }, %struct.trace_print_flags { i32 101, ptr @.str.158 }, %struct.trace_print_flags { i32 32, ptr @.str.159 }, %struct.trace_print_flags { i32 36, ptr @.str.160 }, %struct.trace_print_flags { i32 48, ptr @.str.161 }, %struct.trace_print_flags { i32 52, ptr @.str.162 }, %struct.trace_print_flags { i32 196, ptr @.str.163 }, %struct.trace_print_flags { i32 41, ptr @.str.164 }, %struct.trace_print_flags { i32 197, ptr @.str.165 }, %struct.trace_print_flags { i32 57, ptr @.str.166 }, %struct.trace_print_flags { i32 206, ptr @.str.167 }, %struct.trace_print_flags { i32 239, ptr @.str.168 }, %struct.trace_print_flags { i32 198, ptr @.str.169 }, %struct.trace_print_flags { i32 160, ptr @.str.170 }, %struct.trace_print_flags { i32 64, ptr @.str.171 }, %struct.trace_print_flags { i32 66, ptr @.str.172 }, %struct.trace_print_flags { i32 69, ptr @.str.173 }, %struct.trace_print_flags { i32 224, ptr @.str.174 }, %struct.trace_print_flags { i32 225, ptr @.str.175 }, %struct.trace_print_flags { i32 230, ptr @.str.176 }, %struct.trace_print_flags { i32 145, ptr @.str.177 }, %struct.trace_print_flags { i32 248, ptr @.str.178 }, %struct.trace_print_flags { i32 39, ptr @.str.179 }, %struct.trace_print_flags { i32 249, ptr @.str.180 }, %struct.trace_print_flags { i32 55, ptr @.str.181 }, %struct.trace_print_flags { i32 47, ptr @.str.182 }, %struct.trace_print_flags { i32 63, ptr @.str.183 }, %struct.trace_print_flags { i32 71, ptr @.str.184 }, %struct.trace_print_flags { i32 87, ptr @.str.185 }, %struct.trace_print_flags { i32 91, ptr @.str.186 }, %struct.trace_print_flags { i32 92, ptr @.str.187 }, %struct.trace_print_flags { i32 93, ptr @.str.188 }, %struct.trace_print_flags { i32 94, ptr @.str.189 }, %struct.trace_print_flags { i32 95, ptr @.str.190 }, %struct.trace_print_flags { i32 228, ptr @.str.191 }, %struct.trace_print_flags { i32 233, ptr @.str.192 }, %struct.trace_print_flags { i32 232, ptr @.str.193 }, %struct.trace_print_flags { i32 235, ptr @.str.194 }, %struct.trace_print_flags { i32 177, ptr @.str.195 }, %struct.trace_print_flags { i32 241, ptr @.str.196 }, %struct.trace_print_flags { i32 242, ptr @.str.197 }, %struct.trace_print_flags { i32 243, ptr @.str.198 }, %struct.trace_print_flags { i32 244, ptr @.str.199 }, %struct.trace_print_flags { i32 245, ptr @.str.200 }, %struct.trace_print_flags { i32 246, ptr @.str.201 }, %struct.trace_print_flags { i32 81, ptr @.str.202 }, %struct.trace_print_flags { i32 176, ptr @.str.203 }, %struct.trace_print_flags { i32 222, ptr @.str.204 }, %struct.trace_print_flags { i32 223, ptr @.str.205 }, %struct.trace_print_flags { i32 6, ptr @.str.206 }, %struct.trace_print_flags { i32 209, ptr @.str.207 }, %struct.trace_print_flags { i32 3, ptr @.str.208 }, %struct.trace_print_flags { i32 56, ptr @.str.209 }, %struct.trace_print_flags { i32 135, ptr @.str.210 }, %struct.trace_print_flags { i32 192, ptr @.str.211 }, %struct.trace_print_flags { i32 205, ptr @.str.212 }, %struct.trace_print_flags { i32 11, ptr @.str.213 }, %struct.trace_print_flags { i32 180, ptr @.str.214 }, %struct.trace_print_flags { i32 74, ptr @.str.215 }, %struct.trace_print_flags { i32 159, ptr @.str.216 }, %struct.trace_print_flags { i32 16, ptr @.str.217 }, %struct.trace_print_flags { i32 34, ptr @.str.218 }, %struct.trace_print_flags { i32 35, ptr @.str.219 }, %struct.trace_print_flags { i32 50, ptr @.str.220 }, %struct.trace_print_flags { i32 51, ptr @.str.221 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.227 = private unnamed_addr constant [38 x i8] c"ata_port=%u tag=%d proto=%s cmd=%s%s\0A\00", align 1
@trace_raw_output_ata_exec_command_template.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 255, ptr @.str.119 }, %struct.trace_print_flags { i32 0, ptr @.str.120 }, %struct.trace_print_flags { i32 1, ptr @.str.121 }, %struct.trace_print_flags { i32 2, ptr @.str.122 }, %struct.trace_print_flags { i32 6, ptr @.str.123 }, %struct.trace_print_flags { i32 4, ptr @.str.124 }, %struct.trace_print_flags { i32 8, ptr @.str.125 }, %struct.trace_print_flags { i32 9, ptr @.str.126 }, %struct.trace_print_flags { i32 10, ptr @.str.127 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_ata_exec_command_template.symbols.228 = internal constant [94 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 8, ptr @.str.129 }, %struct.trace_print_flags { i32 229, ptr @.str.130 }, %struct.trace_print_flags { i32 226, ptr @.str.131 }, %struct.trace_print_flags { i32 227, ptr @.str.132 }, %struct.trace_print_flags { i32 144, ptr @.str.133 }, %struct.trace_print_flags { i32 146, ptr @.str.134 }, %struct.trace_print_flags { i32 147, ptr @.str.135 }, %struct.trace_print_flags { i32 0, ptr @.str.136 }, %struct.trace_print_flags { i32 231, ptr @.str.137 }, %struct.trace_print_flags { i32 234, ptr @.str.138 }, %struct.trace_print_flags { i32 236, ptr @.str.139 }, %struct.trace_print_flags { i32 161, ptr @.str.140 }, %struct.trace_print_flags { i32 162, ptr @.str.141 }, %struct.trace_print_flags { i32 200, ptr @.str.142 }, %struct.trace_print_flags { i32 37, ptr @.str.143 }, %struct.trace_print_flags { i32 38, ptr @.str.144 }, %struct.trace_print_flags { i32 43, ptr @.str.145 }, %struct.trace_print_flags { i32 42, ptr @.str.146 }, %struct.trace_print_flags { i32 202, ptr @.str.147 }, %struct.trace_print_flags { i32 53, ptr @.str.148 }, %struct.trace_print_flags { i32 54, ptr @.str.149 }, %struct.trace_print_flags { i32 59, ptr @.str.150 }, %struct.trace_print_flags { i32 58, ptr @.str.151 }, %struct.trace_print_flags { i32 61, ptr @.str.152 }, %struct.trace_print_flags { i32 62, ptr @.str.153 }, %struct.trace_print_flags { i32 96, ptr @.str.154 }, %struct.trace_print_flags { i32 97, ptr @.str.155 }, %struct.trace_print_flags { i32 99, ptr @.str.156 }, %struct.trace_print_flags { i32 100, ptr @.str.157 }, %struct.trace_print_flags { i32 101, ptr @.str.158 }, %struct.trace_print_flags { i32 32, ptr @.str.159 }, %struct.trace_print_flags { i32 36, ptr @.str.160 }, %struct.trace_print_flags { i32 48, ptr @.str.161 }, %struct.trace_print_flags { i32 52, ptr @.str.162 }, %struct.trace_print_flags { i32 196, ptr @.str.163 }, %struct.trace_print_flags { i32 41, ptr @.str.164 }, %struct.trace_print_flags { i32 197, ptr @.str.165 }, %struct.trace_print_flags { i32 57, ptr @.str.166 }, %struct.trace_print_flags { i32 206, ptr @.str.167 }, %struct.trace_print_flags { i32 239, ptr @.str.168 }, %struct.trace_print_flags { i32 198, ptr @.str.169 }, %struct.trace_print_flags { i32 160, ptr @.str.170 }, %struct.trace_print_flags { i32 64, ptr @.str.171 }, %struct.trace_print_flags { i32 66, ptr @.str.172 }, %struct.trace_print_flags { i32 69, ptr @.str.173 }, %struct.trace_print_flags { i32 224, ptr @.str.174 }, %struct.trace_print_flags { i32 225, ptr @.str.175 }, %struct.trace_print_flags { i32 230, ptr @.str.176 }, %struct.trace_print_flags { i32 145, ptr @.str.177 }, %struct.trace_print_flags { i32 248, ptr @.str.178 }, %struct.trace_print_flags { i32 39, ptr @.str.179 }, %struct.trace_print_flags { i32 249, ptr @.str.180 }, %struct.trace_print_flags { i32 55, ptr @.str.181 }, %struct.trace_print_flags { i32 47, ptr @.str.182 }, %struct.trace_print_flags { i32 63, ptr @.str.183 }, %struct.trace_print_flags { i32 71, ptr @.str.184 }, %struct.trace_print_flags { i32 87, ptr @.str.185 }, %struct.trace_print_flags { i32 91, ptr @.str.186 }, %struct.trace_print_flags { i32 92, ptr @.str.187 }, %struct.trace_print_flags { i32 93, ptr @.str.188 }, %struct.trace_print_flags { i32 94, ptr @.str.189 }, %struct.trace_print_flags { i32 95, ptr @.str.190 }, %struct.trace_print_flags { i32 228, ptr @.str.191 }, %struct.trace_print_flags { i32 233, ptr @.str.192 }, %struct.trace_print_flags { i32 232, ptr @.str.193 }, %struct.trace_print_flags { i32 235, ptr @.str.194 }, %struct.trace_print_flags { i32 177, ptr @.str.195 }, %struct.trace_print_flags { i32 241, ptr @.str.196 }, %struct.trace_print_flags { i32 242, ptr @.str.197 }, %struct.trace_print_flags { i32 243, ptr @.str.198 }, %struct.trace_print_flags { i32 244, ptr @.str.199 }, %struct.trace_print_flags { i32 245, ptr @.str.200 }, %struct.trace_print_flags { i32 246, ptr @.str.201 }, %struct.trace_print_flags { i32 81, ptr @.str.202 }, %struct.trace_print_flags { i32 176, ptr @.str.203 }, %struct.trace_print_flags { i32 222, ptr @.str.204 }, %struct.trace_print_flags { i32 223, ptr @.str.205 }, %struct.trace_print_flags { i32 6, ptr @.str.206 }, %struct.trace_print_flags { i32 209, ptr @.str.207 }, %struct.trace_print_flags { i32 3, ptr @.str.208 }, %struct.trace_print_flags { i32 56, ptr @.str.209 }, %struct.trace_print_flags { i32 135, ptr @.str.210 }, %struct.trace_print_flags { i32 192, ptr @.str.211 }, %struct.trace_print_flags { i32 205, ptr @.str.212 }, %struct.trace_print_flags { i32 11, ptr @.str.213 }, %struct.trace_print_flags { i32 180, ptr @.str.214 }, %struct.trace_print_flags { i32 74, ptr @.str.215 }, %struct.trace_print_flags { i32 159, ptr @.str.216 }, %struct.trace_print_flags { i32 16, ptr @.str.217 }, %struct.trace_print_flags { i32 34, ptr @.str.218 }, %struct.trace_print_flags { i32 35, ptr @.str.219 }, %struct.trace_print_flags { i32 50, ptr @.str.220 }, %struct.trace_print_flags { i32 51, ptr @.str.221 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.229 = private unnamed_addr constant [10 x i8] c"host_stat\00", align 1
@.str.230 = private unnamed_addr constant [26 x i8] c"ata_port=%u host_stat=%s\0A\00", align 1
@.str.231 = private unnamed_addr constant [10 x i8] c"eh_action\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"eh_err_mask\00", align 1
@.str.233 = private unnamed_addr constant [49 x i8] c"ata_port=%u ata_dev=%u eh_action=%s err_mask=%s\0A\00", align 1
@.str.234 = private unnamed_addr constant [9 x i8] c"qc_flags\00", align 1
@.str.235 = private unnamed_addr constant [52 x i8] c"ata_port=%u ata_dev=%u tag=%d flags=%s err_mask=%s\0A\00", align 1
@.str.236 = private unnamed_addr constant [37 x i8] c"ata_port=%u ata_dev=%u eh_action=%s\0A\00", align 1
@.str.237 = private unnamed_addr constant [16 x i8] c"unsigned int[2]\00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"deadline\00", align 1
@.str.240 = private unnamed_addr constant [42 x i8] c"ata_port=%u deadline=%lu classes=[%s,%s]\0A\00", align 1
@trace_raw_output_ata_link_reset_begin_template.symbols = internal constant [13 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.241 }, %struct.trace_print_flags { i32 1, ptr @.str.242 }, %struct.trace_print_flags { i32 2, ptr @.str.243 }, %struct.trace_print_flags { i32 3, ptr @.str.244 }, %struct.trace_print_flags { i32 4, ptr @.str.245 }, %struct.trace_print_flags { i32 5, ptr @.str.246 }, %struct.trace_print_flags { i32 6, ptr @.str.247 }, %struct.trace_print_flags { i32 7, ptr @.str.248 }, %struct.trace_print_flags { i32 8, ptr @.str.249 }, %struct.trace_print_flags { i32 9, ptr @.str.250 }, %struct.trace_print_flags { i32 10, ptr @.str.251 }, %struct.trace_print_flags { i32 11, ptr @.str.252 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.241 = private unnamed_addr constant [16 x i8] c"ATA_DEV_UNKNOWN\00", align 1
@.str.242 = private unnamed_addr constant [12 x i8] c"ATA_DEV_ATA\00", align 1
@.str.243 = private unnamed_addr constant [18 x i8] c"ATA_DEV_ATA_UNSUP\00", align 1
@.str.244 = private unnamed_addr constant [14 x i8] c"ATA_DEV_ATAPI\00", align 1
@.str.245 = private unnamed_addr constant [20 x i8] c"ATA_DEV_ATAPI_UNSUP\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"ATA_DEV_PMP\00", align 1
@.str.247 = private unnamed_addr constant [18 x i8] c"ATA_DEV_PMP_UNSUP\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"ATA_DEV_SEMB\00", align 1
@.str.249 = private unnamed_addr constant [19 x i8] c"ATA_DEV_SEMB_UNSUP\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"ATA_DEV_ZAC\00", align 1
@.str.251 = private unnamed_addr constant [18 x i8] c"ATA_DEV_ZAC_UNSUP\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"ATA_DEV_NONE\00", align 1
@trace_raw_output_ata_link_reset_begin_template.symbols.253 = internal constant [13 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.241 }, %struct.trace_print_flags { i32 1, ptr @.str.242 }, %struct.trace_print_flags { i32 2, ptr @.str.243 }, %struct.trace_print_flags { i32 3, ptr @.str.244 }, %struct.trace_print_flags { i32 4, ptr @.str.245 }, %struct.trace_print_flags { i32 5, ptr @.str.246 }, %struct.trace_print_flags { i32 6, ptr @.str.247 }, %struct.trace_print_flags { i32 7, ptr @.str.248 }, %struct.trace_print_flags { i32 8, ptr @.str.249 }, %struct.trace_print_flags { i32 9, ptr @.str.250 }, %struct.trace_print_flags { i32 10, ptr @.str.251 }, %struct.trace_print_flags { i32 11, ptr @.str.252 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.254 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.255 = private unnamed_addr constant [3 x i8] c"rc\00", align 1
@.str.256 = private unnamed_addr constant [33 x i8] c"ata_port=%u rc=%d class=[%s,%s]\0A\00", align 1
@trace_raw_output_ata_link_reset_end_template.symbols = internal constant [13 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.241 }, %struct.trace_print_flags { i32 1, ptr @.str.242 }, %struct.trace_print_flags { i32 2, ptr @.str.243 }, %struct.trace_print_flags { i32 3, ptr @.str.244 }, %struct.trace_print_flags { i32 4, ptr @.str.245 }, %struct.trace_print_flags { i32 5, ptr @.str.246 }, %struct.trace_print_flags { i32 6, ptr @.str.247 }, %struct.trace_print_flags { i32 7, ptr @.str.248 }, %struct.trace_print_flags { i32 8, ptr @.str.249 }, %struct.trace_print_flags { i32 9, ptr @.str.250 }, %struct.trace_print_flags { i32 10, ptr @.str.251 }, %struct.trace_print_flags { i32 11, ptr @.str.252 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_ata_link_reset_end_template.symbols.257 = internal constant [13 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.241 }, %struct.trace_print_flags { i32 1, ptr @.str.242 }, %struct.trace_print_flags { i32 2, ptr @.str.243 }, %struct.trace_print_flags { i32 3, ptr @.str.244 }, %struct.trace_print_flags { i32 4, ptr @.str.245 }, %struct.trace_print_flags { i32 5, ptr @.str.246 }, %struct.trace_print_flags { i32 6, ptr @.str.247 }, %struct.trace_print_flags { i32 7, ptr @.str.248 }, %struct.trace_print_flags { i32 8, ptr @.str.249 }, %struct.trace_print_flags { i32 9, ptr @.str.250 }, %struct.trace_print_flags { i32 10, ptr @.str.251 }, %struct.trace_print_flags { i32 11, ptr @.str.252 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.258 = private unnamed_addr constant [13 x i8] c"ata_port=%u\0A\00", align 1
@.str.259 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"hsm_state\00", align 1
@.str.261 = private unnamed_addr constant [10 x i8] c"dev_state\00", align 1
@.str.262 = private unnamed_addr constant [77 x i8] c"ata_port=%u ata_dev=%u tag=%d proto=%s flags=%s task_state=%s dev_stat=0x%X\0A\00", align 1
@trace_raw_output_ata_sff_hsm_template.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 255, ptr @.str.119 }, %struct.trace_print_flags { i32 0, ptr @.str.120 }, %struct.trace_print_flags { i32 1, ptr @.str.121 }, %struct.trace_print_flags { i32 2, ptr @.str.122 }, %struct.trace_print_flags { i32 6, ptr @.str.123 }, %struct.trace_print_flags { i32 4, ptr @.str.124 }, %struct.trace_print_flags { i32 8, ptr @.str.125 }, %struct.trace_print_flags { i32 9, ptr @.str.126 }, %struct.trace_print_flags { i32 10, ptr @.str.127 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_ata_sff_hsm_template.symbols.263 = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.264 }, %struct.trace_print_flags { i32 1, ptr @.str.265 }, %struct.trace_print_flags { i32 2, ptr @.str.266 }, %struct.trace_print_flags { i32 3, ptr @.str.267 }, %struct.trace_print_flags { i32 4, ptr @.str.268 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.264 = private unnamed_addr constant [12 x i8] c"HSM_ST_IDLE\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"HSM_ST_FIRST\00", align 1
@.str.266 = private unnamed_addr constant [7 x i8] c"HSM_ST\00", align 1
@.str.267 = private unnamed_addr constant [12 x i8] c"HSM_ST_LAST\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"HSM_ST_ERR\00", align 1
@.str.269 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.271 = private unnamed_addr constant [59 x i8] c"ata_port=%u ata_dev=%u tag=%d flags=%s offset=%u bytes=%u\0A\00", align 1
@.str.272 = private unnamed_addr constant [27 x i8] c"ata_port=%u task_state=%s\0A\00", align 1
@trace_raw_output_ata_sff_template.symbols = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.264 }, %struct.trace_print_flags { i32 1, ptr @.str.265 }, %struct.trace_print_flags { i32 2, ptr @.str.266 }, %struct.trace_print_flags { i32 3, ptr @.str.267 }, %struct.trace_print_flags { i32 4, ptr @.str.268 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@ata_force_param_buf = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@ata_rw_cmds = internal unnamed_addr constant [24 x i8] c"\C4\C5)9\00\00\00\CE 0$4\00\00\00\00\C8\CA%5\00\00\00=", align 1
@.str.273 = private unnamed_addr constant [44 x i8] c"\015ata%u.%02u: FORCE: horkage modified (%s)\0A\00", align 1
@.str.274 = private unnamed_addr constant [55 x i8] c"\016ata%u.%02u: applying link speed limit horkage to %s\0A\00", align 1
@.str.275 = private unnamed_addr constant [63 x i8] c"\014ata%u.%02u: HPA support seems broken, skipping HPA handling\0A\00", align 1
@.str.276 = private unnamed_addr constant [55 x i8] c"\016ata%u.%02u: HPA detected: current %llu, native %llu\0A\00", align 1
@.str.277 = private unnamed_addr constant [68 x i8] c"\014ata%u.%02u: native sectors (%llu) is smaller than sectors (%llu)\0A\00", align 1
@.str.278 = private unnamed_addr constant [75 x i8] c"\014ata%u.%02u: device aborted resize (%llu -> %llu), skipping HPA handling\0A\00", align 1
@.str.279 = private unnamed_addr constant [66 x i8] c"\013ata%u.%02u: failed to re-read IDENTIFY data after HPA resizing\0A\00", align 1
@.str.280 = private unnamed_addr constant [55 x i8] c"\016ata%u.%02u: HPA unlocked: %llu -> %llu, native %llu\0A\00", align 1
@.str.281 = private unnamed_addr constant [65 x i8] c"\014ata%u.%02u: failed to read native max address (err_mask=0x%x)\0A\00", align 1
@.str.282 = private unnamed_addr constant [57 x i8] c"\014ata%u.%02u: failed to set max address (err_mask=0x%x)\0A\00", align 1
@.str.283 = private unnamed_addr constant [6 x i8] c"LBA48\00", align 1
@.str.284 = private unnamed_addr constant [4 x i8] c"LBA\00", align 1
@.str.285 = private unnamed_addr constant [45 x i8] c"\016ata%u.%02u: %llu sectors, multi %u: %s %s\0A\00", align 1
@.str.286 = private unnamed_addr constant [15 x i8] c"NCQ (not used)\00", align 1
@.str.287 = private unnamed_addr constant [53 x i8] c"\013ata%u.%02u: failed to enable AA (error_mask=0x%x)\0A\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c", AA\00", align 1
@.str.289 = private unnamed_addr constant [17 x i8] c"NCQ (depth %d)%s\00", align 1
@.str.290 = private unnamed_addr constant [20 x i8] c"NCQ (depth %d/%d)%s\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.291 = private unnamed_addr constant [47 x i8] c"\014ata%u.%02u: NCQ Send/Recv Log not supported\0A\00", align 1
@.str.292 = private unnamed_addr constant [53 x i8] c"\014ata%u.%02u: ATA Identify Device Log not supported\0A\00", align 1
@.str.293 = private unnamed_addr constant [52 x i8] c"\016ata%u.%02u: %llu sectors, multi %u, CHS %u/%u/%u\0A\00", align 1
@.str.294 = private unnamed_addr constant [55 x i8] c"\014ata%u.%02u: ATA Zoned Information Log not supported\0A\00", align 1
@.str.295 = private unnamed_addr constant [42 x i8] c"\014ata%u.%02u: Security Log not supported\0A\00", align 1
@.str.296 = private unnamed_addr constant [37 x i8] c"\016ata%u.%02u: Features:%s%s%s%s%s%s\0A\00", align 1
@.str.297 = private unnamed_addr constant [7 x i8] c" Trust\00", align 1
@.str.298 = private unnamed_addr constant [15 x i8] c" Dev-Attention\00", align 1
@.str.299 = private unnamed_addr constant [11 x i8] c" Dev-Sleep\00", align 1
@.str.300 = private unnamed_addr constant [12 x i8] c" NCQ-sndrcv\00", align 1
@.str.301 = private unnamed_addr constant [10 x i8] c" NCQ-prio\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c" CPR\00", align 1
@.str.303 = private unnamed_addr constant [42 x i8] c"\015ata%u.%02u: FORCE: xfer_mask set to %s\0A\00", align 1
@.str.304 = private unnamed_addr constant [24 x i8] c" (SET_XFERMODE skipped)\00", align 1
@.str.305 = private unnamed_addr constant [83 x i8] c"\014ata%u.%02u: NOSETXFER but PATA detected - can't skip SETXFER, might malfunction\0A\00", align 1
@.str.306 = private unnamed_addr constant [24 x i8] c" (device error ignored)\00", align 1
@.str.307 = private unnamed_addr constant [35 x i8] c"\016ata%u.%02u: configured for %s%s\0A\00", align 1
@.str.308 = private unnamed_addr constant [54 x i8] c"\013ata%u.%02u: failed to set xfermode (err_mask=0x%x)\0A\00", align 1
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@.str.309 = private unnamed_addr constant [56 x i8] c"\016ata%u.%02u: SATA link up %s (SStatus %X SControl %X)\0A\00", align 1
@.str.310 = private unnamed_addr constant [51 x i8] c"\016ata%u: SATA link up %s (SStatus %X SControl %X)\0A\00", align 1
@.str.311 = private unnamed_addr constant [55 x i8] c"\016ata%u.%02u: SATA link down (SStatus %X SControl %X)\0A\00", align 1
@.str.312 = private unnamed_addr constant [50 x i8] c"\016ata%u: SATA link down (SStatus %X SControl %X)\0A\00", align 1
@.str.313 = private unnamed_addr constant [39 x i8] c"\016ata%u.%02u: class mismatch %d != %d\0A\00", align 1
@.str.314 = private unnamed_addr constant [50 x i8] c"\016ata%u.%02u: model number mismatch '%s' != '%s'\0A\00", align 1
@.str.315 = private unnamed_addr constant [51 x i8] c"\016ata%u.%02u: serial number mismatch '%s' != '%s'\0A\00", align 1
@ata_device_blacklist = internal unnamed_addr constant [117 x %struct.ata_blacklist_entry] [%struct.ata_blacklist_entry { ptr @.str.316, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.317, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.318, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.319, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.320, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.321, ptr @.str.322, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.323, ptr @.str.324, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.325, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.326, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.327, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.328, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.329, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.330, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.331, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.332, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.333, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.334, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.335, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.336, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.337, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.338, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.339, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.340, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.341, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.342, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.343, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.344, ptr @.str.345, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.346, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.347, ptr @.str.348, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.349, ptr null, i32 2 }, %struct.ata_blacklist_entry { ptr @.str.350, ptr null, i32 32 }, %struct.ata_blacklist_entry { ptr @.str.351, ptr null, i32 32 }, %struct.ata_blacklist_entry { ptr @.str.352, ptr null, i32 8 }, %struct.ata_blacklist_entry { ptr @.str.353, ptr null, i32 2048 }, %struct.ata_blacklist_entry { ptr @.str.354, ptr null, i32 131072 }, %struct.ata_blacklist_entry { ptr @.str.355, ptr null, i32 131072 }, %struct.ata_blacklist_entry { ptr @.str.356, ptr @.str.357, i32 33554432 }, %struct.ata_blacklist_entry { ptr @.str.358, ptr null, i32 33554432 }, %struct.ata_blacklist_entry { ptr @.str.359, ptr null, i32 33554432 }, %struct.ata_blacklist_entry { ptr @.str.360, ptr null, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.361, ptr null, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.362, ptr null, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.363, ptr @.str.364, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.365, ptr @.str.366, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.367, ptr @.str.368, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.369, ptr @.str.368, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.370, ptr @.str.371, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.372, ptr @.str.373, i32 4100 }, %struct.ata_blacklist_entry { ptr @.str.374, ptr @.str.373, i32 4100 }, %struct.ata_blacklist_entry { ptr @.str.375, ptr @.str.373, i32 4100 }, %struct.ata_blacklist_entry { ptr @.str.376, ptr @.str.373, i32 4100 }, %struct.ata_blacklist_entry { ptr @.str.377, ptr null, i32 1081344 }, %struct.ata_blacklist_entry { ptr @.str.378, ptr @.str.379, i32 32768 }, %struct.ata_blacklist_entry { ptr @.str.380, ptr @.str.381, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.382, ptr @.str.383, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.384, ptr @.str.385, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.386, ptr @.str.387, i32 4 }, %struct.ata_blacklist_entry { ptr @.str.388, ptr null, i32 67108864 }, %struct.ata_blacklist_entry { ptr @.str.389, ptr @.str.390, i32 16 }, %struct.ata_blacklist_entry { ptr @.str.391, ptr @.str.392, i32 16 }, %struct.ata_blacklist_entry { ptr @.str.393, ptr @.str.394, i32 16 }, %struct.ata_blacklist_entry { ptr @.str.395, ptr @.str.396, i32 16 }, %struct.ata_blacklist_entry { ptr @.str.397, ptr @.str.398, i32 16 }, %struct.ata_blacklist_entry { ptr @.str.399, ptr null, i32 64 }, %struct.ata_blacklist_entry { ptr @.str.400, ptr null, i32 64 }, %struct.ata_blacklist_entry { ptr @.str.401, ptr null, i32 64 }, %struct.ata_blacklist_entry { ptr @.str.402, ptr @.str.403, i32 256 }, %struct.ata_blacklist_entry { ptr @.str.404, ptr @.str.405, i32 256 }, %struct.ata_blacklist_entry { ptr @.str.406, ptr null, i32 1024 }, %struct.ata_blacklist_entry { ptr @.str.407, ptr null, i32 1024 }, %struct.ata_blacklist_entry { ptr @.str.408, ptr null, i32 8192 }, %struct.ata_blacklist_entry { ptr @.str.409, ptr null, i32 8192 }, %struct.ata_blacklist_entry { ptr @.str.410, ptr null, i32 16384 }, %struct.ata_blacklist_entry { ptr @.str.411, ptr null, i32 16384 }, %struct.ata_blacklist_entry { ptr @.str.412, ptr null, i32 16384 }, %struct.ata_blacklist_entry { ptr @.str.413, ptr null, i32 16384 }, %struct.ata_blacklist_entry { ptr @.str.414, ptr null, i32 16384 }, %struct.ata_blacklist_entry { ptr @.str.415, ptr null, i32 1048576 }, %struct.ata_blacklist_entry { ptr @.str.416, ptr @.str.417, i32 5767168 }, %struct.ata_blacklist_entry { ptr @.str.416, ptr null, i32 5242880 }, %struct.ata_blacklist_entry { ptr @.str.418, ptr null, i32 5767168 }, %struct.ata_blacklist_entry { ptr @.str.419, ptr null, i32 5767168 }, %struct.ata_blacklist_entry { ptr @.str.420, ptr @.str.421, i32 1048576 }, %struct.ata_blacklist_entry { ptr @.str.422, ptr @.str.423, i32 1048576 }, %struct.ata_blacklist_entry { ptr @.str.424, ptr null, i32 1048576 }, %struct.ata_blacklist_entry { ptr @.str.425, ptr @.str.426, i32 1048576 }, %struct.ata_blacklist_entry { ptr @.str.427, ptr @.str.417, i32 4718592 }, %struct.ata_blacklist_entry { ptr @.str.428, ptr null, i32 4718592 }, %struct.ata_blacklist_entry { ptr @.str.429, ptr null, i32 4718592 }, %struct.ata_blacklist_entry { ptr @.str.430, ptr @.str.417, i32 4718592 }, %struct.ata_blacklist_entry { ptr @.str.431, ptr @.str.417, i32 4718592 }, %struct.ata_blacklist_entry { ptr @.str.432, ptr @.str.417, i32 4718592 }, %struct.ata_blacklist_entry { ptr @.str.433, ptr null, i32 4718592 }, %struct.ata_blacklist_entry { ptr @.str.434, ptr null, i32 4718592 }, %struct.ata_blacklist_entry { ptr @.str.435, ptr null, i32 138936320 }, %struct.ata_blacklist_entry { ptr @.str.436, ptr null, i32 138936320 }, %struct.ata_blacklist_entry { ptr @.str.437, ptr null, i32 4718592 }, %struct.ata_blacklist_entry { ptr @.str.438, ptr null, i32 16777216 }, %struct.ata_blacklist_entry { ptr @.str.439, ptr null, i32 16777216 }, %struct.ata_blacklist_entry { ptr @.str.440, ptr null, i32 0 }, %struct.ata_blacklist_entry { ptr @.str.441, ptr null, i32 4194304 }, %struct.ata_blacklist_entry { ptr @.str.442, ptr null, i32 4194304 }, %struct.ata_blacklist_entry { ptr @.str.443, ptr null, i32 4194304 }, %struct.ata_blacklist_entry { ptr @.str.444, ptr null, i32 4194304 }, %struct.ata_blacklist_entry { ptr @.str.445, ptr null, i32 4194304 }, %struct.ata_blacklist_entry { ptr @.str.446, ptr null, i32 4194304 }, %struct.ata_blacklist_entry { ptr @.str.447, ptr null, i32 4194304 }, %struct.ata_blacklist_entry { ptr @.str.448, ptr null, i32 4194304 }, %struct.ata_blacklist_entry { ptr @.str.449, ptr null, i32 2097152 }, %struct.ata_blacklist_entry { ptr @.str.450, ptr null, i32 2097152 }, %struct.ata_blacklist_entry { ptr @.str.451, ptr null, i32 2097152 }, %struct.ata_blacklist_entry { ptr @.str.452, ptr null, i32 2097152 }, %struct.ata_blacklist_entry { ptr @.str.453, ptr null, i32 2097152 }, %struct.ata_blacklist_entry { ptr @.str.454, ptr null, i32 2097152 }, %struct.ata_blacklist_entry { ptr @.str.455, ptr null, i32 2097152 }, %struct.ata_blacklist_entry { ptr @.str.456, ptr null, i32 536870912 }, %struct.ata_blacklist_entry zeroinitializer], align 4
@.str.316 = private unnamed_addr constant [13 x i8] c"WDC AC11000H\00", align 1
@.str.317 = private unnamed_addr constant [13 x i8] c"WDC AC22100H\00", align 1
@.str.318 = private unnamed_addr constant [13 x i8] c"WDC AC32500H\00", align 1
@.str.319 = private unnamed_addr constant [13 x i8] c"WDC AC33100H\00", align 1
@.str.320 = private unnamed_addr constant [13 x i8] c"WDC AC31600H\00", align 1
@.str.321 = private unnamed_addr constant [13 x i8] c"WDC AC32100H\00", align 1
@.str.322 = private unnamed_addr constant [9 x i8] c"24.09P07\00", align 1
@.str.323 = private unnamed_addr constant [13 x i8] c"WDC AC23200L\00", align 1
@.str.324 = private unnamed_addr constant [9 x i8] c"21.10N21\00", align 1
@.str.325 = private unnamed_addr constant [17 x i8] c"Compaq CRD-8241B\00", align 1
@.str.326 = private unnamed_addr constant [10 x i8] c"CRD-8400B\00", align 1
@.str.327 = private unnamed_addr constant [13 x i8] c"CRD-848[02]B\00", align 1
@.str.328 = private unnamed_addr constant [7 x i8] c"CRD-84\00", align 1
@.str.329 = private unnamed_addr constant [14 x i8] c"SanDisk SDP3B\00", align 1
@.str.330 = private unnamed_addr constant [17 x i8] c"SanDisk SDP3B-64\00", align 1
@.str.331 = private unnamed_addr constant [17 x i8] c"SANYO CD-ROM CRD\00", align 1
@.str.332 = private unnamed_addr constant [14 x i8] c"HITACHI CDR-8\00", align 1
@.str.333 = private unnamed_addr constant [20 x i8] c"HITACHI CDR-8[34]35\00", align 1
@.str.334 = private unnamed_addr constant [24 x i8] c"Toshiba CD-ROM XM-6202B\00", align 1
@.str.335 = private unnamed_addr constant [25 x i8] c"TOSHIBA CD-ROM XM-1702BC\00", align 1
@.str.336 = private unnamed_addr constant [10 x i8] c"CD-532E-A\00", align 1
@.str.337 = private unnamed_addr constant [20 x i8] c"E-IDE CD-ROM CR-840\00", align 1
@.str.338 = private unnamed_addr constant [17 x i8] c"CD-ROM Drive/F5A\00", align 1
@.str.339 = private unnamed_addr constant [12 x i8] c"WPI CDD-820\00", align 1
@.str.340 = private unnamed_addr constant [23 x i8] c"SAMSUNG CD-ROM SC-148C\00", align 1
@.str.341 = private unnamed_addr constant [18 x i8] c"SAMSUNG CD-ROM SC\00", align 1
@.str.342 = private unnamed_addr constant [31 x i8] c"ATAPI CD-ROM DRIVE 40X MAXIMUM\00", align 1
@.str.343 = private unnamed_addr constant [13 x i8] c"_NEC DV5800A\00", align 1
@.str.344 = private unnamed_addr constant [22 x i8] c"SAMSUNG CD-ROM SN-124\00", align 1
@.str.345 = private unnamed_addr constant [5 x i8] c"N001\00", align 1
@.str.346 = private unnamed_addr constant [18 x i8] c"Seagate STT20000A\00", align 1
@.str.347 = private unnamed_addr constant [20 x i8] c" 2GB ATA Flash Disk\00", align 1
@.str.348 = private unnamed_addr constant [9 x i8] c"ADMA428M\00", align 1
@.str.349 = private unnamed_addr constant [20 x i8] c"VRFDFC22048UCHC-TE*\00", align 1
@.str.350 = private unnamed_addr constant [13 x i8] c"Config  Disk\00", align 1
@.str.351 = private unnamed_addr constant [17 x i8] c"ASMT109x- Config\00", align 1
@.str.352 = private unnamed_addr constant [25 x i8] c"TORiSAN DVD-ROM DRD-N216\00", align 1
@.str.353 = private unnamed_addr constant [25 x i8] c"QUANTUM DAT    DAT72-000\00", align 1
@.str.354 = private unnamed_addr constant [24 x i8] c"Slimtype DVD A  DS8A8SH\00", align 1
@.str.355 = private unnamed_addr constant [24 x i8] c"Slimtype DVD A  DS8A9SH\00", align 1
@.str.356 = private unnamed_addr constant [11 x i8] c"ST380013AS\00", align 1
@.str.357 = private unnamed_addr constant [5 x i8] c"3.20\00", align 1
@.str.358 = private unnamed_addr constant [18 x i8] c"LITEON CX1-JB*-HP\00", align 1
@.str.359 = private unnamed_addr constant [13 x i8] c"LITEON EP1-*\00", align 1
@.str.360 = private unnamed_addr constant [17 x i8] c"WDC WD740ADFD-00\00", align 1
@.str.361 = private unnamed_addr constant [21 x i8] c"WDC WD740ADFD-00NLR1\00", align 1
@.str.362 = private unnamed_addr constant [18 x i8] c"FUJITSU MHT2060BH\00", align 1
@.str.363 = private unnamed_addr constant [9 x i8] c"Maxtor *\00", align 1
@.str.364 = private unnamed_addr constant [6 x i8] c"BANC*\00", align 1
@.str.365 = private unnamed_addr constant [15 x i8] c"Maxtor 7V300F0\00", align 1
@.str.366 = private unnamed_addr constant [9 x i8] c"VA111630\00", align 1
@.str.367 = private unnamed_addr constant [11 x i8] c"ST380817AS\00", align 1
@.str.368 = private unnamed_addr constant [5 x i8] c"3.42\00", align 1
@.str.369 = private unnamed_addr constant [12 x i8] c"ST3160023AS\00", align 1
@.str.370 = private unnamed_addr constant [13 x i8] c"OCZ CORE_SSD\00", align 1
@.str.371 = private unnamed_addr constant [9 x i8] c"02.10104\00", align 1
@.str.372 = private unnamed_addr constant [13 x i8] c"ST31500341AS\00", align 1
@.str.373 = private unnamed_addr constant [9 x i8] c"SD1[5-9]\00", align 1
@.str.374 = private unnamed_addr constant [13 x i8] c"ST31000333AS\00", align 1
@.str.375 = private unnamed_addr constant [15 x i8] c"ST3640[36]23AS\00", align 1
@.str.376 = private unnamed_addr constant [15 x i8] c"ST3320[68]13AS\00", align 1
@.str.377 = private unnamed_addr constant [23 x i8] c"ST1000LM024 HN-M101MBB\00", align 1
@.str.378 = private unnamed_addr constant [12 x i8] c"VB0250EAVER\00", align 1
@.str.379 = private unnamed_addr constant [5 x i8] c"HPG7\00", align 1
@.str.380 = private unnamed_addr constant [16 x i8] c"HTS541060G9SA00\00", align 1
@.str.381 = private unnamed_addr constant [9 x i8] c"MB3OC60D\00", align 1
@.str.382 = private unnamed_addr constant [16 x i8] c"HTS541080G9SA00\00", align 1
@.str.383 = private unnamed_addr constant [9 x i8] c"MB4OC60D\00", align 1
@.str.384 = private unnamed_addr constant [16 x i8] c"HTS541010G9SA00\00", align 1
@.str.385 = private unnamed_addr constant [9 x i8] c"MBZOC60D\00", align 1
@.str.386 = private unnamed_addr constant [19 x i8] c"C300-CTFDDAC128MAG\00", align 1
@.str.387 = private unnamed_addr constant [5 x i8] c"0001\00", align 1
@.str.388 = private unnamed_addr constant [17 x i8] c"SanDisk SD[789]*\00", align 1
@.str.389 = private unnamed_addr constant [16 x i8] c"HDS724040KLSA80\00", align 1
@.str.390 = private unnamed_addr constant [9 x i8] c"KFAOA20N\00", align 1
@.str.391 = private unnamed_addr constant [20 x i8] c"WDC WD3200JD-00KLB0\00", align 1
@.str.392 = private unnamed_addr constant [16 x i8] c"WD-WCAMR1130137\00", align 1
@.str.393 = private unnamed_addr constant [20 x i8] c"WDC WD2500JD-00HBB0\00", align 1
@.str.394 = private unnamed_addr constant [16 x i8] c"WD-WMAL71490727\00", align 1
@.str.395 = private unnamed_addr constant [15 x i8] c"MAXTOR 6L080L4\00", align 1
@.str.396 = private unnamed_addr constant [9 x i8] c"A93.0500\00", align 1
@.str.397 = private unnamed_addr constant [11 x i8] c"OCZ-VERTEX\00", align 1
@.str.398 = private unnamed_addr constant [5 x i8] c"1.30\00", align 1
@.str.399 = private unnamed_addr constant [10 x i8] c"ST340823A\00", align 1
@.str.400 = private unnamed_addr constant [10 x i8] c"ST320413A\00", align 1
@.str.401 = private unnamed_addr constant [10 x i8] c"ST310211A\00", align 1
@.str.402 = private unnamed_addr constant [25 x i8] c"QUANTUM FIREBALLlct10 05\00", align 1
@.str.403 = private unnamed_addr constant [9 x i8] c"A03.0900\00", align 1
@.str.404 = private unnamed_addr constant [29 x i8] c"TSSTcorp CDDVDW SH-S202[HJN]\00", align 1
@.str.405 = private unnamed_addr constant [8 x i8] c"SB0[01]\00", align 1
@.str.406 = private unnamed_addr constant [16 x i8] c"MTRON MSP-SATA*\00", align 1
@.str.407 = private unnamed_addr constant [19 x i8] c"BUFFALO HD-QSU2/R5\00", align 1
@.str.408 = private unnamed_addr constant [11 x i8] c"WD My Book\00", align 1
@.str.409 = private unnamed_addr constant [25 x i8] c"Seagate FreeAgent GoFlex\00", align 1
@.str.410 = private unnamed_addr constant [24 x i8] c"PIONEER DVD-RW  DVRTD08\00", align 1
@.str.411 = private unnamed_addr constant [25 x i8] c"PIONEER DVD-RW  DVRTD08A\00", align 1
@.str.412 = private unnamed_addr constant [24 x i8] c"PIONEER DVD-RW  DVR-215\00", align 1
@.str.413 = private unnamed_addr constant [25 x i8] c"PIONEER DVD-RW  DVR-212D\00", align 1
@.str.414 = private unnamed_addr constant [25 x i8] c"PIONEER DVD-RW  DVR-216D\00", align 1
@.str.415 = private unnamed_addr constant [15 x i8] c"CT500BX100SSD1\00", align 1
@.str.416 = private unnamed_addr constant [20 x i8] c"Crucial_CT512MX100*\00", align 1
@.str.417 = private unnamed_addr constant [5 x i8] c"MU01\00", align 1
@.str.418 = private unnamed_addr constant [19 x i8] c"Crucial_CT480M500*\00", align 1
@.str.419 = private unnamed_addr constant [19 x i8] c"Crucial_CT960M500*\00", align 1
@.str.420 = private unnamed_addr constant [27 x i8] c"SAMSUNG MZMPC128HBFU-000MV\00", align 1
@.str.421 = private unnamed_addr constant [9 x i8] c"CXM14M1Q\00", align 1
@.str.422 = private unnamed_addr constant [26 x i8] c"SAMSUNG SSD PM830 mSATA *\00", align 1
@.str.423 = private unnamed_addr constant [9 x i8] c"CXM13D1Q\00", align 1
@.str.424 = private unnamed_addr constant [27 x i8] c"SAMSUNG MZ7TD256HAFV-000L9\00", align 1
@.str.425 = private unnamed_addr constant [27 x i8] c"SAMSUNG MZ7TE512HMHP-000L1\00", align 1
@.str.426 = private unnamed_addr constant [9 x i8] c"EXT06L0Q\00", align 1
@.str.427 = private unnamed_addr constant [16 x i8] c"Micron_M500IT_*\00", align 1
@.str.428 = private unnamed_addr constant [14 x i8] c"Micron_M500_*\00", align 1
@.str.429 = private unnamed_addr constant [17 x i8] c"Crucial_CT*M500*\00", align 1
@.str.430 = private unnamed_addr constant [17 x i8] c"Micron_M5[15]0_*\00", align 1
@.str.431 = private unnamed_addr constant [17 x i8] c"Crucial_CT*M550*\00", align 1
@.str.432 = private unnamed_addr constant [18 x i8] c"Crucial_CT*MX100*\00", align 1
@.str.433 = private unnamed_addr constant [17 x i8] c"Samsung SSD 840*\00", align 1
@.str.434 = private unnamed_addr constant [17 x i8] c"Samsung SSD 850*\00", align 1
@.str.435 = private unnamed_addr constant [17 x i8] c"Samsung SSD 860*\00", align 1
@.str.436 = private unnamed_addr constant [17 x i8] c"Samsung SSD 870*\00", align 1
@.str.437 = private unnamed_addr constant [11 x i8] c"FCCT*M500*\00", align 1
@.str.438 = private unnamed_addr constant [18 x i8] c"SuperSSpeed S238*\00", align 1
@.str.439 = private unnamed_addr constant [8 x i8] c"M88V29*\00", align 1
@.str.440 = private unnamed_addr constant [16 x i8] c"INTEL*SSDSC2MH*\00", align 1
@.str.441 = private unnamed_addr constant [8 x i8] c"Micron*\00", align 1
@.str.442 = private unnamed_addr constant [9 x i8] c"Crucial*\00", align 1
@.str.443 = private unnamed_addr constant [11 x i8] c"INTEL*SSD*\00", align 1
@.str.444 = private unnamed_addr constant [11 x i8] c"SSD*INTEL*\00", align 1
@.str.445 = private unnamed_addr constant [13 x i8] c"Samsung*SSD*\00", align 1
@.str.446 = private unnamed_addr constant [13 x i8] c"SAMSUNG*SSD*\00", align 1
@.str.447 = private unnamed_addr constant [15 x i8] c"SAMSUNG*MZ7KM*\00", align 1
@.str.448 = private unnamed_addr constant [21 x i8] c"ST[1248][0248]0[FH]*\00", align 1
@.str.449 = private unnamed_addr constant [14 x i8] c"WDC WD800JD-*\00", align 1
@.str.450 = private unnamed_addr constant [15 x i8] c"WDC WD1200JD-*\00", align 1
@.str.451 = private unnamed_addr constant [15 x i8] c"WDC WD1600JD-*\00", align 1
@.str.452 = private unnamed_addr constant [15 x i8] c"WDC WD2000JD-*\00", align 1
@.str.453 = private unnamed_addr constant [15 x i8] c"WDC WD2500JD-*\00", align 1
@.str.454 = private unnamed_addr constant [15 x i8] c"WDC WD3000JD-*\00", align 1
@.str.455 = private unnamed_addr constant [15 x i8] c"WDC WD3200JD-*\00", align 1
@.str.456 = private unnamed_addr constant [15 x i8] c"SATADOM-ML 3ME\00", align 1
@.str.457 = private unnamed_addr constant [57 x i8] c"\014ata%u.%02u: device is on DMA blacklist, disabling DMA\0A\00", align 1
@.str.458 = private unnamed_addr constant [69 x i8] c"\014ata%u.%02u: simplex DMA is claimed by other device, disabling DMA\0A\00", align 1
@.str.459 = private unnamed_addr constant [55 x i8] c"\014ata%u.%02u: limited to UDMA/33 due to 40-wire cable\0A\00", align 1
@ata_sg_clean.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.461 = private unnamed_addr constant [46 x i8] c"\015ata%u.%02u: FORCE: PHY spd limit set to %s\0A\00", align 1
@.str.462 = private unnamed_addr constant [41 x i8] c"\015ata%u: FORCE: PHY spd limit set to %s\0A\00", align 1
@.str.463 = private unnamed_addr constant [52 x i8] c"\015ata%u.%02u: FORCE: link flag 0x%x forced -> 0x%x\0A\00", align 1
@.str.464 = private unnamed_addr constant [47 x i8] c"\015ata%u: FORCE: link flag 0x%x forced -> 0x%x\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.465 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@ata_finalize_port_ops.lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.466 = private unnamed_addr constant [31 x i8] c"\017libata version 3.00 loaded.\0A\00", align 1
@.str.467 = private unnamed_addr constant [59 x i8] c"\014ata: failed to extend force table, libata.force ignored\0A\00", align 1
@__const.ata_parse_force_param.te = private unnamed_addr constant { i32, i32, { ptr, i8, i8, [2 x i8], i32, i32, i32, i16, [2 x i8] } } { i32 -1, i32 -1, { ptr, i8, i8, [2 x i8], i32, i32, i32, i16, [2 x i8] } zeroinitializer }, align 4
@.str.468 = private unnamed_addr constant [50 x i8] c"\014ata: failed to parse force parameter \22%s\22 (%s)\0A\00", align 1
@ata_parse_force_one.force_tbl = internal unnamed_addr constant [55 x %struct.ata_force_param] [%struct.ata_force_param { ptr @.str.469, i8 1, i8 0, i32 0, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.470, i8 2, i8 0, i32 0, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.471, i8 3, i8 0, i32 0, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.472, i8 4, i8 0, i32 0, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.473, i8 5, i8 0, i32 0, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.474, i8 6, i8 0, i32 0, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.475, i8 0, i8 1, i32 0, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.476, i8 0, i8 2, i32 0, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.477, i8 0, i8 0, i32 0, i32 4, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.478, i8 0, i8 0, i32 0, i32 0, i32 4, i16 0 }, %struct.ata_force_param { ptr @.str.479, i8 0, i8 0, i32 0, i32 524288, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.480, i8 0, i8 0, i32 0, i32 0, i32 524288, i16 0 }, %struct.ata_force_param { ptr @.str.481, i8 0, i8 0, i32 0, i32 134217728, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.482, i8 0, i8 0, i32 0, i32 0, i32 134217728, i16 0 }, %struct.ata_force_param { ptr @.str.483, i8 0, i8 0, i32 0, i32 65536, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.484, i8 0, i8 0, i32 1, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.485, i8 0, i8 0, i32 2, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.486, i8 0, i8 0, i32 4, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.487, i8 0, i8 0, i32 8, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.488, i8 0, i8 0, i32 16, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.489, i8 0, i8 0, i32 32, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.490, i8 0, i8 0, i32 64, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.491, i8 0, i8 0, i32 128, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.492, i8 0, i8 0, i32 256, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.493, i8 0, i8 0, i32 512, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.494, i8 0, i8 0, i32 1024, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.495, i8 0, i8 0, i32 2048, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.496, i8 0, i8 0, i32 4096, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.497, i8 0, i8 0, i32 4096, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.498, i8 0, i8 0, i32 4096, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.499, i8 0, i8 0, i32 8192, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.500, i8 0, i8 0, i32 8192, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.501, i8 0, i8 0, i32 8192, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.502, i8 0, i8 0, i32 16384, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.503, i8 0, i8 0, i32 16384, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.504, i8 0, i8 0, i32 16384, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.505, i8 0, i8 0, i32 32768, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.506, i8 0, i8 0, i32 32768, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.507, i8 0, i8 0, i32 32768, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.508, i8 0, i8 0, i32 65536, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.509, i8 0, i8 0, i32 65536, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.510, i8 0, i8 0, i32 65536, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.511, i8 0, i8 0, i32 131072, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.512, i8 0, i8 0, i32 131072, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.513, i8 0, i8 0, i32 131072, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.514, i8 0, i8 0, i32 262144, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.515, i8 0, i8 0, i32 262144, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.516, i8 0, i8 0, i32 262144, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.517, i8 0, i8 0, i32 524288, i32 0, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.518, i8 0, i8 0, i32 0, i32 0, i32 0, i16 2 }, %struct.ata_force_param { ptr @.str.519, i8 0, i8 0, i32 0, i32 0, i32 0, i16 4 }, %struct.ata_force_param { ptr @.str.520, i8 0, i8 0, i32 0, i32 0, i32 0, i16 6 }, %struct.ata_force_param { ptr @.str.521, i8 0, i8 0, i32 0, i32 0, i32 0, i16 512 }, %struct.ata_force_param { ptr @.str.522, i8 0, i8 0, i32 0, i32 262144, i32 0, i16 0 }, %struct.ata_force_param { ptr @.str.523, i8 0, i8 0, i32 0, i32 32, i32 0, i16 0 }], section ".init.rodata", align 4
@.str.469 = private unnamed_addr constant [4 x i8] c"40c\00", align 1
@.str.470 = private unnamed_addr constant [4 x i8] c"80c\00", align 1
@.str.471 = private unnamed_addr constant [9 x i8] c"short40c\00", align 1
@.str.472 = private unnamed_addr constant [4 x i8] c"unk\00", align 1
@.str.473 = private unnamed_addr constant [4 x i8] c"ign\00", align 1
@.str.474 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.475 = private unnamed_addr constant [8 x i8] c"1.5Gbps\00", align 1
@.str.476 = private unnamed_addr constant [8 x i8] c"3.0Gbps\00", align 1
@.str.477 = private unnamed_addr constant [6 x i8] c"noncq\00", align 1
@.str.478 = private unnamed_addr constant [4 x i8] c"ncq\00", align 1
@.str.479 = private unnamed_addr constant [10 x i8] c"noncqtrim\00", align 1
@.str.480 = private unnamed_addr constant [8 x i8] c"ncqtrim\00", align 1
@.str.481 = private unnamed_addr constant [9 x i8] c"noncqati\00", align 1
@.str.482 = private unnamed_addr constant [7 x i8] c"ncqati\00", align 1
@.str.483 = private unnamed_addr constant [8 x i8] c"dump_id\00", align 1
@.str.484 = private unnamed_addr constant [5 x i8] c"pio0\00", align 1
@.str.485 = private unnamed_addr constant [5 x i8] c"pio1\00", align 1
@.str.486 = private unnamed_addr constant [5 x i8] c"pio2\00", align 1
@.str.487 = private unnamed_addr constant [5 x i8] c"pio3\00", align 1
@.str.488 = private unnamed_addr constant [5 x i8] c"pio4\00", align 1
@.str.489 = private unnamed_addr constant [5 x i8] c"pio5\00", align 1
@.str.490 = private unnamed_addr constant [5 x i8] c"pio6\00", align 1
@.str.491 = private unnamed_addr constant [7 x i8] c"mwdma0\00", align 1
@.str.492 = private unnamed_addr constant [7 x i8] c"mwdma1\00", align 1
@.str.493 = private unnamed_addr constant [7 x i8] c"mwdma2\00", align 1
@.str.494 = private unnamed_addr constant [7 x i8] c"mwdma3\00", align 1
@.str.495 = private unnamed_addr constant [7 x i8] c"mwdma4\00", align 1
@.str.496 = private unnamed_addr constant [6 x i8] c"udma0\00", align 1
@.str.497 = private unnamed_addr constant [7 x i8] c"udma16\00", align 1
@.str.498 = private unnamed_addr constant [8 x i8] c"udma/16\00", align 1
@.str.499 = private unnamed_addr constant [6 x i8] c"udma1\00", align 1
@.str.500 = private unnamed_addr constant [7 x i8] c"udma25\00", align 1
@.str.501 = private unnamed_addr constant [8 x i8] c"udma/25\00", align 1
@.str.502 = private unnamed_addr constant [6 x i8] c"udma2\00", align 1
@.str.503 = private unnamed_addr constant [7 x i8] c"udma33\00", align 1
@.str.504 = private unnamed_addr constant [8 x i8] c"udma/33\00", align 1
@.str.505 = private unnamed_addr constant [6 x i8] c"udma3\00", align 1
@.str.506 = private unnamed_addr constant [7 x i8] c"udma44\00", align 1
@.str.507 = private unnamed_addr constant [8 x i8] c"udma/44\00", align 1
@.str.508 = private unnamed_addr constant [6 x i8] c"udma4\00", align 1
@.str.509 = private unnamed_addr constant [7 x i8] c"udma66\00", align 1
@.str.510 = private unnamed_addr constant [8 x i8] c"udma/66\00", align 1
@.str.511 = private unnamed_addr constant [6 x i8] c"udma5\00", align 1
@.str.512 = private unnamed_addr constant [8 x i8] c"udma100\00", align 1
@.str.513 = private unnamed_addr constant [9 x i8] c"udma/100\00", align 1
@.str.514 = private unnamed_addr constant [6 x i8] c"udma6\00", align 1
@.str.515 = private unnamed_addr constant [8 x i8] c"udma133\00", align 1
@.str.516 = private unnamed_addr constant [9 x i8] c"udma/133\00", align 1
@.str.517 = private unnamed_addr constant [6 x i8] c"udma7\00", align 1
@.str.518 = private unnamed_addr constant [7 x i8] c"nohrst\00", align 1
@.str.519 = private unnamed_addr constant [7 x i8] c"nosrst\00", align 1
@.str.520 = private unnamed_addr constant [6 x i8] c"norst\00", align 1
@.str.521 = private unnamed_addr constant [8 x i8] c"rstonce\00", align 1
@.str.522 = private unnamed_addr constant [13 x i8] c"atapi_dmadir\00", align 1
@.str.523 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.524 = private unnamed_addr constant [15 x i8] c"invalid device\00", align 1
@.str.525 = private unnamed_addr constant [18 x i8] c"invalid port/link\00", align 1
@.str.526 = private unnamed_addr constant [14 x i8] c"unknown value\00", align 1
@.str.527 = private unnamed_addr constant [16 x i8] c"ambiguous value\00", align 1
@llvm.compiler.used = appending global [262 x ptr] [ptr @__UNIQUE_ID_allow_tpm484, ptr @__UNIQUE_ID_allow_tpmtype483, ptr @__UNIQUE_ID_ata_probe_timeout480, ptr @__UNIQUE_ID_ata_probe_timeouttype479, ptr @__UNIQUE_ID_atapi_an486, ptr @__UNIQUE_ID_atapi_antype485, ptr @__UNIQUE_ID_atapi_dmadir470, ptr @__UNIQUE_ID_atapi_dmadirtype469, ptr @__UNIQUE_ID_atapi_enabled468, ptr @__UNIQUE_ID_atapi_enabledtype467, ptr @__UNIQUE_ID_atapi_passthru16472, ptr @__UNIQUE_ID_atapi_passthru16type471, ptr @__UNIQUE_ID_author487, ptr @__UNIQUE_ID_description488, ptr @__UNIQUE_ID_dma478, ptr @__UNIQUE_ID_dmatype477, ptr @__UNIQUE_ID_file489, ptr @__UNIQUE_ID_force466, ptr @__UNIQUE_ID_forcetype465, ptr @__UNIQUE_ID_fua474, ptr @__UNIQUE_ID_fuatype473, ptr @__UNIQUE_ID_ignore_hpa476, ptr @__UNIQUE_ID_ignore_hpatype475, ptr @__UNIQUE_ID_license490, ptr @__UNIQUE_ID_noacpi482, ptr @__UNIQUE_ID_noacpitype481, ptr @__UNIQUE_ID_version491, ptr @__event_ata_bmdma_setup, ptr @__event_ata_bmdma_start, ptr @__event_ata_bmdma_status, ptr @__event_ata_bmdma_stop, ptr @__event_ata_eh_about_to_do, ptr @__event_ata_eh_done, ptr @__event_ata_eh_link_autopsy, ptr @__event_ata_eh_link_autopsy_qc, ptr @__event_ata_exec_command, ptr @__event_ata_link_hardreset_begin, ptr @__event_ata_link_hardreset_end, ptr @__event_ata_link_postreset, ptr @__event_ata_link_softreset_begin, ptr @__event_ata_link_softreset_end, ptr @__event_ata_port_freeze, ptr @__event_ata_port_thaw, ptr @__event_ata_qc_complete_done, ptr @__event_ata_qc_complete_failed, ptr @__event_ata_qc_complete_internal, ptr @__event_ata_qc_issue, ptr @__event_ata_qc_prep, ptr @__event_ata_sff_flush_pio_task, ptr @__event_ata_sff_hsm_command_complete, ptr @__event_ata_sff_hsm_state, ptr @__event_ata_sff_pio_transfer_data, ptr @__event_ata_sff_port_intr, ptr @__event_ata_slave_hardreset_begin, ptr @__event_ata_slave_hardreset_end, ptr @__event_ata_slave_postreset, ptr @__event_ata_std_sched_eh, ptr @__event_ata_tf_load, ptr @__event_atapi_pio_transfer_data, ptr @__event_atapi_send_cdb, ptr @__exitcall_ata_exit, ptr @__initcall__kmod_libata__504_6375_ata_init4, ptr @__ksymtab___SCK__tp_func_ata_bmdma_setup, ptr @__ksymtab___SCK__tp_func_ata_bmdma_start, ptr @__ksymtab___SCK__tp_func_ata_bmdma_status, ptr @__ksymtab___SCK__tp_func_ata_exec_command, ptr @__ksymtab___SCK__tp_func_ata_tf_load, ptr @__ksymtab___traceiter_ata_bmdma_setup, ptr @__ksymtab___traceiter_ata_bmdma_start, ptr @__ksymtab___traceiter_ata_bmdma_status, ptr @__ksymtab___traceiter_ata_exec_command, ptr @__ksymtab___traceiter_ata_tf_load, ptr @__ksymtab___tracepoint_ata_bmdma_setup, ptr @__ksymtab___tracepoint_ata_bmdma_start, ptr @__ksymtab___tracepoint_ata_bmdma_status, ptr @__ksymtab___tracepoint_ata_exec_command, ptr @__ksymtab___tracepoint_ata_tf_load, ptr @__ksymtab_ata_cable_40wire, ptr @__ksymtab_ata_cable_80wire, ptr @__ksymtab_ata_cable_ignore, ptr @__ksymtab_ata_cable_sata, ptr @__ksymtab_ata_cable_unknown, ptr @__ksymtab_ata_dev_classify, ptr @__ksymtab_ata_dev_next, ptr @__ksymtab_ata_dev_pair, ptr @__ksymtab_ata_dev_set_feature, ptr @__ksymtab_ata_do_dev_read_id, ptr @__ksymtab_ata_do_set_mode, ptr @__ksymtab_ata_dummy_port_info, ptr @__ksymtab_ata_dummy_port_ops, ptr @__ksymtab_ata_host_activate, ptr @__ksymtab_ata_host_alloc, ptr @__ksymtab_ata_host_alloc_pinfo, ptr @__ksymtab_ata_host_detach, ptr @__ksymtab_ata_host_init, ptr @__ksymtab_ata_host_put, ptr @__ksymtab_ata_host_register, ptr @__ksymtab_ata_host_resume, ptr @__ksymtab_ata_host_start, ptr @__ksymtab_ata_host_suspend, ptr @__ksymtab_ata_id_c_string, ptr @__ksymtab_ata_id_string, ptr @__ksymtab_ata_id_xfermask, ptr @__ksymtab_ata_link_next, ptr @__ksymtab_ata_link_offline, ptr @__ksymtab_ata_link_online, ptr @__ksymtab_ata_mode_string, ptr @__ksymtab_ata_msleep, ptr @__ksymtab_ata_noop_qc_prep, ptr @__ksymtab_ata_pack_xfermask, ptr @__ksymtab_ata_pci_device_do_resume, ptr @__ksymtab_ata_pci_device_do_suspend, ptr @__ksymtab_ata_pci_device_resume, ptr @__ksymtab_ata_pci_device_suspend, ptr @__ksymtab_ata_pci_remove_one, ptr @__ksymtab_ata_pci_shutdown_one, ptr @__ksymtab_ata_pio_need_iordy, ptr @__ksymtab_ata_platform_remove_one, ptr @__ksymtab_ata_print_version, ptr @__ksymtab_ata_qc_complete, ptr @__ksymtab_ata_qc_get_active, ptr @__ksymtab_ata_ratelimit, ptr @__ksymtab_ata_sas_port_resume, ptr @__ksymtab_ata_sas_port_suspend, ptr @__ksymtab_ata_std_postreset, ptr @__ksymtab_ata_std_prereset, ptr @__ksymtab_ata_std_qc_defer, ptr @__ksymtab_ata_wait_after_reset, ptr @__ksymtab_ata_wait_register, ptr @__ksymtab_ata_xfer_mask2mode, ptr @__ksymtab_ata_xfer_mode2mask, ptr @__ksymtab_ata_xfer_mode2shift, ptr @__ksymtab_atapi_cmd_type, ptr @__ksymtab_pci_test_config_bits, ptr @__ksymtab_sata_port_ops, ptr @__ksymtab_sata_std_hardreset, ptr @__modver_attr, ptr @__param_allow_tpm, ptr @__param_ata_probe_timeout, ptr @__param_atapi_an, ptr @__param_atapi_dmadir, ptr @__param_atapi_enabled, ptr @__param_atapi_passthru16, ptr @__param_dma, ptr @__param_force, ptr @__param_fua, ptr @__param_ignore_hpa, ptr @__param_noacpi, ptr @__tracepoint_ata_bmdma_setup, ptr @__tracepoint_ata_bmdma_start, ptr @__tracepoint_ata_bmdma_status, ptr @__tracepoint_ata_bmdma_stop, ptr @__tracepoint_ata_eh_about_to_do, ptr @__tracepoint_ata_eh_done, ptr @__tracepoint_ata_eh_link_autopsy, ptr @__tracepoint_ata_eh_link_autopsy_qc, ptr @__tracepoint_ata_exec_command, ptr @__tracepoint_ata_link_hardreset_begin, ptr @__tracepoint_ata_link_hardreset_end, ptr @__tracepoint_ata_link_postreset, ptr @__tracepoint_ata_link_softreset_begin, ptr @__tracepoint_ata_link_softreset_end, ptr @__tracepoint_ata_port_freeze, ptr @__tracepoint_ata_port_thaw, ptr @__tracepoint_ata_qc_complete_done, ptr @__tracepoint_ata_qc_complete_failed, ptr @__tracepoint_ata_qc_complete_internal, ptr @__tracepoint_ata_qc_issue, ptr @__tracepoint_ata_qc_prep, ptr @__tracepoint_ata_sff_flush_pio_task, ptr @__tracepoint_ata_sff_hsm_command_complete, ptr @__tracepoint_ata_sff_hsm_state, ptr @__tracepoint_ata_sff_pio_transfer_data, ptr @__tracepoint_ata_sff_port_intr, ptr @__tracepoint_ata_slave_hardreset_begin, ptr @__tracepoint_ata_slave_hardreset_end, ptr @__tracepoint_ata_slave_postreset, ptr @__tracepoint_ata_std_sched_eh, ptr @__tracepoint_ata_tf_load, ptr @__tracepoint_atapi_pio_transfer_data, ptr @__tracepoint_atapi_send_cdb, ptr @__tracepoint_ptr_ata_bmdma_setup, ptr @__tracepoint_ptr_ata_bmdma_start, ptr @__tracepoint_ptr_ata_bmdma_status, ptr @__tracepoint_ptr_ata_bmdma_stop, ptr @__tracepoint_ptr_ata_eh_about_to_do, ptr @__tracepoint_ptr_ata_eh_done, ptr @__tracepoint_ptr_ata_eh_link_autopsy, ptr @__tracepoint_ptr_ata_eh_link_autopsy_qc, ptr @__tracepoint_ptr_ata_exec_command, ptr @__tracepoint_ptr_ata_link_hardreset_begin, ptr @__tracepoint_ptr_ata_link_hardreset_end, ptr @__tracepoint_ptr_ata_link_postreset, ptr @__tracepoint_ptr_ata_link_softreset_begin, ptr @__tracepoint_ptr_ata_link_softreset_end, ptr @__tracepoint_ptr_ata_port_freeze, ptr @__tracepoint_ptr_ata_port_thaw, ptr @__tracepoint_ptr_ata_qc_complete_done, ptr @__tracepoint_ptr_ata_qc_complete_failed, ptr @__tracepoint_ptr_ata_qc_complete_internal, ptr @__tracepoint_ptr_ata_qc_issue, ptr @__tracepoint_ptr_ata_qc_prep, ptr @__tracepoint_ptr_ata_sff_flush_pio_task, ptr @__tracepoint_ptr_ata_sff_hsm_command_complete, ptr @__tracepoint_ptr_ata_sff_hsm_state, ptr @__tracepoint_ptr_ata_sff_pio_transfer_data, ptr @__tracepoint_ptr_ata_sff_port_intr, ptr @__tracepoint_ptr_ata_slave_hardreset_begin, ptr @__tracepoint_ptr_ata_slave_hardreset_end, ptr @__tracepoint_ptr_ata_slave_postreset, ptr @__tracepoint_ptr_ata_std_sched_eh, ptr @__tracepoint_ptr_ata_tf_load, ptr @__tracepoint_ptr_atapi_pio_transfer_data, ptr @__tracepoint_ptr_atapi_send_cdb, ptr @ata_exit, ptr @event_ata_bmdma_setup, ptr @event_ata_bmdma_start, ptr @event_ata_bmdma_status, ptr @event_ata_bmdma_stop, ptr @event_ata_eh_about_to_do, ptr @event_ata_eh_done, ptr @event_ata_eh_link_autopsy, ptr @event_ata_eh_link_autopsy_qc, ptr @event_ata_exec_command, ptr @event_ata_link_hardreset_begin, ptr @event_ata_link_hardreset_end, ptr @event_ata_link_postreset, ptr @event_ata_link_softreset_begin, ptr @event_ata_link_softreset_end, ptr @event_ata_port_freeze, ptr @event_ata_port_thaw, ptr @event_ata_qc_complete_done, ptr @event_ata_qc_complete_failed, ptr @event_ata_qc_complete_internal, ptr @event_ata_qc_issue, ptr @event_ata_qc_prep, ptr @event_ata_sff_flush_pio_task, ptr @event_ata_sff_hsm_command_complete, ptr @event_ata_sff_hsm_state, ptr @event_ata_sff_pio_transfer_data, ptr @event_ata_sff_port_intr, ptr @event_ata_slave_hardreset_begin, ptr @event_ata_slave_hardreset_end, ptr @event_ata_slave_postreset, ptr @event_ata_std_sched_eh, ptr @event_ata_tf_load, ptr @event_atapi_pio_transfer_data, ptr @event_atapi_send_cdb, ptr @event_class_ata_bmdma_status, ptr @event_class_ata_eh_action_template, ptr @event_class_ata_eh_link_autopsy, ptr @event_class_ata_eh_link_autopsy_qc, ptr @event_class_ata_exec_command_template, ptr @event_class_ata_link_reset_begin_template, ptr @event_class_ata_link_reset_end_template, ptr @event_class_ata_port_eh_begin_template, ptr @event_class_ata_qc_complete_template, ptr @event_class_ata_qc_issue_template, ptr @event_class_ata_sff_hsm_template, ptr @event_class_ata_sff_template, ptr @event_class_ata_tf_load, ptr @event_class_ata_transfer_data_template], section "llvm.metadata"
@switch.table.ata_dev_read_id = private unnamed_addr constant [9 x i8] c"\EC\EC\A1\EC\EC\EC\EC\EC\EC", align 1
@switch.table.ata_dev_read_id.528 = private unnamed_addr constant [9 x i32] [i32 1, i32 1, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 9], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_qc_prep(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_prep, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
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
define dso_local i32 @__traceiter_ata_qc_issue(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_issue, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_qc_complete_internal(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_complete_internal, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_qc_complete_failed(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_complete_failed, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_qc_complete_done(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_complete_done, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_tf_load(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_tf_load, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #25
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_exec_command(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_exec_command, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_bmdma_setup(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_setup, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_bmdma_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_start, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_bmdma_stop(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_stop, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_bmdma_status(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_bmdma_status, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #25
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_eh_link_autopsy(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_link_autopsy, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_eh_link_autopsy_qc(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_link_autopsy_qc, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_eh_about_to_do(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_about_to_do, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_eh_done(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_eh_done, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_link_hardreset_begin(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_hardreset_begin, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_slave_hardreset_begin(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_slave_hardreset_begin, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_link_softreset_begin(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_softreset_begin, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_link_hardreset_end(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_hardreset_end, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_slave_hardreset_end(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_slave_hardreset_end, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_link_softreset_end(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_softreset_end, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_link_postreset(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_link_postreset, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_slave_postreset(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_slave_postreset, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_std_sched_eh(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_std_sched_eh, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_port_freeze(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_port_freeze, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_port_thaw(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_port_thaw, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_sff_hsm_state(ptr nocapture readnone %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_hsm_state, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i8 noundef zeroext %2) #25
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_sff_hsm_command_complete(ptr nocapture readnone %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_hsm_command_complete, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i8 noundef zeroext %2) #25
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_sff_port_intr(ptr nocapture readnone %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_port_intr, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i8 noundef zeroext %2) #25
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_sff_pio_transfer_data(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_pio_transfer_data, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_atapi_pio_transfer_data(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_atapi_pio_transfer_data, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_atapi_send_cdb(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_atapi_send_cdb, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #25
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_ata_sff_flush_pio_task(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_sff_flush_pio_task, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #25
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_qc_issue_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %12, label %72, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 40) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %72, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 64
  %24 = getelementptr inbounds %struct.ata_link, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ata_device, ptr %22, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 17
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 14
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 4
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 13
  %40 = load i8, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 5
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 10
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 6
  store i8 %43, ptr %44, align 2
  %45 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 11
  %46 = load i8, ptr %45, align 2
  %47 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 7
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 12
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 8
  store i8 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 5
  %52 = load i8, ptr %51, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 11
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 6
  %55 = load i8, ptr %54, align 1
  %56 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 12
  store i8 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 7
  %58 = load i8, ptr %57, align 2
  %59 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 13
  store i8 %58, ptr %59, align 1
  %60 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 8
  %61 = load i8, ptr %60, align 1
  %62 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 10
  store i8 %61, ptr %62, align 2
  %63 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 3
  %64 = load i8, ptr %63, align 2
  %65 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 15
  store i8 %64, ptr %65, align 1
  %66 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 9
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 9
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %14, i32 0, i32 14
  store i8 %70, ptr %71, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #25
  br label %72

72:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_qc_issue_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #21, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %90, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %90, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #25
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #25
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 64
  %40 = getelementptr inbounds %struct.ata_link, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ata_device, ptr %38, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 1
  %50 = load i8, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 17
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 14
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 4
  store i8 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 13
  %56 = load i8, ptr %55, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 5
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 10
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 6
  store i8 %59, ptr %60, align 2
  %61 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 11
  %62 = load i8, ptr %61, align 2
  %63 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 7
  store i8 %62, ptr %63, align 1
  %64 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 12
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 8
  store i8 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 5
  %68 = load i8, ptr %67, align 4
  %69 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 11
  store i8 %68, ptr %69, align 1
  %70 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 12
  store i8 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 7
  %74 = load i8, ptr %73, align 2
  %75 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 13
  store i8 %74, ptr %75, align 1
  %76 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 8
  %77 = load i8, ptr %76, align 1
  %78 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 10
  store i8 %77, ptr %78, align 2
  %79 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 3
  %80 = load i8, ptr %79, align 2
  %81 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 15
  store i8 %80, ptr %81, align 1
  %82 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 9
  %83 = load i8, ptr %82, align 4
  %84 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 9
  store i8 %83, ptr %84, align 1
  %85 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 4
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %20, i32 0, i32 14
  store i8 %86, ptr %87, align 2
  %88 = load i32, ptr %4, align 4
  %89 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 44, i32 noundef %88, ptr noundef %0, i64 noundef 1, ptr noundef %89, ptr noundef %12, ptr noundef null) #25
  br label %90

90:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_qc_complete_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %12, label %69, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 40) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %69, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 64
  %24 = getelementptr inbounds %struct.ata_link, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ata_device, ptr %22, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 14
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 4
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 13
  %37 = load i8, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 5
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 10
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 6
  store i8 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 11
  %43 = load i8, ptr %42, align 2
  %44 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 7
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 12
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 8
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 5
  %49 = load i8, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 11
  store i8 %49, ptr %50, align 1
  %51 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 6
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 12
  store i8 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 7
  %55 = load i8, ptr %54, align 2
  %56 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 13
  store i8 %55, ptr %56, align 1
  %57 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 8
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 10
  store i8 %58, ptr %59, align 2
  %60 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 3
  %61 = load i8, ptr %60, align 2
  %62 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 15
  store i8 %61, ptr %62, align 1
  %63 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 9
  %64 = load i8, ptr %63, align 4
  %65 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 9
  store i8 %64, ptr %65, align 1
  %66 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 4
  %67 = load i8, ptr %66, align 1
  %68 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %14, i32 0, i32 14
  store i8 %67, ptr %68, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #25
  br label %69

69:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_qc_complete_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #21, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %87, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %87, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #25
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #25
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 64
  %40 = getelementptr inbounds %struct.ata_link, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ata_device, ptr %38, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 14
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 4
  store i8 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 13
  %53 = load i8, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 5
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 10
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 6
  store i8 %56, ptr %57, align 2
  %58 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 11
  %59 = load i8, ptr %58, align 2
  %60 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 7
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 12
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 8
  store i8 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 5
  %65 = load i8, ptr %64, align 4
  %66 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 11
  store i8 %65, ptr %66, align 1
  %67 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 6
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 12
  store i8 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 7
  %71 = load i8, ptr %70, align 2
  %72 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 13
  store i8 %71, ptr %72, align 1
  %73 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 8
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 10
  store i8 %74, ptr %75, align 2
  %76 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 3
  %77 = load i8, ptr %76, align 2
  %78 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 15
  store i8 %77, ptr %78, align 1
  %79 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 9
  %80 = load i8, ptr %79, align 4
  %81 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 9
  store i8 %80, ptr %81, align 1
  %82 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 21, i32 4
  %83 = load i8, ptr %82, align 1
  %84 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %20, i32 0, i32 14
  store i8 %83, ptr %84, align 2
  %85 = load i32, ptr %4, align 4
  %86 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 44, i32 noundef %85, ptr noundef %0, i64 noundef 1, ptr noundef %86, ptr noundef %12, ptr noundef null) #25
  br label %87

87:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_tf_load(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %13, label %60, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 28) #25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %60, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 1
  %22 = load i8, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 14
  store i8 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 14
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 2
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 13
  %28 = load i8, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 3
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 10
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 4
  store i8 %31, ptr %32, align 2
  %33 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 11
  %34 = load i8, ptr %33, align 2
  %35 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 5
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 12
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 6
  store i8 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 5
  %40 = load i8, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 9
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 6
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 10
  store i8 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 7
  %46 = load i8, ptr %45, align 2
  %47 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 11
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 8
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 8
  store i8 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 3
  %52 = load i8, ptr %51, align 2
  %53 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 13
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 9
  %55 = load i8, ptr %54, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 7
  store i8 %55, ptr %56, align 1
  %57 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 4
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %15, i32 0, i32 12
  store i8 %58, ptr %59, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #25
  br label %60

60:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_tf_load(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #21, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %78, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %78, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #25
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #25
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 14
  store i8 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 14
  %41 = load i8, ptr %40, align 1
  %42 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 2
  store i8 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 13
  %44 = load i8, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 3
  store i8 %44, ptr %45, align 1
  %46 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 10
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 4
  store i8 %47, ptr %48, align 2
  %49 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 11
  %50 = load i8, ptr %49, align 2
  %51 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 5
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 12
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 6
  store i8 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 5
  %56 = load i8, ptr %55, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 9
  store i8 %56, ptr %57, align 1
  %58 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 6
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 10
  store i8 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 7
  %62 = load i8, ptr %61, align 2
  %63 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 11
  store i8 %62, ptr %63, align 1
  %64 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 8
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 8
  store i8 %65, ptr %66, align 2
  %67 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 3
  %68 = load i8, ptr %67, align 2
  %69 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 13
  store i8 %68, ptr %69, align 1
  %70 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 9
  %71 = load i8, ptr %70, align 4
  %72 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 7
  store i8 %71, ptr %72, align 1
  %73 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 4
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %21, i32 0, i32 12
  store i8 %74, ptr %75, align 2
  %76 = load i32, ptr %5, align 4
  %77 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 28, i32 noundef %76, ptr noundef %0, i64 noundef 1, ptr noundef %77, ptr noundef %13, ptr noundef null) #25
  br label %78

78:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_exec_command_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %14, label %35, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %16, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %16, i32 0, i32 2
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %16, i32 0, i32 6
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 14
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %16, i32 0, i32 3
  store i8 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 8
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %16, i32 0, i32 4
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %16, i32 0, i32 5
  store i8 %33, ptr %34, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #25
  br label %35

35:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_exec_command_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #21, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #25
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #25
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %22, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %22, i32 0, i32 2
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %22, i32 0, i32 6
  store i8 %40, ptr %41, align 1
  %42 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 14
  %43 = load i8, ptr %42, align 1
  %44 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %22, i32 0, i32 3
  store i8 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %22, i32 0, i32 4
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %22, i32 0, i32 5
  store i8 %49, ptr %50, align 2
  %51 = load i32, ptr %6, align 4
  %52 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %14, ptr noundef null) #25
  br label %53

53:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_bmdma_status(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %13, label %23, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 20) #25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_ata_bmdma_status, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = trunc i32 %2 to i8
  %22 = getelementptr inbounds %struct.trace_event_raw_ata_bmdma_status, ptr %15, i32 0, i32 3
  store i8 %21, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #25
  br label %23

23:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_bmdma_status(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #21, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #25
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #25
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_ata_bmdma_status, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = trunc i32 %2 to i8
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_bmdma_status, ptr %21, i32 0, i32 3
  store i8 %37, ptr %38, align 4
  %39 = load i32, ptr %5, align 4
  %40 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #25
  br label %41

41:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_eh_link_autopsy(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %14, label %33, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 64
  %20 = load ptr, ptr %19, align 64
  %21 = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %16, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load ptr, ptr %1, align 64
  %25 = getelementptr inbounds %struct.ata_link, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  %30 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %16, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %16, i32 0, i32 3
  store i32 %2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %16, i32 0, i32 4
  store i32 %3, ptr %32, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #25
  br label %33

33:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_eh_link_autopsy(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #21, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %51, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %51, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #25
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #25
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = load ptr, ptr %1, align 64
  %36 = load ptr, ptr %35, align 64
  %37 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %22, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %1, align 64
  %41 = getelementptr inbounds %struct.ata_link, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %22, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %22, i32 0, i32 3
  store i32 %2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %22, i32 0, i32 4
  store i32 %3, ptr %48, align 4
  %49 = load i32, ptr %6, align 4
  %50 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %14, ptr noundef null) #25
  br label %51

51:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_eh_link_autopsy_qc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %12, label %39, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 28) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 4
  %18 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %14, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 64
  %24 = getelementptr inbounds %struct.ata_link, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ata_device, ptr %22, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %14, i32 0, i32 2
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %14, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %14, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %14, i32 0, i32 5
  store i32 %37, ptr %38, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #25
  br label %39

39:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_eh_link_autopsy_qc(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #21, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #25
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #25
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr inbounds %struct.ata_port, ptr %33, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %20, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 64
  %40 = getelementptr inbounds %struct.ata_link, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ata_device, ptr %38, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, %41
  %45 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %20, i32 0, i32 2
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %20, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %20, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 20
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %20, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %4, align 4
  %56 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %12, ptr noundef null) #25
  br label %57

57:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_eh_action_template(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %14, label %28, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 64
  %20 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_ata_eh_action_template, ptr %16, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %2
  %26 = getelementptr inbounds %struct.trace_event_raw_ata_eh_action_template, ptr %16, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_ata_eh_action_template, ptr %16, i32 0, i32 3
  store i32 %3, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #25
  br label %28

28:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_eh_action_template(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #21, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #25
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #25
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = load ptr, ptr %1, align 64
  %36 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_eh_action_template, ptr %22, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %2
  %42 = getelementptr inbounds %struct.trace_event_raw_ata_eh_action_template, ptr %22, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_ata_eh_action_template, ptr %22, i32 0, i32 3
  store i32 %3, ptr %43, align 4
  %44 = load i32, ptr %6, align 4
  %45 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %14, ptr noundef null) #25
  br label %46

46:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_link_reset_begin_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %14, label %26, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 64
  %20 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_begin_template, ptr %16, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_begin_template, ptr %16, i32 0, i32 2
  %24 = load i16, ptr %2, align 4
  store i16 %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_begin_template, ptr %16, i32 0, i32 3
  store i32 %3, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #25
  br label %26

26:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_link_reset_begin_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #21, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #25
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #25
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = load ptr, ptr %1, align 64
  %36 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_begin_template, ptr %22, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_begin_template, ptr %22, i32 0, i32 2
  %40 = load i16, ptr %2, align 4
  store i16 %40, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_begin_template, ptr %22, i32 0, i32 3
  store i32 %3, ptr %41, align 4
  %42 = load i32, ptr %6, align 4
  %43 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %14, ptr noundef null) #25
  br label %44

44:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_link_reset_end_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %14, label %26, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 64
  %20 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_end_template, ptr %16, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_end_template, ptr %16, i32 0, i32 2
  %24 = load i16, ptr %2, align 4
  store i16 %24, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_end_template, ptr %16, i32 0, i32 3
  store i32 %3, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #25
  br label %26

26:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_link_reset_end_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #21, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #25
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #25
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = load ptr, ptr %1, align 64
  %36 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_end_template, ptr %22, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_end_template, ptr %22, i32 0, i32 2
  %40 = load i16, ptr %2, align 4
  store i16 %40, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_end_template, ptr %22, i32 0, i32 3
  store i32 %3, ptr %41, align 4
  %42 = load i32, ptr %6, align 4
  %43 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %14, ptr noundef null) #25
  br label %44

44:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_port_eh_begin_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %12, label %20, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_ata_port_eh_begin_template, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #25
  br label %20

20:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_port_eh_begin_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #21, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #25
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #25
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_ata_port_eh_begin_template, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %4, align 4
  %37 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %12, ptr noundef null) #25
  br label %38

38:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_sff_hsm_template(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %13, label %46, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 36) #25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %15, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 64
  %25 = getelementptr inbounds %struct.ata_link, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_device, ptr %23, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  %30 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %15, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %15, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %15, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %15, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %1, align 4
  %42 = getelementptr inbounds %struct.ata_port, ptr %41, i32 0, i32 37
  %43 = load i32, ptr %42, align 16
  %44 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %15, i32 0, i32 6
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %15, i32 0, i32 7
  store i8 %2, ptr %45, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #25
  br label %46

46:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_sff_hsm_template(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #21, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %64, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #25
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #25
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr inbounds %struct.ata_port, ptr %34, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %21, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 64
  %41 = getelementptr inbounds %struct.ata_link, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ata_device, ptr %39, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %21, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %21, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %21, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i32
  %56 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %21, i32 0, i32 5
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %1, align 4
  %58 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 37
  %59 = load i32, ptr %58, align 16
  %60 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %21, i32 0, i32 6
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %21, i32 0, i32 7
  store i8 %2, ptr %61, align 4
  %62 = load i32, ptr %5, align 4
  %63 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %62, ptr noundef %0, i64 noundef 1, ptr noundef %63, ptr noundef %13, ptr noundef null) #25
  br label %64

64:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_transfer_data_template(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %14, label %40, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 32) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %16, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 64
  %26 = getelementptr inbounds %struct.ata_link, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ata_device, ptr %24, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  %31 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %16, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %16, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %16, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %16, i32 0, i32 5
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %16, i32 0, i32 6
  store i32 %3, ptr %39, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #25
  br label %40

40:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_transfer_data_template(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #21, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %58, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %5, ptr noundef nonnull %6) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %58, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #25
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #25
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %22, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 64
  %42 = getelementptr inbounds %struct.ata_link, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ata_device, ptr %40, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %22, i32 0, i32 2
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %22, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ata_queued_cmd, ptr %1, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %22, i32 0, i32 4
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %22, i32 0, i32 5
  store i32 %2, ptr %54, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %22, i32 0, i32 6
  store i32 %3, ptr %55, align 4
  %56 = load i32, ptr %6, align 4
  %57 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 36, i32 noundef %56, ptr noundef %0, i64 noundef 1, ptr noundef %57, ptr noundef %14, ptr noundef null) #25
  br label %58

58:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_ata_sff_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #25
  br i1 %12, label %24, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 16) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_ata_sff_template, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 37
  %21 = load i32, ptr %20, align 16
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.trace_event_raw_ata_sff_template, ptr %14, i32 0, i32 2
  store i8 %22, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #25
  br label %24

24:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_ata_sff_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #25
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #21, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %3, ptr noundef nonnull %4) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #25
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #25
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #25
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_ata_sff_template, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 37
  %37 = load i32, ptr %36, align 16
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.trace_event_raw_ata_sff_template, ptr %20, i32 0, i32 2
  store i8 %38, ptr %39, align 4
  %40 = load i32, ptr %4, align 4
  %41 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 20, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %12, ptr noundef null) #25
  br label %42

42:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_std_prereset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %9 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 64
  %15 = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @sata_link_resume(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %1) #25
  switch i32 %20, label %21 [
    i32 -95, label %40
    i32 0, label %40
  ]

21:                                               ; preds = %19
  %22 = load ptr, ptr %0, align 64
  %23 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 27
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 26
  %28 = load ptr, ptr %27, align 64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %26, %21
  %31 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %32, i32 noundef %34, i32 noundef %20) #26
  br label %40

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %38, i32 noundef %20) #26
  br label %40

40:                                               ; preds = %36, %30, %19, %19, %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !9
  %41 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #25
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, ptr %3, align 4
  %45 = and i32 %44, 15
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br label %51

48:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  %49 = load i32, ptr %9, align 4
  %50 = and i32 %49, -3
  store i32 %50, ptr %9, align 4
  br label %51

51:                                               ; preds = %48, %47, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_std_postreset(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %6) #25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, ptr %6, align 4
  %11 = call i32 @sata_scr_write(ptr noundef %0, i32 noundef 1, i32 noundef %10) #25
  br label %12

12:                                               ; preds = %9, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !9
  %13 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %88

15:                                               ; preds = %12
  %16 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !9
  %17 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %15
  %20 = load i32, ptr %3, align 4
  %21 = and i32 %20, 15
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %65

23:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  %24 = load i32, ptr %4, align 4
  %25 = lshr i32 %24, 4
  %26 = and i32 %25, 15
  %27 = load ptr, ptr %0, align 64
  %28 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 27
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 26
  %33 = load ptr, ptr %32, align 64
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %31, %23
  %36 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %26, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = add nsw i32 %26, -1
  %43 = icmp ugt i32 %42, 2
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr [3 x ptr], ptr @sata_spd_string.spd_str, i32 0, i32 %42
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %41, %35
  %48 = phi ptr [ %46, %44 ], [ @.str.29, %41 ], [ @.str.29, %35 ]
  %49 = load i32, ptr %5, align 4
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, i32 noundef %37, i32 noundef %39, ptr noundef %48, i32 noundef %24, i32 noundef %49) #26
  br label %88

51:                                               ; preds = %31
  %52 = getelementptr inbounds %struct.ata_port, ptr %27, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %26, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = add nsw i32 %26, -1
  %57 = icmp ugt i32 %56, 2
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr [3 x ptr], ptr @sata_spd_string.spd_str, i32 0, i32 %56
  %60 = load ptr, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %55, %51
  %62 = phi ptr [ %60, %58 ], [ @.str.29, %55 ], [ @.str.29, %51 ]
  %63 = load i32, ptr %5, align 4
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.310, i32 noundef %53, ptr noundef %62, i32 noundef %24, i32 noundef %63) #26
  br label %88

65:                                               ; preds = %19, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  %66 = load ptr, ptr %0, align 64
  %67 = getelementptr inbounds %struct.ata_port, ptr %66, i32 0, i32 27
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.ata_port, ptr %66, i32 0, i32 26
  %72 = load ptr, ptr %71, align 64
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %70, %65
  %75 = getelementptr inbounds %struct.ata_port, ptr %66, i32 0, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = load i32, ptr %4, align 4
  %80 = load i32, ptr %5, align 4
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, i32 noundef %76, i32 noundef %78, i32 noundef %79, i32 noundef %80) #26
  br label %88

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.ata_port, ptr %66, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = load i32, ptr %4, align 4
  %86 = load i32, ptr %5, align 4
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, i32 noundef %84, i32 noundef %85, i32 noundef %86) #26
  br label %88

88:                                               ; preds = %82, %74, %61, %47, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_error_handler(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_sched_eh(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_end_eh(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_std_qc_defer(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.ata_link, ptr %4, i32 0, i32 3
  %10 = load i32, ptr %9, align 32
  %11 = icmp ult i32 %10, 33
  br i1 %8, label %13, label %12

12:                                               ; preds = %1
  br i1 %11, label %18, label %19

13:                                               ; preds = %1
  br i1 %11, label %18, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.ata_link, ptr %4, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %13, %12
  br label %19

19:                                               ; preds = %18, %14, %12
  %20 = phi i32 [ 1, %18 ], [ 0, %12 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_std_hardreset(ptr noundef %0, ptr nocapture readnone %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  store i8 0, ptr %4, align 1, !annotation !9
  %10 = call i32 @sata_link_hardreset(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %2, ptr noundef nonnull %4, ptr noundef null) #25
  %11 = load i8, ptr %4, align 1, !range !13
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 %10, i32 -11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ata_link_next(ptr noundef readnone %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 3
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libata-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 190, 0\0A.popsection", ""() #25, !srcloc !14
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %6
  switch i32 %2, label %18 [
    i32 0, label %9
    i32 2, label %9
    i32 1, label %16
  ]

9:                                                ; preds = %8, %8
  %10 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 27
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 28
  %15 = load ptr, ptr %14, align 8
  br label %49

16:                                               ; preds = %9, %8
  %17 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  br label %49

18:                                               ; preds = %8, %6
  %19 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  switch i32 %2, label %34 [
    i32 1, label %22
    i32 2, label %29
    i32 0, label %33
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 27
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 28
  %28 = load ptr, ptr %27, align 8
  br label %49

29:                                               ; preds = %22, %21
  %30 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %31 = load ptr, ptr %30, align 64
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %49, !prof !10

33:                                               ; preds = %29, %21
  br label %49

34:                                               ; preds = %21, %18
  %35 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %36 = load ptr, ptr %35, align 64
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %49, label %38, !prof !11

38:                                               ; preds = %34
  %39 = getelementptr %struct.ata_link, ptr %0, i32 1
  %40 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 28
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 27
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr %struct.ata_link, ptr %41, i32 %43
  %45 = icmp ult ptr %39, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = icmp eq i32 %2, 2
  %48 = select i1 %47, ptr %19, ptr null
  br label %49

49:                                               ; preds = %46, %38, %34, %33, %29, %26, %16, %13
  %50 = phi ptr [ null, %33 ], [ %28, %26 ], [ %17, %16 ], [ %15, %13 ], [ %31, %29 ], [ null, %34 ], [ %39, %38 ], [ %48, %46 ]
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ata_dev_next(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libata-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 250, 0\0A.popsection", ""() #25, !srcloc !15
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  switch i32 %2, label %30 [
    i32 0, label %9
    i32 2, label %9
    i32 1, label %11
    i32 3, label %11
  ]

9:                                                ; preds = %8, %8
  %10 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 14
  br label %56

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 14
  %13 = load ptr, ptr %1, align 64
  %14 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 25
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 26
  %18 = load ptr, ptr %17, align 64
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %16
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32 [ 1, %25 ], [ 2, %20 ]
  %28 = getelementptr %struct.ata_device, ptr %12, i32 %27
  %29 = getelementptr %struct.ata_device, ptr %28, i32 -1
  br label %56

30:                                               ; preds = %59, %8, %6
  %31 = phi ptr [ %60, %59 ], [ %0, %8 ], [ %0, %6 ]
  switch i32 %2, label %59 [
    i32 0, label %32
    i32 2, label %32
    i32 1, label %52
    i32 3, label %52
  ]

32:                                               ; preds = %30, %30
  %33 = getelementptr %struct.ata_device, ptr %31, i32 1
  %34 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 14
  %35 = load ptr, ptr %1, align 64
  %36 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 25
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 26
  %40 = load ptr, ptr %39, align 64
  %41 = icmp eq ptr %40, %1
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %38
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i32 [ 1, %47 ], [ 2, %42 ]
  %50 = getelementptr %struct.ata_device, ptr %34, i32 %49
  %51 = icmp ult ptr %33, %50
  br i1 %51, label %56, label %63

52:                                               ; preds = %30, %30
  %53 = getelementptr %struct.ata_device, ptr %31, i32 -1
  %54 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 14
  %55 = icmp ult ptr %53, %54
  br i1 %55, label %63, label %56

56:                                               ; preds = %52, %48, %26, %9
  %57 = phi ptr [ %53, %52 ], [ %33, %48 ], [ %29, %26 ], [ %10, %9 ]
  %58 = icmp ult i32 %2, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %56, %30
  %60 = phi ptr [ %57, %56 ], [ %31, %30 ]
  %61 = getelementptr inbounds %struct.ata_device, ptr %60, i32 0, i32 9
  %62 = load i32, ptr %61, align 64
  switch i32 %62, label %30 [
    i32 7, label %63
    i32 5, label %63
    i32 3, label %63
    i32 1, label %63
    i32 9, label %63
  ]

63:                                               ; preds = %59, %59, %59, %59, %59, %56, %52, %48
  %64 = phi ptr [ null, %48 ], [ null, %52 ], [ %57, %56 ], [ %60, %59 ], [ %60, %59 ], [ %60, %59 ], [ %60, %59 ], [ %60, %59 ]
  ret ptr %64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ata_dev_phys_link(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 26
  %5 = load ptr, ptr %4, align 64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25
  %12 = select i1 %10, ptr %11, ptr %5
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi ptr [ %2, %1 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_force_cbl(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @ata_force_tbl_size, align 4
  %3 = add i32 %2, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load ptr, ptr @ata_force_tbl, align 4
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  br label %8

8:                                                ; preds = %27, %5
  %9 = phi i32 [ %3, %5 ], [ %28, %27 ]
  %10 = getelementptr %struct.ata_force_ent, ptr %6, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %7, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %13, %8
  %17 = getelementptr %struct.ata_force_ent, ptr %6, i32 %9, i32 2, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = zext i8 %18 to i32
  %22 = getelementptr %struct.ata_force_ent, ptr %6, i32 %9, i32 2
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 18
  store i32 %21, ptr %23, align 4
  %24 = load i32, ptr %7, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %24, ptr noundef %25) #26
  br label %30

27:                                               ; preds = %16, %13
  %28 = add i32 %9, -1
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %8, label %30

30:                                               ; preds = %27, %20, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @atapi_cmd_type(i8 noundef zeroext %0) #3 {
  switch i8 %0, label %7 [
    i8 40, label %8
    i8 -88, label %8
    i8 42, label %2
    i8 -86, label %2
    i8 46, label %2
    i8 -66, label %3
    i8 -71, label %3
    i8 -123, label %4
    i8 -95, label %4
  ]

2:                                                ; preds = %1, %1, %1
  br label %8

3:                                                ; preds = %1, %1
  br label %8

4:                                                ; preds = %1, %1
  %5 = load i32, ptr @atapi_passthru16, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %1
  br label %8

8:                                                ; preds = %7, %4, %3, %2, %1, %1
  %9 = phi i32 [ 4, %7 ], [ 2, %3 ], [ 1, %2 ], [ 0, %1 ], [ 0, %1 ], [ 3, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @ata_tf_read_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %2
  %7 = and i32 %3, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 7
  %11 = load i8, ptr %10, align 2
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 40
  %14 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 6
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 32
  %18 = or i64 %17, %13
  %19 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = or i64 %18, %22
  br label %31

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 13
  %26 = load i8, ptr %25, align 4
  %27 = and i8 %26, 15
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 24
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %24, %9
  %32 = phi i64 [ %23, %9 ], [ %30, %24 ]
  %33 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = zext i32 %36 to i64
  %38 = or i64 %32, %37
  %39 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 11
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 8
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 10
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i64
  %47 = or i64 %38, %46
  %48 = or i64 %47, %43
  br label %90

49:                                               ; preds = %2
  %50 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 10
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load ptr, ptr %1, align 64
  %55 = load ptr, ptr %54, align 64
  %56 = getelementptr inbounds %struct.ata_port, ptr %55, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ata_link, ptr %54, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, %59
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %57, i32 noundef %62) #26
  br label %90

64:                                               ; preds = %49
  %65 = zext i8 %51 to i32
  %66 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 13
  %67 = load i8, ptr %66, align 4
  %68 = and i8 %67, 15
  %69 = zext i8 %68 to i32
  %70 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 11
  %71 = load i8, ptr %70, align 2
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = or i32 %76, %72
  %78 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 22
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = mul nuw i32 %77, %80
  %82 = add i32 %81, %69
  %83 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 23
  %84 = load i16, ptr %83, align 4
  %85 = zext i16 %84 to i32
  %86 = mul i32 %82, %85
  %87 = add nsw i32 %65, -1
  %88 = add i32 %87, %86
  %89 = zext i32 %88 to i64
  br label %90

90:                                               ; preds = %64, %53, %31
  %91 = phi i64 [ -1, %53 ], [ %48, %31 ], [ %89, %64 ]
  ret i64 %91
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_build_rw_tf(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
  %8 = load i32, ptr %0, align 4
  %9 = or i32 %8, %4
  %10 = or i32 %9, 6
  store i32 %10, ptr %0, align 4
  %11 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 12296
  %14 = icmp ne i32 %13, 8
  %15 = icmp eq i32 %5, 32
  %16 = or i1 %15, %14
  br i1 %16, label %69, label %17

17:                                               ; preds = %7
  %18 = zext i32 %3 to i64
  %19 = add i64 %2, -1
  %20 = add i64 %19, %18
  %21 = icmp ult i64 %20, 281474976710656
  %22 = icmp ult i32 %3, 65536
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %253

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 1
  store i8 6, ptr %25, align 4
  %26 = or i32 %9, 23
  store i32 %26, ptr %0, align 4
  %27 = and i32 %9, 8
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i8 96, i8 97
  %30 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 14
  store i8 %29, ptr %30, align 1
  %31 = trunc i32 %5 to i8
  %32 = shl i8 %31, 3
  %33 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 9
  store i8 %32, ptr %33, align 4
  %34 = lshr i32 %3, 8
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 3
  store i8 %35, ptr %36, align 2
  %37 = trunc i32 %3 to i8
  %38 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 8
  store i8 %37, ptr %38, align 1
  %39 = lshr i64 %2, 40
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 7
  store i8 %40, ptr %41, align 2
  %42 = lshr i64 %2, 32
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 6
  store i8 %43, ptr %44, align 1
  %45 = lshr i64 %2, 24
  %46 = trunc i64 %45 to i8
  %47 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 5
  store i8 %46, ptr %47, align 4
  %48 = lshr i64 %2, 16
  %49 = trunc i64 %48 to i8
  %50 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  store i8 %49, ptr %50, align 1
  %51 = lshr i64 %2, 8
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 11
  store i8 %52, ptr %53, align 2
  %54 = trunc i64 %2 to i8
  %55 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 10
  store i8 %54, ptr %55, align 1
  %56 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 13
  %57 = and i32 %9, 32
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i8 64, i8 -64
  store i8 %59, ptr %56, align 4
  %60 = load i32, ptr %11, align 4
  %61 = and i32 %60, 2097152
  %62 = icmp ne i32 %61, 0
  %63 = icmp eq i32 %6, 1
  %64 = and i1 %63, %62
  br i1 %64, label %65, label %253

65:                                               ; preds = %24
  %66 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 4
  %67 = load i8, ptr %66, align 1
  %68 = or i8 %67, -128
  store i8 %68, ptr %66, align 1
  br label %253

69:                                               ; preds = %7
  %70 = and i32 %12, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %168, label %72

72:                                               ; preds = %69
  %73 = or i32 %9, 22
  store i32 %73, ptr %0, align 4
  %74 = zext i32 %3 to i64
  %75 = add i64 %74, %2
  %76 = icmp ult i64 %75, 268435455
  %77 = icmp ult i32 %3, 257
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = lshr i64 %2, 24
  %81 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 13
  %82 = load i8, ptr %81, align 4
  %83 = trunc i64 %80 to i8
  %84 = and i8 %83, 15
  %85 = or i8 %82, %84
  store i8 %85, ptr %81, align 4
  br label %110

86:                                               ; preds = %72
  %87 = add i64 %2, -1
  %88 = add i64 %87, %74
  %89 = icmp ult i64 %88, 281474976710656
  %90 = icmp ult i32 %3, 65536
  %91 = and i1 %90, %89
  br i1 %91, label %92, label %253

92:                                               ; preds = %86
  %93 = load i32, ptr %11, align 4
  %94 = and i32 %93, 2
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %253, label %96

96:                                               ; preds = %92
  %97 = or i32 %9, 23
  store i32 %97, ptr %0, align 4
  %98 = lshr i32 %3, 8
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 4
  store i8 %99, ptr %100, align 1
  %101 = lshr i64 %2, 40
  %102 = trunc i64 %101 to i8
  %103 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 7
  store i8 %102, ptr %103, align 2
  %104 = lshr i64 %2, 32
  %105 = trunc i64 %104 to i8
  %106 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 6
  store i8 %105, ptr %106, align 1
  %107 = lshr i64 %2, 24
  %108 = trunc i64 %107 to i8
  %109 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 5
  store i8 %108, ptr %109, align 4
  br label %110

110:                                              ; preds = %96, %79
  %111 = phi i32 [ %97, %96 ], [ %73, %79 ]
  %112 = lshr i32 %111, 3
  %113 = and i32 %112, 4
  %114 = and i32 %111, 1
  %115 = shl nuw nsw i32 %114, 1
  %116 = and i32 %112, 1
  %117 = load i32, ptr %11, align 4
  %118 = and i32 %117, 4096
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 1
  store i8 1, ptr %121, align 4
  %122 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 15
  %123 = load i32, ptr %122, align 16
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i32 8, i32 0
  br label %143

126:                                              ; preds = %110
  %127 = icmp eq i32 %114, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %126
  %129 = load ptr, ptr %1, align 64
  %130 = load ptr, ptr %129, align 64
  %131 = getelementptr inbounds %struct.ata_port, ptr %130, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = and i32 %132, 256
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 1
  store i8 1, ptr %136, align 4
  %137 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 15
  %138 = load i32, ptr %137, align 16
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i32 8, i32 0
  br label %143

141:                                              ; preds = %128, %126
  %142 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 1
  store i8 2, ptr %142, align 4
  br label %143

143:                                              ; preds = %141, %135, %120
  %144 = phi i32 [ %125, %120 ], [ %140, %135 ], [ 16, %141 ]
  %145 = or i32 %113, %144
  %146 = or i32 %145, %115
  %147 = or i32 %146, %116
  %148 = lshr i32 7401584, %147
  %149 = and i32 %148, 1
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %253

151:                                              ; preds = %143
  %152 = getelementptr [24 x i8], ptr @ata_rw_cmds, i32 0, i32 %147
  %153 = load i8, ptr %152, align 1
  %154 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 14
  store i8 %153, ptr %154, align 1
  %155 = trunc i32 %3 to i8
  %156 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 9
  store i8 %155, ptr %156, align 4
  %157 = lshr i64 %2, 16
  %158 = trunc i64 %157 to i8
  %159 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  store i8 %158, ptr %159, align 1
  %160 = lshr i64 %2, 8
  %161 = trunc i64 %160 to i8
  %162 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 11
  store i8 %161, ptr %162, align 2
  %163 = trunc i64 %2 to i8
  %164 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 10
  store i8 %163, ptr %164, align 1
  %165 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 13
  %166 = load i8, ptr %165, align 4
  %167 = or i8 %166, 64
  store i8 %167, ptr %165, align 4
  br label %253

168:                                              ; preds = %69
  %169 = zext i32 %3 to i64
  %170 = add i64 %169, %2
  %171 = icmp ult i64 %170, 268435455
  %172 = icmp ult i32 %3, 257
  %173 = and i1 %172, %171
  br i1 %173, label %174, label %253

174:                                              ; preds = %168
  %175 = lshr i32 %9, 3
  %176 = and i32 %175, 4
  %177 = and i32 %9, 1
  %178 = shl nuw nsw i32 %177, 1
  %179 = and i32 %175, 1
  %180 = and i32 %12, 4096
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 1
  store i8 1, ptr %183, align 4
  %184 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 15
  %185 = load i32, ptr %184, align 16
  %186 = icmp eq i32 %185, 0
  %187 = select i1 %186, i32 8, i32 0
  br label %205

188:                                              ; preds = %174
  %189 = icmp eq i32 %177, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %188
  %191 = load ptr, ptr %1, align 64
  %192 = load ptr, ptr %191, align 64
  %193 = getelementptr inbounds %struct.ata_port, ptr %192, i32 0, i32 3
  %194 = load i32, ptr %193, align 4
  %195 = and i32 %194, 256
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 1
  store i8 1, ptr %198, align 4
  %199 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 15
  %200 = load i32, ptr %199, align 16
  %201 = icmp eq i32 %200, 0
  %202 = select i1 %201, i32 8, i32 0
  br label %205

203:                                              ; preds = %190, %188
  %204 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 1
  store i8 2, ptr %204, align 4
  br label %205

205:                                              ; preds = %203, %197, %182
  %206 = phi i32 [ %187, %182 ], [ %202, %197 ], [ 16, %203 ]
  %207 = or i32 %176, %206
  %208 = or i32 %207, %178
  %209 = or i32 %208, %179
  %210 = lshr i32 7401584, %209
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %253

213:                                              ; preds = %205
  %214 = getelementptr [24 x i8], ptr @ata_rw_cmds, i32 0, i32 %209
  %215 = load i8, ptr %214, align 1
  %216 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 14
  store i8 %215, ptr %216, align 1
  %217 = trunc i64 %2 to i32
  %218 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 23
  %219 = load i16, ptr %218, align 4
  %220 = zext i16 %219 to i32
  %221 = freeze i32 %220
  %222 = udiv i32 %217, %221
  %223 = getelementptr inbounds %struct.ata_device, ptr %1, i32 0, i32 22
  %224 = load i16, ptr %223, align 2
  %225 = zext i16 %224 to i32
  %226 = freeze i32 %222
  %227 = freeze i32 %225
  %228 = udiv i32 %226, %227
  %229 = mul i32 %228, %227
  %230 = sub i32 %226, %229
  %231 = mul i32 %222, %221
  %232 = sub i32 %217, %231
  %233 = icmp ult i32 %228, 65536
  %234 = icmp ult i32 %230, 16
  %235 = icmp ult i32 %232, 255
  %236 = and i1 %233, %234
  %237 = select i1 %236, i1 %235, i1 false
  br i1 %237, label %238, label %253

238:                                              ; preds = %213
  %239 = trunc i32 %3 to i8
  %240 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 9
  store i8 %239, ptr %240, align 4
  %241 = trunc i32 %232 to i8
  %242 = add nuw i8 %241, 1
  %243 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 10
  store i8 %242, ptr %243, align 1
  %244 = trunc i32 %228 to i8
  %245 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 11
  store i8 %244, ptr %245, align 2
  %246 = lshr i32 %228, 8
  %247 = trunc i32 %246 to i8
  %248 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  store i8 %247, ptr %248, align 1
  %249 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 13
  %250 = load i8, ptr %249, align 4
  %251 = trunc i32 %230 to i8
  %252 = or i8 %250, %251
  store i8 %252, ptr %249, align 4
  br label %253

253:                                              ; preds = %238, %213, %205, %168, %151, %143, %92, %86, %65, %24, %17
  %254 = phi i32 [ -34, %17 ], [ -34, %92 ], [ -34, %86 ], [ 0, %238 ], [ 0, %151 ], [ 0, %24 ], [ 0, %65 ], [ -22, %143 ], [ -34, %213 ], [ -34, %168 ], [ -22, %205 ]
  ret i32 %254
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_pack_xfermask(i32 noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = and i32 %0, 127
  %5 = shl i32 %1, 7
  %6 = and i32 %5, 3968
  %7 = or i32 %6, %4
  %8 = shl i32 %2, 12
  %9 = and i32 %8, 1044480
  %10 = or i32 %7, %9
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ata_unpack_xfermask(i32 noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #7 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = and i32 %0, 127
  store i32 %7, ptr %1, align 4
  br label %8

8:                                                ; preds = %6, %4
  %9 = icmp eq ptr %2, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = lshr i32 %0, 7
  %12 = and i32 %11, 31
  store i32 %12, ptr %2, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = icmp eq ptr %3, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = lshr i32 %0, 12
  %17 = and i32 %16, 255
  store i32 %17, ptr %3, align 4
  br label %18

18:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i8 @ata_xfer_mask2mode(i32 noundef %0) #8 {
  %2 = icmp eq i32 %0, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 false) #25, !range !16
  %4 = sub nsw i32 31, %3
  %5 = select i1 %2, i32 -1, i32 %4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = icmp ult i32 %5, 7
  br i1 %8, label %9, label %17

9:                                                ; preds = %19, %17, %7
  %10 = phi i32 [ 0, %7 ], [ -7, %17 ], [ -12, %19 ]
  %11 = phi ptr [ @ata_xfer_tbl, %7 ], [ getelementptr inbounds ([4 x %struct.ata_xfer_ent], ptr @ata_xfer_tbl, i32 0, i32 1), %17 ], [ getelementptr inbounds ([4 x %struct.ata_xfer_ent], ptr @ata_xfer_tbl, i32 0, i32 2), %19 ]
  %12 = getelementptr inbounds %struct.ata_xfer_ent, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = add nsw i32 %10, %5
  %15 = trunc i32 %14 to i8
  %16 = add i8 %13, %15
  br label %21

17:                                               ; preds = %7
  %18 = icmp ult i32 %5, 12
  br i1 %18, label %9, label %19

19:                                               ; preds = %17
  %20 = icmp ult i32 %5, 20
  br i1 %20, label %9, label %21

21:                                               ; preds = %19, %9, %1
  %22 = phi i8 [ %16, %9 ], [ -1, %19 ], [ -1, %1 ]
  ret i8 %22
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ata_xfer_mode2mask(i8 noundef zeroext %0) #9 {
  %2 = zext i8 %0 to i32
  %3 = icmp ult i8 %0, 8
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = icmp ult i8 %0, 15
  br i1 %5, label %6, label %15

6:                                                ; preds = %19, %17, %4
  %7 = phi i32 [ 0, %4 ], [ 7, %17 ], [ 12, %19 ]
  %8 = phi i32 [ -8, %4 ], [ -32, %17 ], [ -64, %19 ]
  %9 = add nuw nsw i32 %7, %2
  %10 = add nsw i32 %8, %9
  %11 = shl i32 2, %10
  %12 = add i32 %11, -1
  %13 = shl nsw i32 -1, %7
  %14 = and i32 %12, %13
  br label %22

15:                                               ; preds = %4
  %16 = icmp ult i8 %0, 32
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = icmp ult i8 %0, 37
  br i1 %18, label %6, label %19

19:                                               ; preds = %17
  %20 = and i8 %0, -8
  %21 = icmp eq i8 %20, 64
  br i1 %21, label %6, label %22

22:                                               ; preds = %19, %15, %6, %1
  %23 = phi i32 [ %14, %6 ], [ 0, %19 ], [ 0, %15 ], [ 0, %1 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @ata_xfer_mode2shift(i32 noundef %0) #9 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = icmp ult i32 %0, 15
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = icmp ult i32 %0, 32
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = icmp ult i32 %0, 37
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = and i32 %0, -8
  %11 = icmp eq i32 %10, 64
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %5, %1
  br label %13

13:                                               ; preds = %12, %9, %7, %3
  %14 = phi i32 [ 0, %3 ], [ 7, %7 ], [ -1, %12 ], [ 12, %9 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @ata_mode_string(i32 noundef %0) #10 {
  %2 = icmp eq i32 %0, 0
  %3 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 false) #25, !range !16
  %4 = sub nsw i32 31, %3
  %5 = select i1 %2, i32 -1, i32 %4
  %6 = icmp ult i32 %5, 20
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr [20 x ptr], ptr @ata_mode_string.xfer_mode_str, i32 0, i32 %5
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = phi ptr [ %9, %7 ], [ @.str.25, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @sata_spd_string(i32 noundef %0) local_unnamed_addr #6 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = icmp ugt i32 %4, 2
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr [3 x ptr], ptr @sata_spd_string.spd_str, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3, %1
  %10 = phi ptr [ %8, %6 ], [ @.str.29, %3 ], [ @.str.29, %1 ]
  ret ptr %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_dev_classify(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 11
  %3 = load i8, ptr %2, align 2
  switch i8 %3, label %24 [
    i8 0, label %4
    i8 20, label %8
    i8 105, label %12
    i8 60, label %16
    i8 -51, label %20
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, -21
  br i1 %11, label %25, label %24

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, -106
  br i1 %15, label %25, label %24

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, -61
  br i1 %19, label %25, label %24

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, -85
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %16, %12, %8, %4, %1
  br label %25

25:                                               ; preds = %24, %20, %16, %12, %8, %4
  %26 = phi i32 [ 0, %24 ], [ 1, %4 ], [ 3, %8 ], [ 5, %12 ], [ 7, %16 ], [ 9, %20 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_id_string(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = and i32 %3, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9, !prof !10

7:                                                ; preds = %4
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %25, label %10

9:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libata-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1049, 0\0A.popsection", ""() #25, !srcloc !17
  unreachable

10:                                               ; preds = %10, %7
  %11 = phi i32 [ %23, %10 ], [ %3, %7 ]
  %12 = phi i32 [ %22, %10 ], [ %2, %7 ]
  %13 = phi ptr [ %21, %10 ], [ %1, %7 ]
  %14 = getelementptr i16, ptr %0, i32 %12
  %15 = load i16, ptr %14, align 2
  %16 = lshr i16 %15, 8
  %17 = trunc i16 %16 to i8
  store i8 %17, ptr %13, align 1
  %18 = getelementptr i8, ptr %13, i32 1
  %19 = load i16, ptr %14, align 2
  %20 = trunc i16 %19 to i8
  store i8 %20, ptr %18, align 1
  %21 = getelementptr i8, ptr %13, i32 2
  %22 = add i32 %12, 1
  %23 = add i32 %11, -2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %10

25:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_id_c_string(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %3, -1
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10, !prof !10

8:                                                ; preds = %4
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %26, label %11

10:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libata-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1049, 0\0A.popsection", ""() #25, !srcloc !17
  unreachable

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %24, %11 ], [ %5, %8 ]
  %13 = phi i32 [ %23, %11 ], [ %2, %8 ]
  %14 = phi ptr [ %22, %11 ], [ %1, %8 ]
  %15 = getelementptr i16, ptr %0, i32 %13
  %16 = load i16, ptr %15, align 2
  %17 = lshr i16 %16, 8
  %18 = trunc i16 %17 to i8
  store i8 %18, ptr %14, align 1
  %19 = getelementptr i8, ptr %14, i32 1
  %20 = load i16, ptr %15, align 2
  %21 = trunc i16 %20 to i8
  store i8 %21, ptr %19, align 1
  %22 = getelementptr i8, ptr %14, i32 2
  %23 = add i32 %13, 1
  %24 = add i32 %12, -2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %11

26:                                               ; preds = %11, %8
  %27 = tail call i32 @strnlen(ptr noundef %1, i32 noundef %5)
  %28 = getelementptr i8, ptr %1, i32 %27
  br label %29

29:                                               ; preds = %32, %26
  %30 = phi ptr [ %28, %26 ], [ %33, %32 ]
  %31 = icmp ugt ptr %30, %1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = getelementptr i8, ptr %30, i32 -1
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 32
  br i1 %35, label %29, label %36

36:                                               ; preds = %32, %29
  store i8 0, ptr %30, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @ata_tf_to_lba48(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 2
  %4 = zext i8 %3 to i64
  %5 = shl nuw nsw i64 %4, 40
  %6 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 32
  %10 = or i64 %9, %5
  %11 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 24
  %15 = or i64 %10, %14
  %16 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = zext i32 %19 to i64
  %21 = or i64 %15, %20
  %22 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 11
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 10
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i64
  %30 = or i64 %21, %29
  %31 = or i64 %30, %26
  ret i64 %31
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @ata_tf_to_lba(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 13
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 15
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 24
  %7 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %6, %10
  %12 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 11
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or i32 %11, %15
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 10
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = or i64 %17, %20
  ret i64 %21
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_id_xfermask(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr i16, ptr %0, i32 53
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, 2
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr i16, ptr %0, i32 64
  %8 = load i16, ptr %7, align 2
  %9 = shl i16 %8, 3
  %10 = and i16 %9, 24
  %11 = or i16 %10, 7
  %12 = zext i16 %11 to i32
  br label %22

13:                                               ; preds = %1
  %14 = getelementptr i16, ptr %0, i32 51
  %15 = load i16, ptr %14, align 2
  %16 = icmp ult i16 %15, 1280
  %17 = lshr i16 %15, 8
  %18 = zext i16 %17 to i32
  %19 = shl i32 2, %18
  %20 = add i32 %19, -1
  %21 = select i1 %16, i32 %20, i32 1
  br label %22

22:                                               ; preds = %13, %6
  %23 = phi i32 [ %12, %6 ], [ %21, %13 ]
  %24 = getelementptr i16, ptr %0, i32 63
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, 7
  %27 = zext i16 %26 to i32
  %28 = load i16, ptr %0, align 2
  switch i16 %28, label %29 [
    i16 -31606, label %34
    i16 -31670, label %34
  ]

29:                                               ; preds = %22
  %30 = getelementptr i16, ptr %0, i32 83
  %31 = load i16, ptr %30, align 2
  %32 = and i16 %31, -16380
  %33 = icmp eq i16 %32, 16388
  br i1 %33, label %34, label %53

34:                                               ; preds = %29, %22, %22
  %35 = getelementptr i16, ptr %0, i32 163
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %37, 7
  %39 = lshr i32 %37, 3
  %40 = and i32 %39, 7
  %41 = icmp eq i32 %38, 0
  %42 = or i32 %23, 32
  %43 = select i1 %41, i32 %23, i32 %42
  %44 = icmp ugt i32 %38, 1
  %45 = or i32 %43, 64
  %46 = select i1 %44, i32 %45, i32 %43
  %47 = icmp eq i32 %40, 0
  %48 = or i32 %27, 8
  %49 = select i1 %47, i32 %27, i32 %48
  %50 = icmp ugt i32 %40, 1
  %51 = or i32 %49, 16
  %52 = select i1 %50, i32 %51, i32 %49
  br label %53

53:                                               ; preds = %34, %29
  %54 = phi i32 [ %46, %34 ], [ %23, %29 ]
  %55 = phi i32 [ %52, %34 ], [ %27, %29 ]
  %56 = and i16 %3, 4
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = getelementptr i16, ptr %0, i32 88
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = shl nuw nsw i32 %61, 12
  %63 = and i32 %62, 1044480
  br label %64

64:                                               ; preds = %58, %53
  %65 = phi i32 [ %63, %58 ], [ 0, %53 ]
  %66 = and i32 %54, 127
  %67 = shl nsw i32 %55, 7
  %68 = and i32 %67, 3968
  %69 = or i32 %68, %66
  %70 = or i32 %69, %65
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_exec_internal_sg(ptr noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.completion, align 8
  %9 = load ptr, ptr %0, align 64
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 14
  %12 = load i8, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #25
  %13 = getelementptr inbounds %struct.completion, ptr %8, i32 0, i32 1, i32 1
  store i64 0, ptr %8, align 8
  store ptr %13, ptr %13, align 8
  %14 = getelementptr inbounds %struct.completion, ptr %8, i32 0, i32 1, i32 1, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #25
  %18 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 4
  %19 = load i32, ptr %18, align 16
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %7
  %23 = load ptr, ptr %15, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %17) #25
  br label %222

24:                                               ; preds = %7
  %25 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32
  %26 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 7
  store i32 32, ptr %26, align 4
  %27 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 8
  store i32 0, ptr %27, align 4
  %28 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 2
  store ptr null, ptr %28, align 4
  store ptr %10, ptr %25, align 4
  %29 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 1
  store ptr %0, ptr %29, align 4
  %30 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 11
  store i32 3, ptr %30, align 4
  %31 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 17
  %32 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 6
  store i32 0, ptr %32, align 4
  %33 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 15
  store i32 0, ptr %33, align 4
  %34 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 14
  store i32 0, ptr %34, align 4
  %35 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 13
  store i32 0, ptr %35, align 4
  %36 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 9
  store i32 0, ptr %36, align 4
  %37 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 12
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %31, i8 0, i64 16, i1 false) #25
  store i32 512, ptr %37, align 4
  %38 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %38, i8 0, i32 24, i1 false) #25
  %39 = load ptr, ptr %0, align 64
  %40 = load ptr, ptr %39, align 64
  %41 = getelementptr inbounds %struct.ata_port, ptr %40, i32 0, i32 9
  %42 = load i8, ptr %41, align 4
  %43 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 4, i32 2
  store i8 %42, ptr %43, align 1
  %44 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i8 -96, i8 -80
  %48 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 4, i32 13
  store i8 %47, ptr %48, align 4
  %49 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 21, i32 14
  store i8 64, ptr %49, align 1
  %50 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 21, i32 8
  store i8 0, ptr %50, align 1
  %51 = getelementptr inbounds %struct.ata_link, ptr %9, i32 0, i32 3
  %52 = load i32, ptr %51, align 32
  %53 = getelementptr inbounds %struct.ata_link, ptr %9, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 21
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 22
  %58 = load i32, ptr %57, align 32
  store i32 -84148995, ptr %51, align 32
  store i32 0, ptr %53, align 4
  store i64 0, ptr %55, align 8
  store i32 0, ptr %57, align 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %38, ptr noundef align 4 dereferenceable(24) %1, i32 24, i1 false)
  %59 = icmp eq ptr %2, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %24
  %61 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %61, ptr noundef nonnull align 1 dereferenceable(16) %2, i32 16, i1 false)
  br label %62

62:                                               ; preds = %60, %24
  %63 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = icmp eq i8 %64, 10
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 1024
  %70 = icmp ne i32 %69, 0
  %71 = icmp eq i32 %3, 2
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 4, i32 8
  %75 = load i8, ptr %74, align 1
  %76 = or i8 %75, 4
  store i8 %76, ptr %74, align 1
  %77 = load i32, ptr %32, align 4
  %78 = or i32 %77, 16
  store i32 %78, ptr %32, align 4
  store i32 %3, ptr %30, align 4
  br label %83

79:                                               ; preds = %66, %62
  %80 = load i32, ptr %32, align 4
  %81 = or i32 %80, 16
  store i32 %81, ptr %32, align 4
  store i32 %3, ptr %30, align 4
  %82 = icmp eq i32 %3, 3
  br i1 %82, label %98, label %83

83:                                               ; preds = %79, %73
  %84 = icmp eq i32 %5, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %85, %83
  %86 = phi ptr [ %93, %85 ], [ %4, %83 ]
  %87 = phi i32 [ %91, %85 ], [ 0, %83 ]
  %88 = phi i32 [ %92, %85 ], [ 0, %83 ]
  %89 = getelementptr inbounds %struct.scatterlist, ptr %86, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %87
  %92 = add nuw i32 %88, 1
  %93 = call ptr @sg_next(ptr noundef %86) #25
  %94 = icmp eq i32 %92, %5
  br i1 %94, label %95, label %85

95:                                               ; preds = %85, %83
  %96 = phi i32 [ 0, %83 ], [ %91, %85 ]
  store ptr %4, ptr %31, align 4
  store i32 %5, ptr %36, align 4
  %97 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 18
  store ptr %4, ptr %97, align 4
  store i32 %96, ptr %35, align 4
  br label %98

98:                                               ; preds = %95, %79
  %99 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 23
  store ptr %8, ptr %99, align 4
  %100 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 22
  store ptr @ata_qc_complete_internal, ptr %100, align 4
  call void @ata_qc_issue(ptr noundef %25)
  %101 = load ptr, ptr %15, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %101, i32 noundef %17) #25
  %102 = icmp eq i32 %6, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, ptr @ata_probe_timeout, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = mul i32 %104, 1000
  br label %110

108:                                              ; preds = %103
  %109 = call i32 @ata_internal_cmd_timeout(ptr noundef %0, i8 noundef zeroext %12) #25
  br label %110

110:                                              ; preds = %108, %106, %98
  %111 = phi i1 [ false, %106 ], [ true, %108 ], [ false, %98 ]
  %112 = phi i32 [ %107, %106 ], [ %109, %108 ], [ %6, %98 ]
  %113 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.ata_port_operations, ptr %114, i32 0, i32 22
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %110
  call void @ata_eh_release(ptr noundef %10) #25
  br label %119

119:                                              ; preds = %118, %110
  %120 = call i32 @__msecs_to_jiffies(i32 noundef %112) #25
  %121 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %8, i32 noundef %120) #25
  %122 = load ptr, ptr %113, align 4
  %123 = getelementptr inbounds %struct.ata_port_operations, ptr %122, i32 0, i32 22
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  call void @ata_eh_acquire(ptr noundef %10) #25
  br label %127

127:                                              ; preds = %126, %119
  call void @ata_sff_flush_pio_task(ptr noundef %10) #25
  %128 = icmp eq i32 %121, 0
  br i1 %128, label %129, label %159

129:                                              ; preds = %127
  %130 = load ptr, ptr %15, align 8
  %131 = call i32 @_raw_spin_lock_irqsave(ptr noundef %130) #25
  %132 = load i32, ptr %32, align 4
  %133 = and i32 %132, 1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %157, label %135

135:                                              ; preds = %129
  %136 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 20
  %137 = load i32, ptr %136, align 4
  %138 = or i32 %137, 4
  store i32 %138, ptr %136, align 4
  %139 = load ptr, ptr %113, align 4
  %140 = getelementptr inbounds %struct.ata_port_operations, ptr %139, i32 0, i32 22
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %135
  %144 = call i32 @ata_port_freeze(ptr noundef %10) #25
  br label %146

145:                                              ; preds = %135
  call void @ata_qc_complete(ptr noundef %25)
  br label %146

146:                                              ; preds = %145, %143
  %147 = load ptr, ptr %0, align 64
  %148 = load ptr, ptr %147, align 64
  %149 = getelementptr inbounds %struct.ata_port, ptr %148, i32 0, i32 5
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.ata_link, ptr %147, i32 0, i32 1
  %152 = load i32, ptr %151, align 4
  %153 = load i32, ptr %44, align 4
  %154 = add i32 %153, %152
  %155 = zext i8 %12 to i32
  %156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %150, i32 noundef %154, i32 noundef %155) #26
  br label %157

157:                                              ; preds = %146, %129
  %158 = load ptr, ptr %15, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %158, i32 noundef %131) #25
  br label %159

159:                                              ; preds = %157, %127
  %160 = load ptr, ptr %113, align 4
  %161 = getelementptr inbounds %struct.ata_port_operations, ptr %160, i32 0, i32 24
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  call void %162(ptr noundef %25) #25
  br label %165

165:                                              ; preds = %164, %159
  %166 = load i32, ptr %32, align 4
  %167 = and i32 %166, 65536
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %188, label %169

169:                                              ; preds = %165
  %170 = load i8, ptr %49, align 1
  %171 = and i8 %170, 33
  %172 = icmp eq i8 %171, 0
  %173 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 20
  %174 = load i32, ptr %173, align 4
  br i1 %172, label %178, label %175

175:                                              ; preds = %169
  %176 = or i32 %174, 1
  store i32 %176, ptr %173, align 4
  %177 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 20
  br label %182

178:                                              ; preds = %169
  %179 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 20
  %180 = icmp eq i32 %174, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 256, ptr %179, align 4
  br label %195

182:                                              ; preds = %178, %175
  %183 = phi ptr [ %179, %178 ], [ %177, %175 ]
  %184 = phi i32 [ %174, %178 ], [ %176, %175 ]
  %185 = and i32 %184, -257
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %182
  store i32 %185, ptr %183, align 4
  br label %195

188:                                              ; preds = %165
  %189 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 4, i32 14
  %190 = load i8, ptr %189, align 1
  %191 = icmp eq i8 %190, 11
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i8, ptr %49, align 1
  %194 = or i8 %193, 2
  store i8 %194, ptr %49, align 1
  br label %195

195:                                              ; preds = %192, %188, %187, %182, %181
  %196 = load ptr, ptr %15, align 8
  %197 = call i32 @_raw_spin_lock_irqsave(ptr noundef %196) #25
  %198 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %1, ptr noundef align 4 dereferenceable(24) %198, i32 24, i1 false)
  %199 = getelementptr %struct.ata_port, ptr %10, i32 0, i32 19, i32 32, i32 20
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq ptr %25, null
  %202 = load i1, ptr @ata_qc_free.__already_done, align 1
  %203 = xor i1 %202, true
  %204 = select i1 %201, i1 %203, i1 false
  br i1 %204, label %205, label %206, !prof !11

205:                                              ; preds = %195
  store i1 true, ptr @ata_qc_free.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4617, i32 noundef 9, ptr noundef null) #25
  br label %206

206:                                              ; preds = %205, %195
  %207 = load ptr, ptr %25, align 4
  store i32 0, ptr %32, align 4
  %208 = load i32, ptr %26, align 4
  %209 = icmp ult i32 %208, 33
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  store i32 -84148995, ptr %26, align 4
  %211 = getelementptr inbounds %struct.ata_port, ptr %207, i32 0, i32 3
  %212 = load i32, ptr %211, align 4
  %213 = and i32 %212, 16777216
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  call void @ata_sas_free_tag(i32 noundef %208, ptr noundef %207) #25
  br label %216

216:                                              ; preds = %215, %210, %206
  store i32 %52, ptr %51, align 32
  store i32 %54, ptr %53, align 4
  store i64 %56, ptr %55, align 8
  store i32 %58, ptr %57, align 32
  %217 = load ptr, ptr %15, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %217, i32 noundef %197) #25
  %218 = and i32 %200, 4
  %219 = icmp ne i32 %218, 0
  %220 = and i1 %111, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  call void @ata_internal_cmd_timed_out(ptr noundef %0, i8 noundef zeroext %12) #25
  br label %222

222:                                              ; preds = %221, %216, %22
  %223 = phi i32 [ 64, %22 ], [ %200, %221 ], [ %200, %216 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #25
  ret i32 %223
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @ata_sg_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  store ptr %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  store i32 %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 18
  store ptr %1, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ata_qc_complete_internal(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  tail call void @complete(ptr noundef %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_qc_issue(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 64
  %6 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_port_operations, ptr %9, i32 0, i32 22
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 32
  %16 = icmp ult i32 %15, 33
  %17 = load i1, ptr @ata_qc_issue.__already_done, align 1
  %18 = xor i1 %17, true
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %21, !prof !11

20:                                               ; preds = %13
  store i1 true, ptr @ata_qc_issue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4846, i32 noundef 9, ptr noundef null) #25
  br label %21

21:                                               ; preds = %20, %13, %1
  %22 = and i8 %7, 4
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  br i1 %23, label %50, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %25
  %31 = icmp ne i32 %30, 0
  %32 = load i1, ptr @ata_qc_issue.__already_done.79, align 1
  %33 = xor i1 %32, true
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %37, !prof !11

35:                                               ; preds = %26
  store i1 true, ptr @ata_qc_issue.__already_done.79, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4849, i32 noundef 9, ptr noundef null) #25
  %36 = load i32, ptr %24, align 4
  br label %37

37:                                               ; preds = %35, %26
  %38 = phi i32 [ %36, %35 ], [ %25, %26 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 22
  %42 = load i32, ptr %41, align 32
  %43 = add i32 %42, 1
  store i32 %43, ptr %41, align 32
  %44 = load i32, ptr %24, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i32 [ %44, %40 ], [ %38, %37 ]
  %47 = load i32, ptr %27, align 4
  %48 = shl nuw i32 1, %47
  %49 = or i32 %46, %48
  store i32 %49, ptr %24, align 4
  br label %63

50:                                               ; preds = %21
  %51 = icmp ne i32 %25, 0
  %52 = load i1, ptr @ata_qc_issue.__already_done.80, align 1
  %53 = xor i1 %52, true
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56, !prof !11

55:                                               ; preds = %50
  store i1 true, ptr @ata_qc_issue.__already_done.80, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4855, i32 noundef 9, ptr noundef null) #25
  br label %56

56:                                               ; preds = %55, %50
  %57 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 22
  %58 = load i32, ptr %57, align 32
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 32
  %60 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 3
  store i32 %61, ptr %62, align 32
  br label %63

63:                                               ; preds = %56, %45
  %64 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = or i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %68 = load i32, ptr %67, align 4
  %69 = zext i32 %68 to i64
  %70 = shl nuw i64 1, %69
  %71 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 21
  %72 = load i64, ptr %71, align 8
  %73 = or i64 %70, %72
  store i64 %73, ptr %71, align 8
  %74 = and i8 %7, 3
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %197, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %197, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %197, label %88

88:                                               ; preds = %84, %63
  %89 = and i8 %7, 2
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = and i8 %7, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %116, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %94, %88
  %100 = load ptr, ptr %0, align 4
  %101 = getelementptr inbounds %struct.ata_port, ptr %100, i32 0, i32 32
  %102 = load ptr, ptr %101, align 32
  %103 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 11
  %108 = load i32, ptr %107, align 4
  %109 = tail call i32 @dma_map_sg_attrs(ptr noundef %102, ptr noundef %104, i32 noundef %106, i32 noundef %108, i32 noundef 0) #25
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %197, label %111

111:                                              ; preds = %99
  %112 = load i32, ptr %105, align 4
  %113 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 10
  store i32 %112, ptr %113, align 4
  store i32 %109, ptr %105, align 4
  %114 = load i32, ptr %64, align 4
  %115 = or i32 %114, 2
  store i32 %115, ptr %64, align 4
  br label %116

116:                                              ; preds = %111, %94, %91
  %117 = load ptr, ptr %3, align 4
  %118 = getelementptr inbounds %struct.ata_device, ptr %117, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 32768
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122, !prof !10

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 11
  %124 = getelementptr inbounds %struct.ata_link, ptr %5, i32 0, i32 11, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = or i32 %125, 6
  store i32 %126, ptr %124, align 4
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %123, ptr noundef nonnull @.str.81) #25
  %127 = tail call i32 @ata_link_abort(ptr noundef %5) #25
  br label %202

128:                                              ; preds = %116
  %129 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_prep, i32 0, i32 1), align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %154

131:                                              ; preds = %128
  %132 = tail call ptr @llvm.thread.pointer() #25
  %133 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 2
  %134 = load i32, ptr %133, align 8
  %135 = lshr i32 %134, 5
  %136 = getelementptr i32, ptr @__cpu_online_mask, i32 %135
  %137 = load volatile i32, ptr %136, align 4
  %138 = and i32 %134, 31
  %139 = shl nuw i32 1, %138
  %140 = and i32 %139, %137
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %154, label %142

142:                                              ; preds = %131
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !18
  %143 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_prep, i32 0, i32 7), align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %153, label %145

145:                                              ; preds = %145, %142
  %146 = phi ptr [ %150, %145 ], [ %143, %142 ]
  %147 = load volatile ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.tracepoint_func, ptr %146, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  tail call void %147(ptr noundef %149, ptr noundef %0) #25
  %150 = getelementptr %struct.tracepoint_func, ptr %146, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %145

153:                                              ; preds = %145, %142
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !19
  br label %154

154:                                              ; preds = %153, %131, %128
  %155 = load ptr, ptr %8, align 4
  %156 = getelementptr inbounds %struct.ata_port_operations, ptr %155, i32 0, i32 2
  %157 = load ptr, ptr %156, align 4
  %158 = tail call i32 %157(ptr noundef %0) #25
  %159 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %160 = load i32, ptr %159, align 4
  %161 = or i32 %160, %158
  store i32 %161, ptr %159, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %201, !prof !10

163:                                              ; preds = %154
  %164 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_issue, i32 0, i32 1), align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %189

166:                                              ; preds = %163
  %167 = tail call ptr @llvm.thread.pointer() #25
  %168 = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 2
  %169 = load i32, ptr %168, align 8
  %170 = lshr i32 %169, 5
  %171 = getelementptr i32, ptr @__cpu_online_mask, i32 %170
  %172 = load volatile i32, ptr %171, align 4
  %173 = and i32 %169, 31
  %174 = shl nuw i32 1, %173
  %175 = and i32 %174, %172
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %189, label %177

177:                                              ; preds = %166
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !20
  %178 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_issue, i32 0, i32 7), align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %180, %177
  %181 = phi ptr [ %185, %180 ], [ %178, %177 ]
  %182 = load volatile ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.tracepoint_func, ptr %181, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  tail call void %182(ptr noundef %184, ptr noundef %0) #25
  %185 = getelementptr %struct.tracepoint_func, ptr %181, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %180

188:                                              ; preds = %180, %177
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !21
  br label %189

189:                                              ; preds = %188, %166, %163
  %190 = load ptr, ptr %8, align 4
  %191 = getelementptr inbounds %struct.ata_port_operations, ptr %190, i32 0, i32 3
  %192 = load ptr, ptr %191, align 4
  %193 = tail call i32 %192(ptr noundef %0) #25
  %194 = load i32, ptr %159, align 4
  %195 = or i32 %194, %193
  store i32 %195, ptr %159, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %202, label %201, !prof !10

197:                                              ; preds = %99, %84, %80, %76
  %198 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %199 = load i32, ptr %198, align 4
  %200 = or i32 %199, 64
  store i32 %200, ptr %198, align 4
  br label %201

201:                                              ; preds = %197, %189, %154
  tail call void @ata_qc_complete(ptr noundef %0)
  br label %202

202:                                              ; preds = %201, %189, %122
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_internal_cmd_timeout(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_flush_pio_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_qc_complete(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_port_operations, ptr %4, i32 0, i32 22
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %117, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 64
  %12 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !10

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 65536
  store i32 %18, ptr %16, align 4
  br label %19

19:                                               ; preds = %15, %8
  %20 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %31, !prof !11

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.ata_port_operations, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = tail call zeroext i1 %29(ptr noundef %0) #25
  tail call fastcc void @trace_ata_qc_complete_internal(ptr noundef %0)
  tail call void @__ata_qc_complete(ptr noundef %0)
  br label %138

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 65536
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36, !prof !10

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr inbounds %struct.ata_port_operations, ptr %40, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = tail call zeroext i1 %42(ptr noundef %0) #25
  tail call fastcc void @trace_ata_qc_complete_failed(ptr noundef %0)
  tail call void @ata_qc_schedule_eh(ptr noundef %0) #25
  br label %138

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 4
  %46 = load i32, ptr %45, align 16
  %47 = and i32 %46, 4
  %48 = icmp ne i32 %47, 0
  %49 = load i1, ptr @ata_qc_complete.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %54, !prof !11

52:                                               ; preds = %44
  store i1 true, ptr @ata_qc_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4753, i32 noundef 9, ptr noundef null) #25
  %53 = load i32, ptr %32, align 4
  br label %54

54:                                               ; preds = %52, %44
  %55 = phi i32 [ %53, %52 ], [ %33, %44 ]
  %56 = and i32 %55, 16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.ata_port, ptr %59, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ata_port_operations, ptr %64, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = tail call zeroext i1 %66(ptr noundef %0) #25
  br label %68

68:                                               ; preds = %58, %54
  %69 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_complete_done, i32 0, i32 1), align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %68
  %72 = tail call ptr @llvm.thread.pointer() #25
  %73 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 5
  %76 = getelementptr i32, ptr @__cpu_online_mask, i32 %75
  %77 = load volatile i32, ptr %76, align 4
  %78 = and i32 %74, 31
  %79 = shl nuw i32 1, %78
  %80 = and i32 %79, %77
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %71
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !22
  %83 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_complete_done, i32 0, i32 7), align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %85, %82
  %86 = phi ptr [ %90, %85 ], [ %83, %82 ]
  %87 = load volatile ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.tracepoint_func, ptr %86, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  tail call void %87(ptr noundef %89, ptr noundef %0) #25
  %90 = getelementptr %struct.tracepoint_func, ptr %86, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %85

93:                                               ; preds = %85, %82
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !23
  br label %94

94:                                               ; preds = %93, %71, %68
  %95 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 14
  %96 = load i8, ptr %95, align 1
  switch i8 %96, label %110 [
    i8 -17, label %97
    i8 -111, label %100
    i8 -58, label %100
    i8 -26, label %106
  ]

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 8
  %99 = load i8, ptr %98, align 1
  switch i8 %99, label %110 [
    i8 2, label %100
    i8 -126, label %100
    i8 -86, label %100
    i8 85, label %100
  ]

100:                                              ; preds = %97, %97, %97, %97, %94, %94
  %101 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = getelementptr %struct.ata_link, ptr %11, i32 0, i32 11, i32 4, i32 %102
  %104 = load i32, ptr %103, align 4
  %105 = or i32 %104, 1
  store i32 %105, ptr %103, align 4
  tail call void @ata_port_schedule_eh(ptr noundef %2) #25
  br label %110

106:                                              ; preds = %94
  %107 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = or i32 %108, 32768
  store i32 %109, ptr %107, align 4
  br label %110

110:                                              ; preds = %106, %100, %97, %94
  %111 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 65536
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115, !prof !10

115:                                              ; preds = %110
  tail call fastcc void @ata_verify_xfer(ptr noundef %0)
  br label %116

116:                                              ; preds = %115, %110
  tail call void @__ata_qc_complete(ptr noundef %0)
  br label %138

117:                                              ; preds = %1
  %118 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 262144
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 20
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  %126 = and i32 %119, 16
  %127 = icmp eq i32 %126, 0
  %128 = select i1 %125, i1 %127, i1 false
  br i1 %128, label %137, label %129

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 21
  store i32 %131, ptr %132, align 4
  %133 = load ptr, ptr %3, align 4
  %134 = getelementptr inbounds %struct.ata_port_operations, ptr %133, i32 0, i32 4
  %135 = load ptr, ptr %134, align 4
  %136 = tail call zeroext i1 %135(ptr noundef %0) #25
  br label %137

137:                                              ; preds = %129, %122
  tail call void @__ata_qc_complete(ptr noundef %0)
  br label %138

138:                                              ; preds = %137, %117, %116, %36, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_qc_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = load i1, ptr @ata_qc_free.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %1
  store i1 true, ptr @ata_qc_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4617, i32 noundef 9, ptr noundef null) #25
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 33
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  store i32 -84148995, ptr %10, align 4
  %14 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16777216
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @ata_sas_free_tag(i32 noundef %11, ptr noundef %8) #25
  br label %19

19:                                               ; preds = %18, %13, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_internal_cmd_timed_out(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_exec_internal(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false), !annotation !9
  %9 = icmp eq i32 %3, 3
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %4, null
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1647, i32 noundef 9, ptr noundef null) #25
  br label %13

13:                                               ; preds = %12, %10
  call void @sg_init_one(ptr noundef nonnull %8, ptr noundef %4, i32 noundef %5) #25
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ 1, %13 ], [ 0, %7 ]
  %16 = phi ptr [ %8, %13 ], [ null, %7 ]
  %17 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %16, i32 noundef %15, i32 noundef %6)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #25
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_pio_need_iordy(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  %15 = load i16, ptr %14, align 2
  switch i16 %15, label %16 [
    i16 -31606, label %24
    i16 -31670, label %24
  ]

16:                                               ; preds = %13
  %17 = getelementptr i16, ptr %14, i32 83
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, -16380
  %20 = icmp eq i16 %19, 16388
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 11
  %23 = load i8, ptr %22, align 8
  br label %29

24:                                               ; preds = %16, %13, %13
  %25 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 11
  %26 = load i8, ptr %25, align 8
  %27 = add i8 %26, -13
  %28 = icmp ult i8 %27, 2
  br i1 %28, label %38, label %29

29:                                               ; preds = %24, %21
  %30 = phi i8 [ %23, %21 ], [ %26, %24 ]
  %31 = icmp ugt i8 %30, 10
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = getelementptr [256 x i16], ptr %14, i32 0, i32 49
  %34 = load i16, ptr %33, align 2
  %35 = lshr i16 %34, 11
  %36 = and i16 %35, 1
  %37 = zext i16 %36 to i32
  br label %38

38:                                               ; preds = %32, %29, %24, %8, %1
  %39 = phi i32 [ 0, %1 ], [ 0, %8 ], [ 0, %24 ], [ 1, %29 ], [ %37, %32 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_do_dev_read_id(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false) #25, !annotation !9
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1647, i32 noundef 9, ptr noundef null) #25
  br label %7

7:                                                ; preds = %6, %3
  call void @sg_init_one(ptr noundef nonnull %4, ptr noundef %2, i32 noundef 512) #25
  %8 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 2, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #25
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_dev_read_id(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.ata_taskfile, align 4
  %6 = alloca %struct.ata_taskfile, align 4
  %7 = alloca %struct.scatterlist, align 4
  %8 = alloca %struct.ata_taskfile, align 4
  %9 = load ptr, ptr %0, align 64
  %10 = load ptr, ptr %9, align 64
  %11 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #25
  %12 = icmp eq i32 %11, 7
  %13 = getelementptr inbounds %struct.ata_taskfile, ptr %8, i32 0, i32 2
  %14 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ata_taskfile, ptr %8, i32 0, i32 13
  %16 = getelementptr inbounds %struct.ata_taskfile, ptr %8, i32 0, i32 14
  %17 = getelementptr inbounds %struct.ata_taskfile, ptr %8, i32 0, i32 1
  %18 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 1
  %19 = icmp eq ptr %3, null
  %20 = getelementptr inbounds %struct.ata_taskfile, ptr %8, i32 0, i32 8
  %21 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 2
  %22 = getelementptr i16, ptr %3, i32 83
  %23 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 31
  %24 = getelementptr i16, ptr %3, i32 2
  %25 = getelementptr inbounds i8, ptr %6, i32 4
  %26 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 13
  %28 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 14
  %29 = getelementptr inbounds %struct.ata_taskfile, ptr %6, i32 0, i32 8
  %30 = getelementptr i16, ptr %3, i32 80
  %31 = getelementptr i16, ptr %3, i32 49
  %32 = getelementptr i16, ptr %3, i32 3
  %33 = getelementptr i16, ptr %3, i32 6
  %34 = getelementptr inbounds i8, ptr %5, i32 4
  %35 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 2
  %36 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 13
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 14
  %38 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 9
  %39 = getelementptr inbounds %struct.ata_taskfile, ptr %5, i32 0, i32 8
  %40 = and i32 %2, 1
  br label %41

41:                                               ; preds = %192, %4
  %42 = phi i1 [ true, %192 ], [ false, %4 ]
  %43 = phi i32 [ 0, %192 ], [ 1, %4 ]
  %44 = phi i32 [ %170, %192 ], [ 0, %4 ]
  %45 = phi i32 [ %115, %192 ], [ %11, %4 ]
  %46 = phi i32 [ 0, %192 ], [ %40, %4 ]
  br label %47

47:                                               ; preds = %167, %41
  %48 = phi i1 [ true, %167 ], [ %42, %41 ]
  %49 = phi i32 [ 0, %167 ], [ %43, %41 ]
  %50 = phi i32 [ 1, %167 ], [ %44, %41 ]
  %51 = phi i32 [ %115, %167 ], [ %45, %41 ]
  br label %52

52:                                               ; preds = %108, %47
  %53 = phi i1 [ %48, %47 ], [ true, %108 ]
  %54 = phi i32 [ %49, %47 ], [ 0, %108 ]
  %55 = phi i32 [ 0, %47 ], [ 1, %108 ]
  %56 = phi i32 [ %51, %47 ], [ %112, %108 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 24, i1 false) #25
  %57 = load ptr, ptr %0, align 64
  %58 = load ptr, ptr %57, align 64
  %59 = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 9
  %60 = load i8, ptr %59, align 4
  store i8 %60, ptr %13, align 1
  %61 = load i32, ptr %14, align 4
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i8 -96, i8 -80
  store i8 %63, ptr %15, align 4
  %64 = add i32 %56, -1
  %65 = icmp ult i32 %64, 9
  br i1 %65, label %66, label %215

66:                                               ; preds = %52
  %67 = trunc i32 %64 to i16
  %68 = lshr i16 325, %67
  %69 = and i16 %68, 1
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %215, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds [9 x i8], ptr @switch.table.ata_dev_read_id, i32 0, i32 %64
  %73 = load i8, ptr %72, align 1
  store i8 %73, ptr %16, align 1
  store i8 1, ptr %17, align 4
  store i32 70, ptr %8, align 4
  %74 = load ptr, ptr %18, align 4
  %75 = getelementptr inbounds %struct.ata_port_operations, ptr %74, i32 0, i32 10
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %71
  %79 = call i32 %76(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %3) #25
  br label %84

80:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #25, !annotation !9
  br i1 %19, label %81, label %82, !prof !11

81:                                               ; preds = %80
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1647, i32 noundef 9, ptr noundef null) #25
  br label %82

82:                                               ; preds = %81, %80
  call void @sg_init_one(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 512) #25
  %83 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef nonnull %8, ptr noundef null, i32 noundef 2, ptr noundef nonnull %7, i32 noundef 1, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #25
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i32 [ %79, %78 ], [ %83, %82 ]
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %113, label %87

87:                                               ; preds = %84
  %88 = and i32 %85, 512
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %228

90:                                               ; preds = %87
  br i1 %12, label %91, label %101

91:                                               ; preds = %90
  %92 = load ptr, ptr %0, align 64
  %93 = load ptr, ptr %92, align 64
  %94 = getelementptr inbounds %struct.ata_port, ptr %93, i32 0, i32 5
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ata_link, ptr %92, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %14, align 4
  %99 = add i32 %98, %97
  %100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %95, i32 noundef %99) #26
  store i32 8, ptr %1, align 4
  br label %228

101:                                              ; preds = %90
  %102 = icmp eq i32 %85, 1
  br i1 %102, label %103, label %215

103:                                              ; preds = %101
  %104 = load i8, ptr %20, align 1
  %105 = and i8 %104, 4
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %215, label %107

107:                                              ; preds = %103
  br i1 %53, label %228, label %108

108:                                              ; preds = %107
  %109 = icmp ne i32 %64, 2
  %110 = icmp ne i32 %64, 8
  %111 = and i1 %109, %110
  %112 = select i1 %111, i32 3, i32 1
  br label %52

113:                                              ; preds = %84
  %114 = getelementptr inbounds [9 x i32], ptr @switch.table.ata_dev_read_id.528, i32 0, i32 %64
  %115 = load i32, ptr %114, align 4
  %116 = load i32, ptr %21, align 8
  %117 = and i32 %116, 65536
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr %0, align 64
  %121 = load ptr, ptr %120, align 64
  %122 = getelementptr inbounds %struct.ata_port, ptr %121, i32 0, i32 5
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr inbounds %struct.ata_link, ptr %120, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = load i32, ptr %14, align 4
  %127 = add i32 %126, %125
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %123, i32 noundef %127, i32 noundef %115, i32 noundef %54, i32 noundef %50) #26
  call void @print_hex_dump(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef 2, i32 noundef 16, i32 noundef 2, ptr noundef %3, i32 noundef 512, i1 noundef zeroext true) #25
  br label %129

129:                                              ; preds = %119, %113
  %130 = icmp eq i32 %64, 2
  %131 = load i16, ptr %3, align 2
  %132 = icmp sgt i16 %131, -1
  br i1 %130, label %145, label %133

133:                                              ; preds = %129
  br i1 %132, label %139, label %134

134:                                              ; preds = %133
  switch i16 %131, label %135 [
    i16 -31606, label %146
    i16 -31670, label %146
  ]

135:                                              ; preds = %134
  %136 = load i16, ptr %22, align 2
  %137 = and i16 %136, -16380
  %138 = icmp eq i16 %137, 16388
  br i1 %138, label %146, label %215

139:                                              ; preds = %133
  %140 = load ptr, ptr %23, align 4
  %141 = getelementptr inbounds %struct.ata_host, ptr %140, i32 0, i32 7
  %142 = load i32, ptr %141, align 4
  %143 = and i32 %142, 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %228

145:                                              ; preds = %129
  br i1 %132, label %215, label %146

146:                                              ; preds = %145, %139, %135, %134, %134
  %147 = icmp eq i32 %50, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %146
  %149 = load i16, ptr %24, align 2
  switch i16 %149, label %169 [
    i16 14280, label %150
    i16 29580, label %150
  ]

150:                                              ; preds = %148, %148
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %25, i8 0, i64 20, i1 false) #25
  %151 = load ptr, ptr %0, align 64
  %152 = load ptr, ptr %151, align 64
  %153 = getelementptr inbounds %struct.ata_port, ptr %152, i32 0, i32 9
  %154 = load i8, ptr %153, align 4
  store i8 %154, ptr %26, align 1
  %155 = load i32, ptr %14, align 4
  %156 = icmp eq i32 %155, 0
  %157 = select i1 %156, i8 -96, i8 -80
  store i8 %157, ptr %27, align 4
  store i8 -17, ptr %28, align 1
  store i8 7, ptr %29, align 1
  store i32 6, ptr %6, align 4
  %158 = load i32, ptr @ata_probe_timeout, align 4
  %159 = icmp eq i32 %158, 0
  %160 = mul i32 %158, 1000
  %161 = select i1 %159, i32 30000, i32 %160
  %162 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef %161) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  %163 = icmp eq i32 %162, 0
  %164 = load i16, ptr %24, align 2
  br i1 %163, label %167, label %165

165:                                              ; preds = %150
  %166 = icmp eq i16 %164, 29580
  br i1 %166, label %169, label %215

167:                                              ; preds = %150
  %168 = icmp eq i16 %164, 14280
  br i1 %168, label %47, label %169

169:                                              ; preds = %167, %165, %148, %146
  %170 = phi i32 [ 1, %165 ], [ 1, %146 ], [ 1, %167 ], [ 0, %148 ]
  %171 = icmp eq i32 %46, 0
  %172 = select i1 %171, i1 true, i1 %130
  br i1 %172, label %214, label %173

173:                                              ; preds = %169
  %174 = load i16, ptr %30, align 2
  %175 = icmp eq i16 %174, -1
  %176 = and i16 %174, 32752
  %177 = icmp eq i16 %176, 0
  %178 = or i1 %175, %177
  br i1 %178, label %183, label %179

179:                                              ; preds = %173
  %180 = load i16, ptr %31, align 2
  %181 = and i16 %180, 512
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %214

183:                                              ; preds = %179, %173
  %184 = load i16, ptr %32, align 2
  %185 = load i16, ptr %33, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  %186 = add i16 %185, -256
  %187 = icmp ult i16 %186, -255
  %188 = add i16 %184, -17
  %189 = icmp ult i16 %188, -16
  %190 = or i1 %189, %187
  br i1 %190, label %191, label %192

191:                                              ; preds = %183
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  br label %215

192:                                              ; preds = %183
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 20, i1 false) #25
  %193 = load ptr, ptr %0, align 64
  %194 = load ptr, ptr %193, align 64
  %195 = getelementptr inbounds %struct.ata_port, ptr %194, i32 0, i32 9
  %196 = load i8, ptr %195, align 4
  store i8 %196, ptr %35, align 1
  %197 = load i32, ptr %14, align 4
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, i8 -96, i8 -80
  store i8 -111, ptr %37, align 1
  store i32 6, ptr %5, align 4
  %200 = trunc i16 %185 to i8
  store i8 %200, ptr %38, align 4
  %201 = trunc i16 %184 to i8
  %202 = add nuw nsw i8 %201, 15
  %203 = and i8 %202, 15
  %204 = or i8 %199, %203
  store i8 %204, ptr %36, align 4
  %205 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #25
  %206 = icmp eq i32 %205, 1
  %207 = load i8, ptr %39, align 1
  %208 = lshr i8 %207, 2
  %209 = and i8 %208, 1
  %210 = xor i8 %209, 1
  %211 = zext i8 %210 to i32
  %212 = select i1 %206, i32 %211, i32 %205
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %41, label %215

214:                                              ; preds = %179, %169
  store i32 %115, ptr %1, align 4
  br label %228

215:                                              ; preds = %192, %191, %165, %145, %135, %103, %101, %66, %52
  %216 = phi i32 [ -5, %191 ], [ -19, %66 ], [ -5, %101 ], [ -5, %103 ], [ -19, %52 ], [ -22, %145 ], [ -22, %135 ], [ -5, %165 ], [ -5, %192 ]
  %217 = phi ptr [ @.str.40, %191 ], [ @.str.32, %66 ], [ @.str.34, %101 ], [ @.str.34, %103 ], [ @.str.32, %52 ], [ @.str.38, %145 ], [ @.str.38, %135 ], [ @.str.40, %192 ], [ @.str.39, %165 ]
  %218 = phi i32 [ 128, %191 ], [ %55, %66 ], [ %85, %101 ], [ 1, %103 ], [ %55, %52 ], [ 0, %145 ], [ 0, %135 ], [ %212, %192 ], [ %162, %165 ]
  %219 = load ptr, ptr %0, align 64
  %220 = load ptr, ptr %219, align 64
  %221 = getelementptr inbounds %struct.ata_port, ptr %220, i32 0, i32 5
  %222 = load i32, ptr %221, align 4
  %223 = getelementptr inbounds %struct.ata_link, ptr %219, i32 0, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = load i32, ptr %14, align 4
  %226 = add i32 %225, %224
  %227 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %222, i32 noundef %226, ptr noundef nonnull %217, i32 noundef %218) #26
  br label %228

228:                                              ; preds = %215, %214, %139, %107, %91, %87
  %229 = phi i32 [ %216, %215 ], [ 0, %91 ], [ 0, %214 ], [ -2, %87 ], [ -2, %107 ], [ -2, %139 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #25
  ret i32 %229
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @swap_buf_le16(ptr nocapture %0, i32 %1) local_unnamed_addr #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_dev_set_feature(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.ata_taskfile, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  %6 = load ptr, ptr %0, align 64
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i8 -96, i8 -80
  %15 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  store i8 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  store i8 -17, ptr %16, align 1
  %17 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  store i8 %1, ptr %17, align 1
  store i32 6, ptr %4, align 4
  %18 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 9
  store i8 %2, ptr %18, align 4
  %19 = icmp eq i8 %1, 7
  %20 = load i32, ptr @ata_probe_timeout, align 4
  %21 = icmp eq i32 %20, 0
  %22 = mul i32 %20, 1000
  %23 = select i1 %21, i32 30000, i32 %22
  %24 = select i1 %19, i32 %23, i32 0
  %25 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef %24) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret i32 %25
}

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @ata_id_major_version(ptr nocapture noundef readonly %0) unnamed_addr #15 {
  %2 = getelementptr i16, ptr %0, i32 80
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, -1
  br i1 %4, label %48, label %5

5:                                                ; preds = %1
  %6 = zext i16 %3 to i32
  %7 = and i32 %6, 16384
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %48

9:                                                ; preds = %5
  %10 = and i32 %6, 8192
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = and i32 %6, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = and i32 %6, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = and i32 %6, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = and i32 %6, 512
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = and i32 %6, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = and i32 %6, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = and i32 %6, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = and i32 %6, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = and i32 %6, 16
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = and i32 %6, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = and i32 %6, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = lshr i32 %6, 1
  %47 = and i32 %46, 1
  br label %48

48:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %5, %1
  %49 = phi i32 [ 0, %1 ], [ 14, %5 ], [ 13, %9 ], [ 12, %12 ], [ 11, %15 ], [ 10, %18 ], [ 9, %21 ], [ 8, %24 ], [ 7, %27 ], [ 6, %30 ], [ 5, %33 ], [ 4, %36 ], [ 3, %39 ], [ 2, %42 ], [ %47, %45 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca %struct.ata_taskfile, align 4
  %8 = load ptr, ptr %0, align 64
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %87

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 2
  %16 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 13
  %18 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 12
  %19 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 10
  %20 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 11
  %21 = trunc i32 %4 to i8
  %22 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 9
  %23 = lshr i32 %4, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 4
  %26 = shl i32 %4, 9
  %27 = icmp eq ptr %3, null
  %28 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 43
  %29 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  %30 = getelementptr i16, ptr %29, i32 119
  %31 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 60
  %32 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 2
  %33 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 14
  %34 = getelementptr inbounds %struct.ata_taskfile, ptr %7, i32 0, i32 1
  %35 = getelementptr inbounds i8, ptr %7, i32 4
  br label %36

36:                                               ; preds = %70, %14
  %37 = phi ptr [ %9, %14 ], [ %74, %70 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %35, i8 0, i32 20, i1 false) #25
  %38 = getelementptr inbounds %struct.ata_port, ptr %37, i32 0, i32 9
  %39 = load i8, ptr %38, align 4
  store i8 %39, ptr %15, align 1
  %40 = load i32, ptr %16, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i8 -96, i8 -80
  store i8 %42, ptr %17, align 4
  %43 = load i8, ptr %18, align 1
  %44 = icmp eq i8 %43, -1
  br i1 %44, label %60, label %45

45:                                               ; preds = %36
  %46 = load i16, ptr %28, align 2
  %47 = icmp sgt i16 %46, -1
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = load i16, ptr %30, align 2
  %50 = and i16 %49, -16376
  %51 = icmp eq i16 %50, 16392
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i16, ptr %31, align 2
  %54 = and i16 %53, -16376
  %55 = icmp eq i16 %54, 16392
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %48
  %57 = load i32, ptr %32, align 8
  %58 = and i32 %57, 8388608
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56, %52, %45, %36
  br label %61

61:                                               ; preds = %60, %56
  %62 = phi i8 [ 47, %60 ], [ 71, %56 ]
  %63 = phi i8 [ 1, %60 ], [ 2, %56 ]
  %64 = phi i1 [ false, %60 ], [ true, %56 ]
  store i8 %62, ptr %33, align 1
  store i8 %63, ptr %34, align 4
  store i8 %1, ptr %19, align 1
  store i8 %2, ptr %20, align 2
  store i8 %21, ptr %22, align 4
  store i8 %24, ptr %25, align 1
  store i32 7, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #25, !annotation !9
  br i1 %27, label %65, label %66, !prof !11

65:                                               ; preds = %61
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1647, i32 noundef 9, ptr noundef null) #25
  br label %66

66:                                               ; preds = %65, %61
  call void @sg_init_one(ptr noundef nonnull %6, ptr noundef %3, i32 noundef %26) #25
  %67 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null, i32 noundef 2, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #25
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %66
  br i1 %64, label %70, label %75

70:                                               ; preds = %69
  %71 = load i32, ptr %32, align 8
  %72 = or i32 %71, 8388608
  store i32 %72, ptr %32, align 8
  %73 = load ptr, ptr %0, align 64
  %74 = load ptr, ptr %73, align 64
  br label %36

75:                                               ; preds = %69
  %76 = load ptr, ptr %0, align 64
  %77 = load ptr, ptr %76, align 64
  %78 = getelementptr inbounds %struct.ata_port, ptr %77, i32 0, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.ata_link, ptr %76, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %16, align 4
  %83 = add i32 %82, %81
  %84 = zext i8 %1 to i32
  %85 = zext i8 %2 to i32
  %86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %79, i32 noundef %83, i32 noundef %84, i32 noundef %85, i32 noundef %67) #26
  br label %87

87:                                               ; preds = %75, %66, %5
  %88 = phi i32 [ 1, %5 ], [ %67, %75 ], [ 0, %66 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_dev_configure(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.ata_taskfile, align 4
  %3 = alloca %struct.ata_taskfile, align 4
  %4 = alloca %struct.ata_taskfile, align 4
  %5 = alloca [7 x i8], align 4
  %6 = alloca [9 x i8], align 1
  %7 = alloca [41 x i8], align 1
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 64
  %10 = load ptr, ptr %9, align 64
  %11 = getelementptr inbounds %struct.ata_link, ptr %9, i32 0, i32 12, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %5) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(7) %5, i8 0, i32 7, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %6) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %6, i8 0, i32 9, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %7) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(41) %7, i8 0, i32 41, i1 false), !annotation !9
  %16 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 9
  %17 = load i32, ptr %16, align 64
  switch i32 %17, label %1321 [
    i32 7, label %18
    i32 5, label %18
    i32 3, label %18
    i32 1, label %18
    i32 9, label %18
  ]

18:                                               ; preds = %1, %1, %1, %1, %1
  %19 = tail call fastcc i32 @ata_dev_blacklisted(ptr noundef %0)
  %20 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, %19
  store i32 %22, ptr %20, align 8
  %23 = load ptr, ptr %0, align 64
  %24 = getelementptr inbounds %struct.ata_link, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = load ptr, ptr %23, align 64
  %30 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 25
  %31 = icmp eq ptr %30, %23
  br i1 %31, label %36, label %32

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 26
  %34 = load ptr, ptr %33, align 64
  %35 = icmp eq ptr %34, %23
  br i1 %35, label %36, label %38

36:                                               ; preds = %32, %18
  %37 = add i32 %28, 15
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ %28, %32 ]
  %40 = load i32, ptr @ata_force_tbl_size, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %103

42:                                               ; preds = %38
  %43 = load ptr, ptr @ata_force_tbl, align 4
  br label %44

44:                                               ; preds = %96, %42
  %45 = phi i32 [ %40, %42 ], [ %97, %96 ]
  %46 = phi ptr [ %43, %42 ], [ %98, %96 ]
  %47 = phi i32 [ 0, %42 ], [ %99, %96 ]
  %48 = getelementptr %struct.ata_force_ent, ptr %46, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %0, align 64
  %53 = load ptr, ptr %52, align 64
  %54 = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %49, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %51, %44
  %58 = getelementptr %struct.ata_force_ent, ptr %46, i32 %47, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, -1
  %61 = icmp eq i32 %59, %28
  %62 = select i1 %60, i1 true, i1 %61
  %63 = icmp eq i32 %59, %39
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %57
  %66 = load i32, ptr %20, align 8
  %67 = xor i32 %66, -1
  %68 = getelementptr %struct.ata_force_ent, ptr %46, i32 %47, i32 2
  %69 = getelementptr %struct.ata_force_ent, ptr %46, i32 %47, i32 2, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, %67
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = getelementptr %struct.ata_force_ent, ptr %46, i32 %47, i32 2, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = and i32 %75, %66
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73, %65
  %79 = or i32 %70, %66
  store i32 %79, ptr %20, align 8
  %80 = getelementptr %struct.ata_force_ent, ptr %46, i32 %47, i32 2, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  store i32 %83, ptr %20, align 8
  %84 = load ptr, ptr %0, align 64
  %85 = load ptr, ptr %84, align 64
  %86 = getelementptr inbounds %struct.ata_port, ptr %85, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ata_link, ptr %84, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = load i32, ptr %26, align 4
  %91 = add i32 %90, %89
  %92 = load ptr, ptr %68, align 4
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.273, i32 noundef %87, i32 noundef %91, ptr noundef %92) #26
  %94 = load ptr, ptr @ata_force_tbl, align 4
  %95 = load i32, ptr @ata_force_tbl_size, align 4
  br label %96

96:                                               ; preds = %78, %73, %57, %51
  %97 = phi i32 [ %45, %73 ], [ %45, %57 ], [ %45, %51 ], [ %95, %78 ]
  %98 = phi ptr [ %46, %73 ], [ %46, %57 ], [ %46, %51 ], [ %94, %78 ]
  %99 = add nuw nsw i32 %47, 1
  %100 = icmp slt i32 %99, %97
  br i1 %100, label %44, label %101

101:                                              ; preds = %96
  %102 = load i32, ptr %20, align 8
  br label %103

103:                                              ; preds = %101, %38
  %104 = phi i32 [ %102, %101 ], [ %22, %38 ]
  %105 = and i32 %104, 32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %0, align 64
  %109 = load ptr, ptr %108, align 64
  %110 = getelementptr inbounds %struct.ata_port, ptr %109, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ata_link, ptr %108, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %26, align 4
  %115 = add i32 %114, %113
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %111, i32 noundef %115) #26
  tail call void @ata_dev_disable(ptr noundef %0) #25
  br label %1321

117:                                              ; preds = %103
  %118 = load i32, ptr @atapi_enabled, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 64
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %120, %117
  %126 = load i32, ptr %16, align 64
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load ptr, ptr %0, align 64
  %130 = load ptr, ptr %129, align 64
  %131 = getelementptr inbounds %struct.ata_port, ptr %130, i32 0, i32 5
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.ata_link, ptr %129, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = load i32, ptr %26, align 4
  %136 = add i32 %135, %134
  %137 = select i1 %119, ptr @.str.46, ptr @.str.45
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %132, i32 noundef %136, ptr noundef nonnull %137) #26
  tail call void @ata_dev_disable(ptr noundef %0) #25
  br label %1321

139:                                              ; preds = %125, %120
  %140 = load ptr, ptr %0, align 64
  %141 = load ptr, ptr %140, align 64
  %142 = getelementptr inbounds %struct.ata_port, ptr %141, i32 0, i32 26
  %143 = load ptr, ptr %142, align 64
  %144 = icmp eq ptr %143, null
  br i1 %144, label %150, label %145

145:                                              ; preds = %139
  %146 = load i32, ptr %26, align 4
  %147 = icmp eq i32 %146, 0
  %148 = getelementptr inbounds %struct.ata_port, ptr %141, i32 0, i32 25
  %149 = select i1 %147, ptr %148, ptr %143
  br label %150

150:                                              ; preds = %145, %139
  %151 = phi ptr [ %140, %139 ], [ %149, %145 ]
  %152 = tail call i32 @sata_scr_valid(ptr noundef %151) #25
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %176, label %154

154:                                              ; preds = %150
  %155 = load i32, ptr %20, align 8
  %156 = and i32 %155, 8192
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %176, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.ata_link, ptr %151, i32 0, i32 8
  %160 = load i32, ptr %159, align 4
  %161 = icmp ult i32 %160, 2
  br i1 %161, label %176, label %162

162:                                              ; preds = %158
  store i32 1, ptr %159, align 4
  %163 = getelementptr inbounds %struct.ata_link, ptr %151, i32 0, i32 9
  %164 = load i32, ptr %163, align 8
  %165 = icmp ugt i32 %164, 1
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = load ptr, ptr %0, align 64
  %168 = load ptr, ptr %167, align 64
  %169 = getelementptr inbounds %struct.ata_port, ptr %168, i32 0, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.ata_link, ptr %167, i32 0, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = load i32, ptr %26, align 4
  %174 = add i32 %173, %172
  %175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, i32 noundef %170, i32 noundef %174, ptr noundef nonnull @.str.26) #26
  br label %1321

176:                                              ; preds = %162, %158, %154, %150
  %177 = load i32, ptr %20, align 8
  %178 = and i32 %177, 2097152
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %176
  %181 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 38
  %182 = load i16, ptr %181, align 2
  %183 = and i16 %182, 14
  %184 = icmp eq i16 %183, 2
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = or i32 %177, 1048576
  store i32 %186, ptr %20, align 8
  br label %187

187:                                              ; preds = %185, %180, %176
  %188 = phi i32 [ %186, %185 ], [ %177, %180 ], [ %177, %176 ]
  %189 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 3
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %187
  %194 = or i32 %188, 1048576
  store i32 %194, ptr %20, align 8
  br label %195

195:                                              ; preds = %193, %187
  %196 = phi i32 [ %194, %193 ], [ %188, %187 ]
  %197 = and i32 %196, 1048576
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %212, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr %0, align 64
  %201 = load ptr, ptr %200, align 64
  %202 = getelementptr inbounds %struct.ata_port, ptr %201, i32 0, i32 5
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds %struct.ata_link, ptr %200, i32 0, i32 1
  %205 = load i32, ptr %204, align 4
  %206 = load i32, ptr %26, align 4
  %207 = add i32 %206, %205
  %208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %203, i32 noundef %207) #26
  %209 = load ptr, ptr %0, align 64
  %210 = load ptr, ptr %209, align 64
  %211 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 43
  store i32 1, ptr %211, align 64
  br label %212

212:                                              ; preds = %199, %195
  %213 = load ptr, ptr %0, align 64
  %214 = getelementptr inbounds %struct.ata_link, ptr %213, i32 0, i32 12, i32 0, i32 5
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, 262144
  %217 = icmp eq i32 %216, 0
  %218 = load i32, ptr @ata_ignore_hpa, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %222 = load i32, ptr %221, align 4
  %223 = and i32 %222, 262144
  %224 = icmp ne i32 %223, 0
  br label %225

225:                                              ; preds = %220, %212
  %226 = phi i1 [ true, %212 ], [ %224, %220 ]
  %227 = tail call fastcc i64 @ata_id_n_sectors(ptr noundef %15) #25
  %228 = load i32, ptr %16, align 64
  switch i32 %228, label %547 [
    i32 1, label %229
    i32 9, label %229
  ]

229:                                              ; preds = %225, %225
  %230 = getelementptr [256 x i16], ptr %15, i32 0, i32 49
  %231 = load i16, ptr %230, align 2
  %232 = and i16 %231, 512
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %547, label %234

234:                                              ; preds = %229
  %235 = getelementptr i16, ptr %15, i32 83
  %236 = load i16, ptr %235, align 2
  %237 = and i16 %236, -16384
  %238 = icmp eq i16 %237, 16384
  br i1 %238, label %239, label %547

239:                                              ; preds = %234
  %240 = getelementptr i16, ptr %15, i32 87
  %241 = load i16, ptr %240, align 2
  %242 = and i16 %241, -16384
  %243 = icmp eq i16 %242, 16384
  br i1 %243, label %244, label %547

244:                                              ; preds = %239
  %245 = getelementptr i16, ptr %15, i32 85
  %246 = load i16, ptr %245, align 2
  %247 = and i16 %246, 1024
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %547, label %249

249:                                              ; preds = %244
  %250 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 41
  %251 = load i16, ptr %250, align 2
  %252 = and i16 %251, 1024
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %547, label %254

254:                                              ; preds = %249
  %255 = load i32, ptr %20, align 8
  %256 = and i32 %255, 16
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %547

258:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %259 = zext i16 %236 to i32
  %260 = and i32 %259, 49152
  %261 = icmp eq i32 %260, 16384
  br i1 %261, label %262, label %285

262:                                              ; preds = %258
  %263 = getelementptr i16, ptr %15, i32 103
  %264 = load i16, ptr %263, align 2
  %265 = zext i16 %264 to i64
  %266 = shl nuw i64 %265, 48
  %267 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 51
  %268 = load i16, ptr %267, align 2
  %269 = zext i16 %268 to i64
  %270 = shl nuw nsw i64 %269, 32
  %271 = or i64 %270, %266
  %272 = getelementptr i16, ptr %15, i32 101
  %273 = load i16, ptr %272, align 2
  %274 = zext i16 %273 to i64
  %275 = shl nuw nsw i64 %274, 16
  %276 = or i64 %271, %275
  %277 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 50
  %278 = load i16, ptr %277, align 2
  %279 = zext i16 %278 to i64
  %280 = or i64 %276, %279
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %262
  %283 = and i32 %259, 1024
  %284 = icmp ne i32 %283, 0
  br label %285

285:                                              ; preds = %282, %262, %258
  %286 = phi i1 [ %284, %282 ], [ false, %258 ], [ false, %262 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false) #25
  %287 = load ptr, ptr %213, align 64
  %288 = getelementptr inbounds %struct.ata_port, ptr %287, i32 0, i32 9
  %289 = load i8, ptr %288, align 4
  %290 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 2
  store i8 %289, ptr %290, align 1
  %291 = load i32, ptr %26, align 4
  %292 = icmp eq i32 %291, 0
  %293 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 13
  %294 = select i1 %286, i32 7, i32 6
  %295 = select i1 %286, i8 39, i8 -8
  store i32 %294, ptr %4, align 4
  %296 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 14
  store i8 %295, ptr %296, align 1
  %297 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 1
  store i8 0, ptr %297, align 4
  %298 = select i1 %292, i8 -32, i8 -16
  store i8 %298, ptr %293, align 4
  %299 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef nonnull %4, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #25
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %317, label %301

301:                                              ; preds = %285
  %302 = load ptr, ptr %0, align 64
  %303 = load ptr, ptr %302, align 64
  %304 = getelementptr inbounds %struct.ata_port, ptr %303, i32 0, i32 5
  %305 = load i32, ptr %304, align 4
  %306 = getelementptr inbounds %struct.ata_link, ptr %302, i32 0, i32 1
  %307 = load i32, ptr %306, align 4
  %308 = load i32, ptr %26, align 4
  %309 = add i32 %308, %307
  %310 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, i32 noundef %305, i32 noundef %309, i32 noundef %299) #26
  %311 = icmp eq i32 %299, 1
  br i1 %311, label %312, label %370

312:                                              ; preds = %301
  %313 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 8
  %314 = load i8, ptr %313, align 1
  %315 = and i8 %314, 4
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %370, label %369

317:                                              ; preds = %285
  br i1 %286, label %318, label %349

318:                                              ; preds = %317
  %319 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 7
  %320 = load i8, ptr %319, align 2
  %321 = zext i8 %320 to i64
  %322 = shl nuw nsw i64 %321, 40
  %323 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 6
  %324 = load i8, ptr %323, align 1
  %325 = zext i8 %324 to i64
  %326 = shl nuw nsw i64 %325, 32
  %327 = or i64 %326, %322
  %328 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 5
  %329 = load i8, ptr %328, align 4
  %330 = zext i8 %329 to i64
  %331 = shl nuw nsw i64 %330, 24
  %332 = or i64 %327, %331
  %333 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 12
  %334 = load i8, ptr %333, align 1
  %335 = zext i8 %334 to i32
  %336 = shl nuw nsw i32 %335, 16
  %337 = zext i32 %336 to i64
  %338 = or i64 %332, %337
  %339 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 11
  %340 = load i8, ptr %339, align 2
  %341 = zext i8 %340 to i32
  %342 = shl nuw nsw i32 %341, 8
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 10
  %345 = load i8, ptr %344, align 1
  %346 = zext i8 %345 to i64
  %347 = or i64 %338, %346
  %348 = or i64 %347, %343
  br label %371

349:                                              ; preds = %317
  %350 = load i8, ptr %293, align 4
  %351 = and i8 %350, 15
  %352 = zext i8 %351 to i32
  %353 = shl nuw nsw i32 %352, 24
  %354 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 12
  %355 = load i8, ptr %354, align 1
  %356 = zext i8 %355 to i32
  %357 = shl nuw nsw i32 %356, 16
  %358 = or i32 %353, %357
  %359 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 11
  %360 = load i8, ptr %359, align 2
  %361 = zext i8 %360 to i32
  %362 = shl nuw nsw i32 %361, 8
  %363 = or i32 %358, %362
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds %struct.ata_taskfile, ptr %4, i32 0, i32 10
  %366 = load i8, ptr %365, align 1
  %367 = zext i8 %366 to i64
  %368 = or i64 %364, %367
  br label %371

369:                                              ; preds = %312
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  br label %533

370:                                              ; preds = %312, %301
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  br i1 %226, label %1321, label %533

371:                                              ; preds = %349, %318
  %372 = phi i64 [ %368, %349 ], [ %348, %318 ]
  %373 = load i32, ptr %20, align 8
  %374 = lshr i32 %373, 6
  %375 = and i32 %374, 1
  %376 = xor i32 %375, 1
  %377 = zext i32 %376 to i64
  %378 = add i64 %372, %377
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  %379 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 8
  store i64 %378, ptr %379, align 8
  %380 = icmp ugt i64 %378, %227
  %381 = select i1 %380, i1 %226, i1 false
  br i1 %381, label %408, label %382

382:                                              ; preds = %371
  %383 = icmp eq i64 %378, %227
  %384 = select i1 %217, i1 true, i1 %383
  br i1 %384, label %547, label %385

385:                                              ; preds = %382
  br i1 %380, label %386, label %396

386:                                              ; preds = %385
  %387 = load ptr, ptr %0, align 64
  %388 = load ptr, ptr %387, align 64
  %389 = getelementptr inbounds %struct.ata_port, ptr %388, i32 0, i32 5
  %390 = load i32, ptr %389, align 4
  %391 = getelementptr inbounds %struct.ata_link, ptr %387, i32 0, i32 1
  %392 = load i32, ptr %391, align 4
  %393 = load i32, ptr %26, align 4
  %394 = add i32 %393, %392
  %395 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, i32 noundef %390, i32 noundef %394, i64 noundef %227, i64 noundef %378) #26
  br label %547

396:                                              ; preds = %385
  %397 = icmp ult i64 %378, %227
  br i1 %397, label %398, label %547

398:                                              ; preds = %396
  %399 = load ptr, ptr %0, align 64
  %400 = load ptr, ptr %399, align 64
  %401 = getelementptr inbounds %struct.ata_port, ptr %400, i32 0, i32 5
  %402 = load i32, ptr %401, align 4
  %403 = getelementptr inbounds %struct.ata_link, ptr %399, i32 0, i32 1
  %404 = load i32, ptr %403, align 4
  %405 = load i32, ptr %26, align 4
  %406 = add i32 %405, %404
  %407 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, i32 noundef %402, i32 noundef %406, i64 noundef %378, i64 noundef %227) #26
  br label %547

408:                                              ; preds = %371
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %409 = load i16, ptr %235, align 2
  %410 = zext i16 %409 to i32
  %411 = and i32 %410, 49152
  %412 = icmp eq i32 %411, 16384
  br i1 %412, label %413, label %436

413:                                              ; preds = %408
  %414 = getelementptr i16, ptr %15, i32 103
  %415 = load i16, ptr %414, align 2
  %416 = zext i16 %415 to i64
  %417 = shl nuw i64 %416, 48
  %418 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 51
  %419 = load i16, ptr %418, align 2
  %420 = zext i16 %419 to i64
  %421 = shl nuw nsw i64 %420, 32
  %422 = or i64 %421, %417
  %423 = getelementptr i16, ptr %15, i32 101
  %424 = load i16, ptr %423, align 2
  %425 = zext i16 %424 to i64
  %426 = shl nuw nsw i64 %425, 16
  %427 = or i64 %422, %426
  %428 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 50
  %429 = load i16, ptr %428, align 2
  %430 = zext i16 %429 to i64
  %431 = or i64 %427, %430
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %413
  %434 = and i32 %410, 1024
  %435 = icmp ne i32 %434, 0
  br label %436

436:                                              ; preds = %433, %413, %408
  %437 = phi i1 [ %435, %433 ], [ false, %408 ], [ false, %413 ]
  %438 = add i64 %378, -1
  %439 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %439, i8 0, i32 20, i1 false) #25
  %440 = load ptr, ptr %0, align 64
  %441 = load ptr, ptr %440, align 64
  %442 = getelementptr inbounds %struct.ata_port, ptr %441, i32 0, i32 9
  %443 = load i8, ptr %442, align 4
  %444 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 2
  store i8 %443, ptr %444, align 1
  %445 = load i32, ptr %26, align 4
  %446 = icmp eq i32 %445, 0
  %447 = select i1 %446, i8 -96, i8 -80
  %448 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 13
  store i32 6, ptr %3, align 4
  br i1 %437, label %449, label %459

449:                                              ; preds = %436
  store i32 7, ptr %3, align 4
  %450 = lshr i64 %438, 24
  %451 = trunc i64 %450 to i8
  %452 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 5
  store i8 %451, ptr %452, align 4
  %453 = lshr i64 %438, 32
  %454 = trunc i64 %453 to i8
  %455 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 6
  store i8 %454, ptr %455, align 1
  %456 = lshr i64 %438, 40
  %457 = trunc i64 %456 to i8
  %458 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 7
  store i8 %457, ptr %458, align 2
  br label %464

459:                                              ; preds = %436
  %460 = lshr i64 %438, 24
  %461 = trunc i64 %460 to i8
  %462 = and i8 %461, 15
  %463 = or i8 %447, %462
  br label %464

464:                                              ; preds = %459, %449
  %465 = phi i8 [ %447, %449 ], [ %463, %459 ]
  %466 = phi i8 [ 55, %449 ], [ -7, %459 ]
  %467 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 14
  store i8 %466, ptr %467, align 1
  store i8 0, ptr %439, align 4
  %468 = or i8 %465, 64
  store i8 %468, ptr %448, align 4
  %469 = trunc i64 %438 to i8
  %470 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 10
  store i8 %469, ptr %470, align 1
  %471 = lshr i64 %438, 8
  %472 = trunc i64 %471 to i8
  %473 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 11
  store i8 %472, ptr %473, align 2
  %474 = lshr i64 %438, 16
  %475 = trunc i64 %474 to i8
  %476 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 12
  store i8 %475, ptr %476, align 1
  %477 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #25
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %508, label %479

479:                                              ; preds = %464
  %480 = load ptr, ptr %0, align 64
  %481 = load ptr, ptr %480, align 64
  %482 = getelementptr inbounds %struct.ata_port, ptr %481, i32 0, i32 5
  %483 = load i32, ptr %482, align 4
  %484 = getelementptr inbounds %struct.ata_link, ptr %480, i32 0, i32 1
  %485 = load i32, ptr %484, align 4
  %486 = load i32, ptr %26, align 4
  %487 = add i32 %486, %485
  %488 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.282, i32 noundef %483, i32 noundef %487, i32 noundef %477) #26
  %489 = icmp eq i32 %477, 1
  br i1 %489, label %490, label %495

490:                                              ; preds = %479
  %491 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 8
  %492 = load i8, ptr %491, align 1
  %493 = and i8 %492, 20
  %494 = icmp eq i8 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %490, %479
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br label %1321

496:                                              ; preds = %490
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %497 = load ptr, ptr %0, align 64
  %498 = load ptr, ptr %497, align 64
  %499 = getelementptr inbounds %struct.ata_port, ptr %498, i32 0, i32 5
  %500 = load i32, ptr %499, align 4
  %501 = getelementptr inbounds %struct.ata_link, ptr %497, i32 0, i32 1
  %502 = load i32, ptr %501, align 4
  %503 = load i32, ptr %26, align 4
  %504 = add i32 %503, %502
  %505 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, i32 noundef %500, i32 noundef %504, i64 noundef %227, i64 noundef %378) #26
  %506 = load i32, ptr %20, align 8
  %507 = or i32 %506, 16
  store i32 %507, ptr %20, align 8
  br label %547

508:                                              ; preds = %464
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %509 = tail call i32 @ata_dev_reread_id(ptr noundef %0, i32 noundef 0) #25
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %521, label %511

511:                                              ; preds = %508
  %512 = load ptr, ptr %0, align 64
  %513 = load ptr, ptr %512, align 64
  %514 = getelementptr inbounds %struct.ata_port, ptr %513, i32 0, i32 5
  %515 = load i32, ptr %514, align 4
  %516 = getelementptr inbounds %struct.ata_link, ptr %512, i32 0, i32 1
  %517 = load i32, ptr %516, align 4
  %518 = load i32, ptr %26, align 4
  %519 = add i32 %518, %517
  %520 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.279, i32 noundef %515, i32 noundef %519) #26
  br label %1321

521:                                              ; preds = %508
  br i1 %217, label %547, label %522

522:                                              ; preds = %521
  %523 = tail call fastcc i64 @ata_id_n_sectors(ptr noundef %15) #25
  %524 = load ptr, ptr %0, align 64
  %525 = load ptr, ptr %524, align 64
  %526 = getelementptr inbounds %struct.ata_port, ptr %525, i32 0, i32 5
  %527 = load i32, ptr %526, align 4
  %528 = getelementptr inbounds %struct.ata_link, ptr %524, i32 0, i32 1
  %529 = load i32, ptr %528, align 4
  %530 = load i32, ptr %26, align 4
  %531 = add i32 %530, %529
  %532 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %527, i32 noundef %531, i64 noundef %227, i64 noundef %523, i64 noundef %378) #26
  br label %547

533:                                              ; preds = %370, %369
  %534 = phi i1 [ true, %369 ], [ false, %370 ]
  %535 = phi i32 [ 0, %369 ], [ -5, %370 ]
  %536 = load ptr, ptr %0, align 64
  %537 = load ptr, ptr %536, align 64
  %538 = getelementptr inbounds %struct.ata_port, ptr %537, i32 0, i32 5
  %539 = load i32, ptr %538, align 4
  %540 = getelementptr inbounds %struct.ata_link, ptr %536, i32 0, i32 1
  %541 = load i32, ptr %540, align 4
  %542 = load i32, ptr %26, align 4
  %543 = add i32 %542, %541
  %544 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, i32 noundef %539, i32 noundef %543) #26
  %545 = load i32, ptr %20, align 8
  %546 = or i32 %545, 16
  store i32 %546, ptr %20, align 8
  br i1 %534, label %547, label %1321

547:                                              ; preds = %533, %522, %521, %496, %398, %396, %386, %382, %254, %249, %244, %239, %234, %229, %225
  %548 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %549 = load i32, ptr %548, align 4
  %550 = and i32 %549, -4096
  store i32 %550, ptr %548, align 4
  %551 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 16
  store i32 0, ptr %551, align 4
  %552 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 17
  store i32 0, ptr %552, align 8
  %553 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 7
  store i64 0, ptr %553, align 16
  %554 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 21
  store i16 0, ptr %554, align 8
  %555 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 22
  store i16 0, ptr %555, align 2
  %556 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 23
  store i16 0, ptr %556, align 4
  %557 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 15
  store i32 0, ptr %557, align 16
  %558 = tail call i32 @ata_id_xfermask(ptr noundef %15)
  %559 = getelementptr i16, ptr %15, i32 23
  %560 = load i16, ptr %559, align 2
  %561 = lshr i16 %560, 8
  %562 = trunc i16 %561 to i8
  store i8 %562, ptr %6, align 1
  %563 = getelementptr inbounds i8, ptr %6, i32 1
  %564 = trunc i16 %560 to i8
  store i8 %564, ptr %563, align 1
  %565 = getelementptr inbounds i8, ptr %6, i32 2
  %566 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 12
  %567 = load i16, ptr %566, align 2
  %568 = lshr i16 %567, 8
  %569 = trunc i16 %568 to i8
  store i8 %569, ptr %565, align 1
  %570 = getelementptr inbounds i8, ptr %6, i32 3
  %571 = trunc i16 %567 to i8
  store i8 %571, ptr %570, align 1
  %572 = getelementptr inbounds i8, ptr %6, i32 4
  %573 = getelementptr i16, ptr %15, i32 25
  %574 = load i16, ptr %573, align 2
  %575 = lshr i16 %574, 8
  %576 = trunc i16 %575 to i8
  store i8 %576, ptr %572, align 1
  %577 = getelementptr inbounds i8, ptr %6, i32 5
  %578 = trunc i16 %574 to i8
  store i8 %578, ptr %577, align 1
  %579 = getelementptr inbounds i8, ptr %6, i32 6
  %580 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 13
  %581 = load i16, ptr %580, align 2
  %582 = lshr i16 %581, 8
  %583 = trunc i16 %582 to i8
  store i8 %583, ptr %579, align 1
  %584 = getelementptr inbounds i8, ptr %6, i32 7
  %585 = trunc i16 %581 to i8
  store i8 %585, ptr %584, align 1
  %586 = call i32 @strnlen(ptr noundef nonnull %6, i32 noundef 8) #25
  %587 = getelementptr i8, ptr %6, i32 %586
  br label %588

588:                                              ; preds = %591, %547
  %589 = phi ptr [ %587, %547 ], [ %592, %591 ]
  %590 = icmp ugt ptr %589, %6
  br i1 %590, label %591, label %595

591:                                              ; preds = %588
  %592 = getelementptr i8, ptr %589, i32 -1
  %593 = load i8, ptr %592, align 1
  %594 = icmp eq i8 %593, 32
  br i1 %594, label %588, label %595

595:                                              ; preds = %591, %588
  store i8 0, ptr %589, align 1
  %596 = getelementptr i16, ptr %15, i32 27
  %597 = load i16, ptr %596, align 2
  %598 = lshr i16 %597, 8
  %599 = trunc i16 %598 to i8
  store i8 %599, ptr %7, align 1
  %600 = getelementptr inbounds i8, ptr %7, i32 1
  %601 = trunc i16 %597 to i8
  store i8 %601, ptr %600, align 1
  %602 = getelementptr inbounds i8, ptr %7, i32 2
  %603 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 14
  %604 = load i16, ptr %603, align 2
  %605 = lshr i16 %604, 8
  %606 = trunc i16 %605 to i8
  store i8 %606, ptr %602, align 1
  %607 = getelementptr inbounds i8, ptr %7, i32 3
  %608 = trunc i16 %604 to i8
  store i8 %608, ptr %607, align 1
  %609 = getelementptr inbounds i8, ptr %7, i32 4
  %610 = getelementptr i16, ptr %15, i32 29
  %611 = load i16, ptr %610, align 2
  %612 = lshr i16 %611, 8
  %613 = trunc i16 %612 to i8
  store i8 %613, ptr %609, align 1
  %614 = getelementptr inbounds i8, ptr %7, i32 5
  %615 = trunc i16 %611 to i8
  store i8 %615, ptr %614, align 1
  %616 = getelementptr inbounds i8, ptr %7, i32 6
  %617 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 15
  %618 = load i16, ptr %617, align 2
  %619 = lshr i16 %618, 8
  %620 = trunc i16 %619 to i8
  store i8 %620, ptr %616, align 1
  %621 = getelementptr inbounds i8, ptr %7, i32 7
  %622 = trunc i16 %618 to i8
  store i8 %622, ptr %621, align 1
  %623 = getelementptr inbounds i8, ptr %7, i32 8
  %624 = getelementptr i16, ptr %15, i32 31
  %625 = load i16, ptr %624, align 2
  %626 = lshr i16 %625, 8
  %627 = trunc i16 %626 to i8
  store i8 %627, ptr %623, align 1
  %628 = getelementptr inbounds i8, ptr %7, i32 9
  %629 = trunc i16 %625 to i8
  store i8 %629, ptr %628, align 1
  %630 = getelementptr inbounds i8, ptr %7, i32 10
  %631 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 16
  %632 = load i16, ptr %631, align 2
  %633 = lshr i16 %632, 8
  %634 = trunc i16 %633 to i8
  store i8 %634, ptr %630, align 1
  %635 = getelementptr inbounds i8, ptr %7, i32 11
  %636 = trunc i16 %632 to i8
  store i8 %636, ptr %635, align 1
  %637 = getelementptr inbounds i8, ptr %7, i32 12
  %638 = getelementptr i16, ptr %15, i32 33
  %639 = load i16, ptr %638, align 2
  %640 = lshr i16 %639, 8
  %641 = trunc i16 %640 to i8
  store i8 %641, ptr %637, align 1
  %642 = getelementptr inbounds i8, ptr %7, i32 13
  %643 = trunc i16 %639 to i8
  store i8 %643, ptr %642, align 1
  %644 = getelementptr inbounds i8, ptr %7, i32 14
  %645 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 17
  %646 = load i16, ptr %645, align 2
  %647 = lshr i16 %646, 8
  %648 = trunc i16 %647 to i8
  store i8 %648, ptr %644, align 1
  %649 = getelementptr inbounds i8, ptr %7, i32 15
  %650 = trunc i16 %646 to i8
  store i8 %650, ptr %649, align 1
  %651 = getelementptr inbounds i8, ptr %7, i32 16
  %652 = getelementptr i16, ptr %15, i32 35
  %653 = load i16, ptr %652, align 2
  %654 = lshr i16 %653, 8
  %655 = trunc i16 %654 to i8
  store i8 %655, ptr %651, align 1
  %656 = getelementptr inbounds i8, ptr %7, i32 17
  %657 = trunc i16 %653 to i8
  store i8 %657, ptr %656, align 1
  %658 = getelementptr inbounds i8, ptr %7, i32 18
  %659 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 18
  %660 = load i16, ptr %659, align 2
  %661 = lshr i16 %660, 8
  %662 = trunc i16 %661 to i8
  store i8 %662, ptr %658, align 1
  %663 = getelementptr inbounds i8, ptr %7, i32 19
  %664 = trunc i16 %660 to i8
  store i8 %664, ptr %663, align 1
  %665 = getelementptr inbounds i8, ptr %7, i32 20
  %666 = getelementptr i16, ptr %15, i32 37
  %667 = load i16, ptr %666, align 2
  %668 = lshr i16 %667, 8
  %669 = trunc i16 %668 to i8
  store i8 %669, ptr %665, align 1
  %670 = getelementptr inbounds i8, ptr %7, i32 21
  %671 = trunc i16 %667 to i8
  store i8 %671, ptr %670, align 1
  %672 = getelementptr inbounds i8, ptr %7, i32 22
  %673 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 19
  %674 = load i16, ptr %673, align 2
  %675 = lshr i16 %674, 8
  %676 = trunc i16 %675 to i8
  store i8 %676, ptr %672, align 1
  %677 = getelementptr inbounds i8, ptr %7, i32 23
  %678 = trunc i16 %674 to i8
  store i8 %678, ptr %677, align 1
  %679 = getelementptr inbounds i8, ptr %7, i32 24
  %680 = getelementptr i16, ptr %15, i32 39
  %681 = load i16, ptr %680, align 2
  %682 = lshr i16 %681, 8
  %683 = trunc i16 %682 to i8
  store i8 %683, ptr %679, align 1
  %684 = getelementptr inbounds i8, ptr %7, i32 25
  %685 = trunc i16 %681 to i8
  store i8 %685, ptr %684, align 1
  %686 = getelementptr inbounds i8, ptr %7, i32 26
  %687 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 20
  %688 = load i16, ptr %687, align 2
  %689 = lshr i16 %688, 8
  %690 = trunc i16 %689 to i8
  store i8 %690, ptr %686, align 1
  %691 = getelementptr inbounds i8, ptr %7, i32 27
  %692 = trunc i16 %688 to i8
  store i8 %692, ptr %691, align 1
  %693 = getelementptr inbounds i8, ptr %7, i32 28
  %694 = getelementptr i16, ptr %15, i32 41
  %695 = load i16, ptr %694, align 2
  %696 = lshr i16 %695, 8
  %697 = trunc i16 %696 to i8
  store i8 %697, ptr %693, align 1
  %698 = getelementptr inbounds i8, ptr %7, i32 29
  %699 = trunc i16 %695 to i8
  store i8 %699, ptr %698, align 1
  %700 = getelementptr inbounds i8, ptr %7, i32 30
  %701 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 21
  %702 = load i16, ptr %701, align 2
  %703 = lshr i16 %702, 8
  %704 = trunc i16 %703 to i8
  store i8 %704, ptr %700, align 1
  %705 = getelementptr inbounds i8, ptr %7, i32 31
  %706 = trunc i16 %702 to i8
  store i8 %706, ptr %705, align 1
  %707 = getelementptr inbounds i8, ptr %7, i32 32
  %708 = getelementptr i16, ptr %15, i32 43
  %709 = load i16, ptr %708, align 2
  %710 = lshr i16 %709, 8
  %711 = trunc i16 %710 to i8
  store i8 %711, ptr %707, align 1
  %712 = getelementptr inbounds i8, ptr %7, i32 33
  %713 = trunc i16 %709 to i8
  store i8 %713, ptr %712, align 1
  %714 = getelementptr inbounds i8, ptr %7, i32 34
  %715 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 22
  %716 = load i16, ptr %715, align 2
  %717 = lshr i16 %716, 8
  %718 = trunc i16 %717 to i8
  store i8 %718, ptr %714, align 1
  %719 = getelementptr inbounds i8, ptr %7, i32 35
  %720 = trunc i16 %716 to i8
  store i8 %720, ptr %719, align 1
  %721 = getelementptr inbounds i8, ptr %7, i32 36
  %722 = getelementptr i16, ptr %15, i32 45
  %723 = load i16, ptr %722, align 2
  %724 = lshr i16 %723, 8
  %725 = trunc i16 %724 to i8
  store i8 %725, ptr %721, align 1
  %726 = getelementptr inbounds i8, ptr %7, i32 37
  %727 = trunc i16 %723 to i8
  store i8 %727, ptr %726, align 1
  %728 = getelementptr inbounds i8, ptr %7, i32 38
  %729 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 23
  %730 = load i16, ptr %729, align 2
  %731 = lshr i16 %730, 8
  %732 = trunc i16 %731 to i8
  store i8 %732, ptr %728, align 1
  %733 = getelementptr inbounds i8, ptr %7, i32 39
  %734 = trunc i16 %730 to i8
  store i8 %734, ptr %733, align 1
  %735 = call i32 @strnlen(ptr noundef nonnull %7, i32 noundef 40) #25
  %736 = getelementptr i8, ptr %7, i32 %735
  br label %737

737:                                              ; preds = %740, %595
  %738 = phi ptr [ %736, %595 ], [ %741, %740 ]
  %739 = icmp ugt ptr %738, %7
  br i1 %739, label %740, label %744

740:                                              ; preds = %737
  %741 = getelementptr i8, ptr %738, i32 -1
  %742 = load i8, ptr %741, align 1
  %743 = icmp eq i8 %742, 32
  br i1 %743, label %737, label %744

744:                                              ; preds = %740, %737
  store i8 0, ptr %738, align 1
  %745 = load i32, ptr %16, align 64
  switch i32 %745, label %1200 [
    i32 1, label %746
    i32 9, label %746
    i32 3, label %1082
  ]

746:                                              ; preds = %744, %744
  %747 = load i16, ptr %15, align 2
  switch i16 %747, label %748 [
    i16 -31606, label %753
    i16 -31670, label %753
  ]

748:                                              ; preds = %746
  %749 = getelementptr i16, ptr %15, i32 83
  %750 = load i16, ptr %749, align 2
  %751 = and i16 %750, -16380
  %752 = icmp eq i16 %751, 16388
  br i1 %752, label %753, label %769

753:                                              ; preds = %748, %746, %746
  %754 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 81
  %755 = load i16, ptr %754, align 2
  %756 = and i16 %755, 1
  %757 = icmp eq i16 %756, 0
  br i1 %757, label %768, label %758

758:                                              ; preds = %753
  %759 = load ptr, ptr %0, align 64
  %760 = load ptr, ptr %759, align 64
  %761 = getelementptr inbounds %struct.ata_port, ptr %760, i32 0, i32 5
  %762 = load i32, ptr %761, align 4
  %763 = getelementptr inbounds %struct.ata_link, ptr %759, i32 0, i32 1
  %764 = load i32, ptr %763, align 4
  %765 = load i32, ptr %26, align 4
  %766 = add i32 %765, %764
  %767 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %762, i32 noundef %766) #26
  br label %768

768:                                              ; preds = %758, %753
  store i32 4277827, ptr %5, align 4
  br label %793

769:                                              ; preds = %748
  %770 = call fastcc i32 @ata_id_major_version(ptr noundef %15)
  %771 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 7, ptr noundef nonnull @.str.50, i32 noundef %770)
  %772 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 40
  %773 = load i16, ptr %772, align 2
  %774 = icmp eq i16 %773, -1
  %775 = and i16 %773, 32512
  %776 = icmp eq i16 %775, 0
  %777 = or i1 %774, %776
  br i1 %777, label %793, label %778

778:                                              ; preds = %769
  %779 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 24
  %780 = load i16, ptr %779, align 2
  %781 = and i16 %780, -16383
  %782 = icmp eq i16 %781, 16385
  br i1 %782, label %783, label %793

783:                                              ; preds = %778
  %784 = load ptr, ptr %0, align 64
  %785 = load ptr, ptr %784, align 64
  %786 = getelementptr inbounds %struct.ata_port, ptr %785, i32 0, i32 5
  %787 = load i32, ptr %786, align 4
  %788 = getelementptr inbounds %struct.ata_link, ptr %784, i32 0, i32 1
  %789 = load i32, ptr %788, align 4
  %790 = load i32, ptr %26, align 4
  %791 = add i32 %790, %789
  %792 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %787, i32 noundef %791) #26
  br label %793

793:                                              ; preds = %783, %778, %769, %768
  %794 = call fastcc i64 @ata_id_n_sectors(ptr noundef %15)
  store i64 %794, ptr %553, align 16
  %795 = getelementptr [256 x i16], ptr %15, i32 0, i32 47
  %796 = load i16, ptr %795, align 2
  %797 = zext i16 %796 to i32
  %798 = and i32 %797, 65280
  %799 = icmp eq i32 %798, 32768
  br i1 %799, label %800, label %819

800:                                              ; preds = %793
  %801 = getelementptr [256 x i16], ptr %15, i32 0, i32 59
  %802 = load i16, ptr %801, align 2
  %803 = zext i16 %802 to i32
  %804 = and i32 %803, 256
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %819, label %806

806:                                              ; preds = %800
  %807 = and i32 %797, 255
  %808 = and i32 %803, 255
  %809 = call i32 @llvm.ctpop.i32(i32 %807) #25, !range !24
  %810 = icmp ne i32 %809, 1
  %811 = icmp eq i32 %808, 0
  %812 = select i1 %810, i1 true, i1 %811
  br i1 %812, label %819, label %813

813:                                              ; preds = %806
  %814 = call i32 @llvm.ctpop.i32(i32 %808) #25, !range !16
  %815 = icmp ugt i32 %814, 1
  %816 = icmp ugt i32 %808, %807
  %817 = select i1 %815, i1 true, i1 %816
  br i1 %817, label %819, label %818

818:                                              ; preds = %813
  store i32 %808, ptr %557, align 16
  br label %819

819:                                              ; preds = %818, %813, %806, %800, %793
  br i1 %14, label %840, label %820

820:                                              ; preds = %819
  %821 = load ptr, ptr %0, align 64
  %822 = load ptr, ptr %821, align 64
  %823 = getelementptr inbounds %struct.ata_port, ptr %822, i32 0, i32 5
  %824 = load i32, ptr %823, align 4
  %825 = getelementptr inbounds %struct.ata_link, ptr %821, i32 0, i32 1
  %826 = load i32, ptr %825, align 4
  %827 = load i32, ptr %26, align 4
  %828 = add i32 %827, %826
  %829 = icmp eq i32 %558, 0
  %830 = call i32 @llvm.ctlz.i32(i32 %558, i1 false) #25, !range !16
  %831 = sub nsw i32 31, %830
  %832 = select i1 %829, i32 -1, i32 %831
  %833 = icmp ult i32 %832, 20
  br i1 %833, label %834, label %837

834:                                              ; preds = %820
  %835 = getelementptr [20 x ptr], ptr @ata_mode_string.xfer_mode_str, i32 0, i32 %832
  %836 = load ptr, ptr %835, align 4
  br label %837

837:                                              ; preds = %834, %820
  %838 = phi ptr [ %836, %834 ], [ @.str.25, %820 ]
  %839 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %824, i32 noundef %828, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %838) #26
  br label %840

840:                                              ; preds = %837, %819
  %841 = getelementptr i16, ptr %15, i32 49
  %842 = load i16, ptr %841, align 2
  %843 = and i16 %842, 512
  %844 = icmp eq i16 %843, 0
  br i1 %844, label %848, label %845

845:                                              ; preds = %840
  %846 = call fastcc i32 @ata_dev_config_lba(ptr noundef %0)
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %849, label %1321

848:                                              ; preds = %840
  call fastcc void @ata_dev_config_chs(ptr noundef %0)
  br label %849

849:                                              ; preds = %848, %845
  %850 = load ptr, ptr %0, align 64
  %851 = load ptr, ptr %850, align 64
  %852 = getelementptr inbounds %struct.ata_port, ptr %851, i32 0, i32 50
  %853 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 39
  %854 = load i16, ptr %853, align 4
  %855 = and i16 %854, 256
  %856 = icmp eq i16 %855, 0
  br i1 %856, label %889, label %857

857:                                              ; preds = %849
  %858 = call fastcc zeroext i1 @ata_identify_page_supported(ptr noundef %0, i8 noundef zeroext 8) #25
  br i1 %858, label %859, label %889

859:                                              ; preds = %857
  %860 = call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 48, i8 noundef zeroext 8, ptr noundef %852, i32 noundef 1) #25
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %862, label %889

862:                                              ; preds = %859
  %863 = load i32, ptr %548, align 4
  %864 = or i32 %863, 134217728
  store i32 %864, ptr %548, align 4
  %865 = getelementptr %struct.ata_port, ptr %851, i32 0, i32 50, i32 48
  %866 = load i8, ptr %865, align 1
  %867 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 26, i32 0
  store i8 %866, ptr %867, align 1
  %868 = getelementptr %struct.ata_port, ptr %851, i32 0, i32 50, i32 49
  %869 = load i8, ptr %868, align 1
  %870 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 26, i32 1
  store i8 %869, ptr %870, align 1
  %871 = getelementptr %struct.ata_port, ptr %851, i32 0, i32 50, i32 50
  %872 = load i8, ptr %871, align 1
  %873 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 26, i32 2
  store i8 %872, ptr %873, align 1
  %874 = getelementptr %struct.ata_port, ptr %851, i32 0, i32 50, i32 51
  %875 = load i8, ptr %874, align 1
  %876 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 26, i32 3
  store i8 %875, ptr %876, align 1
  %877 = getelementptr %struct.ata_port, ptr %851, i32 0, i32 50, i32 52
  %878 = load i8, ptr %877, align 1
  %879 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 26, i32 4
  store i8 %878, ptr %879, align 1
  %880 = getelementptr %struct.ata_port, ptr %851, i32 0, i32 50, i32 53
  %881 = load i8, ptr %880, align 1
  %882 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 26, i32 5
  store i8 %881, ptr %882, align 1
  %883 = getelementptr %struct.ata_port, ptr %851, i32 0, i32 50, i32 54
  %884 = load i8, ptr %883, align 1
  %885 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 26, i32 6
  store i8 %884, ptr %885, align 1
  %886 = getelementptr %struct.ata_port, ptr %851, i32 0, i32 50, i32 55
  %887 = load i8, ptr %886, align 1
  %888 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 26, i32 7
  store i8 %887, ptr %888, align 1
  br label %889

889:                                              ; preds = %862, %859, %857, %849
  %890 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 43
  %891 = load i16, ptr %890, align 2
  %892 = icmp sgt i16 %891, -1
  br i1 %892, label %918, label %893

893:                                              ; preds = %889
  %894 = getelementptr i16, ptr %15, i32 119
  %895 = load i16, ptr %894, align 2
  %896 = and i16 %895, 64
  %897 = icmp eq i16 %896, 0
  br i1 %897, label %918, label %898

898:                                              ; preds = %893
  %899 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 60
  %900 = load i16, ptr %899, align 2
  %901 = and i16 %900, 64
  %902 = icmp eq i16 %901, 0
  br i1 %902, label %903, label %918

903:                                              ; preds = %898
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  %904 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %904, i8 0, i64 20, i1 false) #25
  %905 = load ptr, ptr %0, align 64
  %906 = load ptr, ptr %905, align 64
  %907 = getelementptr inbounds %struct.ata_port, ptr %906, i32 0, i32 9
  %908 = load i8, ptr %907, align 4
  %909 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 2
  store i8 %908, ptr %909, align 1
  %910 = load i32, ptr %26, align 4
  %911 = icmp eq i32 %910, 0
  %912 = select i1 %911, i8 -96, i8 -80
  %913 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 13
  store i8 %912, ptr %913, align 4
  %914 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 14
  store i8 -17, ptr %914, align 1
  %915 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 8
  store i8 -61, ptr %915, align 1
  store i32 6, ptr %2, align 4
  %916 = getelementptr inbounds %struct.ata_taskfile, ptr %2, i32 0, i32 9
  store i8 1, ptr %916, align 4
  %917 = call i32 @ata_exec_internal_sg(ptr noundef %0, ptr noundef nonnull %2, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  br label %918

918:                                              ; preds = %903, %898, %893, %889
  %919 = load ptr, ptr %0, align 64
  %920 = load ptr, ptr %919, align 64
  %921 = getelementptr inbounds %struct.ata_port, ptr %920, i32 0, i32 50
  %922 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 30
  store i32 -1, ptr %922, align 32
  %923 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 31
  store i32 -1, ptr %923, align 4
  %924 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 32
  store i32 -1, ptr %924, align 8
  %925 = load i32, ptr %16, align 64
  %926 = icmp eq i32 %925, 9
  br i1 %926, label %927, label %929

927:                                              ; preds = %918
  %928 = load i32, ptr %548, align 4
  br label %935

929:                                              ; preds = %918
  %930 = getelementptr i16, ptr %15, i32 69
  %931 = load i16, ptr %930, align 2
  %932 = and i16 %931, 3
  %933 = icmp eq i16 %932, 1
  %934 = load i32, ptr %548, align 4
  br i1 %933, label %935, label %938

935:                                              ; preds = %929, %927
  %936 = phi i32 [ %928, %927 ], [ %934, %929 ]
  %937 = or i32 %936, 1073741824
  store i32 %937, ptr %548, align 4
  br label %938

938:                                              ; preds = %935, %929
  %939 = phi i32 [ %934, %929 ], [ %937, %935 ]
  %940 = and i32 %939, 1073741824
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %983, label %942

942:                                              ; preds = %938
  %943 = call fastcc zeroext i1 @ata_identify_page_supported(ptr noundef %0, i8 noundef zeroext 9) #25
  br i1 %943, label %954, label %944

944:                                              ; preds = %942
  %945 = load ptr, ptr %0, align 64
  %946 = load ptr, ptr %945, align 64
  %947 = getelementptr inbounds %struct.ata_port, ptr %946, i32 0, i32 5
  %948 = load i32, ptr %947, align 4
  %949 = getelementptr inbounds %struct.ata_link, ptr %945, i32 0, i32 1
  %950 = load i32, ptr %949, align 4
  %951 = load i32, ptr %26, align 4
  %952 = add i32 %951, %950
  %953 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.294, i32 noundef %948, i32 noundef %952) #26
  br label %983

954:                                              ; preds = %942
  %955 = call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 48, i8 noundef zeroext 9, ptr noundef %921, i32 noundef 1) #25
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %983

957:                                              ; preds = %954
  %958 = getelementptr %struct.ata_port, ptr %920, i32 0, i32 50, i32 8
  %959 = load i64, ptr %958, align 1
  %960 = icmp sgt i64 %959, -1
  br i1 %960, label %965, label %961

961:                                              ; preds = %957
  %962 = trunc i64 %959 to i32
  %963 = and i32 %962, 1
  %964 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 29
  store i32 %963, ptr %964, align 4
  br label %965

965:                                              ; preds = %961, %957
  %966 = getelementptr %struct.ata_port, ptr %920, i32 0, i32 50, i32 24
  %967 = load i64, ptr %966, align 1
  %968 = icmp sgt i64 %967, -1
  br i1 %968, label %971, label %969

969:                                              ; preds = %965
  %970 = trunc i64 %967 to i32
  store i32 %970, ptr %922, align 32
  br label %971

971:                                              ; preds = %969, %965
  %972 = getelementptr %struct.ata_port, ptr %920, i32 0, i32 50, i32 32
  %973 = load i64, ptr %972, align 1
  %974 = icmp sgt i64 %973, -1
  br i1 %974, label %977, label %975

975:                                              ; preds = %971
  %976 = trunc i64 %973 to i32
  store i32 %976, ptr %923, align 4
  br label %977

977:                                              ; preds = %975, %971
  %978 = getelementptr %struct.ata_port, ptr %920, i32 0, i32 50, i32 40
  %979 = load i64, ptr %978, align 1
  %980 = icmp sgt i64 %979, -1
  br i1 %980, label %983, label %981

981:                                              ; preds = %977
  %982 = trunc i64 %979 to i32
  store i32 %982, ptr %924, align 8
  br label %983

983:                                              ; preds = %981, %977, %954, %944, %938
  %984 = load ptr, ptr %0, align 64
  %985 = load ptr, ptr %984, align 64
  %986 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 40
  %987 = load i16, ptr %986, align 2
  %988 = icmp eq i16 %987, -1
  %989 = and i16 %987, 32512
  %990 = icmp eq i16 %989, 0
  %991 = or i1 %988, %990
  br i1 %991, label %1021, label %992

992:                                              ; preds = %983
  %993 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 24
  %994 = load i16, ptr %993, align 2
  %995 = and i16 %994, 1
  %996 = icmp eq i16 %995, 0
  br i1 %996, label %1021, label %997

997:                                              ; preds = %992
  %998 = call fastcc zeroext i1 @ata_identify_page_supported(ptr noundef %0, i8 noundef zeroext 6) #25
  br i1 %998, label %1009, label %999

999:                                              ; preds = %997
  %1000 = load ptr, ptr %0, align 64
  %1001 = load ptr, ptr %1000, align 64
  %1002 = getelementptr inbounds %struct.ata_port, ptr %1001, i32 0, i32 5
  %1003 = load i32, ptr %1002, align 4
  %1004 = getelementptr inbounds %struct.ata_link, ptr %1000, i32 0, i32 1
  %1005 = load i32, ptr %1004, align 4
  %1006 = load i32, ptr %26, align 4
  %1007 = add i32 %1006, %1005
  %1008 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.295, i32 noundef %1003, i32 noundef %1007) #26
  br label %1021

1009:                                             ; preds = %997
  %1010 = getelementptr inbounds %struct.ata_port, ptr %985, i32 0, i32 50
  %1011 = call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 48, i8 noundef zeroext 6, ptr noundef %1010, i32 noundef 1) #25
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %1021

1013:                                             ; preds = %1009
  %1014 = getelementptr %struct.ata_port, ptr %985, i32 0, i32 50, i32 40
  %1015 = load i64, ptr %1014, align 1
  %1016 = and i64 %1015, -9223372036854775807
  %1017 = icmp eq i64 %1016, -9223372036854775807
  br i1 %1017, label %1018, label %1021

1018:                                             ; preds = %1013
  %1019 = load i32, ptr %548, align 4
  %1020 = or i32 %1019, 256
  store i32 %1020, ptr %548, align 4
  br label %1021

1021:                                             ; preds = %1018, %1013, %1009, %999, %992, %983
  %1022 = load i16, ptr %986, align 2
  %1023 = icmp eq i16 %1022, -1
  %1024 = and i16 %1022, 30720
  %1025 = icmp eq i16 %1024, 0
  %1026 = or i1 %1023, %1025
  br i1 %1026, label %1076, label %1027

1027:                                             ; preds = %1021
  %1028 = load i32, ptr %20, align 8
  %1029 = and i32 %1028, 536870912
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1031, label %1076

1031:                                             ; preds = %1027
  %1032 = load ptr, ptr %0, align 64
  %1033 = load ptr, ptr %1032, align 64
  %1034 = getelementptr inbounds %struct.ata_port, ptr %1033, i32 0, i32 50
  %1035 = call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %1034, i32 noundef 1) #25
  %1036 = icmp eq i32 %1035, 0
  br i1 %1036, label %1037, label %1076

1037:                                             ; preds = %1031
  %1038 = getelementptr %struct.ata_port, ptr %1033, i32 0, i32 50, i32 142
  %1039 = load i16, ptr %1038, align 1
  %1040 = icmp eq i16 %1039, 0
  br i1 %1040, label %1076, label %1041

1041:                                             ; preds = %1037
  %1042 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8704, i32 noundef 3520, i32 noundef 2) #27
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1076, label %1044

1044:                                             ; preds = %1041
  %1045 = call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 71, i8 noundef zeroext 0, ptr noundef nonnull %1042, i32 noundef 17) #25
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1047, label %1076

1047:                                             ; preds = %1044
  %1048 = load i8, ptr %1042, align 4096
  %1049 = zext i8 %1048 to i32
  %1050 = icmp eq i8 %1048, 0
  br i1 %1050, label %1076, label %1051

1051:                                             ; preds = %1047
  %1052 = mul nuw nsw i32 %1049, 24
  %1053 = add nuw nsw i32 %1052, 8
  %1054 = call noalias align 64 ptr @__kmalloc(i32 noundef %1053, i32 noundef 3520) #27
  %1055 = icmp eq ptr %1054, null
  br i1 %1055, label %1076, label %1056

1056:                                             ; preds = %1051
  store i8 %1048, ptr %1054, align 64
  %1057 = getelementptr i8, ptr %1042, i32 64
  %1058 = call i32 @llvm.umax.i32(i32 %1049, i32 1) #25
  br label %1059

1059:                                             ; preds = %1059, %1056
  %1060 = phi ptr [ %1074, %1059 ], [ %1057, %1056 ]
  %1061 = phi i32 [ %1073, %1059 ], [ 0, %1056 ]
  %1062 = load i8, ptr %1060, align 1
  %1063 = getelementptr %struct.ata_cpr_log, ptr %1054, i32 0, i32 1, i32 %1061
  store i8 %1062, ptr %1063, align 8
  %1064 = getelementptr i8, ptr %1060, i32 1
  %1065 = load i8, ptr %1064, align 1
  %1066 = getelementptr %struct.ata_cpr_log, ptr %1054, i32 0, i32 1, i32 %1061, i32 1
  store i8 %1065, ptr %1066, align 1
  %1067 = getelementptr i8, ptr %1060, i32 8
  %1068 = load i64, ptr %1067, align 1
  %1069 = getelementptr %struct.ata_cpr_log, ptr %1054, i32 0, i32 1, i32 %1061, i32 2
  store i64 %1068, ptr %1069, align 8
  %1070 = getelementptr i8, ptr %1060, i32 16
  %1071 = load i64, ptr %1070, align 1
  %1072 = getelementptr %struct.ata_cpr_log, ptr %1054, i32 0, i32 1, i32 %1061, i32 3
  store i64 %1071, ptr %1072, align 8
  %1073 = add nuw nsw i32 %1061, 1
  %1074 = getelementptr i8, ptr %1060, i32 32
  %1075 = icmp eq i32 %1073, %1058
  br i1 %1075, label %1076, label %1059

1076:                                             ; preds = %1059, %1051, %1047, %1044, %1041, %1037, %1031, %1027, %1021
  %1077 = phi ptr [ null, %1044 ], [ null, %1051 ], [ null, %1047 ], [ null, %1041 ], [ null, %1037 ], [ null, %1021 ], [ null, %1027 ], [ null, %1031 ], [ %1054, %1059 ]
  %1078 = phi ptr [ %1042, %1044 ], [ %1042, %1051 ], [ %1042, %1047 ], [ null, %1041 ], [ null, %1037 ], [ null, %1021 ], [ null, %1027 ], [ null, %1031 ], [ %1042, %1059 ]
  %1079 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 33
  %1080 = load ptr, ptr %1079, align 4
  store ptr %1077, ptr %1079, align 4
  call void @kfree(ptr noundef %1080) #25
  call void @kfree(ptr noundef %1078) #25
  store i32 32, ptr %552, align 8
  br i1 %14, label %1200, label %1081

1081:                                             ; preds = %1076
  call fastcc void @ata_dev_print_features(ptr noundef %0)
  br label %1200

1082:                                             ; preds = %744
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  store i32 0, ptr %8, align 4, !annotation !9
  %1083 = load i16, ptr %15, align 2
  %1084 = and i16 %1083, 3
  %1085 = icmp eq i16 %1084, 1
  %1086 = select i1 %1085, i32 16, i32 -1
  %1087 = icmp eq i16 %1084, 0
  %1088 = select i1 %1087, i32 12, i32 %1086
  %1089 = icmp slt i32 %1088, 12
  br i1 %1089, label %1190, label %1090

1090:                                             ; preds = %1082
  store i32 %1088, ptr %552, align 8
  %1091 = load i32, ptr @atapi_an, align 4
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1129, label %1093

1093:                                             ; preds = %1090
  %1094 = load i32, ptr %189, align 4
  %1095 = and i32 %1094, 262144
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1129, label %1097

1097:                                             ; preds = %1093
  %1098 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 38
  %1099 = load i16, ptr %1098, align 2
  switch i16 %1099, label %1100 [
    i16 0, label %1129
    i16 -1, label %1129
  ]

1100:                                             ; preds = %1097
  %1101 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 39
  %1102 = load i16, ptr %1101, align 2
  %1103 = and i16 %1102, 32
  %1104 = icmp eq i16 %1103, 0
  br i1 %1104, label %1129, label %1105

1105:                                             ; preds = %1100
  %1106 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 27
  %1107 = load i32, ptr %1106, align 4
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1113, label %1109

1109:                                             ; preds = %1105
  %1110 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 25
  %1111 = call i32 @sata_scr_read(ptr noundef %1110, i32 noundef 4, ptr noundef nonnull %8) #25
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1113, label %1129

1113:                                             ; preds = %1109, %1105
  %1114 = call i32 @ata_dev_set_feature(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 5)
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1126, label %1116

1116:                                             ; preds = %1113
  %1117 = load ptr, ptr %0, align 64
  %1118 = load ptr, ptr %1117, align 64
  %1119 = getelementptr inbounds %struct.ata_port, ptr %1118, i32 0, i32 5
  %1120 = load i32, ptr %1119, align 4
  %1121 = getelementptr inbounds %struct.ata_link, ptr %1117, i32 0, i32 1
  %1122 = load i32, ptr %1121, align 4
  %1123 = load i32, ptr %26, align 4
  %1124 = add i32 %1123, %1122
  %1125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %1120, i32 noundef %1124, i32 noundef %1114) #26
  br label %1129

1126:                                             ; preds = %1113
  %1127 = load i32, ptr %548, align 4
  %1128 = or i32 %1127, 128
  store i32 %1128, ptr %548, align 4
  br label %1129

1129:                                             ; preds = %1126, %1116, %1109, %1100, %1097, %1097, %1093, %1090
  %1130 = phi ptr [ @.str.37, %1116 ], [ @.str.54, %1126 ], [ @.str.37, %1109 ], [ @.str.37, %1100 ], [ @.str.37, %1097 ], [ @.str.37, %1093 ], [ @.str.37, %1090 ], [ @.str.37, %1097 ]
  %1131 = load i16, ptr %15, align 64
  %1132 = and i16 %1131, 96
  %1133 = icmp eq i16 %1132, 32
  br i1 %1133, label %1134, label %1137

1134:                                             ; preds = %1129
  %1135 = load i32, ptr %548, align 4
  %1136 = or i32 %1135, 4
  store i32 %1136, ptr %548, align 4
  br label %1137

1137:                                             ; preds = %1134, %1129
  %1138 = phi ptr [ @.str.55, %1134 ], [ @.str.37, %1129 ]
  %1139 = load i32, ptr @atapi_dmadir, align 4
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1141, label %1156

1141:                                             ; preds = %1137
  %1142 = load i32, ptr %20, align 8
  %1143 = and i32 %1142, 262144
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1145, label %1156

1145:                                             ; preds = %1141
  %1146 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 40
  %1147 = load i16, ptr %1146, align 2
  %1148 = icmp eq i16 %1147, -1
  %1149 = and i16 %1147, 32640
  %1150 = icmp eq i16 %1149, 0
  %1151 = or i1 %1148, %1150
  br i1 %1151, label %1159, label %1152

1152:                                             ; preds = %1145
  %1153 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 31
  %1154 = load i16, ptr %1153, align 2
  %1155 = icmp slt i16 %1154, 0
  br i1 %1155, label %1156, label %1159

1156:                                             ; preds = %1152, %1141, %1137
  %1157 = load i32, ptr %548, align 4
  %1158 = or i32 %1157, 1024
  store i32 %1158, ptr %548, align 4
  br label %1159

1159:                                             ; preds = %1156, %1152, %1145
  %1160 = phi ptr [ @.str.56, %1156 ], [ @.str.37, %1152 ], [ @.str.37, %1145 ]
  %1161 = getelementptr [256 x i16], ptr %15, i32 0, i32 77
  %1162 = load i16, ptr %1161, align 2
  %1163 = and i16 %1162, 16
  %1164 = icmp eq i16 %1163, 0
  br i1 %1164, label %1168, label %1165

1165:                                             ; preds = %1159
  %1166 = load i32, ptr %548, align 4
  %1167 = or i32 %1166, 67108864
  store i32 %1167, ptr %548, align 4
  br label %1168

1168:                                             ; preds = %1165, %1159
  br i1 %14, label %1189, label %1169

1169:                                             ; preds = %1168
  %1170 = load ptr, ptr %0, align 64
  %1171 = load ptr, ptr %1170, align 64
  %1172 = getelementptr inbounds %struct.ata_port, ptr %1171, i32 0, i32 5
  %1173 = load i32, ptr %1172, align 4
  %1174 = getelementptr inbounds %struct.ata_link, ptr %1170, i32 0, i32 1
  %1175 = load i32, ptr %1174, align 4
  %1176 = load i32, ptr %26, align 4
  %1177 = add i32 %1176, %1175
  %1178 = icmp eq i32 %558, 0
  %1179 = call i32 @llvm.ctlz.i32(i32 %558, i1 false) #25, !range !16
  %1180 = sub nsw i32 31, %1179
  %1181 = select i1 %1178, i32 -1, i32 %1180
  %1182 = icmp ult i32 %1181, 20
  br i1 %1182, label %1183, label %1186

1183:                                             ; preds = %1169
  %1184 = getelementptr [20 x ptr], ptr @ata_mode_string.xfer_mode_str, i32 0, i32 %1181
  %1185 = load ptr, ptr %1184, align 4
  br label %1186

1186:                                             ; preds = %1183, %1169
  %1187 = phi ptr [ %1185, %1183 ], [ @.str.25, %1169 ]
  %1188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %1173, i32 noundef %1177, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1187, ptr noundef nonnull %1138, ptr noundef nonnull %1130, ptr noundef nonnull %1160) #26
  br label %1189

1189:                                             ; preds = %1186, %1168
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  br label %1200

1190:                                             ; preds = %1082
  %1191 = load ptr, ptr %0, align 64
  %1192 = load ptr, ptr %1191, align 64
  %1193 = getelementptr inbounds %struct.ata_port, ptr %1192, i32 0, i32 5
  %1194 = load i32, ptr %1193, align 4
  %1195 = getelementptr inbounds %struct.ata_link, ptr %1191, i32 0, i32 1
  %1196 = load i32, ptr %1195, align 4
  %1197 = load i32, ptr %26, align 4
  %1198 = add i32 %1197, %1196
  %1199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %1194, i32 noundef %1198, i32 noundef %1088) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  br label %1321

1200:                                             ; preds = %1189, %1081, %1076, %744
  %1201 = load i32, ptr %548, align 4
  %1202 = and i32 %1201, 2
  %1203 = icmp eq i32 %1202, 0
  %1204 = select i1 %1203, i32 256, i32 65535
  store i32 %1204, ptr %551, align 4
  %1205 = load ptr, ptr %0, align 64
  %1206 = load ptr, ptr %1205, align 64
  %1207 = call fastcc i32 @ata_dev_blacklisted(ptr noundef %0) #25
  %1208 = and i32 %1207, 1024
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1210, label %1237

1210:                                             ; preds = %1200
  %1211 = getelementptr inbounds %struct.ata_port, ptr %1206, i32 0, i32 18
  %1212 = load i32, ptr %1211, align 4
  %1213 = icmp eq i32 %1212, 6
  br i1 %1213, label %1214, label %1237

1214:                                             ; preds = %1210
  %1215 = getelementptr i16, ptr %15, i32 93
  %1216 = load i16, ptr %1215, align 2
  %1217 = icmp eq i16 %1216, 0
  br i1 %1217, label %1218, label %1222

1218:                                             ; preds = %1214
  %1219 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 40
  %1220 = load i16, ptr %1219, align 2
  %1221 = icmp sgt i16 %1220, 31
  br i1 %1221, label %1237, label %1222

1222:                                             ; preds = %1218, %1214
  br i1 %14, label %1233, label %1223

1223:                                             ; preds = %1222
  %1224 = load ptr, ptr %0, align 64
  %1225 = load ptr, ptr %1224, align 64
  %1226 = getelementptr inbounds %struct.ata_port, ptr %1225, i32 0, i32 5
  %1227 = load i32, ptr %1226, align 4
  %1228 = getelementptr inbounds %struct.ata_link, ptr %1224, i32 0, i32 1
  %1229 = load i32, ptr %1228, align 4
  %1230 = load i32, ptr %26, align 4
  %1231 = add i32 %1230, %1229
  %1232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %1227, i32 noundef %1231) #26
  br label %1233

1233:                                             ; preds = %1223, %1222
  %1234 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 20
  %1235 = load i32, ptr %1234, align 4
  %1236 = and i32 %1235, 63
  store i32 %1236, ptr %1234, align 4
  store i32 256, ptr %551, align 4
  br label %1237

1237:                                             ; preds = %1233, %1218, %1210, %1200
  %1238 = load i32, ptr %16, align 64
  %1239 = icmp eq i32 %1238, 3
  br i1 %1239, label %1240, label %1247

1240:                                             ; preds = %1237
  %1241 = load i16, ptr %15, align 2
  %1242 = and i16 %1241, 7936
  %1243 = icmp eq i16 %1242, 256
  br i1 %1243, label %1244, label %1247

1244:                                             ; preds = %1240
  store i32 65535, ptr %551, align 4
  %1245 = load i32, ptr %20, align 8
  %1246 = or i32 %1245, 512
  store i32 %1246, ptr %20, align 8
  br label %1247

1247:                                             ; preds = %1244, %1240, %1237
  %1248 = load i32, ptr %20, align 8
  %1249 = and i32 %1248, 8
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1254, label %1251

1251:                                             ; preds = %1247
  %1252 = load i32, ptr %551, align 4
  %1253 = call i32 @llvm.umin.i32(i32 %1252, i32 128)
  store i32 %1253, ptr %551, align 4
  br label %1254

1254:                                             ; preds = %1251, %1247
  %1255 = and i32 %1248, 33554432
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1260, label %1257

1257:                                             ; preds = %1254
  %1258 = load i32, ptr %551, align 4
  %1259 = call i32 @llvm.umin.i32(i32 %1258, i32 1024)
  store i32 %1259, ptr %551, align 4
  br label %1260

1260:                                             ; preds = %1257, %1254
  %1261 = and i32 %1248, 131072
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1264, label %1263

1263:                                             ; preds = %1260
  store i32 65535, ptr %551, align 4
  br label %1264

1264:                                             ; preds = %1263, %1260
  %1265 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 1
  %1266 = load ptr, ptr %1265, align 4
  %1267 = getelementptr inbounds %struct.ata_port_operations, ptr %1266, i32 0, i32 11
  %1268 = load ptr, ptr %1267, align 4
  %1269 = icmp eq ptr %1268, null
  br i1 %1269, label %1272, label %1270

1270:                                             ; preds = %1264
  call void %1268(ptr noundef %0) #25
  %1271 = load i32, ptr %20, align 8
  br label %1272

1272:                                             ; preds = %1270, %1264
  %1273 = phi i32 [ %1271, %1270 ], [ %1248, %1264 ]
  %1274 = and i32 %1273, 1
  %1275 = icmp eq i32 %1274, 0
  %1276 = select i1 %1275, i1 true, i1 %14
  br i1 %1276, label %1297, label %1277

1277:                                             ; preds = %1272
  %1278 = load ptr, ptr %0, align 64
  %1279 = load ptr, ptr %1278, align 64
  %1280 = getelementptr inbounds %struct.ata_port, ptr %1279, i32 0, i32 5
  %1281 = load i32, ptr %1280, align 4
  %1282 = getelementptr inbounds %struct.ata_link, ptr %1278, i32 0, i32 1
  %1283 = load i32, ptr %1282, align 4
  %1284 = load i32, ptr %26, align 4
  %1285 = add i32 %1284, %1283
  %1286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %1281, i32 noundef %1285) #26
  %1287 = load ptr, ptr %0, align 64
  %1288 = load ptr, ptr %1287, align 64
  %1289 = getelementptr inbounds %struct.ata_port, ptr %1288, i32 0, i32 5
  %1290 = load i32, ptr %1289, align 4
  %1291 = getelementptr inbounds %struct.ata_link, ptr %1287, i32 0, i32 1
  %1292 = load i32, ptr %1291, align 4
  %1293 = load i32, ptr %26, align 4
  %1294 = add i32 %1293, %1292
  %1295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %1290, i32 noundef %1294) #26
  %1296 = load i32, ptr %20, align 8
  br label %1297

1297:                                             ; preds = %1277, %1272
  %1298 = phi i32 [ %1273, %1272 ], [ %1296, %1277 ]
  %1299 = and i32 %1298, 4096
  %1300 = icmp eq i32 %1299, 0
  %1301 = select i1 %1300, i1 true, i1 %14
  br i1 %1301, label %1321, label %1302

1302:                                             ; preds = %1297
  %1303 = load ptr, ptr %0, align 64
  %1304 = load ptr, ptr %1303, align 64
  %1305 = getelementptr inbounds %struct.ata_port, ptr %1304, i32 0, i32 5
  %1306 = load i32, ptr %1305, align 4
  %1307 = getelementptr inbounds %struct.ata_link, ptr %1303, i32 0, i32 1
  %1308 = load i32, ptr %1307, align 4
  %1309 = load i32, ptr %26, align 4
  %1310 = add i32 %1309, %1308
  %1311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %1306, i32 noundef %1310) #26
  %1312 = load ptr, ptr %0, align 64
  %1313 = load ptr, ptr %1312, align 64
  %1314 = getelementptr inbounds %struct.ata_port, ptr %1313, i32 0, i32 5
  %1315 = load i32, ptr %1314, align 4
  %1316 = getelementptr inbounds %struct.ata_link, ptr %1312, i32 0, i32 1
  %1317 = load i32, ptr %1316, align 4
  %1318 = load i32, ptr %26, align 4
  %1319 = add i32 %1318, %1317
  %1320 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %1315, i32 noundef %1319) #26
  br label %1321

1321:                                             ; preds = %1302, %1297, %1190, %845, %533, %511, %495, %370, %166, %128, %107, %1
  %1322 = phi i32 [ 0, %107 ], [ 0, %128 ], [ -11, %166 ], [ %535, %533 ], [ %846, %845 ], [ 0, %1297 ], [ 0, %1302 ], [ -22, %1190 ], [ -5, %495 ], [ -5, %370 ], [ %509, %511 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %5) #25
  ret i32 %1322
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ata_dev_blacklisted(ptr nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = alloca [41 x i8], align 1
  %3 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 41, ptr nonnull %2) #25
  %4 = getelementptr inbounds i8, ptr %2, i32 40
  store i8 0, ptr %4, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %3, i8 0, i32 9, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  %6 = getelementptr i16, ptr %5, i32 27
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 8
  %9 = trunc i16 %8 to i8
  store i8 %9, ptr %2, align 1
  %10 = getelementptr inbounds i8, ptr %2, i32 1
  %11 = trunc i16 %7 to i8
  store i8 %11, ptr %10, align 1
  %12 = getelementptr inbounds i8, ptr %2, i32 2
  %13 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 14
  %14 = load i16, ptr %13, align 2
  %15 = lshr i16 %14, 8
  %16 = trunc i16 %15 to i8
  store i8 %16, ptr %12, align 1
  %17 = getelementptr inbounds i8, ptr %2, i32 3
  %18 = trunc i16 %14 to i8
  store i8 %18, ptr %17, align 1
  %19 = getelementptr inbounds i8, ptr %2, i32 4
  %20 = getelementptr i16, ptr %5, i32 29
  %21 = load i16, ptr %20, align 2
  %22 = lshr i16 %21, 8
  %23 = trunc i16 %22 to i8
  store i8 %23, ptr %19, align 1
  %24 = getelementptr inbounds i8, ptr %2, i32 5
  %25 = trunc i16 %21 to i8
  store i8 %25, ptr %24, align 1
  %26 = getelementptr inbounds i8, ptr %2, i32 6
  %27 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 15
  %28 = load i16, ptr %27, align 2
  %29 = lshr i16 %28, 8
  %30 = trunc i16 %29 to i8
  store i8 %30, ptr %26, align 1
  %31 = getelementptr inbounds i8, ptr %2, i32 7
  %32 = trunc i16 %28 to i8
  store i8 %32, ptr %31, align 1
  %33 = getelementptr inbounds i8, ptr %2, i32 8
  %34 = getelementptr i16, ptr %5, i32 31
  %35 = load i16, ptr %34, align 2
  %36 = lshr i16 %35, 8
  %37 = trunc i16 %36 to i8
  store i8 %37, ptr %33, align 1
  %38 = getelementptr inbounds i8, ptr %2, i32 9
  %39 = trunc i16 %35 to i8
  store i8 %39, ptr %38, align 1
  %40 = getelementptr inbounds i8, ptr %2, i32 10
  %41 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 16
  %42 = load i16, ptr %41, align 2
  %43 = lshr i16 %42, 8
  %44 = trunc i16 %43 to i8
  store i8 %44, ptr %40, align 1
  %45 = getelementptr inbounds i8, ptr %2, i32 11
  %46 = trunc i16 %42 to i8
  store i8 %46, ptr %45, align 1
  %47 = getelementptr inbounds i8, ptr %2, i32 12
  %48 = getelementptr i16, ptr %5, i32 33
  %49 = load i16, ptr %48, align 2
  %50 = lshr i16 %49, 8
  %51 = trunc i16 %50 to i8
  store i8 %51, ptr %47, align 1
  %52 = getelementptr inbounds i8, ptr %2, i32 13
  %53 = trunc i16 %49 to i8
  store i8 %53, ptr %52, align 1
  %54 = getelementptr inbounds i8, ptr %2, i32 14
  %55 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 17
  %56 = load i16, ptr %55, align 2
  %57 = lshr i16 %56, 8
  %58 = trunc i16 %57 to i8
  store i8 %58, ptr %54, align 1
  %59 = getelementptr inbounds i8, ptr %2, i32 15
  %60 = trunc i16 %56 to i8
  store i8 %60, ptr %59, align 1
  %61 = getelementptr inbounds i8, ptr %2, i32 16
  %62 = getelementptr i16, ptr %5, i32 35
  %63 = load i16, ptr %62, align 2
  %64 = lshr i16 %63, 8
  %65 = trunc i16 %64 to i8
  store i8 %65, ptr %61, align 1
  %66 = getelementptr inbounds i8, ptr %2, i32 17
  %67 = trunc i16 %63 to i8
  store i8 %67, ptr %66, align 1
  %68 = getelementptr inbounds i8, ptr %2, i32 18
  %69 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 18
  %70 = load i16, ptr %69, align 2
  %71 = lshr i16 %70, 8
  %72 = trunc i16 %71 to i8
  store i8 %72, ptr %68, align 1
  %73 = getelementptr inbounds i8, ptr %2, i32 19
  %74 = trunc i16 %70 to i8
  store i8 %74, ptr %73, align 1
  %75 = getelementptr inbounds i8, ptr %2, i32 20
  %76 = getelementptr i16, ptr %5, i32 37
  %77 = load i16, ptr %76, align 2
  %78 = lshr i16 %77, 8
  %79 = trunc i16 %78 to i8
  store i8 %79, ptr %75, align 1
  %80 = getelementptr inbounds i8, ptr %2, i32 21
  %81 = trunc i16 %77 to i8
  store i8 %81, ptr %80, align 1
  %82 = getelementptr inbounds i8, ptr %2, i32 22
  %83 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 19
  %84 = load i16, ptr %83, align 2
  %85 = lshr i16 %84, 8
  %86 = trunc i16 %85 to i8
  store i8 %86, ptr %82, align 1
  %87 = getelementptr inbounds i8, ptr %2, i32 23
  %88 = trunc i16 %84 to i8
  store i8 %88, ptr %87, align 1
  %89 = getelementptr inbounds i8, ptr %2, i32 24
  %90 = getelementptr i16, ptr %5, i32 39
  %91 = load i16, ptr %90, align 2
  %92 = lshr i16 %91, 8
  %93 = trunc i16 %92 to i8
  store i8 %93, ptr %89, align 1
  %94 = getelementptr inbounds i8, ptr %2, i32 25
  %95 = trunc i16 %91 to i8
  store i8 %95, ptr %94, align 1
  %96 = getelementptr inbounds i8, ptr %2, i32 26
  %97 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 20
  %98 = load i16, ptr %97, align 2
  %99 = lshr i16 %98, 8
  %100 = trunc i16 %99 to i8
  store i8 %100, ptr %96, align 1
  %101 = getelementptr inbounds i8, ptr %2, i32 27
  %102 = trunc i16 %98 to i8
  store i8 %102, ptr %101, align 1
  %103 = getelementptr inbounds i8, ptr %2, i32 28
  %104 = getelementptr i16, ptr %5, i32 41
  %105 = load i16, ptr %104, align 2
  %106 = lshr i16 %105, 8
  %107 = trunc i16 %106 to i8
  store i8 %107, ptr %103, align 1
  %108 = getelementptr inbounds i8, ptr %2, i32 29
  %109 = trunc i16 %105 to i8
  store i8 %109, ptr %108, align 1
  %110 = getelementptr inbounds i8, ptr %2, i32 30
  %111 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 21
  %112 = load i16, ptr %111, align 2
  %113 = lshr i16 %112, 8
  %114 = trunc i16 %113 to i8
  store i8 %114, ptr %110, align 1
  %115 = getelementptr inbounds i8, ptr %2, i32 31
  %116 = trunc i16 %112 to i8
  store i8 %116, ptr %115, align 1
  %117 = getelementptr inbounds i8, ptr %2, i32 32
  %118 = getelementptr i16, ptr %5, i32 43
  %119 = load i16, ptr %118, align 2
  %120 = lshr i16 %119, 8
  %121 = trunc i16 %120 to i8
  store i8 %121, ptr %117, align 1
  %122 = getelementptr inbounds i8, ptr %2, i32 33
  %123 = trunc i16 %119 to i8
  store i8 %123, ptr %122, align 1
  %124 = getelementptr inbounds i8, ptr %2, i32 34
  %125 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 22
  %126 = load i16, ptr %125, align 2
  %127 = lshr i16 %126, 8
  %128 = trunc i16 %127 to i8
  store i8 %128, ptr %124, align 1
  %129 = getelementptr inbounds i8, ptr %2, i32 35
  %130 = trunc i16 %126 to i8
  store i8 %130, ptr %129, align 1
  %131 = getelementptr inbounds i8, ptr %2, i32 36
  %132 = getelementptr i16, ptr %5, i32 45
  %133 = load i16, ptr %132, align 2
  %134 = lshr i16 %133, 8
  %135 = trunc i16 %134 to i8
  store i8 %135, ptr %131, align 1
  %136 = getelementptr inbounds i8, ptr %2, i32 37
  %137 = trunc i16 %133 to i8
  store i8 %137, ptr %136, align 1
  %138 = getelementptr inbounds i8, ptr %2, i32 38
  %139 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 23
  %140 = load i16, ptr %139, align 2
  %141 = lshr i16 %140, 8
  %142 = trunc i16 %141 to i8
  store i8 %142, ptr %138, align 1
  %143 = getelementptr inbounds i8, ptr %2, i32 39
  %144 = trunc i16 %140 to i8
  store i8 %144, ptr %143, align 1
  %145 = call i32 @strnlen(ptr noundef nonnull %2, i32 noundef 40) #25
  %146 = getelementptr i8, ptr %2, i32 %145
  br label %147

147:                                              ; preds = %150, %1
  %148 = phi ptr [ %146, %1 ], [ %151, %150 ]
  %149 = icmp ugt ptr %148, %2
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = getelementptr i8, ptr %148, i32 -1
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, 32
  br i1 %153, label %147, label %154

154:                                              ; preds = %150, %147
  store i8 0, ptr %148, align 1
  %155 = getelementptr i16, ptr %5, i32 23
  %156 = load i16, ptr %155, align 2
  %157 = lshr i16 %156, 8
  %158 = trunc i16 %157 to i8
  store i8 %158, ptr %3, align 1
  %159 = getelementptr inbounds i8, ptr %3, i32 1
  %160 = trunc i16 %156 to i8
  store i8 %160, ptr %159, align 1
  %161 = getelementptr inbounds i8, ptr %3, i32 2
  %162 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 12
  %163 = load i16, ptr %162, align 2
  %164 = lshr i16 %163, 8
  %165 = trunc i16 %164 to i8
  store i8 %165, ptr %161, align 1
  %166 = getelementptr inbounds i8, ptr %3, i32 3
  %167 = trunc i16 %163 to i8
  store i8 %167, ptr %166, align 1
  %168 = getelementptr inbounds i8, ptr %3, i32 4
  %169 = getelementptr i16, ptr %5, i32 25
  %170 = load i16, ptr %169, align 2
  %171 = lshr i16 %170, 8
  %172 = trunc i16 %171 to i8
  store i8 %172, ptr %168, align 1
  %173 = getelementptr inbounds i8, ptr %3, i32 5
  %174 = trunc i16 %170 to i8
  store i8 %174, ptr %173, align 1
  %175 = getelementptr inbounds i8, ptr %3, i32 6
  %176 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 13
  %177 = load i16, ptr %176, align 2
  %178 = lshr i16 %177, 8
  %179 = trunc i16 %178 to i8
  store i8 %179, ptr %175, align 1
  %180 = getelementptr inbounds i8, ptr %3, i32 7
  %181 = trunc i16 %177 to i8
  store i8 %181, ptr %180, align 1
  %182 = call i32 @strnlen(ptr noundef nonnull %3, i32 noundef 8) #25
  %183 = getelementptr i8, ptr %3, i32 %182
  br label %184

184:                                              ; preds = %187, %154
  %185 = phi ptr [ %183, %154 ], [ %188, %187 ]
  %186 = icmp ugt ptr %185, %3
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = getelementptr i8, ptr %185, i32 -1
  %189 = load i8, ptr %188, align 1
  %190 = icmp eq i8 %189, 32
  br i1 %190, label %184, label %191

191:                                              ; preds = %187, %184
  store i8 0, ptr %185, align 1
  br label %192

192:                                              ; preds = %202, %191
  %193 = phi ptr [ @.str.316, %191 ], [ %204, %202 ]
  %194 = phi ptr [ @ata_device_blacklist, %191 ], [ %203, %202 ]
  %195 = call zeroext i1 @glob_match(ptr noundef nonnull %193, ptr noundef nonnull %2) #28
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.ata_blacklist_entry, ptr %194, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %206, label %200

200:                                              ; preds = %196
  %201 = call zeroext i1 @glob_match(ptr noundef nonnull %198, ptr noundef nonnull %3) #28
  br i1 %201, label %206, label %202

202:                                              ; preds = %200, %192
  %203 = getelementptr %struct.ata_blacklist_entry, ptr %194, i32 1
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %209, label %192

206:                                              ; preds = %200, %196
  %207 = getelementptr inbounds %struct.ata_blacklist_entry, ptr %194, i32 0, i32 2
  %208 = load i32, ptr %207, align 4
  br label %209

209:                                              ; preds = %206, %202
  %210 = phi i32 [ %208, %206 ], [ 0, %202 ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 41, ptr nonnull %2) #25
  ret i32 %210
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_dev_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc i64 @ata_id_n_sectors(ptr noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr i16, ptr %0, i32 49
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, 512
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %1
  %7 = getelementptr i16, ptr %0, i32 83
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 49152
  %11 = icmp eq i32 %10, 16384
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = getelementptr i16, ptr %0, i32 103
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i64
  %16 = shl nuw i64 %15, 48
  %17 = getelementptr i16, ptr %0, i32 102
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = or i64 %20, %16
  %22 = getelementptr i16, ptr %0, i32 101
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i64
  %25 = shl nuw nsw i64 %24, 16
  %26 = or i64 %21, %25
  %27 = getelementptr i16, ptr %0, i32 100
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i64
  %30 = or i64 %26, %29
  %31 = icmp ne i64 %30, 0
  %32 = and i32 %9, 1024
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %83, label %35

35:                                               ; preds = %12, %6
  %36 = getelementptr i16, ptr %0, i32 61
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = shl nuw i32 %38, 16
  %40 = getelementptr i16, ptr %0, i32 60
  %41 = load i16, ptr %40, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %39, %42
  %44 = zext i32 %43 to i64
  br label %83

45:                                               ; preds = %1
  %46 = getelementptr i16, ptr %0, i32 53
  %47 = load i16, ptr %46, align 2
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %45
  %51 = getelementptr i16, ptr %0, i32 54
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %50
  %55 = getelementptr i16, ptr %0, i32 55
  %56 = load i16, ptr %55, align 2
  %57 = add i16 %56, -1
  %58 = icmp ult i16 %57, 16
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = getelementptr i16, ptr %0, i32 56
  %61 = load i16, ptr %60, align 2
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = zext i16 %52 to i32
  %65 = zext i16 %56 to i32
  %66 = mul nuw nsw i32 %65, %64
  %67 = zext i16 %61 to i32
  %68 = mul i32 %66, %67
  %69 = sext i32 %68 to i64
  br label %83

70:                                               ; preds = %59, %54, %50, %45
  %71 = getelementptr i16, ptr %0, i32 1
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = getelementptr i16, ptr %0, i32 3
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = mul nuw i32 %76, %73
  %78 = getelementptr i16, ptr %0, i32 6
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  %81 = mul i32 %77, %80
  %82 = sext i32 %81 to i64
  br label %83

83:                                               ; preds = %70, %63, %35, %12
  %84 = phi i64 [ %44, %35 ], [ %69, %63 ], [ %82, %70 ], [ %30, %12 ]
  ret i64 %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ata_dev_config_lba(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [24 x i8], align 1
  %3 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %2, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = getelementptr i16, ptr %3, i32 83
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 49152
  %11 = icmp eq i32 %10, 16384
  br i1 %11, label %12, label %45

12:                                               ; preds = %1
  %13 = getelementptr i16, ptr %3, i32 103
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i64
  %16 = shl nuw i64 %15, 48
  %17 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 51
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i64
  %20 = shl nuw nsw i64 %19, 32
  %21 = or i64 %20, %16
  %22 = getelementptr i16, ptr %3, i32 101
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i64
  %25 = shl nuw nsw i64 %24, 16
  %26 = or i64 %21, %25
  %27 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 50
  %28 = load i16, ptr %27, align 2
  %29 = zext i16 %28 to i64
  %30 = or i64 %26, %29
  %31 = icmp ne i64 %30, 0
  %32 = and i32 %9, 1024
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %45

35:                                               ; preds = %12
  %36 = or i32 %5, 3
  store i32 %36, ptr %4, align 4
  %37 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 7
  %38 = load i64, ptr %37, align 16
  %39 = icmp ugt i64 %38, 268435455
  %40 = and i16 %8, -8192
  %41 = icmp eq i16 %40, 24576
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = or i32 %5, 19
  store i32 %44, ptr %4, align 4
  br label %45

45:                                               ; preds = %43, %35, %12, %1
  %46 = phi i32 [ %44, %43 ], [ %36, %35 ], [ %6, %1 ], [ %6, %12 ]
  %47 = phi ptr [ @.str.283, %43 ], [ @.str.283, %35 ], [ @.str.284, %1 ], [ @.str.284, %12 ]
  %48 = load ptr, ptr %0, align 64
  %49 = load ptr, ptr %48, align 64
  %50 = getelementptr [256 x i16], ptr %3, i32 0, i32 75
  %51 = load i16, ptr %50, align 2
  %52 = and i16 %51, 31
  %53 = add nuw nsw i16 %52, 1
  %54 = zext i16 %53 to i32
  %55 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 38
  %56 = load i16, ptr %55, align 8
  %57 = and i16 %56, 256
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  store i8 0, ptr %2, align 1
  br label %242

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %2, ptr noundef nonnull align 1 dereferenceable(15) @.str.286, i32 15, i1 false) #25
  br label %242

66:                                               ; preds = %60
  %67 = and i32 %62, 134217728
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 6, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %87, label %73

73:                                               ; preds = %82, %69
  %74 = phi ptr [ %84, %82 ], [ %71, %69 ]
  %75 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, @pci_bus_type
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr i8, ptr %74, i32 -104
  %80 = load i16, ptr %79, align 8
  %81 = icmp eq i16 %80, 4098
  br i1 %81, label %86, label %87

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %73

86:                                               ; preds = %78
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %2, ptr noundef nonnull align 1 dereferenceable(15) @.str.286, i32 15, i1 false) #25
  br label %242

87:                                               ; preds = %82, %78, %69, %66
  %88 = getelementptr inbounds %struct.ata_port, ptr %49, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 1024
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr %49, align 64
  %94 = getelementptr inbounds %struct.Scsi_Host, ptr %93, i32 0, i32 26
  %95 = load i32, ptr %94, align 4
  %96 = tail call i32 @llvm.smin.i32(i32 %95, i32 32) #25
  %97 = or i32 %46, 8
  store i32 %97, ptr %4, align 4
  br label %98

98:                                               ; preds = %92, %87
  %99 = phi i32 [ %96, %92 ], [ 0, %87 ]
  %100 = and i32 %62, 32768
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %98
  %103 = load i32, ptr %88, align 4
  %104 = and i32 %103, 16384
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %102
  switch i16 %56, label %107 [
    i16 0, label %130
    i16 -1, label %130
  ]

107:                                              ; preds = %106
  %108 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 39
  %109 = load i16, ptr %108, align 4
  %110 = and i16 %109, 4
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %107
  %113 = tail call i32 @ata_dev_set_feature(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 2) #25
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %0, align 64
  %117 = load ptr, ptr %116, align 64
  %118 = getelementptr inbounds %struct.ata_port, ptr %117, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = getelementptr inbounds %struct.ata_link, ptr %116, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = add i32 %123, %121
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, i32 noundef %119, i32 noundef %124, i32 noundef %113) #26
  %126 = icmp eq i32 %113, 1
  br i1 %126, label %130, label %127

127:                                              ; preds = %115
  %128 = load i32, ptr %61, align 8
  %129 = or i32 %128, 32768
  store i32 %129, ptr %61, align 8
  br label %242

130:                                              ; preds = %115, %112, %107, %106, %106, %102, %98
  %131 = phi ptr [ @.str.37, %98 ], [ @.str.37, %115 ], [ @.str.37, %107 ], [ @.str.37, %106 ], [ @.str.37, %102 ], [ @.str.37, %106 ], [ @.str.288, %112 ]
  %132 = icmp slt i32 %99, %54
  br i1 %132, label %135, label %133

133:                                              ; preds = %130
  %134 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 24, ptr noundef nonnull @.str.289, i32 noundef %54, ptr noundef nonnull %131) #25
  br label %137

135:                                              ; preds = %130
  %136 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 24, ptr noundef nonnull @.str.290, i32 noundef %99, i32 noundef %54, ptr noundef nonnull %131) #25
  br label %137

137:                                              ; preds = %135, %133
  %138 = load i32, ptr %88, align 4
  %139 = and i32 %138, 1048576
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %242, label %141

141:                                              ; preds = %137
  %142 = getelementptr i16, ptr %3, i32 77
  %143 = load i16, ptr %142, align 2
  %144 = and i16 %143, 64
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %185, label %146

146:                                              ; preds = %141
  %147 = load ptr, ptr %0, align 64
  %148 = load ptr, ptr %147, align 64
  %149 = load i32, ptr %61, align 8
  %150 = and i32 %149, 536870912
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %160

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.ata_port, ptr %148, i32 0, i32 50
  %154 = tail call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %153, i32 noundef 1) #25
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = getelementptr %struct.ata_port, ptr %148, i32 0, i32 50, i32 38
  %158 = load i16, ptr %157, align 1
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %156, %152, %146
  %161 = load ptr, ptr %0, align 64
  %162 = load ptr, ptr %161, align 64
  %163 = getelementptr inbounds %struct.ata_port, ptr %162, i32 0, i32 5
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.ata_link, ptr %161, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, %166
  %170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, i32 noundef %164, i32 noundef %169) #26
  br label %185

171:                                              ; preds = %156
  %172 = tail call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef %153, i32 noundef 1) #25
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 27
  %176 = load i32, ptr %4, align 4
  %177 = or i32 %176, 524288
  store i32 %177, ptr %4, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %175, ptr noundef align 64 dereferenceable(20) %153, i32 20, i1 false) #25
  %178 = load i32, ptr %61, align 8
  %179 = and i32 %178, 524288
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %174
  %182 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 27, i32 4
  %183 = load i8, ptr %182, align 1
  %184 = and i8 %183, -2
  store i8 %184, ptr %182, align 1
  br label %185

185:                                              ; preds = %181, %174, %171, %160, %141
  %186 = load i16, ptr %142, align 2
  %187 = and i16 %186, 32
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %219, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %0, align 64
  %191 = load ptr, ptr %190, align 64
  %192 = load i32, ptr %61, align 8
  %193 = and i32 %192, 536870912
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.ata_port, ptr %191, i32 0, i32 50
  %197 = tail call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %196, i32 noundef 1) #25
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = getelementptr %struct.ata_port, ptr %191, i32 0, i32 50, i32 36
  %201 = load i16, ptr %200, align 1
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %199, %195, %189
  %204 = load ptr, ptr %0, align 64
  %205 = load ptr, ptr %204, align 64
  %206 = getelementptr inbounds %struct.ata_port, ptr %205, i32 0, i32 5
  %207 = load i32, ptr %206, align 4
  %208 = getelementptr inbounds %struct.ata_link, ptr %204, i32 0, i32 1
  %209 = load i32, ptr %208, align 4
  %210 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %211 = load i32, ptr %210, align 4
  %212 = add i32 %211, %209
  %213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, i32 noundef %207, i32 noundef %212) #26
  br label %219

214:                                              ; preds = %199
  %215 = tail call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 18, i8 noundef zeroext 0, ptr noundef %196, i32 noundef 1) #25
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 28
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %218, ptr noundef align 64 dereferenceable(64) %196, i32 64, i1 false) #25
  br label %219

219:                                              ; preds = %217, %214, %203, %185
  %220 = load i16, ptr %55, align 2
  %221 = and i16 %220, 4096
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %242, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr %0, align 64
  %225 = load ptr, ptr %224, align 64
  %226 = tail call fastcc zeroext i1 @ata_identify_page_supported(ptr noundef %0, i8 noundef zeroext 8) #25
  br i1 %226, label %227, label %242

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.ata_port, ptr %225, i32 0, i32 50
  %229 = tail call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 48, i8 noundef zeroext 8, ptr noundef %228, i32 noundef 1) #25
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = getelementptr %struct.ata_port, ptr %225, i32 0, i32 50, i32 9
  %233 = load i8, ptr %232, align 1
  %234 = and i8 %233, 8
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %231
  %237 = load i32, ptr %4, align 4
  %238 = or i32 %237, 1048576
  store i32 %238, ptr %4, align 4
  br label %242

239:                                              ; preds = %231, %227
  %240 = load i32, ptr %4, align 4
  %241 = and i32 %240, -3145729
  store i32 %241, ptr %4, align 4
  br label %242

242:                                              ; preds = %239, %236, %223, %219, %137, %127, %86, %65, %59
  %243 = phi i32 [ 0, %65 ], [ 0, %86 ], [ -5, %127 ], [ 0, %59 ], [ 0, %219 ], [ 0, %137 ], [ 0, %223 ], [ 0, %236 ], [ 0, %239 ]
  %244 = load ptr, ptr %0, align 64
  %245 = getelementptr inbounds %struct.ata_link, ptr %244, i32 0, i32 12, i32 0, i32 5
  %246 = load i32, ptr %245, align 4
  %247 = and i32 %246, 262144
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %263, label %249

249:                                              ; preds = %242
  %250 = load ptr, ptr %244, align 64
  %251 = getelementptr inbounds %struct.ata_port, ptr %250, i32 0, i32 5
  %252 = load i32, ptr %251, align 4
  %253 = getelementptr inbounds %struct.ata_link, ptr %244, i32 0, i32 1
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %256 = load i32, ptr %255, align 4
  %257 = add i32 %256, %254
  %258 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 7
  %259 = load i64, ptr %258, align 16
  %260 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 15
  %261 = load i32, ptr %260, align 16
  %262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, i32 noundef %252, i32 noundef %257, i64 noundef %259, i32 noundef %261, ptr noundef nonnull %47, ptr noundef nonnull %2) #26
  br label %263

263:                                              ; preds = %249, %242
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret i32 %243
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_dev_config_chs(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  %3 = getelementptr i16, ptr %2, i32 53
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1
  %8 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 27
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr i16, ptr %2, i32 55
  %13 = load i16, ptr %12, align 2
  %14 = add i16 %13, -1
  %15 = icmp ult i16 %14, 16
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 28
  %18 = load i16, ptr %17, align 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 21
  store i16 %9, ptr %21, align 8
  %22 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 22
  store i16 %13, ptr %22, align 2
  br label %32

23:                                               ; preds = %16, %11, %7, %1
  %24 = getelementptr i16, ptr %2, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 21
  store i16 %25, ptr %26, align 8
  %27 = getelementptr i16, ptr %2, i32 3
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 22
  store i16 %28, ptr %29, align 2
  %30 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 3
  %31 = load i16, ptr %30, align 2
  br label %32

32:                                               ; preds = %23, %20
  %33 = phi i16 [ %31, %23 ], [ %18, %20 ]
  %34 = phi i16 [ %28, %23 ], [ %13, %20 ]
  %35 = phi i16 [ %25, %23 ], [ %9, %20 ]
  %36 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 23
  store i16 %33, ptr %36, align 4
  %37 = load ptr, ptr %0, align 64
  %38 = getelementptr inbounds %struct.ata_link, ptr %37, i32 0, i32 12, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 262144
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %32
  %43 = load ptr, ptr %37, align 64
  %44 = getelementptr inbounds %struct.ata_port, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.ata_link, ptr %37, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %47
  %51 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 7
  %52 = load i64, ptr %51, align 16
  %53 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 15
  %54 = load i32, ptr %53, align 16
  %55 = zext i16 %35 to i32
  %56 = zext i16 %34 to i32
  %57 = zext i16 %33 to i32
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293, i32 noundef %45, i32 noundef %50, i64 noundef %52, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %57) #26
  br label %59

59:                                               ; preds = %42, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_dev_print_features(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 202899712
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 64
  %8 = load ptr, ptr %7, align 64
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_link, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = and i32 %3, 256
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, ptr @.str.37, ptr @.str.297
  %19 = and i32 %3, 67108864
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.37, ptr @.str.298
  %22 = and i32 %3, 134217728
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @.str.37, ptr @.str.299
  %25 = and i32 %3, 524288
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.37, ptr @.str.300
  %28 = and i32 %3, 1048576
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.37, ptr @.str.301
  %31 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 33
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr @.str.37, ptr @.str.302
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, i32 noundef %10, i32 noundef %15, ptr noundef nonnull %18, ptr noundef nonnull %21, ptr noundef nonnull %24, ptr noundef nonnull %27, ptr noundef nonnull %30, ptr noundef nonnull %34) #26
  br label %36

36:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_cable_40wire(ptr nocapture readnone %0) #6 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_cable_80wire(ptr nocapture readnone %0) #6 {
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_cable_unknown(ptr nocapture readnone %0) #6 {
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_cable_ignore(ptr nocapture readnone %0) #6 {
  ret i32 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_cable_sata(ptr nocapture readnone %0) #6 {
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_bus_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i32], align 8
  %3 = alloca [2 x i32], align 8
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  store i64 0, ptr %2, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store i64 0, ptr %3, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 64
  %10 = icmp eq ptr %9, %0
  %11 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 26
  %12 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 3
  br label %19

13:                                               ; preds = %33, %1
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 18
  %16 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 12, i32 0, i32 5
  %17 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 28, i32 6
  %18 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 28, i32 6
  br label %39

19:                                               ; preds = %33, %8
  %20 = phi ptr [ %6, %8 ], [ %24, %33 ]
  %21 = getelementptr inbounds %struct.ata_device, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr [2 x i32], ptr %3, i32 0, i32 %22
  store i32 3, ptr %23, align 4
  %24 = getelementptr %struct.ata_device, ptr %20, i32 1
  br i1 %10, label %28, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %11, align 64
  %27 = icmp eq ptr %26, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %19
  %29 = load i32, ptr %12, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i32 [ 1, %32 ], [ 2, %28 ]
  %35 = getelementptr %struct.ata_device, ptr %6, i32 %34
  %36 = icmp uge ptr %24, %35
  %37 = icmp eq ptr %24, null
  %38 = or i1 %36, %37
  br i1 %38, label %13, label %19

39:                                               ; preds = %369, %13
  store ptr %6, ptr %4, align 4
  br i1 %7, label %40, label %44

40:                                               ; preds = %39
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr inbounds %struct.ata_port_operations, ptr %41, i32 0, i32 58
  %43 = load ptr, ptr %42, align 4
  call void %43(ptr noundef %0) #25
  br label %82

44:                                               ; preds = %75, %39
  %45 = phi ptr [ %76, %75 ], [ %6, %39 ]
  %46 = getelementptr inbounds %struct.ata_device, ptr %45, i32 0, i32 11
  store i8 8, ptr %46, align 8
  %47 = getelementptr inbounds %struct.ata_device, ptr %45, i32 0, i32 12
  store i8 -1, ptr %47, align 1
  %48 = load ptr, ptr %14, align 4
  %49 = getelementptr inbounds %struct.ata_port_operations, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  call void %50(ptr noundef %0, ptr noundef nonnull %45) #25
  %53 = load ptr, ptr %4, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %75, label %55

55:                                               ; preds = %52, %44
  %56 = phi ptr [ %53, %52 ], [ %45, %44 ]
  %57 = getelementptr %struct.ata_device, ptr %56, i32 1
  %58 = load ptr, ptr %5, align 64
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 26
  %62 = load ptr, ptr %61, align 64
  %63 = icmp eq ptr %62, %5
  br i1 %63, label %64, label %69

64:                                               ; preds = %60, %55
  %65 = getelementptr inbounds %struct.ata_port, ptr %58, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %60
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32 [ 1, %69 ], [ 2, %64 ]
  %72 = getelementptr %struct.ata_device, ptr %6, i32 %71
  %73 = icmp ult ptr %57, %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store ptr null, ptr %4, align 4
  br label %78

75:                                               ; preds = %70, %52
  %76 = phi ptr [ %57, %70 ], [ %6, %52 ]
  store ptr %76, ptr %4, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %44

78:                                               ; preds = %75, %74
  %79 = load ptr, ptr %14, align 4
  %80 = getelementptr inbounds %struct.ata_port_operations, ptr %79, i32 0, i32 58
  %81 = load ptr, ptr %80, align 4
  call void %81(ptr noundef %0) #25
  br i1 %7, label %82, label %84

82:                                               ; preds = %78, %40
  %83 = load ptr, ptr %5, align 64
  br label %112

84:                                               ; preds = %106, %78
  %85 = phi ptr [ %93, %106 ], [ %6, %78 ]
  %86 = getelementptr inbounds %struct.ata_device, ptr %85, i32 0, i32 9
  %87 = load i32, ptr %86, align 64
  %88 = icmp eq i32 %87, 0
  %89 = getelementptr inbounds %struct.ata_device, ptr %85, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr [2 x i32], ptr %2, i32 0, i32 %90
  %92 = select i1 %88, i32 11, i32 %87
  store i32 %92, ptr %91, align 4
  store i32 0, ptr %86, align 64
  %93 = getelementptr %struct.ata_device, ptr %85, i32 1
  %94 = load ptr, ptr %5, align 64
  %95 = icmp eq ptr %94, %0
  br i1 %95, label %100, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.ata_port, ptr %94, i32 0, i32 26
  %98 = load ptr, ptr %97, align 64
  %99 = icmp eq ptr %98, %5
  br i1 %99, label %100, label %105

100:                                              ; preds = %96, %84
  %101 = getelementptr inbounds %struct.ata_port, ptr %94, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100, %96
  br label %106

106:                                              ; preds = %105, %100
  %107 = phi i32 [ 1, %105 ], [ 2, %100 ]
  %108 = getelementptr %struct.ata_device, ptr %6, i32 %107
  %109 = icmp uge ptr %93, %108
  %110 = icmp eq ptr %93, null
  %111 = or i1 %109, %110
  br i1 %111, label %112, label %84

112:                                              ; preds = %106, %82
  %113 = phi ptr [ %83, %82 ], [ %94, %106 ]
  %114 = icmp eq ptr %113, %0
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.ata_port, ptr %113, i32 0, i32 26
  %117 = load ptr, ptr %116, align 64
  %118 = icmp eq ptr %117, %5
  br i1 %118, label %119, label %124

119:                                              ; preds = %115, %112
  %120 = getelementptr inbounds %struct.ata_port, ptr %113, i32 0, i32 3
  %121 = load i32, ptr %120, align 4
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119, %115
  br label %125

125:                                              ; preds = %124, %119
  %126 = phi i32 [ 1, %124 ], [ 2, %119 ]
  %127 = getelementptr %struct.ata_device, ptr %17, i32 %126
  store ptr %127, ptr %4, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %177, label %129

129:                                              ; preds = %174, %125
  %130 = phi ptr [ %175, %174 ], [ %127, %125 ]
  %131 = getelementptr inbounds %struct.ata_device, ptr %130, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr [2 x i32], ptr %3, i32 0, i32 %132
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.ata_device, ptr %130, i32 0, i32 9
  %138 = load i32, ptr %137, align 64
  br label %143

139:                                              ; preds = %129
  %140 = getelementptr [2 x i32], ptr %2, i32 0, i32 %132
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.ata_device, ptr %130, i32 0, i32 9
  store i32 %141, ptr %142, align 64
  br label %143

143:                                              ; preds = %139, %136
  %144 = phi i32 [ %138, %136 ], [ %141, %139 ]
  switch i32 %144, label %169 [
    i32 7, label %145
    i32 5, label %145
    i32 3, label %145
    i32 1, label %145
    i32 9, label %145
  ]

145:                                              ; preds = %143, %143, %143, %143, %143
  %146 = getelementptr inbounds %struct.ata_device, ptr %130, i32 0, i32 9
  %147 = getelementptr inbounds %struct.ata_device, ptr %130, i32 0, i32 25
  %148 = call i32 @ata_dev_read_id(ptr noundef nonnull %130, ptr noundef %146, i32 noundef 1, ptr noundef %147)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %340

150:                                              ; preds = %145
  %151 = load ptr, ptr %4, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %169

153:                                              ; preds = %150
  %154 = load ptr, ptr %5, align 64
  %155 = icmp eq ptr %154, %0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.ata_port, ptr %154, i32 0, i32 26
  %158 = load ptr, ptr %157, align 64
  %159 = icmp eq ptr %158, %5
  br i1 %159, label %160, label %165

160:                                              ; preds = %156, %153
  %161 = getelementptr inbounds %struct.ata_port, ptr %154, i32 0, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160, %156
  br label %166

166:                                              ; preds = %165, %160
  %167 = phi i32 [ 1, %165 ], [ 2, %160 ]
  %168 = getelementptr %struct.ata_device, ptr %18, i32 %167
  br label %174

169:                                              ; preds = %150, %143
  %170 = phi ptr [ %151, %150 ], [ %130, %143 ]
  %171 = getelementptr %struct.ata_device, ptr %170, i32 -1
  %172 = icmp ult ptr %171, %6
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  store ptr null, ptr %4, align 4
  br label %177

174:                                              ; preds = %169, %166
  %175 = phi ptr [ %171, %169 ], [ %168, %166 ]
  store ptr %175, ptr %4, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %129

177:                                              ; preds = %174, %173, %125
  %178 = load ptr, ptr %14, align 4
  %179 = getelementptr inbounds %struct.ata_port_operations, ptr %178, i32 0, i32 5
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %177
  %183 = call i32 %180(ptr noundef %0) #25
  store i32 %183, ptr %15, align 4
  br label %184

184:                                              ; preds = %182, %177
  br label %203

185:                                              ; preds = %203
  %186 = getelementptr %struct.ata_device, ptr %204, i32 1
  %187 = load ptr, ptr %5, align 64
  %188 = icmp eq ptr %187, %0
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 26
  %191 = load ptr, ptr %190, align 64
  %192 = icmp eq ptr %191, %5
  br i1 %192, label %193, label %198

193:                                              ; preds = %189, %185
  %194 = getelementptr inbounds %struct.ata_port, ptr %187, i32 0, i32 3
  %195 = load i32, ptr %194, align 4
  %196 = and i32 %195, 1
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193, %189
  br label %199

199:                                              ; preds = %198, %193
  %200 = phi i32 [ 1, %198 ], [ 2, %193 ]
  %201 = getelementptr %struct.ata_device, ptr %6, i32 %200
  %202 = icmp ult ptr %186, %201
  br i1 %202, label %203, label %265

203:                                              ; preds = %199, %184
  %204 = phi ptr [ %186, %199 ], [ %6, %184 ]
  %205 = getelementptr inbounds %struct.ata_device, ptr %204, i32 0, i32 9
  %206 = load i32, ptr %205, align 64
  switch i32 %206, label %185 [
    i32 7, label %207
    i32 5, label %207
    i32 3, label %207
    i32 1, label %207
    i32 9, label %207
  ]

207:                                              ; preds = %203, %203, %203, %203, %203
  store ptr %204, ptr %4, align 4
  %208 = icmp eq ptr %204, null
  br i1 %208, label %265, label %209

209:                                              ; preds = %207
  %210 = load ptr, ptr %5, align 64
  %211 = icmp eq ptr %210, %0
  %212 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 26
  %213 = getelementptr inbounds %struct.ata_port, ptr %210, i32 0, i32 3
  br label %214

214:                                              ; preds = %244, %209
  %215 = phi ptr [ %204, %209 ], [ %228, %244 ]
  %216 = getelementptr inbounds %struct.ata_device, ptr %215, i32 0, i32 25
  %217 = getelementptr i16, ptr %216, i32 93
  %218 = load i16, ptr %217, align 2
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %214
  %221 = getelementptr %struct.ata_device, ptr %215, i32 0, i32 25, i32 0, i32 40
  %222 = load i16, ptr %221, align 2
  %223 = icmp sgt i16 %222, 31
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 6, ptr %15, align 4
  br label %225

225:                                              ; preds = %224, %220, %214
  br label %226

226:                                              ; preds = %241, %225
  %227 = phi ptr [ %228, %241 ], [ %215, %225 ]
  %228 = getelementptr %struct.ata_device, ptr %227, i32 1
  br i1 %211, label %232, label %229

229:                                              ; preds = %226
  %230 = load ptr, ptr %212, align 64
  %231 = icmp eq ptr %230, %5
  br i1 %231, label %232, label %236

232:                                              ; preds = %229, %226
  %233 = load i32, ptr %213, align 4
  %234 = and i32 %233, 1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232, %229
  br label %237

237:                                              ; preds = %236, %232
  %238 = phi i32 [ 1, %236 ], [ 2, %232 ]
  %239 = getelementptr %struct.ata_device, ptr %6, i32 %238
  %240 = icmp ult ptr %228, %239
  br i1 %240, label %241, label %265

241:                                              ; preds = %237
  %242 = getelementptr %struct.ata_device, ptr %227, i32 1, i32 9
  %243 = load i32, ptr %242, align 64
  switch i32 %243, label %226 [
    i32 7, label %244
    i32 5, label %244
    i32 3, label %244
    i32 1, label %244
    i32 9, label %244
  ]

244:                                              ; preds = %241, %241, %241, %241, %241
  store ptr %228, ptr %4, align 4
  %245 = icmp eq ptr %228, null
  br i1 %245, label %265, label %214

246:                                              ; preds = %266
  %247 = getelementptr %struct.ata_device, ptr %267, i32 1
  %248 = load ptr, ptr %5, align 64
  %249 = icmp eq ptr %248, %0
  br i1 %249, label %254, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.ata_port, ptr %248, i32 0, i32 26
  %252 = load ptr, ptr %251, align 64
  %253 = icmp eq ptr %252, %5
  br i1 %253, label %254, label %259

254:                                              ; preds = %250, %246
  %255 = getelementptr inbounds %struct.ata_port, ptr %248, i32 0, i32 3
  %256 = load i32, ptr %255, align 4
  %257 = and i32 %256, 1
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %254, %250
  br label %260

260:                                              ; preds = %259, %254
  %261 = phi i32 [ 1, %259 ], [ 2, %254 ]
  %262 = getelementptr %struct.ata_device, ptr %6, i32 %261
  %263 = icmp ult ptr %247, %262
  br i1 %263, label %266, label %264

264:                                              ; preds = %260
  store ptr null, ptr %4, align 4
  br label %311

265:                                              ; preds = %244, %237, %207, %199
  br label %266

266:                                              ; preds = %265, %260
  %267 = phi ptr [ %247, %260 ], [ %6, %265 ]
  %268 = getelementptr inbounds %struct.ata_device, ptr %267, i32 0, i32 9
  %269 = load i32, ptr %268, align 64
  switch i32 %269, label %246 [
    i32 7, label %270
    i32 5, label %270
    i32 3, label %270
    i32 1, label %270
    i32 9, label %270
  ]

270:                                              ; preds = %266, %266, %266, %266, %266
  store ptr %267, ptr %4, align 4
  %271 = icmp eq ptr %267, null
  br i1 %271, label %311, label %272

272:                                              ; preds = %270
  %273 = load i32, ptr %16, align 4
  br label %274

274:                                              ; preds = %309, %272
  %275 = phi i32 [ %280, %309 ], [ %273, %272 ]
  %276 = phi ptr [ %306, %309 ], [ %267, %272 ]
  %277 = or i32 %275, 262144
  store i32 %277, ptr %16, align 4
  %278 = call i32 @ata_dev_configure(ptr noundef nonnull %276)
  %279 = load i32, ptr %16, align 4
  %280 = and i32 %279, -262145
  store i32 %280, ptr %16, align 4
  %281 = icmp eq i32 %278, 0
  br i1 %281, label %282, label %340

282:                                              ; preds = %274
  %283 = load ptr, ptr %4, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %305, label %285

285:                                              ; preds = %305, %282
  %286 = phi ptr [ %306, %305 ], [ %283, %282 ]
  %287 = getelementptr %struct.ata_device, ptr %286, i32 1
  %288 = load ptr, ptr %5, align 64
  %289 = icmp eq ptr %288, %0
  br i1 %289, label %294, label %290

290:                                              ; preds = %285
  %291 = getelementptr inbounds %struct.ata_port, ptr %288, i32 0, i32 26
  %292 = load ptr, ptr %291, align 64
  %293 = icmp eq ptr %292, %5
  br i1 %293, label %294, label %299

294:                                              ; preds = %290, %285
  %295 = getelementptr inbounds %struct.ata_port, ptr %288, i32 0, i32 3
  %296 = load i32, ptr %295, align 4
  %297 = and i32 %296, 1
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %294, %290
  br label %300

300:                                              ; preds = %299, %294
  %301 = phi i32 [ 1, %299 ], [ 2, %294 ]
  %302 = getelementptr %struct.ata_device, ptr %6, i32 %301
  %303 = icmp ult ptr %287, %302
  br i1 %303, label %305, label %304

304:                                              ; preds = %300
  store ptr null, ptr %4, align 4
  br label %311

305:                                              ; preds = %300, %282
  %306 = phi ptr [ %287, %300 ], [ %6, %282 ]
  %307 = getelementptr inbounds %struct.ata_device, ptr %306, i32 0, i32 9
  %308 = load i32, ptr %307, align 64
  switch i32 %308, label %285 [
    i32 7, label %309
    i32 5, label %309
    i32 3, label %309
    i32 1, label %309
    i32 9, label %309
  ]

309:                                              ; preds = %305, %305, %305, %305, %305
  store ptr %306, ptr %4, align 4
  %310 = icmp eq ptr %306, null
  br i1 %310, label %311, label %274

311:                                              ; preds = %309, %304, %270, %264
  %312 = call i32 @ata_set_mode(ptr noundef %5, ptr noundef nonnull %4) #25
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %332, label %340

314:                                              ; preds = %332
  %315 = getelementptr %struct.ata_device, ptr %333, i32 1
  %316 = load ptr, ptr %5, align 64
  %317 = icmp eq ptr %316, %0
  br i1 %317, label %322, label %318

318:                                              ; preds = %314
  %319 = getelementptr inbounds %struct.ata_port, ptr %316, i32 0, i32 26
  %320 = load ptr, ptr %319, align 64
  %321 = icmp eq ptr %320, %5
  br i1 %321, label %322, label %327

322:                                              ; preds = %318, %314
  %323 = getelementptr inbounds %struct.ata_port, ptr %316, i32 0, i32 3
  %324 = load i32, ptr %323, align 4
  %325 = and i32 %324, 1
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %322, %318
  br label %328

328:                                              ; preds = %327, %322
  %329 = phi i32 [ 1, %327 ], [ 2, %322 ]
  %330 = getelementptr %struct.ata_device, ptr %6, i32 %329
  %331 = icmp ult ptr %315, %330
  br i1 %331, label %332, label %336

332:                                              ; preds = %328, %311
  %333 = phi ptr [ %315, %328 ], [ %6, %311 ]
  %334 = getelementptr inbounds %struct.ata_device, ptr %333, i32 0, i32 9
  %335 = load i32, ptr %334, align 64
  switch i32 %335, label %314 [
    i32 7, label %336
    i32 5, label %336
    i32 3, label %336
    i32 1, label %336
    i32 9, label %336
  ]

336:                                              ; preds = %332, %332, %332, %332, %332, %328
  %337 = phi ptr [ null, %328 ], [ %333, %332 ], [ %333, %332 ], [ %333, %332 ], [ %333, %332 ], [ %333, %332 ]
  %338 = icmp eq ptr %337, null
  %339 = select i1 %338, i32 -19, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i32 %339

340:                                              ; preds = %311, %274, %145
  %341 = phi i32 [ %312, %311 ], [ %278, %274 ], [ %148, %145 ]
  %342 = load ptr, ptr %4, align 4
  %343 = getelementptr inbounds %struct.ata_device, ptr %342, i32 0, i32 1
  %344 = load i32, ptr %343, align 4
  %345 = getelementptr [2 x i32], ptr %3, i32 0, i32 %344
  %346 = load i32, ptr %345, align 4
  %347 = add i32 %346, -1
  store i32 %347, ptr %345, align 4
  switch i32 %341, label %363 [
    i32 -22, label %348
    i32 -19, label %349
    i32 -5, label %351
  ]

348:                                              ; preds = %340
  store i32 0, ptr %345, align 4
  br label %367

349:                                              ; preds = %340
  %350 = call i32 @llvm.smin.i32(i32 %347, i32 1)
  store i32 %350, ptr %345, align 4
  br label %351

351:                                              ; preds = %349, %340
  %352 = phi i32 [ %347, %340 ], [ %350, %349 ]
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %363

354:                                              ; preds = %351
  %355 = call i32 @sata_down_spd_limit(ptr noundef %5, i32 noundef 0)
  %356 = load ptr, ptr %4, align 4
  %357 = call i32 @ata_down_xfermask_limit(ptr noundef %356, i32 noundef 0)
  %358 = load ptr, ptr %4, align 4
  %359 = getelementptr inbounds %struct.ata_device, ptr %358, i32 0, i32 1
  %360 = load i32, ptr %359, align 4
  %361 = getelementptr [2 x i32], ptr %3, i32 0, i32 %360
  %362 = load i32, ptr %361, align 4
  br label %363

363:                                              ; preds = %354, %351, %340
  %364 = phi i32 [ %352, %351 ], [ %362, %354 ], [ %347, %340 ]
  %365 = phi ptr [ %342, %351 ], [ %358, %354 ], [ %342, %340 ]
  %366 = icmp eq i32 %364, 0
  br i1 %366, label %367, label %369

367:                                              ; preds = %363, %348
  %368 = phi ptr [ %342, %348 ], [ %365, %363 ]
  call void @ata_dev_disable(ptr noundef %368) #25
  br label %369

369:                                              ; preds = %367, %363
  br label %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_set_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_down_spd_limit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = tail call i32 @sata_scr_valid(ptr noundef %0) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %86, label %6

6:                                                ; preds = %2
  %7 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, ptr %3, align 4
  %11 = and i32 %10, 15
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = lshr i32 %10, 4
  %15 = and i32 %14, 15
  br label %19

16:                                               ; preds = %9, %6
  %17 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %15, %13 ], [ %18, %16 ]
  %21 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, 1
  %24 = icmp ugt i32 %20, 1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %86

26:                                               ; preds = %19
  %27 = call i32 @llvm.ctlz.i32(i32 %22, i1 true) #25, !range !16
  %28 = xor i32 %27, 31
  %29 = shl nuw i32 1, %28
  %30 = add i32 %20, -1
  %31 = shl nsw i32 -1, %30
  %32 = or i32 %29, %31
  %33 = xor i32 %32, -1
  %34 = and i32 %22, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %86, label %36

36:                                               ; preds = %26
  %37 = icmp eq i32 %1, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %36
  %39 = shl nsw i32 -1, %1
  %40 = xor i32 %39, -1
  %41 = and i32 %34, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 @llvm.cttz.i32(i32 %34, i1 true), !range !16
  %45 = shl nuw i32 1, %44
  br label %46

46:                                               ; preds = %43, %38, %36
  %47 = phi i32 [ %45, %43 ], [ %34, %36 ], [ %41, %38 ]
  store i32 %47, ptr %21, align 4
  %48 = load ptr, ptr %0, align 64
  %49 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 27
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 26
  %54 = load ptr, ptr %53, align 64
  %55 = icmp eq ptr %54, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %52, %46
  %57 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %47, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %56
  %63 = call i32 @llvm.ctlz.i32(i32 %47, i1 true) #25, !range !16
  %64 = xor i32 %63, 31
  %65 = icmp ugt i32 %64, 2
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr [3 x ptr], ptr @sata_spd_string.spd_str, i32 0, i32 %64
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %62, %56
  %70 = phi ptr [ %68, %66 ], [ @.str.29, %62 ], [ @.str.29, %56 ]
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %58, i32 noundef %60, ptr noundef %70) #26
  br label %86

72:                                               ; preds = %52
  %73 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 5
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %47, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = call i32 @llvm.ctlz.i32(i32 %47, i1 true) #25, !range !16
  %78 = xor i32 %77, 31
  %79 = icmp ugt i32 %78, 2
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr [3 x ptr], ptr @sata_spd_string.spd_str, i32 0, i32 %78
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %76, %72
  %84 = phi ptr [ %82, %80 ], [ @.str.29, %76 ], [ @.str.29, %72 ]
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %74, ptr noundef %84) #26
  br label %86

86:                                               ; preds = %83, %69, %26, %19, %2
  %87 = phi i32 [ -95, %2 ], [ -22, %19 ], [ -22, %26 ], [ 0, %83 ], [ 0, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_down_xfermask_limit(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !9
  %4 = icmp sgt i32 %1, -1
  %5 = and i32 %1, 2147483647
  %6 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 19
  %9 = load i32, ptr %8, align 32
  %10 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 20
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %7, 127
  %13 = shl i32 %9, 7
  %14 = and i32 %13, 3968
  %15 = or i32 %14, %12
  %16 = shl i32 %11, 12
  %17 = and i32 %16, 1044480
  %18 = or i32 %15, %17
  %19 = and i32 %9, 31
  %20 = and i32 %11, 255
  switch i32 %5, label %48 [
    i32 0, label %21
    i32 1, label %26
    i32 2, label %44
    i32 4, label %46
    i32 3, label %49
  ]

21:                                               ; preds = %2
  %22 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #25, !range !16
  %23 = lshr i32 -2147483648, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %12, %24
  br label %49

26:                                               ; preds = %2
  %27 = icmp eq i32 %20, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %26
  %29 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 true) #25, !range !16
  %30 = xor i32 %29, 31
  %31 = shl nuw i32 1, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %20, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %115, label %49

35:                                               ; preds = %26
  %36 = icmp eq i32 %19, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %35
  %38 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 true) #25, !range !16
  %39 = xor i32 %38, 31
  %40 = shl nuw i32 1, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %19, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %115, label %49

44:                                               ; preds = %2
  %45 = and i32 %11, 7
  br label %49

46:                                               ; preds = %2
  %47 = and i32 %7, 1
  br label %49

48:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/ata/libata-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3238, 0\0A.popsection", ""() #25, !srcloc !25
  unreachable

49:                                               ; preds = %46, %44, %37, %35, %28, %21, %2
  %50 = phi i32 [ %12, %44 ], [ %12, %35 ], [ %12, %37 ], [ %12, %28 ], [ %25, %21 ], [ %12, %2 ], [ %47, %46 ]
  %51 = phi i32 [ %19, %44 ], [ 0, %35 ], [ %42, %37 ], [ %19, %28 ], [ %19, %21 ], [ 0, %2 ], [ 0, %46 ]
  %52 = phi i32 [ %45, %44 ], [ 0, %35 ], [ 0, %37 ], [ %33, %28 ], [ %20, %21 ], [ 0, %2 ], [ 0, %46 ]
  %53 = shl nuw nsw i32 %51, 7
  %54 = and i32 %53, 3968
  %55 = or i32 %54, %50
  %56 = shl nuw nsw i32 %52, 12
  %57 = or i32 %55, %56
  %58 = and i32 %57, %18
  %59 = and i32 %50, %12
  %60 = icmp eq i32 %59, 0
  %61 = icmp eq i32 %58, %18
  %62 = or i1 %60, %61
  br i1 %62, label %115, label %63

63:                                               ; preds = %49
  br i1 %4, label %64, label %103

64:                                               ; preds = %63
  %65 = and i32 %58, 1048448
  %66 = icmp eq i32 %65, 0
  %67 = tail call i32 @llvm.ctlz.i32(i32 %58, i1 false) #25, !range !16
  %68 = sub nsw i32 31, %67
  %69 = icmp ult i32 %68, 20
  br i1 %66, label %85, label %70

70:                                               ; preds = %64
  br i1 %69, label %71, label %74

71:                                               ; preds = %70
  %72 = getelementptr [20 x ptr], ptr @ata_mode_string.xfer_mode_str, i32 0, i32 %68
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %71, %70
  %75 = phi ptr [ %73, %71 ], [ @.str.25, %70 ]
  %76 = tail call i32 @llvm.ctlz.i32(i32 %59, i1 false) #25, !range !16
  %77 = sub nsw i32 31, %76
  %78 = icmp ult i32 %77, 20
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = getelementptr [20 x ptr], ptr @ata_mode_string.xfer_mode_str, i32 0, i32 %77
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %74
  %83 = phi ptr [ %81, %79 ], [ @.str.25, %74 ]
  %84 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.65, ptr noundef %75, ptr noundef %83)
  br label %92

85:                                               ; preds = %64
  br i1 %69, label %86, label %89

86:                                               ; preds = %85
  %87 = getelementptr [20 x ptr], ptr @ata_mode_string.xfer_mode_str, i32 0, i32 %68
  %88 = load ptr, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %85
  %90 = phi ptr [ %88, %86 ], [ @.str.25, %85 ]
  %91 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 32, ptr noundef nonnull @.str.66, ptr noundef %90)
  br label %92

92:                                               ; preds = %89, %82
  %93 = load ptr, ptr %0, align 64
  %94 = load ptr, ptr %93, align 64
  %95 = getelementptr inbounds %struct.ata_port, ptr %94, i32 0, i32 5
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.ata_link, ptr %93, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = add i32 %100, %98
  %102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %96, i32 noundef %101, ptr noundef nonnull %3) #26
  br label %103

103:                                              ; preds = %92, %63
  %104 = icmp eq ptr %6, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %103
  store i32 %59, ptr %6, align 4
  br label %106

106:                                              ; preds = %105, %103
  %107 = icmp eq ptr %8, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %106
  %109 = lshr i32 %58, 7
  %110 = and i32 %109, 31
  store i32 %110, ptr %8, align 4
  br label %111

111:                                              ; preds = %108, %106
  %112 = icmp eq ptr %10, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = lshr i32 %58, 12
  store i32 %114, ptr %10, align 4
  br label %115

115:                                              ; preds = %113, %111, %49, %37, %28
  %116 = phi i32 [ -2, %28 ], [ -2, %37 ], [ -2, %49 ], [ 0, %111 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  ret i32 %116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @ata_dev_pair(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = sub i32 1, %4
  %6 = getelementptr %struct.ata_link, ptr %2, i32 0, i32 14, i32 %5
  %7 = getelementptr %struct.ata_link, ptr %2, i32 0, i32 14, i32 %5, i32 9
  %8 = load i32, ptr %7, align 64
  switch i32 %8, label %9 [
    i32 7, label %12
    i32 5, label %12
    i32 3, label %12
    i32 1, label %12
  ]

9:                                                ; preds = %1
  %10 = icmp eq i32 %8, 9
  %11 = select i1 %10, ptr %6, ptr null
  br label %12

12:                                               ; preds = %9, %1, %1, %1, %1
  %13 = phi ptr [ %6, %1 ], [ %6, %1 ], [ %6, %1 ], [ %6, %1 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_do_set_mode(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.ata_taskfile, align 4
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  %6 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %7 = icmp eq ptr %6, %0
  %8 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %9 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 3
  br label %24

10:                                               ; preds = %24
  %11 = getelementptr %struct.ata_device, ptr %25, i32 1
  br i1 %7, label %15, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %8, align 64
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %10
  %16 = load i32, ptr %9, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ 1, %19 ], [ 2, %15 ]
  %22 = getelementptr %struct.ata_device, ptr %5, i32 %21
  %23 = icmp ult ptr %11, %22
  br i1 %23, label %24, label %927

24:                                               ; preds = %20, %2
  %25 = phi ptr [ %11, %20 ], [ %5, %2 ]
  %26 = getelementptr inbounds %struct.ata_device, ptr %25, i32 0, i32 9
  %27 = load i32, ptr %26, align 64
  switch i32 %27, label %10 [
    i32 7, label %28
    i32 5, label %28
    i32 3, label %28
    i32 1, label %28
    i32 9, label %28
  ]

28:                                               ; preds = %24, %24, %24, %24, %24
  %29 = icmp eq ptr %25, null
  br i1 %29, label %927, label %30

30:                                               ; preds = %451, %28
  %31 = phi i32 [ %426, %451 ], [ 0, %28 ]
  %32 = phi ptr [ %434, %451 ], [ %25, %28 ]
  %33 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 9
  %34 = load i32, ptr %33, align 64
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 25
  %38 = load i16, ptr %37, align 2
  switch i16 %38, label %39 [
    i16 -31606, label %44
    i16 -31670, label %44
  ]

39:                                               ; preds = %36
  %40 = getelementptr i16, ptr %37, i32 83
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, -16380
  %43 = icmp eq i16 %42, 16388
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %36, %36
  br label %45

45:                                               ; preds = %44, %39, %30
  %46 = phi i32 [ 2, %30 ], [ 4, %44 ], [ 1, %39 ]
  %47 = load ptr, ptr %32, align 64
  %48 = load ptr, ptr %47, align 64
  %49 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 31
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 15
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 16
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 17
  %56 = load i32, ptr %55, align 32
  %57 = and i32 %52, 127
  %58 = shl i32 %54, 7
  %59 = and i32 %58, 3968
  %60 = or i32 %57, %59
  %61 = shl i32 %56, 12
  %62 = or i32 %60, %61
  %63 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 18
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 19
  %66 = load i32, ptr %65, align 32
  %67 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 20
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %64, 127
  %70 = shl i32 %66, 7
  %71 = and i32 %70, 3968
  %72 = or i32 %71, %69
  %73 = shl i32 %68, 12
  %74 = and i32 %73, 1044480
  %75 = or i32 %72, %74
  %76 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 25
  %77 = tail call i32 @ata_id_xfermask(ptr noundef %76) #25
  %78 = and i32 %77, %62
  %79 = and i32 %78, %75
  %80 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = sub i32 1, %81
  %83 = getelementptr %struct.ata_link, ptr %47, i32 0, i32 14, i32 %82
  %84 = getelementptr %struct.ata_link, ptr %47, i32 0, i32 14, i32 %82, i32 9
  %85 = load i32, ptr %84, align 64
  switch i32 %85, label %86 [
    i32 7, label %89
    i32 5, label %89
    i32 3, label %89
    i32 1, label %89
  ]

86:                                               ; preds = %45
  %87 = icmp eq i32 %85, 9
  %88 = select i1 %87, ptr %83, ptr null
  br label %89

89:                                               ; preds = %86, %45, %45, %45, %45
  %90 = phi ptr [ %83, %45 ], [ %83, %45 ], [ %83, %45 ], [ %83, %45 ], [ %88, %86 ]
  %91 = icmp eq ptr %90, null
  %92 = and i32 %79, 1045407
  %93 = select i1 %91, i32 %79, i32 %92
  %94 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 512
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98, %89
  %104 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 2
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 2
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %103, %98
  %109 = and i32 %93, 127
  %110 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 5
  %111 = load i32, ptr %110, align 4
  %112 = getelementptr inbounds %struct.ata_link, ptr %47, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = add i32 %113, %81
  %115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.457, i32 noundef %111, i32 noundef %114) #26
  br label %116

116:                                              ; preds = %108, %103
  %117 = phi i32 [ %109, %108 ], [ %93, %103 ]
  %118 = getelementptr inbounds %struct.ata_host, ptr %50, i32 0, i32 7
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.ata_host, ptr %50, i32 0, i32 11
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  %126 = icmp eq ptr %124, %48
  %127 = select i1 %125, i1 true, i1 %126
  br i1 %127, label %139, label %128

128:                                              ; preds = %122
  %129 = and i32 %117, -1048449
  %130 = load ptr, ptr %32, align 64
  %131 = load ptr, ptr %130, align 64
  %132 = getelementptr inbounds %struct.ata_port, ptr %131, i32 0, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.ata_link, ptr %130, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = load i32, ptr %80, align 4
  %137 = add i32 %136, %135
  %138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.458, i32 noundef %133, i32 noundef %137) #26
  br label %139

139:                                              ; preds = %128, %122, %116
  %140 = phi i32 [ %129, %128 ], [ %117, %122 ], [ %117, %116 ]
  %141 = load i32, ptr %94, align 4
  %142 = and i32 %141, 65536
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %139
  %145 = getelementptr [256 x i16], ptr %76, i32 0, i32 53
  %146 = load i16, ptr %145, align 2
  %147 = and i16 %146, 2
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = getelementptr [256 x i16], ptr %76, i32 0, i32 67
  %151 = load i16, ptr %150, align 2
  %152 = icmp eq i16 %151, 0
  %153 = icmp ugt i16 %151, 240
  %154 = select i1 %153, i32 3, i32 7
  br i1 %152, label %155, label %156

155:                                              ; preds = %149, %144
  br label %156

156:                                              ; preds = %155, %149
  %157 = phi i32 [ %154, %149 ], [ 3, %155 ]
  %158 = and i32 %157, %140
  br label %159

159:                                              ; preds = %156, %139
  %160 = phi i32 [ %158, %156 ], [ %140, %139 ]
  %161 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.ata_port_operations, ptr %162, i32 0, i32 6
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %159
  %167 = tail call i32 %164(ptr noundef nonnull %32, i32 noundef %160) #25
  br label %168

168:                                              ; preds = %166, %159
  %169 = phi i32 [ %167, %166 ], [ %160, %159 ]
  %170 = and i32 %169, 1015808
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %289, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 18
  %174 = load i32, ptr %173, align 4
  switch i32 %174, label %175 [
    i32 1, label %278
    i32 2, label %289
    i32 6, label %289
    i32 3, label %289
  ]

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 27
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 28
  %181 = load ptr, ptr %180, align 8
  br label %184

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 25
  br label %184

184:                                              ; preds = %182, %179
  %185 = phi ptr [ %183, %182 ], [ %181, %179 ]
  %186 = icmp eq ptr %185, null
  br i1 %186, label %278, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 25
  %189 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 26
  %190 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 28
  br label %191

191:                                              ; preds = %271, %187
  %192 = phi ptr [ %185, %187 ], [ %272, %271 ]
  %193 = getelementptr inbounds %struct.ata_link, ptr %192, i32 0, i32 14
  br label %213

194:                                              ; preds = %213
  %195 = getelementptr %struct.ata_device, ptr %214, i32 1
  %196 = load ptr, ptr %192, align 64
  %197 = getelementptr inbounds %struct.ata_port, ptr %196, i32 0, i32 25
  %198 = icmp eq ptr %197, %192
  br i1 %198, label %203, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.ata_port, ptr %196, i32 0, i32 26
  %201 = load ptr, ptr %200, align 64
  %202 = icmp eq ptr %201, %192
  br i1 %202, label %203, label %208

203:                                              ; preds = %199, %194
  %204 = getelementptr inbounds %struct.ata_port, ptr %196, i32 0, i32 3
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203, %199
  br label %209

209:                                              ; preds = %208, %203
  %210 = phi i32 [ 1, %208 ], [ 2, %203 ]
  %211 = getelementptr %struct.ata_device, ptr %193, i32 %210
  %212 = icmp ult ptr %195, %211
  br i1 %212, label %213, label %266

213:                                              ; preds = %209, %191
  %214 = phi ptr [ %195, %209 ], [ %193, %191 ]
  %215 = getelementptr inbounds %struct.ata_device, ptr %214, i32 0, i32 9
  %216 = load i32, ptr %215, align 64
  switch i32 %216, label %194 [
    i32 7, label %217
    i32 5, label %217
    i32 3, label %217
    i32 1, label %217
    i32 9, label %217
  ]

217:                                              ; preds = %213, %213, %213, %213, %213
  %218 = icmp eq ptr %214, null
  br i1 %218, label %266, label %219

219:                                              ; preds = %264, %217
  %220 = phi ptr [ %248, %264 ], [ %214, %217 ]
  %221 = getelementptr inbounds %struct.ata_device, ptr %220, i32 0, i32 2
  %222 = load i32, ptr %221, align 8
  %223 = and i32 %222, 256
  %224 = icmp eq i32 %223, 0
  %225 = getelementptr inbounds %struct.ata_device, ptr %220, i32 0, i32 25
  %226 = getelementptr i16, ptr %225, i32 93
  %227 = load i16, ptr %226, align 2
  br i1 %224, label %231, label %228

228:                                              ; preds = %219
  %229 = and i16 %227, 8192
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %240, label %289

231:                                              ; preds = %219
  %232 = icmp eq i16 %227, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %231
  %234 = getelementptr %struct.ata_device, ptr %220, i32 0, i32 25, i32 0, i32 40
  %235 = load i16, ptr %234, align 2
  %236 = icmp sgt i16 %235, 31
  br i1 %236, label %289, label %240

237:                                              ; preds = %231
  %238 = and i16 %227, -8192
  %239 = icmp eq i16 %238, 24576
  br i1 %239, label %289, label %240

240:                                              ; preds = %237, %233, %228
  %241 = load ptr, ptr %192, align 64
  %242 = getelementptr inbounds %struct.ata_port, ptr %241, i32 0, i32 25
  %243 = icmp eq ptr %242, %192
  %244 = getelementptr inbounds %struct.ata_port, ptr %241, i32 0, i32 26
  %245 = getelementptr inbounds %struct.ata_port, ptr %241, i32 0, i32 3
  br label %246

246:                                              ; preds = %261, %240
  %247 = phi ptr [ %248, %261 ], [ %220, %240 ]
  %248 = getelementptr %struct.ata_device, ptr %247, i32 1
  br i1 %243, label %252, label %249

249:                                              ; preds = %246
  %250 = load ptr, ptr %244, align 64
  %251 = icmp eq ptr %250, %192
  br i1 %251, label %252, label %256

252:                                              ; preds = %249, %246
  %253 = load i32, ptr %245, align 4
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %252, %249
  br label %257

257:                                              ; preds = %256, %252
  %258 = phi i32 [ 1, %256 ], [ 2, %252 ]
  %259 = getelementptr %struct.ata_device, ptr %193, i32 %258
  %260 = icmp ult ptr %248, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = getelementptr %struct.ata_device, ptr %247, i32 1, i32 9
  %263 = load i32, ptr %262, align 64
  switch i32 %263, label %246 [
    i32 7, label %264
    i32 5, label %264
    i32 3, label %264
    i32 1, label %264
    i32 9, label %264
  ]

264:                                              ; preds = %261, %261, %261, %261, %261
  %265 = icmp eq ptr %248, null
  br i1 %265, label %266, label %219

266:                                              ; preds = %264, %257, %217, %209
  %267 = icmp eq ptr %188, %192
  br i1 %267, label %278, label %268

268:                                              ; preds = %266
  %269 = load ptr, ptr %189, align 64
  %270 = icmp eq ptr %269, %192
  br i1 %270, label %278, label %271, !prof !11

271:                                              ; preds = %268
  %272 = getelementptr %struct.ata_link, ptr %192, i32 1
  %273 = load ptr, ptr %190, align 8
  %274 = getelementptr %struct.ata_link, ptr %273, i32 %177
  %275 = icmp uge ptr %272, %274
  %276 = icmp eq ptr %272, null
  %277 = or i1 %276, %275
  br i1 %277, label %278, label %191

278:                                              ; preds = %271, %268, %266, %184, %172
  %279 = load ptr, ptr %32, align 64
  %280 = load ptr, ptr %279, align 64
  %281 = getelementptr inbounds %struct.ata_port, ptr %280, i32 0, i32 5
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr inbounds %struct.ata_link, ptr %279, i32 0, i32 1
  %284 = load i32, ptr %283, align 4
  %285 = load i32, ptr %80, align 4
  %286 = add i32 %285, %284
  %287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.459, i32 noundef %282, i32 noundef %286) #26
  %288 = and i32 %169, -1015809
  br label %289

289:                                              ; preds = %278, %237, %233, %228, %172, %172, %172, %168
  %290 = phi i32 [ %288, %278 ], [ %169, %168 ], [ %169, %172 ], [ %169, %172 ], [ %169, %172 ], [ %169, %237 ], [ %169, %233 ], [ %169, %228 ]
  %291 = and i32 %290, 127
  store i32 %291, ptr %63, align 4
  %292 = lshr i32 %290, 7
  %293 = and i32 %292, 31
  store i32 %293, ptr %65, align 4
  %294 = lshr i32 %290, 12
  %295 = and i32 %294, 255
  store i32 %295, ptr %67, align 4
  %296 = load ptr, ptr %32, align 64
  %297 = getelementptr inbounds %struct.ata_link, ptr %296, i32 0, i32 1
  %298 = load i32, ptr %297, align 4
  %299 = load i32, ptr %80, align 4
  %300 = add i32 %299, %298
  %301 = load ptr, ptr %296, align 64
  %302 = getelementptr inbounds %struct.ata_port, ptr %301, i32 0, i32 25
  %303 = icmp eq ptr %302, %296
  br i1 %303, label %308, label %304

304:                                              ; preds = %289
  %305 = getelementptr inbounds %struct.ata_port, ptr %301, i32 0, i32 26
  %306 = load ptr, ptr %305, align 64
  %307 = icmp eq ptr %306, %296
  br i1 %307, label %308, label %310

308:                                              ; preds = %304, %289
  %309 = add i32 %300, 15
  br label %310

310:                                              ; preds = %308, %304
  %311 = phi i32 [ %309, %308 ], [ %300, %304 ]
  %312 = load i32, ptr @ata_force_tbl_size, align 4
  %313 = add i32 %312, -1
  %314 = icmp sgt i32 %313, -1
  br i1 %314, label %315, label %363

315:                                              ; preds = %310
  %316 = load ptr, ptr @ata_force_tbl, align 4
  %317 = getelementptr inbounds %struct.ata_port, ptr %301, i32 0, i32 5
  br label %318

318:                                              ; preds = %360, %315
  %319 = phi i32 [ %313, %315 ], [ %361, %360 ]
  %320 = getelementptr %struct.ata_force_ent, ptr %316, i32 %319
  %321 = load i32, ptr %320, align 4
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %326, label %323

323:                                              ; preds = %318
  %324 = load i32, ptr %317, align 4
  %325 = icmp eq i32 %321, %324
  br i1 %325, label %326, label %360

326:                                              ; preds = %323, %318
  %327 = getelementptr %struct.ata_force_ent, ptr %316, i32 %319, i32 1
  %328 = load i32, ptr %327, align 4
  %329 = icmp eq i32 %328, -1
  %330 = icmp eq i32 %328, %300
  %331 = select i1 %329, i1 true, i1 %330
  %332 = icmp eq i32 %328, %311
  %333 = select i1 %331, i1 true, i1 %332
  br i1 %333, label %334, label %360

334:                                              ; preds = %326
  %335 = getelementptr %struct.ata_force_ent, ptr %316, i32 %319, i32 2, i32 3
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %360, label %338

338:                                              ; preds = %334
  %339 = getelementptr %struct.ata_force_ent, ptr %316, i32 %319, i32 2
  %340 = and i32 %336, 127
  %341 = lshr i32 %336, 7
  %342 = and i32 %341, 31
  %343 = lshr i32 %336, 12
  %344 = and i32 %343, 255
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %338
  store i32 %344, ptr %67, align 4
  br label %351

347:                                              ; preds = %338
  %348 = icmp eq i32 %342, 0
  store i32 0, ptr %67, align 4
  br i1 %348, label %350, label %349

349:                                              ; preds = %347
  store i32 %342, ptr %65, align 32
  br label %351

350:                                              ; preds = %347
  store i32 0, ptr %65, align 32
  store i32 %340, ptr %63, align 4
  br label %351

351:                                              ; preds = %350, %349, %346
  %352 = load ptr, ptr %296, align 64
  %353 = getelementptr inbounds %struct.ata_port, ptr %352, i32 0, i32 5
  %354 = load i32, ptr %353, align 4
  %355 = load i32, ptr %297, align 4
  %356 = add i32 %355, %299
  %357 = load ptr, ptr %339, align 4
  %358 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.303, i32 noundef %354, i32 noundef %356, ptr noundef %357) #26
  %359 = load i32, ptr %63, align 4
  br label %363

360:                                              ; preds = %334, %326, %323
  %361 = add i32 %319, -1
  %362 = icmp sgt i32 %361, -1
  br i1 %362, label %318, label %363

363:                                              ; preds = %360, %351, %310
  %364 = phi i32 [ %291, %310 ], [ %359, %351 ], [ %291, %360 ]
  %365 = and i32 %364, 127
  %366 = load i32, ptr @libata_dma_mask, align 4
  %367 = and i32 %366, %46
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %377, label %369

369:                                              ; preds = %363
  %370 = load i32, ptr %65, align 32
  %371 = load i32, ptr %67, align 4
  %372 = shl i32 %370, 7
  %373 = and i32 %372, 3968
  %374 = shl i32 %371, 12
  %375 = and i32 %374, 1044480
  %376 = or i32 %375, %373
  br label %377

377:                                              ; preds = %369, %363
  %378 = phi i32 [ %376, %369 ], [ 0, %363 ]
  %379 = icmp eq i32 %365, 0
  %380 = tail call i32 @llvm.ctlz.i32(i32 %365, i1 false) #25, !range !16
  %381 = sub nsw i32 31, %380
  %382 = select i1 %379, i32 -1, i32 %381
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %398, label %384

384:                                              ; preds = %377
  %385 = icmp ult i32 %382, 7
  br i1 %385, label %386, label %394

386:                                              ; preds = %396, %394, %384
  %387 = phi i32 [ 0, %384 ], [ -7, %394 ], [ -12, %396 ]
  %388 = phi ptr [ @ata_xfer_tbl, %384 ], [ getelementptr inbounds ([4 x %struct.ata_xfer_ent], ptr @ata_xfer_tbl, i32 0, i32 1), %394 ], [ getelementptr inbounds ([4 x %struct.ata_xfer_ent], ptr @ata_xfer_tbl, i32 0, i32 2), %396 ]
  %389 = getelementptr inbounds %struct.ata_xfer_ent, ptr %388, i32 0, i32 2
  %390 = load i8, ptr %389, align 4
  %391 = add nsw i32 %387, %382
  %392 = trunc i32 %391 to i8
  %393 = add i8 %390, %392
  br label %398

394:                                              ; preds = %384
  %395 = icmp ult i32 %382, 12
  br i1 %395, label %386, label %396

396:                                              ; preds = %394
  %397 = icmp ult i32 %382, 20
  br i1 %397, label %386, label %398

398:                                              ; preds = %396, %386, %377
  %399 = phi i8 [ %393, %386 ], [ -1, %396 ], [ -1, %377 ]
  %400 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 11
  store i8 %399, ptr %400, align 8
  %401 = icmp eq i32 %378, 0
  %402 = tail call i32 @llvm.ctlz.i32(i32 %378, i1 false) #25, !range !16
  %403 = sub nsw i32 31, %402
  %404 = select i1 %401, i32 -1, i32 %403
  %405 = icmp slt i32 %404, 0
  br i1 %405, label %412, label %406

406:                                              ; preds = %398
  %407 = icmp ult i32 %404, 7
  br i1 %407, label %414, label %408

408:                                              ; preds = %406
  %409 = icmp ult i32 %404, 12
  br i1 %409, label %414, label %410

410:                                              ; preds = %408
  %411 = icmp ult i32 %404, 20
  br i1 %411, label %414, label %412

412:                                              ; preds = %410, %398
  %413 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 12
  store i8 -1, ptr %413, align 1
  br label %424

414:                                              ; preds = %410, %408, %406
  %415 = phi i32 [ 0, %406 ], [ -7, %408 ], [ -12, %410 ]
  %416 = phi ptr [ @ata_xfer_tbl, %406 ], [ getelementptr inbounds ([4 x %struct.ata_xfer_ent], ptr @ata_xfer_tbl, i32 0, i32 1), %408 ], [ getelementptr inbounds ([4 x %struct.ata_xfer_ent], ptr @ata_xfer_tbl, i32 0, i32 2), %410 ]
  %417 = getelementptr inbounds %struct.ata_xfer_ent, ptr %416, i32 0, i32 2
  %418 = load i8, ptr %417, align 4
  %419 = add nsw i32 %415, %404
  %420 = trunc i32 %419 to i8
  %421 = add i8 %418, %420
  %422 = getelementptr inbounds %struct.ata_device, ptr %32, i32 0, i32 12
  store i8 %421, ptr %422, align 1
  %423 = icmp eq i8 %421, -1
  br i1 %423, label %424, label %425

424:                                              ; preds = %414, %412
  br label %425

425:                                              ; preds = %424, %414
  %426 = phi i32 [ %31, %424 ], [ 1, %414 ]
  %427 = load ptr, ptr %0, align 64
  %428 = getelementptr inbounds %struct.ata_port, ptr %427, i32 0, i32 25
  %429 = icmp eq ptr %428, %0
  %430 = getelementptr inbounds %struct.ata_port, ptr %427, i32 0, i32 26
  %431 = getelementptr inbounds %struct.ata_port, ptr %427, i32 0, i32 3
  br label %432

432:                                              ; preds = %448, %425
  %433 = phi ptr [ %32, %425 ], [ %434, %448 ]
  %434 = getelementptr %struct.ata_device, ptr %433, i32 1
  br i1 %429, label %438, label %435

435:                                              ; preds = %432
  %436 = load ptr, ptr %430, align 64
  %437 = icmp eq ptr %436, %0
  br i1 %437, label %438, label %442

438:                                              ; preds = %435, %432
  %439 = load i32, ptr %431, align 4
  %440 = and i32 %439, 1
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %438, %435
  br label %443

443:                                              ; preds = %442, %438
  %444 = phi i32 [ 1, %442 ], [ 2, %438 ]
  %445 = getelementptr %struct.ata_device, ptr %5, i32 %444
  %446 = icmp ult ptr %434, %445
  br i1 %446, label %448, label %447

447:                                              ; preds = %443
  br i1 %29, label %927, label %454

448:                                              ; preds = %443
  %449 = getelementptr %struct.ata_device, ptr %433, i32 1, i32 9
  %450 = load i32, ptr %449, align 64
  switch i32 %450, label %432 [
    i32 7, label %451
    i32 5, label %451
    i32 3, label %451
    i32 1, label %451
    i32 9, label %451
  ]

451:                                              ; preds = %448, %448, %448, %448, %448
  %452 = icmp eq ptr %434, null
  br i1 %452, label %453, label %30

453:                                              ; preds = %451
  br i1 %29, label %927, label %454

454:                                              ; preds = %453, %447
  %455 = getelementptr inbounds %struct.ata_port, ptr %427, i32 0, i32 25
  %456 = icmp eq ptr %455, %0
  %457 = getelementptr inbounds %struct.ata_port, ptr %427, i32 0, i32 26
  %458 = getelementptr inbounds %struct.ata_port, ptr %427, i32 0, i32 3
  br label %473

459:                                              ; preds = %473
  %460 = getelementptr %struct.ata_device, ptr %474, i32 1
  br i1 %456, label %464, label %461

461:                                              ; preds = %459
  %462 = load ptr, ptr %457, align 64
  %463 = icmp eq ptr %462, %0
  br i1 %463, label %464, label %468

464:                                              ; preds = %461, %459
  %465 = load i32, ptr %458, align 4
  %466 = and i32 %465, 1
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %464, %461
  br label %469

469:                                              ; preds = %468, %464
  %470 = phi i32 [ 1, %468 ], [ 2, %464 ]
  %471 = getelementptr %struct.ata_device, ptr %5, i32 %470
  %472 = icmp ult ptr %460, %471
  br i1 %472, label %473, label %481

473:                                              ; preds = %469, %454
  %474 = phi ptr [ %460, %469 ], [ %5, %454 ]
  %475 = getelementptr inbounds %struct.ata_device, ptr %474, i32 0, i32 9
  %476 = load i32, ptr %475, align 64
  switch i32 %476, label %459 [
    i32 7, label %477
    i32 5, label %477
    i32 3, label %477
    i32 1, label %477
    i32 9, label %477
  ]

477:                                              ; preds = %473, %473, %473, %473, %473
  %478 = icmp eq ptr %474, null
  br i1 %478, label %481, label %479

479:                                              ; preds = %477
  %480 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 1
  br label %487

481:                                              ; preds = %535, %528, %477, %469
  %482 = phi ptr [ %427, %477 ], [ %512, %528 ], [ %512, %535 ], [ %427, %469 ]
  %483 = getelementptr inbounds %struct.ata_port, ptr %482, i32 0, i32 25
  %484 = icmp eq ptr %483, %0
  %485 = getelementptr inbounds %struct.ata_port, ptr %482, i32 0, i32 26
  %486 = getelementptr inbounds %struct.ata_port, ptr %482, i32 0, i32 3
  br label %551

487:                                              ; preds = %535, %479
  %488 = phi ptr [ %474, %479 ], [ %519, %535 ]
  %489 = getelementptr inbounds %struct.ata_device, ptr %488, i32 0, i32 11
  %490 = load i8, ptr %489, align 8
  %491 = icmp eq i8 %490, -1
  br i1 %491, label %492, label %503

492:                                              ; preds = %487
  %493 = load ptr, ptr %488, align 64
  %494 = load ptr, ptr %493, align 64
  %495 = getelementptr inbounds %struct.ata_port, ptr %494, i32 0, i32 5
  %496 = load i32, ptr %495, align 4
  %497 = getelementptr inbounds %struct.ata_link, ptr %493, i32 0, i32 1
  %498 = load i32, ptr %497, align 4
  %499 = getelementptr inbounds %struct.ata_device, ptr %488, i32 0, i32 1
  %500 = load i32, ptr %499, align 4
  %501 = add i32 %500, %498
  %502 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %496, i32 noundef %501) #26
  br label %924

503:                                              ; preds = %487
  %504 = getelementptr inbounds %struct.ata_device, ptr %488, i32 0, i32 13
  store i8 %490, ptr %504, align 2
  %505 = getelementptr inbounds %struct.ata_device, ptr %488, i32 0, i32 14
  store i32 0, ptr %505, align 4
  %506 = load ptr, ptr %480, align 4
  %507 = getelementptr inbounds %struct.ata_port_operations, ptr %506, i32 0, i32 7
  %508 = load ptr, ptr %507, align 4
  %509 = icmp eq ptr %508, null
  br i1 %509, label %511, label %510

510:                                              ; preds = %503
  tail call void %508(ptr noundef %4, ptr noundef nonnull %488) #25
  br label %511

511:                                              ; preds = %510, %503
  %512 = load ptr, ptr %0, align 64
  %513 = getelementptr inbounds %struct.ata_port, ptr %512, i32 0, i32 25
  %514 = icmp eq ptr %513, %0
  %515 = getelementptr inbounds %struct.ata_port, ptr %512, i32 0, i32 26
  %516 = getelementptr inbounds %struct.ata_port, ptr %512, i32 0, i32 3
  br label %517

517:                                              ; preds = %532, %511
  %518 = phi ptr [ %519, %532 ], [ %488, %511 ]
  %519 = getelementptr %struct.ata_device, ptr %518, i32 1
  br i1 %514, label %523, label %520

520:                                              ; preds = %517
  %521 = load ptr, ptr %515, align 64
  %522 = icmp eq ptr %521, %0
  br i1 %522, label %523, label %527

523:                                              ; preds = %520, %517
  %524 = load i32, ptr %516, align 4
  %525 = and i32 %524, 1
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %527, label %528

527:                                              ; preds = %523, %520
  br label %528

528:                                              ; preds = %527, %523
  %529 = phi i32 [ 1, %527 ], [ 2, %523 ]
  %530 = getelementptr %struct.ata_device, ptr %5, i32 %529
  %531 = icmp ult ptr %519, %530
  br i1 %531, label %532, label %481

532:                                              ; preds = %528
  %533 = getelementptr %struct.ata_device, ptr %518, i32 1, i32 9
  %534 = load i32, ptr %533, align 64
  switch i32 %534, label %517 [
    i32 7, label %535
    i32 5, label %535
    i32 3, label %535
    i32 1, label %535
    i32 9, label %535
  ]

535:                                              ; preds = %532, %532, %532, %532, %532
  %536 = icmp eq ptr %519, null
  br i1 %536, label %481, label %487

537:                                              ; preds = %551
  %538 = getelementptr %struct.ata_device, ptr %552, i32 1
  br i1 %484, label %542, label %539

539:                                              ; preds = %537
  %540 = load ptr, ptr %485, align 64
  %541 = icmp eq ptr %540, %0
  br i1 %541, label %542, label %546

542:                                              ; preds = %539, %537
  %543 = load i32, ptr %486, align 4
  %544 = and i32 %543, 1
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %547

546:                                              ; preds = %542, %539
  br label %547

547:                                              ; preds = %546, %542
  %548 = phi i32 [ 1, %546 ], [ 2, %542 ]
  %549 = getelementptr %struct.ata_device, ptr %5, i32 %548
  %550 = icmp ult ptr %538, %549
  br i1 %550, label %551, label %559

551:                                              ; preds = %547, %481
  %552 = phi ptr [ %538, %547 ], [ %5, %481 ]
  %553 = getelementptr inbounds %struct.ata_device, ptr %552, i32 0, i32 9
  %554 = load i32, ptr %553, align 64
  switch i32 %554, label %537 [
    i32 7, label %555
    i32 5, label %555
    i32 3, label %555
    i32 1, label %555
    i32 9, label %555
  ]

555:                                              ; preds = %551, %551, %551, %551, %551
  %556 = icmp eq ptr %552, null
  br i1 %556, label %559, label %557

557:                                              ; preds = %555
  %558 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 1
  br label %565

559:                                              ; preds = %615, %608, %555, %547
  %560 = phi ptr [ %482, %555 ], [ %592, %608 ], [ %592, %615 ], [ %482, %547 ]
  %561 = getelementptr inbounds %struct.ata_port, ptr %560, i32 0, i32 25
  %562 = icmp eq ptr %561, %0
  %563 = getelementptr inbounds %struct.ata_port, ptr %560, i32 0, i32 26
  %564 = getelementptr inbounds %struct.ata_port, ptr %560, i32 0, i32 3
  br label %631

565:                                              ; preds = %615, %557
  %566 = phi ptr [ %552, %557 ], [ %599, %615 ]
  %567 = getelementptr inbounds %struct.ata_device, ptr %566, i32 0, i32 12
  %568 = load i8, ptr %567, align 1
  %569 = icmp eq i8 %568, -1
  br i1 %569, label %591, label %570

570:                                              ; preds = %565
  %571 = getelementptr inbounds %struct.ata_device, ptr %566, i32 0, i32 13
  store i8 %568, ptr %571, align 2
  %572 = icmp ult i8 %568, 8
  br i1 %572, label %582, label %573

573:                                              ; preds = %570
  %574 = icmp ult i8 %568, 15
  br i1 %574, label %583, label %575

575:                                              ; preds = %573
  %576 = icmp ult i8 %568, 32
  br i1 %576, label %582, label %577

577:                                              ; preds = %575
  %578 = icmp ult i8 %568, 37
  br i1 %578, label %583, label %579

579:                                              ; preds = %577
  %580 = and i8 %568, -8
  %581 = icmp eq i8 %580, 64
  br i1 %581, label %583, label %582

582:                                              ; preds = %579, %575, %570
  br label %583

583:                                              ; preds = %582, %579, %577, %573
  %584 = phi i32 [ 0, %573 ], [ 7, %577 ], [ -1, %582 ], [ 12, %579 ]
  %585 = getelementptr inbounds %struct.ata_device, ptr %566, i32 0, i32 14
  store i32 %584, ptr %585, align 4
  %586 = load ptr, ptr %558, align 4
  %587 = getelementptr inbounds %struct.ata_port_operations, ptr %586, i32 0, i32 8
  %588 = load ptr, ptr %587, align 4
  %589 = icmp eq ptr %588, null
  br i1 %589, label %591, label %590

590:                                              ; preds = %583
  tail call void %588(ptr noundef %4, ptr noundef nonnull %566) #25
  br label %591

591:                                              ; preds = %590, %583, %565
  %592 = load ptr, ptr %0, align 64
  %593 = getelementptr inbounds %struct.ata_port, ptr %592, i32 0, i32 25
  %594 = icmp eq ptr %593, %0
  %595 = getelementptr inbounds %struct.ata_port, ptr %592, i32 0, i32 26
  %596 = getelementptr inbounds %struct.ata_port, ptr %592, i32 0, i32 3
  br label %597

597:                                              ; preds = %612, %591
  %598 = phi ptr [ %599, %612 ], [ %566, %591 ]
  %599 = getelementptr %struct.ata_device, ptr %598, i32 1
  br i1 %594, label %603, label %600

600:                                              ; preds = %597
  %601 = load ptr, ptr %595, align 64
  %602 = icmp eq ptr %601, %0
  br i1 %602, label %603, label %607

603:                                              ; preds = %600, %597
  %604 = load i32, ptr %596, align 4
  %605 = and i32 %604, 1
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %603, %600
  br label %608

608:                                              ; preds = %607, %603
  %609 = phi i32 [ 1, %607 ], [ 2, %603 ]
  %610 = getelementptr %struct.ata_device, ptr %5, i32 %609
  %611 = icmp ult ptr %599, %610
  br i1 %611, label %612, label %559

612:                                              ; preds = %608
  %613 = getelementptr %struct.ata_device, ptr %598, i32 1, i32 9
  %614 = load i32, ptr %613, align 64
  switch i32 %614, label %597 [
    i32 7, label %615
    i32 5, label %615
    i32 3, label %615
    i32 1, label %615
    i32 9, label %615
  ]

615:                                              ; preds = %612, %612, %612, %612, %612
  %616 = icmp eq ptr %599, null
  br i1 %616, label %559, label %565

617:                                              ; preds = %631
  %618 = getelementptr %struct.ata_device, ptr %632, i32 1
  br i1 %562, label %622, label %619

619:                                              ; preds = %617
  %620 = load ptr, ptr %563, align 64
  %621 = icmp eq ptr %620, %0
  br i1 %621, label %622, label %626

622:                                              ; preds = %619, %617
  %623 = load i32, ptr %564, align 4
  %624 = and i32 %623, 1
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %627

626:                                              ; preds = %622, %619
  br label %627

627:                                              ; preds = %626, %622
  %628 = phi i32 [ 1, %626 ], [ 2, %622 ]
  %629 = getelementptr %struct.ata_device, ptr %5, i32 %628
  %630 = icmp ult ptr %618, %629
  br i1 %630, label %631, label %913

631:                                              ; preds = %627, %559
  %632 = phi ptr [ %618, %627 ], [ %5, %559 ]
  %633 = getelementptr inbounds %struct.ata_device, ptr %632, i32 0, i32 9
  %634 = load i32, ptr %633, align 64
  switch i32 %634, label %617 [
    i32 7, label %635
    i32 5, label %635
    i32 3, label %635
    i32 1, label %635
    i32 9, label %635
  ]

635:                                              ; preds = %631, %631, %631, %631, %631
  %636 = icmp eq ptr %632, null
  br i1 %636, label %913, label %637

637:                                              ; preds = %635
  %638 = getelementptr inbounds i8, ptr %3, i32 4
  %639 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 2
  %640 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 13
  %641 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 14
  %642 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 8
  %643 = getelementptr inbounds %struct.ata_taskfile, ptr %3, i32 0, i32 9
  br label %644

644:                                              ; preds = %911, %637
  %645 = phi ptr [ %632, %637 ], [ %895, %911 ]
  %646 = load ptr, ptr %645, align 64
  %647 = load ptr, ptr %646, align 64
  %648 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 2
  %649 = load i32, ptr %648, align 8
  %650 = and i32 %649, 16384
  %651 = icmp eq i32 %650, 0
  %652 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 3
  %653 = load i32, ptr %652, align 4
  %654 = and i32 %653, -4097
  store i32 %654, ptr %652, align 4
  %655 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 14
  %656 = load i32, ptr %655, align 4
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %660

658:                                              ; preds = %644
  %659 = or i32 %653, 4096
  store i32 %659, ptr %652, align 4
  br label %660

660:                                              ; preds = %658, %644
  br i1 %651, label %686, label %661

661:                                              ; preds = %660
  %662 = getelementptr inbounds %struct.ata_port, ptr %647, i32 0, i32 3
  %663 = load i32, ptr %662, align 4
  %664 = and i32 %663, 2
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %675, label %666

666:                                              ; preds = %661
  %667 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 25
  %668 = getelementptr i16, ptr %667, i32 93
  %669 = load i16, ptr %668, align 2
  %670 = icmp eq i16 %669, 0
  br i1 %670, label %671, label %675

671:                                              ; preds = %666
  %672 = getelementptr %struct.ata_device, ptr %645, i32 0, i32 25, i32 0, i32 40
  %673 = load i16, ptr %672, align 2
  %674 = icmp sgt i16 %673, 31
  br i1 %674, label %742, label %675

675:                                              ; preds = %671, %666, %661
  %676 = load ptr, ptr %646, align 64
  %677 = getelementptr inbounds %struct.ata_port, ptr %676, i32 0, i32 5
  %678 = load i32, ptr %677, align 4
  %679 = getelementptr inbounds %struct.ata_link, ptr %646, i32 0, i32 1
  %680 = load i32, ptr %679, align 4
  %681 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 1
  %682 = load i32, ptr %681, align 4
  %683 = add i32 %682, %680
  %684 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.305, i32 noundef %678, i32 noundef %683) #26
  %685 = load ptr, ptr %645, align 64
  br label %686

686:                                              ; preds = %675, %660
  %687 = phi ptr [ %646, %660 ], [ %685, %675 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %638, i8 0, i64 20, i1 false) #25
  %688 = load ptr, ptr %687, align 64
  %689 = getelementptr inbounds %struct.ata_port, ptr %688, i32 0, i32 9
  %690 = load i8, ptr %689, align 4
  store i8 %690, ptr %639, align 1
  %691 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 1
  %692 = load i32, ptr %691, align 4
  %693 = icmp eq i32 %692, 0
  %694 = select i1 %693, i8 -96, i8 -80
  store i8 %694, ptr %640, align 4
  store i8 -17, ptr %641, align 1
  store i8 3, ptr %642, align 1
  store i32 70, ptr %3, align 4
  %695 = getelementptr inbounds %struct.ata_port, ptr %688, i32 0, i32 4
  %696 = load i32, ptr %695, align 16
  %697 = and i32 %696, 256
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %731

699:                                              ; preds = %686
  %700 = getelementptr inbounds %struct.ata_port, ptr %688, i32 0, i32 3
  %701 = load i32, ptr %700, align 4
  %702 = and i32 %701, 65536
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %731

704:                                              ; preds = %699
  %705 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 25
  %706 = load i16, ptr %705, align 2
  switch i16 %706, label %707 [
    i16 -31606, label %715
    i16 -31670, label %715
  ]

707:                                              ; preds = %704
  %708 = getelementptr i16, ptr %705, i32 83
  %709 = load i16, ptr %708, align 2
  %710 = and i16 %709, -16380
  %711 = icmp eq i16 %710, 16388
  br i1 %711, label %715, label %712

712:                                              ; preds = %707
  %713 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 11
  %714 = load i8, ptr %713, align 8
  br label %720

715:                                              ; preds = %707, %704, %704
  %716 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 11
  %717 = load i8, ptr %716, align 8
  %718 = add i8 %717, -13
  %719 = icmp ult i8 %718, 2
  br i1 %719, label %731, label %720

720:                                              ; preds = %715, %712
  %721 = phi i8 [ %714, %712 ], [ %717, %715 ]
  %722 = icmp ugt i8 %721, 10
  br i1 %722, label %728, label %723

723:                                              ; preds = %720
  %724 = getelementptr [256 x i16], ptr %705, i32 0, i32 49
  %725 = load i16, ptr %724, align 2
  %726 = and i16 %725, 2048
  %727 = icmp eq i16 %726, 0
  br i1 %727, label %731, label %728

728:                                              ; preds = %723, %720
  %729 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 13
  %730 = load i8, ptr %729, align 2
  br label %738

731:                                              ; preds = %723, %715, %699, %686
  %732 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 25
  %733 = getelementptr [256 x i16], ptr %732, i32 0, i32 49
  %734 = load i16, ptr %733, align 2
  %735 = and i16 %734, 2048
  %736 = icmp eq i16 %735, 0
  br i1 %736, label %737, label %738

737:                                              ; preds = %731
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br label %742

738:                                              ; preds = %731, %728
  %739 = phi i8 [ %730, %728 ], [ 1, %731 ]
  store i8 %739, ptr %643, align 4
  %740 = call i32 @ata_exec_internal_sg(ptr noundef nonnull %645, ptr noundef nonnull %3, ptr noundef null, i32 noundef 3, ptr noundef null, i32 noundef 0, i32 noundef 15000) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %741 = icmp ult i32 %740, 2
  br i1 %741, label %742, label %881

742:                                              ; preds = %738, %737, %671
  %743 = phi i32 [ %740, %738 ], [ 0, %737 ], [ 0, %671 ]
  %744 = phi ptr [ @.str.37, %738 ], [ @.str.37, %737 ], [ @.str.304, %671 ]
  %745 = getelementptr inbounds %struct.ata_link, ptr %646, i32 0, i32 12, i32 0, i32 5
  %746 = load i32, ptr %745, align 4
  %747 = or i32 %746, 1048576
  store i32 %747, ptr %745, align 4
  %748 = tail call i32 @ata_dev_revalidate(ptr noundef nonnull %645, i32 noundef 0, i32 noundef 0) #25
  %749 = load i32, ptr %745, align 4
  %750 = and i32 %749, -1048577
  store i32 %750, ptr %745, align 4
  %751 = icmp eq i32 %748, 0
  br i1 %751, label %752, label %924

752:                                              ; preds = %742
  %753 = load i32, ptr %655, align 4
  switch i32 %753, label %798 [
    i32 0, label %754
    i32 7, label %787
  ]

754:                                              ; preds = %752
  %755 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 25
  %756 = load i16, ptr %755, align 2
  switch i16 %756, label %757 [
    i16 -31606, label %762
    i16 -31670, label %762
  ]

757:                                              ; preds = %754
  %758 = getelementptr i16, ptr %755, i32 83
  %759 = load i16, ptr %758, align 2
  %760 = and i16 %759, -16380
  %761 = icmp eq i16 %760, 16388
  br i1 %761, label %762, label %763

762:                                              ; preds = %757, %754, %754
  br label %763

763:                                              ; preds = %762, %757
  %764 = phi i32 [ 1, %762 ], [ 0, %757 ]
  %765 = getelementptr %struct.ata_device, ptr %645, i32 0, i32 25, i32 0, i32 40
  %766 = load i16, ptr %765, align 2
  %767 = icmp eq i16 %766, -1
  %768 = and i16 %766, 32766
  %769 = icmp eq i16 %768, 0
  %770 = or i1 %767, %769
  br i1 %770, label %771, label %776

771:                                              ; preds = %763
  %772 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 11
  %773 = load i8, ptr %772, align 8
  %774 = icmp ult i8 %773, 11
  %775 = select i1 %774, i32 1, i32 %764
  br label %776

776:                                              ; preds = %771, %763
  %777 = phi i32 [ %775, %771 ], [ %764, %763 ]
  %778 = getelementptr [256 x i16], ptr %755, i32 0, i32 49
  %779 = load i16, ptr %778, align 2
  %780 = and i16 %779, 2048
  %781 = icmp eq i16 %780, 0
  br i1 %781, label %782, label %798

782:                                              ; preds = %776
  %783 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 11
  %784 = load i8, ptr %783, align 8
  %785 = icmp ult i8 %784, 11
  %786 = select i1 %785, i32 1, i32 %777
  br label %798

787:                                              ; preds = %752
  %788 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 12
  %789 = load i8, ptr %788, align 1
  %790 = icmp eq i8 %789, 32
  br i1 %790, label %791, label %798

791:                                              ; preds = %787
  %792 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 25
  %793 = getelementptr [256 x i16], ptr %792, i32 0, i32 63
  %794 = load i16, ptr %793, align 2
  %795 = lshr i16 %794, 8
  %796 = and i16 %795, 1
  %797 = zext i16 %796 to i32
  br label %798

798:                                              ; preds = %791, %787, %782, %776, %752
  %799 = phi i32 [ 0, %787 ], [ %797, %791 ], [ %786, %782 ], [ %777, %776 ], [ 0, %752 ]
  %800 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 13
  %801 = load i8, ptr %800, align 2
  %802 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 25
  %803 = tail call i32 @ata_id_xfermask(ptr noundef %802) #25
  %804 = icmp eq i32 %803, 0
  %805 = tail call i32 @llvm.ctlz.i32(i32 %803, i1 false) #25, !range !16
  %806 = sub nsw i32 31, %805
  %807 = select i1 %804, i32 -1, i32 %806
  %808 = icmp slt i32 %807, 0
  br i1 %808, label %823, label %809

809:                                              ; preds = %798
  %810 = icmp ult i32 %807, 7
  br i1 %810, label %811, label %819

811:                                              ; preds = %821, %819, %809
  %812 = phi i32 [ 0, %809 ], [ -7, %819 ], [ -12, %821 ]
  %813 = phi ptr [ @ata_xfer_tbl, %809 ], [ getelementptr inbounds ([4 x %struct.ata_xfer_ent], ptr @ata_xfer_tbl, i32 0, i32 1), %819 ], [ getelementptr inbounds ([4 x %struct.ata_xfer_ent], ptr @ata_xfer_tbl, i32 0, i32 2), %821 ]
  %814 = getelementptr inbounds %struct.ata_xfer_ent, ptr %813, i32 0, i32 2
  %815 = load i8, ptr %814, align 4
  %816 = add nsw i32 %812, %807
  %817 = trunc i32 %816 to i8
  %818 = add i8 %815, %817
  br label %823

819:                                              ; preds = %809
  %820 = icmp ult i32 %807, 12
  br i1 %820, label %811, label %821

821:                                              ; preds = %819
  %822 = icmp ult i32 %807, 20
  br i1 %822, label %811, label %823

823:                                              ; preds = %821, %811, %798
  %824 = phi i8 [ %818, %811 ], [ -1, %821 ], [ -1, %798 ]
  %825 = icmp eq i32 %743, 0
  br i1 %825, label %830, label %826

826:                                              ; preds = %823
  %827 = icmp ne i8 %801, %824
  %828 = icmp eq i32 %799, 0
  %829 = select i1 %827, i1 %828, i1 false
  br i1 %829, label %881, label %830

830:                                              ; preds = %826, %823
  %831 = phi ptr [ %744, %823 ], [ @.str.306, %826 ]
  %832 = and i32 %749, 131080
  %833 = icmp eq i32 %832, 8
  br i1 %833, label %834, label %840

834:                                              ; preds = %878, %830
  %835 = load ptr, ptr %0, align 64
  %836 = getelementptr inbounds %struct.ata_port, ptr %835, i32 0, i32 25
  %837 = icmp eq ptr %836, %0
  %838 = getelementptr inbounds %struct.ata_port, ptr %835, i32 0, i32 26
  %839 = getelementptr inbounds %struct.ata_port, ptr %835, i32 0, i32 3
  br label %893

840:                                              ; preds = %830
  %841 = load ptr, ptr %645, align 64
  %842 = load ptr, ptr %841, align 64
  %843 = getelementptr inbounds %struct.ata_port, ptr %842, i32 0, i32 5
  %844 = load i32, ptr %843, align 4
  %845 = getelementptr inbounds %struct.ata_link, ptr %841, i32 0, i32 1
  %846 = load i32, ptr %845, align 4
  %847 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 1
  %848 = load i32, ptr %847, align 4
  %849 = add i32 %848, %846
  %850 = zext i8 %801 to i32
  %851 = icmp ult i8 %801, 8
  br i1 %851, label %878, label %852

852:                                              ; preds = %840
  %853 = icmp ult i8 %801, 15
  br i1 %853, label %861, label %854

854:                                              ; preds = %852
  %855 = icmp ult i8 %801, 32
  br i1 %855, label %878, label %856

856:                                              ; preds = %854
  %857 = icmp ult i8 %801, 37
  br i1 %857, label %861, label %858

858:                                              ; preds = %856
  %859 = and i8 %801, -8
  %860 = icmp eq i8 %859, 64
  br i1 %860, label %861, label %878

861:                                              ; preds = %858, %856, %852
  %862 = phi i32 [ 0, %852 ], [ 7, %856 ], [ 12, %858 ]
  %863 = phi i32 [ -8, %852 ], [ -32, %856 ], [ -64, %858 ]
  %864 = add nuw nsw i32 %862, %850
  %865 = add nsw i32 %864, %863
  %866 = shl i32 2, %865
  %867 = add i32 %866, -1
  %868 = shl nsw i32 -1, %862
  %869 = and i32 %867, %868
  %870 = icmp ne i32 %869, 0
  %871 = tail call i32 @llvm.ctlz.i32(i32 %869, i1 false) #25, !range !16
  %872 = sub nsw i32 31, %871
  %873 = icmp ult i32 %872, 20
  %874 = select i1 %870, i1 %873, i1 false
  br i1 %874, label %875, label %878

875:                                              ; preds = %861
  %876 = getelementptr [20 x ptr], ptr @ata_mode_string.xfer_mode_str, i32 0, i32 %872
  %877 = load ptr, ptr %876, align 4
  br label %878

878:                                              ; preds = %875, %861, %858, %854, %840
  %879 = phi ptr [ %877, %875 ], [ @.str.25, %861 ], [ @.str.25, %858 ], [ @.str.25, %854 ], [ @.str.25, %840 ]
  %880 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307, i32 noundef %844, i32 noundef %849, ptr noundef %879, ptr noundef nonnull %831) #26
  br label %834

881:                                              ; preds = %826, %738
  %882 = phi i32 [ %740, %738 ], [ 1, %826 ]
  %883 = load ptr, ptr %645, align 64
  %884 = load ptr, ptr %883, align 64
  %885 = getelementptr inbounds %struct.ata_port, ptr %884, i32 0, i32 5
  %886 = load i32, ptr %885, align 4
  %887 = getelementptr inbounds %struct.ata_link, ptr %883, i32 0, i32 1
  %888 = load i32, ptr %887, align 4
  %889 = getelementptr inbounds %struct.ata_device, ptr %645, i32 0, i32 1
  %890 = load i32, ptr %889, align 4
  %891 = add i32 %890, %888
  %892 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, i32 noundef %886, i32 noundef %891, i32 noundef %882) #26
  br label %924

893:                                              ; preds = %908, %834
  %894 = phi ptr [ %895, %908 ], [ %645, %834 ]
  %895 = getelementptr %struct.ata_device, ptr %894, i32 1
  br i1 %837, label %899, label %896

896:                                              ; preds = %893
  %897 = load ptr, ptr %838, align 64
  %898 = icmp eq ptr %897, %0
  br i1 %898, label %899, label %903

899:                                              ; preds = %896, %893
  %900 = load i32, ptr %839, align 4
  %901 = and i32 %900, 1
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %903, label %904

903:                                              ; preds = %899, %896
  br label %904

904:                                              ; preds = %903, %899
  %905 = phi i32 [ 1, %903 ], [ 2, %899 ]
  %906 = getelementptr %struct.ata_device, ptr %5, i32 %905
  %907 = icmp ult ptr %895, %906
  br i1 %907, label %908, label %913

908:                                              ; preds = %904
  %909 = getelementptr %struct.ata_device, ptr %894, i32 1, i32 9
  %910 = load i32, ptr %909, align 64
  switch i32 %910, label %893 [
    i32 7, label %911
    i32 5, label %911
    i32 3, label %911
    i32 1, label %911
    i32 9, label %911
  ]

911:                                              ; preds = %908, %908, %908, %908, %908
  %912 = icmp eq ptr %895, null
  br i1 %912, label %913, label %644

913:                                              ; preds = %911, %904, %635, %627
  %914 = icmp eq i32 %426, 0
  br i1 %914, label %927, label %915

915:                                              ; preds = %913
  %916 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 31
  %917 = load ptr, ptr %916, align 4
  %918 = getelementptr inbounds %struct.ata_host, ptr %917, i32 0, i32 7
  %919 = load i32, ptr %918, align 4
  %920 = and i32 %919, 1
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %927, label %922

922:                                              ; preds = %915
  %923 = getelementptr inbounds %struct.ata_host, ptr %917, i32 0, i32 11
  store ptr %4, ptr %923, align 4
  br label %927

924:                                              ; preds = %881, %742, %492
  %925 = phi ptr [ %488, %492 ], [ %645, %881 ], [ %645, %742 ]
  %926 = phi i32 [ -22, %492 ], [ -5, %881 ], [ %748, %742 ]
  store ptr %925, ptr %1, align 4
  br label %927

927:                                              ; preds = %924, %922, %915, %913, %453, %447, %28, %20
  %928 = phi i32 [ %926, %924 ], [ 0, %922 ], [ 0, %915 ], [ 0, %913 ], [ 0, %453 ], [ 0, %447 ], [ 0, %28 ], [ 0, %20 ]
  ret i32 %928
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_wait_ready(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = load ptr, ptr %0, align 64
  %10 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ata_host, ptr %11, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 80, i32 200
  %17 = add i32 %16, %8
  %18 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 26
  %19 = load ptr, ptr %18, align 64
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %22, !prof !11

21:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 3484, i32 noundef 9, ptr noundef null) #25
  br label %22

22:                                               ; preds = %21, %3
  %23 = sub i32 %1, %17
  %24 = icmp slt i32 %23, 0
  %25 = select i1 %24, i32 %1, i32 %17
  %26 = load volatile i32, ptr @jiffies, align 64
  %27 = call i32 %2(ptr noundef %0) #25
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %143, label %29

29:                                               ; preds = %22
  %30 = add i32 %8, 500
  %31 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  br label %32

32:                                               ; preds = %139, %29
  %33 = phi i32 [ %27, %29 ], [ %141, %139 ]
  %34 = phi i32 [ %26, %29 ], [ %140, %139 ]
  %35 = phi i32 [ 0, %29 ], [ %127, %139 ]
  switch i32 %33, label %143 [
    i32 -19, label %36
    i32 0, label %98
  ]

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 64
  %38 = getelementptr inbounds %struct.ata_port, ptr %37, i32 0, i32 26
  %39 = load ptr, ptr %38, align 64
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %41, label %42, !prof !11

41:                                               ; preds = %36
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4968, i32 noundef 9, ptr noundef null) #25
  br label %42

42:                                               ; preds = %41, %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  store i32 0, ptr %7, align 4, !annotation !9
  %43 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %7) #25
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, ptr %7, align 4
  %47 = and i32 %46, 15
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  br label %98

50:                                               ; preds = %45, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  %51 = icmp eq ptr %39, null
  br i1 %51, label %61, label %52

52:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !9
  %53 = call i32 @sata_scr_read(ptr noundef nonnull %39, i32 noundef 0, ptr noundef nonnull %6) #25
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, ptr %6, align 4
  %57 = and i32 %56, 15
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  br label %98

60:                                               ; preds = %55, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  br label %61

61:                                               ; preds = %60, %50
  %62 = load ptr, ptr %0, align 64
  %63 = getelementptr inbounds %struct.ata_port, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %143, label %67

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.ata_port, ptr %62, i32 0, i32 26
  %69 = load ptr, ptr %68, align 64
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %71, label %72, !prof !11

71:                                               ; preds = %67
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4995, i32 noundef 9, ptr noundef null) #25
  br label %72

72:                                               ; preds = %71, %67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !9
  %73 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, ptr %5, align 4
  %77 = and i32 %76, 15
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %92

80:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  %81 = icmp eq ptr %69, null
  br i1 %81, label %143, label %82

82:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !9
  %83 = call i32 @sata_scr_read(ptr noundef nonnull %69, i32 noundef 0, ptr noundef nonnull %4) #25
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, ptr %4, align 4
  %87 = and i32 %86, 15
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi i1 [ false, %89 ], [ true, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %92

92:                                               ; preds = %90, %79
  %93 = phi i1 [ false, %79 ], [ %91, %90 ]
  %94 = xor i1 %93, true
  %95 = sub i32 %34, %25
  %96 = icmp slt i32 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %143

98:                                               ; preds = %92, %59, %49, %32
  %99 = sub i32 %1, %34
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %143, label %101

101:                                              ; preds = %98
  %102 = icmp eq i32 %35, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %101
  %104 = sub i32 %30, %34
  %105 = icmp slt i32 %104, 0
  %106 = icmp ugt i32 %99, 300
  %107 = and i1 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load ptr, ptr %0, align 64
  %110 = getelementptr inbounds %struct.ata_port, ptr %109, i32 0, i32 27
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.ata_port, ptr %109, i32 0, i32 26
  %115 = load ptr, ptr %114, align 64
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %113, %108
  %118 = getelementptr inbounds %struct.ata_port, ptr %109, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = load i32, ptr %31, align 4
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %119, i32 noundef %120, i32 noundef %33) #26
  br label %126

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.ata_port, ptr %109, i32 0, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %124, i32 noundef %33) #26
  br label %126

126:                                              ; preds = %122, %117, %103, %101
  %127 = phi i32 [ 1, %101 ], [ 0, %103 ], [ 1, %122 ], [ 1, %117 ]
  %128 = load ptr, ptr %0, align 64
  %129 = icmp eq ptr %128, null
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.ata_port, ptr %128, i32 0, i32 31
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.ata_host, ptr %132, i32 0, i32 10
  %134 = load ptr, ptr %133, align 4
  %135 = tail call ptr @llvm.thread.pointer() #25
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %138, label %137

137:                                              ; preds = %130, %126
  call void @msleep(i32 noundef 50) #25
  br label %139

138:                                              ; preds = %130
  call void @ata_eh_release(ptr noundef nonnull %128) #25
  call void @msleep(i32 noundef 50) #25
  call void @ata_eh_acquire(ptr noundef nonnull %128) #25
  br label %139

139:                                              ; preds = %138, %137
  %140 = load volatile i32, ptr @jiffies, align 64
  %141 = call i32 %2(ptr noundef %0) #25
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %32

143:                                              ; preds = %139, %98, %92, %80, %61, %32, %22
  %144 = phi i32 [ 0, %22 ], [ %33, %32 ], [ -19, %80 ], [ -19, %92 ], [ -19, %61 ], [ 0, %139 ], [ -16, %98 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ata_link_online(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %6 = load ptr, ptr %5, align 64
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4968, i32 noundef 9, ptr noundef null) #25
  br label %9

9:                                                ; preds = %8, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !9
  %10 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br label %29

17:                                               ; preds = %12, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  %18 = icmp eq ptr %6, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !9
  %20 = call i32 @sata_scr_read(ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %2) #25
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr %2, align 4
  %24 = and i32 %23, 15
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i1 [ false, %26 ], [ true, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  br label %29

29:                                               ; preds = %27, %17, %16
  %30 = phi i1 [ false, %17 ], [ %28, %27 ], [ true, %16 ]
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ata_link_offline(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %6 = load ptr, ptr %5, align 64
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4995, i32 noundef 9, ptr noundef null) #25
  br label %9

9:                                                ; preds = %8, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !9
  %10 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4
  %14 = and i32 %13, 15
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br label %29

17:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  %18 = icmp eq ptr %6, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !9
  %20 = call i32 @sata_scr_read(ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull %2) #25
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, ptr %2, align 4
  %24 = and i32 %23, 15
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i1 [ false, %26 ], [ true, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  br label %29

29:                                               ; preds = %27, %17, %16
  %30 = phi i1 [ false, %16 ], [ true, %17 ], [ %28, %27 ]
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_msleep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @llvm.thread.pointer() #25
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @ata_eh_release(ptr noundef nonnull %0) #25
  br label %12

12:                                               ; preds = %11, %4, %2
  %13 = phi i1 [ true, %11 ], [ false, %4 ], [ false, %2 ]
  %14 = icmp ult i32 %1, 20
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = mul nuw nsw i32 %1, 1000
  %17 = add nuw nsw i32 %16, 50
  tail call void @usleep_range_state(i32 noundef %16, i32 noundef %17, i32 noundef 2) #25
  br label %19

18:                                               ; preds = %12
  tail call void @msleep(i32 noundef %1) #25
  br label %19

19:                                               ; preds = %18, %15
  br i1 %13, label %20, label %21

20:                                               ; preds = %19
  tail call void @ata_eh_acquire(ptr noundef %0) #25
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_wait_after_reset(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %0, align 64
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 31
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @llvm.thread.pointer() #25
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %6, %3
  tail call void @msleep(i32 noundef 150) #25
  br label %15

14:                                               ; preds = %6
  tail call void @ata_eh_release(ptr noundef nonnull %4) #25
  tail call void @msleep(i32 noundef 150) #25
  tail call void @ata_eh_acquire(ptr noundef nonnull %4) #25
  br label %15

15:                                               ; preds = %14, %13
  %16 = tail call i32 @ata_wait_ready(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ata_phys_link_offline(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %5, %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i1 [ false, %9 ], [ true, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_scr_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_dev_reread_id(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x [41 x i8]], align 1
  %4 = alloca [2 x [21 x i8]], align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  %6 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 64
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %0, align 64
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 50
  %11 = call i32 @ata_dev_read_id(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %1, ptr noundef %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %517

13:                                               ; preds = %2
  %14 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 82, ptr nonnull %3) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(82) %3, i8 0, i32 82, i1 false) #25, !annotation !9
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %4) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(42) %4, i8 0, i32 42, i1 false) #25, !annotation !9
  %15 = load i32, ptr %6, align 64
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 64
  %19 = load ptr, ptr %18, align 64
  %20 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ata_link, ptr %18, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.313, i32 noundef %21, i32 noundef %26, i32 noundef %15, i32 noundef %14) #26
  br label %515

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 25
  %30 = getelementptr i16, ptr %29, i32 27
  %31 = load i16, ptr %30, align 2
  %32 = lshr i16 %31, 8
  %33 = trunc i16 %32 to i8
  store i8 %33, ptr %3, align 1
  %34 = getelementptr inbounds i8, ptr %3, i32 1
  %35 = trunc i16 %31 to i8
  store i8 %35, ptr %34, align 1
  %36 = getelementptr inbounds i8, ptr %3, i32 2
  %37 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 14
  %38 = load i16, ptr %37, align 2
  %39 = lshr i16 %38, 8
  %40 = trunc i16 %39 to i8
  store i8 %40, ptr %36, align 1
  %41 = getelementptr inbounds i8, ptr %3, i32 3
  %42 = trunc i16 %38 to i8
  store i8 %42, ptr %41, align 1
  %43 = getelementptr inbounds i8, ptr %3, i32 4
  %44 = getelementptr i16, ptr %29, i32 29
  %45 = load i16, ptr %44, align 2
  %46 = lshr i16 %45, 8
  %47 = trunc i16 %46 to i8
  store i8 %47, ptr %43, align 1
  %48 = getelementptr inbounds i8, ptr %3, i32 5
  %49 = trunc i16 %45 to i8
  store i8 %49, ptr %48, align 1
  %50 = getelementptr inbounds i8, ptr %3, i32 6
  %51 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 15
  %52 = load i16, ptr %51, align 2
  %53 = lshr i16 %52, 8
  %54 = trunc i16 %53 to i8
  store i8 %54, ptr %50, align 1
  %55 = getelementptr inbounds i8, ptr %3, i32 7
  %56 = trunc i16 %52 to i8
  store i8 %56, ptr %55, align 1
  %57 = getelementptr inbounds i8, ptr %3, i32 8
  %58 = getelementptr i16, ptr %29, i32 31
  %59 = load i16, ptr %58, align 2
  %60 = lshr i16 %59, 8
  %61 = trunc i16 %60 to i8
  store i8 %61, ptr %57, align 1
  %62 = getelementptr inbounds i8, ptr %3, i32 9
  %63 = trunc i16 %59 to i8
  store i8 %63, ptr %62, align 1
  %64 = getelementptr inbounds i8, ptr %3, i32 10
  %65 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 16
  %66 = load i16, ptr %65, align 2
  %67 = lshr i16 %66, 8
  %68 = trunc i16 %67 to i8
  store i8 %68, ptr %64, align 1
  %69 = getelementptr inbounds i8, ptr %3, i32 11
  %70 = trunc i16 %66 to i8
  store i8 %70, ptr %69, align 1
  %71 = getelementptr inbounds i8, ptr %3, i32 12
  %72 = getelementptr i16, ptr %29, i32 33
  %73 = load i16, ptr %72, align 2
  %74 = lshr i16 %73, 8
  %75 = trunc i16 %74 to i8
  store i8 %75, ptr %71, align 1
  %76 = getelementptr inbounds i8, ptr %3, i32 13
  %77 = trunc i16 %73 to i8
  store i8 %77, ptr %76, align 1
  %78 = getelementptr inbounds i8, ptr %3, i32 14
  %79 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 17
  %80 = load i16, ptr %79, align 2
  %81 = lshr i16 %80, 8
  %82 = trunc i16 %81 to i8
  store i8 %82, ptr %78, align 1
  %83 = getelementptr inbounds i8, ptr %3, i32 15
  %84 = trunc i16 %80 to i8
  store i8 %84, ptr %83, align 1
  %85 = getelementptr inbounds i8, ptr %3, i32 16
  %86 = getelementptr i16, ptr %29, i32 35
  %87 = load i16, ptr %86, align 2
  %88 = lshr i16 %87, 8
  %89 = trunc i16 %88 to i8
  store i8 %89, ptr %85, align 1
  %90 = getelementptr inbounds i8, ptr %3, i32 17
  %91 = trunc i16 %87 to i8
  store i8 %91, ptr %90, align 1
  %92 = getelementptr inbounds i8, ptr %3, i32 18
  %93 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 18
  %94 = load i16, ptr %93, align 2
  %95 = lshr i16 %94, 8
  %96 = trunc i16 %95 to i8
  store i8 %96, ptr %92, align 1
  %97 = getelementptr inbounds i8, ptr %3, i32 19
  %98 = trunc i16 %94 to i8
  store i8 %98, ptr %97, align 1
  %99 = getelementptr inbounds i8, ptr %3, i32 20
  %100 = getelementptr i16, ptr %29, i32 37
  %101 = load i16, ptr %100, align 2
  %102 = lshr i16 %101, 8
  %103 = trunc i16 %102 to i8
  store i8 %103, ptr %99, align 1
  %104 = getelementptr inbounds i8, ptr %3, i32 21
  %105 = trunc i16 %101 to i8
  store i8 %105, ptr %104, align 1
  %106 = getelementptr inbounds i8, ptr %3, i32 22
  %107 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 19
  %108 = load i16, ptr %107, align 2
  %109 = lshr i16 %108, 8
  %110 = trunc i16 %109 to i8
  store i8 %110, ptr %106, align 1
  %111 = getelementptr inbounds i8, ptr %3, i32 23
  %112 = trunc i16 %108 to i8
  store i8 %112, ptr %111, align 1
  %113 = getelementptr inbounds i8, ptr %3, i32 24
  %114 = getelementptr i16, ptr %29, i32 39
  %115 = load i16, ptr %114, align 2
  %116 = lshr i16 %115, 8
  %117 = trunc i16 %116 to i8
  store i8 %117, ptr %113, align 1
  %118 = getelementptr inbounds i8, ptr %3, i32 25
  %119 = trunc i16 %115 to i8
  store i8 %119, ptr %118, align 1
  %120 = getelementptr inbounds i8, ptr %3, i32 26
  %121 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 20
  %122 = load i16, ptr %121, align 2
  %123 = lshr i16 %122, 8
  %124 = trunc i16 %123 to i8
  store i8 %124, ptr %120, align 1
  %125 = getelementptr inbounds i8, ptr %3, i32 27
  %126 = trunc i16 %122 to i8
  store i8 %126, ptr %125, align 1
  %127 = getelementptr inbounds i8, ptr %3, i32 28
  %128 = getelementptr i16, ptr %29, i32 41
  %129 = load i16, ptr %128, align 2
  %130 = lshr i16 %129, 8
  %131 = trunc i16 %130 to i8
  store i8 %131, ptr %127, align 1
  %132 = getelementptr inbounds i8, ptr %3, i32 29
  %133 = trunc i16 %129 to i8
  store i8 %133, ptr %132, align 1
  %134 = getelementptr inbounds i8, ptr %3, i32 30
  %135 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 21
  %136 = load i16, ptr %135, align 2
  %137 = lshr i16 %136, 8
  %138 = trunc i16 %137 to i8
  store i8 %138, ptr %134, align 1
  %139 = getelementptr inbounds i8, ptr %3, i32 31
  %140 = trunc i16 %136 to i8
  store i8 %140, ptr %139, align 1
  %141 = getelementptr inbounds i8, ptr %3, i32 32
  %142 = getelementptr i16, ptr %29, i32 43
  %143 = load i16, ptr %142, align 2
  %144 = lshr i16 %143, 8
  %145 = trunc i16 %144 to i8
  store i8 %145, ptr %141, align 1
  %146 = getelementptr inbounds i8, ptr %3, i32 33
  %147 = trunc i16 %143 to i8
  store i8 %147, ptr %146, align 1
  %148 = getelementptr inbounds i8, ptr %3, i32 34
  %149 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 22
  %150 = load i16, ptr %149, align 2
  %151 = lshr i16 %150, 8
  %152 = trunc i16 %151 to i8
  store i8 %152, ptr %148, align 1
  %153 = getelementptr inbounds i8, ptr %3, i32 35
  %154 = trunc i16 %150 to i8
  store i8 %154, ptr %153, align 1
  %155 = getelementptr inbounds i8, ptr %3, i32 36
  %156 = getelementptr i16, ptr %29, i32 45
  %157 = load i16, ptr %156, align 2
  %158 = lshr i16 %157, 8
  %159 = trunc i16 %158 to i8
  store i8 %159, ptr %155, align 1
  %160 = getelementptr inbounds i8, ptr %3, i32 37
  %161 = trunc i16 %157 to i8
  store i8 %161, ptr %160, align 1
  %162 = getelementptr inbounds i8, ptr %3, i32 38
  %163 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 23
  %164 = load i16, ptr %163, align 2
  %165 = lshr i16 %164, 8
  %166 = trunc i16 %165 to i8
  store i8 %166, ptr %162, align 1
  %167 = getelementptr inbounds i8, ptr %3, i32 39
  %168 = trunc i16 %164 to i8
  store i8 %168, ptr %167, align 1
  %169 = call i32 @strnlen(ptr noundef nonnull %3, i32 noundef 40) #25
  %170 = getelementptr i8, ptr %3, i32 %169
  br label %171

171:                                              ; preds = %174, %28
  %172 = phi ptr [ %170, %28 ], [ %175, %174 ]
  %173 = icmp ugt ptr %172, %3
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = getelementptr i8, ptr %172, i32 -1
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, 32
  br i1 %177, label %171, label %178

178:                                              ; preds = %174, %171
  store i8 0, ptr %172, align 1
  %179 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1
  %180 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 54
  %181 = load i16, ptr %180, align 2
  %182 = lshr i16 %181, 8
  %183 = trunc i16 %182 to i8
  store i8 %183, ptr %179, align 1
  %184 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 1
  %185 = trunc i16 %181 to i8
  store i8 %185, ptr %184, align 1
  %186 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 2
  %187 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 56
  %188 = load i16, ptr %187, align 2
  %189 = lshr i16 %188, 8
  %190 = trunc i16 %189 to i8
  store i8 %190, ptr %186, align 1
  %191 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 3
  %192 = trunc i16 %188 to i8
  store i8 %192, ptr %191, align 1
  %193 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 4
  %194 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 58
  %195 = load i16, ptr %194, align 2
  %196 = lshr i16 %195, 8
  %197 = trunc i16 %196 to i8
  store i8 %197, ptr %193, align 1
  %198 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 5
  %199 = trunc i16 %195 to i8
  store i8 %199, ptr %198, align 1
  %200 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 6
  %201 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 60
  %202 = load i16, ptr %201, align 2
  %203 = lshr i16 %202, 8
  %204 = trunc i16 %203 to i8
  store i8 %204, ptr %200, align 1
  %205 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 7
  %206 = trunc i16 %202 to i8
  store i8 %206, ptr %205, align 1
  %207 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 8
  %208 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 62
  %209 = load i16, ptr %208, align 2
  %210 = lshr i16 %209, 8
  %211 = trunc i16 %210 to i8
  store i8 %211, ptr %207, align 1
  %212 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 9
  %213 = trunc i16 %209 to i8
  store i8 %213, ptr %212, align 1
  %214 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 10
  %215 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 64
  %216 = load i16, ptr %215, align 2
  %217 = lshr i16 %216, 8
  %218 = trunc i16 %217 to i8
  store i8 %218, ptr %214, align 1
  %219 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 11
  %220 = trunc i16 %216 to i8
  store i8 %220, ptr %219, align 1
  %221 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 12
  %222 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 66
  %223 = load i16, ptr %222, align 2
  %224 = lshr i16 %223, 8
  %225 = trunc i16 %224 to i8
  store i8 %225, ptr %221, align 1
  %226 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 13
  %227 = trunc i16 %223 to i8
  store i8 %227, ptr %226, align 1
  %228 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 14
  %229 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 68
  %230 = load i16, ptr %229, align 2
  %231 = lshr i16 %230, 8
  %232 = trunc i16 %231 to i8
  store i8 %232, ptr %228, align 1
  %233 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 15
  %234 = trunc i16 %230 to i8
  store i8 %234, ptr %233, align 1
  %235 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 16
  %236 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 70
  %237 = load i16, ptr %236, align 2
  %238 = lshr i16 %237, 8
  %239 = trunc i16 %238 to i8
  store i8 %239, ptr %235, align 1
  %240 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 17
  %241 = trunc i16 %237 to i8
  store i8 %241, ptr %240, align 1
  %242 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 18
  %243 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 72
  %244 = load i16, ptr %243, align 2
  %245 = lshr i16 %244, 8
  %246 = trunc i16 %245 to i8
  store i8 %246, ptr %242, align 1
  %247 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 19
  %248 = trunc i16 %244 to i8
  store i8 %248, ptr %247, align 1
  %249 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 20
  %250 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 74
  %251 = load i16, ptr %250, align 2
  %252 = lshr i16 %251, 8
  %253 = trunc i16 %252 to i8
  store i8 %253, ptr %249, align 1
  %254 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 21
  %255 = trunc i16 %251 to i8
  store i8 %255, ptr %254, align 1
  %256 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 22
  %257 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 76
  %258 = load i16, ptr %257, align 2
  %259 = lshr i16 %258, 8
  %260 = trunc i16 %259 to i8
  store i8 %260, ptr %256, align 1
  %261 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 23
  %262 = trunc i16 %258 to i8
  store i8 %262, ptr %261, align 1
  %263 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 24
  %264 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 78
  %265 = load i16, ptr %264, align 2
  %266 = lshr i16 %265, 8
  %267 = trunc i16 %266 to i8
  store i8 %267, ptr %263, align 1
  %268 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 25
  %269 = trunc i16 %265 to i8
  store i8 %269, ptr %268, align 1
  %270 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 26
  %271 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 80
  %272 = load i16, ptr %271, align 2
  %273 = lshr i16 %272, 8
  %274 = trunc i16 %273 to i8
  store i8 %274, ptr %270, align 1
  %275 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 27
  %276 = trunc i16 %272 to i8
  store i8 %276, ptr %275, align 1
  %277 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 28
  %278 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 82
  %279 = load i16, ptr %278, align 2
  %280 = lshr i16 %279, 8
  %281 = trunc i16 %280 to i8
  store i8 %281, ptr %277, align 1
  %282 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 29
  %283 = trunc i16 %279 to i8
  store i8 %283, ptr %282, align 1
  %284 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 30
  %285 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 84
  %286 = load i16, ptr %285, align 2
  %287 = lshr i16 %286, 8
  %288 = trunc i16 %287 to i8
  store i8 %288, ptr %284, align 1
  %289 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 31
  %290 = trunc i16 %286 to i8
  store i8 %290, ptr %289, align 1
  %291 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 32
  %292 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 86
  %293 = load i16, ptr %292, align 2
  %294 = lshr i16 %293, 8
  %295 = trunc i16 %294 to i8
  store i8 %295, ptr %291, align 1
  %296 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 33
  %297 = trunc i16 %293 to i8
  store i8 %297, ptr %296, align 1
  %298 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 34
  %299 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 88
  %300 = load i16, ptr %299, align 2
  %301 = lshr i16 %300, 8
  %302 = trunc i16 %301 to i8
  store i8 %302, ptr %298, align 1
  %303 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 35
  %304 = trunc i16 %300 to i8
  store i8 %304, ptr %303, align 1
  %305 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 36
  %306 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 90
  %307 = load i16, ptr %306, align 2
  %308 = lshr i16 %307, 8
  %309 = trunc i16 %308 to i8
  store i8 %309, ptr %305, align 1
  %310 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 37
  %311 = trunc i16 %307 to i8
  store i8 %311, ptr %310, align 1
  %312 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 38
  %313 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 92
  %314 = load i16, ptr %313, align 2
  %315 = lshr i16 %314, 8
  %316 = trunc i16 %315 to i8
  store i8 %316, ptr %312, align 1
  %317 = getelementptr inbounds [2 x [41 x i8]], ptr %3, i32 0, i32 1, i32 39
  %318 = trunc i16 %314 to i8
  store i8 %318, ptr %317, align 1
  %319 = call i32 @strnlen(ptr noundef %179, i32 noundef 40) #25
  %320 = getelementptr i8, ptr %179, i32 %319
  br label %321

321:                                              ; preds = %324, %178
  %322 = phi ptr [ %320, %178 ], [ %325, %324 ]
  %323 = icmp ugt ptr %322, %179
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = getelementptr i8, ptr %322, i32 -1
  %326 = load i8, ptr %325, align 1
  %327 = icmp eq i8 %326, 32
  br i1 %327, label %321, label %328

328:                                              ; preds = %324, %321
  store i8 0, ptr %322, align 1
  %329 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 5
  %330 = load i16, ptr %329, align 2
  %331 = lshr i16 %330, 8
  %332 = trunc i16 %331 to i8
  store i8 %332, ptr %4, align 1
  %333 = getelementptr inbounds i8, ptr %4, i32 1
  %334 = trunc i16 %330 to i8
  store i8 %334, ptr %333, align 1
  %335 = getelementptr inbounds i8, ptr %4, i32 2
  %336 = getelementptr i16, ptr %29, i32 11
  %337 = load i16, ptr %336, align 2
  %338 = lshr i16 %337, 8
  %339 = trunc i16 %338 to i8
  store i8 %339, ptr %335, align 1
  %340 = getelementptr inbounds i8, ptr %4, i32 3
  %341 = trunc i16 %337 to i8
  store i8 %341, ptr %340, align 1
  %342 = getelementptr inbounds i8, ptr %4, i32 4
  %343 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 6
  %344 = load i16, ptr %343, align 2
  %345 = lshr i16 %344, 8
  %346 = trunc i16 %345 to i8
  store i8 %346, ptr %342, align 1
  %347 = getelementptr inbounds i8, ptr %4, i32 5
  %348 = trunc i16 %344 to i8
  store i8 %348, ptr %347, align 1
  %349 = getelementptr inbounds i8, ptr %4, i32 6
  %350 = getelementptr i16, ptr %29, i32 13
  %351 = load i16, ptr %350, align 2
  %352 = lshr i16 %351, 8
  %353 = trunc i16 %352 to i8
  store i8 %353, ptr %349, align 1
  %354 = getelementptr inbounds i8, ptr %4, i32 7
  %355 = trunc i16 %351 to i8
  store i8 %355, ptr %354, align 1
  %356 = getelementptr inbounds i8, ptr %4, i32 8
  %357 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 7
  %358 = load i16, ptr %357, align 2
  %359 = lshr i16 %358, 8
  %360 = trunc i16 %359 to i8
  store i8 %360, ptr %356, align 1
  %361 = getelementptr inbounds i8, ptr %4, i32 9
  %362 = trunc i16 %358 to i8
  store i8 %362, ptr %361, align 1
  %363 = getelementptr inbounds i8, ptr %4, i32 10
  %364 = getelementptr i16, ptr %29, i32 15
  %365 = load i16, ptr %364, align 2
  %366 = lshr i16 %365, 8
  %367 = trunc i16 %366 to i8
  store i8 %367, ptr %363, align 1
  %368 = getelementptr inbounds i8, ptr %4, i32 11
  %369 = trunc i16 %365 to i8
  store i8 %369, ptr %368, align 1
  %370 = getelementptr inbounds i8, ptr %4, i32 12
  %371 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 8
  %372 = load i16, ptr %371, align 2
  %373 = lshr i16 %372, 8
  %374 = trunc i16 %373 to i8
  store i8 %374, ptr %370, align 1
  %375 = getelementptr inbounds i8, ptr %4, i32 13
  %376 = trunc i16 %372 to i8
  store i8 %376, ptr %375, align 1
  %377 = getelementptr inbounds i8, ptr %4, i32 14
  %378 = getelementptr i16, ptr %29, i32 17
  %379 = load i16, ptr %378, align 2
  %380 = lshr i16 %379, 8
  %381 = trunc i16 %380 to i8
  store i8 %381, ptr %377, align 1
  %382 = getelementptr inbounds i8, ptr %4, i32 15
  %383 = trunc i16 %379 to i8
  store i8 %383, ptr %382, align 1
  %384 = getelementptr inbounds i8, ptr %4, i32 16
  %385 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 9
  %386 = load i16, ptr %385, align 2
  %387 = lshr i16 %386, 8
  %388 = trunc i16 %387 to i8
  store i8 %388, ptr %384, align 1
  %389 = getelementptr inbounds i8, ptr %4, i32 17
  %390 = trunc i16 %386 to i8
  store i8 %390, ptr %389, align 1
  %391 = getelementptr inbounds i8, ptr %4, i32 18
  %392 = getelementptr i16, ptr %29, i32 19
  %393 = load i16, ptr %392, align 2
  %394 = lshr i16 %393, 8
  %395 = trunc i16 %394 to i8
  store i8 %395, ptr %391, align 1
  %396 = getelementptr inbounds i8, ptr %4, i32 19
  %397 = trunc i16 %393 to i8
  store i8 %397, ptr %396, align 1
  %398 = call i32 @strnlen(ptr noundef nonnull %4, i32 noundef 20) #25
  %399 = getelementptr i8, ptr %4, i32 %398
  br label %400

400:                                              ; preds = %403, %328
  %401 = phi ptr [ %399, %328 ], [ %404, %403 ]
  %402 = icmp ugt ptr %401, %4
  br i1 %402, label %403, label %407

403:                                              ; preds = %400
  %404 = getelementptr i8, ptr %401, i32 -1
  %405 = load i8, ptr %404, align 1
  %406 = icmp eq i8 %405, 32
  br i1 %406, label %400, label %407

407:                                              ; preds = %403, %400
  store i8 0, ptr %401, align 1
  %408 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1
  %409 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 20
  %410 = load i16, ptr %409, align 2
  %411 = lshr i16 %410, 8
  %412 = trunc i16 %411 to i8
  store i8 %412, ptr %408, align 1
  %413 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 1
  %414 = trunc i16 %410 to i8
  store i8 %414, ptr %413, align 1
  %415 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 2
  %416 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 22
  %417 = load i16, ptr %416, align 2
  %418 = lshr i16 %417, 8
  %419 = trunc i16 %418 to i8
  store i8 %419, ptr %415, align 1
  %420 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 3
  %421 = trunc i16 %417 to i8
  store i8 %421, ptr %420, align 1
  %422 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 4
  %423 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 24
  %424 = load i16, ptr %423, align 2
  %425 = lshr i16 %424, 8
  %426 = trunc i16 %425 to i8
  store i8 %426, ptr %422, align 1
  %427 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 5
  %428 = trunc i16 %424 to i8
  store i8 %428, ptr %427, align 1
  %429 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 6
  %430 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 26
  %431 = load i16, ptr %430, align 2
  %432 = lshr i16 %431, 8
  %433 = trunc i16 %432 to i8
  store i8 %433, ptr %429, align 1
  %434 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 7
  %435 = trunc i16 %431 to i8
  store i8 %435, ptr %434, align 1
  %436 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 8
  %437 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 28
  %438 = load i16, ptr %437, align 2
  %439 = lshr i16 %438, 8
  %440 = trunc i16 %439 to i8
  store i8 %440, ptr %436, align 1
  %441 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 9
  %442 = trunc i16 %438 to i8
  store i8 %442, ptr %441, align 1
  %443 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 10
  %444 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 30
  %445 = load i16, ptr %444, align 2
  %446 = lshr i16 %445, 8
  %447 = trunc i16 %446 to i8
  store i8 %447, ptr %443, align 1
  %448 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 11
  %449 = trunc i16 %445 to i8
  store i8 %449, ptr %448, align 1
  %450 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 12
  %451 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 32
  %452 = load i16, ptr %451, align 2
  %453 = lshr i16 %452, 8
  %454 = trunc i16 %453 to i8
  store i8 %454, ptr %450, align 1
  %455 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 13
  %456 = trunc i16 %452 to i8
  store i8 %456, ptr %455, align 1
  %457 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 14
  %458 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 34
  %459 = load i16, ptr %458, align 2
  %460 = lshr i16 %459, 8
  %461 = trunc i16 %460 to i8
  store i8 %461, ptr %457, align 1
  %462 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 15
  %463 = trunc i16 %459 to i8
  store i8 %463, ptr %462, align 1
  %464 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 16
  %465 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 36
  %466 = load i16, ptr %465, align 2
  %467 = lshr i16 %466, 8
  %468 = trunc i16 %467 to i8
  store i8 %468, ptr %464, align 1
  %469 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 17
  %470 = trunc i16 %466 to i8
  store i8 %470, ptr %469, align 1
  %471 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 18
  %472 = getelementptr %struct.ata_port, ptr %9, i32 0, i32 50, i32 38
  %473 = load i16, ptr %472, align 2
  %474 = lshr i16 %473, 8
  %475 = trunc i16 %474 to i8
  store i8 %475, ptr %471, align 1
  %476 = getelementptr inbounds [2 x [21 x i8]], ptr %4, i32 0, i32 1, i32 19
  %477 = trunc i16 %473 to i8
  store i8 %477, ptr %476, align 1
  %478 = call i32 @strnlen(ptr noundef %408, i32 noundef 20) #25
  %479 = getelementptr i8, ptr %408, i32 %478
  br label %480

480:                                              ; preds = %483, %407
  %481 = phi ptr [ %479, %407 ], [ %484, %483 ]
  %482 = icmp ugt ptr %481, %408
  br i1 %482, label %483, label %487

483:                                              ; preds = %480
  %484 = getelementptr i8, ptr %481, i32 -1
  %485 = load i8, ptr %484, align 1
  %486 = icmp eq i8 %485, 32
  br i1 %486, label %480, label %487

487:                                              ; preds = %483, %480
  store i8 0, ptr %481, align 1
  %488 = call i32 @strcmp(ptr noundef nonnull %3, ptr noundef %179) #25
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %501, label %490

490:                                              ; preds = %487
  %491 = load ptr, ptr %0, align 64
  %492 = load ptr, ptr %491, align 64
  %493 = getelementptr inbounds %struct.ata_port, ptr %492, i32 0, i32 5
  %494 = load i32, ptr %493, align 4
  %495 = getelementptr inbounds %struct.ata_link, ptr %491, i32 0, i32 1
  %496 = load i32, ptr %495, align 4
  %497 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %498 = load i32, ptr %497, align 4
  %499 = add i32 %498, %496
  %500 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, i32 noundef %494, i32 noundef %499, ptr noundef nonnull %3, ptr noundef %179) #26
  br label %515

501:                                              ; preds = %487
  %502 = call i32 @strcmp(ptr noundef nonnull %4, ptr noundef %408) #25
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %516, label %504

504:                                              ; preds = %501
  %505 = load ptr, ptr %0, align 64
  %506 = load ptr, ptr %505, align 64
  %507 = getelementptr inbounds %struct.ata_port, ptr %506, i32 0, i32 5
  %508 = load i32, ptr %507, align 4
  %509 = getelementptr inbounds %struct.ata_link, ptr %505, i32 0, i32 1
  %510 = load i32, ptr %509, align 4
  %511 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %512 = load i32, ptr %511, align 4
  %513 = add i32 %512, %510
  %514 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, i32 noundef %508, i32 noundef %513, ptr noundef nonnull %4, ptr noundef %408) #26
  br label %515

515:                                              ; preds = %504, %490, %17
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %3) #25
  br label %517

516:                                              ; preds = %501
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 82, ptr nonnull %3) #25
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 64 dereferenceable(512) %29, ptr noundef align 2 dereferenceable(512) %10, i32 512, i1 false)
  br label %517

517:                                              ; preds = %516, %515, %2
  %518 = phi i32 [ 0, %516 ], [ %11, %2 ], [ -19, %515 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret i32 %518
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_dev_revalidate(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 7
  %5 = load i64, ptr %4, align 16
  %6 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 8
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 9
  %9 = load i32, ptr %8, align 64
  switch i32 %9, label %101 [
    i32 7, label %10
    i32 5, label %10
    i32 3, label %10
    i32 1, label %10
    i32 9, label %10
  ]

10:                                               ; preds = %3, %3, %3, %3, %3
  %11 = icmp eq i32 %1, 5
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 64
  %14 = load ptr, ptr %13, align 64
  %15 = getelementptr inbounds %struct.ata_port, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ata_link, ptr %13, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, i32 noundef %16, i32 noundef %21, i32 noundef %9, i32 noundef 5) #26
  br label %89

23:                                               ; preds = %10
  %24 = tail call i32 @ata_dev_reread_id(ptr noundef %0, i32 noundef %2)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %89

26:                                               ; preds = %23
  %27 = tail call i32 @ata_dev_configure(ptr noundef %0)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %26
  %30 = load i32, ptr %8, align 64
  %31 = icmp eq i32 %30, 1
  %32 = icmp ne i64 %5, 0
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %34, label %101

34:                                               ; preds = %29
  %35 = load i64, ptr %4, align 16
  %36 = icmp eq i64 %35, %5
  br i1 %36, label %101, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %0, align 64
  %39 = load ptr, ptr %38, align 64
  %40 = getelementptr inbounds %struct.ata_port, ptr %39, i32 0, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ata_link, ptr %38, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %41, i32 noundef %46, i64 noundef %5, i64 noundef %35) #26
  %48 = load i64, ptr %6, align 8
  %49 = icmp eq i64 %48, %7
  br i1 %49, label %50, label %87

50:                                               ; preds = %37
  %51 = load i64, ptr %4, align 16
  %52 = icmp ugt i64 %51, %5
  %53 = icmp eq i64 %51, %7
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load ptr, ptr %0, align 64
  %57 = load ptr, ptr %56, align 64
  %58 = getelementptr inbounds %struct.ata_port, ptr %57, i32 0, i32 5
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.ata_link, ptr %56, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %44, align 4
  %63 = add i32 %62, %61
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %59, i32 noundef %63) #26
  br label %101

65:                                               ; preds = %50
  %66 = icmp ult i64 %51, %5
  %67 = icmp eq i64 %5, %7
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 16
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load ptr, ptr %0, align 64
  %76 = load ptr, ptr %75, align 64
  %77 = getelementptr inbounds %struct.ata_port, ptr %76, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.ata_link, ptr %75, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %44, align 4
  %82 = add i32 %81, %80
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, i32 noundef %78, i32 noundef %82) #26
  %84 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = or i32 %85, 262144
  store i32 %86, ptr %84, align 4
  br label %87

87:                                               ; preds = %74, %69, %65, %37
  %88 = phi i32 [ -5, %74 ], [ -19, %69 ], [ -19, %65 ], [ -19, %37 ]
  store i64 %7, ptr %6, align 8
  store i64 %5, ptr %4, align 16
  br label %89

89:                                               ; preds = %87, %26, %23, %12
  %90 = phi i32 [ -19, %12 ], [ %24, %23 ], [ %27, %26 ], [ %88, %87 ]
  %91 = load ptr, ptr %0, align 64
  %92 = load ptr, ptr %91, align 64
  %93 = getelementptr inbounds %struct.ata_port, ptr %92, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.ata_link, ptr %91, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %96
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %94, i32 noundef %99, i32 noundef %90) #26
  br label %101

101:                                              ; preds = %89, %55, %34, %29, %3
  %102 = phi i32 [ %90, %89 ], [ 0, %55 ], [ 0, %34 ], [ 0, %29 ], [ -19, %3 ]
  ret i32 %102
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @atapi_check_dma(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_device, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 2048
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22, !prof !10

14:                                               ; preds = %9, %1
  %15 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ata_port_operations, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 %18(ptr noundef %0) #25
  br label %22

22:                                               ; preds = %20, %14, %9
  %23 = phi i32 [ %21, %20 ], [ 1, %9 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_noop_qc_prep(ptr nocapture readnone %0) #6 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ata_qc_new_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 16
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %47, !prof !10

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @ata_sas_allocate_tag(ptr noundef %4) #25
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %14, %9
  %18 = phi i32 [ %15, %14 ], [ %1, %9 ]
  %19 = icmp ult i32 %18, 33
  %20 = getelementptr %struct.ata_port, ptr %4, i32 0, i32 19, i32 %18
  %21 = select i1 %19, ptr %20, ptr null
  %22 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 8
  store i32 %18, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 7
  store i32 %18, ptr %23, align 4
  %24 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 2
  store ptr null, ptr %24, align 4
  store ptr %4, ptr %21, align 4
  %25 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 1
  store ptr %0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 11
  store i32 3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 17
  %28 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 6
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 15
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 14
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 13
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 9
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %27, i8 0, i64 16, i1 false) #25
  store i32 512, ptr %33, align 4
  %34 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %34, i8 0, i32 24, i1 false) #25
  %35 = load ptr, ptr %0, align 64
  %36 = load ptr, ptr %35, align 64
  %37 = getelementptr inbounds %struct.ata_port, ptr %36, i32 0, i32 9
  %38 = load i8, ptr %37, align 4
  %39 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 4, i32 2
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i8 -96, i8 -80
  %44 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 4, i32 13
  store i8 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 21, i32 14
  store i8 64, ptr %45, align 1
  %46 = getelementptr inbounds %struct.ata_queued_cmd, ptr %21, i32 0, i32 21, i32 8
  store i8 0, ptr %46, align 1
  br label %47

47:                                               ; preds = %17, %14, %2
  %48 = phi ptr [ %21, %17 ], [ null, %2 ], [ null, %14 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sas_allocate_tag(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sas_free_tag(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ata_qc_complete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = load i1, ptr @__ata_qc_complete.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %1
  store i1 true, ptr @__ata_qc_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4634, i32 noundef 9, ptr noundef null) #25
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  %12 = load i1, ptr @__ata_qc_complete.__already_done.78, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %17, !prof !11

15:                                               ; preds = %7
  store i1 true, ptr @__ata_qc_complete.__already_done.78, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4635, i32 noundef 9, ptr noundef null) #25
  %16 = load i32, ptr %8, align 4
  br label %17

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %16, %15 ], [ %9, %7 ]
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 64
  %23 = and i32 %18, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %47, label %25, !prof !11

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq ptr %27, null
  %31 = load i1, ptr @ata_sg_clean.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %25
  store i1 true, ptr @ata_sg_clean.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 4499, i32 noundef 9, ptr noundef null) #25
  br label %35

35:                                               ; preds = %34, %25
  %36 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 32
  %41 = load ptr, ptr %40, align 32
  %42 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %41, ptr noundef %27, i32 noundef %43, i32 noundef %29, i32 noundef 0) #25
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, ptr %8, align 4
  %46 = and i32 %45, -3
  store i32 %46, ptr %8, align 4
  store ptr null, ptr %26, align 4
  br label %47

47:                                               ; preds = %44, %17
  %48 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %49 = load i8, ptr %48, align 4
  %50 = and i8 %49, 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 8
  %54 = load i32, ptr %53, align 4
  %55 = shl nuw i32 1, %54
  %56 = xor i32 %55, -1
  %57 = getelementptr inbounds %struct.ata_link, ptr %22, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, %56
  store i32 %59, ptr %57, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %67

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct.ata_link, ptr %22, i32 0, i32 3
  store i32 -84148995, ptr %62, align 32
  br label %63

63:                                               ; preds = %61, %52
  %64 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 22
  %65 = load i32, ptr %64, align 32
  %66 = add i32 %65, -1
  store i32 %66, ptr %64, align 32
  br label %67

67:                                               ; preds = %63, %52
  %68 = load i32, ptr %8, align 4
  %69 = and i32 %68, 32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 29
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %22
  br i1 %74, label %75, label %77, !prof !11

75:                                               ; preds = %71
  store ptr null, ptr %72, align 4
  %76 = load i32, ptr %8, align 4
  br label %77

77:                                               ; preds = %75, %71, %67
  %78 = phi i32 [ %68, %67 ], [ %76, %75 ], [ %68, %71 ]
  %79 = and i32 %78, -2
  store i32 %79, ptr %8, align 4
  %80 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = zext i32 %81 to i64
  %83 = shl nuw i64 1, %82
  %84 = xor i64 %83, -1
  %85 = getelementptr inbounds %struct.ata_port, ptr %19, i32 0, i32 21
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, %84
  store i64 %87, ptr %85, align 8
  %88 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 22
  %89 = load ptr, ptr %88, align 4
  tail call void %89(ptr noundef %0) #25
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ata_qc_complete_internal(ptr noundef %0) unnamed_addr #19 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_complete_internal, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #25
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !26
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_complete_internal, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #25
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !27
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_ata_qc_complete_failed(ptr noundef %0) unnamed_addr #19 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_complete_failed, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #25
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !28
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ata_qc_complete_failed, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #25
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !29
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_schedule_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_schedule_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @ata_verify_xfer(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_queued_cmd, ptr %0, i32 0, i32 4, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 3
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 19
  %10 = load i32, ptr %9, align 32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 20
  %14 = load i32, ptr %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = and i8 %5, 1
  %17 = icmp ne i8 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %26, label %22

19:                                               ; preds = %8
  %20 = and i8 %5, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %12
  %23 = getelementptr inbounds %struct.ata_device, ptr %3, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -65537
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %22, %19, %12, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @ata_qc_get_active(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 4294967296
  %5 = icmp eq i64 %4, 0
  %6 = and i64 %3, -4294967298
  %7 = or i64 %6, 1
  %8 = select i1 %5, i64 %3, i64 %7
  ret i64 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_link_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ata_phys_link_online(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = call i32 @sata_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 15
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi i1 [ false, %9 ], [ true, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sas_port_suspend(ptr noundef %0) #0 {
  tail call fastcc void @ata_port_request_pm(ptr noundef %0, [1 x i32] [i32 2], i32 noundef 0, i32 noundef 28, i1 noundef zeroext true) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sas_port_resume(ptr noundef %0) #0 {
  tail call fastcc void @ata_port_request_pm(ptr noundef %0, [1 x i32] [i32 16], i32 noundef 6, i32 noundef 12, i1 noundef zeroext true) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_host_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #5 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11
  store i32 %3, ptr %6, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ata_host_resume(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11
  store i32 0, ptr %4, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_dev_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 26
  %5 = load ptr, ptr %4, align 64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25
  %12 = select i1 %10, ptr %11, ptr %5
  %13 = load ptr, ptr %12, align 64
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi ptr [ %3, %1 ], [ %13, %7 ]
  %16 = phi ptr [ %2, %1 ], [ %12, %7 ]
  %17 = getelementptr inbounds %struct.ata_link, ptr %16, i32 0, i32 7
  %18 = load i32, ptr %17, align 16
  %19 = getelementptr inbounds %struct.ata_link, ptr %16, i32 0, i32 8
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ata_link, ptr %16, i32 0, i32 9
  store i32 0, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #25
  %24 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -16777216
  store i32 %26, ptr %24, align 4
  %27 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 2
  store i32 0, ptr %27, align 8
  %28 = load ptr, ptr %21, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %23) #25
  %29 = getelementptr i8, ptr %0, i32 496
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(712) %29, i8 0, i32 712, i1 false)
  %30 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 18
  store i32 -1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 19
  store i32 -1, ptr %31, align 32
  %32 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 20
  store i32 -1, ptr %32, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_link_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 480
  %5 = getelementptr i8, ptr %1, i32 484
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(416) %5, i8 0, i32 412, i1 false)
  store ptr %0, ptr %1, align 64
  %6 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 1
  store i32 %2, ptr %6, align 4
  store i32 -84148995, ptr %4, align 32
  %7 = getelementptr inbounds %struct.ata_link, ptr %1, i32 0, i32 7
  store i32 -1, ptr %7, align 16
  %8 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 0
  store ptr %1, ptr %8, align 64
  %9 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 26
  %11 = load ptr, ptr %10, align 64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %15 = load ptr, ptr %14, align 64
  %16 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 7
  %17 = load i32, ptr %16, align 16
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i32 [ -1, %3 ], [ %17, %13 ]
  %20 = phi ptr [ %0, %3 ], [ %15, %13 ]
  %21 = phi ptr [ %1, %3 ], [ %14, %13 ]
  %22 = getelementptr inbounds %struct.ata_link, ptr %21, i32 0, i32 8
  store i32 %19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ata_link, ptr %21, i32 0, i32 9
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %25) #25
  %27 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -16777216
  store i32 %29, ptr %27, align 4
  %30 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 0, i32 2
  store i32 0, ptr %30, align 8
  %31 = load ptr, ptr %24, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %26) #25
  %32 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 0, i32 7
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(712) %32, i8 0, i32 712, i1 false) #25
  %33 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 0, i32 18
  store i32 -1, ptr %33, align 4
  %34 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 0, i32 19
  store i32 -1, ptr %34, align 32
  %35 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 0, i32 20
  store i32 -1, ptr %35, align 4
  %36 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 1
  store ptr %1, ptr %36, align 64
  %37 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 1, i32 1
  store i32 1, ptr %37, align 4
  %38 = load ptr, ptr %1, align 64
  %39 = getelementptr inbounds %struct.ata_port, ptr %38, i32 0, i32 26
  %40 = load ptr, ptr %39, align 64
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %18
  %43 = load ptr, ptr %40, align 64
  br label %44

44:                                               ; preds = %42, %18
  %45 = phi ptr [ %38, %18 ], [ %43, %42 ]
  %46 = phi ptr [ %1, %18 ], [ %40, %42 ]
  %47 = getelementptr inbounds %struct.ata_link, ptr %46, i32 0, i32 7
  %48 = load i32, ptr %47, align 16
  %49 = getelementptr inbounds %struct.ata_link, ptr %46, i32 0, i32 8
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ata_link, ptr %46, i32 0, i32 9
  store i32 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %52) #25
  %54 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 1, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, -16777216
  store i32 %56, ptr %54, align 4
  %57 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 1, i32 2
  store i32 0, ptr %57, align 8
  %58 = load ptr, ptr %51, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %53) #25
  %59 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 1, i32 7
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(712) %59, i8 0, i32 712, i1 false) #25
  %60 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 1, i32 18
  store i32 -1, ptr %60, align 4
  %61 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 1, i32 19
  store i32 -1, ptr %61, align 32
  %62 = getelementptr %struct.ata_link, ptr %1, i32 0, i32 14, i32 1, i32 20
  store i32 -1, ptr %62, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_link_init_spd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 6
  %3 = tail call i32 @sata_scr_read(ptr noundef %0, i32 noundef 2, ptr noundef %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %122

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 240
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = lshr i32 %6, 4
  %11 = and i32 %10, 15
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 16
  %16 = and i32 %15, %13
  store i32 %16, ptr %14, align 16
  br label %17

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %0, align 64
  %21 = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 25
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ata_port, ptr %20, i32 0, i32 26
  %25 = load ptr, ptr %24, align 64
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %17
  %28 = add i32 %19, 15
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %28, %27 ], [ %19, %23 ]
  %31 = load i32, ptr @ata_force_tbl_size, align 4
  %32 = add i32 %31, -1
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %118

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 7
  %36 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 5
  br label %37

37:                                               ; preds = %114, %34
  %38 = phi i32 [ %32, %34 ], [ %116, %114 ]
  %39 = phi i1 [ false, %34 ], [ %115, %114 ]
  %40 = load ptr, ptr @ata_force_tbl, align 4
  %41 = getelementptr %struct.ata_force_ent, ptr %40, i32 %38
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %0, align 64
  %46 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %114

49:                                               ; preds = %44, %37
  %50 = getelementptr %struct.ata_force_ent, ptr %40, i32 %38, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, -1
  %53 = icmp eq i32 %51, %30
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %55, label %114

55:                                               ; preds = %49
  br i1 %39, label %84, label %56

56:                                               ; preds = %55
  %57 = getelementptr %struct.ata_force_ent, ptr %40, i32 %38, i32 2
  %58 = getelementptr %struct.ata_force_ent, ptr %40, i32 %38, i32 2, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %56
  %62 = zext i8 %59 to i32
  %63 = shl nsw i32 -1, %62
  %64 = xor i32 %63, -1
  store i32 %64, ptr %35, align 16
  %65 = load ptr, ptr %0, align 64
  %66 = getelementptr inbounds %struct.ata_port, ptr %65, i32 0, i32 27
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.ata_port, ptr %65, i32 0, i32 26
  %71 = load ptr, ptr %70, align 64
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %69, %61
  %74 = getelementptr inbounds %struct.ata_port, ptr %65, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %18, align 4
  %77 = load ptr, ptr %57, align 4
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.461, i32 noundef %75, i32 noundef %76, ptr noundef %77) #26
  br label %84

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.ata_port, ptr %65, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = load ptr, ptr %57, align 4
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.462, i32 noundef %81, ptr noundef %82) #26
  br label %84

84:                                               ; preds = %79, %73, %56, %55
  %85 = phi i1 [ true, %55 ], [ false, %56 ], [ true, %79 ], [ true, %73 ]
  %86 = getelementptr %struct.ata_force_ent, ptr %40, i32 %38, i32 2, i32 6
  %87 = load i16, ptr %86, align 4
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %114, label %89

89:                                               ; preds = %84
  %90 = zext i16 %87 to i32
  %91 = load i32, ptr %36, align 8
  %92 = or i32 %91, %90
  store i32 %92, ptr %36, align 8
  %93 = load ptr, ptr %0, align 64
  %94 = getelementptr inbounds %struct.ata_port, ptr %93, i32 0, i32 27
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.ata_port, ptr %93, i32 0, i32 26
  %99 = load ptr, ptr %98, align 64
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %97, %89
  %102 = getelementptr inbounds %struct.ata_port, ptr %93, i32 0, i32 5
  %103 = load i32, ptr %102, align 4
  %104 = load i32, ptr %18, align 4
  %105 = load i16, ptr %86, align 4
  %106 = zext i16 %105 to i32
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.463, i32 noundef %103, i32 noundef %104, i32 noundef %106, i32 noundef %92) #26
  br label %114

108:                                              ; preds = %97
  %109 = getelementptr inbounds %struct.ata_port, ptr %93, i32 0, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = load i16, ptr %86, align 4
  %112 = zext i16 %111 to i32
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.464, i32 noundef %110, i32 noundef %112, i32 noundef %92) #26
  br label %114

114:                                              ; preds = %108, %101, %84, %49, %44
  %115 = phi i1 [ %39, %44 ], [ %39, %49 ], [ %85, %101 ], [ %85, %108 ], [ %85, %84 ]
  %116 = add i32 %38, -1
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %37, label %118

118:                                              ; preds = %114, %29
  %119 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 7
  %120 = load i32, ptr %119, align 16
  %121 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 8
  store i32 %120, ptr %121, align 4
  br label %122

122:                                              ; preds = %118, %1
  %123 = phi i32 [ 0, %118 ], [ %3, %1 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ata_port_alloc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 11392, i32 noundef 3520, i32 noundef 2) #27
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 4
  %6 = load i32, ptr %5, align 16
  %7 = or i32 %6, 132
  store i32 %7, ptr %5, align 16
  %8 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 2
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 5
  store i32 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 6
  store i32 -1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 31
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 32
  store ptr %13, ptr %14, align 32
  %15 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 34
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.83, ptr noundef nonnull @ata_port_alloc.__key) #25
  %16 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 35
  store i32 -32, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 35, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 8
  %18 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 35, i32 0, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 35, i32 0, i32 2
  store ptr @ata_scsi_hotplug, ptr %19, align 32
  %20 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 35, i32 1
  tail call void @init_timer_key(ptr noundef %20, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #25
  %21 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 36
  store i32 -32, ptr %21, align 512
  %22 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 36, i32 1
  store volatile ptr %22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 36, i32 1, i32 1
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 36, i32 2
  store ptr @ata_scsi_dev_rescan, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 38
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 38, i32 1
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 39
  tail call void @__init_waitqueue_head(ptr noundef %27, ptr noundef nonnull @.str.85, ptr noundef nonnull @ata_port_alloc.__key.84) #25
  %28 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 41
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 41, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %29, ptr noundef nonnull @.str.465, ptr noundef nonnull @init_completion.__key) #25
  %30 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 44
  tail call void @init_timer_key(ptr noundef %30, ptr noundef nonnull @ata_eh_fastdrain_timerfn, i32 noundef 524288, ptr noundef null, ptr noundef null) #25
  %31 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 18
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 25
  tail call void @ata_link_init(ptr noundef nonnull %2, ptr noundef %32, i32 noundef 0)
  tail call void @ata_sff_port_init(ptr noundef nonnull %2) #25
  br label %33

33:                                               ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_hotplug(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_dev_rescan(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_fastdrain_timerfn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_port_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_host_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #25, !srcloc !30
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #25, !srcloc !31
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !11

6:                                                ; preds = %1
  %7 = add i32 %4, 1
  %8 = or i32 %7, %4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %12, label %10, !prof !10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ 2, %1 ], [ 1, %6 ]
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef %11) #25
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_host_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #25, !srcloc !30
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #25, !srcloc !33
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %27, label %8, !prof !10

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #25
  br label %27

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !34
  %10 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.ata_host, ptr %0, i32 1
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %23, %15 ]
  %17 = getelementptr [0 x ptr], ptr %14, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 28
  %20 = load ptr, ptr %19, align 8
  tail call void @kfree(ptr noundef %20) #25
  %21 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 26
  %22 = load ptr, ptr %21, align 64
  tail call void @kfree(ptr noundef %22) #25
  tail call void @kfree(ptr noundef %18) #25
  store ptr null, ptr %17, align 4
  %23 = add nuw i32 %16, 1
  %24 = load i32, ptr %10, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %15, label %26

26:                                               ; preds = %15, %9
  tail call void @kfree(ptr noundef %0) #25
  br label %27

27:                                               ; preds = %26, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ata_host_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 2
  %4 = add i32 %3, 68
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #27
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @devres_open_group(ptr noundef %0, ptr noundef null, i32 noundef 3264) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @ata_devres_release, i32 noundef 0, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.86) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %10
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %11) #25
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %5, ptr %14, align 8
  store i32 0, ptr %5, align 64
  %15 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %15, ptr noundef nonnull @.str.87, ptr noundef nonnull @ata_host_alloc.__key) #25
  %16 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 1
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 3
  store i32 %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 8
  store volatile i32 1, ptr %18, align 32
  %19 = icmp sgt i32 %1, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %24, %13
  %21 = phi i32 [ %27, %24 ], [ 0, %13 ]
  %22 = tail call ptr @ata_port_alloc(ptr noundef nonnull %5)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.ata_port, ptr %22, i32 0, i32 7
  store i32 %21, ptr %25, align 4
  %26 = getelementptr %struct.ata_host, ptr %5, i32 0, i32 12, i32 %21
  store ptr %22, ptr %26, align 4
  %27 = add nuw nsw i32 %21, 1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %29, label %20

29:                                               ; preds = %24, %13
  tail call void @devres_remove_group(ptr noundef %0, ptr noundef null) #25
  br label %33

30:                                               ; preds = %20, %10
  %31 = tail call i32 @devres_release_group(ptr noundef %0, ptr noundef null) #25
  br label %32

32:                                               ; preds = %30, %7
  tail call void @kfree(ptr noundef nonnull %5) #25
  br label %33

33:                                               ; preds = %32, %29, %2
  %34 = phi ptr [ null, %32 ], [ %5, %29 ], [ null, %2 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ata_devres_release(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %19, %2
  %9 = phi i32 [ %20, %19 ], [ %6, %2 ]
  %10 = phi i32 [ %21, %19 ], [ 0, %2 ]
  %11 = getelementptr %struct.ata_host, ptr %4, i32 0, i32 12, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  tail call void @scsi_host_put(ptr noundef nonnull %15) #25
  %18 = load i32, ptr %5, align 4
  br label %19

19:                                               ; preds = %17, %14, %8
  %20 = phi i32 [ %9, %14 ], [ %18, %17 ], [ %9, %8 ]
  %21 = add nuw i32 %10, 1
  %22 = icmp ult i32 %21, %20
  br i1 %22, label %8, label %23

23:                                               ; preds = %19, %2
  store ptr null, ptr %3, align 8
  tail call void @ata_host_put(ptr noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ata_host_alloc_pinfo(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = tail call ptr @ata_host_alloc(ptr noundef %0, i32 noundef %2)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 6
  br label %12

12:                                               ; preds = %52, %10
  %13 = phi i32 [ 0, %10 ], [ %24, %52 ]
  %14 = phi i32 [ 0, %10 ], [ %53, %52 ]
  %15 = phi ptr [ null, %10 ], [ %21, %52 ]
  %16 = getelementptr %struct.ata_host, ptr %4, i32 0, i32 12, i32 %14
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %1, i32 %13
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %15, ptr %19
  %22 = xor i1 %20, true
  %23 = zext i1 %22 to i32
  %24 = add i32 %13, %23
  %25 = getelementptr inbounds %struct.ata_port_info, ptr %21, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 15
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.ata_port_info, ptr %21, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 16
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.ata_port_info, ptr %21, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 17
  store i32 %32, ptr %33, align 32
  %34 = load i32, ptr %21, align 4
  %35 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, ptr %35, align 4
  %38 = getelementptr inbounds %struct.ata_port_info, ptr %21, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 25, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = or i32 %41, %39
  store i32 %42, ptr %40, align 8
  %43 = getelementptr inbounds %struct.ata_port_info, ptr %21, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.ata_port, ptr %17, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  %46 = load ptr, ptr %11, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %12
  %49 = load ptr, ptr %43, align 4
  %50 = icmp eq ptr %49, @ata_dummy_port_ops
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store ptr %49, ptr %11, align 4
  br label %52

52:                                               ; preds = %51, %48, %12
  %53 = add nuw i32 %14, 1
  %54 = load i32, ptr %7, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %12, label %56

56:                                               ; preds = %52, %6, %3
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_host_start(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %179

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 60
  %10 = icmp eq ptr %8, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %9, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %46, label %14

14:                                               ; preds = %11
  tail call void @_raw_spin_lock(ptr noundef nonnull @ata_finalize_port_ops.lock) #25
  %15 = load ptr, ptr %9, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %30, %14
  %18 = phi ptr [ %32, %30 ], [ %15, %14 ]
  br label %19

19:                                               ; preds = %26, %17
  %20 = phi ptr [ %18, %17 ], [ %28, %26 ]
  %21 = phi ptr [ %8, %17 ], [ %27, %26 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load ptr, ptr %20, align 4
  store ptr %25, ptr %21, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = getelementptr ptr, ptr %21, i32 1
  %28 = getelementptr ptr, ptr %20, i32 1
  %29 = icmp ult ptr %27, %9
  br i1 %29, label %19, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 60
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %17

34:                                               ; preds = %30, %14
  br label %35

35:                                               ; preds = %40, %34
  %36 = phi ptr [ %41, %40 ], [ %8, %34 ]
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store ptr null, ptr %36, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr ptr, ptr %36, i32 1
  %42 = icmp ult ptr %41, %9
  br i1 %42, label %35, label %43

43:                                               ; preds = %40
  store ptr null, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !35
  %44 = load i16, ptr @ata_finalize_port_ops.lock, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr @ata_finalize_port_ops.lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !38
  br label %46

46:                                               ; preds = %43, %11, %6
  %47 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %113, label %50

50:                                               ; preds = %101, %46
  %51 = phi i32 [ %108, %101 ], [ 0, %46 ]
  %52 = phi i32 [ %107, %101 ], [ 0, %46 ]
  %53 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %51
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.ata_port, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ata_port_operations, ptr %56, i32 0, i32 60
  %58 = icmp eq ptr %56, null
  br i1 %58, label %94, label %59

59:                                               ; preds = %50
  %60 = load ptr, ptr %57, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %94, label %62

62:                                               ; preds = %59
  tail call void @_raw_spin_lock(ptr noundef nonnull @ata_finalize_port_ops.lock) #25
  %63 = load ptr, ptr %57, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %78, %62
  %66 = phi ptr [ %80, %78 ], [ %63, %62 ]
  br label %67

67:                                               ; preds = %74, %65
  %68 = phi ptr [ %66, %65 ], [ %76, %74 ]
  %69 = phi ptr [ %56, %65 ], [ %75, %74 ]
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load ptr, ptr %68, align 4
  store ptr %73, ptr %69, align 4
  br label %74

74:                                               ; preds = %72, %67
  %75 = getelementptr ptr, ptr %69, i32 1
  %76 = getelementptr ptr, ptr %68, i32 1
  %77 = icmp ult ptr %75, %57
  br i1 %77, label %67, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ata_port_operations, ptr %66, i32 0, i32 60
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %65

82:                                               ; preds = %78, %62
  br label %83

83:                                               ; preds = %88, %82
  %84 = phi ptr [ %89, %88 ], [ %56, %82 ]
  %85 = load ptr, ptr %84, align 4
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store ptr null, ptr %84, align 4
  br label %88

88:                                               ; preds = %87, %83
  %89 = getelementptr ptr, ptr %84, i32 1
  %90 = icmp ult ptr %89, %57
  br i1 %90, label %83, label %91

91:                                               ; preds = %88
  store ptr null, ptr %57, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !35
  %92 = load i16, ptr @ata_finalize_port_ops.lock, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr @ata_finalize_port_ops.lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !38
  br label %94

94:                                               ; preds = %91, %59, %50
  %95 = load ptr, ptr %7, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load ptr, ptr %55, align 4
  %99 = icmp eq ptr %98, @ata_dummy_port_ops
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store ptr %98, ptr %7, align 4
  br label %101

101:                                              ; preds = %100, %97, %94
  %102 = phi ptr [ %98, %100 ], [ null, %97 ], [ %95, %94 ]
  %103 = load ptr, ptr %55, align 4
  %104 = getelementptr inbounds %struct.ata_port_operations, ptr %103, i32 0, i32 35
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  %107 = select i1 %106, i32 %52, i32 1
  %108 = add nuw i32 %51, 1
  %109 = load i32, ptr %47, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %50, label %111

111:                                              ; preds = %101
  %112 = icmp eq ptr %102, null
  br i1 %112, label %125, label %116

113:                                              ; preds = %46
  %114 = load ptr, ptr %7, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %162, label %116

116:                                              ; preds = %113, %111
  %117 = phi i32 [ 0, %113 ], [ %107, %111 ]
  %118 = phi ptr [ %114, %113 ], [ %102, %111 ]
  %119 = phi i32 [ 0, %113 ], [ %109, %111 ]
  %120 = getelementptr inbounds %struct.ata_port_operations, ptr %118, i32 0, i32 36
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  %123 = icmp eq i32 %117, 0
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %132, label %127

125:                                              ; preds = %111
  %126 = icmp eq i32 %107, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %125, %116
  %128 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @ata_host_stop, i32 noundef 0, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.88) #25
  %129 = icmp eq ptr %128, null
  br i1 %129, label %179, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr %47, align 4
  br label %132

132:                                              ; preds = %130, %125, %116
  %133 = phi i32 [ %131, %130 ], [ %109, %125 ], [ %119, %116 ]
  %134 = phi ptr [ %128, %130 ], [ null, %125 ], [ null, %116 ]
  %135 = icmp eq i32 %133, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %153, %132
  %137 = phi i32 [ %154, %153 ], [ 0, %132 ]
  %138 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %137
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.ata_port, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.ata_port_operations, ptr %141, i32 0, i32 34
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %153, label %145

145:                                              ; preds = %136
  %146 = tail call i32 %143(ptr noundef %139) #25
  switch i32 %146, label %147 [
    i32 0, label %153
    i32 -19, label %150
  ]

147:                                              ; preds = %145
  %148 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.89, i32 noundef %137, i32 noundef %146) #26
  br label %150

150:                                              ; preds = %147, %145
  %151 = add i32 %137, -1
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %165, label %178

153:                                              ; preds = %145, %136
  tail call void @ata_eh_freeze_port(ptr noundef %139) #25
  %154 = add nuw i32 %137, 1
  %155 = load i32, ptr %47, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %136, label %157

157:                                              ; preds = %153, %132
  %158 = icmp eq ptr %134, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  tail call void @devres_add(ptr noundef %161, ptr noundef nonnull %134) #25
  br label %162

162:                                              ; preds = %159, %157, %113
  %163 = load i32, ptr %2, align 4
  %164 = or i32 %163, 2
  store i32 %164, ptr %2, align 4
  br label %179

165:                                              ; preds = %175, %150
  %166 = phi i32 [ %176, %175 ], [ %151, %150 ]
  %167 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %166
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.ata_port, ptr %168, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.ata_port_operations, ptr %170, i32 0, i32 35
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %165
  tail call void %172(ptr noundef %168) #25
  br label %175

175:                                              ; preds = %174, %165
  %176 = add i32 %166, -1
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %165, label %178

178:                                              ; preds = %175, %150
  tail call void @devres_free(ptr noundef %134) #25
  br label %179

179:                                              ; preds = %178, %162, %127, %1
  %180 = phi i32 [ %146, %178 ], [ 0, %162 ], [ 0, %1 ], [ -12, %127 ]
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ata_host_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 5536, i32 noundef 9, ptr noundef null) #25
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %26, %10
  %15 = phi i32 [ %27, %26 ], [ %12, %10 ]
  %16 = phi i32 [ %28, %26 ], [ 0, %10 ]
  %17 = getelementptr %struct.ata_host, ptr %4, i32 0, i32 12, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_port, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ata_port_operations, ptr %20, i32 0, i32 35
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  tail call void %22(ptr noundef %18) #25
  %25 = load i32, ptr %11, align 4
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %25, %24 ], [ %15, %14 ]
  %28 = add nuw i32 %16, 1
  %29 = icmp ult i32 %28, %27
  br i1 %29, label %14, label %30

30:                                               ; preds = %26, %10
  %31 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.ata_port_operations, ptr %32, i32 0, i32 36
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void %34(ptr noundef %4) #25
  br label %37

37:                                               ; preds = %36, %30
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_eh_freeze_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_host_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  store i32 0, ptr %0, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %4, ptr noundef nonnull @.str.87, ptr noundef nonnull @ata_host_init.__key) #25
  %5 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 4
  store i32 32, ptr %5, align 4
  %6 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  store ptr %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 6
  store ptr %2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 8
  store volatile i32 1, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__ata_port_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #25
  %5 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = or i32 %6, 3
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 6
  store i32 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 12
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %15 = load i32, ptr %14, align 16
  %16 = and i32 %15, -145
  %17 = or i32 %16, 16
  store i32 %17, ptr %14, align 16
  tail call void @ata_port_schedule_eh(ptr noundef %0) #25
  %18 = load ptr, ptr %2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %4) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_port_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #25
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 3
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 6
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 11, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 12
  store i32 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %21 = load i32, ptr %20, align 16
  %22 = and i32 %21, -145
  %23 = or i32 %22, 16
  store i32 %23, ptr %20, align 16
  tail call void @ata_port_schedule_eh(ptr noundef %0) #25
  %24 = load ptr, ptr %8, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %10) #25
  tail call void @ata_port_wait_eh(ptr noundef %0) #25
  br label %27

25:                                               ; preds = %1
  %26 = tail call i32 @ata_bus_probe(ptr noundef %0)
  br label %27

27:                                               ; preds = %25, %7
  %28 = phi i32 [ 0, %7 ], [ %26, %25 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_wait_eh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_host_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scsi_host_template, ptr %1, i32 0, i32 34
  %4 = load i32, ptr %3, align 8
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 32)
  %7 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 4
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.90) #26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 5779, i32 noundef 9, ptr noundef null) #25
  br label %156

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %26

21:                                               ; preds = %26
  %22 = load i32, ptr %16, align 4
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi i32 [ %22, %21 ], [ %17, %15 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %60, label %37

26:                                               ; preds = %26, %15
  %27 = phi ptr [ %31, %26 ], [ %19, %15 ]
  %28 = phi i32 [ %29, %26 ], [ %17, %15 ]
  tail call void @kfree(ptr noundef nonnull %27) #25
  %29 = add i32 %28, 1
  %30 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %29
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %21, label %26

33:                                               ; preds = %37
  %34 = icmp eq i32 %47, 0
  br i1 %34, label %60, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  br label %49

37:                                               ; preds = %37, %23
  %38 = phi i32 [ %44, %37 ], [ 0, %23 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ata_print_id) #25, !srcloc !30
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ata_print_id, ptr nonnull @ata_print_id, i32 1, ptr nonnull elementtype(i32) @ata_print_id) #25, !srcloc !40
  %40 = extractvalue { i32, i32 } %39, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !41
  %41 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %38
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.ata_port, ptr %42, i32 0, i32 5
  store i32 %40, ptr %43, align 4
  %44 = add nuw i32 %38, 1
  %45 = load ptr, ptr %41, align 4
  %46 = getelementptr inbounds %struct.ata_port, ptr %45, i32 0, i32 6
  store i32 %44, ptr %46, align 8
  %47 = load i32, ptr %16, align 4
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %37, label %33

49:                                               ; preds = %56, %35
  %50 = phi i32 [ 0, %35 ], [ %57, %56 ]
  %51 = load ptr, ptr %36, align 4
  %52 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %50
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @ata_tport_add(ptr noundef %51, ptr noundef %53) #25
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %145

56:                                               ; preds = %49
  %57 = add nuw i32 %50, 1
  %58 = load i32, ptr %16, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %49, label %60

60:                                               ; preds = %56, %33, %23
  %61 = phi i32 [ 0, %33 ], [ 0, %23 ], [ %57, %56 ]
  %62 = tail call i32 @ata_scsi_add_hosts(ptr noundef %0, ptr noundef %1) #25
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %145

64:                                               ; preds = %60
  %65 = load i32, ptr %16, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %156, label %69

67:                                               ; preds = %132
  %68 = icmp eq i32 %134, 0
  br i1 %68, label %156, label %136

69:                                               ; preds = %132, %64
  %70 = phi i32 [ %133, %132 ], [ 0, %64 ]
  %71 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %70
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 18
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 6, ptr %73, align 4
  br label %82

82:                                               ; preds = %81, %76, %69
  %83 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 25
  %84 = tail call i32 @sata_link_init_spd(ptr noundef %83)
  %85 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 26
  %86 = load ptr, ptr %85, align 64
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = tail call i32 @sata_link_init_spd(ptr noundef nonnull %86)
  br label %90

90:                                               ; preds = %88, %82
  %91 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, @ata_dummy_port_ops
  br i1 %93, label %128, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 16
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 7
  %98 = and i32 %97, 3968
  %99 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 15
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 127
  %102 = or i32 %98, %101
  %103 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 17
  %104 = load i32, ptr %103, align 32
  %105 = shl i32 %104, 12
  %106 = and i32 %105, 1044480
  %107 = or i32 %102, %106
  %108 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 5
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 3
  %111 = load i32, ptr %110, align 4
  %112 = and i32 %111, 2
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %113, i32 80, i32 83
  %115 = icmp eq i32 %107, 0
  %116 = tail call i32 @llvm.ctlz.i32(i32 %107, i1 false) #25, !range !16
  %117 = sub nsw i32 31, %116
  %118 = select i1 %115, i32 -1, i32 %117
  %119 = icmp ult i32 %118, 20
  br i1 %119, label %120, label %123

120:                                              ; preds = %94
  %121 = getelementptr [20 x ptr], ptr @ata_mode_string.xfer_mode_str, i32 0, i32 %118
  %122 = load ptr, ptr %121, align 4
  br label %123

123:                                              ; preds = %120, %94
  %124 = phi ptr [ %122, %120 ], [ @.str.25, %94 ]
  %125 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 25, i32 11
  %126 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 25, i32 11, i32 7
  %127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %109, i32 noundef %114, ptr noundef %124, ptr noundef %126) #26
  tail call void @ata_ehi_clear_desc(ptr noundef %125) #25
  br label %132

128:                                              ; preds = %90
  %129 = getelementptr inbounds %struct.ata_port, ptr %72, i32 0, i32 5
  %130 = load i32, ptr %129, align 4
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %130) #26
  br label %132

132:                                              ; preds = %128, %123
  %133 = add nuw i32 %70, 1
  %134 = load i32, ptr %16, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %69, label %67

136:                                              ; preds = %136, %67
  %137 = phi i32 [ %142, %136 ], [ 0, %67 ]
  %138 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %137
  %139 = load ptr, ptr %138, align 4
  %140 = tail call i64 @async_schedule_node(ptr noundef nonnull @async_port_probe, ptr noundef %139, i32 noundef -1) #25
  %141 = getelementptr inbounds %struct.ata_port, ptr %139, i32 0, i32 46
  store i64 %140, ptr %141, align 32
  %142 = add nuw i32 %137, 1
  %143 = load i32, ptr %16, align 4
  %144 = icmp ult i32 %142, %143
  br i1 %144, label %136, label %156

145:                                              ; preds = %60, %49
  %146 = phi i32 [ %61, %60 ], [ %50, %49 ]
  %147 = phi i32 [ %62, %60 ], [ %54, %49 ]
  %148 = add i32 %146, -1
  %149 = icmp sgt i32 %148, -1
  br i1 %149, label %150, label %156

150:                                              ; preds = %150, %145
  %151 = phi i32 [ %154, %150 ], [ %148, %145 ]
  %152 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %151
  %153 = load ptr, ptr %152, align 4
  tail call void @ata_tport_delete(ptr noundef %153) #25
  %154 = add nsw i32 %151, -1
  %155 = icmp sgt i32 %151, 0
  br i1 %155, label %150, label %156

156:                                              ; preds = %150, %145, %136, %67, %64, %12
  %157 = phi i32 [ -22, %12 ], [ %147, %145 ], [ 0, %67 ], [ 0, %64 ], [ 0, %136 ], [ %147, %150 ]
  ret i32 %157
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_tport_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_add_hosts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @async_port_probe(ptr noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @async_synchronize_cookie(i64 noundef %1) #25
  br label %14

14:                                               ; preds = %13, %9, %2
  %15 = tail call i32 @ata_port_probe(ptr noundef %0)
  tail call void @async_synchronize_cookie(i64 noundef %1) #25
  tail call void @ata_scsi_scan_host(ptr noundef %0, i32 noundef 1) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tport_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_host_activate(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 {
  %6 = tail call i32 @ata_host_start(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %49

8:                                                ; preds = %5
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = icmp eq ptr %2, null
  br i1 %11, label %13, label %12, !prof !10

12:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 5889, i32 noundef 9, ptr noundef null) #25
  br label %13

13:                                               ; preds = %12, %10
  %14 = tail call i32 @ata_host_register(ptr noundef %0, ptr noundef %4)
  br label %49

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @dev_driver_string(ptr noundef %17) #25
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load ptr, ptr %19, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi ptr [ %24, %23 ], [ %21, %15 ]
  %27 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %17, i32 noundef 3264, ptr noundef nonnull @.str.93, ptr noundef %18, ptr noundef %26) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %16, align 4
  %31 = tail call i32 @devm_request_threaded_irq(ptr noundef %30, i32 noundef %1, ptr noundef %2, ptr noundef null, i32 noundef %3, ptr noundef nonnull %27, ptr noundef %0) #25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %37, %33
  %38 = phi i32 [ %41, %37 ], [ 0, %33 ]
  %39 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %38
  %40 = load ptr, ptr %39, align 4
  tail call void (ptr, ptr, ...) @ata_port_desc(ptr noundef %40, ptr noundef nonnull @.str.94, i32 noundef %1) #25
  %41 = add nuw i32 %38, 1
  %42 = load i32, ptr %34, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %37, label %44

44:                                               ; preds = %37, %33
  %45 = tail call i32 @ata_host_register(ptr noundef %0, ptr noundef %4)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %16, align 4
  tail call void @devm_free_irq(ptr noundef %48, i32 noundef %1, ptr noundef %0) #25
  br label %49

49:                                               ; preds = %47, %44, %29, %25, %13, %5
  %50 = phi i32 [ %14, %13 ], [ %6, %5 ], [ -12, %25 ], [ %31, %29 ], [ %45, %47 ], [ 0, %44 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_host_detach(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ata_host, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %123, label %5

5:                                                ; preds = %118, %1
  %6 = phi i32 [ %120, %118 ], [ 0, %1 ]
  %7 = getelementptr %struct.ata_host, ptr %0, i32 0, i32 12, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 46
  %10 = load i64, ptr %9, align 32
  %11 = add i64 %10, 1
  tail call void @async_synchronize_cookie(i64 noundef %11) #25
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.ata_port_operations, ptr %14, i32 0, i32 22
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #25
  %22 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 4
  %23 = load i32, ptr %22, align 16
  %24 = or i32 %23, 512
  store i32 %24, ptr %22, align 16
  tail call void @ata_port_schedule_eh(ptr noundef %12) #25
  %25 = load ptr, ptr %19, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %25, i32 noundef %21) #25
  tail call void @ata_port_wait_eh(ptr noundef %12) #25
  %26 = load i32, ptr %22, align 16
  %27 = and i32 %26, 1024
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !11

29:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 5946, i32 noundef 9, ptr noundef null) #25
  br label %30

30:                                               ; preds = %29, %18
  %31 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 35
  %32 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %31) #25
  br label %33

33:                                               ; preds = %30, %5
  %34 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 25
  %35 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 26
  %36 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 28
  %37 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 27
  br label %38

38:                                               ; preds = %81, %33
  %39 = phi ptr [ %34, %33 ], [ %82, %81 ]
  %40 = getelementptr inbounds %struct.ata_link, ptr %39, i32 0, i32 14
  %41 = load ptr, ptr %39, align 64
  %42 = getelementptr inbounds %struct.ata_port, ptr %41, i32 0, i32 25
  %43 = icmp eq ptr %42, %39
  %44 = getelementptr inbounds %struct.ata_port, ptr %41, i32 0, i32 26
  %45 = getelementptr inbounds %struct.ata_port, ptr %41, i32 0, i32 3
  br label %46

46:                                               ; preds = %57, %38
  %47 = phi ptr [ %40, %38 ], [ %48, %57 ]
  %48 = getelementptr %struct.ata_device, ptr %47, i32 1
  br i1 %43, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %44, align 64
  %51 = icmp eq ptr %50, %39
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %46
  %53 = load i32, ptr %45, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %49
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32 [ 1, %56 ], [ 2, %52 ]
  %59 = getelementptr %struct.ata_device, ptr %40, i32 %58
  %60 = icmp uge ptr %48, %59
  %61 = icmp eq ptr %48, null
  %62 = or i1 %61, %60
  br i1 %62, label %63, label %46

63:                                               ; preds = %57
  %64 = icmp eq ptr %34, %39
  br i1 %64, label %65, label %72

65:                                               ; preds = %63
  %66 = load i32, ptr %37, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %36, align 8
  br label %81

70:                                               ; preds = %65
  %71 = load ptr, ptr %35, align 64
  br label %81

72:                                               ; preds = %63
  %73 = load ptr, ptr %35, align 64
  %74 = icmp eq ptr %73, %39
  br i1 %74, label %84, label %75, !prof !11

75:                                               ; preds = %72
  %76 = getelementptr %struct.ata_link, ptr %39, i32 1
  %77 = load ptr, ptr %36, align 8
  %78 = load i32, ptr %37, align 4
  %79 = getelementptr %struct.ata_link, ptr %77, i32 %78
  %80 = icmp ult ptr %76, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75, %70, %68
  %82 = phi ptr [ %69, %68 ], [ %71, %70 ], [ %76, %75 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %38

84:                                               ; preds = %81, %72
  %85 = load ptr, ptr %36, align 8
  br label %86

86:                                               ; preds = %84, %75
  %87 = phi ptr [ %85, %84 ], [ %77, %75 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %118, label %89

89:                                               ; preds = %86
  tail call void @ata_tlink_delete(ptr noundef nonnull %87) #25
  %90 = load ptr, ptr %36, align 8
  %91 = getelementptr %struct.ata_link, ptr %90, i32 1
  tail call void @ata_tlink_delete(ptr noundef %91) #25
  %92 = load ptr, ptr %36, align 8
  %93 = getelementptr %struct.ata_link, ptr %92, i32 2
  tail call void @ata_tlink_delete(ptr noundef %93) #25
  %94 = load ptr, ptr %36, align 8
  %95 = getelementptr %struct.ata_link, ptr %94, i32 3
  tail call void @ata_tlink_delete(ptr noundef %95) #25
  %96 = load ptr, ptr %36, align 8
  %97 = getelementptr %struct.ata_link, ptr %96, i32 4
  tail call void @ata_tlink_delete(ptr noundef %97) #25
  %98 = load ptr, ptr %36, align 8
  %99 = getelementptr %struct.ata_link, ptr %98, i32 5
  tail call void @ata_tlink_delete(ptr noundef %99) #25
  %100 = load ptr, ptr %36, align 8
  %101 = getelementptr %struct.ata_link, ptr %100, i32 6
  tail call void @ata_tlink_delete(ptr noundef %101) #25
  %102 = load ptr, ptr %36, align 8
  %103 = getelementptr %struct.ata_link, ptr %102, i32 7
  tail call void @ata_tlink_delete(ptr noundef %103) #25
  %104 = load ptr, ptr %36, align 8
  %105 = getelementptr %struct.ata_link, ptr %104, i32 8
  tail call void @ata_tlink_delete(ptr noundef %105) #25
  %106 = load ptr, ptr %36, align 8
  %107 = getelementptr %struct.ata_link, ptr %106, i32 9
  tail call void @ata_tlink_delete(ptr noundef %107) #25
  %108 = load ptr, ptr %36, align 8
  %109 = getelementptr %struct.ata_link, ptr %108, i32 10
  tail call void @ata_tlink_delete(ptr noundef %109) #25
  %110 = load ptr, ptr %36, align 8
  %111 = getelementptr %struct.ata_link, ptr %110, i32 11
  tail call void @ata_tlink_delete(ptr noundef %111) #25
  %112 = load ptr, ptr %36, align 8
  %113 = getelementptr %struct.ata_link, ptr %112, i32 12
  tail call void @ata_tlink_delete(ptr noundef %113) #25
  %114 = load ptr, ptr %36, align 8
  %115 = getelementptr %struct.ata_link, ptr %114, i32 13
  tail call void @ata_tlink_delete(ptr noundef %115) #25
  %116 = load ptr, ptr %36, align 8
  %117 = getelementptr %struct.ata_link, ptr %116, i32 14
  tail call void @ata_tlink_delete(ptr noundef %117) #25
  br label %118

118:                                              ; preds = %89, %86
  %119 = load ptr, ptr %12, align 64
  tail call void @scsi_remove_host(ptr noundef %119) #25
  tail call void @ata_tport_delete(ptr noundef %12) #25
  %120 = add nuw i32 %6, 1
  %121 = load i32, ptr %2, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %5, label %123

123:                                              ; preds = %118, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_cookie(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_pci_remove_one(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @ata_host_detach(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_pci_shutdown_one(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %27, %1
  %8 = phi i32 [ %28, %27 ], [ 0, %1 ]
  %9 = getelementptr %struct.ata_host, ptr %3, i32 0, i32 12, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 16
  %13 = or i32 %12, 4
  store i32 %13, ptr %11, align 16
  %14 = getelementptr inbounds %struct.ata_port, ptr %10, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ata_port_operations, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %7
  tail call void %17(ptr noundef %10) #25
  %20 = load ptr, ptr %14, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi ptr [ %20, %19 ], [ %15, %7 ]
  %23 = getelementptr inbounds %struct.ata_port_operations, ptr %22, i32 0, i32 35
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void %24(ptr noundef %10) #25
  br label %27

27:                                               ; preds = %26, %21
  %28 = add nuw i32 %8, 1
  %29 = load i32, ptr %4, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %7, label %31

31:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_test_config_bits(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.pci_bits, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %31 [
    i32 1, label %8
    i32 2, label %13
    i32 4, label %18
  ]

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #25
  store i8 0, ptr %3, align 1
  %9 = load i32, ptr %1, align 4
  %10 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %3) #25
  %11 = load i8, ptr %3, align 1
  %12 = zext i8 %11 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  br label %22

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2
  %14 = load i32, ptr %1, align 4
  %15 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %4) #25
  %16 = load i16, ptr %4, align 2
  %17 = zext i16 %16 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  br label %22

18:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4
  %19 = load i32, ptr %1, align 4
  %20 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %19, ptr noundef nonnull %5) #25
  %21 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %22

22:                                               ; preds = %18, %13, %8
  %23 = phi i32 [ %21, %18 ], [ %17, %13 ], [ %12, %8 ]
  %24 = getelementptr inbounds %struct.pci_bits, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, %23
  %27 = getelementptr inbounds %struct.pci_bits, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %22, %2
  %32 = phi i32 [ %30, %22 ], [ -22, %2 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_pci_device_do_suspend(ptr noundef %0, [1 x i32] %1) #0 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = tail call i32 @pci_save_state(ptr noundef %0) #25
  tail call void @pci_disable_device(ptr noundef %0) #25
  %5 = and i32 %3, 6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @pci_set_power_state(ptr noundef %0, i32 noundef 3) #25
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_device_do_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @pci_set_power_state(ptr noundef %0, i32 noundef 0) #25
  tail call void @pci_restore_state(ptr noundef %0) #25
  %3 = tail call i32 @pcim_enable_device(ptr noundef %0) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.95, i32 noundef %3) #26
  br label %8

7:                                                ; preds = %1
  tail call void @pci_set_master(ptr noundef %0) #25
  br label %8

8:                                                ; preds = %7, %5
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_device_suspend(ptr noundef %0, [1 x i32] %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = extractvalue [1 x i32] %1, 0
  %6 = getelementptr inbounds %struct.ata_host, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11
  store i32 %5, ptr %8, align 8
  %9 = tail call i32 @pci_save_state(ptr noundef %0) #25
  tail call void @pci_disable_device(ptr noundef %0) #25
  %10 = and i32 %5, 6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = tail call i32 @pci_set_power_state(ptr noundef %0, i32 noundef 3) #25
  br label %14

14:                                               ; preds = %12, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_pci_device_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pci_set_power_state(ptr noundef %0, i32 noundef 0) #25
  tail call void @pci_restore_state(ptr noundef %0) #25
  %5 = tail call i32 @pcim_enable_device(ptr noundef %0) #25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.95, i32 noundef %5) #26
  br label %13

9:                                                ; preds = %1
  tail call void @pci_set_master(ptr noundef %0) #25
  %10 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11
  store i32 0, ptr %12, align 8
  br label %13

13:                                               ; preds = %9, %7
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_platform_remove_one(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @ata_host_detach(ptr noundef %3)
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ata_exit() #20 section ".exit.text" {
  %1 = load ptr, ptr @ata_scsi_transport_template, align 4
  tail call void @ata_release_transport(ptr noundef %1) #25
  tail call void @libata_transport_exit() #26
  tail call void @ata_sff_exit() #25
  %2 = load ptr, ptr @ata_force_tbl, align 4
  tail call void @kfree(ptr noundef %2) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_release_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @libata_transport_exit() local_unnamed_addr #4 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_sff_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ata_init() #20 section ".init.text" {
  tail call fastcc void @ata_parse_force_param() #29
  %1 = tail call i32 @ata_sff_init() #25
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @ata_force_tbl, align 4
  tail call void @kfree(ptr noundef %4) #25
  br label %12

5:                                                ; preds = %0
  %6 = tail call i32 @libata_transport_init() #26
  %7 = tail call ptr @ata_attach_transport() #25
  store ptr %7, ptr @ata_scsi_transport_template, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @ata_sff_exit() #25
  br label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.466) #26
  br label %12

12:                                               ; preds = %10, %9, %3
  %13 = phi i32 [ %1, %3 ], [ 0, %10 ], [ -12, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_ratelimit() #0 {
  %1 = tail call i32 @___ratelimit(ptr noundef nonnull @ratelimit, ptr noundef nonnull @__func__.ata_ratelimit) #25
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_wait_register(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #25, !srcloc !42
  tail call void asm sideeffect "dsb ", "~{memory}"() #25, !srcloc !43
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #25
  %10 = and i32 %7, %2
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %44

12:                                               ; preds = %6
  %13 = add i32 %9, %8
  %14 = icmp eq ptr %0, null
  %15 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %16 = icmp ult i32 %4, 20
  %17 = mul nuw nsw i32 %4, 1000
  %18 = add nuw nsw i32 %17, 50
  %19 = load volatile i32, ptr @jiffies, align 64
  %20 = sub i32 %19, %13
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %44

22:                                               ; preds = %40
  %23 = load volatile i32, ptr @jiffies, align 64
  %24 = sub i32 %23, %13
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22, %12
  br i1 %14, label %34, label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr inbounds %struct.ata_host, ptr %28, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = tail call ptr @llvm.thread.pointer() #25
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  tail call void @ata_eh_release(ptr noundef nonnull %0) #25
  br label %34

34:                                               ; preds = %33, %27, %26
  %35 = phi i1 [ true, %33 ], [ false, %27 ], [ false, %26 ]
  br i1 %16, label %36, label %37

36:                                               ; preds = %34
  tail call void @usleep_range_state(i32 noundef %17, i32 noundef %18, i32 noundef 2) #25
  br label %38

37:                                               ; preds = %34
  tail call void @msleep(i32 noundef %4) #25
  br label %38

38:                                               ; preds = %37, %36
  br i1 %35, label %39, label %40

39:                                               ; preds = %38
  tail call void @ata_eh_acquire(ptr noundef %0) #25
  br label %40

40:                                               ; preds = %39, %38
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #25, !srcloc !42
  tail call void asm sideeffect "dsb ", "~{memory}"() #25, !srcloc !43
  %42 = and i32 %41, %2
  %43 = icmp eq i32 %42, %3
  br i1 %43, label %22, label %44

44:                                               ; preds = %40, %22, %12, %6
  %45 = phi i32 [ %7, %6 ], [ %7, %12 ], [ %41, %22 ], [ %41, %40 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @ata_dummy_qc_issue(ptr nocapture noundef readnone %0) #6 {
  ret i32 64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @ata_dummy_error_handler(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_print_version(ptr noundef %0, ptr noundef %1) #0 {
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.96, ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %1) #26
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_qc_issue_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %65

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 17
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %19, ptr noundef nonnull @trace_raw_output_ata_qc_issue_template.symbols) #25
  %21 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 4
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %23, ptr noundef nonnull @trace_raw_output_ata_qc_issue_template.symbols.128) #25
  %25 = load i8, ptr %21, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 10
  %27 = load i8, ptr %26, align 2
  %28 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 14
  %29 = load i8, ptr %28, align 2
  %30 = tail call ptr @libata_trace_parse_subcmd(ptr noundef %9, i8 noundef zeroext %25, i8 noundef zeroext %27, i8 noundef zeroext %29) #25
  %31 = load i8, ptr %21, align 4
  %32 = zext i8 %31 to i32
  %33 = load i8, ptr %26, align 2
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 9
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 6
  %39 = load i8, ptr %38, align 2
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 7
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 8
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 15
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, ptr %28, align 2
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 11
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 12
  %56 = load i8, ptr %55, align 4
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 13
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.trace_event_raw_ata_qc_issue_template, ptr %5, i32 0, i32 5
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.118, i32 noundef %12, i32 noundef %14, i32 noundef %16, ptr noundef %20, ptr noundef %24, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef %37, i32 noundef %40, i32 noundef %43, i32 noundef %46, i32 noundef %49, i32 noundef %51, i32 noundef %54, i32 noundef %57, i32 noundef %60, i32 noundef %63) #25
  %64 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %65

65:                                               ; preds = %8, %3
  %66 = phi i32 [ %64, %8 ], [ %6, %3 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libata_trace_parse_subcmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_qc_complete_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %59

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @libata_trace_parse_qc_flags(ptr noundef %9, i32 noundef %18) #25
  %20 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = tail call ptr @libata_trace_parse_status(ptr noundef %9, i8 noundef zeroext %21) #25
  %23 = load i8, ptr %20, align 4
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 10
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 9
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 6
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 7
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 8
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 15
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 14
  %44 = load i8, ptr %43, align 2
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 11
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 12
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 13
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.trace_event_raw_ata_qc_complete_template, ptr %5, i32 0, i32 5
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.224, i32 noundef %12, i32 noundef %14, i32 noundef %16, ptr noundef %19, ptr noundef %22, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %54, i32 noundef %57) #25
  %58 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %59

59:                                               ; preds = %8, %3
  %60 = phi i32 [ %58, %8 ], [ %6, %3 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libata_trace_parse_qc_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libata_trace_parse_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_tf_load(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %61

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 14
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %15, ptr noundef nonnull @trace_raw_output_ata_tf_load.symbols) #25
  %17 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %19, ptr noundef nonnull @trace_raw_output_ata_tf_load.symbols.226) #25
  %21 = load i8, ptr %17, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 8
  %23 = load i8, ptr %22, align 2
  %24 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 12
  %25 = load i8, ptr %24, align 2
  %26 = tail call ptr @libata_trace_parse_subcmd(ptr noundef %9, i8 noundef zeroext %21, i8 noundef zeroext %23, i8 noundef zeroext %25) #25
  %27 = load i8, ptr %17, align 4
  %28 = zext i8 %27 to i32
  %29 = load i8, ptr %22, align 2
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 4
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 6
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 13
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, ptr %24, align 2
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 9
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 10
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 11
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.trace_event_raw_ata_tf_load, ptr %5, i32 0, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.225, i32 noundef %12, ptr noundef %16, ptr noundef %20, ptr noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %47, i32 noundef %50, i32 noundef %53, i32 noundef %56, i32 noundef %59) #25
  %60 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %61

61:                                               ; preds = %8, %3
  %62 = phi i32 [ %60, %8 ], [ %6, %3 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_exec_command_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %5, i32 0, i32 6
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %17, ptr noundef nonnull @trace_raw_output_ata_exec_command_template.symbols) #25
  %19 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %5, i32 0, i32 3
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %21, ptr noundef nonnull @trace_raw_output_ata_exec_command_template.symbols.228) #25
  %23 = load i8, ptr %19, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %5, i32 0, i32 4
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.trace_event_raw_ata_exec_command_template, ptr %5, i32 0, i32 5
  %27 = load i8, ptr %26, align 2
  %28 = tail call ptr @libata_trace_parse_subcmd(ptr noundef %9, i8 noundef zeroext %23, i8 noundef zeroext %25, i8 noundef zeroext %27) #25
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.227, i32 noundef %12, i32 noundef %14, ptr noundef %18, ptr noundef %22, ptr noundef %28) #25
  %29 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %30

30:                                               ; preds = %8, %3
  %31 = phi i32 [ %29, %8 ], [ %6, %3 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_bmdma_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_bmdma_status, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_bmdma_status, ptr %5, i32 0, i32 3
  %14 = load i8, ptr %13, align 4
  %15 = tail call ptr @libata_trace_parse_host_stat(ptr noundef %9, i8 noundef zeroext %14) #25
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.230, i32 noundef %12, ptr noundef %15) #25
  %16 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libata_trace_parse_host_stat(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_eh_link_autopsy(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @libata_trace_parse_eh_action(ptr noundef %9, i32 noundef %16) #25
  %18 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @libata_trace_parse_eh_err_mask(ptr noundef %9, i32 noundef %19) #25
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.233, i32 noundef %12, i32 noundef %14, ptr noundef %17, ptr noundef %20) #25
  %21 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libata_trace_parse_eh_action(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libata_trace_parse_eh_err_mask(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_eh_link_autopsy_qc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @libata_trace_parse_qc_flags(ptr noundef %9, i32 noundef %18) #25
  %20 = getelementptr inbounds %struct.trace_event_raw_ata_eh_link_autopsy_qc, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @libata_trace_parse_eh_err_mask(ptr noundef %9, i32 noundef %21) #25
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.235, i32 noundef %12, i32 noundef %14, i32 noundef %16, ptr noundef %19, ptr noundef %22) #25
  %23 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_eh_action_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_eh_action_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_eh_action_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_eh_action_template, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @libata_trace_parse_eh_action(ptr noundef %9, i32 noundef %16) #25
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.236, i32 noundef %12, i32 noundef %14, ptr noundef %17) #25
  %18 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_link_reset_begin_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_begin_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_begin_template, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_begin_template, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_ata_link_reset_begin_template.symbols) #25
  %18 = getelementptr %struct.trace_event_raw_ata_link_reset_begin_template, ptr %5, i32 0, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %19, ptr noundef nonnull @trace_raw_output_ata_link_reset_begin_template.symbols.253) #25
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.240, i32 noundef %12, i32 noundef %14, ptr noundef %17, ptr noundef %20) #25
  %21 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_link_reset_end_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_end_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_end_template, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_link_reset_end_template, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_ata_link_reset_end_template.symbols) #25
  %18 = getelementptr %struct.trace_event_raw_ata_link_reset_end_template, ptr %5, i32 0, i32 2, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %19, ptr noundef nonnull @trace_raw_output_ata_link_reset_end_template.symbols.257) #25
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.256, i32 noundef %12, i32 noundef %14, ptr noundef %17, ptr noundef %20) #25
  %21 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_port_eh_begin_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_ata_port_eh_begin_template, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.258, i32 noundef %11) #25
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #25
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_sff_hsm_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %18, ptr noundef nonnull @trace_raw_output_ata_sff_hsm_template.symbols) #25
  %20 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @libata_trace_parse_qc_flags(ptr noundef %9, i32 noundef %21) #25
  %23 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %5, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %24, ptr noundef nonnull @trace_raw_output_ata_sff_hsm_template.symbols.263) #25
  %26 = getelementptr inbounds %struct.trace_event_raw_ata_sff_hsm_template, ptr %5, i32 0, i32 7
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.262, i32 noundef %12, i32 noundef %14, i32 noundef %16, ptr noundef %19, ptr noundef %22, ptr noundef %25, i32 noundef %28) #25
  %29 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %30

30:                                               ; preds = %8, %3
  %31 = phi i32 [ %29, %8 ], [ %6, %3 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_transfer_data_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @libata_trace_parse_tf_flags(ptr noundef %9, i32 noundef %18) #25
  %20 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_ata_transfer_data_template, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.271, i32 noundef %12, i32 noundef %14, i32 noundef %16, ptr noundef %19, i32 noundef %21, i32 noundef %23) #25
  %24 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @libata_trace_parse_tf_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_ata_sff_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #25
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_ata_sff_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_ata_sff_template, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %15, ptr noundef nonnull @trace_raw_output_ata_sff_template.symbols) #25
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.272, i32 noundef %12, ptr noundef %16) #25
  %17 = tail call i32 @trace_handle_return(ptr noundef %10) #25
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ata_identify_page_supported(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 64
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 268435456
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %58

9:                                                ; preds = %2
  %10 = and i32 %6, 536870912
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 50
  %14 = tail call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %13, i32 noundef 1) #25
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr %struct.ata_port, ptr %4, i32 0, i32 50, i32 96
  %18 = load i16, ptr %17, align 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16, %12, %9
  %21 = getelementptr %struct.ata_device, ptr %0, i32 0, i32 25, i32 0, i32 40
  %22 = load i16, ptr %21, align 2
  %23 = icmp eq i16 %22, -1
  %24 = and i16 %22, 31744
  %25 = icmp eq i16 %24, 0
  %26 = or i1 %23, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %0, align 64
  %29 = load ptr, ptr %28, align 64
  %30 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ata_link, ptr %28, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.ata_device, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, i32 noundef %31, i32 noundef %36) #26
  br label %38

38:                                               ; preds = %27, %20
  %39 = load i32, ptr %5, align 8
  %40 = or i32 %39, 268435456
  store i32 %40, ptr %5, align 8
  br label %58

41:                                               ; preds = %16
  %42 = tail call i32 @ata_read_log_page(ptr noundef %0, i8 noundef zeroext 48, i8 noundef zeroext 0, ptr noundef %13, i32 noundef 1)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = getelementptr %struct.ata_port, ptr %4, i32 0, i32 50, i32 8
  %46 = load i8, ptr %45, align 8
  %47 = zext i8 %46 to i32
  %48 = icmp eq i8 %46, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %49, %44
  %50 = phi i32 [ %55, %49 ], [ 0, %44 ]
  %51 = add nuw nsw i32 %50, 9
  %52 = getelementptr %struct.ata_port, ptr %4, i32 0, i32 50, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, %1
  %55 = add nuw nsw i32 %50, 1
  %56 = icmp eq i32 %55, %47
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %58, label %49

58:                                               ; preds = %49, %44, %41, %38, %2
  %59 = phi i1 [ false, %38 ], [ false, %2 ], [ false, %41 ], [ false, %44 ], [ %54, %49 ]
  ret i1 %59
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #18

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local zeroext i1 @glob_match(ptr noundef, ptr noundef) local_unnamed_addr #23

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ata_port_request_pm(ptr noundef %0, [1 x i32] %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = extractvalue [1 x i32] %1, 0
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 16
  %9 = and i32 %8, 262144
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  tail call void @ata_port_wait_eh(ptr noundef %0) #25
  %12 = load i32, ptr %7, align 16
  %13 = and i32 %12, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !10

15:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 5015, i32 noundef 9, ptr noundef null) #25
  br label %16

16:                                               ; preds = %15, %11, %5
  %17 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #25
  %20 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 42
  store i32 %6, ptr %20, align 4
  %21 = load i32, ptr %7, align 16
  %22 = or i32 %21, 262144
  store i32 %22, ptr %7, align 16
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %57, label %25

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 26
  %27 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 28
  %28 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  br label %29

29:                                               ; preds = %54, %25
  %30 = phi ptr [ %23, %25 ], [ %55, %54 ]
  %31 = getelementptr inbounds %struct.ata_link, ptr %30, i32 0, i32 11, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, %2
  store i32 %33, ptr %31, align 4
  %34 = getelementptr inbounds %struct.ata_link, ptr %30, i32 0, i32 11, i32 5
  %35 = load i32, ptr %34, align 8
  %36 = or i32 %35, %3
  store i32 %36, ptr %34, align 8
  %37 = icmp eq ptr %23, %30
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i32, ptr %28, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %27, align 8
  br label %54

43:                                               ; preds = %38
  %44 = load ptr, ptr %26, align 64
  br label %54

45:                                               ; preds = %29
  %46 = load ptr, ptr %26, align 64
  %47 = icmp eq ptr %46, %30
  br i1 %47, label %57, label %48, !prof !11

48:                                               ; preds = %45
  %49 = getelementptr %struct.ata_link, ptr %30, i32 1
  %50 = load ptr, ptr %27, align 8
  %51 = load i32, ptr %28, align 4
  %52 = getelementptr %struct.ata_link, ptr %50, i32 %51
  %53 = icmp ult ptr %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %43, %41
  %55 = phi ptr [ %42, %41 ], [ %44, %43 ], [ %49, %48 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %29

57:                                               ; preds = %54, %48, %45, %16
  tail call void @ata_port_schedule_eh(ptr noundef %0) #25
  %58 = load ptr, ptr %17, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %19) #25
  br i1 %4, label %64, label %59

59:                                               ; preds = %57
  tail call void @ata_port_wait_eh(ptr noundef %0) #25
  %60 = load i32, ptr %7, align 16
  %61 = and i32 %60, 262144
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63, !prof !10

63:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 5034, i32 noundef 9, ptr noundef null) #25
  br label %64

64:                                               ; preds = %63, %59, %57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_port_pm_suspend(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr i8, ptr %0, i32 -10216
  tail call fastcc void @ata_port_request_pm(ptr noundef %11, [1 x i32] [i32 2], i32 noundef 0, i32 noundef 28, i1 noundef zeroext false) #25
  br label %12

12:                                               ; preds = %10, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_port_pm_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -10216
  tail call fastcc void @ata_port_request_pm(ptr noundef %2, [1 x i32] [i32 16], i32 noundef 6, i32 noundef 12, i1 noundef zeroext true) #25
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #25
  %3 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #25
  tail call void @pm_runtime_enable(ptr noundef %0) #25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_port_pm_freeze(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr i8, ptr %0, i32 -10216
  tail call fastcc void @ata_port_request_pm(ptr noundef %11, [1 x i32] [i32 1], i32 noundef 0, i32 noundef 28, i1 noundef zeroext false) #25
  br label %12

12:                                               ; preds = %10, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_port_pm_poweroff(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -10216
  tail call fastcc void @ata_port_request_pm(ptr noundef %2, [1 x i32] [i32 4], i32 noundef 0, i32 noundef 28, i1 noundef zeroext false) #25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_port_runtime_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -10216
  tail call fastcc void @ata_port_request_pm(ptr noundef %2, [1 x i32] [i32 1026], i32 noundef 0, i32 noundef 28, i1 noundef zeroext false) #25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_port_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -10216
  tail call fastcc void @ata_port_request_pm(ptr noundef %2, [1 x i32] [i32 1040], i32 noundef 6, i32 noundef 12, i1 noundef zeroext false) #25
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @ata_port_runtime_idle(ptr noundef readonly %0) #9 {
  %2 = getelementptr i8, ptr %0, i32 -4456
  %3 = icmp eq ptr %2, null
  br i1 %3, label %88, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = getelementptr i8, ptr %0, i32 -32
  %7 = getelementptr i8, ptr %0, i32 -36
  br label %8

8:                                                ; preds = %85, %4
  %9 = phi ptr [ %2, %4 ], [ %86, %85 ]
  %10 = getelementptr inbounds %struct.ata_link, ptr %9, i32 0, i32 14
  br label %30

11:                                               ; preds = %30
  %12 = getelementptr %struct.ata_device, ptr %31, i32 1
  %13 = load ptr, ptr %9, align 64
  %14 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 25
  %15 = icmp eq ptr %14, %9
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 26
  %18 = load ptr, ptr %17, align 64
  %19 = icmp eq ptr %18, %9
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %11
  %21 = getelementptr inbounds %struct.ata_port, ptr %13, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %16
  br label %26

26:                                               ; preds = %25, %20
  %27 = phi i32 [ 1, %25 ], [ 2, %20 ]
  %28 = getelementptr %struct.ata_device, ptr %10, i32 %27
  %29 = icmp ult ptr %12, %28
  br i1 %29, label %30, label %67

30:                                               ; preds = %26, %8
  %31 = phi ptr [ %12, %26 ], [ %10, %8 ]
  %32 = getelementptr inbounds %struct.ata_device, ptr %31, i32 0, i32 9
  %33 = load i32, ptr %32, align 64
  switch i32 %33, label %11 [
    i32 7, label %34
    i32 5, label %34
    i32 3, label %34
    i32 1, label %34
    i32 9, label %34
  ]

34:                                               ; preds = %30, %30, %30, %30, %30
  %35 = icmp eq ptr %31, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %65, %34
  %37 = phi ptr [ %49, %65 ], [ %31, %34 ]
  %38 = getelementptr inbounds %struct.ata_device, ptr %37, i32 0, i32 9
  %39 = load i32, ptr %38, align 64
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %88, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %9, align 64
  %43 = getelementptr inbounds %struct.ata_port, ptr %42, i32 0, i32 25
  %44 = icmp eq ptr %43, %9
  %45 = getelementptr inbounds %struct.ata_port, ptr %42, i32 0, i32 26
  %46 = getelementptr inbounds %struct.ata_port, ptr %42, i32 0, i32 3
  br label %47

47:                                               ; preds = %62, %41
  %48 = phi ptr [ %49, %62 ], [ %37, %41 ]
  %49 = getelementptr %struct.ata_device, ptr %48, i32 1
  br i1 %44, label %53, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %45, align 64
  %52 = icmp eq ptr %51, %9
  br i1 %52, label %53, label %57

53:                                               ; preds = %50, %47
  %54 = load i32, ptr %46, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %57, %53
  %59 = phi i32 [ 1, %57 ], [ 2, %53 ]
  %60 = getelementptr %struct.ata_device, ptr %10, i32 %59
  %61 = icmp ult ptr %49, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr %struct.ata_device, ptr %48, i32 1, i32 9
  %64 = load i32, ptr %63, align 64
  switch i32 %64, label %47 [
    i32 7, label %65
    i32 5, label %65
    i32 3, label %65
    i32 1, label %65
    i32 9, label %65
  ]

65:                                               ; preds = %62, %62, %62, %62, %62
  %66 = icmp eq ptr %49, null
  br i1 %66, label %67, label %36

67:                                               ; preds = %65, %58, %34, %26
  %68 = icmp eq ptr %2, %9
  br i1 %68, label %69, label %76

69:                                               ; preds = %67
  %70 = load i32, ptr %7, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %6, align 8
  br label %85

74:                                               ; preds = %69
  %75 = load ptr, ptr %5, align 64
  br label %85

76:                                               ; preds = %67
  %77 = load ptr, ptr %5, align 64
  %78 = icmp eq ptr %77, %9
  br i1 %78, label %88, label %79, !prof !11

79:                                               ; preds = %76
  %80 = getelementptr %struct.ata_link, ptr %9, i32 1
  %81 = load ptr, ptr %6, align 8
  %82 = load i32, ptr %7, align 4
  %83 = getelementptr %struct.ata_link, ptr %81, i32 %82
  %84 = icmp ult ptr %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79, %74, %72
  %86 = phi ptr [ %73, %72 ], [ %75, %74 ], [ %80, %79 ]
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %8

88:                                               ; preds = %85, %79, %76, %36, %1
  %89 = phi i32 [ 0, %1 ], [ -16, %36 ], [ 0, %85 ], [ 0, %76 ], [ 0, %79 ]
  ret i32 %89
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #24

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #24

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_scan_host(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tlink_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @ata_parse_force_param() unnamed_addr #20 section ".init.text" {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  %3 = alloca %struct.ata_force_ent, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #25
  br label %4

4:                                                ; preds = %10, %0
  %5 = phi ptr [ @ata_force_param_buf, %0 ], [ %12, %10 ]
  %6 = phi i32 [ 1, %0 ], [ %11, %10 ]
  %7 = load i8, ptr %5, align 1
  switch i8 %7, label %10 [
    i8 0, label %13
    i8 44, label %8
  ]

8:                                                ; preds = %4
  %9 = add i32 %6, 1
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ %6, %4 ]
  %12 = getelementptr i8, ptr %5, i32 1
  br label %4

13:                                               ; preds = %4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 32) #25
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %13
  store ptr null, ptr @ata_force_tbl, align 4
  br label %26

17:                                               ; preds = %13
  %18 = extractvalue { i32, i1 } %14, 0
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #27
  store ptr %19, ptr @ata_force_tbl, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load i8, ptr @ata_force_param_buf, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.ata_force_ent, ptr %3, i32 0, i32 1
  br label %28

26:                                               ; preds = %17, %16
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.467) #26
  br label %59

28:                                               ; preds = %50, %24
  %29 = phi i32 [ 0, %24 ], [ %53, %50 ]
  %30 = phi ptr [ @ata_force_param_buf, %24 ], [ %54, %50 ]
  %31 = phi i32 [ -1, %24 ], [ %52, %50 ]
  %32 = phi i32 [ -1, %24 ], [ %51, %50 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store ptr @.str.37, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) @__const.ata_parse_force_param.te, i32 32, i1 false)
  store ptr %30, ptr %1, align 4
  %33 = call fastcc i32 @ata_parse_force_one(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2) #29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %2, align 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.468, ptr noundef %30, ptr noundef %36) #26
  br label %50

38:                                               ; preds = %28
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %25, align 4
  br label %44

43:                                               ; preds = %38
  store i32 %32, ptr %3, align 4
  store i32 %31, ptr %25, align 4
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %31, %43 ], [ %42, %41 ]
  %46 = phi i32 [ %32, %43 ], [ %39, %41 ]
  %47 = load ptr, ptr @ata_force_tbl, align 4
  %48 = add i32 %29, 1
  %49 = getelementptr %struct.ata_force_ent, ptr %47, i32 %29
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %49, ptr noundef nonnull align 4 dereferenceable(32) %3, i32 32, i1 false)
  br label %50

50:                                               ; preds = %44, %35
  %51 = phi i32 [ %32, %35 ], [ %46, %44 ]
  %52 = phi i32 [ %31, %35 ], [ %45, %44 ]
  %53 = phi i32 [ %29, %35 ], [ %48, %44 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %54 = load ptr, ptr %1, align 4
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %28

57:                                               ; preds = %50, %21
  %58 = phi i32 [ 0, %21 ], [ %53, %50 ]
  store i32 %58, ptr @ata_force_tbl_size, align 4
  br label %59

59:                                               ; preds = %57, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_sff_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @libata_transport_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_attach_transport() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @ata_parse_force_one(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #20 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store ptr null, ptr %4, align 4, !annotation !9
  br label %6

6:                                                ; preds = %9, %3
  %7 = phi ptr [ %5, %3 ], [ %10, %9 ]
  %8 = load i8, ptr %7, align 1
  switch i8 %8, label %9 [
    i8 0, label %11
    i8 44, label %11
  ]

9:                                                ; preds = %6
  %10 = getelementptr i8, ptr %7, i32 1
  br label %6

11:                                               ; preds = %6, %6
  %12 = icmp ne i8 %8, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr i8, ptr %7, i32 %13
  store ptr %14, ptr %0, align 4
  store i8 0, ptr %7, align 1
  %15 = tail call ptr @strchr(ptr noundef %5, i32 noundef 58)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call ptr @strim(ptr noundef %5) #25
  br label %43

19:                                               ; preds = %11
  store i8 0, ptr %15, align 1
  %20 = tail call ptr @strim(ptr noundef %5) #25
  %21 = getelementptr i8, ptr %15, i32 1
  %22 = tail call ptr @strim(ptr noundef %21) #25
  %23 = tail call ptr @strchr(ptr noundef %20, i32 noundef 46)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %23, i32 1
  store i8 0, ptr %23, align 1
  %27 = call i32 @simple_strtoul(ptr noundef %26, ptr noundef nonnull %4, i32 noundef 10) #25
  %28 = getelementptr inbounds %struct.ata_force_ent, ptr %1, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = load ptr, ptr %4, align 4
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i8, ptr %29, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %25
  store ptr @.str.524, ptr %2, align 4
  br label %73

35:                                               ; preds = %31, %19
  %36 = call i32 @simple_strtoul(ptr noundef %20, ptr noundef nonnull %4, i32 noundef 10) #25
  store i32 %36, ptr %1, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = icmp eq ptr %20, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i8, ptr %37, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %35
  store ptr @.str.525, ptr %2, align 4
  br label %73

43:                                               ; preds = %39, %17
  %44 = phi ptr [ %22, %39 ], [ %18, %17 ]
  %45 = call i32 @strlen(ptr noundef %44)
  br label %46

46:                                               ; preds = %58, %43
  %47 = phi i32 [ 0, %43 ], [ %61, %58 ]
  %48 = phi i32 [ 0, %43 ], [ %59, %58 ]
  %49 = phi ptr [ null, %43 ], [ %60, %58 ]
  %50 = getelementptr [55 x %struct.ata_force_param], ptr @ata_parse_force_one.force_tbl, i32 0, i32 %47
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @strncasecmp(ptr noundef %44, ptr noundef %51, i32 noundef %45)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = call i32 @strcasecmp(ptr noundef %44, ptr noundef %51)
  %56 = icmp eq i32 %55, 0
  %57 = add i32 %48, 1
  br i1 %56, label %63, label %58

58:                                               ; preds = %54, %46
  %59 = phi i32 [ %57, %54 ], [ %48, %46 ]
  %60 = phi ptr [ %50, %54 ], [ %49, %46 ]
  %61 = add nuw nsw i32 %47, 1
  %62 = icmp eq i32 %61, 55
  br i1 %62, label %63, label %46

63:                                               ; preds = %58, %54
  %64 = phi ptr [ %50, %54 ], [ %60, %58 ]
  %65 = phi i32 [ 1, %54 ], [ %59, %58 ]
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store ptr @.str.526, ptr %2, align 4
  br label %73

68:                                               ; preds = %63
  %69 = icmp sgt i32 %65, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  store ptr @.str.527, ptr %2, align 4
  br label %73

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.ata_force_ent, ptr %1, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %72, ptr noundef align 4 dereferenceable(24) %64, i32 24, i1 false)
  br label %73

73:                                               ; preds = %71, %70, %67, %42, %34
  %74 = phi i32 [ -22, %34 ], [ -22, %42 ], [ -22, %70 ], [ 0, %71 ], [ -22, %67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret i32 %74
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #23

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #22

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { nounwind readonly }
attributes #22 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #23 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #24 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #25 = { nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind readonly willreturn }
attributes #29 = { cold }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 491777}
!13 = !{i8 0, i8 2}
!14 = !{i64 2158045161, i64 2158045651, i64 2158045198, i64 2158045254, i64 2158045288, i64 2158045312, i64 2158045353, i64 2158045374, i64 2158045402, i64 2158045436}
!15 = !{i64 2158047835, i64 2158048325, i64 2158047872, i64 2158047928, i64 2158047962, i64 2158047986, i64 2158048027, i64 2158048048, i64 2158048076, i64 2158048110}
!16 = !{i32 0, i32 33}
!17 = !{i64 2158068055, i64 2158068546, i64 2158068092, i64 2158068148, i64 2158068182, i64 2158068206, i64 2158068247, i64 2158068268, i64 2158068296, i64 2158068330}
!18 = !{i64 2155239669}
!19 = !{i64 2155239807}
!20 = !{i64 2155259255}
!21 = !{i64 2155259395}
!22 = !{i64 2155308320}
!23 = !{i64 2155308476}
!24 = !{i32 0, i32 9}
!25 = !{i64 2158172639, i64 2158173130, i64 2158172676, i64 2158172732, i64 2158172766, i64 2158172790, i64 2158172831, i64 2158172852, i64 2158172880, i64 2158172914}
!26 = !{i64 2155275290}
!27 = !{i64 2155275454}
!28 = !{i64 2155291897}
!29 = !{i64 2155292057}
!30 = !{i64 577838, i64 2148067809, i64 2148067835, i64 2148067882, i64 2148067904, i64 2148067932, i64 2148067952}
!31 = !{i64 2148081479, i64 2148081511, i64 2148081540, i64 2148081574, i64 2148081605, i64 2148081628}
!32 = !{i64 2148181677}
!33 = !{i64 2148083836, i64 2148083868, i64 2148083897, i64 2148083931, i64 2148083962, i64 2148083985}
!34 = !{i64 2149161744}
!35 = !{i64 2149093756}
!36 = !{i64 2149089580}
!37 = !{i64 2149089655, i64 2149089682, i64 2149089729, i64 2149089751, i64 2149089779, i64 2149089799}
!38 = !{i64 2149116759}
!39 = !{i64 2148177843}
!40 = !{i64 2148080705, i64 2148080737, i64 2148080766, i64 2148080800, i64 2148080831, i64 2148080854}
!41 = !{i64 2148178046}
!42 = !{i64 3983166}
!43 = !{i64 2151522619}
