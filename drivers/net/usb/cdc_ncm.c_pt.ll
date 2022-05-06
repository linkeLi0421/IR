; ModuleID = '/llk/IR/drivers/net/usb/cdc_ncm.c_pt.bc'
source_filename = "../drivers/net/usb/cdc_ncm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_change_mtu\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_change_mtu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_bind_common:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_bind_common\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_bind_common:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_select_altsetting:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_select_altsetting\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_select_altsetting:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_fill_tx_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_fill_tx_frame\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_fill_tx_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_tx_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_tx_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_tx_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_rx_verify_nth16:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_rx_verify_nth16\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_rx_verify_nth16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_rx_verify_nth32:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_rx_verify_nth32\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_rx_verify_nth32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_rx_verify_ndp16:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_rx_verify_ndp16\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_rx_verify_ndp16:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_rx_verify_ndp32:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_rx_verify_ndp32\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_rx_verify_ndp32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cdc_ncm_rx_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22cdc_ncm_rx_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_cdc_ncm_rx_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.90 }
%union.anon.90 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdc_ncm_stats = type { [32 x i8], i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.112 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.115, i32 }
%union.anon.115 = type { ptr }
%struct.cdc_ncm_ctx = type { %struct.usb_cdc_ncm_ntb_parameters, %struct.hrtimer, %struct.tasklet_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.atomic_t, i32, i32, i32, i8, %union.anon.116, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.usb_cdc_ncm_ntb_parameters = type { i16, i16, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16 }
%union.anon.116 = type { ptr }
%struct.usb_cdc_mbim_desc = type <{ i8, i8, i8, i16, i16, i8, i8, i16, i8 }>
%struct.usb_cdc_ncm_desc = type <{ i8, i8, i8, i16, i8 }>
%struct.usb_cdc_mbim_extended_desc = type <{ i8, i8, i8, i16, i8, i16 }>
%struct.usb_cdc_parsed_header = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_ether_desc = type <{ i8, i8, i8, i8, i32, i16, i16, i8 }>
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.usb_cdc_ncm_nth16 = type { i32, i16, i16, i16, i16 }
%struct.usb_cdc_ncm_nth32 = type { i32, i16, i16, i32, i32 }
%struct.usb_cdc_ncm_ndp16 = type { i32, i16, i16, [0 x %struct.usb_cdc_ncm_dpe16] }
%struct.usb_cdc_ncm_dpe16 = type { i16, i16 }
%struct.usb_cdc_ncm_ndp32 = type { i32, i16, i16, i32, i32, [0 x %struct.usb_cdc_ncm_dpe32] }
%struct.usb_cdc_ncm_dpe32 = type { i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_cdc_speed_change = type { i32, i32 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }

@__param_str_prefer_mbim = internal constant [20 x i8] c"cdc_ncm.prefer_mbim\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@prefer_mbim = internal global i8 0, align 1
@__param_prefer_mbim = internal constant %struct.kernel_param { ptr @__param_str_prefer_mbim, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.90 { ptr @prefer_mbim } }, section "__param", align 4
@__UNIQUE_ID_prefer_mbimtype325 = internal constant [34 x i8] c"cdc_ncm.parmtype=prefer_mbim:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_prefer_mbim326 = internal constant [72 x i8] c"cdc_ncm.parm=prefer_mbim:Prefer MBIM setting on dual NCM/MBIM functions\00", section ".modinfo", align 1
@__kstrtab_cdc_ncm_change_mtu = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_change_mtu = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_change_mtu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_change_mtu to i32), ptr @__kstrtab_cdc_ncm_change_mtu, ptr @__kstrtabns_cdc_ncm_change_mtu }, section "___ksymtab_gpl+cdc_ncm_change_mtu", align 4
@.str = private unnamed_addr constant [36 x i8] c"CDC Union missing and no IAD found\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"MBIM functional descriptor missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"NCM or ECM functional descriptors missing\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to claim data intf\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to get mac address\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"MAC-Address: %pM\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"NDP will be placed at end of frame for this device.\00", align 1
@cdc_ncm_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @usbnet_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @usbnet_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdc_ncm_get_strings, ptr null, ptr @cdc_ncm_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @cdc_ncm_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_internal, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@cdc_ncm_sysfs_attr_group = internal constant %struct.attribute_group { ptr @.str.16, ptr null, ptr null, ptr @cdc_ncm_sysfs_attrs, ptr null }, align 4
@cdc_ncm_netdev_ops = internal constant %struct.net_device_ops { ptr null, ptr null, ptr @usbnet_open, ptr @usbnet_stop, ptr @usbnet_start_xmit, ptr null, ptr null, ptr null, ptr @usbnet_set_rx_mode, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdc_ncm_change_mtu, ptr null, ptr @usbnet_tx_timeout, ptr @dev_get_tstats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"bind() failure\0A\00", align 1
@__kstrtab_cdc_ncm_bind_common = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_bind_common = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_bind_common = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_bind_common to i32), ptr @__kstrtab_cdc_ncm_bind_common, ptr @__kstrtabns_cdc_ncm_bind_common }, section "___ksymtab_gpl+cdc_ncm_bind_common", align 4
@__kstrtab_cdc_ncm_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_unbind to i32), ptr @__kstrtab_cdc_ncm_unbind, ptr @__kstrtabns_cdc_ncm_unbind }, section "___ksymtab_gpl+cdc_ncm_unbind", align 4
@__kstrtab_cdc_ncm_select_altsetting = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_select_altsetting = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_select_altsetting = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_select_altsetting to i32), ptr @__kstrtab_cdc_ncm_select_altsetting, ptr @__kstrtabns_cdc_ncm_select_altsetting }, section "___ksymtab_gpl+cdc_ncm_select_altsetting", align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"drivers/net/usb/cdc_ncm.c\00", align 1
@__kstrtab_cdc_ncm_fill_tx_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_fill_tx_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_fill_tx_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_fill_tx_frame to i32), ptr @__kstrtab_cdc_ncm_fill_tx_frame, ptr @__kstrtabns_cdc_ncm_fill_tx_frame }, section "___ksymtab_gpl+cdc_ncm_fill_tx_frame", align 4
@__kstrtab_cdc_ncm_tx_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_tx_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_tx_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_tx_fixup to i32), ptr @__kstrtab_cdc_ncm_tx_fixup, ptr @__kstrtabns_cdc_ncm_tx_fixup }, section "___ksymtab_gpl+cdc_ncm_tx_fixup", align 4
@__kstrtab_cdc_ncm_rx_verify_nth16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_rx_verify_nth16 = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_rx_verify_nth16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_rx_verify_nth16 to i32), ptr @__kstrtab_cdc_ncm_rx_verify_nth16, ptr @__kstrtabns_cdc_ncm_rx_verify_nth16 }, section "___ksymtab_gpl+cdc_ncm_rx_verify_nth16", align 4
@__kstrtab_cdc_ncm_rx_verify_nth32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_rx_verify_nth32 = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_rx_verify_nth32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_rx_verify_nth32 to i32), ptr @__kstrtab_cdc_ncm_rx_verify_nth32, ptr @__kstrtabns_cdc_ncm_rx_verify_nth32 }, section "___ksymtab_gpl+cdc_ncm_rx_verify_nth32", align 4
@__kstrtab_cdc_ncm_rx_verify_ndp16 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_rx_verify_ndp16 = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_rx_verify_ndp16 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_rx_verify_ndp16 to i32), ptr @__kstrtab_cdc_ncm_rx_verify_ndp16, ptr @__kstrtabns_cdc_ncm_rx_verify_ndp16 }, section "___ksymtab_gpl+cdc_ncm_rx_verify_ndp16", align 4
@__kstrtab_cdc_ncm_rx_verify_ndp32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_rx_verify_ndp32 = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_rx_verify_ndp32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_rx_verify_ndp32 to i32), ptr @__kstrtab_cdc_ncm_rx_verify_ndp32, ptr @__kstrtabns_cdc_ncm_rx_verify_ndp32 }, section "___ksymtab_gpl+cdc_ncm_rx_verify_ndp32", align 4
@__kstrtab_cdc_ncm_rx_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_cdc_ncm_rx_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_cdc_ncm_rx_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cdc_ncm_rx_fixup to i32), ptr @__kstrtab_cdc_ncm_rx_fixup, ptr @__kstrtabns_cdc_ncm_rx_fixup }, section "___ksymtab_gpl+cdc_ncm_rx_fixup", align 4
@__initcall__kmod_cdc_ncm__361_2035_cdc_ncm_driver_init6 = internal global ptr @cdc_ncm_driver_init, section ".initcall6.init", align 4
@cdc_ncm_driver = internal global %struct.usb_driver { ptr @.str.16, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr @usbnet_resume, ptr null, ptr null, ptr @cdc_devs, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 6 }, align 4
@__exitcall_cdc_ncm_driver_exit = internal global ptr @cdc_ncm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author362 = internal constant [35 x i8] c"cdc_ncm.author=Hans Petter Selasky\00", section ".modinfo", align 1
@__UNIQUE_ID_description363 = internal constant [44 x i8] c"cdc_ncm.description=USB CDC NCM host driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file364 = internal constant [37 x i8] c"cdc_ncm.file=drivers/net/usb/cdc_ncm\00", section ".modinfo", align 1
@__UNIQUE_ID_license365 = internal constant [29 x i8] c"cdc_ncm.license=Dual BSD/GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"failed GET_NTB_PARAMETERS\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"SET_CRC_MODE failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"SET_NTB_FORMAT failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"setting rx_max = %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"setting tx_max = %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"dwNtbInMaxSize=%u is too small. Using %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"include/linux/usb.h\00", align 1
@cdc_ncm_gstrings_stats = internal unnamed_addr constant [8 x %struct.cdc_ncm_stats] [%struct.cdc_ncm_stats { [32 x i8] c"tx_reason_ntb_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 224 }, %struct.cdc_ncm_stats { [32 x i8] c"tx_reason_ndp_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 228 }, %struct.cdc_ncm_stats { [32 x i8] c"tx_reason_timeout\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 232 }, %struct.cdc_ncm_stats { [32 x i8] c"tx_reason_max_datagram\00\00\00\00\00\00\00\00\00\00", i32 4, i32 236 }, %struct.cdc_ncm_stats { [32 x i8] c"tx_overhead\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 240 }, %struct.cdc_ncm_stats { [32 x i8] c"tx_ntbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 248 }, %struct.cdc_ncm_stats { [32 x i8] c"rx_overhead\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 256 }, %struct.cdc_ncm_stats { [32 x i8] c"rx_ntbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 264 }], align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"cdc_ncm\00", align 1
@cdc_ncm_sysfs_attrs = internal global [16 x ptr] [ptr @dev_attr_min_tx_pkt, ptr @dev_attr_ndp_to_end, ptr @dev_attr_rx_max, ptr @dev_attr_tx_max, ptr @dev_attr_tx_timer_usecs, ptr @dev_attr_bmNtbFormatsSupported, ptr @dev_attr_dwNtbInMaxSize, ptr @dev_attr_wNdpInDivisor, ptr @dev_attr_wNdpInPayloadRemainder, ptr @dev_attr_wNdpInAlignment, ptr @dev_attr_dwNtbOutMaxSize, ptr @dev_attr_wNdpOutDivisor, ptr @dev_attr_wNdpOutPayloadRemainder, ptr @dev_attr_wNdpOutAlignment, ptr @dev_attr_wNtbOutMaxDatagrams, ptr null], align 4
@dev_attr_min_tx_pkt = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @min_tx_pkt_show, ptr @min_tx_pkt_store }, align 4
@dev_attr_ndp_to_end = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @ndp_to_end_show, ptr @ndp_to_end_store }, align 4
@dev_attr_rx_max = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @rx_max_show, ptr @rx_max_store }, align 4
@dev_attr_tx_max = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420 }, ptr @tx_max_show, ptr @tx_max_store }, align 4
@dev_attr_tx_timer_usecs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420 }, ptr @tx_timer_usecs_show, ptr @tx_timer_usecs_store }, align 4
@dev_attr_bmNtbFormatsSupported = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @cdc_ncm_show_bmNtbFormatsSupported, ptr null }, align 4
@dev_attr_dwNtbInMaxSize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @cdc_ncm_show_dwNtbInMaxSize, ptr null }, align 4
@dev_attr_wNdpInDivisor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @cdc_ncm_show_wNdpInDivisor, ptr null }, align 4
@dev_attr_wNdpInPayloadRemainder = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @cdc_ncm_show_wNdpInPayloadRemainder, ptr null }, align 4
@dev_attr_wNdpInAlignment = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @cdc_ncm_show_wNdpInAlignment, ptr null }, align 4
@dev_attr_dwNtbOutMaxSize = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292 }, ptr @cdc_ncm_show_dwNtbOutMaxSize, ptr null }, align 4
@dev_attr_wNdpOutDivisor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @cdc_ncm_show_wNdpOutDivisor, ptr null }, align 4
@dev_attr_wNdpOutPayloadRemainder = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292 }, ptr @cdc_ncm_show_wNdpOutPayloadRemainder, ptr null }, align 4
@dev_attr_wNdpOutAlignment = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292 }, ptr @cdc_ncm_show_wNdpOutAlignment, ptr null }, align 4
@dev_attr_wNtbOutMaxDatagrams = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292 }, ptr @cdc_ncm_show_wNtbOutMaxDatagrams, ptr null }, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"min_tx_pkt\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"ndp_to_end\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"rx_max\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"tx_max\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"tx_timer_usecs\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"bmNtbFormatsSupported\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"dwNtbInMaxSize\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"wNdpInDivisor\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"wNdpInPayloadRemainder\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"wNdpInAlignment\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"dwNtbOutMaxSize\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"wNdpOutDivisor\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"wNdpOutPayloadRemainder\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"wNdpOutAlignment\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"wNtbOutMaxDatagrams\00", align 1
@cdc_devs = internal constant [11 x %struct.usb_device_id] [%struct.usb_device_id { i16 897, i16 3035, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 7111, i16 54, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @wwan_noarp_info to i32) }, %struct.usb_device_id { i16 899, i16 16700, i16 -32325, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @wwan_noarp_info to i32) }, %struct.usb_device_id { i16 899, i16 16700, i16 -32324, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @wwan_noarp_info to i32) }, %struct.usb_device_id { i16 897, i16 16700, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 2352, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 5401, i16 1091, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @wwan_noarp_info to i32) }, %struct.usb_device_id { i16 899, i16 5446, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 13, i8 0, i8 0, i32 ptrtoint (ptr @cdc_ncm_info to i32) }, %struct.usb_device_id zeroinitializer], align 4
@wwan_info = internal constant %struct.driver_info { ptr @.str.35, i32 15376, ptr @cdc_ncm_bind, ptr @cdc_ncm_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @cdc_ncm_status, ptr null, ptr @cdc_ncm_rx_fixup, ptr @cdc_ncm_tx_fixup, ptr null, ptr null, ptr null, ptr @usbnet_cdc_update_filter, i32 0, i32 0, i32 0 }, align 4
@wwan_noarp_info = internal constant %struct.driver_info { ptr @.str.36, i32 48144, ptr @cdc_ncm_bind, ptr @cdc_ncm_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @cdc_ncm_status, ptr null, ptr @cdc_ncm_rx_fixup, ptr @cdc_ncm_tx_fixup, ptr null, ptr null, ptr null, ptr @usbnet_cdc_update_filter, i32 0, i32 0, i32 0 }, align 4
@cdc_ncm_info = internal constant %struct.driver_info { ptr @.str.37, i32 14384, ptr @cdc_ncm_bind, ptr @cdc_ncm_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @cdc_ncm_status, ptr null, ptr @cdc_ncm_rx_fixup, ptr @cdc_ncm_tx_fixup, ptr null, ptr null, ptr null, ptr @usbnet_cdc_update_filter, i32 0, i32 0, i32 0 }, align 4
@.str.35 = private unnamed_addr constant [32 x i8] c"Mobile Broadband Network Device\00", align 1
@.str.36 = private unnamed_addr constant [41 x i8] c"Mobile Broadband Network Device (NO ARP)\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"CDC NCM\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author362, ptr @__UNIQUE_ID_description363, ptr @__UNIQUE_ID_file364, ptr @__UNIQUE_ID_license365, ptr @__UNIQUE_ID_prefer_mbim326, ptr @__UNIQUE_ID_prefer_mbimtype325, ptr @__exitcall_cdc_ncm_driver_exit, ptr @__initcall__kmod_cdc_ncm__361_2035_cdc_ncm_driver_init6, ptr @__ksymtab_cdc_ncm_bind_common, ptr @__ksymtab_cdc_ncm_change_mtu, ptr @__ksymtab_cdc_ncm_fill_tx_frame, ptr @__ksymtab_cdc_ncm_rx_fixup, ptr @__ksymtab_cdc_ncm_rx_verify_ndp16, ptr @__ksymtab_cdc_ncm_rx_verify_ndp32, ptr @__ksymtab_cdc_ncm_rx_verify_nth16, ptr @__ksymtab_cdc_ncm_rx_verify_nth32, ptr @__ksymtab_cdc_ncm_select_altsetting, ptr @__ksymtab_cdc_ncm_tx_fixup, ptr @__ksymtab_cdc_ncm_unbind, ptr @__param_prefer_mbim, ptr @cdc_ncm_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdc_ncm_change_mtu(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 20
  store i32 %1, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 1412
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 6
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 14
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 7
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %2
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi i32 [ 14, %15 ], [ 0, %11 ]
  %18 = getelementptr i8, ptr %0, i32 1408
  %19 = add i32 %17, %1
  tail call fastcc void @cdc_ncm_set_dgram_size(ptr noundef %18, i32 noundef %19)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cdc_ncm_set_dgram_size(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_interface, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 2
  %12 = load i8, ptr %11, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #19
  store i16 0, ptr %3, align 2, !annotation !8
  %13 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_interface, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %16, i32 0, i32 6
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 14
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %16, i32 0, i32 7
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %2
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ 1514, %24 ], [ 2048, %20 ]
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 %1)
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 8192)
  %29 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 27
  store i32 %28, ptr %29, align 8
  %30 = load i32, ptr %4, align 4
  %31 = inttoptr i32 %30 to ptr
  %32 = load ptr, ptr %13, align 4
  %33 = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %34, i32 0, i32 6
  %36 = load i8, ptr %35, align 2
  %37 = icmp eq i8 %36, 14
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %34, i32 0, i32 7
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %31, i32 0, i32 5
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.usb_cdc_mbim_desc, ptr %44, i32 0, i32 8
  br label %54

48:                                               ; preds = %42, %38, %25
  %49 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %31, i32 0, i32 4
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.usb_cdc_ncm_desc, ptr %50, i32 0, i32 4
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi ptr [ %53, %52 ], [ %47, %46 ]
  %56 = load i8, ptr %55, align 1
  %57 = and i8 %56, 8
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = zext i8 %12 to i16
  %61 = call i32 @usbnet_read_cmd(ptr noundef %0, i8 noundef zeroext -121, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %60, ptr noundef nonnull %3, i16 noundef zeroext 2) #19
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i16, ptr %3, align 2
  %65 = zext i16 %64 to i32
  %66 = load i32, ptr %29, align 8
  %67 = icmp eq i32 %66, %65
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = trunc i32 %66 to i16
  store i16 %69, ptr %3, align 2
  %70 = call i32 @usbnet_write_cmd(ptr noundef %0, i8 noundef zeroext -120, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %60, ptr noundef nonnull %3, i16 noundef zeroext 2) #19
  br label %71

71:                                               ; preds = %68, %63, %59, %54, %48
  %72 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 20
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %29, align 8
  %77 = load ptr, ptr %13, align 4
  %78 = getelementptr inbounds %struct.usb_interface, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %79, i32 0, i32 6
  %81 = load i8, ptr %80, align 2
  %82 = icmp eq i8 %81, 14
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %79, i32 0, i32 7
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83, %71
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ -14, %87 ], [ 0, %83 ]
  %90 = add i32 %89, %76
  %91 = call i32 @llvm.smin.i32(i32 %75, i32 %90)
  store i32 %91, ptr %74, align 4
  %92 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %106, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.usb_cdc_mbim_extended_desc, ptr %93, i32 0, i32 5
  %97 = load i16, ptr %96, align 1
  %98 = zext i16 %97 to i32
  %99 = icmp eq i16 %97, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %72, align 4
  %102 = getelementptr inbounds %struct.net_device, ptr %101, i32 0, i32 20
  %103 = load i32, ptr %102, align 4
  %104 = icmp ugt i32 %103, %98
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  store i32 %98, ptr %102, align 4
  br label %106

106:                                              ; preds = %105, %100, %95, %88
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #19
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdc_ncm_bind_common(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca %struct.usb_cdc_parsed_header, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %5, i8 0, i32 60, i1 false), !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 272) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %446, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 3
  store ptr %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 1
  tail call void @hrtimer_init(ptr noundef %11, i32 noundef 1, i32 noundef 1) #19
  %12 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 1, i32 2
  store ptr @cdc_ncm_tx_timer_cb, ptr %12, align 8
  %13 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 2
  tail call void @tasklet_setup(ptr noundef %13, ptr noundef nonnull @cdc_ncm_txpath_bh) #19
  %14 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 14
  store volatile i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 13
  store i32 0, ptr %15, align 8
  %16 = ptrtoint ptr %7 to i32
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 8
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i32 -56
  %22 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_host_interface, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.usb_host_interface, ptr %23, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = call i32 @cdc_parse_cdc_header(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %25, i32 noundef %27) #19
  %29 = load ptr, ptr %5, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %9
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %29, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = call ptr @usb_ifnum_to_if(ptr noundef %32, i32 noundef %35) #19
  %37 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 9
  store ptr %36, ptr %37, align 8
  %38 = load ptr, ptr %5, align 4
  br label %39

39:                                               ; preds = %31, %9
  %40 = phi ptr [ %38, %31 ], [ null, %9 ]
  %41 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %5, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 7
  store ptr %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %5, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 4
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %5, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 5
  store ptr %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %5, i32 0, i32 13
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 6
  store ptr %51, ptr %52, align 4
  %53 = icmp eq ptr %40, null
  br i1 %53, label %54, label %71

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %71, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %56, i32 0, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 2
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 4
  %64 = load ptr, ptr %22, align 4
  %65 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %64, i32 0, i32 2
  %66 = load i8, ptr %65, align 2
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %67, 1
  %69 = call ptr @usb_ifnum_to_if(ptr noundef %63, i32 noundef %68) #19
  %70 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 9
  store ptr %69, ptr %70, align 8
  br label %71

71:                                               ; preds = %62, %58, %54, %39
  %72 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 9
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str) #21
  br label %427

77:                                               ; preds = %71
  %78 = load ptr, ptr %22, align 4
  %79 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %78, i32 0, i32 6
  %80 = load i8, ptr %79, align 2
  %81 = icmp eq i8 %80, 14
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %78, i32 0, i32 7
  %84 = load i8, ptr %83, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load ptr, ptr %49, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.1) #21
  br label %427

91:                                               ; preds = %82, %77
  %92 = load ptr, ptr %43, align 8
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load ptr, ptr %46, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %94, %91
  %98 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.2) #21
  br label %427

99:                                               ; preds = %94, %86
  %100 = load ptr, ptr %18, align 4
  %101 = icmp eq ptr %73, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = call i32 @usb_driver_claim_interface(ptr noundef %21, ptr noundef nonnull %73, ptr noundef %0) #19
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load ptr, ptr %72, align 8
  br label %109

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.3) #21
  br label %427

109:                                              ; preds = %105, %99
  %110 = phi ptr [ %106, %105 ], [ %73, %99 ]
  %111 = getelementptr inbounds %struct.usb_interface, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %112, i32 0, i32 2
  %114 = load i8, ptr %113, align 2
  %115 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 15
  store i32 %3, ptr %115, align 8
  %116 = and i32 %3, 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %109
  %119 = zext i8 %114 to i32
  br label %125

120:                                              ; preds = %109
  %121 = load ptr, ptr %0, align 4
  %122 = zext i8 %114 to i32
  %123 = zext i8 %2 to i32
  %124 = call i32 @usb_set_interface(ptr noundef %121, i32 noundef %122, i32 noundef %123) #19
  br label %125

125:                                              ; preds = %120, %118
  %126 = phi i32 [ %119, %118 ], [ %122, %120 ]
  %127 = load ptr, ptr %0, align 4
  %128 = call i32 @usb_set_interface(ptr noundef %127, i32 noundef %126, i32 noundef 0) #19
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %418

130:                                              ; preds = %125
  %131 = load i32, ptr %17, align 4
  %132 = inttoptr i32 %131 to ptr
  %133 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 8
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.usb_interface, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %136, i32 0, i32 2
  %138 = load i8, ptr %137, align 2
  %139 = zext i8 %138 to i16
  %140 = call i32 @usbnet_read_cmd(ptr noundef %0, i8 noundef zeroext -128, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext %139, ptr noundef %132, i16 noundef zeroext 28) #19
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %198, label %142

142:                                              ; preds = %130
  %143 = load i32, ptr %17, align 4
  %144 = inttoptr i32 %143 to ptr
  %145 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr inbounds %struct.usb_interface, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %148, i32 0, i32 6
  %150 = load i8, ptr %149, align 2
  %151 = icmp eq i8 %150, 14
  br i1 %151, label %152, label %162

152:                                              ; preds = %142
  %153 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %148, i32 0, i32 7
  %154 = load i8, ptr %153, align 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %144, i32 0, i32 5
  %158 = load ptr, ptr %157, align 8
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.usb_cdc_mbim_desc, ptr %158, i32 0, i32 8
  br label %168

162:                                              ; preds = %156, %152, %142
  %163 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %144, i32 0, i32 4
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %179, label %166

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.usb_cdc_ncm_desc, ptr %164, i32 0, i32 4
  br label %168

168:                                              ; preds = %166, %160
  %169 = phi ptr [ %167, %166 ], [ %161, %160 ]
  %170 = load i8, ptr %169, align 1
  %171 = and i8 %170, 16
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = call i32 @usbnet_write_cmd(ptr noundef %0, i8 noundef zeroext -118, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %139, ptr noundef null, i16 noundef zeroext 0) #19
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load ptr, ptr %145, align 4
  %178 = getelementptr inbounds %struct.usb_interface, ptr %177, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.10) #21
  br label %179

179:                                              ; preds = %176, %173, %168, %162
  %180 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 18
  store i8 1, ptr %180, align 4
  %181 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %132, i32 0, i32 1
  %182 = load i16, ptr %181, align 2
  %183 = and i16 %182, 2
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %202, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 15
  %187 = load i32, ptr %186, align 8
  %188 = and i32 %187, 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  store i8 0, ptr %180, align 4
  br label %191

191:                                              ; preds = %190, %185
  %192 = phi i16 [ 1, %190 ], [ 0, %185 ]
  %193 = call i32 @usbnet_write_cmd(ptr noundef %0, i8 noundef zeroext -124, i8 noundef zeroext 33, i16 noundef zeroext %192, i16 noundef zeroext %139, ptr noundef null, i16 noundef zeroext 0) #19
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %191
  store i8 1, ptr %180, align 4
  %196 = load ptr, ptr %145, align 4
  %197 = getelementptr inbounds %struct.usb_interface, ptr %196, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.11) #21
  br label %202

198:                                              ; preds = %130
  %199 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.usb_interface, ptr %200, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.9) #21
  br label %418

202:                                              ; preds = %195, %191, %179
  %203 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %132, i32 0, i32 2
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 22
  store i32 %204, ptr %205, align 4
  %206 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %132, i32 0, i32 7
  %207 = load i32, ptr %206, align 8
  %208 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 23
  store i32 %207, ptr %208, align 8
  %209 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %132, i32 0, i32 9
  %210 = load i16, ptr %209, align 2
  %211 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 29
  store i16 %210, ptr %211, align 2
  %212 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %132, i32 0, i32 8
  %213 = load i16, ptr %212, align 4
  %214 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 30
  store i16 %213, ptr %214, align 8
  %215 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %132, i32 0, i32 10
  %216 = load i16, ptr %215, align 8
  %217 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 31
  store i16 %216, ptr %217, align 2
  %218 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %132, i32 0, i32 11
  %219 = load i16, ptr %218, align 2
  %220 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 28
  %221 = add i16 %219, -41
  %222 = icmp ult i16 %221, -40
  %223 = select i1 %222, i16 40, i16 %219
  store i16 %223, ptr %220, align 4
  %224 = load i8, ptr %180, align 4
  %225 = icmp eq i8 %224, 0
  %226 = zext i16 %223 to i32
  %227 = select i1 %225, i32 3, i32 2
  %228 = select i1 %225, i32 24, i32 12
  %229 = shl nuw nsw i32 %226, %227
  %230 = add nuw nsw i32 %229, %228
  %231 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 17
  store i32 %230, ptr %231, align 8
  %232 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %132, i32 0, i32 16
  store i32 400000, ptr %232, align 4
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #19
  %233 = load ptr, ptr %0, align 4
  %234 = zext i8 %2 to i32
  %235 = call i32 @usb_set_interface(ptr noundef %233, i32 noundef %126, i32 noundef %234) #19
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %418

237:                                              ; preds = %202
  %238 = load ptr, ptr %72, align 8
  call fastcc void @cdc_ncm_find_endpoints(ptr noundef %0, ptr noundef %238)
  %239 = load ptr, ptr %18, align 4
  call fastcc void @cdc_ncm_find_endpoints(ptr noundef %0, ptr noundef %239)
  %240 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 13
  %241 = load i32, ptr %240, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %418, label %243

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 14
  %245 = load i32, ptr %244, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %418, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 15
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %418, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr %18, align 4
  %253 = getelementptr inbounds %struct.usb_interface, ptr %252, i32 0, i32 7, i32 8
  store ptr %0, ptr %253, align 8
  %254 = load ptr, ptr %43, align 8
  %255 = icmp eq ptr %254, null
  br i1 %255, label %269, label %256

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.usb_cdc_ether_desc, ptr %254, i32 0, i32 3
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i32
  %260 = call i32 @usbnet_get_ethernet_addr(ptr noundef %0, i32 noundef %259) #19
  %261 = icmp eq i32 %260, 0
  %262 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  br i1 %261, label %264, label %263

263:                                              ; preds = %256
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %262, ptr noundef nonnull @.str.4) #21
  br label %418

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.net_device, ptr %266, i32 0, i32 72
  %268 = load ptr, ptr %267, align 32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %262, ptr noundef nonnull @.str.5, ptr noundef %268) #21
  br label %269

269:                                              ; preds = %264, %251
  %270 = load i32, ptr %17, align 4
  %271 = inttoptr i32 %270 to ptr
  %272 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %271, i32 0, i32 2
  %273 = load i32, ptr %272, align 4
  %274 = call i32 @llvm.umin.i32(i32 %273, i32 16384) #19
  %275 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %271, i32 0, i32 7
  %276 = load i32, ptr %275, align 8
  %277 = call i32 @llvm.umin.i32(i32 %276, i32 16384) #19
  call fastcc void @cdc_ncm_update_rxtx_max(ptr noundef %0, i32 noundef %274, i32 noundef %277) #19
  %278 = load i32, ptr %17, align 4
  %279 = inttoptr i32 %278 to ptr
  %280 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %279, i32 0, i32 31
  %281 = load i16, ptr %280, align 2
  %282 = zext i16 %281 to i32
  %283 = icmp ugt i16 %281, 3
  %284 = call i32 @llvm.ctpop.i32(i32 %282) #19, !range !9
  %285 = icmp ult i32 %284, 2
  %286 = select i1 %283, i1 %285, i1 false
  br i1 %286, label %287, label %291

287:                                              ; preds = %269
  %288 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %279, i32 0, i32 23
  %289 = load i32, ptr %288, align 8
  %290 = icmp ugt i32 %289, %282
  br i1 %290, label %292, label %291

291:                                              ; preds = %287, %269
  store i16 4, ptr %280, align 2
  br label %292

292:                                              ; preds = %291, %287
  %293 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %279, i32 0, i32 30
  %294 = load i16, ptr %293, align 8
  %295 = zext i16 %294 to i32
  %296 = icmp ugt i16 %294, 3
  %297 = call i32 @llvm.ctpop.i32(i32 %295) #19, !range !9
  %298 = icmp ult i32 %297, 2
  %299 = select i1 %296, i1 %298, i1 false
  br i1 %299, label %300, label %304

300:                                              ; preds = %292
  %301 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %279, i32 0, i32 23
  %302 = load i32, ptr %301, align 8
  %303 = icmp ugt i32 %302, %295
  br i1 %303, label %305, label %304

304:                                              ; preds = %300, %292
  store i16 4, ptr %293, align 8
  br label %305

305:                                              ; preds = %304, %300
  %306 = phi i16 [ 4, %304 ], [ %294, %300 ]
  %307 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %279, i32 0, i32 29
  %308 = load i16, ptr %307, align 2
  %309 = icmp ult i16 %308, %306
  br i1 %309, label %311, label %310

310:                                              ; preds = %305
  store i16 0, ptr %307, align 2
  br label %311

311:                                              ; preds = %310, %305
  %312 = phi i16 [ 0, %310 ], [ %308, %305 ]
  %313 = load ptr, ptr %145, align 4
  %314 = getelementptr inbounds %struct.usb_interface, ptr %313, i32 0, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %315, i32 0, i32 6
  %317 = load i8, ptr %316, align 2
  %318 = icmp eq i8 %317, 14
  br i1 %318, label %319, label %323

319:                                              ; preds = %311
  %320 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %315, i32 0, i32 7
  %321 = load i8, ptr %320, align 1
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %319, %311
  br label %324

324:                                              ; preds = %323, %319
  %325 = phi i16 [ -14, %323 ], [ 0, %319 ]
  %326 = add i16 %325, %312
  %327 = add i16 %306, -1
  %328 = and i16 %326, %327
  store i16 %328, ptr %307, align 2
  %329 = load i32, ptr %17, align 4
  %330 = inttoptr i32 %329 to ptr
  %331 = load ptr, ptr %145, align 4
  %332 = getelementptr inbounds %struct.usb_interface, ptr %331, i32 0, i32 1
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %333, i32 0, i32 6
  %335 = load i8, ptr %334, align 2
  %336 = icmp eq i8 %335, 14
  br i1 %336, label %337, label %347

337:                                              ; preds = %324
  %338 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %333, i32 0, i32 7
  %339 = load i8, ptr %338, align 1
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %337
  %342 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %330, i32 0, i32 5
  %343 = load ptr, ptr %342, align 8
  %344 = icmp eq ptr %343, null
  br i1 %344, label %347, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.usb_cdc_mbim_desc, ptr %343, i32 0, i32 7
  br label %353

347:                                              ; preds = %341, %337, %324
  %348 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %330, i32 0, i32 7
  %349 = load ptr, ptr %348, align 8
  %350 = icmp eq ptr %349, null
  br i1 %350, label %357, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.usb_cdc_ether_desc, ptr %349, i32 0, i32 5
  br label %353

353:                                              ; preds = %351, %345
  %354 = phi ptr [ %352, %351 ], [ %346, %345 ]
  %355 = load i16, ptr %354, align 1
  %356 = zext i16 %355 to i32
  br label %357

357:                                              ; preds = %353, %347
  %358 = phi i32 [ 8192, %347 ], [ %356, %353 ]
  call fastcc void @cdc_ncm_set_dgram_size(ptr noundef %0, i32 noundef %358) #19
  %359 = load i32, ptr %115, align 8
  %360 = and i32 %359, 2
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %370, label %362

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 17
  %364 = load i32, ptr %363, align 8
  %365 = call noalias align 64 ptr @__kmalloc(i32 noundef %364, i32 noundef 3520) #22
  %366 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 19
  store ptr %365, ptr %366, align 8
  %367 = icmp eq ptr %365, null
  br i1 %367, label %418, label %368

368:                                              ; preds = %362
  %369 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %369, ptr noundef nonnull @.str.6) #21
  br label %370

370:                                              ; preds = %368, %357
  %371 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %372 = load ptr, ptr %371, align 4
  %373 = getelementptr inbounds %struct.net_device, ptr %372, i32 0, i32 42
  store ptr @cdc_ncm_ethtool_ops, ptr %373, align 8
  %374 = load ptr, ptr %371, align 4
  %375 = getelementptr inbounds %struct.net_device, ptr %374, i32 0, i32 112
  store ptr @cdc_ncm_sysfs_attr_group, ptr %375, align 8
  %376 = load ptr, ptr %371, align 4
  %377 = getelementptr inbounds %struct.net_device, ptr %376, i32 0, i32 16
  store ptr @cdc_ncm_netdev_ops, ptr %377, align 8
  %378 = load i32, ptr %17, align 4
  %379 = inttoptr i32 %378 to ptr
  %380 = load ptr, ptr %145, align 4
  %381 = getelementptr inbounds %struct.usb_interface, ptr %380, i32 0, i32 1
  %382 = load ptr, ptr %381, align 4
  %383 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %382, i32 0, i32 6
  %384 = load i8, ptr %383, align 2
  %385 = icmp eq i8 %384, 14
  br i1 %385, label %386, label %396

386:                                              ; preds = %370
  %387 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %382, i32 0, i32 7
  %388 = load i8, ptr %387, align 1
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %379, i32 0, i32 5
  %392 = load ptr, ptr %391, align 8
  %393 = icmp eq ptr %392, null
  br i1 %393, label %396, label %394

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.usb_cdc_mbim_desc, ptr %392, i32 0, i32 7
  br label %402

396:                                              ; preds = %390, %386, %370
  %397 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %379, i32 0, i32 7
  %398 = load ptr, ptr %397, align 8
  %399 = icmp eq ptr %398, null
  br i1 %399, label %406, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.usb_cdc_ether_desc, ptr %398, i32 0, i32 5
  br label %402

402:                                              ; preds = %400, %394
  %403 = phi ptr [ %401, %400 ], [ %395, %394 ]
  %404 = load i16, ptr %403, align 1
  %405 = zext i16 %404 to i32
  br label %406

406:                                              ; preds = %402, %396
  %407 = phi i32 [ 8192, %396 ], [ %405, %402 ]
  br i1 %385, label %408, label %412

408:                                              ; preds = %406
  %409 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %382, i32 0, i32 7
  %410 = load i8, ptr %409, align 1
  %411 = icmp eq i8 %410, 0
  br i1 %411, label %413, label %412

412:                                              ; preds = %408, %406
  br label %413

413:                                              ; preds = %412, %408
  %414 = phi i32 [ -14, %412 ], [ 0, %408 ]
  %415 = add nsw i32 %414, %407
  %416 = load ptr, ptr %371, align 4
  %417 = getelementptr inbounds %struct.net_device, ptr %416, i32 0, i32 31
  store i32 %415, ptr %417, align 4
  br label %446

418:                                              ; preds = %362, %263, %247, %243, %237, %202, %198, %125
  %419 = load ptr, ptr %18, align 4
  %420 = getelementptr inbounds %struct.usb_interface, ptr %419, i32 0, i32 7, i32 8
  store ptr null, ptr %420, align 8
  %421 = load ptr, ptr %72, align 8
  %422 = getelementptr inbounds %struct.usb_interface, ptr %421, i32 0, i32 7, i32 8
  store ptr null, ptr %422, align 8
  %423 = load ptr, ptr %72, align 8
  %424 = load ptr, ptr %18, align 4
  %425 = icmp eq ptr %423, %424
  br i1 %425, label %427, label %426

426:                                              ; preds = %418
  call void @usb_driver_release_interface(ptr noundef %21, ptr noundef %423) #19
  br label %427

427:                                              ; preds = %426, %418, %107, %97, %89, %75
  %428 = load i32, ptr %17, align 4
  %429 = inttoptr i32 %428 to ptr
  %430 = icmp eq i32 %428, 0
  br i1 %430, label %444, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %429, i32 0, i32 11
  %433 = load ptr, ptr %432, align 8
  %434 = icmp eq ptr %433, null
  br i1 %434, label %436, label %435

435:                                              ; preds = %431
  call void @__dev_kfree_skb_any(ptr noundef nonnull %433, i32 noundef 1) #19
  store ptr null, ptr %432, align 8
  br label %436

436:                                              ; preds = %435, %431
  %437 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %429, i32 0, i32 10
  %438 = load ptr, ptr %437, align 4
  %439 = icmp eq ptr %438, null
  br i1 %439, label %441, label %440

440:                                              ; preds = %436
  call void @__dev_kfree_skb_any(ptr noundef nonnull %438, i32 noundef 1) #19
  store ptr null, ptr %437, align 4
  br label %441

441:                                              ; preds = %440, %436
  %442 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %429, i32 0, i32 19
  %443 = load ptr, ptr %442, align 8
  call void @kfree(ptr noundef %443) #19
  call void @kfree(ptr noundef nonnull %429) #19
  br label %444

444:                                              ; preds = %441, %427
  store i32 0, ptr %17, align 4
  %445 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %445, ptr noundef nonnull @.str.7) #21
  br label %446

446:                                              ; preds = %444, %413, %4
  %447 = phi i32 [ -19, %444 ], [ 0, %413 ], [ -12, %4 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #19
  ret i32 %447
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_tx_timer_cb(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 116
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 52
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 48
  tail call void @__tasklet_schedule(ptr noundef %10) #19
  br label %11

11:                                               ; preds = %9, %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdc_ncm_txpath_bh(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 24
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %0, i32 64
  tail call void @_raw_spin_lock_bh(ptr noundef %4) #19
  %5 = getelementptr i8, ptr %0, i32 92
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = add i32 %6, -1
  store i32 %9, ptr %5, align 4
  %10 = getelementptr i8, ptr %0, i32 -48
  %11 = tail call zeroext i1 @hrtimer_active(ptr noundef %10) #19
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %0, i32 68
  %14 = load volatile i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 76
  %18 = load i32, ptr %17, align 4
  %19 = zext i32 %18 to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %10, i64 noundef %19, i64 noundef 0, i32 noundef 1) #19
  br label %20

20:                                               ; preds = %16, %12, %8
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #19
  br label %38

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.usbnet, ptr %3, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 152
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #19
  %29 = load ptr, ptr %22, align 4
  %30 = tail call ptr @llvm.thread.pointer() #19
  %31 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %32 = load volatile i32, ptr %31, align 4
  %33 = add i32 %32, 512
  store volatile i32 %33, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  tail call void @netif_tx_lock(ptr noundef %29) #19
  %34 = load ptr, ptr %22, align 4
  %35 = tail call i32 @usbnet_start_xmit(ptr noundef null, ptr noundef %34) #19
  %36 = load ptr, ptr %22, align 4
  tail call void @netif_tx_unlock(ptr noundef %36) #19
  tail call fastcc void @local_bh_enable() #19
  br label %38

37:                                               ; preds = %21
  tail call void @_raw_spin_unlock_bh(ptr noundef %4) #19
  br label %38

38:                                               ; preds = %37, %25, %20
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_parse_cdc_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cdc_ncm_find_endpoints(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %4, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %89, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 15
  br label %10

10:                                               ; preds = %46, %8
  %11 = phi ptr [ %4, %8 ], [ %47, %46 ]
  %12 = phi i32 [ 0, %8 ], [ %50, %46 ]
  %13 = phi ptr [ null, %8 ], [ %49, %46 ]
  %14 = phi ptr [ null, %8 ], [ %48, %46 ]
  %15 = getelementptr inbounds %struct.usb_host_interface, ptr %11, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.usb_host_endpoint, ptr %16, i32 %12
  %18 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 4
  %19 = load i16, ptr %18, align 1
  %20 = and i16 %19, 2047
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 3
  %26 = zext i8 %25 to i32
  switch i32 %26, label %46 [
    i32 3, label %27
    i32 2, label %36
  ]

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = icmp sgt i8 %29, -1
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %9, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  store ptr %17, ptr %9, align 4
  %35 = load ptr, ptr %3, align 4
  br label %46

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = icmp sgt i8 %38, -1
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = icmp eq ptr %14, null
  %42 = select i1 %41, ptr %17, ptr %14
  br label %46

43:                                               ; preds = %36
  %44 = icmp eq ptr %13, null
  %45 = select i1 %44, ptr %17, ptr %13
  br label %46

46:                                               ; preds = %43, %40, %34, %31, %27, %22, %10
  %47 = phi ptr [ %11, %22 ], [ %11, %31 ], [ %35, %34 ], [ %11, %27 ], [ %11, %10 ], [ %11, %40 ], [ %11, %43 ]
  %48 = phi ptr [ %14, %22 ], [ %14, %31 ], [ %14, %34 ], [ %14, %27 ], [ %14, %10 ], [ %42, %40 ], [ %14, %43 ]
  %49 = phi ptr [ %13, %22 ], [ %13, %31 ], [ %13, %34 ], [ %13, %27 ], [ %13, %10 ], [ %13, %40 ], [ %45, %43 ]
  %50 = add nuw nsw i32 %12, 1
  %51 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %47, i32 0, i32 4
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %10, label %55

55:                                               ; preds = %46
  %56 = icmp eq ptr %48, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 13
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %48, i32 0, i32 2
  %64 = load i8, ptr %63, align 2
  %65 = and i8 %64, 15
  %66 = zext i8 %65 to i32
  %67 = load i32, ptr %62, align 8
  %68 = shl i32 %67, 8
  %69 = shl nuw nsw i32 %66, 15
  %70 = or i32 %68, %69
  %71 = or i32 %70, -1073741696
  store i32 %71, ptr %58, align 4
  br label %72

72:                                               ; preds = %61, %57, %55
  %73 = icmp eq ptr %49, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 14
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %49, i32 0, i32 2
  %81 = load i8, ptr %80, align 2
  %82 = and i8 %81, 15
  %83 = zext i8 %82 to i32
  %84 = load i32, ptr %79, align 8
  %85 = shl i32 %84, 8
  %86 = shl nuw nsw i32 %83, 15
  %87 = or i32 %85, %86
  %88 = or i32 %87, -1073741824
  store i32 %88, ptr %75, align 4
  br label %89

89:                                               ; preds = %78, %74, %72, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_ethernet_addr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @cdc_ncm_unbind(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr i8, ptr %7, i32 -56
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 14
  store volatile i32 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 1
  %13 = tail call i32 @hrtimer_cancel(ptr noundef %12) #19
  %14 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 2
  tail call void @tasklet_kill(ptr noundef %14) #19
  %15 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 9
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = icmp eq ptr %16, %1
  br i1 %21, label %23, label %28

22:                                               ; preds = %10
  store ptr null, ptr %17, align 8
  br label %28

23:                                               ; preds = %20
  %24 = icmp eq ptr %18, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7, i32 8
  store ptr null, ptr %26, align 8
  %27 = load ptr, ptr %17, align 8
  tail call void @usb_driver_release_interface(ptr noundef %8, ptr noundef %27) #19
  store ptr null, ptr %17, align 8
  br label %36

28:                                               ; preds = %23, %22, %20
  %29 = phi ptr [ null, %23 ], [ %18, %20 ], [ null, %22 ]
  %30 = icmp ne ptr %29, %1
  %31 = icmp eq ptr %16, null
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.usb_interface, ptr %16, i32 0, i32 7, i32 8
  store ptr null, ptr %34, align 8
  %35 = load ptr, ptr %15, align 4
  tail call void @usb_driver_release_interface(ptr noundef %8, ptr noundef %35) #19
  store ptr null, ptr %15, align 4
  br label %36

36:                                               ; preds = %33, %28, %25
  %37 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 8
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 11
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %39, i32 noundef 1) #19
  store ptr null, ptr %38, align 8
  br label %42

42:                                               ; preds = %41, %36
  %43 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 10
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %44, i32 noundef 1) #19
  store ptr null, ptr %43, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 19
  %49 = load ptr, ptr %48, align 8
  tail call void @kfree(ptr noundef %49) #19
  tail call void @kfree(ptr noundef nonnull %5) #19
  br label %50

50:                                               ; preds = %47, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @cdc_ncm_select_altsetting(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb_interface, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 3
  %9 = load i8, ptr %8, align 1
  br label %25

10:                                               ; preds = %1
  %11 = load i8, ptr @prefer_mbim, align 1, !range !11
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %0, i32 noundef 1) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %14, i32 0, i32 6
  %18 = load i8, ptr %17, align 2
  %19 = icmp eq i8 %18, 14
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %14, i32 0, i32 7
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %16, %13, %10
  br label %25

25:                                               ; preds = %24, %20, %5
  %26 = phi i8 [ %9, %5 ], [ 0, %24 ], [ 1, %20 ]
  ret i8 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cdc_ncm_fill_tx_frame(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 15
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 17
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 31
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 30
  %18 = load i16, ptr %17, align 8
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 29
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = add nuw nsw i32 %22, %19
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %16)
  %25 = add i32 %13, -1
  %26 = add i32 %25, %24
  br label %27

27:                                               ; preds = %11, %3
  %28 = phi i32 [ %26, %11 ], [ 0, %3 ]
  %29 = icmp eq ptr %1, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 11
  %32 = load ptr, ptr %31, align 8
  store ptr %1, ptr %31, align 8
  %33 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  store i32 %2, ptr %33, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i8 [ 0, %30 ], [ 1, %27 ]
  %37 = phi i32 [ %34, %30 ], [ %2, %27 ]
  %38 = phi ptr [ %32, %30 ], [ null, %27 ]
  %39 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 10
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 21
  %44 = load i32, ptr %43, align 8
  br label %107

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 26
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 23
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 24
  store i32 %51, ptr %52, align 4
  %53 = tail call ptr @__alloc_skb(i32 noundef %51, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #19
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 25
  %57 = load i32, ptr %56, align 8
  %58 = add i32 %57, 1
  %59 = tail call i32 @llvm.umin.i32(i32 %58, i32 10)
  store i32 %59, ptr %56, align 8
  store i32 %59, ptr %46, align 4
  br label %60

60:                                               ; preds = %55, %45
  %61 = icmp eq ptr %38, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 24
  store i32 2048, ptr %63, align 4
  %64 = tail call ptr @__alloc_skb(i32 noundef 2048, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #19
  %65 = icmp eq ptr %64, null
  br i1 %65, label %625, label %79

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 5
  %68 = load i32, ptr %67, align 8
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 2048)
  %70 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 24
  store i32 %69, ptr %70, align 4
  %71 = tail call ptr @__alloc_skb(i32 noundef %69, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %38, i32 noundef 1) #19
  %74 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.net_device, ptr %75, i32 0, i32 36, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, 1
  store i32 %78, ptr %76, align 4
  br label %625

79:                                               ; preds = %66, %62
  %80 = phi ptr [ %71, %66 ], [ %64, %62 ]
  %81 = load i32, ptr %46, align 4
  %82 = add i32 %81, -1
  store i32 %82, ptr %46, align 4
  br label %83

83:                                               ; preds = %79, %49
  %84 = phi ptr [ %80, %79 ], [ %53, %49 ]
  %85 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 18
  %86 = load i8, ptr %85, align 4
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = tail call ptr @skb_put(ptr noundef nonnull %84, i32 noundef 12) #19
  %90 = getelementptr inbounds i8, ptr %89, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(12) %90, i8 0, i32 6, i1 false) #19
  store i32 1213023054, ptr %89, align 1
  %91 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %89, i32 0, i32 1
  store i16 12, ptr %91, align 1
  %92 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 32
  %93 = load i16, ptr %92, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr %92, align 4
  %95 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %89, i32 0, i32 2
  store i16 %93, ptr %95, align 1
  br label %104

96:                                               ; preds = %83
  %97 = tail call ptr @skb_put(ptr noundef nonnull %84, i32 noundef 16) #19
  %98 = getelementptr inbounds i8, ptr %97, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(16) %98, i8 0, i32 10, i1 false) #19
  store i32 1751999342, ptr %97, align 1
  %99 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %97, i32 0, i32 1
  store i16 16, ptr %99, align 1
  %100 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 32
  %101 = load i16, ptr %100, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %100, align 4
  %103 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %97, i32 0, i32 2
  store i16 %101, ptr %103, align 1
  br label %104

104:                                              ; preds = %96, %88
  %105 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 21
  store i32 0, ptr %105, align 8
  %106 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 35
  store i32 0, ptr %106, align 4
  br label %107

107:                                              ; preds = %104, %42
  %108 = phi i32 [ %44, %42 ], [ 0, %104 ]
  %109 = phi ptr [ %40, %42 ], [ %84, %104 ]
  %110 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 21
  %111 = trunc i32 %108 to i16
  %112 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 28
  %113 = load i16, ptr %112, align 4
  %114 = icmp ugt i16 %113, %111
  br i1 %114, label %115, label %423

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 11
  %117 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 12
  %118 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 18
  %119 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 30
  %120 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 29
  %121 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 17
  %122 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 19
  %123 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 31
  %124 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 24
  %125 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 5
  %126 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 6
  %127 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 15
  %128 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 14
  %129 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 17
  %130 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 35
  br label %131

131:                                              ; preds = %417, %115
  %132 = phi ptr [ %38, %115 ], [ null, %417 ]
  %133 = phi i32 [ %37, %115 ], [ %141, %417 ]
  %134 = phi i16 [ %111, %115 ], [ %418, %417 ]
  %135 = icmp eq ptr %132, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load ptr, ptr %116, align 8
  %138 = load i32, ptr %117, align 4
  store ptr null, ptr %116, align 8
  %139 = icmp eq ptr %137, null
  br i1 %139, label %435, label %140

140:                                              ; preds = %136, %131
  %141 = phi i32 [ %138, %136 ], [ %133, %131 ]
  %142 = phi ptr [ %137, %136 ], [ %132, %131 ]
  %143 = load i8, ptr %118, align 4
  %144 = icmp eq i8 %143, 0
  %145 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 5
  %146 = load i32, ptr %145, align 8
  %147 = load i16, ptr %119, align 8
  %148 = zext i16 %147 to i32
  %149 = load i16, ptr %120, align 2
  %150 = zext i16 %149 to i32
  %151 = load ptr, ptr %121, align 4
  br i1 %144, label %229, label %152

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %151, i32 0, i32 4
  %154 = load i16, ptr %153, align 1
  %155 = load i32, ptr %7, align 8
  %156 = and i32 %155, 2
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load ptr, ptr %122, align 8
  %160 = load i32, ptr %159, align 1
  %161 = icmp eq i32 %160, %141
  br i1 %161, label %304, label %162

162:                                              ; preds = %158
  %163 = icmp eq i32 %160, 0
  br i1 %163, label %164, label %304

164:                                              ; preds = %162, %152
  %165 = icmp eq i16 %154, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %172, %164
  %167 = phi i16 [ %174, %172 ], [ %154, %164 ]
  %168 = zext i16 %167 to i32
  %169 = getelementptr i8, ptr %151, i32 %168
  %170 = load i32, ptr %169, align 1
  %171 = icmp eq i32 %170, %141
  br i1 %171, label %304, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %169, i32 0, i32 2
  %174 = load i16, ptr %173, align 1
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %176, label %166

176:                                              ; preds = %172, %164
  %177 = phi ptr [ null, %164 ], [ %169, %172 ]
  br i1 %157, label %178, label %204

178:                                              ; preds = %176
  %179 = load i16, ptr %123, align 2
  %180 = zext i16 %179 to i32
  %181 = load i32, ptr %124, align 4
  %182 = load i32, ptr %125, align 8
  %183 = add nsw i32 %180, -1
  %184 = add i32 %183, %182
  %185 = sub nsw i32 0, %180
  %186 = and i32 %184, %185
  %187 = tail call i32 @llvm.umin.i32(i32 %186, i32 %181) #19
  %188 = sub i32 %187, %182
  %189 = icmp eq i32 %187, %182
  br i1 %189, label %204, label %190

190:                                              ; preds = %178
  %191 = load i32, ptr %126, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load ptr, ptr %127, align 4
  %195 = load ptr, ptr %128, align 8
  %196 = ptrtoint ptr %194 to i32
  %197 = ptrtoint ptr %195 to i32
  %198 = sub i32 %196, %197
  br label %199

199:                                              ; preds = %193, %190
  %200 = phi i32 [ %198, %193 ], [ 0, %190 ]
  %201 = icmp ult i32 %200, %188
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %188) #19
  tail call void @llvm.memset.p0.i32(ptr align 1 %203, i8 0, i32 %188, i1 false) #19
  br label %204

204:                                              ; preds = %202, %199, %178, %176
  %205 = load i32, ptr %124, align 4
  %206 = load i32, ptr %125, align 8
  %207 = add i32 %146, %148
  %208 = add i32 %207, %150
  %209 = add i32 %208, %206
  %210 = sub i32 %205, %209
  %211 = load i32, ptr %129, align 8
  %212 = icmp ult i32 %210, %211
  br i1 %212, label %304, label %213

213:                                              ; preds = %204
  %214 = icmp eq ptr %177, null
  %215 = trunc i32 %206 to i16
  %216 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %177, i32 0, i32 2
  %217 = select i1 %214, ptr %153, ptr %216
  store i16 %215, ptr %217, align 1
  %218 = load i32, ptr %7, align 8
  %219 = and i32 %218, 2
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %213
  %222 = load i32, ptr %129, align 8
  %223 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %222) #19
  tail call void @llvm.memset.p0.i32(ptr align 1 %223, i8 0, i32 %222, i1 false) #19
  br label %226

224:                                              ; preds = %213
  %225 = load ptr, ptr %122, align 8
  br label %226

226:                                              ; preds = %224, %221
  %227 = phi ptr [ %225, %224 ], [ %223, %221 ]
  store i32 %141, ptr %227, align 1
  %228 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %227, i32 0, i32 1
  store i16 12, ptr %228, align 1
  br label %304

229:                                              ; preds = %140
  %230 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %151, i32 0, i32 4
  %231 = load i32, ptr %230, align 1
  %232 = load i32, ptr %7, align 8
  %233 = and i32 %232, 2
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %229
  %236 = load ptr, ptr %122, align 8
  %237 = load i32, ptr %236, align 1
  %238 = icmp eq i32 %237, %141
  br i1 %238, label %304, label %239

239:                                              ; preds = %235
  %240 = icmp eq i32 %237, 0
  br i1 %240, label %241, label %304

241:                                              ; preds = %239, %229
  %242 = icmp eq i32 %231, 0
  br i1 %242, label %252, label %243

243:                                              ; preds = %248, %241
  %244 = phi i32 [ %250, %248 ], [ %231, %241 ]
  %245 = getelementptr i8, ptr %151, i32 %244
  %246 = load i32, ptr %245, align 1
  %247 = icmp eq i32 %246, %141
  br i1 %247, label %304, label %248

248:                                              ; preds = %243
  %249 = getelementptr inbounds %struct.usb_cdc_ncm_ndp32, ptr %245, i32 0, i32 3
  %250 = load i32, ptr %249, align 1
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %243

252:                                              ; preds = %248, %241
  %253 = phi ptr [ null, %241 ], [ %245, %248 ]
  br i1 %234, label %254, label %280

254:                                              ; preds = %252
  %255 = load i16, ptr %123, align 2
  %256 = zext i16 %255 to i32
  %257 = load i32, ptr %124, align 4
  %258 = load i32, ptr %125, align 8
  %259 = add nsw i32 %256, -1
  %260 = add i32 %259, %258
  %261 = sub nsw i32 0, %256
  %262 = and i32 %260, %261
  %263 = tail call i32 @llvm.umin.i32(i32 %262, i32 %257) #19
  %264 = sub i32 %263, %258
  %265 = icmp eq i32 %263, %258
  br i1 %265, label %280, label %266

266:                                              ; preds = %254
  %267 = load i32, ptr %126, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %266
  %270 = load ptr, ptr %127, align 4
  %271 = load ptr, ptr %128, align 8
  %272 = ptrtoint ptr %270 to i32
  %273 = ptrtoint ptr %271 to i32
  %274 = sub i32 %272, %273
  br label %275

275:                                              ; preds = %269, %266
  %276 = phi i32 [ %274, %269 ], [ 0, %266 ]
  %277 = icmp ult i32 %276, %264
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %264) #19
  tail call void @llvm.memset.p0.i32(ptr align 1 %279, i8 0, i32 %264, i1 false) #19
  br label %280

280:                                              ; preds = %278, %275, %254, %252
  %281 = load i32, ptr %124, align 4
  %282 = load i32, ptr %125, align 8
  %283 = add i32 %146, %148
  %284 = add i32 %283, %150
  %285 = add i32 %284, %282
  %286 = sub i32 %281, %285
  %287 = load i32, ptr %129, align 8
  %288 = icmp ult i32 %286, %287
  br i1 %288, label %304, label %289

289:                                              ; preds = %280
  %290 = icmp eq ptr %253, null
  %291 = getelementptr inbounds %struct.usb_cdc_ncm_ndp32, ptr %253, i32 0, i32 3
  %292 = select i1 %290, ptr %230, ptr %291
  store i32 %282, ptr %292, align 1
  %293 = load i32, ptr %7, align 8
  %294 = and i32 %293, 2
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = load i32, ptr %129, align 8
  %298 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %297) #19
  tail call void @llvm.memset.p0.i32(ptr align 1 %298, i8 0, i32 %297, i1 false) #19
  br label %301

299:                                              ; preds = %289
  %300 = load ptr, ptr %122, align 8
  br label %301

301:                                              ; preds = %299, %296
  %302 = phi ptr [ %300, %299 ], [ %298, %296 ]
  store i32 %141, ptr %302, align 1
  %303 = getelementptr inbounds %struct.usb_cdc_ncm_ndp32, ptr %302, i32 0, i32 1
  store i16 24, ptr %303, align 1
  br label %304

304:                                              ; preds = %301, %280, %243, %239, %235, %226, %204, %166, %162, %158
  %305 = phi ptr [ %227, %226 ], [ %159, %158 ], [ null, %162 ], [ null, %204 ], [ %302, %301 ], [ %236, %235 ], [ null, %239 ], [ null, %280 ], [ %245, %243 ], [ %169, %166 ]
  %306 = load i16, ptr %119, align 8
  %307 = zext i16 %306 to i32
  %308 = load i16, ptr %120, align 2
  %309 = zext i16 %308 to i32
  %310 = load i32, ptr %124, align 4
  %311 = load i32, ptr %125, align 8
  %312 = add nsw i32 %307, -1
  %313 = add i32 %312, %311
  %314 = sub nsw i32 0, %307
  %315 = and i32 %313, %314
  %316 = sub i32 %309, %311
  %317 = add i32 %316, %315
  %318 = add i32 %315, %309
  %319 = icmp ugt i32 %318, %310
  %320 = sub i32 %310, %311
  %321 = select i1 %319, i32 %320, i32 %317
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %337, label %323

323:                                              ; preds = %304
  %324 = load i32, ptr %126, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %323
  %327 = load ptr, ptr %127, align 4
  %328 = load ptr, ptr %128, align 8
  %329 = ptrtoint ptr %327 to i32
  %330 = ptrtoint ptr %328 to i32
  %331 = sub i32 %329, %330
  br label %332

332:                                              ; preds = %326, %323
  %333 = phi i32 [ %331, %326 ], [ 0, %323 ]
  %334 = icmp ult i32 %333, %321
  br i1 %334, label %337, label %335

335:                                              ; preds = %332
  %336 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %321) #19
  tail call void @llvm.memset.p0.i32(ptr align 1 %336, i8 0, i32 %321, i1 false) #19
  br label %337

337:                                              ; preds = %335, %332, %304
  %338 = load i8, ptr %118, align 4
  %339 = icmp eq i8 %338, 0
  %340 = icmp ne ptr %305, null
  %341 = or i1 %340, %339
  br i1 %341, label %342, label %353

342:                                              ; preds = %337
  %343 = icmp ne i8 %338, 0
  %344 = or i1 %340, %343
  br i1 %344, label %345, label %353

345:                                              ; preds = %342
  %346 = load i32, ptr %125, align 8
  %347 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 5
  %348 = load i32, ptr %347, align 8
  %349 = add i32 %346, %28
  %350 = add i32 %349, %348
  %351 = load i32, ptr %124, align 4
  %352 = icmp ugt i32 %350, %351
  br i1 %352, label %353, label %376

353:                                              ; preds = %345, %342, %337
  %354 = zext i16 %134 to i32
  %355 = icmp eq i16 %134, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %353
  tail call void @__dev_kfree_skb_any(ptr noundef %142, i32 noundef 1) #19
  %357 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %358 = load ptr, ptr %357, align 4
  %359 = getelementptr inbounds %struct.net_device, ptr %358, i32 0, i32 36, i32 7
  %360 = load i32, ptr %359, align 4
  %361 = add i32 %360, 1
  store i32 %361, ptr %359, align 4
  store i32 %354, ptr %110, align 8
  br label %440

362:                                              ; preds = %353
  %363 = load ptr, ptr %116, align 8
  %364 = icmp eq ptr %363, null
  br i1 %364, label %371, label %365

365:                                              ; preds = %362
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %363, i32 noundef 1) #19
  %366 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %367 = load ptr, ptr %366, align 4
  %368 = getelementptr inbounds %struct.net_device, ptr %367, i32 0, i32 36, i32 7
  %369 = load i32, ptr %368, align 4
  %370 = add i32 %369, 1
  store i32 %370, ptr %368, align 4
  br label %371

371:                                              ; preds = %365, %362
  store ptr %142, ptr %116, align 8
  store i32 %141, ptr %117, align 4
  %372 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 36
  %373 = load i32, ptr %372, align 8
  %374 = add i32 %373, 1
  store i32 %374, ptr %372, align 8
  store i32 %354, ptr %110, align 8
  %375 = load i16, ptr %112, align 4
  br label %457

376:                                              ; preds = %345
  br i1 %343, label %377, label %392

377:                                              ; preds = %376
  %378 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %305, i32 0, i32 1
  %379 = load i16, ptr %378, align 1
  %380 = zext i16 %379 to i32
  %381 = add nuw nsw i32 %380, 262136
  %382 = lshr i32 %381, 2
  %383 = trunc i32 %382 to i16
  %384 = add nsw i16 %383, -1
  %385 = trunc i32 %348 to i16
  %386 = zext i16 %384 to i32
  %387 = getelementptr %struct.usb_cdc_ncm_ndp16, ptr %305, i32 0, i32 3, i32 %386
  %388 = getelementptr %struct.usb_cdc_ncm_ndp16, ptr %305, i32 0, i32 3, i32 %386, i32 1
  store i16 %385, ptr %388, align 1
  %389 = load i32, ptr %125, align 8
  %390 = trunc i32 %389 to i16
  store i16 %390, ptr %387, align 1
  %391 = add i16 %379, 4
  store i16 %391, ptr %378, align 1
  br label %405

392:                                              ; preds = %376
  %393 = getelementptr inbounds %struct.usb_cdc_ncm_ndp32, ptr %305, i32 0, i32 1
  %394 = load i16, ptr %393, align 1
  %395 = zext i16 %394 to i32
  %396 = add nuw nsw i32 %395, 524272
  %397 = lshr i32 %396, 3
  %398 = trunc i32 %397 to i16
  %399 = add nsw i16 %398, -1
  %400 = zext i16 %399 to i32
  %401 = getelementptr %struct.usb_cdc_ncm_ndp32, ptr %305, i32 0, i32 5, i32 %400
  %402 = getelementptr %struct.usb_cdc_ncm_ndp32, ptr %305, i32 0, i32 5, i32 %400, i32 1
  store i32 %348, ptr %402, align 1
  %403 = load i32, ptr %125, align 8
  store i32 %403, ptr %401, align 1
  %404 = add i16 %394, 8
  store i16 %404, ptr %393, align 1
  br label %405

405:                                              ; preds = %392, %377
  %406 = phi i16 [ %384, %377 ], [ %399, %392 ]
  %407 = getelementptr inbounds %struct.sk_buff, ptr %142, i32 0, i32 17
  %408 = load ptr, ptr %407, align 4
  %409 = load i32, ptr %347, align 8
  %410 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %409) #19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %410, ptr align 1 %408, i32 %409, i1 false) #19
  %411 = load i32, ptr %347, align 8
  %412 = load i32, ptr %130, align 4
  %413 = add i32 %412, %411
  store i32 %413, ptr %130, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %142, i32 noundef 1) #19
  %414 = icmp ugt i16 %406, 39
  br i1 %414, label %415, label %417

415:                                              ; preds = %405
  %416 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 37
  br label %429

417:                                              ; preds = %405
  %418 = add nuw i16 %134, 1
  %419 = load i16, ptr %112, align 4
  %420 = icmp ult i16 %418, %419
  br i1 %420, label %131, label %421

421:                                              ; preds = %417
  %422 = zext i16 %418 to i32
  store i32 %422, ptr %110, align 8
  br label %441

423:                                              ; preds = %107
  %424 = icmp eq ptr %38, null
  br i1 %424, label %435, label %425

425:                                              ; preds = %423
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %38, i32 noundef 1) #19
  %426 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %427 = load ptr, ptr %426, align 4
  %428 = getelementptr inbounds %struct.net_device, ptr %427, i32 0, i32 36, i32 7
  br label %429

429:                                              ; preds = %425, %415
  %430 = phi ptr [ %416, %415 ], [ %428, %425 ]
  %431 = phi i16 [ %134, %415 ], [ %111, %425 ]
  %432 = phi i8 [ 1, %415 ], [ %36, %425 ]
  %433 = load i32, ptr %430, align 4
  %434 = add i32 %433, 1
  store i32 %434, ptr %430, align 4
  br label %435

435:                                              ; preds = %429, %423, %136
  %436 = phi i16 [ %111, %423 ], [ %431, %429 ], [ %134, %136 ]
  %437 = phi i8 [ %36, %423 ], [ %432, %429 ], [ %36, %136 ]
  %438 = zext i16 %436 to i32
  store i32 %438, ptr %110, align 8
  %439 = icmp eq i16 %436, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %435, %356
  store ptr %109, ptr %39, align 4
  br label %625

441:                                              ; preds = %435, %421
  %442 = phi i32 [ %422, %421 ], [ %438, %435 ]
  %443 = phi i8 [ %36, %421 ], [ %437, %435 ]
  %444 = phi i16 [ %418, %421 ], [ %436, %435 ]
  %445 = load i16, ptr %112, align 4
  %446 = icmp ult i16 %444, %445
  %447 = icmp eq i8 %443, 0
  %448 = and i1 %447, %446
  br i1 %448, label %449, label %457

449:                                              ; preds = %441
  %450 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 16
  %451 = load i32, ptr %450, align 4
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %449
  store ptr %109, ptr %39, align 4
  %454 = icmp ult i16 %444, 3
  br i1 %454, label %455, label %613

455:                                              ; preds = %453
  %456 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 20
  store i32 2, ptr %456, align 4
  br label %613

457:                                              ; preds = %449, %441, %371
  %458 = phi i16 [ %134, %371 ], [ %444, %449 ], [ %444, %441 ]
  %459 = phi i32 [ %354, %371 ], [ %442, %449 ], [ %442, %441 ]
  %460 = phi i16 [ %375, %371 ], [ %445, %449 ], [ %445, %441 ]
  %461 = icmp eq i16 %458, %460
  br i1 %461, label %462, label %466

462:                                              ; preds = %457
  %463 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 39
  %464 = load i32, ptr %463, align 4
  %465 = add i32 %464, 1
  store i32 %465, ptr %463, align 4
  br label %466

466:                                              ; preds = %462, %457
  %467 = load i32, ptr %7, align 8
  %468 = and i32 %467, 2
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %550, label %470

470:                                              ; preds = %466
  %471 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 18
  %472 = load i8, ptr %471, align 4
  %473 = icmp eq i8 %472, 0
  %474 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 17
  %475 = load ptr, ptr %474, align 4
  %476 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 31
  %477 = load i16, ptr %476, align 2
  %478 = zext i16 %477 to i32
  %479 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 24
  %480 = load i32, ptr %479, align 4
  %481 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 17
  %482 = load i32, ptr %481, align 8
  %483 = sub i32 %480, %482
  %484 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 5
  %485 = load i32, ptr %484, align 8
  %486 = add nsw i32 %478, -1
  %487 = add i32 %486, %485
  %488 = sub nsw i32 0, %478
  %489 = and i32 %487, %488
  %490 = tail call i32 @llvm.umin.i32(i32 %489, i32 %483)
  %491 = sub i32 %490, %485
  %492 = icmp eq i32 %490, %485
  br i1 %473, label %520, label %493

493:                                              ; preds = %470
  br i1 %492, label %512, label %494

494:                                              ; preds = %493
  %495 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 6
  %496 = load i32, ptr %495, align 4
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %506

498:                                              ; preds = %494
  %499 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 15
  %500 = load ptr, ptr %499, align 4
  %501 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 14
  %502 = load ptr, ptr %501, align 8
  %503 = ptrtoint ptr %500 to i32
  %504 = ptrtoint ptr %502 to i32
  %505 = sub i32 %503, %504
  br label %506

506:                                              ; preds = %498, %494
  %507 = phi i32 [ %505, %498 ], [ 0, %494 ]
  %508 = icmp ult i32 %507, %491
  br i1 %508, label %512, label %509

509:                                              ; preds = %506
  %510 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %491) #19
  tail call void @llvm.memset.p0.i32(ptr align 1 %510, i8 0, i32 %491, i1 false) #19
  %511 = load i32, ptr %484, align 8
  br label %512

512:                                              ; preds = %509, %506, %493
  %513 = phi i32 [ %485, %493 ], [ %485, %506 ], [ %511, %509 ]
  %514 = trunc i32 %513 to i16
  %515 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %475, i32 0, i32 4
  store i16 %514, ptr %515, align 1
  %516 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 19
  %517 = load ptr, ptr %516, align 8
  %518 = load i32, ptr %481, align 8
  %519 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %518) #19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %519, ptr align 1 %517, i32 %518, i1 false) #19
  br label %546

520:                                              ; preds = %470
  br i1 %492, label %539, label %521

521:                                              ; preds = %520
  %522 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 6
  %523 = load i32, ptr %522, align 4
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %533

525:                                              ; preds = %521
  %526 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 15
  %527 = load ptr, ptr %526, align 4
  %528 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 14
  %529 = load ptr, ptr %528, align 8
  %530 = ptrtoint ptr %527 to i32
  %531 = ptrtoint ptr %529 to i32
  %532 = sub i32 %530, %531
  br label %533

533:                                              ; preds = %525, %521
  %534 = phi i32 [ %532, %525 ], [ 0, %521 ]
  %535 = icmp ult i32 %534, %491
  br i1 %535, label %539, label %536

536:                                              ; preds = %533
  %537 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %491) #19
  tail call void @llvm.memset.p0.i32(ptr align 1 %537, i8 0, i32 %491, i1 false) #19
  %538 = load i32, ptr %484, align 8
  br label %539

539:                                              ; preds = %536, %533, %520
  %540 = phi i32 [ %485, %520 ], [ %485, %533 ], [ %538, %536 ]
  %541 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %475, i32 0, i32 4
  store i32 %540, ptr %541, align 1
  %542 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 19
  %543 = load ptr, ptr %542, align 8
  %544 = load i32, ptr %481, align 8
  %545 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %544) #19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %545, ptr align 1 %543, i32 %544, i1 false) #19
  br label %546

546:                                              ; preds = %539, %512
  %547 = phi ptr [ %516, %512 ], [ %542, %539 ]
  %548 = load ptr, ptr %547, align 8
  %549 = load i32, ptr %481, align 8
  tail call void @llvm.memset.p0.i32(ptr align 1 %548, i8 0, i32 %549, i1 false)
  br label %550

550:                                              ; preds = %546, %466
  %551 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 2
  %552 = load ptr, ptr %551, align 4
  %553 = getelementptr inbounds %struct.driver_info, ptr %552, i32 0, i32 1
  %554 = load i32, ptr %553, align 4
  %555 = and i32 %554, 512
  %556 = icmp eq i32 %555, 0
  %557 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 5
  %558 = load i32, ptr %557, align 8
  br i1 %556, label %559, label %572

559:                                              ; preds = %550
  %560 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 34
  %561 = load i16, ptr %560, align 8
  %562 = zext i16 %561 to i32
  %563 = icmp ugt i32 %558, %562
  br i1 %563, label %564, label %572

564:                                              ; preds = %559
  %565 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 24
  %566 = load i32, ptr %565, align 4
  %567 = icmp ult i32 %566, %558
  br i1 %567, label %568, label %569, !prof !12

568:                                              ; preds = %564
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1431, i32 noundef 9, ptr noundef null) #19
  br label %583

569:                                              ; preds = %564
  %570 = sub i32 %566, %558
  %571 = tail call ptr @skb_put(ptr noundef %109, i32 noundef %570) #19
  tail call void @llvm.memset.p0.i32(ptr align 1 %571, i8 0, i32 %570, i1 false) #19
  br label %583

572:                                              ; preds = %559, %550
  %573 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 24
  %574 = load i32, ptr %573, align 4
  %575 = icmp ult i32 %558, %574
  br i1 %575, label %576, label %583

576:                                              ; preds = %572
  %577 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 16
  %578 = load i32, ptr %577, align 4
  %579 = urem i32 %558, %578
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %576
  %582 = tail call ptr @skb_put(ptr noundef %109, i32 noundef 1) #19
  store i8 0, ptr %582, align 1
  br label %583

583:                                              ; preds = %581, %576, %572, %569, %568
  %584 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 18
  %585 = load i8, ptr %584, align 4
  %586 = icmp eq i8 %585, 0
  %587 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 17
  %588 = load ptr, ptr %587, align 4
  %589 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 5
  %590 = load i32, ptr %589, align 8
  br i1 %586, label %594, label %591

591:                                              ; preds = %583
  %592 = trunc i32 %590 to i16
  %593 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %588, i32 0, i32 3
  store i16 %592, ptr %593, align 1
  br label %596

594:                                              ; preds = %583
  %595 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %588, i32 0, i32 3
  store i32 %590, ptr %595, align 1
  br label %596

596:                                              ; preds = %594, %591
  store ptr null, ptr %39, align 4
  %597 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 5
  %598 = load i32, ptr %597, align 8
  %599 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 35
  %600 = load i32, ptr %599, align 4
  %601 = sub i32 %598, %600
  %602 = zext i32 %601 to i64
  %603 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 40
  %604 = load i64, ptr %603, align 8
  %605 = add i64 %604, %602
  store i64 %605, ptr %603, align 8
  %606 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 41
  %607 = load i64, ptr %606, align 8
  %608 = add i64 %607, 1
  store i64 %608, ptr %606, align 8
  %609 = load i32, ptr %597, align 8
  %610 = sub i32 %600, %609
  %611 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 3, i32 16
  store i32 %459, ptr %611, align 4
  %612 = getelementptr inbounds %struct.sk_buff, ptr %109, i32 0, i32 3, i32 12
  store i32 %610, ptr %612, align 4
  br label %625

613:                                              ; preds = %455, %453
  %614 = icmp eq ptr %109, null
  br i1 %614, label %625, label %615

615:                                              ; preds = %613
  %616 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 1
  %617 = tail call zeroext i1 @hrtimer_active(ptr noundef %616) #19
  br i1 %617, label %625, label %618

618:                                              ; preds = %615
  %619 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 14
  %620 = load volatile i32, ptr %619, align 4
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %625

622:                                              ; preds = %618
  %623 = load i32, ptr %450, align 4
  %624 = zext i32 %623 to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %616, i64 noundef %624, i64 noundef 0, i32 noundef 1) #19
  br label %625

625:                                              ; preds = %622, %618, %615, %613, %596, %440, %73, %62
  %626 = phi ptr [ %109, %596 ], [ null, %613 ], [ null, %615 ], [ null, %618 ], [ null, %622 ], [ null, %440 ], [ null, %73 ], [ null, %62 ]
  ret ptr %626
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cdc_ncm_tx_fixup(ptr nocapture noundef readonly %0, ptr noundef %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = inttoptr i32 %5 to ptr
  %9 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 13
  tail call void @_raw_spin_lock_bh(ptr noundef %9) #19
  %10 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 18
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 812475246, i32 810369870
  %14 = tail call ptr @cdc_ncm_fill_tx_frame(ptr noundef %0, ptr noundef %1, i32 noundef %13)
  tail call void @_raw_spin_unlock_bh(ptr noundef %9) #19
  br label %18

15:                                               ; preds = %3
  %16 = icmp eq ptr %1, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %15
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #19
  br label %18

18:                                               ; preds = %17, %15, %7
  %19 = phi ptr [ %14, %7 ], [ null, %17 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cdc_ncm_rx_verify_nth16(ptr noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 20
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 1
  %12 = icmp eq i32 %11, 1213023054
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %10, i32 0, i32 3
  %15 = load i16, ptr %14, align 1
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %0, i32 0, i32 22
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, %16
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %0, i32 0, i32 33
  %22 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %10, i32 0, i32 2
  %23 = load i16, ptr %22, align 1
  store i16 %23, ptr %21, align 2
  %24 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %10, i32 0, i32 4
  %25 = load i16, ptr %24, align 1
  %26 = zext i16 %25 to i32
  br label %27

27:                                               ; preds = %20, %13, %8, %4, %2
  %28 = phi i32 [ -22, %2 ], [ %26, %20 ], [ -22, %4 ], [ -22, %8 ], [ -22, %13 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @cdc_ncm_rx_verify_nth32(ptr noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 8
  %7 = icmp ult i32 %6, 32
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %10, align 1
  %12 = icmp eq i32 %11, 1751999342
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %10, i32 0, i32 3
  %15 = load i32, ptr %14, align 1
  %16 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %0, i32 0, i32 22
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %15, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %0, i32 0, i32 33
  %21 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %10, i32 0, i32 2
  %22 = load i16, ptr %21, align 1
  store i16 %22, ptr %20, align 2
  %23 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %10, i32 0, i32 4
  %24 = load i32, ptr %23, align 1
  br label %25

25:                                               ; preds = %19, %13, %8, %4, %2
  %26 = phi i32 [ -22, %2 ], [ %24, %19 ], [ -22, %4 ], [ -22, %8 ], [ -22, %13 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cdc_ncm_rx_verify_ndp16(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = add i32 %1, 8
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %3, %5
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %1
  %11 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %10, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = icmp ult i16 %12, 16
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = zext i16 %12 to i32
  %16 = add nsw i32 %15, -8
  %17 = lshr i32 %16, 2
  %18 = add nsw i32 %17, -1
  %19 = shl nuw nsw i32 %18, 2
  %20 = add nuw nsw i32 %19, 8
  %21 = icmp ugt i32 %20, %5
  %22 = select i1 %21, i32 -22, i32 %18
  br label %23

23:                                               ; preds = %14, %7, %2
  %24 = phi i32 [ -22, %2 ], [ -22, %7 ], [ %22, %14 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @cdc_ncm_rx_verify_ndp32(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = add i32 %1, 16
  %4 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = icmp ugt i32 %3, %5
  br i1 %6, label %23, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 %1
  %11 = getelementptr inbounds %struct.usb_cdc_ncm_ndp32, ptr %10, i32 0, i32 1
  %12 = load i16, ptr %11, align 1
  %13 = icmp ult i16 %12, 32
  br i1 %13, label %23, label %14

14:                                               ; preds = %7
  %15 = zext i16 %12 to i32
  %16 = add nsw i32 %15, -16
  %17 = lshr i32 %16, 3
  %18 = add nsw i32 %17, -1
  %19 = shl nuw nsw i32 %18, 3
  %20 = add nuw nsw i32 %19, 16
  %21 = icmp ugt i32 %20, %5
  %22 = select i1 %21, i32 -22, i32 %18
  br label %23

23:                                               ; preds = %14, %7, %2
  %24 = phi i32 [ -22, %2 ], [ -22, %7 ], [ %22, %14 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @cdc_ncm_rx_fixup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 18
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  %9 = icmp eq i32 %4, 0
  br i1 %8, label %34, label %10

10:                                               ; preds = %2
  br i1 %9, label %209, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = icmp ult i32 %13, 20
  br i1 %14, label %209, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %17, align 1
  %19 = icmp eq i32 %18, 1213023054
  br i1 %19, label %20, label %209

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %17, i32 0, i32 3
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i32
  %24 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 22
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %25, %23
  br i1 %26, label %209, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 33
  %29 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %17, i32 0, i32 2
  %30 = load i16, ptr %29, align 1
  store i16 %30, ptr %28, align 2
  %31 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, ptr %17, i32 0, i32 4
  %32 = load i16, ptr %31, align 1
  %33 = zext i16 %32 to i32
  br label %57

34:                                               ; preds = %2
  br i1 %9, label %209, label %35

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = icmp ult i32 %37, 32
  br i1 %38, label %209, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %41, align 1
  %43 = icmp eq i32 %42, 1751999342
  br i1 %43, label %44, label %209

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %41, i32 0, i32 3
  %46 = load i32, ptr %45, align 1
  %47 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 22
  %48 = load i32, ptr %47, align 4
  %49 = icmp ugt i32 %46, %48
  br i1 %49, label %209, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 33
  %52 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %41, i32 0, i32 2
  %53 = load i16, ptr %52, align 1
  store i16 %53, ptr %51, align 2
  %54 = getelementptr inbounds %struct.usb_cdc_ncm_nth32, ptr %41, i32 0, i32 4
  %55 = load i32, ptr %54, align 1
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %209, label %57

57:                                               ; preds = %50, %27
  %58 = phi i32 [ %33, %27 ], [ %55, %50 ]
  %59 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %60 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %61 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 22
  %62 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  br label %63

63:                                               ; preds = %191, %57
  %64 = phi i8 [ %193, %191 ], [ %7, %57 ]
  %65 = phi i32 [ %194, %191 ], [ %58, %57 ]
  %66 = phi i32 [ %196, %191 ], [ 50, %57 ]
  %67 = phi i32 [ %192, %191 ], [ 0, %57 ]
  %68 = icmp eq i8 %64, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %63
  %70 = add i32 %65, 8
  %71 = load i32, ptr %59, align 8
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %209, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %60, align 4
  %75 = getelementptr i8, ptr %74, i32 %65
  %76 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %75, i32 0, i32 1
  %77 = load i16, ptr %76, align 1
  %78 = icmp ult i16 %77, 16
  br i1 %78, label %209, label %79

79:                                               ; preds = %73
  %80 = zext i16 %77 to i32
  %81 = add nsw i32 %80, -8
  %82 = lshr i32 %81, 2
  %83 = add nsw i32 %82, -1
  %84 = shl nuw nsw i32 %83, 2
  %85 = add nuw nsw i32 %84, 8
  %86 = icmp ugt i32 %85, %71
  br i1 %86, label %209, label %87

87:                                               ; preds = %79
  %88 = load i32, ptr %75, align 1
  %89 = icmp eq i32 %88, 810369870
  br i1 %89, label %90, label %179

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %75, i32 0, i32 3
  br label %115

92:                                               ; preds = %63
  %93 = add i32 %65, 16
  %94 = load i32, ptr %59, align 8
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %209, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %60, align 4
  %98 = getelementptr i8, ptr %97, i32 %65
  %99 = getelementptr inbounds %struct.usb_cdc_ncm_ndp32, ptr %98, i32 0, i32 1
  %100 = load i16, ptr %99, align 1
  %101 = icmp ult i16 %100, 32
  br i1 %101, label %209, label %102

102:                                              ; preds = %96
  %103 = zext i16 %100 to i32
  %104 = add nsw i32 %103, -16
  %105 = lshr i32 %104, 3
  %106 = add nsw i32 %105, -1
  %107 = shl nuw nsw i32 %106, 3
  %108 = add nuw nsw i32 %107, 16
  %109 = icmp ugt i32 %108, %94
  br i1 %109, label %209, label %110

110:                                              ; preds = %102
  %111 = load i32, ptr %98, align 1
  %112 = icmp eq i32 %111, 812475246
  br i1 %112, label %113, label %186

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.usb_cdc_ncm_ndp32, ptr %98, i32 0, i32 5
  br label %115

115:                                              ; preds = %113, %90
  %116 = phi i32 [ %83, %90 ], [ %106, %113 ]
  %117 = phi ptr [ %75, %90 ], [ %98, %113 ]
  %118 = phi ptr [ %91, %90 ], [ %114, %113 ]
  br label %119

119:                                              ; preds = %157, %115
  %120 = phi i8 [ %168, %157 ], [ %64, %115 ]
  %121 = phi i32 [ %167, %157 ], [ %67, %115 ]
  %122 = phi ptr [ %172, %157 ], [ %118, %115 ]
  %123 = phi i32 [ %173, %157 ], [ 0, %115 ]
  %124 = icmp eq i8 %120, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load i16, ptr %122, align 1
  %127 = zext i16 %126 to i32
  %128 = getelementptr inbounds %struct.usb_cdc_ncm_dpe16, ptr %122, i32 0, i32 1
  %129 = load i16, ptr %128, align 1
  %130 = zext i16 %129 to i32
  br label %135

131:                                              ; preds = %119
  %132 = load i32, ptr %122, align 1
  %133 = getelementptr inbounds %struct.usb_cdc_ncm_dpe32, ptr %122, i32 0, i32 1
  %134 = load i32, ptr %133, align 1
  br label %135

135:                                              ; preds = %131, %125
  %136 = phi i32 [ %130, %125 ], [ %134, %131 ]
  %137 = phi i32 [ %127, %125 ], [ %132, %131 ]
  %138 = icmp eq i32 %137, 0
  %139 = icmp eq i32 %136, 0
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %175, label %141

141:                                              ; preds = %135
  %142 = load i32, ptr %59, align 8
  %143 = icmp ult i32 %142, %137
  %144 = sub i32 %142, %137
  %145 = icmp ugt i32 %136, %144
  %146 = select i1 %143, i1 true, i1 %145
  br i1 %146, label %175, label %147

147:                                              ; preds = %141
  %148 = load i32, ptr %61, align 4
  %149 = icmp ugt i32 %136, %148
  %150 = icmp ult i32 %136, 14
  %151 = or i1 %150, %149
  br i1 %151, label %175, label %152

152:                                              ; preds = %147
  %153 = load ptr, ptr %62, align 4
  %154 = add i32 %136, 2
  %155 = tail call ptr @__netdev_alloc_skb(ptr noundef %153, i32 noundef %154, i32 noundef 2592) #19
  %156 = icmp eq ptr %155, null
  br i1 %156, label %209, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 17
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr i8, ptr %159, i32 2
  store ptr %160, ptr %158, align 4
  %161 = getelementptr inbounds %struct.sk_buff, ptr %155, i32 0, i32 14
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr i8, ptr %162, i32 2
  store ptr %163, ptr %161, align 8
  %164 = load ptr, ptr %60, align 4
  %165 = getelementptr i8, ptr %164, i32 %137
  %166 = tail call ptr @skb_put(ptr noundef nonnull %155, i32 noundef %136) #19
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %166, ptr align 1 %165, i32 %136, i1 false) #19
  tail call void @usbnet_skb_return(ptr noundef %0, ptr noundef nonnull %155) #19
  %167 = add i32 %136, %121
  %168 = load i8, ptr %6, align 4
  %169 = icmp eq i8 %168, 0
  %170 = getelementptr %struct.usb_cdc_ncm_dpe16, ptr %122, i32 1
  %171 = getelementptr %struct.usb_cdc_ncm_dpe32, ptr %122, i32 1
  %172 = select i1 %169, ptr %171, ptr %170
  %173 = add nuw nsw i32 %123, 1
  %174 = icmp eq i32 %173, %116
  br i1 %174, label %175, label %119

175:                                              ; preds = %157, %147, %141, %135
  %176 = phi i8 [ %168, %157 ], [ %120, %135 ], [ %120, %147 ], [ %120, %141 ]
  %177 = phi i32 [ %167, %157 ], [ %121, %135 ], [ %121, %147 ], [ %121, %141 ]
  %178 = icmp eq i8 %176, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %175, %87
  %180 = phi i32 [ %177, %175 ], [ %67, %87 ]
  %181 = phi ptr [ %117, %175 ], [ %75, %87 ]
  %182 = phi i8 [ %176, %175 ], [ %64, %87 ]
  %183 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, ptr %181, i32 0, i32 2
  %184 = load i16, ptr %183, align 1
  %185 = zext i16 %184 to i32
  br label %191

186:                                              ; preds = %175, %110
  %187 = phi i32 [ %177, %175 ], [ %67, %110 ]
  %188 = phi ptr [ %117, %175 ], [ %98, %110 ]
  %189 = getelementptr inbounds %struct.usb_cdc_ncm_ndp32, ptr %188, i32 0, i32 3
  %190 = load i32, ptr %189, align 1
  br label %191

191:                                              ; preds = %186, %179
  %192 = phi i32 [ %180, %179 ], [ %187, %186 ]
  %193 = phi i8 [ %182, %179 ], [ 0, %186 ]
  %194 = phi i32 [ %185, %179 ], [ %190, %186 ]
  %195 = icmp eq i32 %194, 0
  %196 = add nsw i32 %66, -1
  %197 = icmp eq i32 %66, 0
  %198 = select i1 %195, i1 true, i1 %197
  br i1 %198, label %199, label %63

199:                                              ; preds = %191
  %200 = load i32, ptr %59, align 8
  %201 = sub i32 %200, %192
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 42
  %204 = load i64, ptr %203, align 8
  %205 = add i64 %204, %202
  store i64 %205, ptr %203, align 8
  %206 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %5, i32 0, i32 43
  %207 = load i64, ptr %206, align 8
  %208 = add i64 %207, 1
  store i64 %208, ptr %206, align 8
  br label %209

209:                                              ; preds = %199, %152, %102, %96, %92, %79, %73, %69, %50, %44, %39, %35, %34, %20, %15, %11, %10
  %210 = phi i32 [ 1, %199 ], [ 0, %50 ], [ 0, %10 ], [ 0, %11 ], [ 0, %15 ], [ 0, %20 ], [ 0, %34 ], [ 0, %35 ], [ 0, %39 ], [ 0, %44 ], [ 0, %152 ], [ 0, %69 ], [ 0, %73 ], [ 0, %79 ], [ 0, %92 ], [ 0, %96 ], [ 0, %102 ]
  ret i32 %210
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_skb_return(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cdc_ncm_driver_init() #9 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @cdc_ncm_driver, ptr noundef null, ptr noundef nonnull @.str.16) #19
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cdc_ncm_driver_exit() #9 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @cdc_ncm_driver) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_read_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_write_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cdc_ncm_update_rxtx_max(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %6 = load i32, ptr %5, align 4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %7, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 32768) #19
  %17 = icmp ult i32 %16, 2048
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.14, i32 noundef %15, i32 noundef 2048) #21
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i32 [ 2048, %18 ], [ %16, %3 ]
  %24 = tail call i32 @llvm.umax.i32(i32 %1, i32 2048) #19
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %23) #19
  %26 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 22
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i32 %25, ptr %4, align 4
  %30 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.12, i32 noundef %25) #21
  %33 = zext i8 %13 to i16
  %34 = call i32 @usbnet_write_cmd(ptr noundef %0, i8 noundef zeroext -122, i8 noundef zeroext 33, i16 noundef zeroext 0, i16 noundef zeroext %33, ptr noundef nonnull %4, i16 noundef zeroext 4) #19
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, ptr %26, align 4
  br label %39

38:                                               ; preds = %29
  store i32 %25, ptr %26, align 4
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ %25, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %41

41:                                               ; preds = %39, %22
  %42 = phi i32 [ %40, %39 ], [ %25, %22 ]
  %43 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 24
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %42
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  store i32 %42, ptr %43, align 4
  %47 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 6
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  call void @usbnet_unlink_rx_urbs(ptr noundef %0) #19
  br label %54

54:                                               ; preds = %53, %46, %41
  %55 = load i32, ptr %5, align 4
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %56, i32 0, i32 18
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 0
  %60 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %56, i32 0, i32 27
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %56, i32 0, i32 17
  %63 = load i32, ptr %62, align 8
  %64 = select i1 %59, i32 16, i32 12
  %65 = add i32 %64, %61
  %66 = add i32 %65, %63
  %67 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %56, i32 0, i32 7
  %68 = load i32, ptr %67, align 8
  %69 = call i32 @llvm.umin.i32(i32 %68, i32 32768) #19
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 32768, i32 %69
  %72 = call i32 @llvm.umin.i32(i32 %66, i32 %71) #19
  %73 = call i32 @llvm.umax.i32(i32 %72, i32 %2) #19
  %74 = call i32 @llvm.umin.i32(i32 %73, i32 %71) #19
  %75 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 23
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %54
  %79 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.usb_interface, ptr %80, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.13, i32 noundef %74) #21
  br label %82

82:                                               ; preds = %78, %54
  %83 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %7, i32 0, i32 7
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %74, %84
  br i1 %85, label %110, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %0, align 4
  %88 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 14
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, 15
  %91 = and i32 %90, 15
  %92 = and i32 %89, 128
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94, !prof !13

94:                                               ; preds = %86
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1981, i32 noundef 9, ptr noundef null) #19
  br label %95

95:                                               ; preds = %94, %86
  %96 = getelementptr %struct.usb_device, ptr %87, i32 0, i32 22, i32 %91
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %97, i32 0, i32 4
  %101 = load i16, ptr %100, align 1
  %102 = and i16 %101, 2047
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i16 [ %102, %99 ], [ 0, %95 ]
  %105 = trunc i32 %74 to i16
  %106 = urem i16 %105, %104
  %107 = icmp eq i16 %106, 0
  %108 = zext i1 %107 to i32
  %109 = add nuw nsw i32 %74, %108
  br label %110

110:                                              ; preds = %103, %82
  %111 = phi i32 [ %74, %82 ], [ %109, %103 ]
  %112 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 6
  %115 = load volatile i32, ptr %114, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %135, label %118

118:                                              ; preds = %110
  %119 = load i32, ptr %75, align 8
  %120 = icmp ugt i32 %111, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = tail call ptr @llvm.thread.pointer() #19
  %123 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 1
  %124 = load volatile i32, ptr %123, align 4
  %125 = add i32 %124, 512
  store volatile i32 %125, ptr %123, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  call void @netif_tx_lock(ptr noundef %113) #19
  %126 = load ptr, ptr %112, align 4
  %127 = call i32 @usbnet_start_xmit(ptr noundef null, ptr noundef %126) #19
  %128 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 10
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %121
  call void @__dev_kfree_skb_any(ptr noundef nonnull %129, i32 noundef 1) #19
  store ptr null, ptr %128, align 4
  br label %132

132:                                              ; preds = %131, %121
  store i32 %111, ptr %75, align 8
  %133 = load ptr, ptr %112, align 4
  call void @netif_tx_unlock(ptr noundef %133) #19
  call fastcc void @local_bh_enable() #19
  %134 = load i32, ptr %75, align 8
  br label %136

135:                                              ; preds = %118, %110
  store i32 %111, ptr %75, align 8
  br label %136

136:                                              ; preds = %135, %132
  %137 = phi i32 [ %111, %135 ], [ %134, %132 ]
  %138 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 23
  store i32 %137, ptr %138, align 4
  call void @usbnet_update_max_qlen(ptr noundef %0) #19
  %139 = load i32, ptr %75, align 8
  %140 = load ptr, ptr %0, align 4
  %141 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 14
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 15
  %144 = and i32 %143, 15
  %145 = and i32 %142, 128
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147, !prof !13

147:                                              ; preds = %136
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 1981, i32 noundef 9, ptr noundef null) #19
  br label %148

148:                                              ; preds = %147, %136
  %149 = getelementptr %struct.usb_device, ptr %140, i32 0, i32 22, i32 %144
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %150, i32 0, i32 4
  %154 = load i16, ptr %153, align 1
  %155 = and i16 %154, 2047
  %156 = zext i16 %155 to i32
  %157 = mul nuw nsw i32 %156, 65533
  br label %158

158:                                              ; preds = %152, %148
  %159 = phi i32 [ %157, %152 ], [ 0, %148 ]
  %160 = add i32 %159, %139
  %161 = and i32 %160, 65535
  %162 = call i32 @llvm.umax.i32(i32 %161, i32 512)
  %163 = load i32, ptr %75, align 8
  %164 = and i32 %163, 65535
  %165 = call i32 @llvm.umin.i32(i32 %162, i32 %164)
  %166 = trunc i32 %165 to i16
  %167 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %7, i32 0, i32 34
  store i16 %166, ptr %167, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_unlink_rx_urbs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_start_xmit(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_update_max_qlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #13 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdc_ncm_get_strings(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) @cdc_ncm_gstrings_stats, i32 32, i1 false)
  %6 = getelementptr i8, ptr %2, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %6, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([8 x %struct.cdc_ncm_stats], ptr @cdc_ncm_gstrings_stats, i32 0, i32 1), i32 32, i1 false)
  %7 = getelementptr i8, ptr %2, i32 64
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %7, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([8 x %struct.cdc_ncm_stats], ptr @cdc_ncm_gstrings_stats, i32 0, i32 2), i32 32, i1 false)
  %8 = getelementptr i8, ptr %2, i32 96
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %8, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([8 x %struct.cdc_ncm_stats], ptr @cdc_ncm_gstrings_stats, i32 0, i32 3), i32 32, i1 false)
  %9 = getelementptr i8, ptr %2, i32 128
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %9, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([8 x %struct.cdc_ncm_stats], ptr @cdc_ncm_gstrings_stats, i32 0, i32 4), i32 32, i1 false)
  %10 = getelementptr i8, ptr %2, i32 160
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %10, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([8 x %struct.cdc_ncm_stats], ptr @cdc_ncm_gstrings_stats, i32 0, i32 5), i32 32, i1 false)
  %11 = getelementptr i8, ptr %2, i32 192
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %11, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([8 x %struct.cdc_ncm_stats], ptr @cdc_ncm_gstrings_stats, i32 0, i32 6), i32 32, i1 false)
  %12 = getelementptr i8, ptr %2, i32 224
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %12, ptr noundef align 4 dereferenceable(32) getelementptr inbounds ([8 x %struct.cdc_ncm_stats], ptr @cdc_ncm_gstrings_stats, i32 0, i32 7), i32 32, i1 false)
  br label %13

13:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdc_ncm_get_ethtool_stats(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 1520
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr i8, ptr %6, i32 224
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, ptr %2, align 8
  %10 = getelementptr i8, ptr %6, i32 228
  %11 = load i32, ptr %10, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr i64, ptr %2, i32 1
  store i64 %12, ptr %13, align 8
  %14 = getelementptr i8, ptr %6, i32 232
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr i64, ptr %2, i32 2
  store i64 %16, ptr %17, align 8
  %18 = getelementptr i8, ptr %6, i32 236
  %19 = load i32, ptr %18, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr i64, ptr %2, i32 3
  store i64 %20, ptr %21, align 8
  %22 = getelementptr i8, ptr %6, i32 240
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr i64, ptr %2, i32 4
  store i64 %23, ptr %24, align 8
  %25 = getelementptr i8, ptr %6, i32 248
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr i64, ptr %2, i32 5
  store i64 %26, ptr %27, align 8
  %28 = getelementptr i8, ptr %6, i32 256
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr i64, ptr %2, i32 6
  store i64 %29, ptr %30, align 8
  %31 = getelementptr i8, ptr %6, i32 264
  %32 = load i64, ptr %31, align 8
  %33 = getelementptr i64, ptr %2, i32 7
  store i64 %32, ptr %33, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cdc_ncm_get_sset_count(ptr nocapture noundef readnone %0, i32 noundef %1) #15 {
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 8, i32 -95
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_internal(ptr noundef, ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_tx_pkt_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 34
  %8 = load i16, ptr %7, align 8
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_tx_pkt_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 832
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #19
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = inttoptr i32 %7 to ptr
  %12 = load i32, ptr %5, align 4
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %11, i32 0, i32 34
  store i16 %13, ptr %14, align 8
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi i32 [ %3, %10 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ndp_to_end_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 15
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 78, i32 89
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ndp_to_end_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = getelementptr i8, ptr %0, i32 832
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  store i8 0, ptr %5, align 1, !annotation !8
  %9 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %4
  %12 = load i8, ptr %5, align 1, !range !11
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 15
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, %13
  br i1 %17, label %58, label %18

18:                                               ; preds = %11
  %19 = icmp eq i8 %12, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 18
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  %24 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 19
  %25 = load ptr, ptr %24, align 8
  br i1 %23, label %33, label %26

26:                                               ; preds = %20
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 17
  %30 = load i32, ptr %29, align 8
  %31 = call noalias align 64 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #22
  store ptr %31, ptr %24, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %58, label %41

33:                                               ; preds = %20
  %34 = icmp eq ptr %25, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 19
  %37 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 17
  %38 = load i32, ptr %37, align 8
  %39 = call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #22
  store ptr %39, ptr %36, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %35, %33, %28, %26, %18
  %42 = getelementptr i8, ptr %0, i32 824
  %43 = load ptr, ptr %42, align 4
  %44 = tail call ptr @llvm.thread.pointer() #19
  %45 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %46 = load volatile i32, ptr %45, align 4
  %47 = add i32 %46, 512
  store volatile i32 %47, ptr %45, align 4
  call void asm sideeffect "", "~{memory}"() #19, !srcloc !10
  call void @netif_tx_lock(ptr noundef %43) #19
  %48 = load ptr, ptr %42, align 4
  %49 = call i32 @usbnet_start_xmit(ptr noundef null, ptr noundef %48) #19
  %50 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 13
  call void @_raw_spin_lock_bh(ptr noundef %50) #19
  %51 = load i8, ptr %5, align 1, !range !11
  %52 = icmp eq i8 %51, 0
  %53 = load i32, ptr %14, align 8
  %54 = and i32 %53, -3
  %55 = select i1 %52, i32 0, i32 2
  %56 = or i32 %54, %55
  store i32 %56, ptr %14, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %50) #19
  %57 = load ptr, ptr %42, align 4
  call void @netif_tx_unlock(ptr noundef %57) #19
  call fastcc void @local_bh_enable() #19
  br label %58

58:                                               ; preds = %41, %35, %28, %11, %4
  %59 = phi i32 [ %3, %41 ], [ -22, %4 ], [ %3, %11 ], [ -12, %28 ], [ -12, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_max_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rx_max_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 720
  %7 = getelementptr i8, ptr %0, i32 832
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %7, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = call i32 @llvm.umin.i32(i32 %17, i32 32768) #19
  %19 = icmp ult i32 %18, 2048
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = getelementptr i8, ptr %0, i32 724
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef %17, i32 noundef 2048) #21
  %24 = load i32, ptr %5, align 4
  br label %25

25:                                               ; preds = %20, %12
  %26 = phi i32 [ %24, %20 ], [ %13, %12 ]
  %27 = phi i32 [ 2048, %20 ], [ %18, %12 ]
  %28 = call i32 @llvm.umax.i32(i32 %13, i32 2048) #19
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 %27) #19
  %30 = icmp eq i32 %29, %26
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %9, i32 0, i32 23
  %33 = load i32, ptr %32, align 8
  call fastcc void @cdc_ncm_update_rxtx_max(ptr noundef %6, i32 noundef %26, i32 noundef %33)
  br label %34

34:                                               ; preds = %31, %25, %4
  %35 = phi i32 [ %3, %31 ], [ -22, %25 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %35
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_max_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 23
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_max_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 720
  %7 = getelementptr i8, ptr %0, i32 832
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %4
  %13 = load i32, ptr %5, align 4
  %14 = load i32, ptr %7, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %15, i32 0, i32 18
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %15, i32 0, i32 27
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %15, i32 0, i32 17
  %22 = load i32, ptr %21, align 8
  %23 = select i1 %18, i32 16, i32 12
  %24 = add i32 %23, %20
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %15, i32 0, i32 7
  %27 = load i32, ptr %26, align 8
  %28 = call i32 @llvm.umin.i32(i32 %27, i32 32768) #19
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 32768, i32 %28
  %31 = call i32 @llvm.umin.i32(i32 %25, i32 %30) #19
  %32 = call i32 @llvm.umax.i32(i32 %31, i32 %13) #19
  %33 = call i32 @llvm.umin.i32(i32 %32, i32 %30) #19
  %34 = icmp eq i32 %33, %13
  br i1 %34, label %35, label %38

35:                                               ; preds = %12
  %36 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %9, i32 0, i32 22
  %37 = load i32, ptr %36, align 4
  call fastcc void @cdc_ncm_update_rxtx_max(ptr noundef %6, i32 noundef %37, i32 noundef %13)
  br label %38

38:                                               ; preds = %35, %12, %4
  %39 = phi i32 [ %3, %35 ], [ -22, %12 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %39
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_timer_usecs_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %6, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = udiv i32 %8, 1000
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tx_timer_usecs_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr i8, ptr %0, i32 832
  %7 = load i32, ptr %6, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !8
  %9 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %4
  %12 = load i32, ptr %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = add i32 %12, -4294968
  %15 = icmp ult i32 %14, -4294963
  %16 = and i1 %13, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 13
  call void @_raw_spin_lock_bh(ptr noundef %18) #19
  %19 = load i32, ptr %5, align 4
  %20 = mul i32 %19, 1000
  %21 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 16
  store i32 %20, ptr %21, align 4
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.cdc_ncm_ctx, ptr %8, i32 0, i32 20
  store i32 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %17
  call void @_raw_spin_unlock_bh(ptr noundef %18) #19
  br label %26

26:                                               ; preds = %25, %11, %4
  %27 = phi i32 [ %3, %25 ], [ %9, %4 ], [ -22, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  ret i32 %27
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_bmNtbFormatsSupported(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_dwNtbInMaxSize(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_wNdpInDivisor(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 3
  %8 = load i16, ptr %7, align 8
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_wNdpInPayloadRemainder(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 4
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_wNdpInAlignment(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 5
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_dwNtbOutMaxSize(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_wNdpOutDivisor(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 8
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_wNdpOutPayloadRemainder(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 9
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_wNdpOutAlignment(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 10
  %8 = load i16, ptr %7, align 8
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_show_wNtbOutMaxDatagrams(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #16 {
  %4 = getelementptr i8, ptr %0, i32 832
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.usb_cdc_ncm_ntb_parameters, ptr %6, i32 0, i32 11
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_open(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_stop(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_rx_mode(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_tx_timeout(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_get_tstats64(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cdc_ncm_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr @prefer_mbim, align 1, !range !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %1, i32 noundef 1) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 6
  %14 = load i8, ptr %13, align 2
  %15 = icmp eq i8 %14, 14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %10, i32 0, i32 7
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %26

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %22, i32 0, i32 3
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %16, %12, %9, %6
  %27 = tail call i32 @cdc_ncm_bind_common(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1, i32 noundef 0)
  br label %28

28:                                               ; preds = %26, %20, %16
  %29 = phi i32 [ %27, %26 ], [ -19, %20 ], [ -19, %16 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_manage_power(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cdc_ncm_status(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %7) #19
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %18, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %11, align 1
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 26
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_cdc_speed_change, ptr %11, i32 0, i32 1
  %16 = load i32, ptr %15, align 1
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 27
  store i32 %16, ptr %17, align 4
  br label %44

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.usb_cdc_notification, ptr %11, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  switch i8 %20, label %44 [
    i8 0, label %21
    i8 42, label %33
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 6
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds %struct.usb_cdc_notification, ptr %11, i32 0, i32 2
  %29 = load i16, ptr %28, align 1
  %30 = icmp ne i16 %29, 0
  %31 = xor i1 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  tail call void @usbnet_link_change(ptr noundef %0, i1 noundef zeroext %30, i1 noundef zeroext false) #19
  br label %44

33:                                               ; preds = %18
  %34 = load i32, ptr %3, align 4
  %35 = icmp ult i32 %34, 16
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @_set_bit(i32 noundef 3, ptr noundef %7) #19
  br label %44

37:                                               ; preds = %33
  %38 = getelementptr %struct.usb_cdc_notification, ptr %11, i32 1
  %39 = load i32, ptr %38, align 1
  %40 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 26
  store i32 %39, ptr %40, align 4
  %41 = getelementptr %struct.usb_cdc_notification, ptr %11, i32 1, i32 3
  %42 = load i32, ptr %41, align 1
  %43 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 27
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %37, %36, %32, %21, %18, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_cdc_update_filter(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #18

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }

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
!9 = !{i32 0, i32 17}
!10 = !{i64 2148918390}
!11 = !{i8 0, i8 2}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
