; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_ncm.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_ncm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_string = type { i8, ptr }
%struct.ndp_parser_opts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_cdc_ncm_ntb_parameters = type { i16, i16, i32, i16, i16, i16, i16, i32, i16, i16, i16, i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_ether_desc = type <{ i8, i8, i8, i8, i32, i16, i16, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_ncm_desc = type <{ i8, i8, i8, i16, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_ncm_opts = type { %struct.usb_function_instance, ptr, i8, ptr, %struct.usb_os_desc, [16 x i8], %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }
%struct.f_ncm = type { %struct.gether, i8, i8, [14 x i8], ptr, ptr, i8, %struct.atomic_t, i8, ptr, i8, i32, %struct.spinlock, ptr, ptr, ptr, i16, %struct.hrtimer }
%struct.gether = type { %struct.usb_function, ptr, ptr, ptr, i8, i16, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_os_desc_table = type { i32, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.95, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.109, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.95 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.109 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }

@__UNIQUE_ID_alias321 = internal constant [18 x i8] c"alias=usbfunc:ncm\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author323 = internal constant [23 x i8] c"author=Yauheni Kaliuta\00", section ".modinfo", align 1
@ncmusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @ncm_alloc_inst, ptr @ncm_alloc }, align 4
@.str = private unnamed_addr constant [4 x i8] c"ncm\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@ncm_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ncm_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @ncm_item_ops, ptr null, ptr @ncm_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@ncm_item_ops = internal global %struct.configfs_item_operations { ptr @ncm_attr_release, ptr null, ptr null }, align 4
@ncm_attrs = internal global [5 x ptr] [ptr @ncm_opts_attr_dev_addr, ptr @ncm_opts_attr_host_addr, ptr @ncm_opts_attr_qmult, ptr @ncm_opts_attr_ifname, ptr null], align 4
@ncm_opts_attr_dev_addr = internal global %struct.configfs_attribute { ptr @.str.4, ptr @__this_module, i16 420, ptr @ncm_opts_dev_addr_show, ptr @ncm_opts_dev_addr_store }, align 4
@ncm_opts_attr_host_addr = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @ncm_opts_host_addr_show, ptr @ncm_opts_host_addr_store }, align 4
@ncm_opts_attr_qmult = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @ncm_opts_qmult_show, ptr @ncm_opts_qmult_store }, align 4
@ncm_opts_attr_ifname = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @ncm_opts_ifname_show, ptr @ncm_opts_ifname_store }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@ncm_string_defs = internal global [5 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.10 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.11 }, %struct.usb_string { i8 0, ptr @.str.12 }, %struct.usb_string zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"cdc_network\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"CDC Network Control Model (NCM)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"CDC Network Data\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"CDC NCM\00", align 1
@ndp16_opts = internal constant %struct.ndp_parser_opts { i32 1213023054, i32 810369870, i32 12, i32 8, i32 4, i32 4, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1 }, align 4
@ntb_parameters = internal unnamed_addr constant %struct.usb_cdc_ncm_ntb_parameters { i16 28, i16 3, i32 16384, i16 4, i16 0, i16 4, i16 0, i32 16384, i16 4, i16 0, i16 4, i16 0 }, align 1
@ncm_strings = internal global [2 x ptr] [ptr @ncm_string_table, ptr null], align 4
@ncm_control_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 13, i8 0, i8 0 }, align 1
@ncm_data_nop_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 0, i8 0, i8 10, i8 0, i8 1, i8 0 }, align 1
@ncm_data_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 1, i8 2, i8 10, i8 0, i8 1, i8 0 }, align 1
@ecm_desc = internal global %struct.usb_cdc_ether_desc <{ i8 13, i8 36, i8 15, i8 0, i32 0, i16 1514, i16 0, i8 0 }>, align 1
@ncm_iad_desc = internal global %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 13, i8 0, i8 0 }, align 1
@ncm_union_desc = internal global %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 0, i8 0 }, align 1
@fs_ncm_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@fs_ncm_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@fs_ncm_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 16, i8 32, i8 0, i8 0 }>, align 1
@hs_ncm_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_ncm_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_ncm_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 16, i8 9, i8 0, i8 0 }>, align 1
@ss_ncm_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_ncm_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_ncm_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 16, i8 9, i8 0, i8 0 }>, align 1
@ncm_fs_function = internal global [12 x ptr] [ptr @ncm_iad_desc, ptr @ncm_control_intf, ptr @ncm_header_desc, ptr @ncm_union_desc, ptr @ecm_desc, ptr @ncm_desc, ptr @fs_ncm_notify_desc, ptr @ncm_data_nop_intf, ptr @ncm_data_intf, ptr @fs_ncm_in_desc, ptr @fs_ncm_out_desc, ptr null], align 4
@ncm_hs_function = internal global [12 x ptr] [ptr @ncm_iad_desc, ptr @ncm_control_intf, ptr @ncm_header_desc, ptr @ncm_union_desc, ptr @ecm_desc, ptr @ncm_desc, ptr @hs_ncm_notify_desc, ptr @ncm_data_nop_intf, ptr @ncm_data_intf, ptr @hs_ncm_in_desc, ptr @hs_ncm_out_desc, ptr null], align 4
@ncm_ss_function = internal global [15 x ptr] [ptr @ncm_iad_desc, ptr @ncm_control_intf, ptr @ncm_header_desc, ptr @ncm_union_desc, ptr @ecm_desc, ptr @ncm_desc, ptr @ss_ncm_notify_desc, ptr @ss_ncm_notify_comp_desc, ptr @ncm_data_nop_intf, ptr @ncm_data_intf, ptr @ss_ncm_in_desc, ptr @ss_ncm_bulk_comp_desc, ptr @ss_ncm_out_desc, ptr @ss_ncm_bulk_comp_desc, ptr null], align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"%s: can't bind, err %d\0A\00", align 1
@ncm_string_table = internal global %struct.usb_gadget_strings { i16 1033, ptr @ncm_string_defs }, align 4
@ncm_header_desc = internal global %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 272 }>, align 1
@ncm_desc = internal global %struct.usb_cdc_ncm_desc <{ i8 6, i8 36, i8 26, i16 256, i8 17 }>, align 1
@ss_ncm_notify_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 16 }, align 1
@ss_ncm_bulk_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 15, i8 0, i16 0 }, align 1
@ndp32_opts = internal constant %struct.ndp_parser_opts { i32 1751999342, i32 812475246, i32 16, i32 16, i32 8, i32 8, i32 2, i32 2, i32 2, i32 1, i32 2, i32 2 }, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"ncm req %02x.%02x response err %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Wrong NTH SIGN, skblen %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"HEAD:\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Wrong NTB headersize\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"OUT size exceeded\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"Bad index: %#X\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"Wrong NDP SIGN\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"Bad NDP length: %#X\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Bad dgram length: %#X\0A\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Bad CRC\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias321, ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_license322], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @ncmusb_func) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @ncmusb_func) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ncm_alloc_inst() #2 {
  %1 = alloca [1 x ptr], align 4
  %2 = alloca [1 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 260) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.f_ncm_opts, ptr %4, i32 0, i32 5
  %8 = getelementptr inbounds %struct.f_ncm_opts, ptr %4, i32 0, i32 4
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.f_ncm_opts, ptr %4, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @ncm_alloc_inst.__key) #12
  %10 = getelementptr inbounds %struct.usb_function_instance, ptr %4, i32 0, i32 4
  store ptr @ncm_free_inst, ptr %10, align 8
  %11 = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #12
  %12 = getelementptr inbounds %struct.f_ncm_opts, ptr %4, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #12
  br label %33

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.f_ncm_opts, ptr %4, i32 0, i32 4, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.f_ncm_opts, ptr %4, i32 0, i32 4, i32 1, i32 1
  store ptr %16, ptr %17, align 8
  store ptr %8, ptr %1, align 4
  store ptr @.str, ptr %2, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @ncm_func_type) #12
  %18 = call ptr @usb_os_desc_prepare_interf_dir(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @__this_module) #12
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.f_ncm_opts, ptr %4, i32 0, i32 2
  %22 = load i8, ptr %21, align 8, !range !8
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr %12, align 4
  br i1 %23, label %27, label %25

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %24, i32 1408
  call void @gether_cleanup(ptr noundef %26) #12
  br label %28

27:                                               ; preds = %20
  call void @free_netdev(ptr noundef %24) #12
  br label %28

28:                                               ; preds = %27, %25
  %29 = getelementptr inbounds %struct.f_ncm_opts, ptr %4, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  call void @kfree(ptr noundef %30) #12
  call void @kfree(ptr noundef nonnull %4) #12
  br label %33

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.f_ncm_opts, ptr %4, i32 0, i32 3
  store ptr %18, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %28, %14, %0
  %34 = phi ptr [ %11, %14 ], [ %18, %28 ], [ %4, %31 ], [ inttoptr (i32 -12 to ptr), %0 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #12
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ncm_alloc(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 280) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_ncm, ptr %3, i32 0, i32 3
  %13 = tail call i32 @gether_get_host_addr_cdc(ptr noundef %11, ptr noundef %12, i32 noundef 14) #12
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #12
  tail call void @mutex_unlock(ptr noundef %6) #12
  br label %39

16:                                               ; preds = %5
  store ptr %12, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @ncm_string_defs, i32 0, i32 1, i32 1), align 4
  %17 = getelementptr inbounds %struct.f_ncm, ptr %3, i32 0, i32 12
  store i32 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.f_ncm, ptr %3, i32 0, i32 9
  store ptr @ndp16_opts, ptr %18, align 4
  %19 = getelementptr inbounds %struct.f_ncm, ptr %3, i32 0, i32 10
  store i8 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.f_ncm, ptr %3, i32 0, i32 11
  store i32 810369870, ptr %20, align 4
  %21 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 5
  store i16 15, ptr %21, align 2
  %22 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 6
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 8
  store i32 16384, ptr %23, align 4
  %24 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 9
  store i32 16384, ptr %24, align 8
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr i8, ptr %25, i32 1408
  %27 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  tail call void @mutex_unlock(ptr noundef %6) #12
  %28 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 7
  store i8 1, ptr %28, align 8
  %29 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 10
  store i8 1, ptr %29, align 4
  store ptr @.str.9, ptr %3, align 8
  %30 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @ncm_bind, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @ncm_unbind, ptr %31, align 8
  %32 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @ncm_set_alt, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 14
  store ptr @ncm_get_alt, ptr %33, align 8
  %34 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 16
  store ptr @ncm_setup, ptr %34, align 8
  %35 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @ncm_disable, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @ncm_free, ptr %36, align 4
  %37 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 11
  store ptr @ncm_wrap_ntb, ptr %37, align 8
  %38 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 12
  store ptr @ncm_unwrap_ntb, ptr %38, align 4
  br label %39

39:                                               ; preds = %16, %15, %1
  %40 = phi ptr [ inttoptr (i32 -22 to ptr), %15 ], [ %3, %16 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %40
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ncm_free_inst(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %6, i32 1408
  tail call void @gether_cleanup(ptr noundef %8) #12
  br label %10

9:                                                ; preds = %1
  tail call void @free_netdev(ptr noundef %6) #12
  br label %10

10:                                               ; preds = %9, %7
  %11 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_os_desc_prepare_interf_dir(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_setup_name_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ncm_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_opts_dev_addr_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_dev_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #12
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_opts_dev_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_dev_addr(ptr noundef %11, ptr noundef %1) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %2, i32 %12
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -16, %8 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_dev_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_dev_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_opts_host_addr_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_host_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #12
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_opts_host_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_host_addr(ptr noundef %11, ptr noundef %1) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %2, i32 %12
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -16, %8 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_host_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_host_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_opts_qmult_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_qmult(ptr noundef %5) #12
  tail call void @mutex_unlock(ptr noundef %3) #12
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_opts_qmult_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %4, align 1
  %16 = zext i8 %15 to i32
  call void @gether_set_qmult(ptr noundef %14, i32 noundef %16) #12
  br label %17

17:                                               ; preds = %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_qmult(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_opts_ifname_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_ifname(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #12
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_opts_ifname_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #12
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_ncm_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_ifname(ptr noundef %11, ptr noundef %1, i32 noundef %2) #12
  tail call void @mutex_unlock(ptr noundef %4) #12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %2, i32 %12
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -16, %8 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_host_addr_cdc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %127

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 8
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 8) #13
  %20 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 7
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %127, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 8
  store i32 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.f_ncm_opts, ptr %12, i32 0, i32 4
  %25 = getelementptr inbounds %struct.usb_os_desc_table, ptr %19, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %10
  %27 = getelementptr inbounds %struct.f_ncm_opts, ptr %12, i32 0, i32 2
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.f_ncm_opts, ptr %12, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %31) #12
  %32 = getelementptr inbounds %struct.f_ncm_opts, ptr %12, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %4, align 4
  tail call void @gether_set_gadget(ptr noundef %33, ptr noundef %34) #12
  %35 = load ptr, ptr %32, align 4
  %36 = tail call i32 @gether_register_netdev(ptr noundef %35) #12
  tail call void @mutex_unlock(ptr noundef %31) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %110

38:                                               ; preds = %30
  store i8 1, ptr %27, align 4
  br label %39

39:                                               ; preds = %38, %26
  %40 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @ncm_strings, i32 noundef 5) #12
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = ptrtoint ptr %40 to i32
  br label %110

44:                                               ; preds = %39
  %45 = load i8, ptr %40, align 4
  store i8 %45, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_control_intf, i32 0, i32 8), align 1
  %46 = getelementptr %struct.usb_string, ptr %40, i32 2
  %47 = load i8, ptr %46, align 4
  store i8 %47, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_data_nop_intf, i32 0, i32 8), align 1
  %48 = load i8, ptr %46, align 4
  store i8 %48, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_data_intf, i32 0, i32 8), align 1
  %49 = getelementptr %struct.usb_string, ptr %40, i32 1
  %50 = load i8, ptr %49, align 4
  store i8 %50, ptr getelementptr inbounds (%struct.usb_cdc_ether_desc, ptr @ecm_desc, i32 0, i32 3), align 1
  %51 = getelementptr %struct.usb_string, ptr %40, i32 3
  %52 = load i8, ptr %51, align 4
  store i8 %52, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @ncm_iad_desc, i32 0, i32 7), align 1
  %53 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #12
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %110, label %55

55:                                               ; preds = %44
  %56 = trunc i32 %53 to i8
  %57 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 1
  store i8 %56, ptr %57, align 8
  store i8 %56, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @ncm_iad_desc, i32 0, i32 2), align 1
  store i8 %56, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_control_intf, i32 0, i32 2), align 1
  store i8 %56, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @ncm_union_desc, i32 0, i32 3), align 1
  %58 = load i8, ptr %13, align 4
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = and i32 %53, 255
  %63 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 7
  %64 = load ptr, ptr %63, align 4
  store i32 %62, ptr %64, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #12
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %110, label %68

68:                                               ; preds = %65
  %69 = trunc i32 %66 to i8
  %70 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 2
  store i8 %69, ptr %70, align 1
  store i8 %69, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_data_nop_intf, i32 0, i32 2), align 1
  store i8 %69, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ncm_data_intf, i32 0, i32 2), align 1
  store i8 %69, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @ncm_union_desc, i32 0, i32 4), align 1
  %71 = load ptr, ptr %4, align 4
  %72 = tail call ptr @usb_ep_autoconfig(ptr noundef %71, ptr noundef nonnull @fs_ncm_in_desc) #12
  %73 = icmp eq ptr %72, null
  br i1 %73, label %110, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 2
  store ptr %72, ptr %75, align 8
  %76 = load ptr, ptr %4, align 4
  %77 = tail call ptr @usb_ep_autoconfig(ptr noundef %76, ptr noundef nonnull @fs_ncm_out_desc) #12
  %78 = icmp eq ptr %77, null
  br i1 %78, label %110, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 3
  store ptr %77, ptr %80, align 4
  %81 = load ptr, ptr %4, align 4
  %82 = tail call ptr @usb_ep_autoconfig(ptr noundef %81, ptr noundef nonnull @fs_ncm_notify_desc) #12
  %83 = icmp eq ptr %82, null
  br i1 %83, label %110, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 4
  store ptr %82, ptr %85, align 8
  %86 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %82, i32 noundef 3264) #12
  %87 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 5
  store ptr %86, ptr %87, align 4
  %88 = icmp eq ptr %86, null
  br i1 %88, label %110, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %91 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %90, i32 noundef 3264, i32 noundef 16) #13
  %92 = load ptr, ptr %87, align 4
  store ptr %91, ptr %92, align 4
  %93 = load ptr, ptr %87, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %110, label %96

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.usb_request, ptr %93, i32 0, i32 8
  store ptr %1, ptr %97, align 4
  %98 = load ptr, ptr %87, align 4
  %99 = getelementptr inbounds %struct.usb_request, ptr %98, i32 0, i32 7
  store ptr @ncm_notify_complete, ptr %99, align 4
  %100 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ncm_in_desc, i32 0, i32 2), align 1
  store i8 %100, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ncm_in_desc, i32 0, i32 2), align 1
  %101 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ncm_out_desc, i32 0, i32 2), align 1
  store i8 %101, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ncm_out_desc, i32 0, i32 2), align 1
  %102 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ncm_notify_desc, i32 0, i32 2), align 1
  store i8 %102, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ncm_notify_desc, i32 0, i32 2), align 1
  store i8 %100, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ncm_in_desc, i32 0, i32 2), align 1
  store i8 %101, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ncm_out_desc, i32 0, i32 2), align 1
  store i8 %102, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ncm_notify_desc, i32 0, i32 2), align 1
  %103 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @ncm_fs_function, ptr noundef nonnull @ncm_hs_function, ptr noundef nonnull @ncm_ss_function, ptr noundef nonnull @ncm_ss_function) #12
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 13
  store ptr @ncm_open, ptr %106, align 8
  %107 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 14
  store ptr @ncm_close, ptr %107, align 4
  %108 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 17
  tail call void @hrtimer_init(ptr noundef %108, i32 noundef 1, i32 noundef 5) #12
  %109 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 17, i32 2
  store ptr @ncm_tx_timeout, ptr %109, align 8
  br label %127

110:                                              ; preds = %96, %89, %84, %79, %74, %68, %65, %44, %42, %30
  %111 = phi i32 [ %43, %42 ], [ %53, %44 ], [ %66, %65 ], [ %103, %96 ], [ -12, %89 ], [ -12, %84 ], [ -19, %79 ], [ -19, %74 ], [ -19, %68 ], [ %36, %30 ]
  %112 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 7
  %113 = load ptr, ptr %112, align 4
  tail call void @kfree(ptr noundef %113) #12
  %114 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 8
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 5
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %110
  %119 = load ptr, ptr %116, align 4
  tail call void @kfree(ptr noundef %119) #12
  %120 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 4
  %121 = load ptr, ptr %120, align 8
  %122 = load ptr, ptr %115, align 4
  tail call void @usb_ep_free_request(ptr noundef %121, ptr noundef %122) #12
  br label %123

123:                                              ; preds = %118, %110
  %124 = load ptr, ptr %4, align 4
  %125 = getelementptr inbounds %struct.usb_gadget, ptr %124, i32 0, i32 11
  %126 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.13, ptr noundef %126, i32 noundef %111) #14
  br label %127

127:                                              ; preds = %123, %105, %17, %2
  %128 = phi i32 [ %111, %123 ], [ 0, %105 ], [ -22, %2 ], [ -12, %17 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ncm_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 17
  %4 = tail call i32 @hrtimer_cancel(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 8
  store i32 0, ptr %7, align 4
  store i8 0, ptr @ncm_string_defs, align 4
  tail call void @usb_free_all_descriptors(ptr noundef %1) #12
  %8 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 7
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @usb_ep_dequeue(ptr noundef %13, ptr noundef %15) #12
  store volatile i32 0, ptr %8, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #12
  %21 = getelementptr inbounds %struct.f_ncm, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %18, align 4
  tail call void @usb_ep_free_request(ptr noundef %22, ptr noundef %23) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 8
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %103

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call i32 @usb_ep_disable(ptr noundef %16) #12
  %18 = load ptr, ptr %15, align 8
  %19 = getelementptr inbounds %struct.usb_ep, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 4
  %24 = tail call i32 @config_ep_by_speed(ptr noundef %23, ptr noundef %0, ptr noundef %18) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %103

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 8
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi ptr [ %27, %26 ], [ %18, %14 ]
  %30 = tail call i32 @usb_ep_enable(ptr noundef %29) #12
  br label %103

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, %1
  %36 = icmp ugt i32 %2, 1
  %37 = or i1 %36, %35
  br i1 %37, label %103, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.usb_ep, ptr %40, i32 0, i32 6
  %42 = load i8, ptr %41, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 13
  store ptr null, ptr %45, align 4
  tail call void @gether_disconnect(ptr noundef %0) #12
  %46 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 9
  store ptr @ndp16_opts, ptr %46, align 4
  %47 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 10
  store i8 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 11
  store i32 810369870, ptr %48, align 4
  %49 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 5
  store i16 15, ptr %49, align 2
  %50 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 6
  store i32 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 8
  store i32 16384, ptr %51, align 4
  %52 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 9
  store i32 16384, ptr %52, align 8
  br label %53

53:                                               ; preds = %44, %38
  %54 = icmp eq i32 %2, 1
  br i1 %54, label %55, label %98

55:                                               ; preds = %53
  %56 = load ptr, ptr %39, align 8
  %57 = getelementptr inbounds %struct.usb_ep, ptr %56, i32 0, i32 9
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_ep, ptr %62, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %60, %55
  %67 = load ptr, ptr %7, align 4
  %68 = tail call i32 @config_ep_by_speed(ptr noundef %67, ptr noundef %0, ptr noundef %56) #12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = tail call i32 @config_ep_by_speed(ptr noundef %71, ptr noundef %0, ptr noundef %73) #12
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %70, %60
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr inbounds %struct.usb_gadget, ptr %77, i32 0, i32 17
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 4
  %81 = lshr i32 %79, 11
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, ptr %80, align 8
  %85 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 5
  store i16 15, ptr %85, align 2
  %86 = tail call ptr @gether_connect(ptr noundef %0) #12
  %87 = icmp ugt ptr %86, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = ptrtoint ptr %86 to i32
  br label %103

90:                                               ; preds = %76
  %91 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 13
  store ptr %86, ptr %91, align 4
  br label %98

92:                                               ; preds = %70, %66
  %93 = load ptr, ptr %39, align 8
  %94 = getelementptr inbounds %struct.usb_ep, ptr %93, i32 0, i32 9
  store ptr null, ptr %94, align 4
  %95 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.usb_ep, ptr %96, i32 0, i32 9
  store ptr null, ptr %97, align 4
  br label %103

98:                                               ; preds = %90, %53
  %99 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %99) #12
  %100 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 6
  store i8 2, ptr %100, align 8
  tail call fastcc void @ncm_do_notify(ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %101 = load i16, ptr %99, align 4
  %102 = add i16 %101, 1
  store i16 %102, ptr %99, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  br label %103

103:                                              ; preds = %98, %92, %88, %31, %28, %22, %12
  %104 = phi i32 [ 0, %98 ], [ 0, %28 ], [ %89, %88 ], [ -22, %92 ], [ -22, %31 ], [ -22, %22 ], [ -22, %12 ]
  ret i32 %104
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ncm_get_alt(ptr nocapture noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 8
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 6
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ %12, %7 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_setup(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_configuration, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_composite_dev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %10 = load i16, ptr %9, align 1
  %11 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %12 = load i16, ptr %11, align 1
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %14 = load i16, ptr %13, align 1
  %15 = load i8, ptr %1, align 1
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  %21 = or i16 %17, %20
  switch i16 %21, label %123 [
    i16 8515, label %22
    i16 -24192, label %31
    i16 -24187, label %44
    i16 8582, label %57
    i16 -24189, label %70
    i16 8580, label %85
    i16 -24183, label %97
    i16 8586, label %111
  ]

22:                                               ; preds = %2
  %23 = icmp eq i16 %14, 0
  br i1 %23, label %24, label %123

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %26 = load i8, ptr %25, align 8
  %27 = zext i8 %26 to i16
  %28 = icmp eq i16 %10, %27
  br i1 %28, label %29, label %123

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 5
  store i16 %12, ptr %30, align 2
  br label %123

31:                                               ; preds = %2
  %32 = icmp eq i16 %14, 0
  %33 = icmp ne i16 %12, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %123, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %37 = load i8, ptr %36, align 8
  %38 = zext i8 %37 to i16
  %39 = icmp eq i16 %10, %38
  br i1 %39, label %40, label %123

40:                                               ; preds = %35
  %41 = tail call i16 @llvm.umin.i16(i16 %14, i16 28)
  %42 = zext i16 %41 to i32
  %43 = load ptr, ptr %8, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %43, ptr nonnull align 1 @ntb_parameters, i32 %42, i1 false)
  br label %123

44:                                               ; preds = %2
  %45 = icmp ult i16 %14, 4
  %46 = icmp ne i16 %12, 0
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %123, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %50 = load i8, ptr %49, align 8
  %51 = zext i8 %50 to i16
  %52 = icmp eq i16 %10, %51
  br i1 %52, label %53, label %123

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 9
  %55 = load i32, ptr %54, align 8
  %56 = load ptr, ptr %8, align 4
  store i32 %55, ptr %56, align 1
  br label %123

57:                                               ; preds = %2
  %58 = icmp ne i16 %14, 4
  %59 = icmp ne i16 %12, 0
  %60 = select i1 %58, i1 true, i1 %59
  br i1 %60, label %123, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %63 = load i8, ptr %62, align 8
  %64 = zext i8 %63 to i16
  %65 = icmp eq i16 %10, %64
  br i1 %65, label %66, label %123

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 7
  store ptr @ncm_ep0out_complete, ptr %67, align 4
  %68 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 1
  store i32 4, ptr %68, align 4
  %69 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 8
  store ptr %0, ptr %69, align 4
  br label %123

70:                                               ; preds = %2
  %71 = icmp ult i16 %14, 2
  %72 = icmp ne i16 %12, 0
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %123, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %76 = load i8, ptr %75, align 8
  %77 = zext i8 %76 to i16
  %78 = icmp eq i16 %10, %77
  br i1 %78, label %79, label %123

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 9
  %81 = load ptr, ptr %80, align 4
  %82 = icmp ne ptr %81, @ndp16_opts
  %83 = zext i1 %82 to i16
  %84 = load ptr, ptr %8, align 4
  store i16 %83, ptr %84, align 1
  br label %123

85:                                               ; preds = %2
  %86 = icmp eq i16 %14, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %89 = load i8, ptr %88, align 8
  %90 = zext i8 %89 to i16
  %91 = icmp eq i16 %10, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %87
  switch i16 %12, label %123 [
    i16 0, label %93
    i16 1, label %95
  ]

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 9
  store ptr @ndp16_opts, ptr %94, align 4
  br label %123

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 9
  store ptr @ndp32_opts, ptr %96, align 4
  br label %123

97:                                               ; preds = %2
  %98 = icmp ult i16 %14, 2
  %99 = icmp ne i16 %12, 0
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %123, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %103 = load i8, ptr %102, align 8
  %104 = zext i8 %103 to i16
  %105 = icmp eq i16 %10, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 10
  %108 = load i8, ptr %107, align 8, !range !8
  %109 = zext i8 %108 to i16
  %110 = load ptr, ptr %8, align 4
  store i16 %109, ptr %110, align 1
  br label %123

111:                                              ; preds = %2
  %112 = icmp eq i16 %14, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %115 = load i8, ptr %114, align 8
  %116 = zext i8 %115 to i16
  %117 = icmp eq i16 %10, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  switch i16 %12, label %123 [
    i16 0, label %119
    i16 1, label %121
  ]

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 10
  store i8 0, ptr %120, align 8
  br label %123

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 10
  store i8 1, ptr %122, align 8
  br label %123

123:                                              ; preds = %121, %119, %118, %113, %111, %106, %101, %97, %95, %93, %92, %87, %85, %79, %74, %70, %66, %61, %57, %53, %48, %44, %40, %35, %31, %29, %24, %22, %2
  %124 = phi i32 [ -95, %2 ], [ -95, %111 ], [ -95, %113 ], [ -95, %118 ], [ -95, %85 ], [ -95, %87 ], [ -95, %92 ], [ -95, %57 ], [ -95, %61 ], [ 4, %66 ], [ -95, %44 ], [ -95, %48 ], [ 4, %53 ], [ -95, %31 ], [ -95, %35 ], [ %42, %40 ], [ -95, %22 ], [ -95, %24 ], [ 0, %29 ], [ 0, %95 ], [ 0, %93 ], [ 0, %121 ], [ 0, %119 ], [ 2, %79 ], [ -95, %74 ], [ -95, %70 ], [ 2, %106 ], [ -95, %101 ], [ -95, %97 ]
  %125 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 9
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.ndp_parser_opts, ptr %126, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 10
  %130 = load i8, ptr %129, align 8, !range !8
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, i32 0, i32 16777216
  %133 = or i32 %132, %128
  %134 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 11
  store i32 %133, ptr %134, align 4
  %135 = icmp sgt i32 %124, -1
  br i1 %135, label %136, label %153

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, -262145
  store i32 %139, ptr %137, align 4
  %140 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 1
  store i32 %124, ptr %140, align 4
  %141 = load ptr, ptr %6, align 4
  %142 = getelementptr inbounds %struct.usb_gadget, ptr %141, i32 0, i32 3
  %143 = load ptr, ptr %142, align 8
  %144 = tail call i32 @usb_ep_queue(ptr noundef %143, ptr noundef %8, i32 noundef 2592) #12
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %136
  %147 = load ptr, ptr %6, align 4
  %148 = getelementptr inbounds %struct.usb_gadget, ptr %147, i32 0, i32 11
  %149 = load i8, ptr %1, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, ptr %18, align 1
  %152 = zext i8 %151 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.14, i32 noundef %150, i32 noundef %152, i32 noundef %144) #14
  br label %153

153:                                              ; preds = %146, %136, %123
  %154 = phi i32 [ %144, %146 ], [ %144, %136 ], [ %124, %123 ]
  ret i32 %154
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ncm_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 13
  store ptr null, ptr %8, align 4
  tail call void @gether_disconnect(ptr noundef %0) #12
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.usb_ep, ptr %11, i32 0, i32 6
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = tail call i32 @usb_ep_disable(ptr noundef %11) #12
  %17 = load ptr, ptr %10, align 8
  %18 = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 9
  store ptr null, ptr %18, align 4
  br label %19

19:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ncm_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.f_ncm_opts, ptr %3, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.f_ncm_opts, ptr %3, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ncm_wrap_ntb(ptr noundef %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %125, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ndp_parser_opts, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 2
  %12 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 10
  %13 = load i8, ptr %12, align 8, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %17, i32 noundef %19) #15
  %21 = xor i32 %20, -1
  %22 = tail call ptr @skb_put(ptr noundef nonnull %1, i32 noundef 4) #12
  store i32 %21, ptr %22, align 1
  br label %23

23:                                               ; preds = %15, %4
  %24 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 16
  %29 = load i16, ptr %28, align 8
  %30 = icmp ugt i16 %29, 31
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = shl i32 %10, 3
  %41 = add i32 %40, 8
  %42 = add i32 %41, %33
  %43 = add i32 %42, %35
  %44 = add i32 %43, %39
  %45 = icmp ugt i32 %44, %6
  br i1 %45, label %46, label %89

46:                                               ; preds = %31, %27
  %47 = tail call fastcc ptr @package_for_tx(ptr noundef %0)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %138, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %24, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %89

52:                                               ; preds = %49, %23
  %53 = phi ptr [ %47, %49 ], [ null, %23 ]
  %54 = getelementptr inbounds %struct.ndp_parser_opts, ptr %8, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 3
  %57 = and i32 %56, -4
  %58 = tail call ptr @__alloc_skb(i32 noundef %6, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  store ptr %58, ptr %24, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %138, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 13
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.anon.41, ptr %58, i32 0, i32 2
  store ptr %62, ptr %63, align 8
  %64 = load ptr, ptr %24, align 8
  %65 = tail call ptr @skb_put(ptr noundef %64, i32 noundef %57) #12
  tail call void @llvm.memset.p0.i32(ptr align 1 %65, i8 0, i32 %57, i1 false) #12
  %66 = load i32, ptr %8, align 4
  store i32 %66, ptr %65, align 1
  %67 = getelementptr i16, ptr %65, i32 2
  %68 = load i32, ptr %54, align 4
  %69 = trunc i32 %68 to i16
  store i16 %69, ptr %67, align 1
  %70 = getelementptr inbounds %struct.ndp_parser_opts, ptr %8, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.ndp_parser_opts, ptr %8, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = shl i32 %73, 5
  %75 = add i32 %74, %71
  %76 = tail call ptr @__alloc_skb(i32 noundef %75, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %77 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 15
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %138, label %79

79:                                               ; preds = %60
  %80 = load ptr, ptr %61, align 4
  %81 = getelementptr inbounds %struct.anon.41, ptr %76, i32 0, i32 2
  store ptr %80, ptr %81, align 8
  %82 = load ptr, ptr %77, align 4
  %83 = load i32, ptr %70, align 4
  %84 = tail call ptr @skb_put(ptr noundef %82, i32 noundef %83) #12
  tail call void @llvm.memset.p0.i32(ptr align 2 %84, i8 0, i32 %57, i1 false)
  %85 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 11
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %84, align 1
  %87 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 16
  store i16 1, ptr %87, align 8
  %88 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 17
  tail call void @hrtimer_start_range_ns(ptr noundef %88, i64 noundef 300000, i64 noundef 0, i32 noundef 5) #12
  br label %89

89:                                               ; preds = %79, %49, %31
  %90 = phi ptr [ %53, %79 ], [ %47, %49 ], [ null, %31 ]
  %91 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 15
  %92 = load ptr, ptr %91, align 4
  %93 = tail call ptr @skb_put(ptr noundef %92, i32 noundef %11) #12
  tail call void @llvm.memset.p0.i32(ptr align 1 %93, i8 0, i32 %11, i1 false) #12
  %94 = load ptr, ptr %24, align 8
  %95 = getelementptr inbounds %struct.sk_buff, ptr %94, i32 0, i32 5
  %96 = load i32, ptr %95, align 8
  %97 = add i32 %96, 3
  %98 = and i32 %97, -4
  %99 = sub i32 %98, %96
  %100 = load i32, ptr %9, align 4
  switch i32 %100, label %104 [
    i32 1, label %101
    i32 2, label %103
  ]

101:                                              ; preds = %89
  %102 = trunc i32 %98 to i16
  store i16 %102, ptr %93, align 1
  br label %105

103:                                              ; preds = %89
  store i32 %98, ptr %93, align 1
  br label %105

104:                                              ; preds = %89
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #12, !srcloc !14
  unreachable

105:                                              ; preds = %103, %101
  %106 = getelementptr i16, ptr %93, i32 %100
  %107 = load i32, ptr %9, align 4
  %108 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %109 = load i32, ptr %108, align 8
  switch i32 %107, label %113 [
    i32 1, label %110
    i32 2, label %112
  ]

110:                                              ; preds = %105
  %111 = trunc i32 %109 to i16
  store i16 %111, ptr %106, align 1
  br label %114

112:                                              ; preds = %105
  store i32 %109, ptr %106, align 1
  br label %114

113:                                              ; preds = %105
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #12, !srcloc !14
  unreachable

114:                                              ; preds = %112, %110
  %115 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 16
  %116 = load i16, ptr %115, align 8
  %117 = add i16 %116, 1
  store i16 %117, ptr %115, align 8
  %118 = load ptr, ptr %24, align 8
  %119 = tail call ptr @skb_put(ptr noundef %118, i32 noundef %99) #12
  tail call void @llvm.memset.p0.i32(ptr align 1 %119, i8 0, i32 %99, i1 false) #12
  %120 = load ptr, ptr %24, align 8
  %121 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %122 = load ptr, ptr %121, align 4
  %123 = load i32, ptr %108, align 8
  %124 = tail call ptr @skb_put(ptr noundef %120, i32 noundef %123) #12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %124, ptr align 1 %122, i32 %123, i1 false) #12
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 0) #12
  br label %154

125:                                              ; preds = %2
  %126 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 14
  %127 = load ptr, ptr %126, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %154, label %129

129:                                              ; preds = %125
  %130 = tail call fastcc ptr @package_for_tx(ptr noundef %0)
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %154

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 13
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.net_device, ptr %134, i32 0, i32 36, i32 7
  %136 = load i32, ptr %135, align 4
  %137 = add i32 %136, 1
  store i32 %137, ptr %135, align 4
  br label %144

138:                                              ; preds = %60, %52, %46
  %139 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 13
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.net_device, ptr %140, i32 0, i32 36, i32 7
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #12
  br label %144

144:                                              ; preds = %138, %132
  %145 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 14
  %146 = load ptr, ptr %145, align 8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %146, i32 noundef 1) #12
  br label %149

149:                                              ; preds = %148, %144
  %150 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 15
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %151, i32 noundef 1) #12
  br label %154

154:                                              ; preds = %153, %149, %129, %125, %114
  %155 = phi ptr [ %90, %114 ], [ %130, %129 ], [ null, %125 ], [ null, %153 ], [ null, %149 ]
  ret ptr %155
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_unwrap_ntb(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = load i16, ptr getelementptr inbounds (%struct.usb_cdc_ether_desc, ptr @ecm_desc, i32 0, i32 5), align 1
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 10
  %11 = load i8, ptr %10, align 8, !range !8
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 0, i32 -4
  %14 = select i1 %12, i32 0, i32 4
  %15 = load i32, ptr %5, align 1
  %16 = load i32, ptr %9, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_configuration, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_gadget, ptr %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.15, i32 noundef %26) #14
  %27 = load ptr, ptr %4, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 32, i32 noundef 1, ptr noundef %27, i32 noundef 32, i1 noundef zeroext false) #12
  br label %272

28:                                               ; preds = %3
  %29 = getelementptr i16, ptr %5, i32 2
  %30 = load i16, ptr %29, align 1
  %31 = zext i16 %30 to i32
  %32 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %31
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.usb_configuration, ptr %37, i32 0, i32 9
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_gadget, ptr %40, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.18) #14
  br label %272

42:                                               ; preds = %28
  %43 = getelementptr i16, ptr %5, i32 4
  %44 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  switch i32 %45, label %51 [
    i32 1, label %46
    i32 2, label %49
  ]

46:                                               ; preds = %42
  %47 = load i16, ptr %43, align 1
  %48 = zext i16 %47 to i32
  br label %52

49:                                               ; preds = %42
  %50 = load i32, ptr %43, align 1
  br label %52

51:                                               ; preds = %42
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %50, %49 ], [ %48, %46 ]
  %54 = getelementptr i16, ptr %43, i32 %45
  %55 = icmp ugt i32 %53, 16384
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.usb_configuration, ptr %58, i32 0, i32 9
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.usb_gadget, ptr %61, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.19) #14
  br label %272

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 8
  %65 = load i32, ptr %64, align 4
  switch i32 %65, label %71 [
    i32 1, label %66
    i32 2, label %69
  ]

66:                                               ; preds = %63
  %67 = load i16, ptr %54, align 1
  %68 = zext i16 %67 to i32
  br label %72

69:                                               ; preds = %63
  %70 = load i32, ptr %54, align 1
  br label %72

71:                                               ; preds = %63
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

72:                                               ; preds = %69, %66
  %73 = phi i32 [ %70, %69 ], [ %68, %66 ]
  %74 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 3
  %75 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 11
  %76 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 6
  %77 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 5
  %78 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 9
  %79 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 11
  %80 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 10
  %81 = getelementptr inbounds %struct.ndp_parser_opts, ptr %9, i32 0, i32 4
  %82 = add nuw nsw i32 %14, 14
  %83 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 13
  br label %84

84:                                               ; preds = %270, %72
  %85 = phi i32 [ %73, %72 ], [ %147, %270 ]
  %86 = and i32 %85, 3
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load i32, ptr %32, align 4
  %90 = icmp ult i32 %85, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr %74, align 4
  %93 = sub i32 %53, %92
  %94 = icmp ugt i32 %85, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %91, %88, %84
  %96 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.usb_configuration, ptr %97, i32 0, i32 9
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.usb_gadget, ptr %100, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.20, i32 noundef %85) #14
  br label %272

102:                                              ; preds = %91
  %103 = load ptr, ptr %4, align 4
  %104 = getelementptr i8, ptr %103, i32 %85
  %105 = load i32, ptr %104, align 1
  %106 = load i32, ptr %75, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.usb_configuration, ptr %110, i32 0, i32 9
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.usb_gadget, ptr %113, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %114, ptr noundef nonnull @.str.21) #14
  br label %272

115:                                              ; preds = %102
  %116 = getelementptr i16, ptr %104, i32 2
  %117 = getelementptr i16, ptr %104, i32 3
  %118 = load i16, ptr %116, align 1
  %119 = zext i16 %118 to i32
  %120 = load i32, ptr %76, align 4
  %121 = shl i32 %120, 3
  %122 = add i32 %121, %92
  %123 = icmp ugt i32 %122, %119
  br i1 %123, label %128, label %124

124:                                              ; preds = %115
  %125 = load i32, ptr %77, align 4
  %126 = urem i32 %119, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %124, %115
  %129 = zext i16 %118 to i32
  %130 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.usb_configuration, ptr %131, i32 0, i32 9
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.usb_gadget, ptr %134, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %135, ptr noundef nonnull @.str.22, i32 noundef %129) #14
  br label %272

136:                                              ; preds = %124
  %137 = load i32, ptr %78, align 4
  %138 = getelementptr i16, ptr %117, i32 %137
  %139 = load i32, ptr %79, align 4
  switch i32 %139, label %145 [
    i32 1, label %140
    i32 2, label %143
  ]

140:                                              ; preds = %136
  %141 = load i16, ptr %138, align 1
  %142 = zext i16 %141 to i32
  br label %146

143:                                              ; preds = %136
  %144 = load i32, ptr %138, align 1
  br label %146

145:                                              ; preds = %136
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

146:                                              ; preds = %143, %140
  %147 = phi i32 [ %144, %143 ], [ %142, %140 ]
  %148 = getelementptr i16, ptr %138, i32 %139
  %149 = load i32, ptr %80, align 4
  %150 = getelementptr i16, ptr %148, i32 %149
  %151 = sub i32 %119, %92
  switch i32 %120, label %152 [
    i32 1, label %153
    i32 2, label %159
  ]

152:                                              ; preds = %146
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

153:                                              ; preds = %146
  %154 = load i16, ptr %150, align 1
  %155 = zext i16 %154 to i32
  %156 = getelementptr i16, ptr %150, i32 1
  %157 = load i16, ptr %156, align 1
  %158 = zext i16 %157 to i32
  br label %163

159:                                              ; preds = %146
  %160 = load i32, ptr %150, align 1
  %161 = getelementptr i16, ptr %150, i32 2
  %162 = load i32, ptr %161, align 1
  br label %163

163:                                              ; preds = %159, %153
  %164 = phi i32 [ %160, %159 ], [ %155, %153 ]
  %165 = phi i32 [ %162, %159 ], [ %158, %153 ]
  %166 = icmp ult i32 %164, %89
  br i1 %166, label %179, label %167

167:                                              ; preds = %163
  %168 = getelementptr i16, ptr %150, i32 %120
  %169 = getelementptr i16, ptr %168, i32 %120
  br label %170

170:                                              ; preds = %267, %167
  %171 = phi i32 [ %151, %167 ], [ %265, %267 ]
  %172 = phi i32 [ %165, %167 ], [ %232, %267 ]
  %173 = phi i32 [ %164, %167 ], [ %231, %267 ]
  %174 = phi ptr [ %169, %167 ], [ %234, %267 ]
  %175 = phi i32 [ %120, %167 ], [ %263, %267 ]
  %176 = load i32, ptr %81, align 4
  %177 = sub i32 %53, %176
  %178 = icmp ugt i32 %173, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %267, %170, %163
  %180 = phi i32 [ %173, %170 ], [ %231, %267 ], [ %164, %163 ]
  %181 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.usb_configuration, ptr %182, i32 0, i32 9
  %184 = load ptr, ptr %183, align 4
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.usb_gadget, ptr %185, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %186, ptr noundef nonnull @.str.20, i32 noundef %180) #14
  br label %272

187:                                              ; preds = %170
  %188 = icmp ult i32 %172, %82
  %189 = icmp ugt i32 %172, %7
  %190 = select i1 %188, i1 true, i1 %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %193 = load ptr, ptr %192, align 4
  %194 = getelementptr inbounds %struct.usb_configuration, ptr %193, i32 0, i32 9
  %195 = load ptr, ptr %194, align 4
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.usb_gadget, ptr %196, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %197, ptr noundef nonnull @.str.23, i32 noundef %172) #14
  br label %272

198:                                              ; preds = %187
  %199 = load i8, ptr %10, align 8, !range !8
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %218, label %201

201:                                              ; preds = %198
  %202 = load ptr, ptr %4, align 4
  %203 = getelementptr i8, ptr %202, i32 %173
  %204 = getelementptr i8, ptr %203, i32 %13
  %205 = getelementptr i8, ptr %204, i32 %172
  %206 = load i32, ptr %205, align 1
  %207 = sub i32 %172, %14
  %208 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %203, i32 noundef %207) #15
  %209 = xor i32 %208, -1
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %218, label %211

211:                                              ; preds = %201
  %212 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.usb_configuration, ptr %213, i32 0, i32 9
  %215 = load ptr, ptr %214, align 4
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.usb_gadget, ptr %216, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %217, ptr noundef nonnull @.str.24) #14
  br label %272

218:                                              ; preds = %201, %198
  switch i32 %175, label %219 [
    i32 1, label %220
    i32 2, label %226
  ]

219:                                              ; preds = %218
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 516, 0\0A.popsection", ""() #12, !srcloc !15
  unreachable

220:                                              ; preds = %218
  %221 = load i16, ptr %174, align 1
  %222 = zext i16 %221 to i32
  %223 = getelementptr i16, ptr %174, i32 1
  %224 = load i16, ptr %223, align 1
  %225 = zext i16 %224 to i32
  br label %230

226:                                              ; preds = %218
  %227 = load i32, ptr %174, align 1
  %228 = getelementptr i16, ptr %174, i32 2
  %229 = load i32, ptr %228, align 1
  br label %230

230:                                              ; preds = %226, %220
  %231 = phi i32 [ %227, %226 ], [ %222, %220 ]
  %232 = phi i32 [ %229, %226 ], [ %225, %220 ]
  %233 = getelementptr i16, ptr %174, i32 %175
  %234 = getelementptr i16, ptr %233, i32 %175
  %235 = icmp ugt i32 %231, %177
  br i1 %235, label %236, label %243

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.usb_configuration, ptr %238, i32 0, i32 9
  %240 = load ptr, ptr %239, align 4
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.usb_gadget, ptr %241, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %242, ptr noundef nonnull @.str.20, i32 noundef %231) #14
  br label %272

243:                                              ; preds = %230
  %244 = load ptr, ptr %83, align 4
  %245 = sub i32 %172, %14
  %246 = add i32 %245, 2
  %247 = tail call ptr @__netdev_alloc_skb(ptr noundef %244, i32 noundef %246, i32 noundef 2592) #12
  %248 = icmp eq ptr %247, null
  br i1 %248, label %272, label %249

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.sk_buff, ptr %247, i32 0, i32 17
  %251 = load ptr, ptr %250, align 4
  %252 = getelementptr i8, ptr %251, i32 2
  store ptr %252, ptr %250, align 4
  %253 = getelementptr inbounds %struct.sk_buff, ptr %247, i32 0, i32 14
  %254 = load ptr, ptr %253, align 8
  %255 = getelementptr i8, ptr %254, i32 2
  store ptr %255, ptr %253, align 8
  %256 = load ptr, ptr %4, align 4
  %257 = getelementptr i8, ptr %256, i32 %173
  %258 = tail call ptr @skb_put(ptr noundef nonnull %247, i32 noundef %245) #12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %258, ptr align 1 %257, i32 %245, i1 false) #12
  tail call void @skb_queue_tail(ptr noundef %2, ptr noundef nonnull %247) #12
  %259 = icmp eq i32 %231, 0
  %260 = icmp eq i32 %232, 0
  %261 = select i1 %259, i1 true, i1 %260
  br i1 %261, label %270, label %262

262:                                              ; preds = %249
  %263 = load i32, ptr %76, align 4
  %264 = shl i32 %263, 2
  %265 = sub i32 %171, %264
  %266 = icmp ugt i32 %265, %264
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i32, ptr %32, align 4
  %269 = icmp ult i32 %231, %268
  br i1 %269, label %179, label %170

270:                                              ; preds = %262, %249
  %271 = icmp eq i32 %147, 0
  br i1 %271, label %273, label %84

272:                                              ; preds = %243, %236, %211, %191, %179, %128, %108, %95, %56, %35, %18
  tail call void @skb_queue_purge(ptr noundef %2) #12
  br label %273

273:                                              ; preds = %272, %270
  %274 = phi i32 [ 1, %272 ], [ 0, %270 ]
  %275 = phi i32 [ -22, %272 ], [ 0, %270 ]
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef %274) #12
  ret i32 %275
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_gadget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ncm_notify_complete(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.f_ncm, ptr %4, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  switch i32 %7, label %14 [
    i32 0, label %8
    i32 -104, label %11
    i32 -108, label %11
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.f_ncm, ptr %4, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #12, !srcloc !16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #12, !srcloc !17
  br label %17

11:                                               ; preds = %2, %2
  %12 = getelementptr inbounds %struct.f_ncm, ptr %4, i32 0, i32 7
  store volatile i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.f_ncm, ptr %4, i32 0, i32 6
  store i8 0, ptr %13, align 8
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.f_ncm, ptr %4, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #12, !srcloc !16
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #12, !srcloc !17
  br label %17

17:                                               ; preds = %14, %11, %8
  tail call fastcc void @ncm_do_notify(ptr noundef %4)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %18 = load i16, ptr %5, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ncm_open(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 8
  store i8 1, ptr %3, align 8
  %4 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 6
  store i8 2, ptr %4, align 8
  tail call fastcc void @ncm_do_notify(ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %5 = load i16, ptr %2, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ncm_close(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %2) #12
  %3 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 8
  store i8 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 6
  store i8 2, ptr %4, align 8
  tail call fastcc void @ncm_do_notify(ptr noundef %0) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %5 = load i16, ptr %2, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ncm_tx_timeout(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.net_device_ops, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef null, ptr noundef nonnull %3) #12
  br label %11

11:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ncm_do_notify(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 7
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %69

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 6
  %14 = load i8, ptr %13, align 8
  switch i8 %14, label %54 [
    i8 0, label %69
    i8 1, label %15
    i8 2, label %23
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 1
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 8
  %18 = load i8, ptr %17, align 8, !range !8
  %19 = zext i8 %18 to i16
  %20 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 2
  store i16 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 4
  store i16 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 1
  store i32 8, ptr %22, align 4
  br label %52

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 1
  store i8 42, ptr %24, align 1
  %25 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 2
  store i16 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 4
  store i16 8, ptr %26, align 1
  %27 = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 1
  store i32 16, ptr %27, align 4
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 8
  %33 = icmp ult i32 %32, 5
  br i1 %33, label %40, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 5
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = icmp eq i32 %36, 5
  br i1 %39, label %49, label %45

40:                                               ; preds = %23
  %41 = icmp ult i32 %32, 3
  br i1 %41, label %48, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = phi i32 [ %44, %42 ], [ %36, %38 ]
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %45, %38, %34
  %50 = phi i32 [ 9728000, %48 ], [ -44967296, %34 ], [ -544967296, %38 ], [ 425984000, %45 ]
  store i32 %50, ptr %29, align 4
  %51 = getelementptr i8, ptr %28, i32 12
  store i32 %50, ptr %51, align 4
  br label %52

52:                                               ; preds = %49, %15
  %53 = phi i8 [ 1, %49 ], [ 0, %15 ]
  store i8 %53, ptr %13, align 8
  br label %54

54:                                               ; preds = %52, %11
  store i8 -95, ptr %12, align 1
  %55 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 1
  %56 = load i8, ptr %55, align 8
  %57 = zext i8 %56 to i16
  %58 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 3
  store i16 %57, ptr %58, align 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #12, !srcloc !16
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #12, !srcloc !18
  %60 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  %61 = load i16, ptr %60, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %60, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %63 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 4
  %64 = load ptr, ptr %63, align 8
  %65 = tail call i32 @usb_ep_queue(ptr noundef %64, ptr noundef %3, i32 noundef 2592) #12
  tail call void @_raw_spin_lock(ptr noundef %60) #12
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #12, !srcloc !16
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #12, !srcloc !17
  br label %69

69:                                               ; preds = %67, %54, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_dequeue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ncm_ep0out_complete(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  store ptr null, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 4
  %16 = load i32, ptr %15, align 1
  %17 = add i32 %16, -16385
  %18 = icmp ult i32 %17, -14337
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.gether, ptr %4, i32 0, i32 9
  store i32 %16, ptr %20, align 8
  br label %23

21:                                               ; preds = %14, %8, %2
  %22 = tail call i32 @usb_ep_set_halt(ptr noundef %0) #12
  br label %23

23:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @package_for_tx(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ndp_parser_opts, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 2
  %7 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 17
  %8 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %7) #12
  %9 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 3
  %14 = and i32 %13, -4
  %15 = add i32 %14, %6
  %16 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %15, %19
  %21 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i16, ptr %22, i32 4
  %24 = getelementptr inbounds %struct.ndp_parser_opts, ptr %3, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %29 [
    i32 1, label %26
    i32 2, label %28
  ]

26:                                               ; preds = %1
  %27 = trunc i32 %20 to i16
  store i16 %27, ptr %23, align 1
  br label %30

28:                                               ; preds = %1
  store i32 %20, ptr %23, align 1
  br label %30

29:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #12, !srcloc !14
  unreachable

30:                                               ; preds = %28, %26
  %31 = getelementptr i16, ptr %23, i32 %25
  %32 = getelementptr inbounds %struct.ndp_parser_opts, ptr %3, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  switch i32 %33, label %37 [
    i32 1, label %34
    i32 2, label %36
  ]

34:                                               ; preds = %30
  %35 = trunc i32 %14 to i16
  store i16 %35, ptr %31, align 1
  br label %38

36:                                               ; preds = %30
  store i32 %14, ptr %31, align 1
  br label %38

37:                                               ; preds = %30
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/gadget/function/f_ncm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #12, !srcloc !14
  unreachable

38:                                               ; preds = %36, %34
  %39 = getelementptr inbounds %struct.ndp_parser_opts, ptr %3, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.f_ncm, ptr %0, i32 0, i32 16
  %42 = load i16, ptr %41, align 8
  %43 = zext i16 %42 to i32
  %44 = mul i32 %6, %43
  %45 = add i32 %44, %40
  store i16 0, ptr %41, align 8
  %46 = load ptr, ptr %16, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 17
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i16, ptr %48, i32 2
  %50 = trunc i32 %45 to i16
  store i16 %50, ptr %49, align 1
  %51 = load ptr, ptr %9, align 8
  store ptr null, ptr %9, align 8
  %52 = sub i32 %14, %12
  %53 = tail call ptr @skb_put(ptr noundef %51, i32 noundef %52) #12
  tail call void @llvm.memset.p0.i32(ptr align 1 %53, i8 0, i32 %52, i1 false) #12
  %54 = load ptr, ptr %16, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 17
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 5
  %58 = load i32, ptr %57, align 8
  %59 = tail call ptr @skb_put(ptr noundef %51, i32 noundef %58) #12
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %59, ptr align 1 %56, i32 %58, i1 false) #12
  %60 = load ptr, ptr %16, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %60, i32 noundef 0) #12
  store ptr null, ptr %16, align 4
  %61 = tail call ptr @skb_put(ptr noundef %51, i32 noundef %6) #12
  tail call void @llvm.memset.p0.i32(ptr align 1 %61, i8 0, i32 %6, i1 false) #12
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 2149276861}
!11 = !{i64 2149272685}
!12 = !{i64 2149272760, i64 2149272787, i64 2149272834, i64 2149272856, i64 2149272884, i64 2149272904}
!13 = !{i64 2149299864}
!14 = !{i64 2154823311, i64 2154823811, i64 2154823348, i64 2154823404, i64 2154823438, i64 2154823462, i64 2154823503, i64 2154823524, i64 2154823552, i64 2154823586}
!15 = !{i64 2154824442, i64 2154824942, i64 2154824479, i64 2154824535, i64 2154824569, i64 2154824593, i64 2154824634, i64 2154824655, i64 2154824683, i64 2154824717}
!16 = !{i64 455618, i64 2147945589, i64 2147945615, i64 2147945662, i64 2147945684, i64 2147945712, i64 2147945732}
!17 = !{i64 2147960158, i64 2147960184, i64 2147960213, i64 2147960247, i64 2147960278, i64 2147960301}
!18 = !{i64 2147957801, i64 2147957827, i64 2147957856, i64 2147957890, i64 2147957921, i64 2147957944}
