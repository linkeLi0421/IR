; ModuleID = '/llk/IR/drivers/net/usb/cdc_ether.c_pt.bc'
source_filename = "../drivers/net/usb/cdc_ether.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_cdc_update_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_cdc_update_filter\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_cdc_update_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_generic_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_generic_cdc_bind\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_generic_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_ether_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_ether_cdc_bind\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_ether_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_cdc_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_cdc_unbind\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_cdc_unbind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_cdc_status:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_cdc_status\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_cdc_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usbnet_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22usbnet_cdc_bind\22\09\09\09\09\09"
module asm "__kstrtabns_usbnet_cdc_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.driver_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.usbnet = type { ptr, ptr, ptr, ptr, ptr, %struct.wait_queue_head, %struct.mutex, i8, i8, i8, i16, i16, i8, i32, i32, ptr, i32, %struct.timer_list, ptr, ptr, i32, [5 x i32], i32, i32, i32, %struct.mii_if_info, i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, %struct.mutex, %struct.usb_anchor, %struct.tasklet_struct, %struct.work_struct, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.sk_buff_head = type { %union.anon.109, i32, %struct.spinlock }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.111, i32 }
%union.anon.111 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.91, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.91 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_parsed_header = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_cdc_ether_desc = type <{ i8, i8, i8, i8, i32, i16, i16, i8 }>
%struct.usb_cdc_mdlm_desc = type <{ i8, i8, i8, i16, [16 x i8] }>
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }
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

@__kstrtab_usbnet_cdc_update_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_cdc_update_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_cdc_update_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_cdc_update_filter to i32), ptr @__kstrtab_usbnet_cdc_update_filter, ptr @__kstrtabns_usbnet_cdc_update_filter }, section "___ksymtab_gpl+usbnet_cdc_update_filter", align 4
@mbm_guid = internal constant [16 x i8] c"\A3\17\A8\8B\04^O\01\A6\07\C0\FF\CB~9*", align 1
@cdc_ether_ethtool_ops = internal constant %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @usbnet_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_msglevel, ptr @usbnet_set_msglevel, ptr @usbnet_nway_reset, ptr @usbnet_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_get_link_ksettings_internal, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad CDC descriptors\0A\00", align 1
@__kstrtab_usbnet_generic_cdc_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_generic_cdc_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_generic_cdc_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_generic_cdc_bind to i32), ptr @__kstrtab_usbnet_generic_cdc_bind, ptr @__kstrtabns_usbnet_generic_cdc_bind }, section "___ksymtab_gpl+usbnet_generic_cdc_bind", align 4
@__kstrtab_usbnet_ether_cdc_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_ether_cdc_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_ether_cdc_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_ether_cdc_bind to i32), ptr @__kstrtab_usbnet_ether_cdc_bind, ptr @__kstrtabns_usbnet_ether_cdc_bind }, section "___ksymtab_gpl+usbnet_ether_cdc_bind", align 4
@__kstrtab_usbnet_cdc_unbind = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_cdc_unbind = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_cdc_unbind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_cdc_unbind to i32), ptr @__kstrtab_usbnet_cdc_unbind, ptr @__kstrtabns_usbnet_cdc_unbind }, section "___ksymtab_gpl+usbnet_cdc_unbind", align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"CDC: unexpected notification %02x!\0A\00", align 1
@__kstrtab_usbnet_cdc_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_cdc_status = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_cdc_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_cdc_status to i32), ptr @__kstrtab_usbnet_cdc_status, ptr @__kstrtabns_usbnet_cdc_status }, section "___ksymtab_gpl+usbnet_cdc_status", align 4
@__kstrtab_usbnet_cdc_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_usbnet_cdc_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_usbnet_cdc_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usbnet_cdc_bind to i32), ptr @__kstrtab_usbnet_cdc_bind, ptr @__kstrtabns_usbnet_cdc_bind }, section "___ksymtab_gpl+usbnet_cdc_bind", align 4
@__initcall__kmod_cdc_ether__326_1033_cdc_driver_init6 = internal global ptr @cdc_driver_init, section ".initcall6.init", align 4
@cdc_driver = internal global %struct.usb_driver { ptr @.str.2, ptr @usbnet_probe, ptr @usbnet_disconnect, ptr null, ptr @usbnet_suspend, ptr @usbnet_resume, ptr @usbnet_resume, ptr null, ptr null, ptr @products, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 6 }, align 4
@__exitcall_cdc_driver_exit = internal global ptr @cdc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author327 = internal constant [32 x i8] c"cdc_ether.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_description328 = internal constant [47 x i8] c"cdc_ether.description=USB CDC Ethernet devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [41 x i8] c"cdc_ether.file=drivers/net/usb/cdc_ether\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [22 x i8] c"cdc_ether.license=GPL\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cdc_ether\00", align 1
@products = internal constant [60 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 1245, i16 -32764, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -32763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -32762, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -32761, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -28623, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -28622, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1245, i16 -28592, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1972, i16 3842, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 4100, i16 25002, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1133, i16 -16097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5136, i16 -20479, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5136, i16 -28656, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 16700, i16 -32363, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 16700, i16 -32362, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 16700, i16 -32357, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5136, i16 -28655, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1008, i16 16925, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5845, i16 25866, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 1027, i16 4817, i16 5292, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0 }, %struct.usb_device_id { i16 899, i16 3034, i16 -32430, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 3034, i16 -32429, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1256, i16 -24319, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 5041, i16 65, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 12386, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 12393, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 12418, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 29189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 29196, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 29204, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 29214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6127, i16 -23673, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 2389, i16 2559, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1118, i16 1963, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1118, i16 1990, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 1118, i16 2343, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 9047, i16 1537, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 11978, i16 -16127, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 2965, i16 10128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 2965, i16 10129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 8436, i16 -8102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 7172, i16 21, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 899, i16 6610, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 6610, i16 4117, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 6610, i16 4467, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 6610, i16 4471, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 6610, i16 4481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 7111, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 16700, i16 -32326, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 4817, i16 5569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 6610, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @zte_cdc_info to i32) }, %struct.usb_device_id { i16 899, i16 5446, i16 4419, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 5446, i16 4356, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 7725, i16 97, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 7725, i16 85, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 899, i16 7725, i16 105, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 0, i8 0, i32 ptrtoint (ptr @cdc_info to i32) }, %struct.usb_device_id { i16 896, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id { i16 897, i16 4817, i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 2, i8 6, i8 -1, i8 0, i32 ptrtoint (ptr @wwan_info to i32) }, %struct.usb_device_id zeroinitializer], align 4
@wwan_info = internal constant %struct.driver_info { ptr @.str.3, i32 1024, ptr @usbnet_cdc_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @usbnet_cdc_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_cdc_update_filter, i32 0, i32 0, i32 0 }, align 4
@zte_cdc_info = internal constant %struct.driver_info { ptr @.str.4, i32 4128, ptr @usbnet_cdc_zte_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @usbnet_cdc_zte_status, ptr null, ptr @usbnet_cdc_zte_rx_fixup, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_cdc_update_filter, i32 0, i32 0, i32 0 }, align 4
@cdc_info = internal constant %struct.driver_info { ptr @.str.5, i32 4128, ptr @usbnet_cdc_bind, ptr @usbnet_cdc_unbind, ptr null, ptr null, ptr null, ptr @usbnet_manage_power, ptr @usbnet_cdc_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usbnet_cdc_update_filter, i32 0, i32 0, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Mobile Broadband Network Device\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ZTE CDC Ethernet Device\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"CDC Ethernet Device\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description328, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__exitcall_cdc_driver_exit, ptr @__initcall__kmod_cdc_ether__326_1033_cdc_driver_init6, ptr @__ksymtab_usbnet_cdc_bind, ptr @__ksymtab_usbnet_cdc_status, ptr @__ksymtab_usbnet_cdc_unbind, ptr @__ksymtab_usbnet_cdc_update_filter, ptr @__ksymtab_usbnet_ether_cdc_bind, ptr @__ksymtab_usbnet_generic_cdc_bind, ptr @cdc_driver_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_cdc_update_filter(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i16 12, i16 13
  %9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 61, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %5, 512
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  %15 = or i16 %8, 2
  %16 = select i1 %14, i16 %8, i16 %15
  %17 = load ptr, ptr %0, align 4
  %18 = load i32, ptr %17, align 8
  %19 = shl i32 %18, 8
  %20 = or i32 %19, -2147483648
  %21 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_interface, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %24, i32 0, i32 2
  %26 = load i8, ptr %25, align 2
  %27 = zext i8 %26 to i16
  %28 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %20, i8 noundef zeroext 67, i8 noundef zeroext 33, i16 noundef zeroext %16, i16 noundef zeroext %27, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_generic_cdc_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.usb_cdc_parsed_header, align 4
  %4 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21
  %11 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr i8, ptr %12, i32 -56
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(60) %3, i8 0, i32 60, i1 false), !annotation !8
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_host_config, ptr %18, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.usb_host_config, ptr %18, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  br label %34

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.usb_host_endpoint, ptr %27, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_host_endpoint, ptr %27, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %29, %25, %22, %2
  %35 = phi ptr [ %31, %29 ], [ %7, %25 ], [ %7, %2 ], [ %24, %22 ]
  %36 = phi i32 [ %33, %29 ], [ 0, %25 ], [ %9, %2 ], [ %20, %22 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(20) %10, i8 0, i32 20, i1 false)
  %37 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 3
  store ptr %1, ptr %37, align 4
  %38 = call i32 @cdc_parse_cdc_header(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %35, i32 noundef %36) #8
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %3, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  store ptr %42, ptr %10, align 4
  %43 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %3, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 2
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %39, null
  br i1 %46, label %163, label %47

47:                                               ; preds = %34
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %39, i32 0, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = call ptr @usb_ifnum_to_if(ptr noundef %48, i32 noundef %51) #8
  store ptr %52, ptr %37, align 4
  %53 = load ptr, ptr %0, align 4
  %54 = load ptr, ptr %40, align 4
  %55 = getelementptr inbounds %struct.usb_cdc_union_desc, ptr %54, i32 0, i32 4
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call ptr @usb_ifnum_to_if(ptr noundef %53, i32 noundef %57) #8
  %59 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 4
  store ptr %58, ptr %59, align 4
  %60 = load ptr, ptr %37, align 4
  %61 = icmp eq ptr %60, null
  %62 = icmp eq ptr %58, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %163, label %64

64:                                               ; preds = %47
  %65 = icmp eq ptr %60, %1
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = icmp eq ptr %58, %1
  br i1 %67, label %68, label %163

68:                                               ; preds = %66
  store ptr %60, ptr %59, align 4
  store ptr %1, ptr %37, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi ptr [ %60, %68 ], [ %58, %64 ]
  %71 = icmp eq ptr %70, %1
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.usb_interface, ptr %70, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %74, i32 0, i32 5
  %76 = load i8, ptr %75, align 1
  %77 = icmp eq i8 %76, 10
  br i1 %77, label %78, label %163

78:                                               ; preds = %72, %69
  %79 = load ptr, ptr %43, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %45, align 4
  %83 = getelementptr inbounds %struct.usb_cdc_ether_desc, ptr %82, i32 0, i32 5
  %84 = load i16, ptr %83, align 1
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = zext i16 %84 to i32
  %88 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 23
  store i32 %87, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %81, %78
  %90 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %3, i32 0, i32 8
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.usb_cdc_mdlm_desc, ptr %91, i32 0, i32 4
  %95 = call i32 @bcmp(ptr noundef dereferenceable(16) %94, ptr noundef nonnull dereferenceable(16) @mbm_guid, i32 16)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %163

97:                                               ; preds = %93, %89
  %98 = getelementptr inbounds %struct.usb_cdc_parsed_header, ptr %3, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = load i8, ptr %99, align 1
  %103 = icmp ult i8 %102, 5
  br i1 %103, label %163, label %104

104:                                              ; preds = %101, %97
  %105 = load ptr, ptr %10, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %163, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %45, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %163, label %110

110:                                              ; preds = %107
  br i1 %71, label %116, label %111

111:                                              ; preds = %110
  %112 = call i32 @usb_driver_claim_interface(ptr noundef %13, ptr noundef nonnull %70, ptr noundef %0) #8
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %166, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %59, align 4
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi ptr [ %115, %114 ], [ %1, %110 ]
  %118 = call i32 @usbnet_get_endpoints(ptr noundef %0, ptr noundef %117) #8
  %119 = icmp slt i32 %118, 0
  %120 = load ptr, ptr %59, align 4
  br i1 %119, label %121, label %127

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.usb_interface, ptr %120, i32 0, i32 7, i32 8
  store ptr null, ptr %122, align 8
  %123 = load ptr, ptr %59, align 4
  %124 = load ptr, ptr %37, align 4
  %125 = icmp eq ptr %123, %124
  br i1 %125, label %166, label %126

126:                                              ; preds = %121
  call void @usb_driver_release_interface(ptr noundef %13, ptr noundef %123) #8
  br label %166

127:                                              ; preds = %116
  %128 = load ptr, ptr %37, align 4
  %129 = icmp eq ptr %120, %128
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 15
  store ptr null, ptr %131, align 4
  br label %132

132:                                              ; preds = %130, %127
  %133 = getelementptr inbounds %struct.usb_interface, ptr %128, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %134, i32 0, i32 4
  %136 = load i8, ptr %135, align 4
  %137 = icmp eq i8 %136, 1
  br i1 %137, label %138, label %159

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.usb_host_interface, ptr %134, i32 0, i32 3
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 15
  store ptr %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %140, i32 0, i32 3
  %143 = load i8, ptr %142, align 1
  %144 = and i8 %143, 3
  %145 = icmp eq i8 %144, 3
  br i1 %145, label %146, label %158

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %140, i32 0, i32 2
  %148 = load i8, ptr %147, align 1
  %149 = icmp sgt i8 %148, -1
  br i1 %149, label %158, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %140, i32 0, i32 4
  %152 = load i16, ptr %151, align 1
  %153 = icmp ult i16 %152, 8
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %140, i32 0, i32 5
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154, %150, %146, %138
  store ptr null, ptr %141, align 4
  br label %159

159:                                              ; preds = %158, %154, %132
  %160 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.net_device, ptr %161, i32 0, i32 42
  store ptr @cdc_ether_ethtool_ops, ptr %162, align 8
  br label %166

163:                                              ; preds = %107, %104, %101, %93, %72, %66, %47, %34
  %164 = load ptr, ptr %0, align 4
  %165 = getelementptr inbounds %struct.usb_device, ptr %164, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %165, ptr noundef nonnull @.str) #9
  br label %166

166:                                              ; preds = %163, %159, %126, %121, %111
  %167 = phi i32 [ -19, %163 ], [ 0, %159 ], [ %112, %111 ], [ %118, %126 ], [ %118, %121 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #8
  ret i32 %167
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdc_parse_cdc_header(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_driver_claim_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_endpoints(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_driver_release_interface(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_ether_cdc_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @usbnet_generic_cdc_bind(ptr noundef %0, ptr noundef %1)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 12, i16 13
  %13 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 61, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %9, 512
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  %19 = or i16 %12, 2
  %20 = select i1 %18, i16 %12, i16 %19
  %21 = load ptr, ptr %0, align 4
  %22 = load i32, ptr %21, align 8
  %23 = shl i32 %22, 8
  %24 = or i32 %23, -2147483648
  %25 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %29, align 2
  %31 = zext i8 %30 to i16
  %32 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %24, i8 noundef zeroext 67, i8 noundef zeroext 33, i16 noundef zeroext %20, i16 noundef zeroext %31, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  br label %33

33:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_cdc_unbind(ptr nocapture noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 6
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -56
  %6 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = icmp ne ptr %9, %1
  %13 = icmp eq ptr %7, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = icmp ne ptr %7, %1
  %17 = icmp eq ptr %9, null
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %11
  %20 = phi ptr [ %7, %11 ], [ %9, %15 ]
  %21 = phi ptr [ %6, %11 ], [ %8, %15 ]
  %22 = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7, i32 8
  store ptr null, ptr %22, align 8
  %23 = load ptr, ptr %21, align 4
  tail call void @usb_driver_release_interface(ptr noundef %5, ptr noundef %23) #8
  store ptr null, ptr %21, align 4
  br label %24

24:                                               ; preds = %19, %15, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usbnet_cdc_status(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %40, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 38
  %8 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %18, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %11, align 4
  %14 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 27
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i32, ptr %11, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 26
  store i32 %16, ptr %17, align 4
  br label %40

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.usb_cdc_notification, ptr %11, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  switch i8 %20, label %36 [
    i8 0, label %21
    i8 42, label %25
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.usb_cdc_notification, ptr %11, i32 0, i32 2
  %23 = load i16, ptr %22, align 1
  %24 = icmp ne i16 %23, 0
  tail call void @usbnet_link_change(ptr noundef %0, i1 noundef zeroext %24, i1 noundef zeroext false) #8
  br label %40

25:                                               ; preds = %18
  %26 = load i32, ptr %3, align 4
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_set_bit(i32 noundef 3, ptr noundef %7) #8
  br label %40

29:                                               ; preds = %25
  %30 = getelementptr %struct.usb_cdc_notification, ptr %11, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 27
  store i32 %31, ptr %32, align 4
  %33 = getelementptr %struct.usb_cdc_notification, ptr %11, i32 1, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 26
  store i32 %34, ptr %35, align 4
  br label %40

36:                                               ; preds = %18
  %37 = zext i8 %20 to i32
  %38 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.1, i32 noundef %37) #9
  br label %40

40:                                               ; preds = %36, %29, %28, %21, %12, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_link_change(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @usbnet_cdc_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @usbnet_generic_cdc_bind(ptr noundef %0, ptr noundef %1) #8
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 12, i16 13
  %13 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 61, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = and i32 %9, 512
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  %19 = or i16 %12, 2
  %20 = select i1 %18, i16 %12, i16 %19
  %21 = load ptr, ptr %0, align 4
  %22 = load i32, ptr %21, align 8
  %23 = shl i32 %22, 8
  %24 = or i32 %23, -2147483648
  %25 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %29, align 2
  %31 = zext i8 %30 to i16
  %32 = tail call i32 @usb_control_msg(ptr noundef %21, i32 noundef %24, i8 noundef zeroext 67, i8 noundef zeroext 33, i16 noundef zeroext %20, i16 noundef zeroext %31, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #8
  %33 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_cdc_ether_desc, ptr %34, i32 0, i32 3
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call i32 @usbnet_get_ethernet_addr(ptr noundef %0, i32 noundef %37) #8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %5
  %41 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 21, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 7, i32 8
  store ptr null, ptr %43, align 8
  %44 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 6
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr i8, ptr %45, i32 -56
  %47 = load ptr, ptr %41, align 4
  tail call void @usb_driver_release_interface(ptr noundef %46, ptr noundef %47) #8
  br label %48

48:                                               ; preds = %40, %5, %2
  %49 = phi i32 [ %38, %40 ], [ 0, %5 ], [ %3, %2 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_ethernet_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cdc_driver_init() #5 section ".init.text" {
  %1 = tail call i32 @usb_register_driver(ptr noundef nonnull @cdc_driver, ptr noundef null, ptr noundef nonnull @.str.2) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @cdc_driver_exit() #5 section ".exit.text" {
  tail call void @usb_deregister(ptr noundef nonnull @cdc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_get_drvinfo(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_msglevel(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_set_msglevel(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_nway_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_get_link_ksettings_internal(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_probe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usbnet_disconnect(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_suspend(ptr noundef, [1 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usbnet_manage_power(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usbnet_cdc_zte_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [6 x i8], align 1
  %4 = tail call i32 @usbnet_cdc_bind(ptr noundef %0, ptr noundef %1)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 72
  %10 = load ptr, ptr %9, align 32
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false) #8, !annotation !8
  call void @get_random_bytes(ptr noundef nonnull %3, i32 noundef 6) #8
  %15 = load i8, ptr %3, align 1
  %16 = and i8 %15, -4
  %17 = or i8 %16, 2
  store i8 %17, ptr %3, align 1
  call void @dev_addr_mod(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #8
  %18 = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 50
  store i8 1, ptr %18, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #8
  br label %19

19:                                               ; preds = %14, %6, %2
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @usbnet_cdc_zte_status(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_cdc_notification, ptr %8, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @usbnet_cdc_status(ptr noundef %0, ptr noundef %1)
  br label %29

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.usb_cdc_notification, ptr %8, i32 0, i32 2
  %15 = load i16, ptr %14, align 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 6
  %21 = load volatile i32, ptr %20, align 4
  %22 = and i32 %21, 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  tail call void @netif_carrier_off(ptr noundef %19) #8
  %25 = load i16, ptr %14, align 1
  %26 = icmp ne i16 %25, 0
  br label %27

27:                                               ; preds = %24, %17, %13
  %28 = phi i1 [ %26, %24 ], [ true, %17 ], [ false, %13 ]
  tail call void @usbnet_link_change(ptr noundef %0, i1 noundef zeroext %28, i1 noundef zeroext false) #8
  br label %29

29:                                               ; preds = %27, %12, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @usbnet_cdc_zte_rx_fixup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #6 {
  %3 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp ult i32 %4, 14
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %8 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 13, i32 0, i32 19
  store i16 %18, ptr %19, align 2
  %20 = and i32 %17, 65535
  %21 = getelementptr i8, ptr %14, i32 %20
  %22 = getelementptr inbounds %struct.usbnet, ptr %0, i32 0, i32 19
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 72
  %25 = load ptr, ptr %24, align 32
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %21, align 4
  %27 = getelementptr i8, ptr %25, i32 4
  %28 = load i16, ptr %27, align 2
  %29 = getelementptr i8, ptr %21, i32 4
  store i16 %28, ptr %29, align 2
  br label %30

30:                                               ; preds = %12, %6, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
