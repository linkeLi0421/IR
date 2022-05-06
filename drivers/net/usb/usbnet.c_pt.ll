; ModuleID = '/llk/IR/drivers/net/usb/usbnet.c_pt.bc'
source_filename = "../drivers/net/usb/usbnet.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_get_endpoints:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_get_endpoints\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_get_endpoints:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_get_ethernet_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_get_ethernet_addr\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_get_ethernet_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_status_start:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_status_start\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_status_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_status_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_status_stop\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_status_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_skb_return:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_skb_return\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_skb_return:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_update_max_qlen:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_update_max_qlen\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_update_max_qlen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_change_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_defer_kevent:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_defer_kevent\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_defer_kevent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_pause_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_pause_rx\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_pause_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_resume_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_resume_rx\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_resume_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_purge_paused_rxq:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_purge_paused_rxq\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_purge_paused_rxq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_unlink_rx_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_unlink_rx_urbs\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_unlink_rx_urbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_stop\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_open:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_open\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_get_link_ksettings_mii:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_get_link_ksettings_mii\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_get_link_ksettings_mii:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_get_link_ksettings_internal:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_get_link_ksettings_internal\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_get_link_ksettings_internal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_set_link_ksettings_mii:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_set_link_ksettings_mii\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_set_link_ksettings_mii:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_get_link\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_get_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_nway_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_nway_reset\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_nway_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_get_drvinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_get_drvinfo\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_get_drvinfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_get_msglevel:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_get_msglevel\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_get_msglevel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_set_msglevel:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_set_msglevel\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_set_msglevel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_set_rx_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_set_rx_mode\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_set_rx_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_tx_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_tx_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_tx_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_start_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_start_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_start_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_probe\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_resume\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_device_suggests_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_device_suggests_idle\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_device_suggests_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_manage_power:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_manage_power\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_manage_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_link_change:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_link_change\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_link_change:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_read_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_read_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_read_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_write_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_write_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_write_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_read_cmd_nopm:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_read_cmd_nopm\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_read_cmd_nopm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_write_cmd_nopm:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_write_cmd_nopm\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_write_cmd_nopm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_write_cmd_async:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_write_cmd_async\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_write_cmd_async:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.115, i32 }
%union.anon.115 = type { ptr }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync, [28 x i8] }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.89, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.89 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__param_str_msg_level = internal constant [17 x i8] c"usbnet.msg_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_level = internal global i32 -1, align 4
@__param_msg_level = internal constant %struct.kernel_param { ptr @__param_str_msg_level, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.90 { ptr @msg_level } }, section "__param", align 4
@__UNIQUE_ID_msg_leveltype325 = internal constant [30 x i8] c"usbnet.parmtype=msg_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_level326 = internal constant [53 x i8] c"usbnet.parm=msg_level:Override default message level\00", section ".modinfo", align 1
@__kstrtab_usbnet_get_endpoints = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_get_endpoints = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_get_endpoints = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_get_endpoints to i32), ptr @__kstrtab_usbnet_get_endpoints, ptr @__kstrtabns_usbnet_get_endpoints }, section "___ksymtab_gpl+usbnet_get_endpoints", align 4
@__kstrtab_usbnet_get_ethernet_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_get_ethernet_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_get_ethernet_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_get_ethernet_addr to i32), ptr @__kstrtab_usbnet_get_ethernet_addr, ptr @__kstrtabns_usbnet_get_ethernet_addr }, section "___ksymtab_gpl+usbnet_get_ethernet_addr", align 4
@usbnet_status_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [25 x i8] c"drivers/net/usb/usbnet.c\00", align 1
@__kstrtab_usbnet_status_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_status_start = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_status_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_status_start to i32), ptr @__kstrtab_usbnet_status_start, ptr @__kstrtabns_usbnet_status_start }, section "___ksymtab_gpl+usbnet_status_start", align 4
@__kstrtab_usbnet_status_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_status_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_status_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_status_stop to i32), ptr @__kstrtab_usbnet_status_stop, ptr @__kstrtabns_usbnet_status_stop }, section "___ksymtab_gpl+usbnet_status_stop", align 4
@__kstrtab_usbnet_skb_return = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_skb_return = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_skb_return = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_skb_return to i32), ptr @__kstrtab_usbnet_skb_return, ptr @__kstrtabns_usbnet_skb_return }, section "___ksymtab_gpl+usbnet_skb_return", align 4
@__kstrtab_usbnet_update_max_qlen = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_update_max_qlen = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_update_max_qlen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_update_max_qlen to i32), ptr @__kstrtab_usbnet_update_max_qlen, ptr @__kstrtabns_usbnet_update_max_qlen }, section "___ksymtab_gpl+usbnet_update_max_qlen", align 4
@__kstrtab_usbnet_change_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_change_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_change_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_change_mtu to i32), ptr @__kstrtab_usbnet_change_mtu, ptr @__kstrtabns_usbnet_change_mtu }, section "___ksymtab_gpl+usbnet_change_mtu", align 4
@__kstrtab_usbnet_defer_kevent = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_defer_kevent = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_defer_kevent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_defer_kevent to i32), ptr @__kstrtab_usbnet_defer_kevent, ptr @__kstrtabns_usbnet_defer_kevent }, section "___ksymtab_gpl+usbnet_defer_kevent", align 4
@__kstrtab_usbnet_pause_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_pause_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_pause_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_pause_rx to i32), ptr @__kstrtab_usbnet_pause_rx, ptr @__kstrtabns_usbnet_pause_rx }, section "___ksymtab_gpl+usbnet_pause_rx", align 4
@__kstrtab_usbnet_resume_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_resume_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_resume_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_resume_rx to i32), ptr @__kstrtab_usbnet_resume_rx, ptr @__kstrtabns_usbnet_resume_rx }, section "___ksymtab_gpl+usbnet_resume_rx", align 4
@__kstrtab_usbnet_purge_paused_rxq = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_purge_paused_rxq = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_purge_paused_rxq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_purge_paused_rxq to i32), ptr @__kstrtab_usbnet_purge_paused_rxq, ptr @__kstrtabns_usbnet_purge_paused_rxq }, section "___ksymtab_gpl+usbnet_purge_paused_rxq", align 4
@__kstrtab_usbnet_unlink_rx_urbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_unlink_rx_urbs = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_unlink_rx_urbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_unlink_rx_urbs to i32), ptr @__kstrtab_usbnet_unlink_rx_urbs, ptr @__kstrtabns_usbnet_unlink_rx_urbs }, section "___ksymtab_gpl+usbnet_unlink_rx_urbs", align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"stop stats: rx/tx %lu/%lu, errs %lu/%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"stop fail (%d) usbnet usb-%s-%s, %s\0A\00", align 1
@__kstrtab_usbnet_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_stop to i32), ptr @__kstrtab_usbnet_stop, ptr @__kstrtabns_usbnet_stop }, section "___ksymtab_gpl+usbnet_stop", align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"resumption fail (%d) usbnet usb-%s-%s, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"open reset fail (%d) usbnet usb-%s-%s, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"can't open; %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"intr submit %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"open: enable queueing (rx %d, tx %d) mtu %d %s framing\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"NetChip\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"GeneSys\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Zaurus\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"RNDIS\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ASIX\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@__kstrtab_usbnet_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_open = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_open to i32), ptr @__kstrtab_usbnet_open, ptr @__kstrtabns_usbnet_open }, section "___ksymtab_gpl+usbnet_open", align 4
@__kstrtab_usbnet_get_link_ksettings_mii = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_get_link_ksettings_mii = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_get_link_ksettings_mii = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_get_link_ksettings_mii to i32), ptr @__kstrtab_usbnet_get_link_ksettings_mii, ptr @__kstrtabns_usbnet_get_link_ksettings_mii }, section "___ksymtab_gpl+usbnet_get_link_ksettings_mii", align 4
@__kstrtab_usbnet_get_link_ksettings_internal = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_get_link_ksettings_internal = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_get_link_ksettings_internal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_get_link_ksettings_internal to i32), ptr @__kstrtab_usbnet_get_link_ksettings_internal, ptr @__kstrtabns_usbnet_get_link_ksettings_internal }, section "___ksymtab_gpl+usbnet_get_link_ksettings_internal", align 4
@__kstrtab_usbnet_set_link_ksettings_mii = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_set_link_ksettings_mii = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_set_link_ksettings_mii = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_set_link_ksettings_mii to i32), ptr @__kstrtab_usbnet_set_link_ksettings_mii, ptr @__kstrtabns_usbnet_set_link_ksettings_mii }, section "___ksymtab_gpl+usbnet_set_link_ksettings_mii", align 4
@__kstrtab_usbnet_get_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_get_link = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_get_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_get_link to i32), ptr @__kstrtab_usbnet_get_link, ptr @__kstrtabns_usbnet_get_link }, section "___ksymtab_gpl+usbnet_get_link", align 4
@__kstrtab_usbnet_nway_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_nway_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_nway_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_nway_reset to i32), ptr @__kstrtab_usbnet_nway_reset, ptr @__kstrtabns_usbnet_nway_reset }, section "___ksymtab_gpl+usbnet_nway_reset", align 4
@__kstrtab_usbnet_get_drvinfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_get_drvinfo = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_get_drvinfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_get_drvinfo to i32), ptr @__kstrtab_usbnet_get_drvinfo, ptr @__kstrtabns_usbnet_get_drvinfo }, section "___ksymtab_gpl+usbnet_get_drvinfo", align 4
@__kstrtab_usbnet_get_msglevel = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_get_msglevel = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_get_msglevel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_get_msglevel to i32), ptr @__kstrtab_usbnet_get_msglevel, ptr @__kstrtabns_usbnet_get_msglevel }, section "___ksymtab_gpl+usbnet_get_msglevel", align 4
@__kstrtab_usbnet_set_msglevel = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_set_msglevel = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_set_msglevel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_set_msglevel to i32), ptr @__kstrtab_usbnet_set_msglevel, ptr @__kstrtabns_usbnet_set_msglevel }, section "___ksymtab_gpl+usbnet_set_msglevel", align 4
@__kstrtab_usbnet_set_rx_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_set_rx_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_set_rx_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_set_rx_mode to i32), ptr @__kstrtab_usbnet_set_rx_mode, ptr @__kstrtabns_usbnet_set_rx_mode }, section "___ksymtab_gpl+usbnet_set_rx_mode", align 4
@__kstrtab_usbnet_tx_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_tx_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_tx_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_tx_timeout to i32), ptr @__kstrtab_usbnet_tx_timeout, ptr @__kstrtabns_usbnet_tx_timeout }, section "___ksymtab_gpl+usbnet_tx_timeout", align 4
@usbnet_start_xmit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_usbnet_start_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_start_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_start_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_start_xmit to i32), ptr @__kstrtab_usbnet_start_xmit, ptr @__kstrtabns_usbnet_start_xmit }, section "___ksymtab_gpl+usbnet_start_xmit", align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"unregister '%s' usb-%s-%s, %s\0A\00", align 1
@__kstrtab_usbnet_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_disconnect to i32), ptr @__kstrtab_usbnet_disconnect, ptr @__kstrtabns_usbnet_disconnect }, section "___ksymtab_gpl+usbnet_disconnect", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@usbnet_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"&dev->wait\00", align 1
@usbnet_probe.__key.16 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"&dev->phy_mutex\00", align 1
@usbnet_probe.__key.18 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"&dev->interrupt_mutex\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"usb%d\00", align 1
@node_id = internal global [6 x i8] zeroinitializer, align 4
@usbnet_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @usbnet_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@usbnet_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @usbnet_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @usbnet_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_mii, ptr @usbnet_set_link_ksettings_mii, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"wwan%d\00", align 1
@wlan_type = internal global %struct.device_type { ptr @.str.34, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@wwan_type = internal global %struct.device_type { ptr @.str.35, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.24 = private unnamed_addr constant [37 x i8] c"register '%s' at usb-%s-%s, %s, %pM\0A\00", align 1
@__kstrtab_usbnet_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_probe to i32), ptr @__kstrtab_usbnet_probe, ptr @__kstrtabns_usbnet_probe }, section "___ksymtab_gpl+usbnet_probe", align 4
@__kstrtab_usbnet_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_suspend to i32), ptr @__kstrtab_usbnet_suspend, ptr @__kstrtabns_usbnet_suspend }, section "___ksymtab_gpl+usbnet_suspend", align 4
@__kstrtab_usbnet_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_resume to i32), ptr @__kstrtab_usbnet_resume, ptr @__kstrtabns_usbnet_resume }, section "___ksymtab_gpl+usbnet_resume", align 4
@__kstrtab_usbnet_device_suggests_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_device_suggests_idle = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_device_suggests_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_device_suggests_idle to i32), ptr @__kstrtab_usbnet_device_suggests_idle, ptr @__kstrtabns_usbnet_device_suggests_idle }, section "___ksymtab+usbnet_device_suggests_idle", align 4
@__kstrtab_usbnet_manage_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_manage_power = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_manage_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_manage_power to i32), ptr @__kstrtab_usbnet_manage_power, ptr @__kstrtabns_usbnet_manage_power }, section "___ksymtab+usbnet_manage_power", align 4
@__kstrtab_usbnet_link_change = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_link_change = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_link_change = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_link_change to i32), ptr @__kstrtab_usbnet_link_change, ptr @__kstrtabns_usbnet_link_change }, section "___ksymtab+usbnet_link_change", align 4
@__kstrtab_usbnet_read_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_read_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_read_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_read_cmd to i32), ptr @__kstrtab_usbnet_read_cmd, ptr @__kstrtabns_usbnet_read_cmd }, section "___ksymtab_gpl+usbnet_read_cmd", align 4
@__kstrtab_usbnet_write_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_write_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_write_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_write_cmd to i32), ptr @__kstrtab_usbnet_write_cmd, ptr @__kstrtabns_usbnet_write_cmd }, section "___ksymtab_gpl+usbnet_write_cmd", align 4
@__kstrtab_usbnet_read_cmd_nopm = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_read_cmd_nopm = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_read_cmd_nopm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_read_cmd_nopm to i32), ptr @__kstrtab_usbnet_read_cmd_nopm, ptr @__kstrtabns_usbnet_read_cmd_nopm }, section "___ksymtab_gpl+usbnet_read_cmd_nopm", align 4
@__kstrtab_usbnet_write_cmd_nopm = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_write_cmd_nopm = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_write_cmd_nopm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_write_cmd_nopm to i32), ptr @__kstrtab_usbnet_write_cmd_nopm, ptr @__kstrtabns_usbnet_write_cmd_nopm }, section "___ksymtab_gpl+usbnet_write_cmd_nopm", align 4
@.str.25 = private unnamed_addr constant [32 x i8] c"Error allocating buffer in %s!\0A\00", align 1
@__func__.usbnet_write_cmd_async = private unnamed_addr constant [23 x i8] c"usbnet_write_cmd_async\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"Error submitting the control message: status=%d\0A\00", align 1
@__kstrtab_usbnet_write_cmd_async = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_write_cmd_async = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_write_cmd_async = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_write_cmd_async to i32), ptr @__kstrtab_usbnet_write_cmd_async, ptr @__kstrtabns_usbnet_write_cmd_async }, section "___ksymtab_gpl+usbnet_write_cmd_async", align 4
@__initcall__kmod_usbnet__333_2207_usbnet_init6 = internal global ptr @usbnet_init, section ".initcall6.init", align 4
@__exitcall_usbnet_exit = internal global ptr @usbnet_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author334 = internal constant [29 x i8] c"usbnet.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description335 = internal constant [48 x i8] c"usbnet.description=USB network driver framework\00", section ".modinfo", align 1
@__UNIQUE_ID_file336 = internal constant [35 x i8] c"usbnet.file=drivers/net/usb/usbnet\00", section ".modinfo", align 1
@__UNIQUE_ID_license337 = internal constant [19 x i8] c"usbnet.license=GPL\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"usb-%s-%s\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.28 = private unnamed_addr constant [32 x i8] c"can't clear tx halt, status %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"can't clear rx halt, status %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"link reset failed (%d) usbnet usb-%s-%s, %s\0A\00", align 1
@init_usb_anchor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"&anchor->wait\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"intr resubmit --> %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"wlan\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"wwan\00", align 1
@__usbnet_write_cmd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_description335, ptr @__UNIQUE_ID_file336, ptr @__UNIQUE_ID_license337, ptr @__UNIQUE_ID_msg_level326, ptr @__UNIQUE_ID_msg_leveltype325, ptr @__exitcall_usbnet_exit, ptr @__initcall__kmod_usbnet__333_2207_usbnet_init6, ptr @__ksymtab_usbnet_change_mtu, ptr @__ksymtab_usbnet_defer_kevent, ptr @__ksymtab_usbnet_device_suggests_idle, ptr @__ksymtab_usbnet_disconnect, ptr @__ksymtab_usbnet_get_drvinfo, ptr @__ksymtab_usbnet_get_endpoints, ptr @__ksymtab_usbnet_get_ethernet_addr, ptr @__ksymtab_usbnet_get_link, ptr @__ksymtab_usbnet_get_link_ksettings_internal, ptr @__ksymtab_usbnet_get_link_ksettings_mii, ptr @__ksymtab_usbnet_get_msglevel, ptr @__ksymtab_usbnet_link_change, ptr @__ksymtab_usbnet_manage_power, ptr @__ksymtab_usbnet_nway_reset, ptr @__ksymtab_usbnet_open, ptr @__ksymtab_usbnet_pause_rx, ptr @__ksymtab_usbnet_probe, ptr @__ksymtab_usbnet_purge_paused_rxq, ptr @__ksymtab_usbnet_read_cmd, ptr @__ksymtab_usbnet_read_cmd_nopm, ptr @__ksymtab_usbnet_resume, ptr @__ksymtab_usbnet_resume_rx, ptr @__ksymtab_usbnet_set_link_ksettings_mii, ptr @__ksymtab_usbnet_set_msglevel, ptr @__ksymtab_usbnet_set_rx_mode, ptr @__ksymtab_usbnet_skb_return, ptr @__ksymtab_usbnet_start_xmit, ptr @__ksymtab_usbnet_status_start, ptr @__ksymtab_usbnet_status_stop, ptr @__ksymtab_usbnet_stop, ptr @__ksymtab_usbnet_suspend, ptr @__ksymtab_usbnet_tx_timeout, ptr @__ksymtab_usbnet_unlink_rx_urbs, ptr @__ksymtab_usbnet_update_max_qlen, ptr @__ksymtab_usbnet_write_cmd, ptr @__ksymtab_usbnet_write_cmd_async, ptr @__ksymtab_usbnet_write_cmd_nopm, ptr @__param_msg_level, ptr @usbnet_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_get_endpoints(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %120, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8
  %8 = mul i32 %4, 28
  %9 = add i32 %8, -28
  %10 = getelementptr i8, ptr %7, i32 %9
  br label %17

11:                                               ; preds = %64, %17
  %12 = phi ptr [ %61, %64 ], [ null, %17 ]
  %13 = phi ptr [ %60, %64 ], [ null, %17 ]
  %14 = phi ptr [ %59, %64 ], [ null, %17 ]
  %15 = add nuw i32 %18, 1
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %68, label %17

17:                                               ; preds = %11, %6
  %18 = phi i32 [ 0, %6 ], [ %15, %11 ]
  %19 = getelementptr %struct.usb_host_interface, ptr %7, i32 %18
  %20 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 4
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = icmp eq i8 %21, 0
  br i1 %23, label %11, label %24

24:                                               ; preds = %17
  %25 = getelementptr %struct.usb_host_interface, ptr %7, i32 %18, i32 3
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %58, %24
  %28 = phi i32 [ 0, %24 ], [ %62, %58 ]
  %29 = phi ptr [ null, %24 ], [ %61, %58 ]
  %30 = phi ptr [ null, %24 ], [ %60, %58 ]
  %31 = phi ptr [ null, %24 ], [ %59, %58 ]
  %32 = getelementptr %struct.usb_host_endpoint, ptr %26, i32 %28
  %33 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 4
  %34 = load i16, ptr %33, align 1
  %35 = and i16 %34, 2047
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 3
  %39 = load i8, ptr %38, align 1
  switch i8 %39, label %58 [
    i8 3, label %40
    i8 2, label %44
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = icmp sgt i8 %42, -1
  br i1 %43, label %58, label %50

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = icmp sgt i8 %46, -1
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = icmp eq ptr %31, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %48, %40
  %51 = phi i1 [ true, %48 ], [ false, %40 ]
  %52 = icmp ne ptr %29, null
  %53 = select i1 %51, i1 true, i1 %52
  %54 = select i1 %53, ptr %29, ptr %32
  br label %58

55:                                               ; preds = %44
  %56 = icmp eq ptr %30, null
  %57 = select i1 %56, ptr %32, ptr %30
  br label %58

58:                                               ; preds = %55, %50, %48, %40, %37, %27
  %59 = phi ptr [ %31, %27 ], [ %31, %40 ], [ %31, %37 ], [ %32, %48 ], [ %31, %50 ], [ %31, %55 ]
  %60 = phi ptr [ %30, %27 ], [ %30, %40 ], [ %30, %37 ], [ %30, %48 ], [ %30, %50 ], [ %57, %55 ]
  %61 = phi ptr [ %29, %27 ], [ %29, %40 ], [ %29, %37 ], [ %29, %48 ], [ %54, %50 ], [ %29, %55 ]
  %62 = add nuw nsw i32 %28, 1
  %63 = icmp eq i32 %62, %22
  br i1 %63, label %64, label %27

64:                                               ; preds = %58
  %65 = icmp ne ptr %59, null
  %66 = icmp ne ptr %60, null
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %11

68:                                               ; preds = %64, %11
  %69 = phi ptr [ %19, %64 ], [ %10, %11 ]
  %70 = phi ptr [ %59, %64 ], [ %14, %11 ]
  %71 = phi ptr [ %60, %64 ], [ %13, %11 ]
  %72 = phi ptr [ %61, %64 ], [ %12, %11 ]
  %73 = icmp ne ptr %69, null
  %74 = icmp ne ptr %70, null
  %75 = select i1 %73, i1 %74, i1 false
  %76 = icmp ne ptr %71, null
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %120

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %69, i32 0, i32 3
  %80 = load i8, ptr %79, align 1
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.driver_info, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = and i32 %86, 16
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82, %78
  %90 = load ptr, ptr %0, align 4
  %91 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %69, i32 0, i32 2
  %92 = load i8, ptr %91, align 2
  %93 = zext i8 %92 to i32
  %94 = zext i8 %80 to i32
  %95 = tail call i32 @usb_set_interface(ptr noundef %90, i32 noundef %93, i32 noundef %94) #22
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %120, label %97

97:                                               ; preds = %89, %82
  %98 = load ptr, ptr %0, align 4
  %99 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %70, i32 0, i32 2
  %100 = load i8, ptr %99, align 2
  %101 = and i8 %100, 15
  %102 = zext i8 %101 to i32
  %103 = load i32, ptr %98, align 8
  %104 = shl i32 %103, 8
  %105 = shl nuw nsw i32 %102, 15
  %106 = or i32 %104, %105
  %107 = or i32 %106, -1073741696
  %108 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 13
  store i32 %107, ptr %108, align 4
  %109 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %71, i32 0, i32 2
  %110 = load i8, ptr %109, align 2
  %111 = and i8 %110, 15
  %112 = zext i8 %111 to i32
  %113 = load i32, ptr %98, align 8
  %114 = shl i32 %113, 8
  %115 = shl nuw nsw i32 %112, 15
  %116 = or i32 %114, %115
  %117 = or i32 %116, -1073741824
  %118 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 14
  store i32 %117, ptr %118, align 4
  %119 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 15
  store ptr %72, ptr %119, align 4
  br label %120

120:                                              ; preds = %97, %89, %68, %2
  %121 = phi i32 [ 0, %97 ], [ -22, %68 ], [ %95, %89 ], [ -22, %2 ]
  ret i32 %121
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_get_ethernet_addr(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [13 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %4, i8 0, i32 13, i1 false), !annotation !9
  %5 = load ptr, ptr %0, align 4
  %6 = call i32 @usb_string(ptr noundef %5, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 13) #22
  %7 = icmp eq i32 %6, 12
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = call i32 @hex2bin(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 6) #22
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8, %2
  %12 = icmp sgt i32 %6, -1
  %13 = select i1 %12, i32 -22, i32 %6
  br label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 4
  call void @dev_addr_mod(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #22
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #22
  ret i32 %18
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_status_start(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = load i1, ptr @usbnet_status_start.__already_done, align 1
  %7 = xor i1 %6, true
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11, !prof !10

9:                                                ; preds = %2
  store i1 true, ptr @usbnet_status_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 261, i32 noundef 9, ptr noundef null) #22
  %10 = load ptr, ptr %3, align 4
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi ptr [ %10, %9 ], [ %4, %2 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 34
  tail call void @mutex_lock(ptr noundef %15) #22
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 33
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 4
  %22 = tail call i32 @usb_submit_urb(ptr noundef %21, i32 noundef %1) #22
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ %22, %20 ], [ 0, %14 ]
  tail call void @mutex_unlock(ptr noundef %15) #22
  br label %25

25:                                               ; preds = %23, %11
  %26 = phi i32 [ %24, %23 ], [ 0, %11 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_status_stop(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 32
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 34
  tail call void @mutex_lock(ptr noundef %6) #22
  %7 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 33
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13, !prof !10

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef null) #22
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ %11, %10 ], [ %8, %5 ]
  %15 = add i32 %14, -1
  store i32 %15, ptr %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load ptr, ptr %2, align 4
  tail call void @usb_kill_urb(ptr noundef %18) #22
  br label %19

19:                                               ; preds = %17, %13, %10
  tail call void @mutex_unlock(ptr noundef %6) #22
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_skb_return(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 110
  %6 = load ptr, ptr %5, align 8
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #17, !srcloc !11
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 31
  tail call void @skb_queue_tail(ptr noundef %18, ptr noundef %1) #22
  br label %42

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 16
  %21 = load i16, ptr %20, align 8
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = tail call zeroext i16 @eth_type_trans(ptr noundef %1, ptr noundef %4) #22
  store i16 %24, ptr %20, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %12, i32 0, i32 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !12
  %28 = load i32, ptr %26, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %26, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !13
  %30 = load i64, ptr %12, align 32
  %31 = add i64 %30, 1
  store i64 %31, ptr %12, align 32
  %32 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %12, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, %34
  store i64 %37, ptr %35, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !14
  %38 = load i32, ptr %26, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %26, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %27) #22, !srcloc !15
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(20) %40, i8 0, i32 20, i1 false)
  %41 = tail call i32 @netif_rx(ptr noundef %1) #22
  br label %42

42:                                               ; preds = %25, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @usbnet_update_max_qlen(ptr nocapture noundef %0) #4 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 23
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8
  switch i32 %4, label %27 [
    i32 3, label %13
    i32 5, label %20
    i32 6, label %20
  ]

13:                                               ; preds = %12
  %14 = udiv i32 91080, %6
  %15 = trunc i32 %14 to i16
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 10
  store i16 %15, ptr %16, align 4
  %17 = udiv i32 91080, %10
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 11
  store i16 %18, ptr %19, align 2
  br label %30

20:                                               ; preds = %12, %12
  %21 = udiv i32 455400, %6
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 10
  store i16 %22, ptr %23, align 4
  %24 = udiv i32 455400, %10
  %25 = trunc i32 %24 to i16
  %26 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 11
  store i16 %25, ptr %26, align 2
  br label %30

27:                                               ; preds = %12, %8, %1
  %28 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 11
  store i16 4, ptr %28, align 2
  %29 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 10
  store i16 4, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %20, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_change_mtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 19
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = add i32 %6, %1
  %8 = getelementptr i8, ptr %0, i32 1548
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 1484
  %11 = load i32, ptr %10, align 4
  %12 = urem i32 %7, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %79, label %14

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %0, i32 1544
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %17, align 4
  store i32 %7, ptr %15, align 4
  %18 = icmp eq i32 %9, %16
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  store i32 %7, ptr %8, align 4
  %20 = icmp ugt i32 %7, %9
  br i1 %20, label %21, label %56

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %0, i32 1756
  tail call void @_set_bit(i32 noundef 5, ptr noundef %22) #22
  %23 = getelementptr i8, ptr %0, i32 1512
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 6
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %0, i32 1592
  tail call fastcc void @unlink_urbs(ptr noundef %30) #22
  %31 = getelementptr i8, ptr %0, i32 1720
  %32 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %31) #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr i8, ptr %0, i32 1716
  tail call void @__tasklet_schedule(ptr noundef %35) #22
  br label %36

36:                                               ; preds = %34, %29, %21
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %22) #22
  %37 = getelementptr i8, ptr %0, i32 1640
  %38 = tail call ptr @skb_dequeue(ptr noundef %37) #22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %40, %36
  %41 = phi ptr [ %42, %40 ], [ %38, %36 ]
  tail call void @usbnet_skb_return(ptr noundef %3, ptr noundef nonnull %41) #22
  %42 = tail call ptr @skb_dequeue(ptr noundef %37) #22
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %40

44:                                               ; preds = %40, %36
  %45 = getelementptr i8, ptr %0, i32 1720
  %46 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %45) #22
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %0, i32 1716
  tail call void @__tasklet_schedule(ptr noundef %49) #22
  br label %50

50:                                               ; preds = %48, %44, %14
  %51 = load i32, ptr %8, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %76, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %15, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %53, %19
  %57 = phi i32 [ %51, %53 ], [ %7, %19 ]
  %58 = phi i32 [ %54, %53 ], [ %7, %19 ]
  %59 = load ptr, ptr %3, align 4
  %60 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  switch i32 %61, label %76 [
    i32 3, label %62
    i32 5, label %69
    i32 6, label %69
  ]

62:                                               ; preds = %56
  %63 = udiv i32 91080, %57
  %64 = trunc i32 %63 to i16
  %65 = getelementptr i8, ptr %0, i32 1464
  store i16 %64, ptr %65, align 4
  %66 = udiv i32 91080, %58
  %67 = trunc i32 %66 to i16
  %68 = getelementptr i8, ptr %0, i32 1466
  store i16 %67, ptr %68, align 2
  br label %79

69:                                               ; preds = %56, %56
  %70 = udiv i32 455400, %57
  %71 = trunc i32 %70 to i16
  %72 = getelementptr i8, ptr %0, i32 1464
  store i16 %71, ptr %72, align 4
  %73 = udiv i32 455400, %58
  %74 = trunc i32 %73 to i16
  %75 = getelementptr i8, ptr %0, i32 1466
  store i16 %74, ptr %75, align 2
  br label %79

76:                                               ; preds = %56, %53, %50
  %77 = getelementptr i8, ptr %0, i32 1466
  store i16 4, ptr %77, align 2
  %78 = getelementptr i8, ptr %0, i32 1464
  store i16 4, ptr %78, align 4
  br label %79

79:                                               ; preds = %76, %69, %62, %2
  %80 = phi i32 [ -33, %2 ], [ 0, %62 ], [ 0, %69 ], [ 0, %76 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_pause_rx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 5, ptr noundef %2) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_unlink_rx_urbs(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 28
  tail call fastcc void @unlink_urbs(ptr noundef %9)
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 36, i32 1
  %11 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %10) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 36
  tail call void @__tasklet_schedule(ptr noundef %14) #22
  br label %15

15:                                               ; preds = %13, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_resume_rx(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 31
  %4 = tail call ptr @skb_dequeue(ptr noundef %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  tail call void @usbnet_skb_return(ptr noundef %0, ptr noundef nonnull %7)
  %8 = tail call ptr @skb_dequeue(ptr noundef %3) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 36, i32 1
  %12 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %11) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 36
  tail call void @__tasklet_schedule(ptr noundef %15) #22
  br label %16

16:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_defer_kevent(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  tail call void @_set_bit(i32 noundef %1, ptr noundef %3) #22
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 37
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tasklet_schedule(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @__tasklet_schedule(ptr noundef %0) #22
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_purge_paused_rxq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 31
  tail call void @skb_queue_purge(ptr noundef %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unlink_urbs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sk_buff_head, ptr %0, i32 0, i32 2
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #22
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %27, label %6

6:                                                ; preds = %18, %1
  %7 = phi ptr [ %25, %18 ], [ %4, %1 ]
  %8 = phi i32 [ %24, %18 ], [ %3, %1 ]
  %9 = icmp eq ptr %7, %0
  br i1 %9, label %27, label %10

10:                                               ; preds = %15, %6
  %11 = phi ptr [ %16, %15 ], [ %7, %6 ]
  %12 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 6
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %27, label %10

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 8
  %20 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  store i32 6, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @usb_get_urb(ptr noundef %21) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %8) #22
  %23 = tail call i32 @usb_unlink_urb(ptr noundef %21) #22
  tail call void @usb_free_urb(ptr noundef %21) #22
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #22
  %25 = load ptr, ptr %0, align 4
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %6

27:                                               ; preds = %18, %15, %6, %1
  %28 = phi i32 [ %3, %1 ], [ %8, %15 ], [ %24, %18 ], [ %8, %6 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %28) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_stop(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1756
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %5) #22
  %6 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %7 = load ptr, ptr %6, align 64
  %8 = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #22
  %9 = getelementptr i8, ptr %0, i32 1516
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 1512
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 36, i32 5
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #23
  br label %24

24:                                               ; preds = %13, %1
  %25 = getelementptr i8, ptr %0, i32 1412
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @usb_autopm_get_interface(ptr noundef %26) #22
  %28 = getelementptr inbounds %struct.driver_info, ptr %4, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %24
  %32 = tail call i32 %29(ptr noundef %2) #22
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32, ptr %9, align 4
  %36 = and i32 %35, 16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 1512
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %2, align 4
  %42 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 12
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.usb_bus, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 1
  %47 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %40, ptr noundef nonnull @.str.2, i32 noundef %32, ptr noundef %45, ptr noundef %46, ptr noundef %47) #23
  br label %48

48:                                               ; preds = %38, %34, %31, %24
  %49 = getelementptr inbounds %struct.driver_info, ptr %4, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 256
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  tail call fastcc void @usbnet_terminate_urbs(ptr noundef %2)
  br label %54

54:                                               ; preds = %53, %48
  %55 = getelementptr i8, ptr %0, i32 1656
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %0, i32 1664
  tail call void @mutex_lock(ptr noundef %59) #22
  %60 = getelementptr i8, ptr %0, i32 1660
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66, !prof !10

63:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 9, ptr noundef null) #22
  %64 = load i32, ptr %60, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63, %58
  %67 = phi i32 [ %64, %63 ], [ %61, %58 ]
  %68 = add i32 %67, -1
  store i32 %68, ptr %60, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load ptr, ptr %55, align 4
  tail call void @usb_kill_urb(ptr noundef %71) #22
  br label %72

72:                                               ; preds = %70, %66, %63
  tail call void @mutex_unlock(ptr noundef %59) #22
  br label %73

73:                                               ; preds = %72, %54
  %74 = getelementptr i8, ptr %0, i32 1640
  tail call void @skb_queue_purge(ptr noundef %74) #22
  %75 = tail call i32 @_test_and_clear_bit(i32 noundef 9, ptr noundef %5) #22
  %76 = icmp eq i32 %75, 0
  store i32 0, ptr %5, align 4
  %77 = getelementptr i8, ptr %0, i32 1488
  %78 = tail call i32 @del_timer_sync(ptr noundef %77) #22
  %79 = getelementptr i8, ptr %0, i32 1716
  tail call void @tasklet_kill(ptr noundef %79) #22
  %80 = icmp eq i32 %27, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load ptr, ptr %25, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %82) #22
  br label %83

83:                                               ; preds = %81, %73
  %84 = getelementptr inbounds %struct.driver_info, ptr %4, i32 0, i32 7
  %85 = load ptr, ptr %84, align 4
  %86 = icmp ne ptr %85, null
  %87 = select i1 %86, i1 %76, i1 false
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = tail call i32 %85(ptr noundef %2, i32 noundef 0) #22
  br label %92

90:                                               ; preds = %83
  %91 = load ptr, ptr %25, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %91) #22
  br label %92

92:                                               ; preds = %90, %88
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usbnet_terminate_urbs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.wait_queue_entry, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 1
  %4 = tail call ptr @llvm.thread.pointer() #22
  store i32 0, ptr %2, align 4
  store ptr %4, ptr %3, align 4
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 2
  store ptr @default_wake_function, ptr %5, align 4
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %2, i32 0, i32 3, i32 1
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 5
  call void @add_wait_queue(ptr noundef %8, ptr noundef nonnull %2) #22
  %9 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 1
  store volatile i32 2, ptr %9, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !16
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 29
  call fastcc void @unlink_urbs(ptr noundef %10)
  %11 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 28
  call fastcc void @unlink_urbs(ptr noundef %11)
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 28, i32 2
  %13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #22
  %14 = load ptr, ptr %11, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %22, label %16

16:                                               ; preds = %16, %1
  %17 = phi i32 [ %19, %16 ], [ %13, %1 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %17) #22
  %18 = call i32 @schedule_timeout(i32 noundef 1) #22
  store volatile i32 2, ptr %9, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  %19 = call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #22
  %20 = load ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, %11
  br i1 %21, label %22, label %16

22:                                               ; preds = %16, %1
  %23 = phi i32 [ %13, %1 ], [ %19, %16 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %23) #22
  %24 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 29, i32 2
  %25 = call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #22
  %26 = load ptr, ptr %10, align 4
  %27 = icmp eq ptr %26, %10
  br i1 %27, label %34, label %28

28:                                               ; preds = %28, %22
  %29 = phi i32 [ %31, %28 ], [ %25, %22 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %29) #22
  %30 = call i32 @schedule_timeout(i32 noundef 1) #22
  store volatile i32 2, ptr %9, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  %31 = call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #22
  %32 = load ptr, ptr %10, align 4
  %33 = icmp eq ptr %32, %10
  br i1 %33, label %34, label %28

34:                                               ; preds = %28, %22
  %35 = phi i32 [ %25, %22 ], [ %31, %28 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %35) #22
  %36 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 30
  %37 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 30, i32 2
  %38 = call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #22
  %39 = load ptr, ptr %36, align 4
  %40 = icmp eq ptr %39, %36
  br i1 %40, label %47, label %41

41:                                               ; preds = %41, %34
  %42 = phi i32 [ %44, %41 ], [ %38, %34 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %42) #22
  %43 = call i32 @schedule_timeout(i32 noundef 1) #22
  store volatile i32 2, ptr %9, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  %44 = call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #22
  %45 = load ptr, ptr %36, align 4
  %46 = icmp eq ptr %45, %36
  br i1 %46, label %47, label %41

47:                                               ; preds = %41, %34
  %48 = phi i32 [ %38, %34 ], [ %44, %41 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %48) #22
  store volatile i32 0, ptr %9, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  call void @remove_wait_queue(ptr noundef %8, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_open(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1408
  %3 = getelementptr i8, ptr %0, i32 1416
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1412
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @usb_autopm_get_interface(ptr noundef %6) #22
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 1516
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %177, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 1512
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 12
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.usb_bus, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %16, ptr noundef nonnull @.str.3, i32 noundef %7, ptr noundef %21, ptr noundef %22, ptr noundef %23) #23
  br label %177

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.driver_info, ptr %4, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef %2) #22
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %0, i32 1516
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %174, label %36

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %0, i32 1512
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 12
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.usb_bus, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 1
  %45 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %38, ptr noundef nonnull @.str.4, i32 noundef %29, ptr noundef %43, ptr noundef %44, ptr noundef %45) #23
  br label %174

46:                                               ; preds = %28, %24
  %47 = phi i32 [ %29, %28 ], [ %7, %24 ]
  %48 = load ptr, ptr %2, align 4
  %49 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %0, i32 1548
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %46
  %55 = getelementptr i8, ptr %0, i32 1544
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %54
  switch i32 %50, label %73 [
    i32 3, label %59
    i32 5, label %66
    i32 6, label %66
  ]

59:                                               ; preds = %58
  %60 = udiv i32 91080, %52
  %61 = trunc i32 %60 to i16
  %62 = getelementptr i8, ptr %0, i32 1464
  store i16 %61, ptr %62, align 4
  %63 = udiv i32 91080, %56
  %64 = trunc i32 %63 to i16
  %65 = getelementptr i8, ptr %0, i32 1466
  store i16 %64, ptr %65, align 2
  br label %76

66:                                               ; preds = %58, %58
  %67 = udiv i32 455400, %52
  %68 = trunc i32 %67 to i16
  %69 = getelementptr i8, ptr %0, i32 1464
  store i16 %68, ptr %69, align 4
  %70 = udiv i32 455400, %56
  %71 = trunc i32 %70 to i16
  %72 = getelementptr i8, ptr %0, i32 1466
  store i16 %71, ptr %72, align 2
  br label %76

73:                                               ; preds = %58, %54, %46
  %74 = getelementptr i8, ptr %0, i32 1466
  store i16 4, ptr %74, align 2
  %75 = getelementptr i8, ptr %0, i32 1464
  store i16 4, ptr %75, align 4
  br label %76

76:                                               ; preds = %73, %66, %59
  %77 = getelementptr inbounds %struct.driver_info, ptr %4, i32 0, i32 6
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %91, label %80

80:                                               ; preds = %76
  %81 = tail call i32 %78(ptr noundef %2) #22
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = getelementptr i8, ptr %0, i32 1516
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 32
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %174, label %88

88:                                               ; preds = %83
  %89 = getelementptr i8, ptr %0, i32 1512
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %90, ptr noundef nonnull @.str.5, i32 noundef %81) #23
  br label %174

91:                                               ; preds = %80, %76
  %92 = phi i32 [ %81, %80 ], [ %47, %76 ]
  %93 = getelementptr i8, ptr %0, i32 1656
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %115, label %96

96:                                               ; preds = %91
  %97 = getelementptr i8, ptr %0, i32 1664
  tail call void @mutex_lock(ptr noundef %97) #22
  %98 = getelementptr i8, ptr %0, i32 1660
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 4
  %101 = icmp eq i32 %99, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  tail call void @mutex_unlock(ptr noundef %97) #22
  br label %115

103:                                              ; preds = %96
  %104 = load ptr, ptr %93, align 4
  %105 = tail call i32 @usb_submit_urb(ptr noundef %104, i32 noundef 3264) #22
  tail call void @mutex_unlock(ptr noundef %97) #22
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = getelementptr i8, ptr %0, i32 1516
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, 32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %174, label %112

112:                                              ; preds = %107
  %113 = getelementptr i8, ptr %0, i32 1512
  %114 = load ptr, ptr %113, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %114, ptr noundef nonnull @.str.6, i32 noundef %105) #23
  br label %174

115:                                              ; preds = %103, %102, %91
  %116 = phi i32 [ %105, %103 ], [ %92, %91 ], [ 0, %102 ]
  %117 = getelementptr i8, ptr %0, i32 1756
  tail call void @_set_bit(i32 noundef 7, ptr noundef %117) #22
  %118 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 87
  %119 = load ptr, ptr %118, align 64
  %120 = getelementptr inbounds %struct.netdev_queue, ptr %119, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %120) #22
  %121 = getelementptr i8, ptr %0, i32 1516
  %122 = load i32, ptr %121, align 4
  %123 = and i32 %122, 32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %156, label %125

125:                                              ; preds = %115
  %126 = getelementptr i8, ptr %0, i32 1512
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %0, i32 1464
  %129 = load i16, ptr %128, align 4
  %130 = zext i16 %129 to i32
  %131 = getelementptr i8, ptr %0, i32 1466
  %132 = load i16, ptr %131, align 2
  %133 = zext i16 %132 to i32
  %134 = getelementptr inbounds %struct.net_device, ptr %127, i32 0, i32 20
  %135 = load i32, ptr %134, align 4
  %136 = load ptr, ptr %3, align 4
  %137 = getelementptr inbounds %struct.driver_info, ptr %136, i32 0, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %125
  %142 = and i32 %138, 2
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = and i32 %138, 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = and i32 %138, 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = and i32 %138, 64
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, ptr @.str.13, ptr @.str.12
  br label %154

154:                                              ; preds = %150, %147, %144, %141, %125
  %155 = phi ptr [ @.str.8, %125 ], [ @.str.9, %141 ], [ @.str.10, %144 ], [ %153, %150 ], [ @.str.11, %147 ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %127, ptr noundef nonnull @.str.7, i32 noundef %130, i32 noundef %133, i32 noundef %135, ptr noundef nonnull %155) #23
  br label %156

156:                                              ; preds = %154, %115
  %157 = getelementptr i8, ptr %0, i32 1461
  store i8 0, ptr %157, align 1
  %158 = getelementptr i8, ptr %0, i32 1462
  store i8 0, ptr %158, align 2
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %117) #22
  %159 = getelementptr i8, ptr %0, i32 1720
  %160 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %159) #22
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = getelementptr i8, ptr %0, i32 1716
  tail call void @__tasklet_schedule(ptr noundef %163) #22
  br label %164

164:                                              ; preds = %162, %156
  %165 = getelementptr inbounds %struct.driver_info, ptr %4, i32 0, i32 7
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %177, label %168

168:                                              ; preds = %164
  %169 = tail call i32 %166(ptr noundef %2, i32 noundef 1) #22
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  tail call void @_set_bit(i32 noundef 9, ptr noundef %117) #22
  br label %177

172:                                              ; preds = %168
  %173 = load ptr, ptr %5, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %173) #22
  br label %177

174:                                              ; preds = %112, %107, %88, %83, %36, %31
  %175 = phi i32 [ %29, %36 ], [ %29, %31 ], [ %81, %88 ], [ %81, %83 ], [ %105, %112 ], [ %105, %107 ]
  %176 = load ptr, ptr %5, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %176) #22
  br label %177

177:                                              ; preds = %174, %172, %171, %164, %14, %9
  %178 = phi i32 [ 0, %171 ], [ %169, %172 ], [ %116, %164 ], [ %7, %14 ], [ %7, %9 ], [ %175, %174 ]
  ret i32 %178
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_get_link_ksettings_mii(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1576
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 1552
  tail call void @mii_ethtool_get_link_ksettings(ptr noundef %7, ptr noundef %1) #22
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 0, %6 ], [ -95, %2 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mii_ethtool_get_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usbnet_get_link_ksettings_internal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr i8, ptr %0, i32 1584
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = sdiv i32 %4, 1000000
  br label %14

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 1588
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, -1
  %12 = sdiv i32 %10, 1000000
  %13 = select i1 %11, i32 -1, i32 %12
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi i32 [ %7, %6 ], [ %13, %8 ]
  %16 = getelementptr inbounds %struct.ethtool_link_settings, ptr %1, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_set_link_ksettings_mii(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1580
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 1552
  %9 = tail call i32 @mii_ethtool_set_link_ksettings(ptr noundef %8, ptr noundef %1) #22
  %10 = getelementptr i8, ptr %0, i32 1416
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.driver_info, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = tail call i32 %13(ptr noundef %3) #22
  br label %17

17:                                               ; preds = %15, %7
  %18 = load ptr, ptr %3, align 4
  %19 = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %0, i32 1548
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %0, i32 1544
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  switch i32 %20, label %43 [
    i32 3, label %29
    i32 5, label %36
    i32 6, label %36
  ]

29:                                               ; preds = %28
  %30 = udiv i32 91080, %22
  %31 = trunc i32 %30 to i16
  %32 = getelementptr i8, ptr %0, i32 1464
  store i16 %31, ptr %32, align 4
  %33 = udiv i32 91080, %26
  %34 = trunc i32 %33 to i16
  %35 = getelementptr i8, ptr %0, i32 1466
  store i16 %34, ptr %35, align 2
  br label %46

36:                                               ; preds = %28, %28
  %37 = udiv i32 455400, %22
  %38 = trunc i32 %37 to i16
  %39 = getelementptr i8, ptr %0, i32 1464
  store i16 %38, ptr %39, align 4
  %40 = udiv i32 455400, %26
  %41 = trunc i32 %40 to i16
  %42 = getelementptr i8, ptr %0, i32 1466
  store i16 %41, ptr %42, align 2
  br label %46

43:                                               ; preds = %28, %24, %17
  %44 = getelementptr i8, ptr %0, i32 1466
  store i16 4, ptr %44, align 2
  %45 = getelementptr i8, ptr %0, i32 1464
  store i16 4, ptr %45, align 4
  br label %46

46:                                               ; preds = %43, %36, %29, %2
  %47 = phi i32 [ -95, %2 ], [ %9, %29 ], [ %9, %36 ], [ %9, %43 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_ethtool_set_link_ksettings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_get_link(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1416
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.driver_info, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 1408
  %9 = tail call i32 %5(ptr noundef %8) #22
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  br label %21

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %0, i32 1576
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 1552
  %18 = tail call i32 @mii_link_ok(ptr noundef %17) #22
  br label %21

19:                                               ; preds = %12
  %20 = tail call i32 @ethtool_op_get_link(ptr noundef %0) #22
  br label %21

21:                                               ; preds = %19, %16, %7
  %22 = phi i32 [ %11, %7 ], [ %18, %16 ], [ %20, %19 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_link_ok(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_nway_reset(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1580
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 1552
  %7 = tail call i32 @mii_nway_restart(ptr noundef %6) #22
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -95, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mii_nway_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_get_drvinfo(ptr nocapture noundef readonly %0, ptr noundef %1) #8 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 1
  %5 = getelementptr i8, ptr %0, i32 1420
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @strlcpy(ptr noundef %4, ptr noundef %6, i32 noundef 32) #22
  %8 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 3
  %9 = getelementptr i8, ptr %0, i32 1416
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strlcpy(ptr noundef %8, ptr noundef %11, i32 noundef 32) #22
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %1, i32 0, i32 4
  %15 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 12
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.usb_bus, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 1
  %20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %14, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef %18, ptr noundef %19) #22
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @usbnet_get_msglevel(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr i8, ptr %0, i32 1516
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @usbnet_set_msglevel(ptr nocapture noundef writeonly %0, i32 noundef %1) #11 {
  %3 = getelementptr i8, ptr %0, i32 1516
  store i32 %1, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_set_rx_mode(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 1756
  tail call void @_set_bit(i32 noundef 12, ptr noundef %2) #22
  %3 = getelementptr i8, ptr %0, i32 1740
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_tx_timeout(ptr noundef %0, i32 %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 1408
  %4 = getelementptr i8, ptr %0, i32 1608
  tail call fastcc void @unlink_urbs(ptr noundef %4)
  %5 = getelementptr i8, ptr %0, i32 1720
  %6 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %0, i32 1716
  tail call void @__tasklet_schedule(ptr noundef %9) #22
  br label %10

10:                                               ; preds = %8, %2
  %11 = getelementptr i8, ptr %0, i32 1416
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.driver_info, ptr %12, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call void %14(ptr noundef %3) #22
  br label %17

17:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_start_xmit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 1408
  %4 = getelementptr i8, ptr %1, i32 1416
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void @skb_tstamp_tx(ptr noundef nonnull %0, ptr noundef null) #22
  br label %15

15:                                               ; preds = %14, %7, %2
  %16 = getelementptr inbounds %struct.driver_info, ptr %5, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %33, label %19

19:                                               ; preds = %15
  %20 = tail call ptr %17(ptr noundef %3, ptr noundef %0, i32 noundef 2592) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.driver_info, ptr %5, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 8192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %297

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %1, i32 1512
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  br label %297

33:                                               ; preds = %19, %15
  %34 = phi ptr [ %20, %19 ], [ %0, %15 ]
  %35 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %285, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3
  store ptr %35, ptr %38, align 4
  %39 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 4
  store ptr %3, ptr %39, align 4
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %1, i32 1476
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 17
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 8
  store ptr %40, ptr %47, align 4
  %48 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 10
  store i32 %42, ptr %48, align 4
  %49 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 14
  store ptr %44, ptr %49, align 4
  %50 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 19
  store i32 %46, ptr %50, align 4
  %51 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 28
  store ptr @tx_complete, ptr %51, align 4
  %52 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 27
  store ptr %34, ptr %52, align 4
  %53 = getelementptr i8, ptr %1, i32 1468
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %133, label %57

57:                                               ; preds = %37
  %58 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 15
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 2
  %61 = load i8, ptr %60, align 2
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %62, 1
  %64 = icmp eq i8 %61, 0
  br i1 %64, label %133, label %65

65:                                               ; preds = %57
  %66 = add nuw nsw i32 %62, 2
  %67 = mul nuw nsw i32 %66, 20
  %68 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %67, i32 noundef 2592) #24
  %69 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 16
  store ptr %68, ptr %69, align 4
  %70 = icmp eq ptr %68, null
  br i1 %70, label %285, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 18
  store i32 %63, ptr %72, align 4
  tail call void @sg_init_table(ptr noundef nonnull %68, i32 noundef %66) #22
  %73 = load ptr, ptr %43, align 4
  %74 = load ptr, ptr @mem_map, align 4
  %75 = ptrtoint ptr %73 to i32
  %76 = add i32 %75, 1073741824
  %77 = lshr i32 %76, 12
  %78 = getelementptr %struct.page, ptr %74, i32 %77
  %79 = ptrtoint ptr %78 to i32
  %80 = and i32 %79, 3
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82, !prof !19

82:                                               ; preds = %71
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #22, !srcloc !20
  unreachable

83:                                               ; preds = %71
  %84 = load i32, ptr %45, align 8
  %85 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = sub i32 %84, %86
  %88 = load ptr, ptr %69, align 4
  %89 = and i32 %75, 4095
  %90 = load i32, ptr %88, align 4
  %91 = and i32 %90, 3
  %92 = or i32 %91, %79
  store i32 %92, ptr %88, align 4
  %93 = getelementptr inbounds %struct.scatterlist, ptr %88, i32 0, i32 1
  store i32 %89, ptr %93, align 4
  %94 = getelementptr inbounds %struct.scatterlist, ptr %88, i32 0, i32 2
  store i32 %87, ptr %94, align 4
  %95 = load i32, ptr %45, align 8
  %96 = load i32, ptr %85, align 4
  %97 = sub i32 %95, %96
  %98 = load ptr, ptr %58, align 4
  %99 = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 2
  %100 = load i8, ptr %99, align 2
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %131, label %102

102:                                              ; preds = %112, %83
  %103 = phi ptr [ %126, %112 ], [ %98, %83 ]
  %104 = phi i32 [ %116, %112 ], [ 0, %83 ]
  %105 = phi i32 [ %120, %112 ], [ %97, %83 ]
  %106 = getelementptr %struct.skb_shared_info, ptr %103, i32 0, i32 12, i32 %104
  %107 = load ptr, ptr %106, align 4
  %108 = ptrtoint ptr %107 to i32
  %109 = and i32 %108, 3
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %112, label %111, !prof !19

111:                                              ; preds = %102
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #22, !srcloc !20
  unreachable

112:                                              ; preds = %102
  %113 = getelementptr %struct.skb_shared_info, ptr %103, i32 0, i32 12, i32 %104, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %69, align 4
  %116 = add nuw nsw i32 %104, 1
  %117 = getelementptr %struct.scatterlist, ptr %115, i32 %116
  %118 = getelementptr %struct.skb_shared_info, ptr %103, i32 0, i32 12, i32 %104, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, %105
  %121 = load i32, ptr %117, align 4
  %122 = and i32 %121, 3
  %123 = or i32 %122, %108
  store i32 %123, ptr %117, align 4
  %124 = getelementptr %struct.scatterlist, ptr %115, i32 %116, i32 1
  store i32 %114, ptr %124, align 4
  %125 = getelementptr %struct.scatterlist, ptr %115, i32 %116, i32 2
  store i32 %119, ptr %125, align 4
  %126 = load ptr, ptr %58, align 4
  %127 = getelementptr inbounds %struct.skb_shared_info, ptr %126, i32 0, i32 2
  %128 = load i8, ptr %127, align 2
  %129 = zext i8 %128 to i32
  %130 = icmp ult i32 %116, %129
  br i1 %130, label %102, label %131

131:                                              ; preds = %112, %83
  %132 = phi i32 [ %97, %83 ], [ %120, %112 ]
  store i32 %132, ptr %50, align 4
  br label %133

133:                                              ; preds = %131, %57, %37
  %134 = phi i32 [ %46, %57 ], [ %132, %131 ], [ %46, %37 ]
  %135 = getelementptr i8, ptr %1, i32 1484
  %136 = load i32, ptr %135, align 4
  %137 = urem i32 %134, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %205

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.driver_info, ptr %5, i32 0, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, 512
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %201

144:                                              ; preds = %139
  %145 = and i32 %141, 8192
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %205

147:                                              ; preds = %144
  %148 = add i32 %134, 1
  %149 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 6
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %174

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 15
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 14
  %156 = load ptr, ptr %155, align 8
  %157 = icmp eq ptr %154, %156
  br i1 %157, label %174, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 18
  %160 = load i32, ptr %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %158
  %163 = load ptr, ptr %43, align 4
  %164 = load i32, ptr %45, align 8
  %165 = getelementptr i8, ptr %163, i32 %164
  store i8 0, ptr %165, align 1
  %166 = load i32, ptr %149, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168, !prof !19

168:                                              ; preds = %162
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #22, !srcloc !21
  unreachable

169:                                              ; preds = %162
  %170 = load ptr, ptr %155, align 8
  %171 = getelementptr i8, ptr %170, i32 1
  store ptr %171, ptr %155, align 8
  %172 = load i32, ptr %45, align 8
  %173 = add i32 %172, 1
  store i32 %173, ptr %45, align 8
  br label %205

174:                                              ; preds = %158, %152, %147
  %175 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 18
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %205, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 16
  %180 = load ptr, ptr %179, align 4
  %181 = add i32 %176, 1
  store i32 %181, ptr %175, align 4
  %182 = getelementptr i8, ptr %1, i32 1508
  %183 = load ptr, ptr %182, align 4
  %184 = load ptr, ptr @mem_map, align 4
  %185 = ptrtoint ptr %183 to i32
  %186 = add i32 %185, 1073741824
  %187 = lshr i32 %186, 12
  %188 = getelementptr %struct.page, ptr %184, i32 %187
  %189 = ptrtoint ptr %188 to i32
  %190 = and i32 %189, 3
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %193, label %192, !prof !19

192:                                              ; preds = %178
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #22, !srcloc !20
  unreachable

193:                                              ; preds = %178
  %194 = getelementptr %struct.scatterlist, ptr %180, i32 %176
  %195 = and i32 %185, 4095
  %196 = load i32, ptr %194, align 4
  %197 = and i32 %196, 3
  %198 = or i32 %197, %189
  store i32 %198, ptr %194, align 4
  %199 = getelementptr %struct.scatterlist, ptr %180, i32 %176, i32 1
  store i32 %195, ptr %199, align 4
  %200 = getelementptr %struct.scatterlist, ptr %180, i32 %176, i32 2
  store i32 1, ptr %200, align 4
  br label %205

201:                                              ; preds = %139
  %202 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 13
  %203 = load i32, ptr %202, align 4
  %204 = or i32 %203, 64
  store i32 %204, ptr %202, align 4
  br label %205

205:                                              ; preds = %201, %193, %174, %169, %144, %133
  %206 = phi i32 [ %134, %201 ], [ %134, %144 ], [ %148, %193 ], [ %148, %174 ], [ %148, %169 ], [ %134, %133 ]
  store i32 %206, ptr %50, align 4
  %207 = getelementptr inbounds %struct.driver_info, ptr %5, i32 0, i32 1
  %208 = load i32, ptr %207, align 4
  %209 = and i32 %208, 8192
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %221, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 12
  %213 = load i32, ptr %212, align 4
  %214 = add i32 %213, %206
  store i32 %214, ptr %212, align 4
  %215 = icmp slt i32 %214, 1
  %216 = load i1, ptr @usbnet_start_xmit.__already_done, align 1
  %217 = xor i1 %216, true
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %220, !prof !10

219:                                              ; preds = %211
  store i1 true, ptr @usbnet_start_xmit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1428, i32 noundef 9, ptr noundef null) #22
  br label %220

220:                                              ; preds = %219, %211
  br i1 %215, label %224, label %226

221:                                              ; preds = %205
  %222 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 16
  store i32 1, ptr %222, align 4
  %223 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 12
  br label %224

224:                                              ; preds = %221, %220
  %225 = phi ptr [ %223, %221 ], [ %212, %220 ]
  store i32 %206, ptr %225, align 4
  br label %226

226:                                              ; preds = %224, %220
  %227 = getelementptr i8, ptr %1, i32 1608
  %228 = getelementptr i8, ptr %1, i32 1620
  %229 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %228) #22
  %230 = getelementptr i8, ptr %1, i32 1412
  %231 = load ptr, ptr %230, align 4
  %232 = tail call i32 @usb_autopm_get_interface_async(ptr noundef %231) #22
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %284, label %234

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 87
  %236 = load ptr, ptr %235, align 64
  %237 = getelementptr inbounds %struct.netdev_queue, ptr %236, i32 0, i32 12
  %238 = load volatile i32, ptr %237, align 4
  %239 = and i32 %238, 1
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %282

241:                                              ; preds = %234
  %242 = getelementptr i8, ptr %1, i32 1756
  %243 = load volatile i32, ptr %242, align 4
  %244 = and i32 %243, 64
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %241
  %247 = getelementptr i8, ptr %1, i32 1684
  tail call void @usb_anchor_urb(ptr noundef nonnull %35, ptr noundef %247) #22
  %248 = load ptr, ptr %235, align 64
  %249 = getelementptr inbounds %struct.netdev_queue, ptr %248, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %249) #22
  tail call void @usb_free_urb(ptr noundef nonnull %35) #22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %228, i32 noundef %229) #22
  br label %297

250:                                              ; preds = %241
  %251 = tail call i32 @usb_submit_urb(ptr noundef nonnull %35, i32 noundef 2592) #22
  switch i32 %251, label %282 [
    i32 -32, label %252
    i32 0, label %258
  ]

252:                                              ; preds = %250
  %253 = load ptr, ptr %235, align 64
  %254 = getelementptr inbounds %struct.netdev_queue, ptr %253, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %254) #22
  tail call void @_set_bit(i32 noundef 0, ptr noundef %242) #22
  %255 = getelementptr i8, ptr %1, i32 1740
  %256 = load ptr, ptr @system_wq, align 4
  %257 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %256, ptr noundef %255) #22
  br label %282

258:                                              ; preds = %250
  %259 = load ptr, ptr %235, align 64
  %260 = load volatile i32, ptr @jiffies, align 64
  %261 = getelementptr inbounds %struct.netdev_queue, ptr %259, i32 0, i32 11
  %262 = load volatile i32, ptr %261, align 8
  %263 = icmp eq i32 %262, %260
  br i1 %263, label %265, label %264

264:                                              ; preds = %258
  store volatile i32 %260, ptr %261, align 8
  br label %265

265:                                              ; preds = %264, %258
  %266 = getelementptr i8, ptr %1, i32 1612
  %267 = load ptr, ptr %266, align 4
  store volatile ptr %227, ptr %34, align 8
  %268 = getelementptr inbounds %struct.anon.41, ptr %34, i32 0, i32 1
  store volatile ptr %267, ptr %268, align 4
  store volatile ptr %34, ptr %266, align 4
  store volatile ptr %34, ptr %267, align 4
  %269 = getelementptr i8, ptr %1, i32 1616
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, 1
  store volatile i32 %271, ptr %269, align 4
  %272 = getelementptr inbounds %struct.sk_buff, ptr %34, i32 0, i32 3, i32 8
  store i32 1, ptr %272, align 4
  %273 = load i32, ptr %269, align 4
  %274 = getelementptr i8, ptr %1, i32 1466
  %275 = load i16, ptr %274, align 2
  %276 = zext i16 %275 to i32
  %277 = icmp ult i32 %273, %276
  br i1 %277, label %281, label %278

278:                                              ; preds = %265
  %279 = load ptr, ptr %235, align 64
  %280 = getelementptr inbounds %struct.netdev_queue, ptr %279, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %280) #22
  br label %281

281:                                              ; preds = %278, %265
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %228, i32 noundef %229) #22
  br label %297

282:                                              ; preds = %252, %250, %234
  %283 = load ptr, ptr %230, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %283) #22
  br label %284

284:                                              ; preds = %282, %226
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %228, i32 noundef %229) #22
  br label %285

285:                                              ; preds = %284, %65, %33
  %286 = getelementptr i8, ptr %1, i32 1512
  %287 = load ptr, ptr %286, align 4
  %288 = getelementptr inbounds %struct.net_device, ptr %287, i32 0, i32 36, i32 7
  %289 = load i32, ptr %288, align 4
  %290 = add i32 %289, 1
  store i32 %290, ptr %288, align 4
  %291 = icmp eq ptr %34, null
  br i1 %291, label %293, label %292

292:                                              ; preds = %285
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %34, i32 noundef 1) #22
  br label %293

293:                                              ; preds = %292, %285
  br i1 %36, label %297, label %294

294:                                              ; preds = %293
  %295 = getelementptr inbounds %struct.urb, ptr %35, i32 0, i32 16
  %296 = load ptr, ptr %295, align 4
  tail call void @kfree(ptr noundef %296) #22
  tail call void @usb_free_urb(ptr noundef nonnull %35) #22
  br label %297

297:                                              ; preds = %294, %293, %281, %246, %27, %22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tx_complete(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %struct.usbnet, ptr %5, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %11, label %38

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 110
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #17, !srcloc !11
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %19, i32 0, i32 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !12
  %22 = load i32, ptr %20, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %20, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !13
  %24 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %19, i32 0, i32 2
  %28 = load i64, ptr %27, align 16
  %29 = add i64 %28, %26
  store i64 %29, ptr %27, align 16
  %30 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %19, i32 0, i32 3
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %34, %32
  store i64 %35, ptr %33, align 8
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #22, !srcloc !14
  %36 = load i32, ptr %20, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %20, align 4
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #22, !srcloc !15
  br label %65

38:                                               ; preds = %1
  %39 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 36, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 4
  %42 = load i32, ptr %6, align 4
  switch i32 %42, label %65 [
    i32 -32, label %43
    i32 -84, label %48
    i32 -62, label %48
    i32 -71, label %48
  ]

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.usbnet, ptr %5, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 0, ptr noundef %44) #22
  %45 = getelementptr inbounds %struct.usbnet, ptr %5, i32 0, i32 37
  %46 = load ptr, ptr @system_wq, align 4
  %47 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %46, ptr noundef %45) #22
  br label %65

48:                                               ; preds = %38, %38, %38
  %49 = load ptr, ptr %5, align 4
  %50 = tail call i64 @ktime_get_mono_fast_ns() #22
  %51 = getelementptr inbounds %struct.usb_device, ptr %49, i32 0, i32 15, i32 11, i32 22
  store volatile i64 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.usbnet, ptr %5, i32 0, i32 17, i32 0, i32 1
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.usbnet, ptr %5, i32 0, i32 17
  %57 = load volatile i32, ptr @jiffies, align 64
  %58 = add i32 %57, 12
  %59 = tail call i32 @mod_timer(ptr noundef %56, i32 noundef %58) #22
  br label %60

60:                                               ; preds = %55, %48
  %61 = load ptr, ptr %9, align 4
  %62 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 87
  %63 = load ptr, ptr %62, align 64
  %64 = getelementptr inbounds %struct.netdev_queue, ptr %63, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %64) #22
  br label %65

65:                                               ; preds = %60, %43, %38, %11
  %66 = getelementptr inbounds %struct.usbnet, ptr %5, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %67) #22
  %68 = getelementptr inbounds %struct.usbnet, ptr %5, i32 0, i32 29
  %69 = tail call fastcc i32 @defer_bh(ptr noundef %5, ptr noundef %3, ptr noundef %68, i32 noundef 2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface_async(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %12, i32 -64
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.usb_bus, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %12, i32 -124
  %23 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %14, ptr noundef nonnull @.str.14, ptr noundef %17, ptr noundef %21, ptr noundef %22, ptr noundef %25) #23
  br label %26

26:                                               ; preds = %10, %5
  %27 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.driver_info, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void %30(ptr noundef nonnull %3, ptr noundef %0) #22
  br label %33

33:                                               ; preds = %32, %26
  %34 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 19
  %35 = load ptr, ptr %34, align 4
  tail call void @unregister_netdev(ptr noundef %35) #22
  %36 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 37
  %37 = tail call zeroext i1 @cancel_work_sync(ptr noundef %36) #22
  %38 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 35
  tail call void @usb_scuttle_anchored_urbs(ptr noundef %38) #22
  %39 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 32
  %40 = load ptr, ptr %39, align 4
  tail call void @usb_kill_urb(ptr noundef %40) #22
  %41 = load ptr, ptr %39, align 4
  tail call void @usb_free_urb(ptr noundef %41) #22
  %42 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 18
  %43 = load ptr, ptr %42, align 4
  tail call void @kfree(ptr noundef %43) #22
  %44 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 110
  %45 = load ptr, ptr %44, align 8
  tail call void @free_percpu(ptr noundef %45) #22
  tail call void @free_netdev(ptr noundef %35) #22
  br label %46

46:                                               ; preds = %33, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_scuttle_anchored_urbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 2
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = or i8 %7, 2
  store i8 %11, ptr %6, align 4
  tail call void @pm_runtime_enable(ptr noundef %3) #22
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi ptr [ %12, %10 ], [ %5, %2 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_device_id, ptr %1, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = inttoptr i32 %17 to ptr
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %427, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -128
  %24 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call ptr @alloc_etherdev_mqs(i32 noundef 352, i32 noundef 1, i32 noundef 1) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %427, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 111, i32 1
  store ptr %3, ptr %29, align 4
  %30 = getelementptr i8, ptr %26, i32 1408
  store ptr %23, ptr %30, align 4
  %31 = getelementptr i8, ptr %26, i32 1412
  store ptr %0, ptr %31, align 4
  %32 = getelementptr i8, ptr %26, i32 1416
  store ptr %18, ptr %32, align 4
  %33 = getelementptr i8, ptr %26, i32 1420
  store ptr %15, ptr %33, align 4
  %34 = getelementptr i8, ptr %26, i32 1584
  store i32 -1, ptr %34, align 4
  %35 = getelementptr i8, ptr %26, i32 1588
  store i32 -1, ptr %35, align 4
  %36 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 64, i32 noundef 32, i32 noundef 3264) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %40 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  %41 = icmp ult i32 %40, %39
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = ptrtoint ptr %36 to i32
  br label %46

44:                                               ; preds = %28
  %45 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 110
  store ptr null, ptr %45, align 8
  br label %425

46:                                               ; preds = %46, %42
  %47 = phi i32 [ %40, %42 ], [ %53, %46 ]
  %48 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %43
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %51, i32 0, i32 4
  store i32 0, ptr %52, align 4
  %53 = tail call i32 @cpumask_next(i32 noundef %47, ptr noundef nonnull @__cpu_possible_mask) #25
  %54 = icmp ult i32 %53, %39
  br i1 %54, label %46, label %55

55:                                               ; preds = %46, %38
  %56 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 110
  store ptr %36, ptr %56, align 8
  %57 = load i32, ptr @msg_level, align 4
  %58 = icmp ugt i32 %57, 31
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = shl nsw i32 -1, %57
  %63 = xor i32 %62, -1
  br label %64

64:                                               ; preds = %61, %59, %55
  %65 = phi i32 [ %63, %61 ], [ 7, %55 ], [ 0, %59 ]
  %66 = getelementptr i8, ptr %26, i32 1516
  store i32 %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %26, i32 1428
  tail call void @__init_waitqueue_head(ptr noundef %67, ptr noundef nonnull @.str.15, ptr noundef nonnull @usbnet_probe.__key) #22
  %68 = getelementptr i8, ptr %26, i32 1592
  %69 = getelementptr i8, ptr %26, i32 1604
  store i32 0, ptr %69, align 4
  store ptr %68, ptr %68, align 4
  %70 = getelementptr i8, ptr %26, i32 1596
  store ptr %68, ptr %70, align 4
  %71 = getelementptr i8, ptr %26, i32 1600
  store i32 0, ptr %71, align 4
  %72 = getelementptr i8, ptr %26, i32 1608
  %73 = getelementptr i8, ptr %26, i32 1620
  store i32 0, ptr %73, align 4
  store ptr %72, ptr %72, align 4
  %74 = getelementptr i8, ptr %26, i32 1612
  store ptr %72, ptr %74, align 4
  %75 = getelementptr i8, ptr %26, i32 1616
  store i32 0, ptr %75, align 4
  %76 = getelementptr i8, ptr %26, i32 1624
  %77 = getelementptr i8, ptr %26, i32 1636
  store i32 0, ptr %77, align 4
  store ptr %76, ptr %76, align 4
  %78 = getelementptr i8, ptr %26, i32 1628
  store ptr %76, ptr %78, align 4
  %79 = getelementptr i8, ptr %26, i32 1632
  store i32 0, ptr %79, align 4
  %80 = getelementptr i8, ptr %26, i32 1640
  %81 = getelementptr i8, ptr %26, i32 1652
  store i32 0, ptr %81, align 4
  store ptr %80, ptr %80, align 4
  %82 = getelementptr i8, ptr %26, i32 1644
  store ptr %80, ptr %82, align 4
  %83 = getelementptr i8, ptr %26, i32 1648
  store i32 0, ptr %83, align 4
  %84 = getelementptr i8, ptr %26, i32 1716
  tail call void @tasklet_setup(ptr noundef %84, ptr noundef nonnull @usbnet_bh_tasklet) #22
  %85 = getelementptr i8, ptr %26, i32 1740
  store i32 -32, ptr %85, align 4
  %86 = getelementptr i8, ptr %26, i32 1744
  store volatile ptr %86, ptr %86, align 4
  %87 = getelementptr i8, ptr %26, i32 1748
  store ptr %86, ptr %87, align 4
  %88 = getelementptr i8, ptr %26, i32 1752
  store ptr @usbnet_deferred_kevent, ptr %88, align 4
  %89 = getelementptr i8, ptr %26, i32 1684
  %90 = getelementptr i8, ptr %26, i32 1692
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %90, i8 0, i32 24, i1 false) #22
  store volatile ptr %89, ptr %89, align 4
  %91 = getelementptr i8, ptr %26, i32 1688
  store ptr %89, ptr %91, align 4
  tail call void @__init_waitqueue_head(ptr noundef %90, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_usb_anchor.__key) #22
  %92 = getelementptr i8, ptr %26, i32 1704
  store i32 0, ptr %92, align 4
  %93 = getelementptr i8, ptr %26, i32 1488
  tail call void @init_timer_key(ptr noundef %93, ptr noundef nonnull @usbnet_bh, i32 noundef 0, ptr noundef null, ptr noundef null) #22
  %94 = getelementptr i8, ptr %26, i32 1440
  tail call void @__mutex_init(ptr noundef %94, ptr noundef nonnull @.str.17, ptr noundef nonnull @usbnet_probe.__key.16) #22
  %95 = getelementptr i8, ptr %26, i32 1664
  tail call void @__mutex_init(ptr noundef %95, ptr noundef nonnull @.str.19, ptr noundef nonnull @usbnet_probe.__key.18) #22
  %96 = getelementptr i8, ptr %26, i32 1660
  store i32 0, ptr %96, align 4
  %97 = getelementptr i8, ptr %26, i32 1512
  store ptr %26, ptr %97, align 4
  %98 = tail call i32 @strscpy(ptr noundef %26, ptr noundef nonnull @.str.20, i32 noundef 16) #22
  tail call void @dev_addr_mod(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @node_id, i32 noundef 6) #22
  %99 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 20
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 19
  %102 = load i16, ptr %101, align 2
  %103 = zext i16 %102 to i32
  %104 = add i32 %100, %103
  %105 = getelementptr i8, ptr %26, i32 1544
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 30
  store i32 0, ptr %106, align 8
  %107 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 31
  store i32 65535, ptr %107, align 4
  %108 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 16
  store ptr @usbnet_netdev_ops, ptr %108, align 8
  %109 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 96
  store i32 500, ptr %109, align 8
  %110 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 42
  store ptr @usbnet_ethtool_ops, ptr %110, align 8
  %111 = getelementptr inbounds %struct.driver_info, ptr %18, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %171, label %114

114:                                              ; preds = %64
  %115 = tail call i32 %112(ptr noundef %30, ptr noundef %0) #22
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %420, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %32, align 4
  %119 = getelementptr inbounds %struct.driver_info, ptr %118, i32 0, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %117
  %124 = and i32 %120, 4096
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 72
  %128 = load ptr, ptr %127, align 32
  %129 = load i8, ptr %128, align 1
  %130 = and i8 %129, 2
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %126, %123
  %133 = tail call i32 @strscpy(ptr noundef %26, ptr noundef nonnull @.str.21, i32 noundef 16) #22
  %134 = load ptr, ptr %32, align 4
  %135 = getelementptr inbounds %struct.driver_info, ptr %134, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  br label %137

137:                                              ; preds = %132, %126, %117
  %138 = phi i32 [ %136, %132 ], [ %120, %126 ], [ %120, %117 ]
  %139 = and i32 %138, 128
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = tail call i32 @strscpy(ptr noundef %26, ptr noundef nonnull @.str.22, i32 noundef 16) #22
  %143 = load ptr, ptr %32, align 4
  %144 = getelementptr inbounds %struct.driver_info, ptr %143, i32 0, i32 1
  %145 = load i32, ptr %144, align 4
  br label %146

146:                                              ; preds = %141, %137
  %147 = phi i32 [ %145, %141 ], [ %138, %137 ]
  %148 = and i32 %147, 1024
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %146
  %151 = tail call i32 @strscpy(ptr noundef %26, ptr noundef nonnull @.str.23, i32 noundef 16) #22
  %152 = load ptr, ptr %32, align 4
  %153 = getelementptr inbounds %struct.driver_info, ptr %152, i32 0, i32 1
  %154 = load i32, ptr %153, align 4
  br label %155

155:                                              ; preds = %150, %146
  %156 = phi i32 [ %154, %150 ], [ %147, %146 ]
  %157 = and i32 %156, 32768
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 14
  %161 = load i32, ptr %160, align 8
  %162 = or i32 %161, 128
  store i32 %162, ptr %160, align 8
  br label %163

163:                                              ; preds = %159, %155
  %164 = load i32, ptr %99, align 4
  %165 = load i32, ptr %105, align 4
  %166 = load i16, ptr %101, align 2
  %167 = zext i16 %166 to i32
  %168 = sub i32 %165, %167
  %169 = icmp ugt i32 %164, %168
  br i1 %169, label %170, label %210

170:                                              ; preds = %163
  store i32 %168, ptr %99, align 4
  br label %210

171:                                              ; preds = %64
  %172 = getelementptr inbounds %struct.driver_info, ptr %18, i32 0, i32 16
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.driver_info, ptr %18, i32 0, i32 17
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175, %171
  %180 = tail call i32 @usbnet_get_endpoints(ptr noundef %30, ptr noundef %0)
  br label %207

181:                                              ; preds = %175
  %182 = load i32, ptr %23, align 8
  %183 = shl i32 %182, 8
  %184 = shl i32 %173, 15
  %185 = or i32 %184, %183
  %186 = or i32 %185, -1073741696
  %187 = getelementptr i8, ptr %26, i32 1472
  store i32 %186, ptr %187, align 4
  %188 = load i32, ptr %176, align 4
  %189 = load i32, ptr %23, align 8
  %190 = shl i32 %189, 8
  %191 = shl i32 %188, 15
  %192 = or i32 %191, %190
  %193 = or i32 %192, -1073741824
  %194 = getelementptr i8, ptr %26, i32 1476
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.driver_info, ptr %18, i32 0, i32 1
  %196 = load i32, ptr %195, align 4
  %197 = and i32 %196, 16
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %181
  %200 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %25, i32 0, i32 2
  %201 = load i8, ptr %200, align 2
  %202 = zext i8 %201 to i32
  %203 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %25, i32 0, i32 3
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i32
  %206 = tail call i32 @usb_set_interface(ptr noundef %23, i32 noundef %202, i32 noundef %205) #22
  br label %207

207:                                              ; preds = %199, %179
  %208 = phi i32 [ %206, %199 ], [ %180, %179 ]
  %209 = icmp sgt i32 %208, -1
  br i1 %209, label %210, label %414

210:                                              ; preds = %207, %181, %170, %163
  %211 = getelementptr i8, ptr %26, i32 1480
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %280, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr %32, align 4
  %216 = getelementptr inbounds %struct.driver_info, ptr %215, i32 0, i32 8
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %280, label %219

219:                                              ; preds = %214
  %220 = load ptr, ptr %30, align 4
  %221 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %212, i32 0, i32 2
  %222 = load i8, ptr %221, align 2
  %223 = and i8 %222, 15
  %224 = zext i8 %223 to i32
  %225 = load i32, ptr %220, align 8
  %226 = shl i32 %225, 8
  %227 = shl nuw nsw i32 %224, 15
  %228 = or i32 %227, %226
  %229 = or i32 %228, 1073741952
  %230 = lshr i32 %228, 15
  %231 = and i32 %230, 15
  %232 = getelementptr %struct.usb_device, ptr %220, i32 0, i32 21, i32 %231
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %240, label %235

235:                                              ; preds = %219
  %236 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %233, i32 0, i32 4
  %237 = load i16, ptr %236, align 1
  %238 = and i16 %237, 2047
  %239 = zext i16 %238 to i32
  br label %240

240:                                              ; preds = %235, %219
  %241 = phi i32 [ %239, %235 ], [ 0, %219 ]
  %242 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %212, i32 0, i32 5
  %243 = load i8, ptr %242, align 2
  %244 = zext i8 %243 to i32
  %245 = getelementptr inbounds %struct.usb_device, ptr %220, i32 0, i32 4
  %246 = load i32, ptr %245, align 4
  %247 = icmp eq i32 %246, 3
  %248 = select i1 %247, i32 7, i32 3
  %249 = tail call i32 @llvm.umax.i32(i32 %248, i32 %244) #22
  %250 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %241, i32 noundef 3264) #24
  %251 = icmp eq ptr %250, null
  br i1 %251, label %280, label %252

252:                                              ; preds = %240
  %253 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #22
  %254 = getelementptr i8, ptr %26, i32 1656
  store ptr %253, ptr %254, align 4
  %255 = icmp eq ptr %253, null
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  tail call void @kfree(ptr noundef nonnull %250) #22
  br label %414

257:                                              ; preds = %252
  %258 = load ptr, ptr %30, align 4
  %259 = getelementptr inbounds %struct.urb, ptr %253, i32 0, i32 8
  store ptr %258, ptr %259, align 4
  %260 = getelementptr inbounds %struct.urb, ptr %253, i32 0, i32 10
  store i32 %229, ptr %260, align 4
  %261 = getelementptr inbounds %struct.urb, ptr %253, i32 0, i32 14
  store ptr %250, ptr %261, align 4
  %262 = getelementptr inbounds %struct.urb, ptr %253, i32 0, i32 19
  store i32 %241, ptr %262, align 4
  %263 = getelementptr inbounds %struct.urb, ptr %253, i32 0, i32 28
  store ptr @intr_complete, ptr %263, align 4
  %264 = getelementptr inbounds %struct.urb, ptr %253, i32 0, i32 27
  store ptr %30, ptr %264, align 4
  %265 = getelementptr inbounds %struct.usb_device, ptr %258, i32 0, i32 4
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 3
  %268 = icmp ugt i32 %266, 4
  %269 = or i1 %267, %268
  %270 = tail call i32 @llvm.umin.i32(i32 %249, i32 16) #22
  %271 = add nsw i32 %270, -1
  %272 = shl nuw nsw i32 1, %271
  %273 = select i1 %269, i32 %272, i32 %249
  %274 = getelementptr inbounds %struct.urb, ptr %253, i32 0, i32 25
  store i32 %273, ptr %274, align 4
  %275 = getelementptr inbounds %struct.urb, ptr %253, i32 0, i32 23
  store i32 -1, ptr %275, align 4
  %276 = load ptr, ptr %254, align 4
  %277 = getelementptr inbounds %struct.urb, ptr %276, i32 0, i32 13
  %278 = load i32, ptr %277, align 4
  %279 = or i32 %278, 256
  store i32 %279, ptr %277, align 4
  br label %280

280:                                              ; preds = %257, %240, %214, %210
  %281 = getelementptr i8, ptr %26, i32 1548
  %282 = load i32, ptr %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = load i32, ptr %105, align 4
  store i32 %285, ptr %281, align 4
  br label %286

286:                                              ; preds = %284, %280
  %287 = load ptr, ptr %30, align 4
  %288 = getelementptr i8, ptr %26, i32 1476
  %289 = load i32, ptr %288, align 4
  %290 = lshr i32 %289, 15
  %291 = and i32 %290, 15
  %292 = and i32 %289, 128
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %295, label %294, !prof !19

294:                                              ; preds = %286
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 1981, i32 noundef 9, ptr noundef null) #22
  br label %295

295:                                              ; preds = %294, %286
  %296 = getelementptr %struct.usb_device, ptr %287, i32 0, i32 22, i32 %291
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %295
  %300 = getelementptr i8, ptr %26, i32 1484
  store i32 0, ptr %300, align 4
  br label %410

301:                                              ; preds = %295
  %302 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %297, i32 0, i32 4
  %303 = load i16, ptr %302, align 1
  %304 = and i16 %303, 2047
  %305 = zext i16 %304 to i32
  %306 = getelementptr i8, ptr %26, i32 1484
  store i32 %305, ptr %306, align 4
  %307 = icmp eq i16 %304, 0
  br i1 %307, label %410, label %308

308:                                              ; preds = %301
  %309 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 72
  %310 = load ptr, ptr %309, align 32
  %311 = load i32, ptr %310, align 4
  %312 = load i32, ptr @node_id, align 4
  %313 = xor i32 %312, %311
  %314 = getelementptr i8, ptr %310, i32 4
  %315 = load i16, ptr %314, align 2
  %316 = load i16, ptr getelementptr inbounds ([6 x i8], ptr @node_id, i32 0, i32 4), align 4
  %317 = xor i16 %316, %315
  %318 = zext i16 %317 to i32
  %319 = or i32 %313, %318
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %308
  %322 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 50
  store i8 1, ptr %322, align 8
  br label %323

323:                                              ; preds = %321, %308
  %324 = load ptr, ptr %32, align 4
  %325 = getelementptr inbounds %struct.driver_info, ptr %324, i32 0, i32 1
  %326 = load i32, ptr %325, align 4
  %327 = and i32 %326, 128
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 111, i32 4
  store ptr @wlan_type, ptr %330, align 16
  %331 = load i32, ptr %325, align 4
  br label %332

332:                                              ; preds = %329, %323
  %333 = phi i32 [ %331, %329 ], [ %326, %323 ]
  %334 = and i32 %333, 1024
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 111, i32 4
  store ptr @wwan_type, ptr %337, align 16
  br label %338

338:                                              ; preds = %336, %332
  %339 = load ptr, ptr %30, align 4
  %340 = getelementptr inbounds %struct.usb_device, ptr %339, i32 0, i32 4
  %341 = load i32, ptr %340, align 4
  %342 = load i32, ptr %281, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %362, label %344

344:                                              ; preds = %338
  %345 = load i32, ptr %105, align 4
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %362, label %347

347:                                              ; preds = %344
  switch i32 %341, label %362 [
    i32 3, label %348
    i32 5, label %355
    i32 6, label %355
  ]

348:                                              ; preds = %347
  %349 = udiv i32 91080, %342
  %350 = trunc i32 %349 to i16
  %351 = getelementptr i8, ptr %26, i32 1464
  store i16 %350, ptr %351, align 4
  %352 = udiv i32 91080, %345
  %353 = trunc i32 %352 to i16
  %354 = getelementptr i8, ptr %26, i32 1466
  store i16 %353, ptr %354, align 2
  br label %365

355:                                              ; preds = %347, %347
  %356 = udiv i32 455400, %342
  %357 = trunc i32 %356 to i16
  %358 = getelementptr i8, ptr %26, i32 1464
  store i16 %357, ptr %358, align 4
  %359 = udiv i32 455400, %345
  %360 = trunc i32 %359 to i16
  %361 = getelementptr i8, ptr %26, i32 1466
  store i16 %360, ptr %361, align 2
  br label %365

362:                                              ; preds = %347, %344, %338
  %363 = getelementptr i8, ptr %26, i32 1466
  store i16 4, ptr %363, align 2
  %364 = getelementptr i8, ptr %26, i32 1464
  store i16 4, ptr %364, align 4
  br label %365

365:                                              ; preds = %362, %355, %348
  %366 = getelementptr i8, ptr %26, i32 1468
  %367 = load i8, ptr %366, align 4
  %368 = and i8 %367, 1
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %380, label %370

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.driver_info, ptr %18, i32 0, i32 1
  %372 = load i32, ptr %371, align 4
  %373 = and i32 %372, 8704
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %370
  %376 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %377 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %376, i32 noundef 3520, i32 noundef 1) #26
  %378 = getelementptr i8, ptr %26, i32 1508
  store ptr %377, ptr %378, align 4
  %379 = icmp eq ptr %377, null
  br i1 %379, label %410, label %380

380:                                              ; preds = %375, %370, %365
  %381 = tail call i32 @register_netdev(ptr noundef %26) #22
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %407

383:                                              ; preds = %380
  %384 = load i32, ptr %66, align 4
  %385 = and i32 %384, 2
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %399, label %387

387:                                              ; preds = %383
  %388 = load ptr, ptr %97, align 4
  %389 = load ptr, ptr %4, align 8
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr i8, ptr %22, i32 -64
  %392 = load ptr, ptr %391, align 8
  %393 = getelementptr inbounds %struct.usb_bus, ptr %392, i32 0, i32 3
  %394 = load ptr, ptr %393, align 4
  %395 = getelementptr i8, ptr %22, i32 -124
  %396 = load ptr, ptr %32, align 4
  %397 = load ptr, ptr %396, align 4
  %398 = load ptr, ptr %309, align 32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %388, ptr noundef nonnull @.str.24, ptr noundef %390, ptr noundef %394, ptr noundef %395, ptr noundef %397, ptr noundef %398) #23
  br label %399

399:                                              ; preds = %387, %383
  %400 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  store ptr %30, ptr %400, align 8
  tail call void @netif_device_attach(ptr noundef %26) #22
  %401 = load ptr, ptr %32, align 4
  %402 = getelementptr inbounds %struct.driver_info, ptr %401, i32 0, i32 1
  %403 = load i32, ptr %402, align 4
  %404 = and i32 %403, 2048
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %427, label %406

406:                                              ; preds = %399
  tail call void @usbnet_link_change(ptr noundef %30, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %427

407:                                              ; preds = %380
  %408 = getelementptr i8, ptr %26, i32 1508
  %409 = load ptr, ptr %408, align 4
  tail call void @kfree(ptr noundef %409) #22
  br label %410

410:                                              ; preds = %407, %375, %301, %299
  %411 = phi i32 [ %381, %407 ], [ -19, %301 ], [ -12, %375 ], [ -19, %299 ]
  %412 = getelementptr i8, ptr %26, i32 1656
  %413 = load ptr, ptr %412, align 4
  tail call void @usb_free_urb(ptr noundef %413) #22
  br label %414

414:                                              ; preds = %410, %256, %207
  %415 = phi i32 [ %411, %410 ], [ %208, %207 ], [ -12, %256 ]
  %416 = getelementptr inbounds %struct.driver_info, ptr %18, i32 0, i32 3
  %417 = load ptr, ptr %416, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %420, label %419

419:                                              ; preds = %414
  tail call void %417(ptr noundef %30, ptr noundef %0) #22
  br label %420

420:                                              ; preds = %419, %414, %114
  %421 = phi i32 [ %115, %114 ], [ %415, %419 ], [ %415, %414 ]
  %422 = tail call zeroext i1 @cancel_work_sync(ptr noundef %85) #22
  %423 = tail call i32 @del_timer_sync(ptr noundef %93) #22
  %424 = load ptr, ptr %56, align 8
  tail call void @free_percpu(ptr noundef %424) #22
  br label %425

425:                                              ; preds = %420, %44
  %426 = phi i32 [ %421, %420 ], [ -12, %44 ]
  tail call void @free_netdev(ptr noundef %26) #22
  br label %427

427:                                              ; preds = %425, %406, %399, %20, %13
  %428 = phi i32 [ -19, %13 ], [ 0, %406 ], [ 0, %399 ], [ %426, %425 ], [ -12, %20 ]
  ret i32 %428
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbnet_bh_tasklet(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -228
  tail call void @usbnet_bh(ptr noundef %2)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbnet_deferred_kevent(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -332
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -132
  tail call fastcc void @unlink_urbs(ptr noundef %8)
  %9 = getelementptr i8, ptr %0, i32 -328
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @usb_autopm_get_interface(ptr noundef %10) #22
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %0, i32 -264
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @usb_clear_halt(ptr noundef %14, i32 noundef %16) #22
  %18 = load ptr, ptr %9, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %18) #22
  %19 = freeze i32 %17
  %20 = icmp slt i32 %19, 0
  %21 = icmp eq i32 %19, -108
  br i1 %20, label %22, label %32

22:                                               ; preds = %13
  switch i32 %19, label %23 [
    i32 -32, label %32
    i32 -108, label %32
  ]

23:                                               ; preds = %22
  %24 = getelementptr i8, ptr %0, i32 -224
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %23, %7
  %29 = phi i32 [ %11, %7 ], [ %19, %23 ]
  %30 = getelementptr i8, ptr %0, i32 -228
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.28, i32 noundef %29) #23
  br label %38

32:                                               ; preds = %22, %22, %13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %3) #22
  br i1 %21, label %38, label %33

33:                                               ; preds = %32
  %34 = getelementptr i8, ptr %0, i32 -228
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 87
  %37 = load ptr, ptr %36, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %37) #22
  br label %38

38:                                               ; preds = %33, %32, %28, %23, %1
  %39 = load volatile i32, ptr %3, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %72, label %42

42:                                               ; preds = %38
  %43 = getelementptr i8, ptr %0, i32 -148
  tail call fastcc void @unlink_urbs(ptr noundef %43)
  %44 = getelementptr i8, ptr %0, i32 -328
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @usb_autopm_get_interface(ptr noundef %45) #22
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %2, align 4
  %50 = getelementptr i8, ptr %0, i32 -268
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @usb_clear_halt(ptr noundef %49, i32 noundef %51) #22
  %53 = load ptr, ptr %44, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %53) #22
  %54 = freeze i32 %52
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  switch i32 %54, label %57 [
    i32 -32, label %66
    i32 -108, label %66
  ]

57:                                               ; preds = %56
  %58 = getelementptr i8, ptr %0, i32 -224
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, 64
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57, %42
  %63 = phi i32 [ %46, %42 ], [ %54, %57 ]
  %64 = getelementptr i8, ptr %0, i32 -228
  %65 = load ptr, ptr %64, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %65, ptr noundef nonnull @.str.29, i32 noundef %63) #23
  br label %72

66:                                               ; preds = %56, %56, %48
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %3) #22
  %67 = getelementptr i8, ptr %0, i32 -20
  %68 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %67) #22
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %0, i32 -24
  tail call void @__tasklet_schedule(ptr noundef %71) #22
  br label %72

72:                                               ; preds = %70, %66, %62, %57, %38
  %73 = load volatile i32, ptr %3, align 4
  %74 = and i32 %73, 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %103, label %76

76:                                               ; preds = %72
  %77 = getelementptr i8, ptr %0, i32 -228
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.net_device, ptr %78, i32 0, i32 6
  %80 = load volatile i32, ptr %79, align 4
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %3) #22
  br label %103

84:                                               ; preds = %76
  %85 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #22
  %86 = icmp eq ptr %85, null
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %3) #22
  %88 = getelementptr i8, ptr %0, i32 -328
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 @usb_autopm_get_interface(ptr noundef %89) #22
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  tail call void @usb_free_urb(ptr noundef nonnull %85) #22
  br label %97

93:                                               ; preds = %87
  %94 = tail call fastcc i32 @rx_submit(ptr noundef %2, ptr noundef nonnull %85, i32 noundef 3264)
  %95 = icmp eq i32 %94, -67
  %96 = load ptr, ptr %88, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %96) #22
  br i1 %95, label %103, label %97

97:                                               ; preds = %93, %92
  %98 = getelementptr i8, ptr %0, i32 -20
  %99 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %98) #22
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %0, i32 -24
  tail call void @__tasklet_schedule(ptr noundef %102) #22
  br label %103

103:                                              ; preds = %101, %97, %93, %84, %83, %72
  %104 = load volatile i32, ptr %3, align 4
  %105 = and i32 %104, 16
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %137, label %107

107:                                              ; preds = %103
  %108 = getelementptr i8, ptr %0, i32 -324
  %109 = load ptr, ptr %108, align 4
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %3) #22
  %110 = getelementptr i8, ptr %0, i32 -328
  %111 = load ptr, ptr %110, align 4
  %112 = tail call i32 @usb_autopm_get_interface(ptr noundef %111) #22
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.driver_info, ptr %109, i32 0, i32 9
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %134, label %118

118:                                              ; preds = %114
  %119 = tail call i32 %116(ptr noundef %2) #22
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load ptr, ptr %110, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %122) #22
  br label %123

123:                                              ; preds = %121, %107
  %124 = phi i32 [ 0, %107 ], [ %119, %121 ]
  %125 = getelementptr i8, ptr %0, i32 -228
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr %2, align 4
  %128 = getelementptr inbounds %struct.usb_device, ptr %127, i32 0, i32 12
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.usb_bus, ptr %129, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.usb_device, ptr %127, i32 0, i32 1
  %133 = load ptr, ptr %109, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %126, ptr noundef nonnull @.str.30, i32 noundef %124, ptr noundef %131, ptr noundef %132, ptr noundef %133) #23
  br label %136

134:                                              ; preds = %118, %114
  %135 = load ptr, ptr %110, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %135) #22
  br label %136

136:                                              ; preds = %134, %123
  tail call fastcc void @__handle_link_change(ptr noundef %2)
  br label %137

137:                                              ; preds = %136, %103
  %138 = load volatile i32, ptr %3, align 4
  %139 = and i32 %138, 2048
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  tail call fastcc void @__handle_link_change(ptr noundef %2)
  br label %142

142:                                              ; preds = %141, %137
  %143 = load volatile i32, ptr %3, align 4
  %144 = and i32 %143, 4096
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %142
  %147 = getelementptr i8, ptr %0, i32 -324
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.driver_info, ptr %148, i32 0, i32 15
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %146
  tail call void %150(ptr noundef %2) #22
  br label %153

153:                                              ; preds = %152, %146
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %3) #22
  br label %154

154:                                              ; preds = %153, %142
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbnet_bh(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -80
  %3 = getelementptr i8, ptr %0, i32 136
  %4 = tail call ptr @skb_dequeue(ptr noundef %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %63, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -72
  %8 = getelementptr i8, ptr %0, i32 24
  br label %9

9:                                                ; preds = %54, %6
  %10 = phi ptr [ %4, %6 ], [ %55, %54 ]
  %11 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 8
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %54 [
    i32 4, label %14
    i32 2, label %57
    i32 5, label %61
  ]

14:                                               ; preds = %9
  store i32 5, ptr %12, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.driver_info, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = tail call i32 %17(ptr noundef %2, ptr noundef nonnull %10) #22
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %7, align 4
  br i1 %21, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.driver_info, ptr %22, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 36, i32 4
  br label %49

31:                                               ; preds = %19, %14
  %32 = phi ptr [ %15, %14 ], [ %22, %19 ]
  %33 = getelementptr inbounds %struct.driver_info, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 8192
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = icmp ult i32 %39, 14
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 36, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 8
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 36, i32 10
  br label %49

48:                                               ; preds = %37
  tail call void @usbnet_skb_return(ptr noundef %2, ptr noundef nonnull %10) #22
  br label %54

49:                                               ; preds = %41, %28
  %50 = phi ptr [ %30, %28 ], [ %47, %41 ]
  %51 = load i32, ptr %50, align 8
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %49, %31, %23
  tail call void @skb_queue_tail(ptr noundef %3, ptr noundef nonnull %10) #22
  br label %54

54:                                               ; preds = %61, %53, %48, %9
  %55 = tail call ptr @skb_dequeue(ptr noundef %3) #22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %9

57:                                               ; preds = %9
  %58 = load ptr, ptr %11, align 4
  %59 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 16
  %60 = load ptr, ptr %59, align 4
  tail call void @kfree(ptr noundef %60) #22
  br label %61

61:                                               ; preds = %57, %9
  %62 = load ptr, ptr %11, align 4
  tail call void @usb_free_urb(ptr noundef %62) #22
  tail call void @consume_skb(ptr noundef nonnull %10) #22
  br label %54

63:                                               ; preds = %54, %1
  %64 = getelementptr i8, ptr %0, i32 268
  tail call void @_clear_bit(i32 noundef 10, ptr noundef %64) #22
  %65 = getelementptr i8, ptr %0, i32 -60
  %66 = getelementptr i8, ptr %0, i32 -56
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %80, label %69

69:                                               ; preds = %63
  %70 = getelementptr i8, ptr %0, i32 128
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr i8, ptr %0, i32 112
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, %71
  %75 = getelementptr i8, ptr %0, i32 144
  %76 = load i32, ptr %75, align 4
  %77 = sub i32 0, %76
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %79, label %135

79:                                               ; preds = %69
  tail call void @__wake_up(ptr noundef %65, i32 noundef 3, i32 noundef 0, ptr noundef null) #22
  br label %135

80:                                               ; preds = %63
  %81 = getelementptr i8, ptr %0, i32 24
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.net_device, ptr %82, i32 0, i32 6
  %84 = load volatile i32, ptr %83, align 4
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %135, label %87

87:                                               ; preds = %80
  %88 = load volatile i32, ptr %83, align 4
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %135, label %91

91:                                               ; preds = %87
  %92 = load volatile i32, ptr %83, align 4
  %93 = and i32 %92, 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.hlist_node, ptr %0, i32 0, i32 1
  %97 = load volatile ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %135

99:                                               ; preds = %95
  %100 = load volatile i32, ptr %64, align 4
  %101 = and i32 %100, 32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %99
  %104 = load volatile i32, ptr %64, align 4
  %105 = and i32 %104, 2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  %108 = getelementptr i8, ptr %0, i32 112
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr i8, ptr %0, i32 -24
  %111 = load i16, ptr %110, align 4
  %112 = zext i16 %111 to i32
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = tail call fastcc i32 @rx_alloc_submit(ptr noundef %2, i32 noundef 2592)
  %116 = icmp eq i32 %115, -67
  br i1 %116, label %135, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %108, align 4
  %119 = load i16, ptr %110, align 4
  %120 = zext i16 %119 to i32
  %121 = icmp ult i32 %118, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = getelementptr i8, ptr %0, i32 228
  tail call fastcc void @tasklet_schedule(ptr noundef %123)
  br label %124

124:                                              ; preds = %122, %117, %107
  %125 = getelementptr i8, ptr %0, i32 128
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr i8, ptr %0, i32 -22
  %128 = load i16, ptr %127, align 2
  %129 = zext i16 %128 to i32
  %130 = icmp ult i32 %126, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load ptr, ptr %81, align 4
  %133 = getelementptr inbounds %struct.net_device, ptr %132, i32 0, i32 87
  %134 = load ptr, ptr %133, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %134) #22
  br label %135

135:                                              ; preds = %131, %124, %114, %103, %99, %95, %91, %87, %80, %79, %69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_link_change(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = xor i1 %1, true
  %5 = or i1 %4, %2
  %6 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %9, label %8

8:                                                ; preds = %3
  tail call void @netif_carrier_on(ptr noundef %7) #22
  br label %10

9:                                                ; preds = %3
  tail call void @netif_carrier_off(ptr noundef %7) #22
  br label %10

10:                                               ; preds = %9, %8
  %11 = and i1 %1, %2
  %12 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  %13 = select i1 %11, i32 4, i32 11
  tail call void @_set_bit(i32 noundef %13, ptr noundef %12) #22
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 37
  %15 = load ptr, ptr @system_wq, align 4
  %16 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %14) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_suspend(ptr nocapture noundef readonly %0, [1 x i32] %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.usbnet, ptr %4, i32 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = add i8 %6, 1
  store i8 %7, ptr %5, align 4
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = extractvalue [1 x i32] %1, 0
  %11 = getelementptr inbounds %struct.usbnet, ptr %4, i32 0, i32 29, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %11) #22
  %12 = getelementptr inbounds %struct.usbnet, ptr %4, i32 0, i32 29, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %10, 1024
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %9
  %19 = load i8, ptr %5, align 4
  %20 = add i8 %19, -1
  store i8 %20, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !22
  %21 = load i16, ptr %11, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !26
  br label %37

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct.usbnet, ptr %4, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 6, ptr noundef %24) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !22
  %25 = load i16, ptr %11, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !26
  %27 = getelementptr inbounds %struct.usbnet, ptr %4, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  tail call void @netif_device_detach(ptr noundef %28) #22
  tail call fastcc void @usbnet_terminate_urbs(ptr noundef %4)
  %29 = getelementptr inbounds %struct.usbnet, ptr %4, i32 0, i32 32
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.usbnet, ptr %4, i32 0, i32 34
  tail call void @mutex_lock(ptr noundef %33) #22
  %34 = load ptr, ptr %29, align 4
  tail call void @usb_kill_urb(ptr noundef %34) #22
  tail call void @mutex_unlock(ptr noundef %33) #22
  br label %35

35:                                               ; preds = %32, %23
  %36 = load ptr, ptr %27, align 4
  tail call void @netif_device_attach(ptr noundef %36) #22
  br label %37

37:                                               ; preds = %35, %18, %2
  %38 = phi i32 [ -16, %18 ], [ 0, %35 ], [ 0, %2 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 7, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 7
  %5 = load i8, ptr %4, align 4
  %6 = add i8 %5, -1
  store i8 %6, ptr %4, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %106

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 34
  tail call void @mutex_lock(ptr noundef %9) #22
  %10 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 33
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 32
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @usb_submit_urb(ptr noundef %15, i32 noundef 3072) #22
  br label %17

17:                                               ; preds = %13, %8
  tail call void @mutex_unlock(ptr noundef %9) #22
  %18 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 29
  %19 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 29, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #22
  %20 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 35
  %21 = tail call ptr @usb_get_from_anchor(ptr noundef %20) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 19
  %25 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 29, i32 0, i32 0, i32 1
  %26 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 29, i32 1
  %27 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 1
  br label %28

28:                                               ; preds = %52, %23
  %29 = phi ptr [ %21, %23 ], [ %53, %52 ]
  %30 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 27
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @usb_submit_urb(ptr noundef nonnull %29, i32 noundef 2592) #22
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  tail call void @__dev_kfree_skb_any(ptr noundef %31, i32 noundef 1) #22
  %35 = getelementptr inbounds %struct.urb, ptr %29, i32 0, i32 16
  %36 = load ptr, ptr %35, align 4
  tail call void @kfree(ptr noundef %36) #22
  tail call void @usb_free_urb(ptr noundef nonnull %29) #22
  %37 = load ptr, ptr %27, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %37) #22
  br label %52

38:                                               ; preds = %28
  %39 = load ptr, ptr %24, align 4
  %40 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 87
  %41 = load ptr, ptr %40, align 64
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 11
  %44 = load volatile i32, ptr %43, align 8
  %45 = icmp eq i32 %44, %42
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  store volatile i32 %42, ptr %43, align 8
  br label %47

47:                                               ; preds = %46, %38
  %48 = load ptr, ptr %25, align 4
  store volatile ptr %18, ptr %31, align 8
  %49 = getelementptr inbounds %struct.anon.41, ptr %31, i32 0, i32 1
  store volatile ptr %48, ptr %49, align 4
  store volatile ptr %31, ptr %25, align 4
  store volatile ptr %31, ptr %48, align 4
  %50 = load i32, ptr %26, align 4
  %51 = add i32 %50, 1
  store volatile i32 %51, ptr %26, align 4
  br label %52

52:                                               ; preds = %47, %34
  %53 = tail call ptr @usb_get_from_anchor(ptr noundef %20) #22
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %28

55:                                               ; preds = %52, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !27
  %56 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 38
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %56) #22
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !22
  %57 = load i16, ptr %19, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #22, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !26
  %59 = load volatile i32, ptr %56, align 4
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %106, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 19
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 6
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 17, i32 0, i32 1
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load volatile i32, ptr %56, align 4
  %75 = and i32 %74, 2
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call fastcc i32 @rx_alloc_submit(ptr noundef %3, i32 noundef 3072)
  br label %79

79:                                               ; preds = %77, %73, %69, %62
  %80 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 29, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 11
  %83 = load i16, ptr %82, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  %87 = load ptr, ptr %63, align 4
  %88 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 88
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 87
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i32 [ 0, %91 ], [ %97, %93 ]
  %95 = load ptr, ptr %92, align 64
  %96 = getelementptr %struct.netdev_queue, ptr %95, i32 %94
  tail call void @netif_tx_wake_queue(ptr noundef %96) #22
  %97 = add nuw i32 %94, 1
  %98 = load i32, ptr %88, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %93, label %100

100:                                              ; preds = %93, %86, %79
  %101 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 36, i32 1
  %102 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %101) #22
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 36
  tail call void @__tasklet_schedule(ptr noundef %105) #22
  br label %106

106:                                              ; preds = %104, %100, %55, %1
  %107 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 38
  %108 = tail call i32 @_test_and_clear_bit(i32 noundef 8, ptr noundef %107) #22
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void @usb_autopm_get_interface_no_resume(ptr noundef %0) #22
  br label %111

111:                                              ; preds = %110, %106
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_from_anchor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rx_alloc_submit(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 28, i32 1
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 10
  br label %8

5:                                                ; preds = %17
  %6 = add nuw nsw i32 %9, 1
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %20, label %8

8:                                                ; preds = %5, %2
  %9 = phi i32 [ 0, %2 ], [ %6, %5 ]
  %10 = load i32, ptr %3, align 4
  %11 = load i16, ptr %4, align 4
  %12 = zext i16 %11 to i32
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %1) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc i32 @rx_submit(ptr noundef %0, ptr noundef nonnull %15, i32 noundef %1)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %5, label %20

20:                                               ; preds = %17, %14, %8, %5
  %21 = phi i32 [ %18, %17 ], [ 0, %8 ], [ 0, %5 ], [ -12, %14 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_get_interface_no_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_device_suggests_idle(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %2) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 6
  %9 = load i8, ptr %8, align 8
  %10 = or i8 %9, 8
  store i8 %10, ptr %8, align 8
  %11 = load ptr, ptr %6, align 4
  tail call void @usb_autopm_put_interface_async(ptr noundef %11) #22
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @usbnet_manage_power(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_interface, ptr %4, i32 0, i32 6
  %6 = trunc i32 %1 to i8
  %7 = load i8, ptr %5, align 8
  %8 = shl i8 %6, 3
  %9 = and i8 %8, 8
  %10 = and i8 %7, -9
  %11 = or i8 %10, %9
  store i8 %11, ptr %5, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_read_cmd(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef writeonly %5, i16 noundef zeroext %6) #0 {
  %8 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @usb_autopm_get_interface(ptr noundef %9) #22
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  %13 = icmp eq i16 %6, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = zext i16 %6 to i32
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %14, %12
  %19 = phi ptr [ %16, %14 ], [ null, %12 ]
  %20 = load ptr, ptr %0, align 4
  %21 = load i32, ptr %20, align 8
  %22 = shl i32 %21, 8
  %23 = or i32 %22, -2147483520
  %24 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %23, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %19, i16 noundef zeroext %6, i32 noundef 5000) #22
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = zext i16 %6 to i32
  %28 = icmp ule i32 %24, %27
  %29 = icmp ne ptr %5, null
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 64 %19, i32 %24, i1 false) #22
  br label %32

32:                                               ; preds = %31, %26, %18
  tail call void @kfree(ptr noundef %19) #22
  br label %33

33:                                               ; preds = %32, %14
  %34 = phi i32 [ %24, %32 ], [ -12, %14 ]
  %35 = load ptr, ptr %8, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %35) #22
  br label %36

36:                                               ; preds = %33, %7
  %37 = phi i32 [ %34, %33 ], [ -19, %7 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_write_cmd(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6) #0 {
  %8 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @usb_autopm_get_interface(ptr noundef %9) #22
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %5, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = zext i16 %6 to i32
  %16 = tail call ptr @kmemdup(ptr noundef nonnull %5, i32 noundef %15, i32 noundef 3264) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %23

18:                                               ; preds = %12
  %19 = icmp eq i16 %6, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = load i1, ptr @__usbnet_write_cmd.__already_done, align 1
  br i1 %21, label %30, label %22, !prof !19

22:                                               ; preds = %20
  store i1 true, ptr @__usbnet_write_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2044, i32 noundef 9, ptr noundef null) #22
  br label %30

23:                                               ; preds = %18, %14
  %24 = phi ptr [ %16, %14 ], [ null, %18 ]
  %25 = load ptr, ptr %0, align 4
  %26 = load i32, ptr %25, align 8
  %27 = shl i32 %26, 8
  %28 = or i32 %27, -2147483648
  %29 = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %28, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %24, i16 noundef zeroext %6, i32 noundef 5000) #22
  tail call void @kfree(ptr noundef %24) #22
  br label %30

30:                                               ; preds = %23, %22, %20, %14
  %31 = phi i32 [ %29, %23 ], [ -12, %14 ], [ -22, %22 ], [ -22, %20 ]
  %32 = load ptr, ptr %8, align 4
  tail call void @usb_autopm_put_interface(ptr noundef %32) #22
  br label %33

33:                                               ; preds = %30, %7
  %34 = phi i32 [ %31, %30 ], [ -19, %7 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_read_cmd_nopm(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef writeonly %5, i16 noundef zeroext %6) #0 {
  %8 = icmp eq i16 %6, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = zext i16 %6 to i32
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %11, %9 ], [ null, %7 ]
  %15 = load ptr, ptr %0, align 4
  %16 = load i32, ptr %15, align 8
  %17 = shl i32 %16, 8
  %18 = or i32 %17, -2147483520
  %19 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %18, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %14, i16 noundef zeroext %6, i32 noundef 5000) #22
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = zext i16 %6 to i32
  %23 = icmp ule i32 %19, %22
  %24 = icmp ne ptr %5, null
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %5, ptr align 64 %14, i32 %19, i1 false) #22
  br label %27

27:                                               ; preds = %26, %21, %13
  tail call void @kfree(ptr noundef %14) #22
  br label %28

28:                                               ; preds = %27, %9
  %29 = phi i32 [ %19, %27 ], [ -12, %9 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_write_cmd_nopm(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6) #0 {
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = zext i16 %6 to i32
  %11 = tail call ptr @kmemdup(ptr noundef nonnull %5, i32 noundef %10, i32 noundef 3264) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %18

13:                                               ; preds = %7
  %14 = icmp eq i16 %6, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %13
  %16 = load i1, ptr @__usbnet_write_cmd.__already_done, align 1
  br i1 %16, label %25, label %17, !prof !19

17:                                               ; preds = %15
  store i1 true, ptr @__usbnet_write_cmd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2044, i32 noundef 9, ptr noundef null) #22
  br label %25

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %11, %9 ], [ null, %13 ]
  %20 = load ptr, ptr %0, align 4
  %21 = load i32, ptr %20, align 8
  %22 = shl i32 %21, 8
  %23 = or i32 %22, -2147483648
  %24 = tail call i32 @usb_control_msg(ptr noundef %20, i32 noundef %23, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %19, i16 noundef zeroext %6, i32 noundef 5000) #22
  tail call void @kfree(ptr noundef %19) #22
  br label %25

25:                                               ; preds = %18, %17, %15, %9
  %26 = phi i32 [ %24, %18 ], [ -12, %9 ], [ -22, %17 ], [ -22, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_write_cmd_async(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5, i16 noundef zeroext %6) #0 {
  %8 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %5, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = zext i16 %6 to i32
  %14 = tail call ptr @kmemdup(ptr noundef nonnull %5, i32 noundef %13, i32 noundef 2592) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.usbnet_write_cmd_async) #23
  br label %50

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %14, %12 ], [ null, %10 ]
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2592, i32 noundef 8) #26
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %19
  store i8 %2, ptr %22, align 8
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 1
  store i8 %1, ptr %25, align 1
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 2
  store i16 %3, ptr %26, align 2
  %27 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 3
  store i16 %4, ptr %27, align 4
  %28 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %22, i32 0, i32 4
  store i16 %6, ptr %28, align 2
  %29 = load ptr, ptr %0, align 4
  %30 = load i32, ptr %29, align 8
  %31 = shl i32 %30, 8
  %32 = or i32 %31, -2147483648
  %33 = zext i16 %6 to i32
  %34 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 8
  store ptr %29, ptr %34, align 4
  %35 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 10
  store i32 %32, ptr %35, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 21
  store ptr %22, ptr %36, align 4
  %37 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 14
  store ptr %20, ptr %37, align 4
  %38 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 19
  store i32 %33, ptr %38, align 4
  %39 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 28
  store ptr @usbnet_async_cmd_cb, ptr %39, align 4
  %40 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 27
  store ptr %22, ptr %40, align 4
  %41 = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = or i32 %42, 256
  store i32 %43, ptr %41, align 4
  %44 = tail call i32 @usb_submit_urb(ptr noundef nonnull %8, i32 noundef 2592) #22
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %24
  %47 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %48, ptr noundef nonnull @.str.26, i32 noundef %44) #23
  br label %50

49:                                               ; preds = %19
  tail call void @kfree(ptr noundef %20) #22
  br label %50

50:                                               ; preds = %49, %46, %16
  %51 = phi ptr [ %22, %46 ], [ null, %49 ], [ null, %16 ]
  %52 = phi i32 [ %44, %46 ], [ -12, %49 ], [ -12, %16 ]
  tail call void @kfree(ptr noundef %51) #22
  tail call void @usb_free_urb(ptr noundef nonnull %8) #22
  br label %53

53:                                               ; preds = %50, %24, %7
  %54 = phi i32 [ 0, %24 ], [ %52, %50 ], [ -12, %7 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbnet_async_cmd_cb(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #22
  tail call void @usb_free_urb(ptr noundef %0) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usbnet_init() #15 section ".init.text" {
  tail call void @get_random_bytes(ptr noundef nonnull @node_id, i32 noundef 6) #22
  %1 = load i8, ptr @node_id, align 4
  %2 = and i8 %1, -4
  %3 = or i8 %2, 2
  store i8 %3, ptr @node_id, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal void @usbnet_exit() #16 section ".exit.text" {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #17

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @defer_bh(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #22
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %8 = load i32, ptr %7, align 4
  store i32 %3, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sk_buff_head, ptr %2, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  store volatile i32 %11, ptr %9, align 4
  %12 = load ptr, ptr %1, align 8
  %13 = getelementptr inbounds %struct.anon.41, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr null, ptr %13, align 4
  store ptr null, ptr %1, align 8
  %15 = getelementptr inbounds %struct.anon.41, ptr %12, i32 0, i32 1
  store volatile ptr %14, ptr %15, align 4
  store volatile ptr %12, ptr %14, align 8
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 30
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 30, i32 2
  tail call void @_raw_spin_lock(ptr noundef %17) #22
  %18 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 30, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  store volatile ptr %16, ptr %1, align 8
  store volatile ptr %19, ptr %13, align 4
  store volatile ptr %1, ptr %18, align 4
  store volatile ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 30, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store volatile i32 %22, ptr %20, align 4
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 36, i32 1
  %26 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %25) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 36
  tail call void @__tasklet_schedule(ptr noundef %29) #22
  br label %30

30:                                               ; preds = %28, %24, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !22
  %31 = load i16, ptr %17, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #22
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rx_submit(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1024
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @usb_free_urb(ptr noundef %1) #22
  br label %96

11:                                               ; preds = %3
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 8192
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %16 = load ptr, ptr %15, align 4
  br i1 %14, label %17, label %28

17:                                               ; preds = %11
  %18 = add i32 %5, 2
  %19 = tail call ptr @__netdev_alloc_skb(ptr noundef %16, i32 noundef %18, i32 noundef %2) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 2
  store ptr %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr i8, ptr %26, i32 2
  store ptr %27, ptr %25, align 8
  br label %38

28:                                               ; preds = %11
  %29 = tail call ptr @__netdev_alloc_skb(ptr noundef %16, i32 noundef %5, i32 noundef %2) #22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 17
  %33 = load ptr, ptr %32, align 4
  br label %38

34:                                               ; preds = %28, %17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %6) #22
  %35 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 37
  %36 = load ptr, ptr @system_wq, align 4
  %37 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %36, ptr noundef %35) #22
  tail call void @usb_free_urb(ptr noundef %1) #22
  br label %96

38:                                               ; preds = %31, %21
  %39 = phi ptr [ %24, %21 ], [ %33, %31 ]
  %40 = phi ptr [ %19, %21 ], [ %29, %31 ]
  %41 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 3
  store ptr %1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 3, i32 4
  store ptr %0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 3, i32 12
  store i32 0, ptr %43, align 4
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 13
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  store ptr %44, ptr %47, align 4
  %48 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  store i32 %46, ptr %48, align 4
  %49 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  store ptr %39, ptr %49, align 4
  %50 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  store i32 %5, ptr %50, align 4
  %51 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 28
  store ptr @rx_complete, ptr %51, align 4
  %52 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  store ptr %40, ptr %52, align 4
  %53 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 28
  %54 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 28, i32 2
  %55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %54) #22
  %56 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 6
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %94, label %62

62:                                               ; preds = %38
  %63 = load volatile i32, ptr %58, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %94, label %66

66:                                               ; preds = %62
  %67 = load volatile i32, ptr %6, align 4
  %68 = and i32 %67, 128
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %94, label %70

70:                                               ; preds = %66
  %71 = load volatile i32, ptr %6, align 4
  %72 = and i32 %71, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %70
  %75 = load volatile i32, ptr %6, align 4
  %76 = and i32 %75, 64
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = tail call i32 @usb_submit_urb(ptr noundef %1, i32 noundef 2592) #22
  switch i32 %79, label %84 [
    i32 -32, label %80
    i32 -12, label %81
    i32 -19, label %82
    i32 -113, label %94
    i32 0, label %86
  ]

80:                                               ; preds = %78
  tail call void @usbnet_defer_kevent(ptr noundef %0, i32 noundef 1)
  br label %94

81:                                               ; preds = %78
  tail call void @usbnet_defer_kevent(ptr noundef %0, i32 noundef 2)
  br label %94

82:                                               ; preds = %78
  %83 = load ptr, ptr %56, align 4
  tail call void @netif_device_detach(ptr noundef %83) #22
  br label %94

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 36
  tail call fastcc void @tasklet_schedule(ptr noundef %85)
  br label %94

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 28, i32 0, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  store volatile ptr %53, ptr %40, align 8
  %89 = getelementptr inbounds %struct.anon.41, ptr %40, i32 0, i32 1
  store volatile ptr %88, ptr %89, align 4
  store volatile ptr %40, ptr %87, align 4
  store volatile ptr %40, ptr %88, align 4
  %90 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 28, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, 1
  store volatile i32 %92, ptr %90, align 4
  %93 = getelementptr inbounds %struct.sk_buff, ptr %40, i32 0, i32 3, i32 8
  store i32 3, ptr %93, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #22
  br label %96

94:                                               ; preds = %84, %82, %81, %80, %78, %74, %70, %66, %62, %38
  %95 = phi i32 [ -67, %38 ], [ -67, %62 ], [ -67, %66 ], [ -67, %70 ], [ -67, %74 ], [ -67, %78 ], [ -32, %80 ], [ -12, %81 ], [ -19, %82 ], [ %79, %84 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %54, i32 noundef %55) #22
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %40, i32 noundef 1) #22
  tail call void @usb_free_urb(ptr noundef %1) #22
  br label %96

96:                                               ; preds = %94, %86, %34, %10
  %97 = phi i32 [ -67, %10 ], [ -12, %34 ], [ %95, %94 ], [ 0, %86 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__handle_link_change(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 128
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 28
  tail call fastcc void @unlink_urbs(ptr noundef %14)
  br label %21

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 36, i32 1
  %17 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 36
  tail call void @__tasklet_schedule(ptr noundef %20) #22
  br label %21

21:                                               ; preds = %19, %15, %13
  %22 = load ptr, ptr %0, align 4
  %23 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 23
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  switch i32 %24, label %47 [
    i32 3, label %33
    i32 5, label %40
    i32 6, label %40
  ]

33:                                               ; preds = %32
  %34 = udiv i32 91080, %26
  %35 = trunc i32 %34 to i16
  %36 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 10
  store i16 %35, ptr %36, align 4
  %37 = udiv i32 91080, %30
  %38 = trunc i32 %37 to i16
  %39 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 11
  store i16 %38, ptr %39, align 2
  br label %50

40:                                               ; preds = %32, %32
  %41 = udiv i32 455400, %26
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 10
  store i16 %42, ptr %43, align 4
  %44 = udiv i32 455400, %30
  %45 = trunc i32 %44 to i16
  %46 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 11
  store i16 %45, ptr %46, align 2
  br label %50

47:                                               ; preds = %32, %28, %21
  %48 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 11
  store i16 4, ptr %48, align 2
  %49 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 10
  store i16 4, ptr %49, align 4
  br label %50

50:                                               ; preds = %47, %40, %33
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %2) #22
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rx_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @skb_put(ptr noundef %3, i32 noundef %10) #22
  store ptr null, ptr %4, align 4
  switch i32 %8, label %43 [
    i32 0, label %55
    i32 -32, label %12
    i32 -104, label %36
    i32 -108, label %36
    i32 -71, label %22
    i32 -62, label %22
    i32 -84, label %22
    i32 -75, label %37
  ]

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 36, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 8
  %18 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 1, ptr noundef %18) #22
  %19 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 37
  %20 = load ptr, ptr @system_wq, align 4
  %21 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %20, ptr noundef %19) #22
  br label %36

22:                                               ; preds = %1, %1, %1
  %23 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8
  %28 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 17, i32 0, i32 1
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 17
  %33 = load volatile i32, ptr @jiffies, align 64
  %34 = add i32 %33, 12
  %35 = tail call i32 @mod_timer(ptr noundef %32, i32 noundef %34) #22
  br label %36

36:                                               ; preds = %31, %22, %12, %1, %1
  store ptr %0, ptr %4, align 4
  br label %49

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 36, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %37, %1
  %44 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 19
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 36, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, 1
  store i32 %48, ptr %46, align 8
  br label %49

49:                                               ; preds = %43, %36
  %50 = phi ptr [ %0, %43 ], [ null, %36 ]
  %51 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 8
  %52 = load i8, ptr %51, align 1
  %53 = add i8 %52, 1
  store i8 %53, ptr %51, align 1
  %54 = icmp ugt i8 %53, 30
  br i1 %54, label %63, label %68

55:                                               ; preds = %1
  %56 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 8
  %57 = load i8, ptr %56, align 1
  %58 = add i8 %57, 1
  store i8 %58, ptr %56, align 1
  %59 = icmp ugt i8 %58, 30
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 9
  %62 = load i8, ptr %61, align 2
  br label %72

63:                                               ; preds = %55, %49
  %64 = phi ptr [ %56, %55 ], [ %51, %49 ]
  %65 = phi ptr [ %0, %55 ], [ %50, %49 ]
  %66 = phi i32 [ 4, %55 ], [ 5, %49 ]
  store i8 0, ptr %64, align 1
  %67 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 9
  store i8 0, ptr %67, align 2
  br label %79

68:                                               ; preds = %49
  %69 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 9
  %70 = load i8, ptr %69, align 2
  %71 = add i8 %70, 1
  store i8 %71, ptr %69, align 2
  br label %72

72:                                               ; preds = %68, %60
  %73 = phi i8 [ %71, %68 ], [ %62, %60 ]
  %74 = phi i32 [ 5, %68 ], [ 4, %60 ]
  %75 = phi ptr [ %50, %68 ], [ %0, %60 ]
  %76 = icmp ugt i8 %73, 20
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 38
  tail call void @_set_bit(i32 noundef 10, ptr noundef %78) #22
  br label %79

79:                                               ; preds = %77, %72, %63
  %80 = phi ptr [ %75, %72 ], [ %75, %77 ], [ %65, %63 ]
  %81 = phi i32 [ %74, %72 ], [ %74, %77 ], [ %66, %63 ]
  %82 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 28
  %83 = tail call fastcc i32 @defer_bh(ptr noundef %6, ptr noundef %3, ptr noundef %82, i32 noundef %81)
  %84 = icmp eq ptr %80, null
  br i1 %84, label %105, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 19
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.net_device, ptr %87, i32 0, i32 6
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.usbnet, ptr %6, i32 0, i32 38
  %94 = load volatile i32, ptr %93, align 4
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  %97 = icmp ne i32 %83, 6
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = tail call fastcc i32 @rx_submit(ptr noundef %6, ptr noundef nonnull %80, i32 noundef 2592)
  %101 = load ptr, ptr %6, align 4
  %102 = tail call i64 @ktime_get_mono_fast_ns() #22
  %103 = getelementptr inbounds %struct.usb_device, ptr %101, i32 0, i32 15, i32 11, i32 22
  store volatile i64 %102, ptr %103, align 8
  br label %105

104:                                              ; preds = %92, %85
  tail call void @usb_free_urb(ptr noundef nonnull %80) #22
  br label %105

105:                                              ; preds = %104, %99, %79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @intr_complete(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 27
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.urb, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %11 [
    i32 0, label %6
    i32 -2, label %22
    i32 -108, label %22
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.driver_info, ptr %8, i32 0, i32 8
  %10 = load ptr, ptr %9, align 4
  tail call void %10(ptr noundef %3, ptr noundef %0) #22
  br label %11

11:                                               ; preds = %6, %1
  %12 = tail call i32 @usb_submit_urb(ptr noundef %0, i32 noundef 2592) #22
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 19
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.32, i32 noundef %12) #23
  br label %22

22:                                               ; preds = %19, %14, %11, %1, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #21

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind readonly }
attributes #18 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { nounwind }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { nounwind allocsize(2) }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 523474}
!12 = !{i64 504774, i64 504835}
!13 = !{i64 2149439496}
!14 = !{i64 2149439797}
!15 = !{i64 507791}
!16 = !{i64 2155130109}
!17 = !{i64 2155126696}
!18 = !{i64 2155133492}
!19 = !{!"branch_weights", i32 2000, i32 1}
!20 = !{i64 2153490212, i64 2153490704, i64 2153490249, i64 2153490305, i64 2153490339, i64 2153490363, i64 2153490404, i64 2153490425, i64 2153490453, i64 2153490487}
!21 = !{i64 2153666290, i64 2153666778, i64 2153666327, i64 2153666383, i64 2153666417, i64 2153666441, i64 2153666482, i64 2153666503, i64 2153666531, i64 2153666565}
!22 = !{i64 2148983621}
!23 = !{i64 2148979445}
!24 = !{i64 2148979520, i64 2148979547, i64 2148979594, i64 2148979616, i64 2148979644, i64 2148979664}
!25 = !{i64 505019}
!26 = !{i64 2149007765}
!27 = !{i64 2155189704}
!28 = !{i64 2149006624}
