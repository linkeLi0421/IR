; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_rndis.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_rndis.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rndis_borrow_net:\09\09\09\09\09"
module asm "\09.asciz \09\22rndis_borrow_net\22\09\09\09\09\09"
module asm "__kstrtabns_rndis_borrow_net:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_call_mgmt_descriptor = type { i8, i8, i8, i8, i8 }
%struct.usb_cdc_acm_descriptor = type { i8, i8, i8, i8 }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_rndis_opts = type { %struct.usb_function_instance, i32, ptr, ptr, i8, i8, ptr, %struct.usb_os_desc, [16 x i8], i8, i8, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }
%struct.f_rndis = type { %struct.gether, i8, i8, [6 x i8], i32, ptr, ptr, ptr, ptr, %struct.atomic_t }
%struct.gether = type { %struct.usb_function, ptr, ptr, ptr, i8, i16, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_os_desc_table = type { i32, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__kstrtab_rndis_borrow_net = external dso_local constant [0 x i8], align 1
@__kstrtabns_rndis_borrow_net = external dso_local constant [0 x i8], align 1
@__ksymtab_rndis_borrow_net = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rndis_borrow_net to i32), ptr @__kstrtab_rndis_borrow_net, ptr @__kstrtabns_rndis_borrow_net }, section "___ksymtab_gpl+rndis_borrow_net", align 4
@__UNIQUE_ID_alias320 = internal constant [20 x i8] c"alias=usbfunc:rndis\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [22 x i8] c"author=David Brownell\00", section ".modinfo", align 1
@rndisusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @rndis_alloc_inst, ptr @rndis_alloc }, align 4
@.str = private unnamed_addr constant [6 x i8] c"rndis\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@rndis_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@rndis_iad_descriptor = internal global %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 6, i8 0, i8 0 }, align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rndis_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @rndis_item_ops, ptr null, ptr @rndis_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@rndis_item_ops = internal global %struct.configfs_item_operations { ptr @rndis_attr_release, ptr null, ptr null }, align 4
@rndis_attrs = internal global [8 x ptr] [ptr @rndis_opts_attr_dev_addr, ptr @rndis_opts_attr_host_addr, ptr @rndis_opts_attr_qmult, ptr @rndis_opts_attr_ifname, ptr @rndis_opts_attr_class, ptr @rndis_opts_attr_subclass, ptr @rndis_opts_attr_protocol, ptr null], align 4
@rndis_opts_attr_dev_addr = internal global %struct.configfs_attribute { ptr @.str.4, ptr @__this_module, i16 420, ptr @rndis_opts_dev_addr_show, ptr @rndis_opts_dev_addr_store }, align 4
@rndis_opts_attr_host_addr = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @rndis_opts_host_addr_show, ptr @rndis_opts_host_addr_store }, align 4
@rndis_opts_attr_qmult = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @rndis_opts_qmult_show, ptr @rndis_opts_qmult_store }, align 4
@rndis_opts_attr_ifname = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @rndis_opts_ifname_show, ptr @rndis_opts_ifname_store }, align 4
@rndis_opts_attr_class = internal global %struct.configfs_attribute { ptr @.str.9, ptr @__this_module, i16 420, ptr @rndis_opts_class_show, ptr @rndis_opts_class_store }, align 4
@rndis_opts_attr_subclass = internal global %struct.configfs_attribute { ptr @.str.12, ptr @__this_module, i16 420, ptr @rndis_opts_subclass_show, ptr @rndis_opts_subclass_store }, align 4
@rndis_opts_attr_protocol = internal global %struct.configfs_attribute { ptr @.str.13, ptr @__this_module, i16 420, ptr @rndis_opts_protocol_show, ptr @rndis_opts_protocol_store }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%02hhx\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"subclass\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@rndis_strings = internal global [2 x ptr] [ptr @rndis_string_table, ptr null], align 4
@rndis_control_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 2, i8 -1, i8 0 }, align 1
@rndis_data_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i8 0 }, align 1
@rndis_union_desc = internal global %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 0, i8 0 }, align 1
@fs_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@fs_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@fs_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 8, i8 32, i8 0, i8 0 }>, align 1
@hs_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 8, i8 9, i8 0, i8 0 }>, align 1
@ss_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 8, i8 9, i8 0, i8 0 }>, align 1
@eth_fs_function = internal global [11 x ptr] [ptr @rndis_iad_descriptor, ptr @rndis_control_intf, ptr @header_desc, ptr @call_mgmt_descriptor, ptr @rndis_acm_descriptor, ptr @rndis_union_desc, ptr @fs_notify_desc, ptr @rndis_data_intf, ptr @fs_in_desc, ptr @fs_out_desc, ptr null], align 4
@eth_hs_function = internal global [11 x ptr] [ptr @rndis_iad_descriptor, ptr @rndis_control_intf, ptr @header_desc, ptr @call_mgmt_descriptor, ptr @rndis_acm_descriptor, ptr @rndis_union_desc, ptr @hs_notify_desc, ptr @rndis_data_intf, ptr @hs_in_desc, ptr @hs_out_desc, ptr null], align 4
@eth_ss_function = internal global [14 x ptr] [ptr @rndis_iad_descriptor, ptr @rndis_control_intf, ptr @header_desc, ptr @call_mgmt_descriptor, ptr @rndis_acm_descriptor, ptr @rndis_union_desc, ptr @ss_notify_desc, ptr @ss_intr_comp_desc, ptr @rndis_data_intf, ptr @ss_in_desc, ptr @ss_bulk_comp_desc, ptr @ss_out_desc, ptr @ss_bulk_comp_desc, ptr null], align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"%s: can't bind, err %d\0A\00", align 1
@rndis_string_table = internal global %struct.usb_gadget_strings { i16 1033, ptr @rndis_string_defs }, align 4
@rndis_string_defs = internal global [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.15 }, %struct.usb_string { i8 0, ptr @.str.16 }, %struct.usb_string { i8 0, ptr @.str.17 }, %struct.usb_string zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"RNDIS Communications Control\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"RNDIS Ethernet Data\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"RNDIS\00", align 1
@header_desc = internal global %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 272 }>, align 1
@call_mgmt_descriptor = internal global %struct.usb_cdc_call_mgmt_descriptor { i8 5, i8 36, i8 1, i8 0, i8 1 }, align 1
@rndis_acm_descriptor = internal global %struct.usb_cdc_acm_descriptor { i8 4, i8 36, i8 2, i8 0 }, align 1
@ss_intr_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 8 }, align 1
@ss_bulk_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"rndis response on err %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"\013RNDIS command error %d, %d/%d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias320, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_license321, ptr @__ksymtab_rndis_borrow_net], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rndis_borrow_net(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4, !range !8
  %5 = icmp eq i8 %4, 0
  %6 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr i8, ptr %7, i32 1408
  tail call void @gether_cleanup(ptr noundef %9) #8
  br label %11

10:                                               ; preds = %2
  tail call void @free_netdev(ptr noundef %7) #8
  br label %11

11:                                               ; preds = %10, %8
  store i8 1, ptr %3, align 4
  %12 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 5
  store i8 1, ptr %12, align 1
  %13 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  store ptr %1, ptr %13, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @rndisusb_func) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @rndisusb_func) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rndis_alloc_inst() #0 {
  %1 = alloca [1 x ptr], align 4
  %2 = alloca [1 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 272) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 8
  %8 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 7
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @rndis_alloc_inst.__key) #8
  %10 = getelementptr inbounds %struct.usb_function_instance, ptr %4, i32 0, i32 4
  store ptr @rndis_free_inst, ptr %10, align 8
  %11 = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #8
  %12 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 3
  store ptr %11, ptr %12, align 4
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #8
  br label %43

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 7, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 7, i32 1, i32 1
  store ptr %16, ptr %17, align 8
  %18 = load i8, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 4), align 1
  %19 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 9
  store i8 %18, ptr %19, align 4
  %20 = load i8, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 5), align 1
  %21 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 10
  store i8 %20, ptr %21, align 1
  %22 = load i8, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 6), align 1
  %23 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 11
  store i8 %22, ptr %23, align 2
  store ptr %8, ptr %1, align 4
  store ptr @.str, ptr %2, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, ptr noundef nonnull @rndis_func_type) #8
  %24 = call ptr @usb_os_desc_prepare_interf_dir(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @__this_module) #8
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %41

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 5
  %28 = load i8, ptr %27, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 4
  %32 = load i8, ptr %31, align 8, !range !8
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr %12, align 4
  br i1 %33, label %37, label %35

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %34, i32 1408
  call void @gether_cleanup(ptr noundef %36) #8
  br label %38

37:                                               ; preds = %30
  call void @free_netdev(ptr noundef %34) #8
  br label %38

38:                                               ; preds = %37, %35, %26
  %39 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  call void @kfree(ptr noundef %40) #8
  call void @kfree(ptr noundef nonnull %4) #8
  br label %43

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct.f_rndis_opts, ptr %4, i32 0, i32 6
  store ptr %24, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %38, %14, %0
  %44 = phi ptr [ %11, %14 ], [ %24, %38 ], [ %4, %41 ], [ inttoptr (i32 -12 to ptr), %0 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #8
  ret ptr %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rndis_alloc(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 192) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_rndis, ptr %3, i32 0, i32 3
  tail call void @gether_get_host_addr_u8(ptr noundef %11, ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.f_rndis, ptr %3, i32 0, i32 4
  store i32 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.f_rndis, ptr %3, i32 0, i32 5
  store ptr %17, ptr %18, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 1408
  %21 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef %6) #8
  %22 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 5
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 6
  store i32 44, ptr %23, align 4
  %24 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 11
  store ptr @rndis_add_header, ptr %24, align 8
  %25 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 12
  store ptr @rndis_rm_hdr, ptr %25, align 4
  store ptr @.str, ptr %3, align 8
  %26 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @rndis_bind, ptr %26, align 4
  %27 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @rndis_unbind, ptr %27, align 8
  %28 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @rndis_set_alt, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 16
  store ptr @rndis_setup, ptr %29, align 8
  %30 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @rndis_disable, ptr %30, align 4
  %31 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @rndis_free, ptr %31, align 4
  %32 = tail call ptr @rndis_register(ptr noundef nonnull @rndis_response_available, ptr noundef nonnull %3) #8
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %37

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.f_rndis, ptr %3, i32 0, i32 6
  store ptr %32, ptr %36, align 8
  br label %37

37:                                               ; preds = %35, %34, %1
  %38 = phi ptr [ %32, %34 ], [ %3, %35 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_free_inst(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  br i1 %8, label %13, label %11

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %10, i32 1408
  tail call void @gether_cleanup(ptr noundef %12) #8
  br label %14

13:                                               ; preds = %5
  tail call void @free_netdev(ptr noundef %10) #8
  br label %14

14:                                               ; preds = %13, %11, %1
  %15 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_os_desc_prepare_interf_dir(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_setup_name_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_attr_release(ptr noundef %0) #0 {
  tail call void @usb_put_function_instance(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_dev_addr_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_dev_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_dev_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #8
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_dev_addr(ptr noundef %11, ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %4) #8
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %2, i32 %12
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -16, %8 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_dev_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_dev_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_host_addr_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_host_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_host_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #8
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_host_addr(ptr noundef %11, ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %4) #8
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %2, i32 %12
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -16, %8 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_host_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_host_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_qmult_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_qmult(ptr noundef %5) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_qmult_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 13
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %4, align 1
  %16 = zext i8 %15 to i32
  call void @gether_set_qmult(ptr noundef %14, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_qmult(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_ifname_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_ifname(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_ifname_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #8
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_ifname(ptr noundef %11, ptr noundef %1, i32 noundef %2) #8
  tail call void @mutex_unlock(ptr noundef %4) #8
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 %2, i32 %12
  br label %15

15:                                               ; preds = %9, %8
  %16 = phi i32 [ -16, %8 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_class_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_class_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %4)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i8, ptr %4, align 1
  %10 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 9
  store i8 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %2, %8 ], [ -22, %3 ]
  call void @mutex_unlock(ptr noundef %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_subclass_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 10
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_subclass_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %4)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i8, ptr %4, align 1
  %10 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 10
  store i8 %9, ptr %10, align 1
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %2, %8 ], [ -22, %3 ]
  call void @mutex_unlock(ptr noundef %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_protocol_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 11
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_opts_protocol_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %4)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load i8, ptr %4, align 1
  %10 = getelementptr inbounds %struct.f_rndis_opts, ptr %0, i32 0, i32 11
  store i8 %9, ptr %10, align 2
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %2, %8 ], [ -22, %3 ]
  call void @mutex_unlock(ptr noundef %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_get_host_addr_u8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rndis_add_header(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @skb_realloc_headroom(ptr noundef nonnull %1, i32 noundef 44) #8
  tail call void @rndis_add_hdr(ptr noundef %5) #8
  tail call void @consume_skb(ptr noundef nonnull %1) #8
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_rm_hdr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_composite_dev, ptr %4, i32 0, i32 8
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 8) #9
  %14 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 7
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %140, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 8
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.f_rndis_opts, ptr %6, i32 0, i32 7
  %19 = getelementptr inbounds %struct.usb_os_desc_table, ptr %13, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds %struct.f_rndis_opts, ptr %6, i32 0, i32 9
  %22 = load i8, ptr %21, align 4
  store i8 %22, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 4), align 1
  %23 = getelementptr inbounds %struct.f_rndis_opts, ptr %6, i32 0, i32 10
  %24 = load i8, ptr %23, align 1
  store i8 %24, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 5), align 1
  %25 = getelementptr inbounds %struct.f_rndis_opts, ptr %6, i32 0, i32 11
  %26 = load i8, ptr %25, align 2
  store i8 %26, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 6), align 1
  %27 = getelementptr inbounds %struct.f_rndis_opts, ptr %6, i32 0, i32 4
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.f_rndis_opts, ptr %6, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %4, align 4
  tail call void @gether_set_gadget(ptr noundef %32, ptr noundef %33) #8
  %34 = load ptr, ptr %31, align 4
  %35 = tail call i32 @gether_register_netdev(ptr noundef %34) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %123

37:                                               ; preds = %30
  store i8 1, ptr %27, align 4
  br label %38

38:                                               ; preds = %37, %20
  %39 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @rndis_strings, i32 noundef 4) #8
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = ptrtoint ptr %39 to i32
  br label %123

43:                                               ; preds = %38
  %44 = load i8, ptr %39, align 4
  store i8 %44, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @rndis_control_intf, i32 0, i32 8), align 1
  %45 = getelementptr %struct.usb_string, ptr %39, i32 1
  %46 = load i8, ptr %45, align 4
  store i8 %46, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @rndis_data_intf, i32 0, i32 8), align 1
  %47 = getelementptr %struct.usb_string, ptr %39, i32 2
  %48 = load i8, ptr %47, align 4
  store i8 %48, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 7), align 1
  %49 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %123, label %51

51:                                               ; preds = %43
  %52 = trunc i32 %49 to i8
  %53 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 1
  store i8 %52, ptr %53, align 4
  store i8 %52, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @rndis_iad_descriptor, i32 0, i32 2), align 1
  store i8 %52, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @rndis_control_intf, i32 0, i32 2), align 1
  store i8 %52, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @rndis_union_desc, i32 0, i32 3), align 1
  %54 = load i8, ptr %7, align 4
  %55 = and i8 %54, 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = and i32 %49, 255
  %59 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 7
  %60 = load ptr, ptr %59, align 4
  store i32 %58, ptr %60, align 4
  br label %61

61:                                               ; preds = %57, %51
  %62 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %123, label %64

64:                                               ; preds = %61
  %65 = trunc i32 %62 to i8
  %66 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 2
  store i8 %65, ptr %66, align 1
  store i8 %65, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @rndis_data_intf, i32 0, i32 2), align 1
  store i8 %65, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @rndis_union_desc, i32 0, i32 4), align 1
  %67 = load ptr, ptr %4, align 4
  %68 = tail call ptr @usb_ep_autoconfig(ptr noundef %67, ptr noundef nonnull @fs_in_desc) #8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %123, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 2
  store ptr %68, ptr %71, align 4
  %72 = load ptr, ptr %4, align 4
  %73 = tail call ptr @usb_ep_autoconfig(ptr noundef %72, ptr noundef nonnull @fs_out_desc) #8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %123, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 3
  store ptr %73, ptr %76, align 4
  %77 = load ptr, ptr %4, align 4
  %78 = tail call ptr @usb_ep_autoconfig(ptr noundef %77, ptr noundef nonnull @fs_notify_desc) #8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %123, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 7
  store ptr %78, ptr %81, align 4
  %82 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %78, i32 noundef 3264) #8
  %83 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 8
  store ptr %82, ptr %83, align 4
  %84 = icmp eq ptr %82, null
  br i1 %84, label %123, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %87 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3264, i32 noundef 8) #9
  %88 = load ptr, ptr %83, align 4
  store ptr %87, ptr %88, align 4
  %89 = load ptr, ptr %83, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %123, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.usb_request, ptr %89, i32 0, i32 1
  store i32 8, ptr %93, align 4
  %94 = load ptr, ptr %83, align 4
  %95 = getelementptr inbounds %struct.usb_request, ptr %94, i32 0, i32 8
  store ptr %1, ptr %95, align 4
  %96 = load ptr, ptr %83, align 4
  %97 = getelementptr inbounds %struct.usb_request, ptr %96, i32 0, i32 7
  store ptr @rndis_response_complete, ptr %97, align 4
  %98 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_in_desc, i32 0, i32 2), align 1
  store i8 %98, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_in_desc, i32 0, i32 2), align 1
  %99 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_out_desc, i32 0, i32 2), align 1
  store i8 %99, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_out_desc, i32 0, i32 2), align 1
  %100 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_notify_desc, i32 0, i32 2), align 1
  store i8 %100, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_notify_desc, i32 0, i32 2), align 1
  store i8 %98, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_in_desc, i32 0, i32 2), align 1
  store i8 %99, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_out_desc, i32 0, i32 2), align 1
  store i8 %100, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_notify_desc, i32 0, i32 2), align 1
  %101 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @eth_fs_function, ptr noundef nonnull @eth_hs_function, ptr noundef nonnull @eth_ss_function, ptr noundef nonnull @eth_ss_function) #8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 13
  store ptr @rndis_open, ptr %104, align 4
  %105 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 14
  store ptr @rndis_close, ptr %105, align 4
  %106 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 6
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 @rndis_set_param_medium(ptr noundef %107, i32 noundef 0, i32 noundef 0) #8
  %109 = load ptr, ptr %106, align 4
  %110 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 3
  tail call void @rndis_set_host_mac(ptr noundef %109, ptr noundef %110) #8
  %111 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %140, label %114

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %140, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %106, align 4
  %120 = tail call i32 @rndis_set_param_vendor(ptr noundef %119, i32 noundef %116, ptr noundef nonnull %112) #8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %118
  tail call void @usb_free_all_descriptors(ptr noundef %1) #8
  br label %123

123:                                              ; preds = %122, %92, %85, %80, %75, %70, %64, %61, %43, %41, %30
  %124 = phi i32 [ %42, %41 ], [ %49, %43 ], [ %62, %61 ], [ %101, %92 ], [ -22, %122 ], [ -12, %85 ], [ -12, %80 ], [ -19, %75 ], [ -19, %70 ], [ -19, %64 ], [ %35, %30 ]
  %125 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 7
  %126 = load ptr, ptr %125, align 4
  tail call void @kfree(ptr noundef %126) #8
  %127 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 8
  store i32 0, ptr %127, align 4
  %128 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 8
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %123
  %132 = load ptr, ptr %129, align 4
  tail call void @kfree(ptr noundef %132) #8
  %133 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 7
  %134 = load ptr, ptr %133, align 4
  %135 = load ptr, ptr %128, align 4
  tail call void @usb_ep_free_request(ptr noundef %134, ptr noundef %135) #8
  br label %136

136:                                              ; preds = %131, %123
  %137 = load ptr, ptr %4, align 4
  %138 = getelementptr inbounds %struct.usb_gadget, ptr %137, i32 0, i32 11
  %139 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.14, ptr noundef %139, i32 noundef %124) #10
  br label %140

140:                                              ; preds = %136, %118, %114, %103, %11
  %141 = phi i32 [ %124, %136 ], [ -12, %11 ], [ 0, %118 ], [ 0, %114 ], [ 0, %103 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 8
  store i32 0, ptr %5, align 4
  tail call void @usb_free_all_descriptors(ptr noundef %1) #8
  %6 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.f_rndis, ptr %1, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %6, align 4
  tail call void @usb_ep_free_request(ptr noundef %10, ptr noundef %11) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @usb_ep_disable(ptr noundef %14) #8
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.usb_ep, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load ptr, ptr %7, align 4
  %22 = tail call i32 @config_ep_by_speed(ptr noundef %21, ptr noundef %0, ptr noundef %16) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %80

24:                                               ; preds = %20
  %25 = load ptr, ptr %13, align 4
  br label %26

26:                                               ; preds = %24, %12
  %27 = phi ptr [ %25, %24 ], [ %16, %12 ]
  %28 = tail call i32 @usb_ep_enable(ptr noundef %27) #8
  br label %80

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 2
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, %1
  br i1 %33, label %34, label %80

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usb_ep, ptr %36, i32 0, i32 6
  %38 = load i8, ptr %37, align 1, !range !8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  tail call void @gether_disconnect(ptr noundef %0) #8
  %41 = load ptr, ptr %35, align 4
  br label %42

42:                                               ; preds = %40, %34
  %43 = phi ptr [ %41, %40 ], [ %36, %34 ]
  %44 = getelementptr inbounds %struct.usb_ep, ptr %43, i32 0, i32 9
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %47, %42
  %54 = load ptr, ptr %7, align 4
  %55 = tail call i32 @config_ep_by_speed(ptr noundef %54, ptr noundef %0, ptr noundef %43) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @config_ep_by_speed(ptr noundef %58, ptr noundef %0, ptr noundef %60) #8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %57, %47
  %64 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 4
  store i8 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 5
  store i16 0, ptr %65, align 2
  %66 = tail call ptr @gether_connect(ptr noundef %0) #8
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = ptrtoint ptr %66 to i32
  br label %80

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 @rndis_set_param_dev(ptr noundef %72, ptr noundef %66, ptr noundef %65) #8
  br label %80

74:                                               ; preds = %57, %53
  %75 = load ptr, ptr %35, align 4
  %76 = getelementptr inbounds %struct.usb_ep, ptr %75, i32 0, i32 9
  store ptr null, ptr %76, align 4
  %77 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.usb_ep, ptr %78, i32 0, i32 9
  store ptr null, ptr %79, align 4
  br label %80

80:                                               ; preds = %74, %70, %68, %29, %26, %20
  %81 = phi i32 [ %69, %68 ], [ 0, %70 ], [ 0, %26 ], [ -22, %74 ], [ -22, %29 ], [ -22, %20 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rndis_setup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_composite_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %13 = load i16, ptr %12, align 1
  %14 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %15 = load i16, ptr %14, align 1
  %16 = load i8, ptr %1, align 1
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i16
  %22 = or i16 %18, %21
  switch i16 %22, label %75 [
    i16 8448, label %23
    i16 -24319, label %34
  ]

23:                                               ; preds = %2
  %24 = icmp eq i16 %13, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  %29 = icmp eq i16 %11, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %25
  %31 = zext i16 %15 to i32
  %32 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 7
  store ptr @rndis_command_complete, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 8
  store ptr %0, ptr %33, align 4
  br label %57

34:                                               ; preds = %2
  %35 = icmp eq i16 %13, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i16
  %40 = icmp eq i16 %11, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !9
  %42 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = call ptr @rndis_get_next_response(ptr noundef %43, ptr noundef nonnull %3) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %75

47:                                               ; preds = %41
  %48 = load ptr, ptr %9, align 4
  %49 = load i32, ptr %3, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %48, ptr nonnull align 1 %44, i32 %49, i1 false)
  %50 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 7
  store ptr @rndis_response_complete, ptr %50, align 4
  %51 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 8
  store ptr %0, ptr %51, align 4
  %52 = load ptr, ptr %42, align 4
  call void @rndis_free_response(ptr noundef %52, ptr noundef nonnull %44) #8
  %53 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = zext i16 %15 to i32
  br label %57

57:                                               ; preds = %55, %30
  %58 = phi i32 [ %56, %55 ], [ %31, %30 ]
  %59 = phi i32 [ %53, %55 ], [ %31, %30 ]
  %60 = icmp ult i32 %59, %58
  %61 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = select i1 %60, i32 262144, i32 0
  %64 = and i32 %62, -262145
  %65 = or i32 %64, %63
  store i32 %65, ptr %61, align 4
  %66 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 1
  store i32 %59, ptr %66, align 4
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr inbounds %struct.usb_gadget, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = call i32 @usb_ep_queue(ptr noundef %69, ptr noundef %9, i32 noundef 2592) #8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load ptr, ptr %7, align 4
  %74 = getelementptr inbounds %struct.usb_gadget, ptr %73, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.18, i32 noundef %70) #10
  br label %75

75:                                               ; preds = %72, %57, %47, %46, %36, %34, %25, %23, %2
  %76 = phi i32 [ %70, %72 ], [ %70, %57 ], [ %53, %47 ], [ -95, %46 ], [ -95, %2 ], [ -95, %34 ], [ -95, %36 ], [ -95, %23 ], [ -95, %25 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_disable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @rndis_uninit(ptr noundef %9) #8
  tail call void @gether_disconnect(ptr noundef %0) #8
  %10 = load ptr, ptr %2, align 4
  %11 = tail call i32 @usb_ep_disable(ptr noundef %10) #8
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.usb_ep, ptr %12, i32 0, i32 9
  store ptr null, ptr %13, align 4
  br label %14

14:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  tail call void @rndis_deregister(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.f_rndis_opts, ptr %5, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.f_rndis_opts, ptr %5, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %6) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rndis_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_response_available(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #8, !srcloc !12
  %7 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !13
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  store i32 1, ptr %4, align 4
  %10 = getelementptr i32, ptr %4, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @usb_ep_queue(ptr noundef %12, ptr noundef %3, i32 noundef 2592) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #8, !srcloc !11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #8, !srcloc !14
  br label %17

17:                                               ; preds = %15, %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_add_hdr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_gadget(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_response_complete(ptr noundef readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %9 [
    i32 -104, label %7
    i32 -108, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = getelementptr inbounds %struct.f_rndis, ptr %4, i32 0, i32 9
  store volatile i32 0, ptr %8, align 4
  br label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.f_rndis, ptr %4, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.f_rndis, ptr %4, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #8, !srcloc !16
  %16 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %10, align 4
  %20 = tail call i32 @usb_ep_queue(ptr noundef %19, ptr noundef %1, i32 noundef 2592) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #8, !srcloc !14
  br label %24

24:                                               ; preds = %22, %18, %13, %9, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_open(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 5
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 5
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %14, 5
  br i1 %17, label %27, label %23

18:                                               ; preds = %1
  %19 = icmp ult i32 %10, 3
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %22, %20 ], [ %14, %16 ]
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26, %23, %16, %12
  %28 = phi i32 [ 97280, %26 ], [ 42500000, %12 ], [ 37500000, %16 ], [ 4259840, %23 ]
  %29 = tail call i32 @rndis_set_param_medium(ptr noundef %7, i32 noundef 0, i32 noundef %28) #8
  %30 = load ptr, ptr %6, align 4
  %31 = tail call i32 @rndis_signal_connect(ptr noundef %30) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.f_rndis, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @rndis_set_param_medium(ptr noundef %3, i32 noundef 0, i32 noundef 0) #8
  %5 = load ptr, ptr %2, align 4
  %6 = tail call i32 @rndis_signal_disconnect(ptr noundef %5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_set_param_medium(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_set_host_mac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_set_param_vendor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_signal_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_signal_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_connect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_set_param_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rndis_command_complete(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.f_rndis, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = tail call i32 @rndis_msg_parser(ptr noundef %6, ptr noundef %7) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %8, i32 noundef %12, i32 noundef %14) #10
  br label %16

16:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rndis_get_next_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_free_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rndis_msg_parser(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rndis_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!10 = !{i64 2148382356}
!11 = !{i64 783124, i64 2148273095, i64 2148273121, i64 2148273168, i64 2148273190, i64 2148273218, i64 2148273238}
!12 = !{i64 2148285194, i64 2148285226, i64 2148285255, i64 2148285289, i64 2148285320, i64 2148285343}
!13 = !{i64 2148382559}
!14 = !{i64 2148286867, i64 2148286893, i64 2148286922, i64 2148286956, i64 2148286987, i64 2148287010}
!15 = !{i64 2148385189}
!16 = !{i64 2148287551, i64 2148287583, i64 2148287612, i64 2148287646, i64 2148287677, i64 2148287700}
!17 = !{i64 2148385392}
