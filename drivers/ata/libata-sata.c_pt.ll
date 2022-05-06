; ModuleID = '/llk/IR/drivers/ata/libata-sata.c_pt.bc'
source_filename = "../drivers/ata/libata-sata.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_deb_timing_normal:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_deb_timing_normal\22\09\09\09\09\09"
module asm "__kstrtabns_sata_deb_timing_normal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_deb_timing_hotplug:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_deb_timing_hotplug\22\09\09\09\09\09"
module asm "__kstrtabns_sata_deb_timing_hotplug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_deb_timing_long:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_deb_timing_long\22\09\09\09\09\09"
module asm "__kstrtabns_sata_deb_timing_long:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_scr_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_scr_valid\22\09\09\09\09\09"
module asm "__kstrtabns_sata_scr_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_scr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_scr_read\22\09\09\09\09\09"
module asm "__kstrtabns_sata_scr_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_scr_write:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_scr_write\22\09\09\09\09\09"
module asm "__kstrtabns_sata_scr_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_scr_write_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_scr_write_flush\22\09\09\09\09\09"
module asm "__kstrtabns_sata_scr_write_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_tf_to_fis:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_tf_to_fis\22\09\09\09\09\09"
module asm "__kstrtabns_ata_tf_to_fis:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_tf_from_fis:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_tf_from_fis\22\09\09\09\09\09"
module asm "__kstrtabns_ata_tf_from_fis:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_link_debounce:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_link_debounce\22\09\09\09\09\09"
module asm "__kstrtabns_sata_link_debounce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_link_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_link_resume\22\09\09\09\09\09"
module asm "__kstrtabns_sata_link_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_link_scr_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_link_scr_lpm\22\09\09\09\09\09"
module asm "__kstrtabns_sata_link_scr_lpm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_set_spd:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_set_spd\22\09\09\09\09\09"
module asm "__kstrtabns_sata_set_spd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_link_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_link_hardreset\22\09\09\09\09\09"
module asm "__kstrtabns_sata_link_hardreset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_qc_complete_multiple:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_qc_complete_multiple\22\09\09\09\09\09"
module asm "__kstrtabns_ata_qc_complete_multiple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_slave_link_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_slave_link_init\22\09\09\09\09\09"
module asm "__kstrtabns_ata_slave_link_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_lpm_ignore_phy_events:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_lpm_ignore_phy_events\22\09\09\09\09\09"
module asm "__kstrtabns_sata_lpm_ignore_phy_events:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_attr_link_power_management_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_attr_link_power_management_policy\22\09\09\09\09\09"
module asm "__kstrtabns_dev_attr_link_power_management_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_attr_ncq_prio_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_attr_ncq_prio_supported\22\09\09\09\09\09"
module asm "__kstrtabns_dev_attr_ncq_prio_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_attr_ncq_prio_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_attr_ncq_prio_enable\22\09\09\09\09\09"
module asm "__kstrtabns_dev_attr_ncq_prio_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_ncq_sdev_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_ncq_sdev_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ata_ncq_sdev_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_attr_em_message:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_attr_em_message\22\09\09\09\09\09"
module asm "__kstrtabns_dev_attr_em_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_attr_em_message_type:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_attr_em_message_type\22\09\09\09\09\09"
module asm "__kstrtabns_dev_attr_em_message_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_attr_sw_activity:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_attr_sw_activity\22\09\09\09\09\09"
module asm "__kstrtabns_dev_attr_sw_activity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ata_change_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22__ata_change_queue_depth\22\09\09\09\09\09"
module asm "__kstrtabns___ata_change_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_scsi_change_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_scsi_change_queue_depth\22\09\09\09\09\09"
module asm "__kstrtabns_ata_scsi_change_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_port_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_port_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_port_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_port_start:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_port_start\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_port_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_port_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_port_stop\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_port_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_async_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_async_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_async_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_sync_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_sync_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_sync_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_port_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_port_init\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_port_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_tport_add:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_tport_add\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_tport_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_tport_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_tport_delete\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_tport_delete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_port_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_port_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_port_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_slave_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_slave_configure\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_slave_configure:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_sas_queuecmd:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_sas_queuecmd\22\09\09\09\09\09"
module asm "__kstrtabns_ata_sas_queuecmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sata_async_notification:\09\09\09\09\09"
module asm "\09.asciz \09\22sata_async_notification\22\09\09\09\09\09"
module asm "__kstrtabns_sata_async_notification:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_eh_analyze_ncq_error:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_eh_analyze_ncq_error\22\09\09\09\09\09"
module asm "__kstrtabns_ata_eh_analyze_ncq_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@sata_deb_timing_normal = dso_local constant [3 x i32] [i32 5, i32 100, i32 2000], align 4
@__kstrtab_sata_deb_timing_normal = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_deb_timing_normal = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_deb_timing_normal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_deb_timing_normal to i32), ptr @__kstrtab_sata_deb_timing_normal, ptr @__kstrtabns_sata_deb_timing_normal }, section "___ksymtab_gpl+sata_deb_timing_normal", align 4
@sata_deb_timing_hotplug = dso_local constant [3 x i32] [i32 25, i32 500, i32 2000], align 4
@__kstrtab_sata_deb_timing_hotplug = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_deb_timing_hotplug = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_deb_timing_hotplug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_deb_timing_hotplug to i32), ptr @__kstrtab_sata_deb_timing_hotplug, ptr @__kstrtabns_sata_deb_timing_hotplug }, section "___ksymtab_gpl+sata_deb_timing_hotplug", align 4
@sata_deb_timing_long = dso_local constant [3 x i32] [i32 100, i32 2000, i32 5000], align 4
@__kstrtab_sata_deb_timing_long = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_deb_timing_long = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_deb_timing_long = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_deb_timing_long to i32), ptr @__kstrtab_sata_deb_timing_long, ptr @__kstrtabns_sata_deb_timing_long }, section "___ksymtab_gpl+sata_deb_timing_long", align 4
@__kstrtab_sata_scr_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_scr_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_scr_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_scr_valid to i32), ptr @__kstrtab_sata_scr_valid, ptr @__kstrtabns_sata_scr_valid }, section "___ksymtab_gpl+sata_scr_valid", align 4
@__kstrtab_sata_scr_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_scr_read = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_scr_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_scr_read to i32), ptr @__kstrtab_sata_scr_read, ptr @__kstrtabns_sata_scr_read }, section "___ksymtab_gpl+sata_scr_read", align 4
@__kstrtab_sata_scr_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_scr_write = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_scr_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_scr_write to i32), ptr @__kstrtab_sata_scr_write, ptr @__kstrtabns_sata_scr_write }, section "___ksymtab_gpl+sata_scr_write", align 4
@__kstrtab_sata_scr_write_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_scr_write_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_scr_write_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_scr_write_flush to i32), ptr @__kstrtab_sata_scr_write_flush, ptr @__kstrtabns_sata_scr_write_flush }, section "___ksymtab_gpl+sata_scr_write_flush", align 4
@__kstrtab_ata_tf_to_fis = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_tf_to_fis = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_tf_to_fis = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_tf_to_fis to i32), ptr @__kstrtab_ata_tf_to_fis, ptr @__kstrtabns_ata_tf_to_fis }, section "___ksymtab_gpl+ata_tf_to_fis", align 4
@__kstrtab_ata_tf_from_fis = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_tf_from_fis = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_tf_from_fis = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_tf_from_fis to i32), ptr @__kstrtab_ata_tf_from_fis, ptr @__kstrtabns_ata_tf_from_fis }, section "___ksymtab_gpl+ata_tf_from_fis", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_sata_link_debounce = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_link_debounce = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_link_debounce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_link_debounce to i32), ptr @__kstrtab_sata_link_debounce, ptr @__kstrtabns_sata_link_debounce }, section "___ksymtab_gpl+sata_link_debounce", align 4
@.str = private unnamed_addr constant [51 x i8] c"\014ata%u.%02u: failed to resume link (SControl %X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\014ata%u: failed to resume link (SControl %X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"\014ata%u.%02u: link resume succeeded after %d retries\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"\014ata%u: link resume succeeded after %d retries\0A\00", align 1
@__kstrtab_sata_link_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_link_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_link_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_link_resume to i32), ptr @__kstrtab_sata_link_resume, ptr @__kstrtabns_sata_link_resume }, section "___ksymtab_gpl+sata_link_resume", align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"drivers/ata/libata-sata.c\00", align 1
@__kstrtab_sata_link_scr_lpm = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_link_scr_lpm = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_link_scr_lpm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_link_scr_lpm to i32), ptr @__kstrtab_sata_link_scr_lpm, ptr @__kstrtabns_sata_link_scr_lpm }, section "___ksymtab_gpl+sata_link_scr_lpm", align 4
@__kstrtab_sata_set_spd = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_set_spd = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_set_spd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_set_spd to i32), ptr @__kstrtab_sata_set_spd, ptr @__kstrtabns_sata_set_spd }, section "___ksymtab_gpl+sata_set_spd", align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"\013ata%u.%02u: COMRESET failed (errno=%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"\013ata%u: COMRESET failed (errno=%d)\0A\00", align 1
@__kstrtab_sata_link_hardreset = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_link_hardreset = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_link_hardreset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_link_hardreset to i32), ptr @__kstrtab_sata_link_hardreset, ptr @__kstrtabns_sata_link_hardreset }, section "___ksymtab_gpl+sata_link_hardreset", align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"\013ata%u: illegal qc_active transition (%08llx->%08llx)\0A\00", align 1
@__kstrtab_ata_qc_complete_multiple = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_qc_complete_multiple = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_qc_complete_multiple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_qc_complete_multiple to i32), ptr @__kstrtab_ata_qc_complete_multiple, ptr @__kstrtabns_ata_qc_complete_multiple }, section "___ksymtab_gpl+ata_qc_complete_multiple", align 4
@__kstrtab_ata_slave_link_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_slave_link_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_slave_link_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_slave_link_init to i32), ptr @__kstrtab_ata_slave_link_init, ptr @__kstrtabns_ata_slave_link_init }, section "___ksymtab_gpl+ata_slave_link_init", align 4
@__kstrtab_sata_lpm_ignore_phy_events = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_lpm_ignore_phy_events = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_lpm_ignore_phy_events = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_lpm_ignore_phy_events to i32), ptr @__kstrtab_sata_lpm_ignore_phy_events, ptr @__kstrtabns_sata_lpm_ignore_phy_events }, section "___ksymtab_gpl+sata_lpm_ignore_phy_events", align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"link_power_management_policy\00", align 1
@dev_attr_link_power_management_policy = dso_local global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420 }, ptr @ata_scsi_lpm_show, ptr @ata_scsi_lpm_store }, align 4
@__kstrtab_dev_attr_link_power_management_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_attr_link_power_management_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_attr_link_power_management_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_attr_link_power_management_policy to i32), ptr @__kstrtab_dev_attr_link_power_management_policy, ptr @__kstrtabns_dev_attr_link_power_management_policy }, section "___ksymtab_gpl+dev_attr_link_power_management_policy", align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"ncq_prio_supported\00", align 1
@dev_attr_ncq_prio_supported = dso_local global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @ata_ncq_prio_supported_show, ptr null }, align 4
@__kstrtab_dev_attr_ncq_prio_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_attr_ncq_prio_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_attr_ncq_prio_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_attr_ncq_prio_supported to i32), ptr @__kstrtab_dev_attr_ncq_prio_supported, ptr @__kstrtabns_dev_attr_ncq_prio_supported }, section "___ksymtab_gpl+dev_attr_ncq_prio_supported", align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"ncq_prio_enable\00", align 1
@dev_attr_ncq_prio_enable = dso_local global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @ata_ncq_prio_enable_show, ptr @ata_ncq_prio_enable_store }, align 4
@__kstrtab_dev_attr_ncq_prio_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_attr_ncq_prio_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_attr_ncq_prio_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_attr_ncq_prio_enable to i32), ptr @__kstrtab_dev_attr_ncq_prio_enable, ptr @__kstrtabns_dev_attr_ncq_prio_enable }, section "___ksymtab_gpl+dev_attr_ncq_prio_enable", align 4
@ata_ncq_sdev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ata_ncq_sdev_attrs, ptr null }, align 4
@ata_ncq_sdev_groups = dso_local global [2 x ptr] [ptr @ata_ncq_sdev_attr_group, ptr null], align 4
@__kstrtab_ata_ncq_sdev_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_ncq_sdev_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_ncq_sdev_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_ncq_sdev_groups to i32), ptr @__kstrtab_ata_ncq_sdev_groups, ptr @__kstrtabns_ata_ncq_sdev_groups }, section "___ksymtab_gpl+ata_ncq_sdev_groups", align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"em_message\00", align 1
@dev_attr_em_message = dso_local global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @ata_scsi_em_message_show, ptr @ata_scsi_em_message_store }, align 4
@__kstrtab_dev_attr_em_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_attr_em_message = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_attr_em_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_attr_em_message to i32), ptr @__kstrtab_dev_attr_em_message, ptr @__kstrtabns_dev_attr_em_message }, section "___ksymtab_gpl+dev_attr_em_message", align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"em_message_type\00", align 1
@dev_attr_em_message_type = dso_local global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @ata_scsi_em_message_type_show, ptr null }, align 4
@__kstrtab_dev_attr_em_message_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_attr_em_message_type = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_attr_em_message_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_attr_em_message_type to i32), ptr @__kstrtab_dev_attr_em_message_type, ptr @__kstrtabns_dev_attr_em_message_type }, section "___ksymtab_gpl+dev_attr_em_message_type", align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"sw_activity\00", align 1
@dev_attr_sw_activity = dso_local global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @ata_scsi_activity_show, ptr @ata_scsi_activity_store }, align 4
@__kstrtab_dev_attr_sw_activity = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_attr_sw_activity = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_attr_sw_activity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_attr_sw_activity to i32), ptr @__kstrtab_dev_attr_sw_activity, ptr @__kstrtabns_dev_attr_sw_activity }, section "___ksymtab_gpl+dev_attr_sw_activity", align 4
@__kstrtab___ata_change_queue_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns___ata_change_queue_depth = external dso_local constant [0 x i8], align 1
@__ksymtab___ata_change_queue_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ata_change_queue_depth to i32), ptr @__kstrtab___ata_change_queue_depth, ptr @__kstrtabns___ata_change_queue_depth }, section "___ksymtab_gpl+__ata_change_queue_depth", align 4
@__kstrtab_ata_scsi_change_queue_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_scsi_change_queue_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_scsi_change_queue_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_scsi_change_queue_depth to i32), ptr @__kstrtab_ata_scsi_change_queue_depth, ptr @__kstrtabns_ata_scsi_change_queue_depth }, section "___ksymtab_gpl+ata_scsi_change_queue_depth", align 4
@__kstrtab_ata_sas_port_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_port_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_port_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_port_alloc to i32), ptr @__kstrtab_ata_sas_port_alloc, ptr @__kstrtabns_ata_sas_port_alloc }, section "___ksymtab_gpl+ata_sas_port_alloc", align 4
@__kstrtab_ata_sas_port_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_port_start = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_port_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_port_start to i32), ptr @__kstrtab_ata_sas_port_start, ptr @__kstrtabns_ata_sas_port_start }, section "___ksymtab_gpl+ata_sas_port_start", align 4
@__kstrtab_ata_sas_port_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_port_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_port_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_port_stop to i32), ptr @__kstrtab_ata_sas_port_stop, ptr @__kstrtabns_ata_sas_port_stop }, section "___ksymtab_gpl+ata_sas_port_stop", align 4
@__kstrtab_ata_sas_async_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_async_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_async_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_async_probe to i32), ptr @__kstrtab_ata_sas_async_probe, ptr @__kstrtabns_ata_sas_async_probe }, section "___ksymtab_gpl+ata_sas_async_probe", align 4
@__kstrtab_ata_sas_sync_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_sync_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_sync_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_sync_probe to i32), ptr @__kstrtab_ata_sas_sync_probe, ptr @__kstrtabns_ata_sas_sync_probe }, section "___ksymtab_gpl+ata_sas_sync_probe", align 4
@ata_print_id = external dso_local global %struct.atomic_t, align 4
@__kstrtab_ata_sas_port_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_port_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_port_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_port_init to i32), ptr @__kstrtab_ata_sas_port_init, ptr @__kstrtabns_ata_sas_port_init }, section "___ksymtab_gpl+ata_sas_port_init", align 4
@__kstrtab_ata_sas_tport_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_tport_add = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_tport_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_tport_add to i32), ptr @__kstrtab_ata_sas_tport_add, ptr @__kstrtabns_ata_sas_tport_add }, section "___ksymtab_gpl+ata_sas_tport_add", align 4
@__kstrtab_ata_sas_tport_delete = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_tport_delete = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_tport_delete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_tport_delete to i32), ptr @__kstrtab_ata_sas_tport_delete, ptr @__kstrtabns_ata_sas_tport_delete }, section "___ksymtab_gpl+ata_sas_tport_delete", align 4
@__kstrtab_ata_sas_port_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_port_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_port_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_port_destroy to i32), ptr @__kstrtab_ata_sas_port_destroy, ptr @__kstrtabns_ata_sas_port_destroy }, section "___ksymtab_gpl+ata_sas_port_destroy", align 4
@__kstrtab_ata_sas_slave_configure = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_slave_configure = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_slave_configure = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_slave_configure to i32), ptr @__kstrtab_ata_sas_slave_configure, ptr @__kstrtabns_ata_sas_slave_configure }, section "___ksymtab_gpl+ata_sas_slave_configure", align 4
@__kstrtab_ata_sas_queuecmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_sas_queuecmd = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_sas_queuecmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_sas_queuecmd to i32), ptr @__kstrtab_ata_sas_queuecmd, ptr @__kstrtabns_ata_sas_queuecmd }, section "___ksymtab_gpl+ata_sas_queuecmd", align 4
@__kstrtab_sata_async_notification = external dso_local constant [0 x i8], align 1
@__kstrtabns_sata_async_notification = external dso_local constant [0 x i8], align 1
@__ksymtab_sata_async_notification = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sata_async_notification to i32), ptr @__kstrtab_sata_async_notification, ptr @__kstrtabns_sata_async_notification }, section "___ksymtab_gpl+sata_async_notification", align 4
@.str.14 = private unnamed_addr constant [54 x i8] c"\013ata%u.%02u: failed to read log page 10h (errno=%d)\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"\013ata%u: failed to read log page 10h (errno=%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"\013ata%u.%02u: log page 10h reported inactive tag %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"\013ata%u: log page 10h reported inactive tag %d\0A\00", align 1
@__kstrtab_ata_eh_analyze_ncq_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_eh_analyze_ncq_error = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_eh_analyze_ncq_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_eh_analyze_ncq_error to i32), ptr @__kstrtab_ata_eh_analyze_ncq_error, ptr @__kstrtabns_ata_eh_analyze_ncq_error }, section "___ksymtab_gpl+ata_eh_analyze_ncq_error", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ata_lpm_policy_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.19, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"max_performance\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"medium_power\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"med_power_with_dipm\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"min_power_with_partial\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"min_power\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@ata_ncq_sdev_attrs = internal global [4 x ptr] [ptr @dev_attr_unload_heads, ptr @dev_attr_ncq_prio_enable, ptr @dev_attr_ncq_prio_supported, ptr null], align 4
@dev_attr_unload_heads = external dso_local global %struct.device_attribute, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"\014ata%u.%02u: invalid checksum 0x%x on log page 10h\0A\00", align 1
@llvm.compiler.used = appending global [39 x ptr] [ptr @__ksymtab___ata_change_queue_depth, ptr @__ksymtab_ata_eh_analyze_ncq_error, ptr @__ksymtab_ata_ncq_sdev_groups, ptr @__ksymtab_ata_qc_complete_multiple, ptr @__ksymtab_ata_sas_async_probe, ptr @__ksymtab_ata_sas_port_alloc, ptr @__ksymtab_ata_sas_port_destroy, ptr @__ksymtab_ata_sas_port_init, ptr @__ksymtab_ata_sas_port_start, ptr @__ksymtab_ata_sas_port_stop, ptr @__ksymtab_ata_sas_queuecmd, ptr @__ksymtab_ata_sas_slave_configure, ptr @__ksymtab_ata_sas_sync_probe, ptr @__ksymtab_ata_sas_tport_add, ptr @__ksymtab_ata_sas_tport_delete, ptr @__ksymtab_ata_scsi_change_queue_depth, ptr @__ksymtab_ata_slave_link_init, ptr @__ksymtab_ata_tf_from_fis, ptr @__ksymtab_ata_tf_to_fis, ptr @__ksymtab_dev_attr_em_message, ptr @__ksymtab_dev_attr_em_message_type, ptr @__ksymtab_dev_attr_link_power_management_policy, ptr @__ksymtab_dev_attr_ncq_prio_enable, ptr @__ksymtab_dev_attr_ncq_prio_supported, ptr @__ksymtab_dev_attr_sw_activity, ptr @__ksymtab_sata_async_notification, ptr @__ksymtab_sata_deb_timing_hotplug, ptr @__ksymtab_sata_deb_timing_long, ptr @__ksymtab_sata_deb_timing_normal, ptr @__ksymtab_sata_link_debounce, ptr @__ksymtab_sata_link_hardreset, ptr @__ksymtab_sata_link_resume, ptr @__ksymtab_sata_link_scr_lpm, ptr @__ksymtab_sata_lpm_ignore_phy_events, ptr @__ksymtab_sata_scr_read, ptr @__ksymtab_sata_scr_valid, ptr @__ksymtab_sata_scr_write, ptr @__ksymtab_sata_scr_write_flush, ptr @__ksymtab_sata_set_spd], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @sata_scr_valid(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ata_port_operations, ptr %9, i32 0, i32 27
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i32 [ 0, %1 ], [ %13, %7 ]
  ret i32 %15
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_scr_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %0, i32 noundef %1, ptr noundef %2) #13
  br label %26

24:                                               ; preds = %7
  %25 = tail call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #13
  br label %26

26:                                               ; preds = %24, %22, %16, %11
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ], [ -95, %16 ], [ -95, %11 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_pmp_scr_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_scr_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = load ptr, ptr %0, align 64
  %5 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 25
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 26
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %26

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 27
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ata_port_operations, ptr %18, i32 0, i32 28
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  br label %28

26:                                               ; preds = %7
  %27 = tail call i32 @sata_pmp_scr_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  br label %28

28:                                               ; preds = %26, %22, %16, %11
  %29 = phi i32 [ %25, %22 ], [ %27, %26 ], [ -95, %16 ], [ -95, %11 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_pmp_scr_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_scr_write_flush(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  %5 = load ptr, ptr %0, align 64
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 25
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 26
  %10 = load ptr, ptr %9, align 64
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %35

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ata_port_operations, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ata_port_operations, ptr %19, i32 0, i32 28
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load ptr, ptr %0, align 64
  %30 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ata_port_operations, ptr %31, i32 0, i32 27
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #13
  br label %37

35:                                               ; preds = %8
  %36 = tail call i32 @sata_pmp_scr_write(ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  br label %37

37:                                               ; preds = %35, %28, %23, %17, %12
  %38 = phi i32 [ %36, %35 ], [ %34, %28 ], [ %26, %23 ], [ -95, %17 ], [ -95, %12 ]
  ret i32 %38
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ata_tf_to_fis(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  store i8 39, ptr %3, align 1
  %5 = and i8 %1, 15
  %6 = icmp eq i32 %2, 0
  %7 = or i8 %5, -128
  %8 = select i1 %6, i8 %5, i8 %7
  %9 = getelementptr i8, ptr %3, i32 1
  store i8 %8, ptr %9, align 1
  %10 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 14
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr i8, ptr %3, i32 2
  store i8 %11, ptr %12, align 1
  %13 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 8
  %14 = load i8, ptr %13, align 1
  %15 = getelementptr i8, ptr %3, i32 3
  store i8 %14, ptr %15, align 1
  %16 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 10
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr i8, ptr %3, i32 4
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 11
  %20 = load i8, ptr %19, align 2
  %21 = getelementptr i8, ptr %3, i32 5
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 12
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr i8, ptr %3, i32 6
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 13
  %26 = load i8, ptr %25, align 4
  %27 = getelementptr i8, ptr %3, i32 7
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 5
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr i8, ptr %3, i32 8
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr i8, ptr %3, i32 9
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 7
  %35 = load i8, ptr %34, align 2
  %36 = getelementptr i8, ptr %3, i32 10
  store i8 %35, ptr %36, align 1
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 3
  %38 = load i8, ptr %37, align 2
  %39 = getelementptr i8, ptr %3, i32 11
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 9
  %41 = load i8, ptr %40, align 4
  %42 = getelementptr i8, ptr %3, i32 12
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr i8, ptr %3, i32 13
  store i8 %44, ptr %45, align 1
  %46 = getelementptr i8, ptr %3, i32 14
  store i8 0, ptr %46, align 1
  %47 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr i8, ptr %3, i32 15
  store i8 %48, ptr %49, align 1
  %50 = getelementptr inbounds %struct.ata_taskfile, ptr %0, i32 0, i32 15
  %51 = load i32, ptr %50, align 4
  %52 = trunc i32 %51 to i8
  %53 = getelementptr i8, ptr %3, i32 16
  store i8 %52, ptr %53, align 1
  %54 = load i32, ptr %50, align 4
  %55 = lshr i32 %54, 8
  %56 = trunc i32 %55 to i8
  %57 = getelementptr i8, ptr %3, i32 17
  store i8 %56, ptr %57, align 1
  %58 = load i32, ptr %50, align 4
  %59 = lshr i32 %58, 16
  %60 = trunc i32 %59 to i8
  %61 = getelementptr i8, ptr %3, i32 18
  store i8 %60, ptr %61, align 1
  %62 = load i32, ptr %50, align 4
  %63 = lshr i32 %62, 24
  %64 = trunc i32 %63 to i8
  %65 = getelementptr i8, ptr %3, i32 19
  store i8 %64, ptr %65, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @ata_tf_from_fis(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr i8, ptr %0, i32 2
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 14
  store i8 %4, ptr %5, align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 8
  store i8 %7, ptr %8, align 1
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 10
  store i8 %10, ptr %11, align 1
  %12 = getelementptr i8, ptr %0, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 11
  store i8 %13, ptr %14, align 2
  %15 = getelementptr i8, ptr %0, i32 6
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 12
  store i8 %16, ptr %17, align 1
  %18 = getelementptr i8, ptr %0, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 13
  store i8 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 8
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 5
  store i8 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 9
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 6
  store i8 %25, ptr %26, align 1
  %27 = getelementptr i8, ptr %0, i32 10
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 7
  store i8 %28, ptr %29, align 2
  %30 = getelementptr i8, ptr %0, i32 12
  %31 = load i8, ptr %30, align 1
  %32 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 9
  store i8 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %0, i32 13
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.ata_taskfile, ptr %1, i32 0, i32 4
  store i8 %34, ptr %35, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_link_debounce(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr i32, ptr %1, i32 1
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %8 = load volatile i32, ptr @jiffies, align 64
  %9 = getelementptr i32, ptr %1, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @__msecs_to_jiffies(i32 noundef %10) #13
  %12 = add i32 %11, %8
  %13 = sub i32 %12, %2
  %14 = icmp slt i32 %13, 0
  %15 = select i1 %14, i32 %12, i32 %2
  %16 = load ptr, ptr %0, align 64
  %17 = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 25
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 26
  %21 = load ptr, ptr %20, align 64
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19, %3
  %24 = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %98, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.ata_port_operations, ptr %30, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %98, label %34

34:                                               ; preds = %28
  %35 = call i32 %32(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #13
  br label %38

36:                                               ; preds = %19
  %37 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #13
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %98

41:                                               ; preds = %38
  %42 = load i32, ptr %4, align 4
  %43 = and i32 %42, 15
  store i32 %43, ptr %4, align 4
  %44 = load volatile i32, ptr @jiffies, align 64
  br label %45

45:                                               ; preds = %93, %41
  %46 = phi i32 [ %94, %93 ], [ %44, %41 ]
  %47 = phi i32 [ %80, %93 ], [ %43, %41 ]
  br label %48

48:                                               ; preds = %83, %45
  %49 = phi i32 [ %47, %45 ], [ 1, %83 ]
  %50 = icmp eq i32 %49, 1
  br label %51

51:                                               ; preds = %87, %48
  %52 = load ptr, ptr %0, align 64
  call void @ata_msleep(ptr noundef %52, i32 noundef %5) #13
  %53 = load ptr, ptr %0, align 64
  %54 = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 25
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 26
  %58 = load ptr, ptr %57, align 64
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56, %51
  %61 = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ata_port, ptr %53, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ata_port_operations, ptr %67, i32 0, i32 27
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %98, label %71

71:                                               ; preds = %65
  %72 = call i32 %69(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #13
  br label %75

73:                                               ; preds = %56
  %74 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #13
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %75
  %79 = load i32, ptr %4, align 4
  %80 = and i32 %79, 15
  store i32 %80, ptr %4, align 4
  %81 = icmp eq i32 %80, %49
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  br i1 %50, label %83, label %87

83:                                               ; preds = %82
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = sub i32 %84, %15
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %48, label %87

87:                                               ; preds = %83, %82
  %88 = call i32 @__msecs_to_jiffies(i32 noundef %7) #13
  %89 = add i32 %88, %46
  %90 = load volatile i32, ptr @jiffies, align 64
  %91 = sub i32 %89, %90
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %98, label %51

93:                                               ; preds = %78
  %94 = load volatile i32, ptr @jiffies, align 64
  %95 = load volatile i32, ptr @jiffies, align 64
  %96 = sub i32 %15, %95
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %45

98:                                               ; preds = %93, %87, %75, %65, %60, %38, %28, %23
  %99 = phi i32 [ %39, %38 ], [ -95, %28 ], [ -95, %23 ], [ %76, %75 ], [ 0, %87 ], [ -95, %65 ], [ -95, %60 ], [ -32, %93 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_link_resume(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load ptr, ptr %0, align 64
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 26
  %11 = load ptr, ptr %10, align 64
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %206, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ata_port_operations, ptr %20, i32 0, i32 27
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %206, label %24

24:                                               ; preds = %18
  %25 = call i32 %22(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #13
  br label %28

26:                                               ; preds = %9
  %27 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #13
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %206

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 5
  %33 = load i32, ptr %4, align 4
  br label %34

34:                                               ; preds = %102, %31
  %35 = phi i32 [ %99, %102 ], [ %33, %31 ]
  %36 = phi i32 [ %103, %102 ], [ 5, %31 ]
  %37 = and i32 %35, 240
  %38 = or i32 %37, 768
  store i32 %38, ptr %4, align 4
  %39 = load ptr, ptr %0, align 64
  %40 = getelementptr inbounds %struct.ata_port, ptr %39, i32 0, i32 25
  %41 = icmp eq ptr %40, %0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.ata_port, ptr %39, i32 0, i32 26
  %44 = load ptr, ptr %43, align 64
  %45 = icmp eq ptr %44, %0
  br i1 %45, label %46, label %61

46:                                               ; preds = %42, %34
  %47 = getelementptr inbounds %struct.ata_port, ptr %39, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %206, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.ata_port, ptr %39, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ata_port_operations, ptr %53, i32 0, i32 27
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %206, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ata_port_operations, ptr %53, i32 0, i32 28
  %59 = load ptr, ptr %58, align 4
  %60 = call i32 %59(ptr noundef %0, i32 noundef 2, i32 noundef %38) #13
  br label %63

61:                                               ; preds = %42
  %62 = call i32 @sata_pmp_scr_write(ptr noundef %0, i32 noundef 2, i32 noundef %38) #13
  br label %63

63:                                               ; preds = %61, %57
  %64 = phi i32 [ %60, %57 ], [ %62, %61 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %206

66:                                               ; preds = %63
  %67 = load i32, ptr %32, align 8
  %68 = and i32 %67, 2048
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load ptr, ptr %0, align 64
  call void @ata_msleep(ptr noundef %71, i32 noundef 200) #13
  br label %72

72:                                               ; preds = %70, %66
  %73 = load ptr, ptr %0, align 64
  %74 = getelementptr inbounds %struct.ata_port, ptr %73, i32 0, i32 25
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.ata_port, ptr %73, i32 0, i32 26
  %78 = load ptr, ptr %77, align 64
  %79 = icmp eq ptr %78, %0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76, %72
  %81 = getelementptr inbounds %struct.ata_port, ptr %73, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %206, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.ata_port, ptr %73, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.ata_port_operations, ptr %87, i32 0, i32 27
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %206, label %91

91:                                               ; preds = %85
  %92 = call i32 %89(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #13
  br label %95

93:                                               ; preds = %76
  %94 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #13
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %206

98:                                               ; preds = %95
  %99 = load i32, ptr %4, align 4
  %100 = and i32 %99, 3855
  %101 = icmp eq i32 %100, 768
  br i1 %101, label %124, label %102

102:                                              ; preds = %98
  %103 = add nsw i32 %36, -1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %34

105:                                              ; preds = %102
  %106 = load ptr, ptr %0, align 64
  %107 = getelementptr inbounds %struct.ata_port, ptr %106, i32 0, i32 27
  %108 = load i32, ptr %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ata_port, ptr %106, i32 0, i32 26
  %112 = load ptr, ptr %111, align 64
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %110, %105
  %115 = getelementptr inbounds %struct.ata_port, ptr %106, i32 0, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %116, i32 noundef %118, i32 noundef %99) #14
  br label %206

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.ata_port, ptr %106, i32 0, i32 5
  %122 = load i32, ptr %121, align 4
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %122, i32 noundef %99) #14
  br label %206

124:                                              ; preds = %98
  %125 = icmp slt i32 %36, 5
  br i1 %125, label %126, label %147

126:                                              ; preds = %124
  %127 = load ptr, ptr %0, align 64
  %128 = getelementptr inbounds %struct.ata_port, ptr %127, i32 0, i32 27
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.ata_port, ptr %127, i32 0, i32 26
  %133 = load ptr, ptr %132, align 64
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %131, %126
  %136 = getelementptr inbounds %struct.ata_port, ptr %127, i32 0, i32 5
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = sub i32 5, %36
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %137, i32 noundef %139, i32 noundef %140) #14
  br label %147

142:                                              ; preds = %131
  %143 = getelementptr inbounds %struct.ata_port, ptr %127, i32 0, i32 5
  %144 = load i32, ptr %143, align 4
  %145 = sub i32 5, %36
  %146 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %144, i32 noundef %145) #14
  br label %147

147:                                              ; preds = %142, %135, %124
  %148 = call i32 @sata_link_debounce(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %206

150:                                              ; preds = %147
  %151 = load ptr, ptr %0, align 64
  %152 = getelementptr inbounds %struct.ata_port, ptr %151, i32 0, i32 25
  %153 = icmp eq ptr %152, %0
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.ata_port, ptr %151, i32 0, i32 26
  %156 = load ptr, ptr %155, align 64
  %157 = icmp eq ptr %156, %0
  br i1 %157, label %158, label %171

158:                                              ; preds = %154, %150
  %159 = getelementptr inbounds %struct.ata_port, ptr %151, i32 0, i32 3
  %160 = load i32, ptr %159, align 4
  %161 = and i32 %160, 2
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %206, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.ata_port, ptr %151, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.ata_port_operations, ptr %165, i32 0, i32 27
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %206, label %169

169:                                              ; preds = %163
  %170 = call i32 %167(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #13
  br label %173

171:                                              ; preds = %154
  %172 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #13
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %202

176:                                              ; preds = %173
  %177 = load i32, ptr %5, align 4
  %178 = load ptr, ptr %0, align 64
  %179 = getelementptr inbounds %struct.ata_port, ptr %178, i32 0, i32 25
  %180 = icmp eq ptr %179, %0
  br i1 %180, label %185, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.ata_port, ptr %178, i32 0, i32 26
  %183 = load ptr, ptr %182, align 64
  %184 = icmp eq ptr %183, %0
  br i1 %184, label %185, label %200

185:                                              ; preds = %181, %176
  %186 = getelementptr inbounds %struct.ata_port, ptr %178, i32 0, i32 3
  %187 = load i32, ptr %186, align 4
  %188 = and i32 %187, 2
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %206, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.ata_port, ptr %178, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.ata_port_operations, ptr %192, i32 0, i32 27
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %206, label %196

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.ata_port_operations, ptr %192, i32 0, i32 28
  %198 = load ptr, ptr %197, align 4
  %199 = call i32 %198(ptr noundef %0, i32 noundef 1, i32 noundef %177) #13
  br label %202

200:                                              ; preds = %181
  %201 = call i32 @sata_pmp_scr_write(ptr noundef %0, i32 noundef 1, i32 noundef %177) #13
  br label %202

202:                                              ; preds = %200, %196, %173
  %203 = phi i32 [ %174, %173 ], [ %199, %196 ], [ %201, %200 ]
  %204 = icmp eq i32 %203, -22
  %205 = select i1 %204, i32 0, i32 %203
  br label %206

206:                                              ; preds = %202, %190, %185, %163, %158, %147, %120, %114, %95, %85, %80, %63, %51, %46, %28, %18, %13
  %207 = phi i32 [ %29, %28 ], [ 0, %120 ], [ 0, %114 ], [ %148, %147 ], [ -95, %18 ], [ -95, %13 ], [ -95, %190 ], [ -95, %185 ], [ -95, %163 ], [ -95, %158 ], [ %205, %202 ], [ -95, %80 ], [ -95, %85 ], [ -95, %46 ], [ -95, %51 ], [ %96, %95 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %207
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_link_scr_lpm(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr %0, align 64
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 25
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 26
  %10 = load ptr, ptr %9, align 64
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %111, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.ata_port_operations, ptr %19, i32 0, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %111, label %23

23:                                               ; preds = %17
  %24 = call i32 %21(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #13
  br label %27

25:                                               ; preds = %8
  %26 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #13
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %111

30:                                               ; preds = %27
  switch i32 %1, label %49 [
    i32 1, label %31
    i32 2, label %36
    i32 3, label %40
    i32 4, label %40
    i32 5, label %40
  ]

31:                                               ; preds = %30
  %32 = load i32, ptr %4, align 4
  %33 = or i32 %32, 1792
  store i32 %33, ptr %4, align 4
  br i1 %2, label %34, label %51

34:                                               ; preds = %31
  %35 = or i32 %32, 18176
  store i32 %35, ptr %4, align 4
  br label %51

36:                                               ; preds = %30
  %37 = load i32, ptr %4, align 4
  %38 = and i32 %37, -1793
  %39 = or i32 %38, 1536
  store i32 %39, ptr %4, align 4
  br label %51

40:                                               ; preds = %30, %30, %30
  %41 = call i32 @ata_link_nr_enabled(ptr noundef %0) #13
  %42 = icmp sgt i32 %41, 0
  %43 = load i32, ptr %4, align 4
  br i1 %42, label %44, label %46

44:                                               ; preds = %40
  %45 = and i32 %43, -1793
  store i32 %45, ptr %4, align 4
  br label %51

46:                                               ; preds = %40
  %47 = and i32 %43, -16
  %48 = or i32 %47, 4
  store i32 %48, ptr %4, align 4
  br label %51

49:                                               ; preds = %30
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 407, i32 noundef 9, ptr noundef null) #13
  %50 = load i32, ptr %4, align 4
  br label %51

51:                                               ; preds = %49, %46, %44, %36, %34, %31
  %52 = phi i32 [ %50, %49 ], [ %45, %44 ], [ %48, %46 ], [ %39, %36 ], [ %35, %34 ], [ %33, %31 ]
  %53 = phi i1 [ false, %49 ], [ false, %44 ], [ false, %46 ], [ false, %36 ], [ true, %34 ], [ false, %31 ]
  %54 = load ptr, ptr %0, align 64
  %55 = getelementptr inbounds %struct.ata_port, ptr %54, i32 0, i32 25
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.ata_port, ptr %54, i32 0, i32 26
  %59 = load ptr, ptr %58, align 64
  %60 = icmp eq ptr %59, %0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57, %51
  %62 = getelementptr inbounds %struct.ata_port, ptr %54, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %111, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.ata_port, ptr %54, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.ata_port_operations, ptr %68, i32 0, i32 27
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %111, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.ata_port_operations, ptr %68, i32 0, i32 28
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 %74(ptr noundef %0, i32 noundef 2, i32 noundef %52) #13
  br label %78

76:                                               ; preds = %57
  %77 = call i32 @sata_pmp_scr_write(ptr noundef %0, i32 noundef 2, i32 noundef %52) #13
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %75, %72 ], [ %77, %76 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %111

81:                                               ; preds = %78
  br i1 %53, label %82, label %83

82:                                               ; preds = %81
  call void @msleep(i32 noundef 10) #13
  br label %83

83:                                               ; preds = %82, %81
  %84 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, -65537
  store i32 %86, ptr %84, align 4
  %87 = load ptr, ptr %0, align 64
  %88 = getelementptr inbounds %struct.ata_port, ptr %87, i32 0, i32 25
  %89 = icmp eq ptr %88, %0
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.ata_port, ptr %87, i32 0, i32 26
  %92 = load ptr, ptr %91, align 64
  %93 = icmp eq ptr %92, %0
  br i1 %93, label %94, label %109

94:                                               ; preds = %90, %83
  %95 = getelementptr inbounds %struct.ata_port, ptr %87, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.ata_port, ptr %87, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.ata_port_operations, ptr %101, i32 0, i32 27
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.ata_port_operations, ptr %101, i32 0, i32 28
  %107 = load ptr, ptr %106, align 4
  %108 = call i32 %107(ptr noundef %0, i32 noundef 1, i32 noundef 65536) #13
  br label %111

109:                                              ; preds = %90
  %110 = call i32 @sata_pmp_scr_write(ptr noundef %0, i32 noundef 1, i32 noundef 65536) #13
  br label %111

111:                                              ; preds = %109, %105, %99, %94, %78, %66, %61, %27, %17, %12
  %112 = phi i32 [ %28, %27 ], [ %79, %78 ], [ %108, %105 ], [ %110, %109 ], [ -95, %99 ], [ -95, %94 ], [ -95, %17 ], [ -95, %12 ], [ -95, %66 ], [ -95, %61 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_link_nr_enabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_set_spd(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = load ptr, ptr %0, align 64
  %4 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 25
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 26
  %8 = load ptr, ptr %7, align 64
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %23

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %87, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ata_port_operations, ptr %17, i32 0, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %87, label %21

21:                                               ; preds = %15
  %22 = call i32 %19(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #13
  br label %25

23:                                               ; preds = %6
  %24 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #13
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %25
  %29 = load ptr, ptr %0, align 64
  %30 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 25
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 26
  %36 = load ptr, ptr %35, align 64
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 25, i32 9
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = shl nsw i32 -1, %40
  %44 = xor i32 %43, -1
  %45 = and i32 %31, %44
  br label %46

46:                                               ; preds = %42, %38, %34, %28
  %47 = phi i32 [ %31, %34 ], [ %45, %42 ], [ %31, %38 ], [ %31, %28 ]
  %48 = call i32 @llvm.ctlz.i32(i32 %47, i1 false) #13, !range !9
  %49 = sub nuw nsw i32 32, %48
  %50 = add i32 %47, 1
  %51 = icmp ult i32 %50, 2
  %52 = select i1 %51, i32 0, i32 %49
  %53 = load i32, ptr %2, align 4
  %54 = lshr i32 %53, 4
  %55 = and i32 %54, 15
  %56 = and i32 %53, -241
  %57 = shl nuw nsw i32 %52, 4
  %58 = and i32 %57, 240
  %59 = or i32 %58, %56
  store i32 %59, ptr %2, align 4
  %60 = icmp eq i32 %55, %52
  br i1 %60, label %87, label %61

61:                                               ; preds = %46
  br i1 %33, label %66, label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 26
  %64 = load ptr, ptr %63, align 64
  %65 = icmp eq ptr %64, %0
  br i1 %65, label %66, label %81

66:                                               ; preds = %62, %61
  %67 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ata_port, ptr %29, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.ata_port_operations, ptr %73, i32 0, i32 27
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.ata_port_operations, ptr %73, i32 0, i32 28
  %79 = load ptr, ptr %78, align 4
  %80 = call i32 %79(ptr noundef %0, i32 noundef 2, i32 noundef %59) #13
  br label %83

81:                                               ; preds = %62
  %82 = call i32 @sata_pmp_scr_write(ptr noundef %0, i32 noundef 2, i32 noundef %59) #13
  br label %83

83:                                               ; preds = %81, %77
  %84 = phi i32 [ %80, %77 ], [ %82, %81 ]
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 1, i32 %84
  br label %87

87:                                               ; preds = %83, %71, %66, %46, %25, %15, %10
  %88 = phi i32 [ %26, %25 ], [ 0, %46 ], [ -95, %15 ], [ -95, %10 ], [ -95, %71 ], [ -95, %66 ], [ %86, %83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_link_hardreset(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = icmp eq ptr %3, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i8 0, ptr %3, align 1
  br label %11

11:                                               ; preds = %10, %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !8
  %12 = load ptr, ptr %0, align 64
  %13 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 25
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 26
  %17 = load ptr, ptr %16, align 64
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ata_port, ptr %12, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.ata_port_operations, ptr %26, i32 0, i32 27
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %55, label %30

30:                                               ; preds = %24
  %31 = call i32 %28(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %7) #13
  br label %34

32:                                               ; preds = %15
  %33 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %7) #13
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %0, align 64
  br i1 %36, label %38, label %55

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.ata_port, ptr %37, i32 0, i32 25
  %42 = icmp eq ptr %41, %0
  br i1 %42, label %57, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ata_port, ptr %37, i32 0, i32 26
  %45 = load ptr, ptr %44, align 64
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ata_port, ptr %37, i32 0, i32 25, i32 9
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = shl nsw i32 -1, %49
  %53 = xor i32 %52, -1
  %54 = and i32 %40, %53
  br label %57

55:                                               ; preds = %34, %24, %19
  %56 = phi ptr [ %12, %24 ], [ %12, %19 ], [ %37, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br label %68

57:                                               ; preds = %51, %47, %43, %38
  %58 = phi i32 [ %40, %43 ], [ %54, %51 ], [ %40, %47 ], [ %40, %38 ]
  %59 = call i32 @llvm.ctlz.i32(i32 %58, i1 false) #13, !range !9
  %60 = sub nuw nsw i32 32, %59
  %61 = add i32 %58, 1
  %62 = icmp ult i32 %61, 2
  %63 = select i1 %62, i32 0, i32 %60
  %64 = load i32, ptr %7, align 4
  %65 = lshr i32 %64, 4
  %66 = and i32 %65, 15
  %67 = icmp eq i32 %66, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  br i1 %67, label %128, label %68

68:                                               ; preds = %57, %55
  %69 = phi ptr [ %56, %55 ], [ %37, %57 ]
  %70 = getelementptr inbounds %struct.ata_port, ptr %69, i32 0, i32 25
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.ata_port, ptr %69, i32 0, i32 26
  %74 = load ptr, ptr %73, align 64
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %76, label %89

76:                                               ; preds = %72, %68
  %77 = getelementptr inbounds %struct.ata_port, ptr %69, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %231, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.ata_port, ptr %69, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.ata_port_operations, ptr %83, i32 0, i32 27
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %231, label %87

87:                                               ; preds = %81
  %88 = call i32 %85(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %8) #13
  br label %91

89:                                               ; preds = %72
  %90 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %8) #13
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %229

94:                                               ; preds = %91
  %95 = load i32, ptr %8, align 4
  %96 = and i32 %95, 240
  %97 = or i32 %96, 772
  store i32 %97, ptr %8, align 4
  %98 = load ptr, ptr %0, align 64
  %99 = getelementptr inbounds %struct.ata_port, ptr %98, i32 0, i32 25
  %100 = icmp eq ptr %99, %0
  br i1 %100, label %105, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.ata_port, ptr %98, i32 0, i32 26
  %103 = load ptr, ptr %102, align 64
  %104 = icmp eq ptr %103, %0
  br i1 %104, label %105, label %120

105:                                              ; preds = %101, %94
  %106 = getelementptr inbounds %struct.ata_port, ptr %98, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %231, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.ata_port, ptr %98, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.ata_port_operations, ptr %112, i32 0, i32 27
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %231, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.ata_port_operations, ptr %112, i32 0, i32 28
  %118 = load ptr, ptr %117, align 4
  %119 = call i32 %118(ptr noundef %0, i32 noundef 2, i32 noundef %97) #13
  br label %122

120:                                              ; preds = %101
  %121 = call i32 @sata_pmp_scr_write(ptr noundef %0, i32 noundef 2, i32 noundef %97) #13
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi i32 [ %119, %116 ], [ %121, %120 ]
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %229

125:                                              ; preds = %122
  %126 = call i32 @sata_set_spd(ptr noundef %0)
  %127 = load ptr, ptr %0, align 64
  br label %128

128:                                              ; preds = %125, %57
  %129 = phi ptr [ %127, %125 ], [ %37, %57 ]
  %130 = getelementptr inbounds %struct.ata_port, ptr %129, i32 0, i32 25
  %131 = icmp eq ptr %130, %0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.ata_port, ptr %129, i32 0, i32 26
  %134 = load ptr, ptr %133, align 64
  %135 = icmp eq ptr %134, %0
  br i1 %135, label %136, label %149

136:                                              ; preds = %132, %128
  %137 = getelementptr inbounds %struct.ata_port, ptr %129, i32 0, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 2
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %231, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.ata_port, ptr %129, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.ata_port_operations, ptr %143, i32 0, i32 27
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %231, label %147

147:                                              ; preds = %141
  %148 = call i32 %145(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %8) #13
  br label %151

149:                                              ; preds = %132
  %150 = call i32 @sata_pmp_scr_read(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %8) #13
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %229

154:                                              ; preds = %151
  %155 = load i32, ptr %8, align 4
  %156 = and i32 %155, 240
  %157 = or i32 %156, 769
  store i32 %157, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 %157, ptr %6, align 4
  %158 = load ptr, ptr %0, align 64
  %159 = getelementptr inbounds %struct.ata_port, ptr %158, i32 0, i32 25
  %160 = icmp eq ptr %159, %0
  br i1 %160, label %165, label %161

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.ata_port, ptr %158, i32 0, i32 26
  %163 = load ptr, ptr %162, align 64
  %164 = icmp eq ptr %163, %0
  br i1 %164, label %165, label %188

165:                                              ; preds = %161, %154
  %166 = getelementptr inbounds %struct.ata_port, ptr %158, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 2
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %190, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.ata_port, ptr %158, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.ata_port_operations, ptr %172, i32 0, i32 27
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %190, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.ata_port_operations, ptr %172, i32 0, i32 28
  %178 = load ptr, ptr %177, align 4
  %179 = call i32 %178(ptr noundef %0, i32 noundef 2, i32 noundef %157) #13
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load ptr, ptr %0, align 64
  %183 = getelementptr inbounds %struct.ata_port, ptr %182, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.ata_port_operations, ptr %184, i32 0, i32 27
  %186 = load ptr, ptr %185, align 4
  %187 = call i32 %186(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %6) #13
  br label %192

188:                                              ; preds = %161
  %189 = call i32 @sata_pmp_scr_write(ptr noundef %0, i32 noundef 2, i32 noundef %157) #13
  br label %192

190:                                              ; preds = %176, %170, %165
  %191 = phi i32 [ -95, %165 ], [ -95, %170 ], [ %179, %176 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %229

192:                                              ; preds = %188, %181
  %193 = phi i32 [ %189, %188 ], [ %187, %181 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %229

195:                                              ; preds = %192
  %196 = load ptr, ptr %0, align 64
  call void @ata_msleep(ptr noundef %196, i32 noundef 1) #13
  %197 = call i32 @sata_link_resume(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %229

199:                                              ; preds = %195
  %200 = call zeroext i1 @ata_phys_link_offline(ptr noundef %0) #13
  br i1 %200, label %253, label %201

201:                                              ; preds = %199
  br i1 %9, label %203, label %202

202:                                              ; preds = %201
  store i8 1, ptr %3, align 1
  br label %203

203:                                              ; preds = %202, %201
  %204 = load ptr, ptr %0, align 64
  %205 = getelementptr inbounds %struct.ata_port, ptr %204, i32 0, i32 3
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %206, 524288
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %225, label %209

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.ata_port, ptr %204, i32 0, i32 25
  %211 = icmp eq ptr %210, %0
  br i1 %211, label %216, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.ata_port, ptr %204, i32 0, i32 26
  %214 = load ptr, ptr %213, align 64
  %215 = icmp eq ptr %214, %0
  br i1 %215, label %216, label %225

216:                                              ; preds = %212, %209
  %217 = icmp eq ptr %4, null
  br i1 %217, label %253, label %218

218:                                              ; preds = %216
  %219 = load volatile i32, ptr @jiffies, align 64
  %220 = add i32 %219, 500
  %221 = sub i32 %2, %220
  %222 = icmp slt i32 %221, 0
  %223 = select i1 %222, i32 %2, i32 %220
  %224 = call i32 @ata_wait_ready(ptr noundef %0, i32 noundef %223, ptr noundef nonnull %4) #13
  br label %253

225:                                              ; preds = %212, %203
  %226 = icmp eq ptr %4, null
  br i1 %226, label %253, label %227

227:                                              ; preds = %225
  %228 = call i32 @ata_wait_ready(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %4) #13
  br label %229

229:                                              ; preds = %227, %195, %192, %190, %151, %122, %91
  %230 = phi i32 [ %92, %91 ], [ %123, %122 ], [ %152, %151 ], [ %193, %192 ], [ %197, %195 ], [ %228, %227 ], [ %191, %190 ]
  switch i32 %230, label %231 [
    i32 -11, label %253
    i32 0, label %253
  ]

231:                                              ; preds = %229, %141, %136, %110, %105, %81, %76
  %232 = phi i32 [ %230, %229 ], [ -95, %81 ], [ -95, %76 ], [ -95, %110 ], [ -95, %105 ], [ -95, %141 ], [ -95, %136 ]
  br i1 %9, label %234, label %233

233:                                              ; preds = %231
  store i8 0, ptr %3, align 1
  br label %234

234:                                              ; preds = %233, %231
  %235 = load ptr, ptr %0, align 64
  %236 = getelementptr inbounds %struct.ata_port, ptr %235, i32 0, i32 27
  %237 = load i32, ptr %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.ata_port, ptr %235, i32 0, i32 26
  %241 = load ptr, ptr %240, align 64
  %242 = icmp eq ptr %241, null
  br i1 %242, label %249, label %243

243:                                              ; preds = %239, %234
  %244 = getelementptr inbounds %struct.ata_port, ptr %235, i32 0, i32 5
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %247 = load i32, ptr %246, align 4
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %245, i32 noundef %247, i32 noundef %232) #14
  br label %253

249:                                              ; preds = %239
  %250 = getelementptr inbounds %struct.ata_port, ptr %235, i32 0, i32 5
  %251 = load i32, ptr %250, align 4
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %251, i32 noundef %232) #14
  br label %253

253:                                              ; preds = %249, %243, %229, %229, %225, %218, %216, %199
  %254 = phi i32 [ %230, %229 ], [ %230, %229 ], [ %232, %243 ], [ %232, %249 ], [ -11, %216 ], [ -11, %218 ], [ 0, %225 ], [ 0, %199 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret i32 %254
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_phys_link_offline(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_ready(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_qc_complete_multiple(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 21
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 4294967296
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = shl i64 %1, 32
  %9 = and i64 %8, 4294967296
  %10 = or i64 %9, %1
  %11 = and i64 %1, 1
  %12 = xor i64 %10, %11
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i64 [ %12, %7 ], [ %1, %2 ]
  %15 = xor i64 %14, %4
  %16 = and i64 %15, %14
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22, !prof !10

18:                                               ; preds = %13
  %19 = icmp eq i64 %15, 0
  br i1 %19, label %63, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  br label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %24, i64 noundef %4, i64 noundef %14) #14
  br label %63

26:                                               ; preds = %56, %20
  %27 = phi i32 [ 0, %20 ], [ %57, %56 ]
  %28 = phi i64 [ %15, %20 ], [ %61, %56 ]
  %29 = trunc i64 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = lshr i64 %28, 32
  %33 = trunc i64 %32 to i32
  %34 = tail call i32 @llvm.cttz.i32(i32 %33, i1 false) #13, !range !9
  %35 = add nuw nsw i32 %34, 32
  br label %38

36:                                               ; preds = %26
  %37 = tail call i32 @llvm.cttz.i32(i32 %29, i1 true) #13, !range !9
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi i32 [ %35, %31 ], [ %37, %36 ]
  %40 = icmp ugt i32 %39, 32
  %41 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %39
  %42 = icmp eq ptr %41, null
  %43 = or i1 %40, %42
  br i1 %43, label %56, label %44, !prof !11

44:                                               ; preds = %38
  %45 = load ptr, ptr %21, align 4
  %46 = getelementptr inbounds %struct.ata_port_operations, ptr %45, i32 0, i32 22
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr %struct.ata_port, ptr %0, i32 0, i32 19, i32 %39, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 65537
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %44
  tail call void @ata_qc_complete(ptr noundef nonnull %41) #13
  %55 = add i32 %27, 1
  br label %56

56:                                               ; preds = %54, %49, %38
  %57 = phi i32 [ %55, %54 ], [ %27, %38 ], [ %27, %49 ]
  %58 = zext i32 %39 to i64
  %59 = shl nuw i64 1, %58
  %60 = xor i64 %59, -1
  %61 = and i64 %28, %60
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %26

63:                                               ; preds = %56, %22, %18
  %64 = phi i32 [ -22, %22 ], [ 0, %18 ], [ %57, %56 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_slave_link_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 724, i32 noundef 9, ptr noundef null) #13
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 725, i32 noundef 9, ptr noundef null) #13
  br label %12

12:                                               ; preds = %11, %6
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 4416) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @ata_link_init(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 1) #13
  store ptr %14, ptr %2, align 64
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ 0, %16 ], [ -12, %12 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_link_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @sata_lpm_ignore_phy_events(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 64
  %4 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 10
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1024
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = sub i32 -1000, %3
  %15 = add i32 %14, %13
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %7
  br label %18

18:                                               ; preds = %17, %12, %1
  %19 = phi i1 [ false, %17 ], [ true, %1 ], [ true, %12 ]
  ret i1 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_lpm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 43
  %7 = load i32, ptr %6, align 64
  %8 = icmp ugt i32 %7, 5
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = getelementptr [6 x ptr], ptr @ata_lpm_policy_names, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.18, ptr noundef %11) #13
  br label %13

13:                                               ; preds = %9, %3
  %14 = phi i32 [ %12, %9 ], [ -22, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_lpm_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 480
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.19, ptr noundef %2, i32 noundef 15)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.20, ptr noundef %2, i32 noundef 12)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(20) @.str.21, ptr noundef %2, i32 noundef 19)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(23) @.str.22, ptr noundef %2, i32 noundef 22)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(10) @.str.23, ptr noundef %2, i32 noundef 9)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %18, %15, %12, %9, %4
  %22 = phi i32 [ 1, %4 ], [ 2, %9 ], [ 3, %12 ], [ 4, %15 ], [ 5, %18 ]
  %23 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #13
  %26 = tail call ptr @ata_link_next(ptr noundef null, ptr noundef %6, i32 noundef 0) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 25
  br label %30

30:                                               ; preds = %43, %28
  %31 = phi ptr [ %26, %28 ], [ %44, %43 ]
  %32 = tail call ptr @ata_dev_next(ptr noundef null, ptr noundef %29, i32 noundef 0) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %40, %30
  %35 = phi ptr [ %41, %40 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.ata_device, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 1048576
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = tail call ptr @ata_dev_next(ptr noundef nonnull %35, ptr noundef %29, i32 noundef 0) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %34

43:                                               ; preds = %40, %30
  %44 = tail call ptr @ata_link_next(ptr noundef nonnull %31, ptr noundef %6, i32 noundef 0) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %30

46:                                               ; preds = %43, %21
  %47 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 43
  store i32 %22, ptr %47, align 64
  tail call void @ata_port_schedule_eh(ptr noundef %6) #13
  br label %48

48:                                               ; preds = %46, %34
  %49 = phi i32 [ %3, %46 ], [ -95, %34 ]
  %50 = load ptr, ptr %23, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %25) #13
  br label %51

51:                                               ; preds = %48, %18
  %52 = phi i32 [ %49, %48 ], [ -22, %18 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_ncq_prio_supported_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -264
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #13
  %10 = tail call ptr @ata_scsi_find_dev(ptr noundef %7, ptr noundef %4) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 20
  %16 = and i32 %15, 1
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %19 = phi i32 [ 0, %12 ], [ -19, %3 ]
  %20 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br i1 %11, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %18) #13
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %24, %23 ], [ %19, %17 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_ncq_prio_enable_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -264
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #13
  %10 = tail call ptr @ata_scsi_find_dev(ptr noundef %7, ptr noundef %4) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ata_device, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 21
  %16 = and i32 %15, 1
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi i32 [ %16, %12 ], [ 0, %3 ]
  %19 = phi i32 [ 0, %12 ], [ -19, %3 ]
  %20 = load ptr, ptr %8, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !13
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !14
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br i1 %11, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %18) #13
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %24, %23 ], [ %19, %17 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_ncq_prio_enable_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 -264
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 4
  %11 = icmp ugt i32 %10, 1
  br i1 %11, label %36, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, ptr %13, i32 0, i32 53
  %15 = load ptr, ptr %14, align 8
  %16 = call ptr @ata_scsi_find_dev(ptr noundef %15, ptr noundef %6) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18, !prof !11

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.ata_port, ptr %15, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  call void @_raw_spin_lock_irq(ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.ata_device, ptr %16, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1048576
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %5, align 4
  %27 = icmp eq i32 %26, 0
  %28 = and i32 %22, -2097153
  %29 = select i1 %27, i32 0, i32 2097152
  %30 = or i32 %28, %29
  store i32 %30, ptr %21, align 4
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i32 [ -22, %18 ], [ %3, %25 ]
  %33 = load ptr, ptr %19, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !12
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %33, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !13
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !14
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br label %36

36:                                               ; preds = %31, %12, %9, %4
  %37 = phi i32 [ %32, %31 ], [ %7, %4 ], [ -22, %9 ], [ -19, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_em_message_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ata_port_operations, ptr %7, i32 0, i32 53
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2097152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 %9(ptr noundef %5, ptr noundef %2) #13
  br label %18

18:                                               ; preds = %16, %11, %3
  %19 = phi i32 [ %17, %16 ], [ -22, %11 ], [ -22, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_em_message_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 480
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ata_port_operations, ptr %8, i32 0, i32 54
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.ata_port, ptr %6, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 %10(ptr noundef %6, ptr noundef %2, i32 noundef %3) #13
  br label %19

19:                                               ; preds = %17, %12, %4
  %20 = phi i32 [ %18, %17 ], [ -22, %12 ], [ -22, %4 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_em_message_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 480
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.ata_port, ptr %5, i32 0, i32 47
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %7) #13
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_activity_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -264
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @ata_scsi_find_dev(ptr noundef %7, ptr noundef %4) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ata_port_operations, ptr %12, i32 0, i32 55
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 4194304
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 %14(ptr noundef nonnull %8, ptr noundef %2) #13
  br label %23

23:                                               ; preds = %21, %16, %10, %3
  %24 = phi i32 [ %22, %21 ], [ -22, %16 ], [ -22, %10 ], [ -22, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ata_scsi_activity_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -264
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 53
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @ata_scsi_find_dev(ptr noundef %8, ptr noundef %5) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ata_port_operations, ptr %13, i32 0, i32 56
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.ata_port, ptr %8, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4194304
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 0) #13
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load ptr, ptr %12, align 4
  %27 = getelementptr inbounds %struct.ata_port_operations, ptr %26, i32 0, i32 56
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef nonnull %9, i32 noundef %23) #13
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 %3, i32 %29
  br label %32

32:                                               ; preds = %25, %22, %17, %11, %4
  %33 = phi i32 [ %31, %25 ], [ -22, %22 ], [ -22, %17 ], [ -22, %11 ], [ -22, %4 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__ata_change_queue_depth(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = icmp slt i32 %2, 1
  %5 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 9
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = icmp eq i32 %7, %2
  %9 = select i1 %4, i1 true, i1 %8
  br i1 %9, label %50, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @ata_scsi_find_dev(ptr noundef %0, ptr noundef %1) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ata_device, ptr %11, i32 0, i32 9
  %15 = load i32, ptr %14, align 64
  switch i32 %15, label %16 [
    i32 7, label %19
    i32 5, label %19
    i32 3, label %19
    i32 1, label %19
    i32 9, label %19
  ]

16:                                               ; preds = %13, %10
  %17 = load i16, ptr %5, align 4
  %18 = zext i16 %17 to i32
  br label %50

19:                                               ; preds = %13, %13, %13, %13, %13
  %20 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #13
  %23 = getelementptr inbounds %struct.ata_device, ptr %11, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, -8193
  %26 = icmp ne i32 %2, 1
  %27 = and i32 %24, 4104
  %28 = icmp eq i32 %27, 8
  %29 = select i1 %26, i1 %28, i1 false
  %30 = select i1 %29, i32 0, i32 8192
  %31 = or i32 %25, %30
  %32 = select i1 %29, i32 %2, i32 1
  store i32 %31, ptr %23, align 4
  %33 = load ptr, ptr %20, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %22) #13
  %34 = load ptr, ptr %1, align 8
  %35 = getelementptr inbounds %struct.Scsi_Host, ptr %34, i32 0, i32 26
  %36 = load i32, ptr %35, align 4
  %37 = tail call i32 @llvm.smin.i32(i32 %32, i32 %36)
  %38 = getelementptr inbounds %struct.ata_device, ptr %11, i32 0, i32 25
  %39 = getelementptr [256 x i16], ptr %38, i32 0, i32 75
  %40 = load i16, ptr %39, align 2
  %41 = and i16 %40, 31
  %42 = add nuw nsw i16 %41, 1
  %43 = zext i16 %42 to i32
  %44 = tail call i32 @llvm.smin.i32(i32 %37, i32 %43)
  %45 = load i16, ptr %5, align 4
  %46 = zext i16 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %50, label %48

48:                                               ; preds = %19
  %49 = tail call i32 @scsi_change_queue_depth(ptr noundef %1, i32 noundef %44) #13
  br label %50

50:                                               ; preds = %48, %19, %16, %3
  %51 = phi i32 [ %49, %48 ], [ %18, %16 ], [ -22, %19 ], [ %7, %3 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_scsi_find_dev(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_scsi_change_queue_depth(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @__ata_change_queue_depth(ptr noundef %5, ptr noundef %0, i32 noundef %1)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ata_sas_port_alloc(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #2 {
  %4 = tail call ptr @ata_port_alloc(ptr noundef %0) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 7
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 2
  store ptr %0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.ata_port_info, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 15
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.ata_port_info, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 16
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ata_port_info, ptr %1, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 17
  store i32 %16, ptr %17, align 32
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.ata_port_info, ptr %1, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ata_port, ptr %4, i32 0, i32 18
  store i32 6, ptr %25, align 4
  br label %26

26:                                               ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_port_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @ata_sas_port_start(ptr nocapture noundef %0) #7 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 22
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 16
  %10 = and i32 %9, -5
  store i32 %10, ptr %8, align 16
  br label %11

11:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @ata_sas_port_stop(ptr nocapture %0) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sas_async_probe(ptr noundef %0) #2 {
  tail call void @__ata_port_probe(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ata_port_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sas_sync_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @ata_port_probe(ptr noundef %0) #13
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_probe(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sas_port_init(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 34
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @ata_print_id) #13, !srcloc !18
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @ata_print_id, ptr nonnull @ata_print_id, i32 1, ptr nonnull elementtype(i32) @ata_print_id) #13, !srcloc !19
  %10 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !20
  %11 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sas_tport_add(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @ata_tport_add(ptr noundef %0, ptr noundef %1) #13
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_tport_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sas_tport_delete(ptr noundef %0) #2 {
  tail call void @ata_tport_delete(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tport_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sas_port_destroy(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_port_operations, ptr %3, i32 0, i32 35
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void %5(ptr noundef %0) #13
  br label %8

8:                                                ; preds = %7, %1
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sas_slave_configure(ptr noundef %0, ptr noundef %1) #2 {
  tail call void @ata_scsi_sdev_config(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25, i32 14
  %4 = tail call i32 @ata_scsi_dev_config(ptr noundef %0, ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_sdev_config(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_dev_config(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sas_queuecmd(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25, i32 14, i32 0, i32 9
  %4 = load i32, ptr %3, align 64
  switch i32 %4, label %8 [
    i32 7, label %5
    i32 5, label %5
    i32 3, label %5
    i32 1, label %5
    i32 9, label %5
  ], !prof !21

5:                                                ; preds = %2, %2, %2, %2, %2
  %6 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25, i32 14
  %7 = tail call i32 @__ata_scsi_queuecmd(ptr noundef %0, ptr noundef %6) #13
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 24
  store i32 262144, ptr %9, align 4
  tail call void @scsi_done(ptr noundef %0) #13
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ 0, %8 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ata_scsi_queuecmd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ata_sas_allocate_tag(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 23
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 4
  %10 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 20
  br label %11

11:                                               ; preds = %22, %8
  %12 = phi i32 [ %9, %8 ], [ %16, %22 ]
  %13 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %14 = add i32 %12, 1
  %15 = icmp ult i32 %14, %5
  %16 = select i1 %15, i32 %14, i32 0
  %17 = icmp eq i32 %16, 32
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = tail call i32 @_test_and_set_bit(i32 noundef %16, ptr noundef %10) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 %16, ptr %6, align 4
  br label %25

22:                                               ; preds = %18, %11
  %23 = add nuw i32 %13, 1
  %24 = icmp eq i32 %23, %5
  br i1 %24, label %25, label %11

25:                                               ; preds = %22, %21, %1
  %26 = phi i32 [ %16, %21 ], [ -1, %1 ], [ -1, %22 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_sas_free_tag(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 20
  tail call void @_clear_bit(i32 noundef %0, ptr noundef %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sata_async_notification(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 262144
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %108, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 64
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 26
  %13 = load ptr, ptr %12, align 64
  %14 = icmp eq ptr %13, %8
  br i1 %14, label %15, label %28

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %58, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ata_port, ptr %9, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.ata_port_operations, ptr %22, i32 0, i32 27
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %58, label %26

26:                                               ; preds = %20
  %27 = call i32 %24(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %2) #13
  br label %30

28:                                               ; preds = %11
  %29 = call i32 @sata_pmp_scr_read(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %2) #13
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i32, ptr %2, align 4
  %35 = load ptr, ptr %8, align 64
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 26
  %39 = load ptr, ptr %38, align 64
  %40 = icmp eq ptr %39, %8
  br i1 %40, label %41, label %56

41:                                               ; preds = %37, %33
  %42 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ata_port, ptr %35, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.ata_port_operations, ptr %48, i32 0, i32 27
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.ata_port_operations, ptr %48, i32 0, i32 28
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 %54(ptr noundef %8, i32 noundef 4, i32 noundef %34) #13
  br label %62

56:                                               ; preds = %37
  %57 = call i32 @sata_pmp_scr_write(ptr noundef %8, i32 noundef 4, i32 noundef %34) #13
  br label %62

58:                                               ; preds = %30, %20, %15
  %59 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %77

62:                                               ; preds = %56, %52, %46, %41
  %63 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 27
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14
  %68 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 9
  %69 = load i32, ptr %68, align 64
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %108

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ata_port, ptr %0, i32 0, i32 25, i32 14, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 128
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %108, label %76

76:                                               ; preds = %71
  call void @ata_scsi_media_change_notify(ptr noundef %67) #13
  br label %108

77:                                               ; preds = %58
  call void @ata_port_schedule_eh(ptr noundef %0) #13
  br label %108

78:                                               ; preds = %62
  %79 = call ptr @ata_link_next(ptr noundef null, ptr noundef %0, i32 noundef 0) #13
  %80 = icmp eq ptr %79, null
  br i1 %80, label %103, label %81

81:                                               ; preds = %100, %78
  %82 = phi ptr [ %101, %100 ], [ %79, %78 ]
  %83 = load i32, ptr %2, align 4
  %84 = getelementptr inbounds %struct.ata_link, ptr %82, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = shl nuw i32 1, %85
  %87 = and i32 %86, %83
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %100, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.ata_link, ptr %82, i32 0, i32 14
  %91 = getelementptr inbounds %struct.ata_link, ptr %82, i32 0, i32 14, i32 0, i32 9
  %92 = load i32, ptr %91, align 64
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.ata_link, ptr %82, i32 0, i32 14, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, 128
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  call void @ata_scsi_media_change_notify(ptr noundef %90) #13
  br label %100

100:                                              ; preds = %99, %94, %89, %81
  %101 = call ptr @ata_link_next(ptr noundef nonnull %82, ptr noundef %0, i32 noundef 0) #13
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %81

103:                                              ; preds = %100, %78
  %104 = load i32, ptr %2, align 4
  %105 = and i32 %104, 32768
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  call void @ata_port_schedule_eh(ptr noundef %0) #13
  br label %108

108:                                              ; preds = %107, %103, %77, %76, %71, %66, %1
  %109 = phi i32 [ 1, %77 ], [ 0, %1 ], [ 0, %76 ], [ 0, %71 ], [ 0, %66 ], [ 1, %107 ], [ 0, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_media_change_notify(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_schedule_eh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_link_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ata_eh_analyze_ncq_error(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 64
  %3 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14
  %4 = getelementptr inbounds %struct.ata_port, ptr %2, i32 0, i32 4
  %5 = load i32, ptr %4, align 16
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %195

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %195, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %195, label %17

17:                                               ; preds = %27, %12
  %18 = phi i32 [ %28, %27 ], [ 0, %12 ]
  %19 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %18, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %18, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %195

27:                                               ; preds = %23, %17
  %28 = add nuw nsw i32 %18, 1
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %17

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 64
  %32 = load ptr, ptr %31, align 64
  %33 = getelementptr inbounds %struct.ata_port, ptr %32, i32 0, i32 50
  %34 = tail call i32 @ata_read_log_page(ptr noundef %3, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef %33, i32 noundef 1) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %109

36:                                               ; preds = %36, %30
  %37 = phi i32 [ %42, %36 ], [ 0, %30 ]
  %38 = phi i8 [ %41, %36 ], [ 0, %30 ]
  %39 = getelementptr i8, ptr %33, i32 %37
  %40 = load i8, ptr %39, align 1
  %41 = add i8 %40, %38
  %42 = add nuw nsw i32 %37, 1
  %43 = icmp eq i32 %42, 512
  br i1 %43, label %44, label %36

44:                                               ; preds = %36
  %45 = icmp eq i8 %41, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %3, align 64
  %48 = load ptr, ptr %47, align 64
  %49 = getelementptr inbounds %struct.ata_port, ptr %48, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.ata_link, ptr %47, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  %56 = zext i8 %41 to i32
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %50, i32 noundef %55, i32 noundef %56) #14
  br label %58

58:                                               ; preds = %46, %44
  %59 = load i8, ptr %33, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 128
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %109

63:                                               ; preds = %58
  %64 = and i32 %60, 31
  %65 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 2
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 5
  %72 = load i8, ptr %71, align 1
  %73 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 6
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 7
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 8
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 9
  %80 = load i8, ptr %79, align 1
  %81 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 10
  %82 = load i8, ptr %81, align 1
  %83 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 12
  %84 = load i8, ptr %83, align 1
  %85 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 13
  %86 = load i8, ptr %85, align 1
  %87 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 9
  %88 = load i32, ptr %87, align 64
  %89 = icmp eq i32 %88, 9
  br i1 %89, label %90, label %129

90:                                               ; preds = %63
  %91 = getelementptr %struct.ata_link, ptr %0, i32 0, i32 14, i32 0, i32 25, i32 0, i32 39
  %92 = load i16, ptr %91, align 4
  %93 = and i16 %92, 128
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %129, label %95

95:                                               ; preds = %90
  %96 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 14
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  %99 = shl nuw nsw i32 %98, 16
  %100 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 15
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or i32 %103, %99
  %105 = getelementptr %struct.ata_port, ptr %32, i32 0, i32 50, i32 16
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %104, %107
  br label %129

109:                                              ; preds = %58, %30
  %110 = phi i32 [ -5, %30 ], [ -2, %58 ]
  %111 = load ptr, ptr %0, align 64
  %112 = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 27
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 26
  %117 = load ptr, ptr %116, align 64
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %115, %109
  %120 = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 5
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %121, i32 noundef %123, i32 noundef %110) #14
  br label %195

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.ata_port, ptr %111, i32 0, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %127, i32 noundef %110) #14
  br label %195

129:                                              ; preds = %95, %90, %63
  %130 = phi i32 [ 0, %63 ], [ %108, %95 ], [ 0, %90 ]
  %131 = load i32, ptr %9, align 4
  %132 = shl nuw i32 1, %64
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %129
  %136 = load ptr, ptr %0, align 64
  %137 = getelementptr inbounds %struct.ata_port, ptr %136, i32 0, i32 27
  %138 = load i32, ptr %137, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.ata_port, ptr %136, i32 0, i32 26
  %142 = load ptr, ptr %141, align 64
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %140, %135
  %145 = getelementptr inbounds %struct.ata_port, ptr %136, i32 0, i32 5
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds %struct.ata_link, ptr %0, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %146, i32 noundef %148, i32 noundef %64) #14
  br label %195

150:                                              ; preds = %140
  %151 = getelementptr inbounds %struct.ata_port, ptr %136, i32 0, i32 5
  %152 = load i32, ptr %151, align 4
  %153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %152, i32 noundef %64) #14
  br label %195

154:                                              ; preds = %129
  %155 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %64, i32 21
  %156 = getelementptr inbounds i8, ptr %155, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(3) %156, i8 0, i32 3, i1 false)
  %157 = getelementptr inbounds i8, ptr %155, i32 7
  store i8 %86, ptr %157, align 1
  %158 = getelementptr inbounds i8, ptr %155, i32 8
  store i8 %78, ptr %158, align 4
  %159 = getelementptr inbounds i8, ptr %155, i32 9
  store i8 %80, ptr %159, align 1
  %160 = getelementptr inbounds i8, ptr %155, i32 10
  store i8 %82, ptr %160, align 2
  %161 = getelementptr inbounds i8, ptr %155, i32 11
  store i8 %68, ptr %161, align 1
  %162 = getelementptr inbounds i8, ptr %155, i32 12
  store i8 %84, ptr %162, align 4
  %163 = getelementptr inbounds i8, ptr %155, i32 13
  store i8 %70, ptr %163, align 1
  %164 = getelementptr inbounds i8, ptr %155, i32 14
  store i8 %72, ptr %164, align 2
  %165 = getelementptr inbounds i8, ptr %155, i32 15
  store i8 %74, ptr %165, align 1
  %166 = getelementptr inbounds i8, ptr %155, i32 16
  store i8 %76, ptr %166, align 4
  %167 = getelementptr inbounds i8, ptr %155, i32 17
  store i8 %66, ptr %167, align 1
  %168 = getelementptr inbounds i8, ptr %155, i32 18
  store i16 0, ptr %168, align 2
  %169 = getelementptr inbounds i8, ptr %155, i32 20
  store i32 %130, ptr %169, align 4
  store i32 19, ptr %155, align 4
  %170 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %64, i32 20
  %171 = load i32, ptr %170, align 4
  %172 = or i32 %171, 1025
  store i32 %172, ptr %170, align 4
  %173 = load i32, ptr %87, align 64
  %174 = icmp eq i32 %173, 9
  br i1 %174, label %175, label %192

175:                                              ; preds = %154
  %176 = and i8 %66, 2
  %177 = icmp eq i8 %176, 0
  %178 = icmp eq i32 %130, 0
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %192, label %180

180:                                              ; preds = %175
  %181 = lshr i32 %130, 16
  %182 = trunc i32 %181 to i8
  %183 = lshr i32 %130, 8
  %184 = trunc i32 %183 to i8
  %185 = trunc i32 %130 to i8
  %186 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %64, i32 2
  %187 = load ptr, ptr %186, align 4
  tail call void @ata_scsi_set_sense(ptr noundef %3, ptr noundef %187, i8 noundef zeroext %182, i8 noundef zeroext %184, i8 noundef zeroext %185) #13
  %188 = load ptr, ptr %186, align 4
  tail call void @ata_scsi_set_sense_information(ptr noundef %3, ptr noundef %188, ptr noundef %155) #13
  %189 = getelementptr %struct.ata_port, ptr %2, i32 0, i32 19, i32 %64, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = or i32 %190, 131072
  store i32 %191, ptr %189, align 4
  br label %192

192:                                              ; preds = %180, %175, %154
  %193 = load i32, ptr %13, align 4
  %194 = and i32 %193, -2
  store i32 %194, ptr %13, align 4
  br label %195

195:                                              ; preds = %192, %150, %144, %125, %119, %23, %12, %8, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_set_sense(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_set_sense_information(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_dev_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_read_log_page(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148963043}
!13 = !{i64 2148958867}
!14 = !{i64 2148958942, i64 2148958969, i64 2148959016, i64 2148959038, i64 2148959066, i64 2148959086}
!15 = !{i64 342609}
!16 = !{i64 2148987187}
!17 = !{i64 2148047130}
!18 = !{i64 447125, i64 2147937096, i64 2147937122, i64 2147937169, i64 2147937191, i64 2147937219, i64 2147937239}
!19 = !{i64 2147949992, i64 2147950024, i64 2147950053, i64 2147950087, i64 2147950118, i64 2147950141}
!20 = !{i64 2148047333}
!21 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2001, i32 2001, i32 2000}
