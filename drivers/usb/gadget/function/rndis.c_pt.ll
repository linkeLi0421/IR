; ModuleID = '/llk/IR/drivers/usb/gadget/function/rndis.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/rndis.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_signal_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_signal_connect\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_signal_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_signal_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_signal_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_signal_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_uninit\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_uninit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_set_host_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_set_host_mac\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_set_host_mac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_msg_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_msg_parser\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_msg_parser:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_register:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_register\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_deregister\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_deregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_set_param_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_set_param_dev\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_set_param_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_set_param_vendor:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_set_param_vendor\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_set_param_vendor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_set_param_medium:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_set_param_medium\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_set_param_medium:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_add_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_add_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_add_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_free_response:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_free_response\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_free_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_get_next_response:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_get_next_response\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_get_next_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_rm_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_rm_hdr\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_rm_hdr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.rndis_params = type { i32, i8, i16, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.rndis_resp_t = type { %struct.list_head, ptr, i32, i32 }
%struct.rndis_indicate_status_msg_type = type { i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.rndis_init_cmplt_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rndis_init_msg_type = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.105, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.105 = type { ptr }
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
%struct.netdev_queue = type { ptr, %struct.netdevice_tracker, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, [4 x i8], %struct.spinlock, i32, i32, i32, [48 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [52 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [24 x i8] }
%struct.rndis_query_msg_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rndis_query_cmplt_type = type { i32, i32, i32, i32, i32, i32 }
%struct.rndis_set_msg_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.rndis_set_cmplt_type = type { i32, i32, i32, i32 }
%struct.rndis_reset_cmplt_type = type { i32, i32, i32, i32 }
%struct.rndis_keepalive_cmplt_type = type { i32, i32, i32, i32 }
%struct.rndis_keepalive_msg_type = type { i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.rndis_packet_msg_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_rndis_signal_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_signal_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_signal_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_signal_connect to i32), ptr @__kstrtab_rndis_signal_connect, ptr @__kstrtabns_rndis_signal_connect }, section "___ksymtab_gpl+rndis_signal_connect", align 4
@__kstrtab_rndis_signal_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_signal_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_signal_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_signal_disconnect to i32), ptr @__kstrtab_rndis_signal_disconnect, ptr @__kstrtabns_rndis_signal_disconnect }, section "___ksymtab_gpl+rndis_signal_disconnect", align 4
@__kstrtab_rndis_uninit = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_uninit = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_uninit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_uninit to i32), ptr @__kstrtab_rndis_uninit, ptr @__kstrtabns_rndis_uninit }, section "___ksymtab_gpl+rndis_uninit", align 4
@__kstrtab_rndis_set_host_mac = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_set_host_mac = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_set_host_mac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_set_host_mac to i32), ptr @__kstrtab_rndis_set_host_mac, ptr @__kstrtabns_rndis_set_host_mac }, section "___ksymtab_gpl+rndis_set_host_mac", align 4
@.str = private unnamed_addr constant [43 x i8] c"\014%s: unknown RNDIS message 0x%08X len %d\0A\00", align 1
@__func__.rndis_msg_parser = private unnamed_addr constant [17 x i8] c"rndis_msg_parser\00", align 1
@__kstrtab_rndis_msg_parser = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_msg_parser = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_msg_parser = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_msg_parser to i32), ptr @__kstrtab_rndis_msg_parser, ptr @__kstrtabns_rndis_msg_parser }, section "___ksymtab_gpl+rndis_msg_parser", align 4
@__kstrtab_rndis_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_register = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_register to i32), ptr @__kstrtab_rndis_register, ptr @__kstrtabns_rndis_register }, section "___ksymtab_gpl+rndis_register", align 4
@__kstrtab_rndis_deregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_deregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_deregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_deregister to i32), ptr @__kstrtab_rndis_deregister, ptr @__kstrtabns_rndis_deregister }, section "___ksymtab_gpl+rndis_deregister", align 4
@__kstrtab_rndis_set_param_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_set_param_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_set_param_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_set_param_dev to i32), ptr @__kstrtab_rndis_set_param_dev, ptr @__kstrtabns_rndis_set_param_dev }, section "___ksymtab_gpl+rndis_set_param_dev", align 4
@__kstrtab_rndis_set_param_vendor = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_set_param_vendor = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_set_param_vendor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_set_param_vendor to i32), ptr @__kstrtab_rndis_set_param_vendor, ptr @__kstrtabns_rndis_set_param_vendor }, section "___ksymtab_gpl+rndis_set_param_vendor", align 4
@__kstrtab_rndis_set_param_medium = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_set_param_medium = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_set_param_medium = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_set_param_medium to i32), ptr @__kstrtab_rndis_set_param_medium, ptr @__kstrtabns_rndis_set_param_medium }, section "___ksymtab_gpl+rndis_set_param_medium", align 4
@__kstrtab_rndis_add_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_add_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_add_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_add_hdr to i32), ptr @__kstrtab_rndis_add_hdr, ptr @__kstrtabns_rndis_add_hdr }, section "___ksymtab_gpl+rndis_add_hdr", align 4
@__kstrtab_rndis_free_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_free_response = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_free_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_free_response to i32), ptr @__kstrtab_rndis_free_response, ptr @__kstrtabns_rndis_free_response }, section "___ksymtab_gpl+rndis_free_response", align 4
@__kstrtab_rndis_get_next_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_get_next_response = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_get_next_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_get_next_response to i32), ptr @__kstrtab_rndis_get_next_response, ptr @__kstrtabns_rndis_get_next_response }, section "___ksymtab_gpl+rndis_get_next_response", align 4
@__kstrtab_rndis_rm_hdr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_rm_hdr = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_rm_hdr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_rm_hdr to i32), ptr @__kstrtab_rndis_rm_hdr, ptr @__kstrtabns_rndis_rm_hdr }, section "___ksymtab_gpl+rndis_rm_hdr", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@oid_supported_list = internal unnamed_addr constant [28 x i32] [i32 65793, i32 65794, i32 65795, i32 65796, i32 65798, i32 65799, i32 65802, i32 65803, i32 65804, i32 65805, i32 65814, i32 65806, i32 65809, i32 65812, i32 66050, i32 131329, i32 131330, i32 131331, i32 131332, i32 131333, i32 16843009, i32 16843010, i32 16843011, i32 16843013, i32 16843012, i32 16908545, i32 16908546, i32 16908547], align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\014%s: query unknown OID 0x%08X\0A\00", align 1
@__func__.gen_ndis_query_resp = private unnamed_addr constant [20 x i8] c"gen_ndis_query_resp\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\014%s: set unknown OID 0x%08X, size %d\0A\00", align 1
@__func__.gen_ndis_set_resp = private unnamed_addr constant [18 x i8] c"gen_ndis_set_resp\00", align 1
@rndis_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__ksymtab_rndis_add_hdr, ptr @__ksymtab_rndis_deregister, ptr @__ksymtab_rndis_free_response, ptr @__ksymtab_rndis_get_next_response, ptr @__ksymtab_rndis_msg_parser, ptr @__ksymtab_rndis_register, ptr @__ksymtab_rndis_rm_hdr, ptr @__ksymtab_rndis_set_host_mac, ptr @__ksymtab_rndis_set_param_dev, ptr @__ksymtab_rndis_set_param_medium, ptr @__ksymtab_rndis_set_param_vendor, ptr @__ksymtab_rndis_signal_connect, ptr @__ksymtab_rndis_signal_disconnect, ptr @__ksymtab_rndis_uninit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rndis_signal_connect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 6
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2592, i32 noundef 40) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.rndis_resp_t, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.rndis_resp_t, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.rndis_resp_t, ptr %8, i32 0, i32 2
  store i32 20, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rndis_resp_t, ptr %8, i32 0, i32 3
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  %17 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %8, ptr %17, align 4
  store ptr %16, ptr %8, align 8
  %19 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %8, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %20 = load i16, ptr %15, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %22 = load ptr, ptr %12, align 8
  store i32 7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rndis_indicate_status_msg_type, ptr %22, i32 0, i32 1
  store i32 20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rndis_indicate_status_msg_type, ptr %22, i32 0, i32 2
  store i32 1073807371, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rndis_indicate_status_msg_type, ptr %22, i32 0, i32 3
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rndis_indicate_status_msg_type, ptr %22, i32 0, i32 4
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 13
  %30 = load ptr, ptr %29, align 4
  tail call void %28(ptr noundef %30) #10
  br label %31

31:                                               ; preds = %10, %6, %1
  %32 = phi i32 [ 0, %10 ], [ -524, %1 ], [ -12, %6 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rndis_signal_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 6
  store i32 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 2592, i32 noundef 40) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.rndis_resp_t, ptr %8, i32 1
  %12 = getelementptr inbounds %struct.rndis_resp_t, ptr %8, i32 0, i32 1
  store ptr %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.rndis_resp_t, ptr %8, i32 0, i32 2
  store i32 20, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rndis_resp_t, ptr %8, i32 0, i32 3
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  %17 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %8, ptr %17, align 4
  store ptr %16, ptr %8, align 8
  %19 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %8, ptr %18, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %20 = load i16, ptr %15, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %22 = load ptr, ptr %12, align 8
  store i32 7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.rndis_indicate_status_msg_type, ptr %22, i32 0, i32 1
  store i32 20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rndis_indicate_status_msg_type, ptr %22, i32 0, i32 2
  store i32 1073807372, ptr %24, align 4
  %25 = getelementptr inbounds %struct.rndis_indicate_status_msg_type, ptr %22, i32 0, i32 3
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rndis_indicate_status_msg_type, ptr %22, i32 0, i32 4
  store i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 12
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 13
  %30 = load ptr, ptr %29, align 4
  tail call void %28(ptr noundef %30) #10
  br label %31

31:                                               ; preds = %10, %6, %1
  %32 = phi i32 [ 0, %10 ], [ -524, %1 ], [ -12, %6 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rndis_uninit(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  %6 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  br label %7

7:                                                ; preds = %41, %3
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  br label %8

8:                                                ; preds = %12, %7
  %9 = phi ptr [ %6, %7 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rndis_resp_t, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %8

16:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %17 = load i16, ptr %5, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %44

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rndis_resp_t, ptr %10, i32 0, i32 3
  store i32 1, ptr %20, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %21 = load i16, ptr %5, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %23 = getelementptr inbounds %struct.rndis_resp_t, ptr %10, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %19
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %27 = load ptr, ptr %6, align 4
  %28 = icmp eq ptr %27, %6
  br i1 %28, label %41, label %29

29:                                               ; preds = %39, %26
  %30 = phi ptr [ %31, %39 ], [ %27, %26 ]
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rndis_resp_t, ptr %30, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %24
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %31, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  tail call void @kfree(ptr noundef %30) #10
  br label %39

39:                                               ; preds = %35, %29
  %40 = icmp eq ptr %31, %6
  br i1 %40, label %41, label %29

41:                                               ; preds = %39, %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %42 = load i16, ptr %5, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %7

44:                                               ; preds = %19, %16, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rndis_get_next_response(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ %6, %4 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rndis_resp_t, ptr %9, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rndis_resp_t, ptr %9, i32 0, i32 3
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rndis_resp_t, ptr %9, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %1, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %19 = load i16, ptr %5, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %21 = getelementptr inbounds %struct.rndis_resp_t, ptr %9, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %26

23:                                               ; preds = %7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %24 = load i16, ptr %5, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %26

26:                                               ; preds = %23, %15, %2
  %27 = phi ptr [ %22, %15 ], [ null, %23 ], [ null, %2 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rndis_free_response(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %19, label %7

7:                                                ; preds = %17, %2
  %8 = phi ptr [ %9, %17 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rndis_resp_t, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %9, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @kfree(ptr noundef %8) #10
  br label %17

17:                                               ; preds = %13, %7
  %18 = icmp eq ptr %9, %4
  br i1 %18, label %19, label %7

19:                                               ; preds = %17, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %20 = load i16, ptr %3, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rndis_set_host_mac(ptr nocapture noundef writeonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 7
  store ptr %1, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rndis_msg_parser(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.rtnl_link_stats64, align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %406, label %5

5:                                                ; preds = %2
  %6 = getelementptr i32, ptr %1, i32 1
  %7 = load i32, ptr %1, align 1
  %8 = load i32, ptr %6, align 1
  %9 = icmp eq ptr %0, null
  br i1 %9, label %406, label %10

10:                                               ; preds = %5
  switch i32 %7, label %404 [
    i32 2, label %11
    i32 3, label %55
    i32 4, label %65
    i32 5, label %242
    i32 6, label %316
    i32 8, label %378
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 3
  store i32 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %406, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2592, i32 noundef 72) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %406, label %20

20:                                               ; preds = %16
  %21 = getelementptr %struct.rndis_resp_t, ptr %18, i32 1
  %22 = getelementptr inbounds %struct.rndis_resp_t, ptr %18, i32 0, i32 1
  store ptr %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.rndis_resp_t, ptr %18, i32 0, i32 2
  store i32 52, ptr %23, align 4
  %24 = getelementptr inbounds %struct.rndis_resp_t, ptr %18, i32 0, i32 3
  store i32 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  %27 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14, i32 1
  %28 = load ptr, ptr %27, align 4
  store ptr %18, ptr %27, align 4
  store ptr %26, ptr %18, align 8
  %29 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %18, ptr %28, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %30 = load i16, ptr %25, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %25, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %32 = load ptr, ptr %22, align 8
  store i32 -2147483646, ptr %32, align 4
  %33 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 1
  store i32 52, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rndis_init_msg_type, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 3
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 4
  store i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 5
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 6
  store i32 1, ptr %40, align 4
  %41 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 7
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 8
  store i32 1, ptr %42, align 4
  %43 = load ptr, ptr %13, align 4
  %44 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 80
  %47 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 9
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 10
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 11
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.rndis_init_cmplt_type, ptr %32, i32 0, i32 12
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 13
  %54 = load ptr, ptr %53, align 4
  tail call void %52(ptr noundef %54) #10
  br label %406

55:                                               ; preds = %10
  %56 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 3
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %406, label %60

60:                                               ; preds = %55
  tail call void @netif_carrier_off(ptr noundef nonnull %58) #10
  %61 = load ptr, ptr %57, align 4
  %62 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 87
  %63 = load ptr, ptr %62, align 64
  %64 = getelementptr inbounds %struct.netdev_queue, ptr %63, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %64) #10
  br label %406

65:                                               ; preds = %10
  %66 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %406, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %71 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 2592, i32 noundef 156) #9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %406, label %73

73:                                               ; preds = %69
  %74 = getelementptr %struct.rndis_resp_t, ptr %71, i32 1
  %75 = getelementptr inbounds %struct.rndis_resp_t, ptr %71, i32 0, i32 1
  store ptr %74, ptr %75, align 8
  %76 = getelementptr inbounds %struct.rndis_resp_t, ptr %71, i32 0, i32 2
  store i32 136, ptr %76, align 4
  %77 = getelementptr inbounds %struct.rndis_resp_t, ptr %71, i32 0, i32 3
  store i32 0, ptr %77, align 8
  %78 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %78) #10
  %79 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  %80 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14, i32 1
  %81 = load ptr, ptr %80, align 4
  store ptr %71, ptr %80, align 4
  store ptr %79, ptr %71, align 8
  %82 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %81, ptr %82, align 4
  store volatile ptr %71, ptr %81, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %83 = load i16, ptr %78, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %78, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %85 = load ptr, ptr %75, align 8
  store i32 -2147483644, ptr %85, align 4
  %86 = getelementptr inbounds %struct.rndis_query_msg_type, ptr %1, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %85, i32 0, i32 2
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.rndis_query_msg_type, ptr %1, i32 0, i32 3
  %90 = load i32, ptr %89, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %3, i8 0, i32 192, i1 false) #10, !annotation !12
  %91 = load ptr, ptr %75, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #10
  br label %225

94:                                               ; preds = %73
  %95 = getelementptr %struct.rndis_query_cmplt_type, ptr %91, i32 1
  %96 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %91, i32 0, i32 5
  store i32 16, ptr %96, align 4
  %97 = load ptr, ptr %66, align 4
  %98 = call ptr @dev_get_stats(ptr noundef %97, ptr noundef nonnull %3) #10
  switch i32 %90, label %220 [
    i32 65793, label %99
    i32 65794, label %100
    i32 65795, label %101
    i32 65796, label %104
    i32 65798, label %107
    i32 65799, label %113
    i32 65802, label %122
    i32 65803, label %128
    i32 65804, label %134
    i32 65805, label %137
    i32 65814, label %144
    i32 65806, label %145
    i32 65809, label %150
    i32 65812, label %151
    i32 66050, label %154
    i32 65811, label %155
    i32 131329, label %156
    i32 131330, label %168
    i32 131331, label %179
    i32 131332, label %185
    i32 131333, label %191
    i32 16843009, label %197
    i32 16843010, label %203
    i32 16843011, label %209
    i32 16843012, label %210
    i32 16843013, label %211
    i32 16908545, label %212
    i32 16908546, label %218
    i32 16908547, label %219
  ]

99:                                               ; preds = %94
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %95, ptr noundef nonnull align 4 dereferenceable(112) @oid_supported_list, i32 112, i1 false) #10
  br label %230

100:                                              ; preds = %94
  store i32 0, ptr %95, align 4
  br label %230

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 4
  %103 = load i32, ptr %102, align 4
  store i32 %103, ptr %95, align 4
  br label %230

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 4
  %106 = load i32, ptr %105, align 4
  store i32 %106, ptr %95, align 4
  br label %230

107:                                              ; preds = %94
  %108 = load ptr, ptr %66, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %222, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.net_device, ptr %108, i32 0, i32 20
  %112 = load i32, ptr %111, align 4
  store i32 %112, ptr %95, align 4
  br label %230

113:                                              ; preds = %94
  %114 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi i32 [ %119, %117 ], [ 0, %113 ]
  store i32 %121, ptr %95, align 4
  br label %230

122:                                              ; preds = %94
  %123 = load ptr, ptr %66, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %222, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.net_device, ptr %123, i32 0, i32 20
  %127 = load i32, ptr %126, align 4
  store i32 %127, ptr %95, align 4
  br label %230

128:                                              ; preds = %94
  %129 = load ptr, ptr %66, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %222, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 20
  %133 = load i32, ptr %132, align 4
  store i32 %133, ptr %95, align 4
  br label %230

134:                                              ; preds = %94
  %135 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 10
  %136 = load i32, ptr %135, align 4
  store i32 %136, ptr %95, align 4
  br label %230

137:                                              ; preds = %94
  %138 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 11
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %137
  %142 = call i32 @strlen(ptr noundef nonnull %139) #10
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %95, ptr nonnull align 1 %139, i32 %142, i1 false) #10
  br label %230

143:                                              ; preds = %137
  store i32 0, ptr %95, align 4
  br label %230

144:                                              ; preds = %94
  store i32 1, ptr %95, align 4
  br label %230

145:                                              ; preds = %94
  %146 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 8
  %147 = load ptr, ptr %146, align 4
  %148 = load i16, ptr %147, align 2
  %149 = zext i16 %148 to i32
  store i32 %149, ptr %95, align 4
  br label %230

150:                                              ; preds = %94
  store i32 1558, ptr %95, align 4
  br label %230

151:                                              ; preds = %94
  %152 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 6
  %153 = load i32, ptr %152, align 4
  store i32 %153, ptr %95, align 4
  br label %230

154:                                              ; preds = %94
  store i32 0, ptr %95, align 4
  br label %230

155:                                              ; preds = %94
  store i32 18, ptr %95, align 4
  br label %230

156:                                              ; preds = %94
  %157 = icmp eq ptr %98, null
  br i1 %157, label %222, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %98, i32 0, i32 1
  %160 = load i64, ptr %159, align 8
  %161 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %98, i32 0, i32 5
  %162 = load i64, ptr %161, align 8
  %163 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %98, i32 0, i32 7
  %164 = load i64, ptr %163, align 8
  %165 = add i64 %162, %164
  %166 = sub i64 %160, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, ptr %95, align 4
  br label %230

168:                                              ; preds = %94
  %169 = icmp eq ptr %98, null
  br i1 %169, label %222, label %170

170:                                              ; preds = %168
  %171 = load i64, ptr %98, align 8
  %172 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %98, i32 0, i32 4
  %173 = load i64, ptr %172, align 8
  %174 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %98, i32 0, i32 6
  %175 = load i64, ptr %174, align 8
  %176 = add i64 %173, %175
  %177 = sub i64 %171, %176
  %178 = trunc i64 %177 to i32
  store i32 %178, ptr %95, align 4
  br label %230

179:                                              ; preds = %94
  %180 = icmp eq ptr %98, null
  br i1 %180, label %222, label %181

181:                                              ; preds = %179
  %182 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %98, i32 0, i32 5
  %183 = load i64, ptr %182, align 8
  %184 = trunc i64 %183 to i32
  store i32 %184, ptr %95, align 4
  br label %230

185:                                              ; preds = %94
  %186 = icmp eq ptr %98, null
  br i1 %186, label %222, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %98, i32 0, i32 4
  %189 = load i64, ptr %188, align 8
  %190 = trunc i64 %189 to i32
  store i32 %190, ptr %95, align 4
  br label %230

191:                                              ; preds = %94
  %192 = icmp eq ptr %98, null
  br i1 %192, label %222, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %98, i32 0, i32 6
  %195 = load i64, ptr %194, align 8
  %196 = trunc i64 %195 to i32
  store i32 %196, ptr %95, align 4
  br label %230

197:                                              ; preds = %94
  %198 = load ptr, ptr %66, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %222, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 7
  %202 = load ptr, ptr %201, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %95, ptr noundef align 1 dereferenceable(6) %202, i32 6, i1 false) #10
  br label %230

203:                                              ; preds = %94
  %204 = load ptr, ptr %66, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %222, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 7
  %208 = load ptr, ptr %207, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(6) %95, ptr noundef align 1 dereferenceable(6) %208, i32 6, i1 false) #10
  br label %230

209:                                              ; preds = %94
  store i32 -536870912, ptr %95, align 4
  br label %230

210:                                              ; preds = %94
  store i32 1, ptr %95, align 4
  br label %230

211:                                              ; preds = %94
  store i32 0, ptr %95, align 4
  br label %230

212:                                              ; preds = %94
  %213 = icmp eq ptr %98, null
  br i1 %213, label %222, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %98, i32 0, i32 13
  %216 = load i64, ptr %215, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, ptr %95, align 4
  br label %230

218:                                              ; preds = %94
  store i32 0, ptr %95, align 4
  br label %230

219:                                              ; preds = %94
  store i32 0, ptr %95, align 4
  br label %230

220:                                              ; preds = %94
  %221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.gen_ndis_query_resp, i32 noundef %90) #11
  br label %222

222:                                              ; preds = %220, %212, %203, %197, %191, %185, %179, %168, %156, %128, %122, %107
  %223 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %91, i32 0, i32 4
  store i32 0, ptr %223, align 4
  store i32 24, ptr %76, align 4
  %224 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %91, i32 0, i32 1
  store i32 24, ptr %224, align 4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #10
  br label %225

225:                                              ; preds = %222, %93
  %226 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %85, i32 0, i32 3
  store i32 -1073741637, ptr %226, align 4
  %227 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %85, i32 0, i32 1
  store i32 24, ptr %227, align 4
  %228 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %85, i32 0, i32 4
  store i32 0, ptr %228, align 4
  %229 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %85, i32 0, i32 5
  br label %236

230:                                              ; preds = %219, %218, %214, %211, %210, %209, %206, %200, %193, %187, %181, %170, %158, %155, %154, %151, %150, %145, %144, %143, %141, %134, %131, %125, %120, %110, %104, %101, %100, %99
  %231 = phi i32 [ 112, %99 ], [ %142, %141 ], [ 4, %143 ], [ 4, %100 ], [ 4, %101 ], [ 4, %104 ], [ 4, %110 ], [ 4, %120 ], [ 4, %125 ], [ 4, %131 ], [ 4, %134 ], [ 4, %144 ], [ 4, %145 ], [ 4, %150 ], [ 4, %151 ], [ 4, %154 ], [ 4, %155 ], [ 4, %158 ], [ 4, %170 ], [ 4, %181 ], [ 4, %187 ], [ 4, %193 ], [ 6, %200 ], [ 6, %206 ], [ 4, %209 ], [ 4, %210 ], [ 4, %211 ], [ 4, %214 ], [ 4, %218 ], [ 4, %219 ]
  %232 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %91, i32 0, i32 4
  store i32 %231, ptr %232, align 4
  %233 = add i32 %231, 24
  store i32 %233, ptr %76, align 4
  %234 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %91, i32 0, i32 1
  store i32 %233, ptr %234, align 4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #10
  %235 = getelementptr inbounds %struct.rndis_query_cmplt_type, ptr %85, i32 0, i32 3
  br label %236

236:                                              ; preds = %230, %225
  %237 = phi ptr [ %235, %230 ], [ %229, %225 ]
  store i32 0, ptr %237, align 4
  %238 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 12
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 13
  %241 = load ptr, ptr %240, align 4
  call void %239(ptr noundef %241) #10
  br label %406

242:                                              ; preds = %10
  %243 = getelementptr inbounds %struct.rndis_set_msg_type, ptr %1, i32 0, i32 4
  %244 = load i32, ptr %243, align 4
  %245 = getelementptr inbounds %struct.rndis_set_msg_type, ptr %1, i32 0, i32 5
  %246 = load i32, ptr %245, align 4
  %247 = icmp ugt i32 %244, 1558
  %248 = icmp ugt i32 %246, 1558
  %249 = select i1 %247, i1 true, i1 %248
  %250 = add i32 %246, -1550
  %251 = icmp ult i32 %250, -1558
  %252 = select i1 %249, i1 true, i1 %251
  br i1 %252, label %406, label %253

253:                                              ; preds = %242
  %254 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %255 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %254, i32 noundef 2592, i32 noundef 36) #9
  %256 = icmp eq ptr %255, null
  br i1 %256, label %406, label %257

257:                                              ; preds = %253
  %258 = getelementptr %struct.rndis_resp_t, ptr %255, i32 1
  %259 = getelementptr inbounds %struct.rndis_resp_t, ptr %255, i32 0, i32 1
  store ptr %258, ptr %259, align 8
  %260 = getelementptr inbounds %struct.rndis_resp_t, ptr %255, i32 0, i32 2
  store i32 16, ptr %260, align 4
  %261 = getelementptr inbounds %struct.rndis_resp_t, ptr %255, i32 0, i32 3
  store i32 0, ptr %261, align 8
  %262 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %262) #10
  %263 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  %264 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14, i32 1
  %265 = load ptr, ptr %264, align 4
  store ptr %255, ptr %264, align 4
  store ptr %263, ptr %255, align 8
  %266 = getelementptr inbounds %struct.list_head, ptr %255, i32 0, i32 1
  store ptr %265, ptr %266, align 4
  store volatile ptr %255, ptr %265, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %267 = load i16, ptr %262, align 4
  %268 = add i16 %267, 1
  store i16 %268, ptr %262, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %269 = load ptr, ptr %259, align 8
  store i32 -2147483643, ptr %269, align 4
  %270 = getelementptr inbounds %struct.rndis_set_cmplt_type, ptr %269, i32 0, i32 1
  store i32 16, ptr %270, align 4
  %271 = getelementptr %struct.rndis_set_msg_type, ptr %1, i32 0, i32 2
  %272 = load i32, ptr %271, align 4
  %273 = getelementptr inbounds %struct.rndis_set_cmplt_type, ptr %269, i32 0, i32 2
  store i32 %272, ptr %273, align 4
  %274 = getelementptr inbounds %struct.rndis_set_msg_type, ptr %1, i32 0, i32 3
  %275 = load i32, ptr %274, align 4
  %276 = getelementptr i8, ptr %271, i32 %246
  %277 = load ptr, ptr %259, align 8
  %278 = icmp eq ptr %277, null
  br i1 %278, label %309, label %279

279:                                              ; preds = %257
  switch i32 %275, label %307 [
    i32 65806, label %280
    i32 16843011, label %309
  ]

280:                                              ; preds = %279
  %281 = load i32, ptr %276, align 1
  %282 = trunc i32 %281 to i16
  %283 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 8
  %284 = load ptr, ptr %283, align 4
  store i16 %282, ptr %284, align 2
  %285 = load ptr, ptr %283, align 4
  %286 = load i16, ptr %285, align 2
  %287 = icmp eq i16 %286, 0
  %288 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 3
  br i1 %287, label %300, label %289

289:                                              ; preds = %280
  store i32 2, ptr %288, align 4
  %290 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 9
  %291 = load ptr, ptr %290, align 4
  tail call void @netif_carrier_on(ptr noundef %291) #10
  %292 = load ptr, ptr %290, align 4
  %293 = getelementptr inbounds %struct.net_device, ptr %292, i32 0, i32 6
  %294 = load volatile i32, ptr %293, align 4
  %295 = and i32 %294, 1
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %309, label %297

297:                                              ; preds = %289
  %298 = getelementptr inbounds %struct.net_device, ptr %292, i32 0, i32 87
  %299 = load ptr, ptr %298, align 64
  tail call void @netif_tx_wake_queue(ptr noundef %299) #10
  br label %309

300:                                              ; preds = %280
  store i32 1, ptr %288, align 4
  %301 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 9
  %302 = load ptr, ptr %301, align 4
  tail call void @netif_carrier_off(ptr noundef %302) #10
  %303 = load ptr, ptr %301, align 4
  %304 = getelementptr inbounds %struct.net_device, ptr %303, i32 0, i32 87
  %305 = load ptr, ptr %304, align 64
  %306 = getelementptr inbounds %struct.netdev_queue, ptr %305, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %306) #10
  br label %309

307:                                              ; preds = %279
  %308 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.gen_ndis_set_resp, i32 noundef %275, i32 noundef %244) #11
  br label %309

309:                                              ; preds = %307, %300, %297, %289, %279, %257
  %310 = phi i32 [ -1073741637, %307 ], [ -1073741637, %257 ], [ 0, %297 ], [ 0, %289 ], [ 0, %300 ], [ 0, %279 ]
  %311 = getelementptr inbounds %struct.rndis_set_cmplt_type, ptr %269, i32 0, i32 3
  store i32 %310, ptr %311, align 4
  %312 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 12
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 13
  %315 = load ptr, ptr %314, align 4
  tail call void %313(ptr noundef %315) #10
  br label %406

316:                                              ; preds = %10
  %317 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  %318 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  br label %319

319:                                              ; preds = %353, %316
  tail call void @_raw_spin_lock(ptr noundef %317) #10
  br label %320

320:                                              ; preds = %324, %319
  %321 = phi ptr [ %318, %319 ], [ %322, %324 ]
  %322 = load ptr, ptr %321, align 4
  %323 = icmp eq ptr %322, %318
  br i1 %323, label %328, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.rndis_resp_t, ptr %322, i32 0, i32 3
  %326 = load i32, ptr %325, align 4
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %331, label %320

328:                                              ; preds = %320
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %329 = load i16, ptr %317, align 4
  %330 = add i16 %329, 1
  store i16 %330, ptr %317, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %356

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.rndis_resp_t, ptr %322, i32 0, i32 3
  store i32 1, ptr %332, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %333 = load i16, ptr %317, align 4
  %334 = add i16 %333, 1
  store i16 %334, ptr %317, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %335 = getelementptr inbounds %struct.rndis_resp_t, ptr %322, i32 0, i32 1
  %336 = load ptr, ptr %335, align 4
  %337 = icmp eq ptr %336, null
  br i1 %337, label %356, label %338

338:                                              ; preds = %331
  tail call void @_raw_spin_lock(ptr noundef %317) #10
  %339 = load ptr, ptr %318, align 4
  %340 = icmp eq ptr %339, %318
  br i1 %340, label %353, label %341

341:                                              ; preds = %351, %338
  %342 = phi ptr [ %343, %351 ], [ %339, %338 ]
  %343 = load ptr, ptr %342, align 4
  %344 = getelementptr inbounds %struct.rndis_resp_t, ptr %342, i32 0, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = icmp eq ptr %345, %336
  br i1 %346, label %347, label %351

347:                                              ; preds = %341
  %348 = getelementptr inbounds %struct.list_head, ptr %342, i32 0, i32 1
  %349 = load ptr, ptr %348, align 4
  %350 = getelementptr inbounds %struct.list_head, ptr %343, i32 0, i32 1
  store ptr %349, ptr %350, align 4
  store volatile ptr %343, ptr %349, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %342, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %348, align 4
  tail call void @kfree(ptr noundef %342) #10
  br label %351

351:                                              ; preds = %347, %341
  %352 = icmp eq ptr %343, %318
  br i1 %352, label %353, label %341

353:                                              ; preds = %351, %338
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %354 = load i16, ptr %317, align 4
  %355 = add i16 %354, 1
  store i16 %355, ptr %317, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  br label %319

356:                                              ; preds = %331, %328
  %357 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %358 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %357, i32 noundef 2592, i32 noundef 36) #9
  %359 = icmp eq ptr %358, null
  br i1 %359, label %406, label %360

360:                                              ; preds = %356
  %361 = getelementptr %struct.rndis_resp_t, ptr %358, i32 1
  %362 = getelementptr inbounds %struct.rndis_resp_t, ptr %358, i32 0, i32 1
  store ptr %361, ptr %362, align 8
  %363 = getelementptr inbounds %struct.rndis_resp_t, ptr %358, i32 0, i32 2
  store i32 16, ptr %363, align 4
  %364 = getelementptr inbounds %struct.rndis_resp_t, ptr %358, i32 0, i32 3
  store i32 0, ptr %364, align 8
  tail call void @_raw_spin_lock(ptr noundef %317) #10
  %365 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14, i32 1
  %366 = load ptr, ptr %365, align 4
  store ptr %358, ptr %365, align 4
  store ptr %318, ptr %358, align 8
  %367 = getelementptr inbounds %struct.list_head, ptr %358, i32 0, i32 1
  store ptr %366, ptr %367, align 4
  store volatile ptr %358, ptr %366, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %368 = load i16, ptr %317, align 4
  %369 = add i16 %368, 1
  store i16 %369, ptr %317, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %370 = load ptr, ptr %362, align 8
  store i32 -2147483642, ptr %370, align 4
  %371 = getelementptr inbounds %struct.rndis_reset_cmplt_type, ptr %370, i32 0, i32 1
  store i32 16, ptr %371, align 4
  %372 = getelementptr inbounds %struct.rndis_reset_cmplt_type, ptr %370, i32 0, i32 2
  store i32 0, ptr %372, align 4
  %373 = getelementptr inbounds %struct.rndis_reset_cmplt_type, ptr %370, i32 0, i32 3
  store i32 1, ptr %373, align 4
  %374 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 12
  %375 = load ptr, ptr %374, align 4
  %376 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 13
  %377 = load ptr, ptr %376, align 4
  tail call void %375(ptr noundef %377) #10
  br label %406

378:                                              ; preds = %10
  %379 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %380 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %379, i32 noundef 2592, i32 noundef 36) #9
  %381 = icmp eq ptr %380, null
  br i1 %381, label %406, label %382

382:                                              ; preds = %378
  %383 = getelementptr %struct.rndis_resp_t, ptr %380, i32 1
  %384 = getelementptr inbounds %struct.rndis_resp_t, ptr %380, i32 0, i32 1
  store ptr %383, ptr %384, align 8
  %385 = getelementptr inbounds %struct.rndis_resp_t, ptr %380, i32 0, i32 2
  store i32 16, ptr %385, align 4
  %386 = getelementptr inbounds %struct.rndis_resp_t, ptr %380, i32 0, i32 3
  store i32 0, ptr %386, align 8
  %387 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %387) #10
  %388 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14
  %389 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 14, i32 1
  %390 = load ptr, ptr %389, align 4
  store ptr %380, ptr %389, align 4
  store ptr %388, ptr %380, align 8
  %391 = getelementptr inbounds %struct.list_head, ptr %380, i32 0, i32 1
  store ptr %390, ptr %391, align 4
  store volatile ptr %380, ptr %390, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %392 = load i16, ptr %387, align 4
  %393 = add i16 %392, 1
  store i16 %393, ptr %387, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !11
  %394 = load ptr, ptr %384, align 8
  store i32 -2147483640, ptr %394, align 4
  %395 = getelementptr inbounds %struct.rndis_keepalive_cmplt_type, ptr %394, i32 0, i32 1
  store i32 16, ptr %395, align 4
  %396 = getelementptr inbounds %struct.rndis_keepalive_msg_type, ptr %1, i32 0, i32 2
  %397 = load i32, ptr %396, align 4
  %398 = getelementptr inbounds %struct.rndis_keepalive_cmplt_type, ptr %394, i32 0, i32 2
  store i32 %397, ptr %398, align 4
  %399 = getelementptr inbounds %struct.rndis_keepalive_cmplt_type, ptr %394, i32 0, i32 3
  store i32 0, ptr %399, align 4
  %400 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 12
  %401 = load ptr, ptr %400, align 4
  %402 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 13
  %403 = load ptr, ptr %402, align 4
  tail call void %401(ptr noundef %403) #10
  br label %406

404:                                              ; preds = %10
  %405 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rndis_msg_parser, i32 noundef %7, i32 noundef %8) #11
  br label %406

406:                                              ; preds = %404, %382, %378, %360, %356, %309, %253, %242, %236, %69, %65, %60, %55, %20, %16, %11, %5, %2
  %407 = phi i32 [ -524, %404 ], [ -12, %2 ], [ -524, %5 ], [ 0, %60 ], [ 0, %55 ], [ 0, %20 ], [ -524, %11 ], [ -12, %16 ], [ 0, %236 ], [ -524, %65 ], [ -12, %69 ], [ 0, %309 ], [ -22, %242 ], [ -12, %253 ], [ 0, %360 ], [ -12, %356 ], [ 0, %382 ], [ -12, %378 ]
  ret i32 %407
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rndis_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @ida_alloc_range(ptr noundef nonnull @rndis_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 64) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @ida_free(ptr noundef nonnull @rndis_ida, i32 noundef %5) #10
  br label %21

12:                                               ; preds = %7
  store i32 %5, ptr %9, align 8
  %13 = getelementptr inbounds %struct.rndis_params, ptr %9, i32 0, i32 1
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rndis_params, ptr %9, i32 0, i32 3
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.rndis_params, ptr %9, i32 0, i32 6
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.rndis_params, ptr %9, i32 0, i32 12
  store ptr %0, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rndis_params, ptr %9, i32 0, i32 13
  store ptr %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.rndis_params, ptr %9, i32 0, i32 14
  store volatile ptr %18, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rndis_params, ptr %9, i32 0, i32 14, i32 1
  store ptr %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.rndis_params, ptr %9, i32 0, i32 15
  store i32 0, ptr %20, align 4
  br label %21

21:                                               ; preds = %12, %11, %4, %2
  %22 = phi ptr [ %9, %12 ], [ inttoptr (i32 -12 to ptr), %11 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -19 to ptr), %4 ]
  ret ptr %22
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rndis_deregister(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4
  tail call void @kfree(ptr noundef nonnull %0) #10
  tail call void @ida_free(ptr noundef nonnull @rndis_ida, i32 noundef %4) #10
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rndis_set_param_dev(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 9
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 8
  store ptr %2, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %5, %3
  %11 = phi i32 [ 0, %7 ], [ -22, %3 ], [ -1, %5 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rndis_set_param_vendor(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = icmp eq ptr %2, null
  %5 = icmp eq ptr %0, null
  %6 = or i1 %5, %4
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 10
  store i32 %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 11
  store ptr %2, ptr %9, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i32 [ 0, %7 ], [ -1, %3 ]
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rndis_set_param_medium(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 4
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.rndis_params, ptr %0, i32 0, i32 5
  store i32 %2, ptr %7, align 4
  br label %8

8:                                                ; preds = %5, %3
  %9 = phi i32 [ 0, %5 ], [ -1, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rndis_add_hdr(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @skb_push(ptr noundef nonnull %0, i32 noundef 44) #10
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(44) %5, i8 0, i32 40, i1 false)
  store i32 1, ptr %4, align 1
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rndis_packet_msg_type, ptr %4, i32 0, i32 1
  store i32 %7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.rndis_packet_msg_type, ptr %4, i32 0, i32 2
  store i32 36, ptr %9, align 1
  %10 = load i32, ptr %6, align 8
  %11 = add i32 %10, -44
  %12 = getelementptr inbounds %struct.rndis_packet_msg_type, ptr %4, i32 0, i32 3
  store i32 %11, ptr %12, align 1
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rndis_rm_hdr(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 1
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #10
  br label %19

9:                                                ; preds = %3
  %10 = getelementptr i32, ptr %5, i32 2
  %11 = load i32, ptr %10, align 1
  %12 = add i32 %11, 8
  %13 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %12) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #10
  br label %19

16:                                               ; preds = %9
  %17 = getelementptr i32, ptr %5, i32 3
  %18 = load i32, ptr %17, align 1
  tail call void @skb_trim(ptr noundef %1, i32 noundef %18) #10
  tail call void @skb_queue_tail(ptr noundef %2, ptr noundef %1) #10
  br label %19

19:                                               ; preds = %16, %15, %8
  %20 = phi i32 [ -22, %8 ], [ 0, %16 ], [ -75, %15 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind allocsize(2) }
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
!8 = !{i64 2148953399}
!9 = !{i64 2148949223}
!10 = !{i64 2148949298, i64 2148949325, i64 2148949372, i64 2148949394, i64 2148949422, i64 2148949442}
!11 = !{i64 2148976402}
!12 = !{!"auto-init"}
