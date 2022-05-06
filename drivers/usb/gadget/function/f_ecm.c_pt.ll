; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_ecm.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_ecm.c"
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_ether_desc = type <{ i8, i8, i8, i8, i32, i16, i16, i8 }>
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_ecm_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_ecm = type { %struct.gether, i8, i8, [14 x i8], ptr, ptr, i8, %struct.atomic_t, i8 }
%struct.gether = type { %struct.usb_function, ptr, ptr, ptr, i8, i16, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }

@__UNIQUE_ID_alias320 = internal constant [18 x i8] c"alias=usbfunc:ecm\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [22 x i8] c"author=David Brownell\00", section ".modinfo", align 1
@ecmusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @ecm_alloc_inst, ptr @ecm_alloc }, align 4
@.str = private unnamed_addr constant [4 x i8] c"ecm\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@ecm_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ecm_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @ecm_item_ops, ptr null, ptr @ecm_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@ecm_item_ops = internal global %struct.configfs_item_operations { ptr @ecm_attr_release, ptr null, ptr null }, align 4
@ecm_attrs = internal global [5 x ptr] [ptr @ecm_opts_attr_dev_addr, ptr @ecm_opts_attr_host_addr, ptr @ecm_opts_attr_qmult, ptr @ecm_opts_attr_ifname, ptr null], align 4
@ecm_opts_attr_dev_addr = internal global %struct.configfs_attribute { ptr @.str.4, ptr @__this_module, i16 420, ptr @ecm_opts_dev_addr_show, ptr @ecm_opts_dev_addr_store }, align 4
@ecm_opts_attr_host_addr = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @ecm_opts_host_addr_show, ptr @ecm_opts_host_addr_store }, align 4
@ecm_opts_attr_qmult = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @ecm_opts_qmult_show, ptr @ecm_opts_qmult_store }, align 4
@ecm_opts_attr_ifname = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @ecm_opts_ifname_show, ptr @ecm_opts_ifname_store }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"cdc_ethernet\00", align 1
@ecm_string_defs = internal global [5 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.11 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string { i8 0, ptr @.str.12 }, %struct.usb_string { i8 0, ptr @.str.13 }, %struct.usb_string zeroinitializer], align 4
@ecm_strings = internal global [2 x ptr] [ptr @ecm_string_table, ptr null], align 4
@ecm_control_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 6, i8 0, i8 0 }, align 1
@ecm_data_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 1, i8 2, i8 10, i8 0, i8 0, i8 0 }, align 1
@ecm_desc = internal global %struct.usb_cdc_ether_desc <{ i8 13, i8 36, i8 15, i8 0, i32 0, i16 1514, i16 0, i8 0 }>, align 1
@ecm_iad_descriptor = internal global %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 6, i8 0, i8 0 }, align 1
@ecm_union_desc = internal global %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 0, i8 0 }, align 1
@ecm_data_nop_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0 }, align 1
@fs_ecm_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@fs_ecm_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@fs_ecm_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 16, i8 32, i8 0, i8 0 }>, align 1
@hs_ecm_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_ecm_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_ecm_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 16, i8 9, i8 0, i8 0 }>, align 1
@ss_ecm_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_ecm_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_ecm_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 16, i8 9, i8 0, i8 0 }>, align 1
@ecm_fs_function = internal global [11 x ptr] [ptr @ecm_iad_descriptor, ptr @ecm_control_intf, ptr @ecm_header_desc, ptr @ecm_union_desc, ptr @ecm_desc, ptr @fs_ecm_notify_desc, ptr @ecm_data_nop_intf, ptr @ecm_data_intf, ptr @fs_ecm_in_desc, ptr @fs_ecm_out_desc, ptr null], align 4
@ecm_hs_function = internal global [11 x ptr] [ptr @ecm_iad_descriptor, ptr @ecm_control_intf, ptr @ecm_header_desc, ptr @ecm_union_desc, ptr @ecm_desc, ptr @hs_ecm_notify_desc, ptr @ecm_data_nop_intf, ptr @ecm_data_intf, ptr @hs_ecm_in_desc, ptr @hs_ecm_out_desc, ptr null], align 4
@ecm_ss_function = internal global [14 x ptr] [ptr @ecm_iad_descriptor, ptr @ecm_control_intf, ptr @ecm_header_desc, ptr @ecm_union_desc, ptr @ecm_desc, ptr @ss_ecm_notify_desc, ptr @ss_ecm_intr_comp_desc, ptr @ecm_data_nop_intf, ptr @ecm_data_intf, ptr @ss_ecm_in_desc, ptr @ss_ecm_bulk_comp_desc, ptr @ss_ecm_out_desc, ptr @ss_ecm_bulk_comp_desc, ptr null], align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"%s: can't bind, err %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"CDC Ethernet Control Model (ECM)\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"CDC Ethernet Data\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"CDC ECM\00", align 1
@ecm_string_table = internal global %struct.usb_gadget_strings { i16 1033, ptr @ecm_string_defs }, align 4
@ecm_header_desc = internal global %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 272 }>, align 1
@ss_ecm_intr_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 16 }, align 1
@ss_ecm_bulk_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"ecm req %02x.%02x response err %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias320, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_license321], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @ecmusb_func) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @ecmusb_func) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ecm_alloc_inst() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 132) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.f_ecm_opts, ptr %2, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @ecm_alloc_inst.__key) #8
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @ecm_free_inst, ptr %6, align 8
  %7 = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #8
  %8 = getelementptr inbounds %struct.f_ecm_opts, ptr %2, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #8
  br label %12

11:                                               ; preds = %4
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @ecm_func_type) #8
  br label %12

12:                                               ; preds = %11, %10, %0
  %13 = phi ptr [ %7, %10 ], [ %2, %11 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @ecm_alloc(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 196) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_ecm, ptr %3, i32 0, i32 3
  %13 = tail call i32 @gether_get_host_addr_cdc(ptr noundef %11, ptr noundef %12, i32 noundef 14) #8
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #8
  tail call void @mutex_unlock(ptr noundef %6) #8
  br label %28

16:                                               ; preds = %5
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 1408
  %19 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef %6) #8
  %20 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 5
  store i16 15, ptr %20, align 2
  store ptr @.str.9, ptr %3, align 8
  %21 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @ecm_bind, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @ecm_unbind, ptr %22, align 8
  %23 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @ecm_set_alt, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 14
  store ptr @ecm_get_alt, ptr %24, align 8
  %25 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 16
  store ptr @ecm_setup, ptr %25, align 8
  %26 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @ecm_disable, ptr %26, align 4
  %27 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @ecm_free, ptr %27, align 4
  br label %28

28:                                               ; preds = %16, %15, %1
  %29 = phi ptr [ inttoptr (i32 -22 to ptr), %15 ], [ %3, %16 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ecm_free_inst(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %6, i32 1408
  tail call void @gether_cleanup(ptr noundef %8) #8
  br label %10

9:                                                ; preds = %1
  tail call void @free_netdev(ptr noundef %6) #8
  br label %10

10:                                               ; preds = %9, %7
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_setup_name_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ecm_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_opts_dev_addr_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_dev_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_opts_dev_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #8
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
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
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_dev_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_dev_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_opts_host_addr_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_host_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_opts_host_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #8
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
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
declare dso_local i32 @gether_get_host_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_host_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_opts_qmult_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_qmult(ptr noundef %5) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_opts_qmult_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
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
declare dso_local i32 @gether_get_qmult(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_set_qmult(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_opts_ifname_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_ifname(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_opts_ifname_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #8
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_ecm_opts, ptr %0, i32 0, i32 1
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
declare dso_local i32 @gether_get_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_set_ifname(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gether_get_host_addr_cdc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %100

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.f_ecm_opts, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 4, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.f_ecm_opts, ptr %12, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %17) #8
  %18 = getelementptr inbounds %struct.f_ecm_opts, ptr %12, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %4, align 4
  tail call void @gether_set_gadget(ptr noundef %19, ptr noundef %20) #8
  %21 = load ptr, ptr %18, align 4
  %22 = tail call i32 @gether_register_netdev(ptr noundef %21) #8
  tail call void @mutex_unlock(ptr noundef %17) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %100

24:                                               ; preds = %16
  store i8 1, ptr %13, align 4
  br label %25

25:                                               ; preds = %24, %10
  %26 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 3
  store ptr %26, ptr getelementptr inbounds ([5 x %struct.usb_string], ptr @ecm_string_defs, i32 0, i32 1, i32 1), align 4
  %27 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @ecm_strings, i32 noundef 5) #8
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = ptrtoint ptr %27 to i32
  br label %100

31:                                               ; preds = %25
  %32 = load i8, ptr %27, align 4
  store i8 %32, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_control_intf, i32 0, i32 8), align 1
  %33 = getelementptr %struct.usb_string, ptr %27, i32 2
  %34 = load i8, ptr %33, align 4
  store i8 %34, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_data_intf, i32 0, i32 8), align 1
  %35 = getelementptr %struct.usb_string, ptr %27, i32 1
  %36 = load i8, ptr %35, align 4
  store i8 %36, ptr getelementptr inbounds (%struct.usb_cdc_ether_desc, ptr @ecm_desc, i32 0, i32 3), align 1
  %37 = getelementptr %struct.usb_string, ptr %27, i32 3
  %38 = load i8, ptr %37, align 4
  store i8 %38, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @ecm_iad_descriptor, i32 0, i32 7), align 1
  %39 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %86, label %41

41:                                               ; preds = %31
  %42 = trunc i32 %39 to i8
  %43 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 1
  store i8 %42, ptr %43, align 4
  store i8 %42, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @ecm_iad_descriptor, i32 0, i32 2), align 1
  store i8 %42, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_control_intf, i32 0, i32 2), align 1
  store i8 %42, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @ecm_union_desc, i32 0, i32 3), align 1
  %44 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %86, label %46

46:                                               ; preds = %41
  %47 = trunc i32 %44 to i8
  %48 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 2
  store i8 %47, ptr %48, align 1
  store i8 %47, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_data_nop_intf, i32 0, i32 2), align 1
  store i8 %47, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ecm_data_intf, i32 0, i32 2), align 1
  store i8 %47, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @ecm_union_desc, i32 0, i32 4), align 1
  %49 = load ptr, ptr %4, align 4
  %50 = tail call ptr @usb_ep_autoconfig(ptr noundef %49, ptr noundef nonnull @fs_ecm_in_desc) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %86, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 2
  store ptr %50, ptr %53, align 4
  %54 = load ptr, ptr %4, align 4
  %55 = tail call ptr @usb_ep_autoconfig(ptr noundef %54, ptr noundef nonnull @fs_ecm_out_desc) #8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %86, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 3
  store ptr %55, ptr %58, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = tail call ptr @usb_ep_autoconfig(ptr noundef %59, ptr noundef nonnull @fs_ecm_notify_desc) #8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %86, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 4
  store ptr %60, ptr %63, align 4
  %64 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %60, i32 noundef 3264) #8
  %65 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 5
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %86, label %67

67:                                               ; preds = %62
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 3264, i32 noundef 16) #9
  %70 = load ptr, ptr %65, align 4
  store ptr %69, ptr %70, align 4
  %71 = load ptr, ptr %65, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %86, label %74

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.usb_request, ptr %71, i32 0, i32 8
  store ptr %1, ptr %75, align 4
  %76 = load ptr, ptr %65, align 4
  %77 = getelementptr inbounds %struct.usb_request, ptr %76, i32 0, i32 7
  store ptr @ecm_notify_complete, ptr %77, align 4
  %78 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ecm_in_desc, i32 0, i32 2), align 1
  store i8 %78, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ecm_in_desc, i32 0, i32 2), align 1
  %79 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ecm_out_desc, i32 0, i32 2), align 1
  store i8 %79, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ecm_out_desc, i32 0, i32 2), align 1
  %80 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ecm_notify_desc, i32 0, i32 2), align 1
  store i8 %80, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ecm_notify_desc, i32 0, i32 2), align 1
  store i8 %78, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ecm_in_desc, i32 0, i32 2), align 1
  store i8 %79, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ecm_out_desc, i32 0, i32 2), align 1
  store i8 %80, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ecm_notify_desc, i32 0, i32 2), align 1
  %81 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @ecm_fs_function, ptr noundef nonnull @ecm_hs_function, ptr noundef nonnull @ecm_ss_function, ptr noundef nonnull @ecm_ss_function) #8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 13
  store ptr @ecm_open, ptr %84, align 4
  %85 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 14
  store ptr @ecm_close, ptr %85, align 4
  br label %100

86:                                               ; preds = %74, %67, %62, %57, %52, %46, %41, %31
  %87 = phi i32 [ %39, %31 ], [ %44, %41 ], [ %81, %74 ], [ -12, %67 ], [ -12, %62 ], [ -19, %57 ], [ -19, %52 ], [ -19, %46 ]
  %88 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %89, align 4
  tail call void @kfree(ptr noundef %92) #8
  %93 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %88, align 4
  tail call void @usb_ep_free_request(ptr noundef %94, ptr noundef %95) #8
  br label %96

96:                                               ; preds = %91, %86
  %97 = load ptr, ptr %4, align 4
  %98 = getelementptr inbounds %struct.usb_gadget, ptr %97, i32 0, i32 11
  %99 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.10, ptr noundef %99, i32 noundef %87) #10
  br label %100

100:                                              ; preds = %96, %83, %29, %16, %2
  %101 = phi i32 [ %30, %29 ], [ %87, %96 ], [ 0, %83 ], [ -22, %2 ], [ %22, %16 ]
  ret i32 %101
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ecm_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @usb_free_all_descriptors(ptr noundef %1) #8
  %3 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 7
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @usb_ep_dequeue(ptr noundef %8, ptr noundef %10) #8
  store volatile i32 0, ptr %3, align 4
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #8
  %16 = getelementptr inbounds %struct.f_ecm, ptr %1, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %13, align 4
  tail call void @usb_ep_free_request(ptr noundef %17, ptr noundef %18) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %91

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @usb_ep_disable(ptr noundef %16) #8
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.usb_ep, ptr %18, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 4
  %24 = tail call i32 @config_ep_by_speed(ptr noundef %23, ptr noundef %0, ptr noundef %18) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %91

26:                                               ; preds = %22
  %27 = load ptr, ptr %15, align 4
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi ptr [ %27, %26 ], [ %18, %14 ]
  %30 = tail call i32 @usb_ep_enable(ptr noundef %29) #8
  br label %91

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, %1
  %36 = icmp ugt i32 %2, 1
  %37 = or i1 %36, %35
  br i1 %37, label %91, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_ep, ptr %40, i32 0, i32 6
  %42 = load i8, ptr %41, align 1, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  tail call void @gether_disconnect(ptr noundef %0) #8
  %45 = load ptr, ptr %39, align 4
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %45, %44 ], [ %40, %38 ]
  %48 = getelementptr inbounds %struct.usb_ep, ptr %47, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usb_ep, ptr %53, i32 0, i32 9
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %51, %46
  %58 = load ptr, ptr %7, align 4
  %59 = tail call i32 @config_ep_by_speed(ptr noundef %58, ptr noundef %0, ptr noundef %47) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @config_ep_by_speed(ptr noundef %62, ptr noundef %0, ptr noundef %64) #8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61, %57
  %68 = load ptr, ptr %39, align 4
  %69 = getelementptr inbounds %struct.usb_ep, ptr %68, i32 0, i32 9
  store ptr null, ptr %69, align 4
  %70 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.usb_ep, ptr %71, i32 0, i32 9
  store ptr null, ptr %72, align 4
  br label %91

73:                                               ; preds = %61, %51
  %74 = icmp eq i32 %2, 1
  br i1 %74, label %75, label %89

75:                                               ; preds = %73
  %76 = load ptr, ptr %7, align 4
  %77 = getelementptr inbounds %struct.usb_gadget, ptr %76, i32 0, i32 17
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 4
  %80 = lshr i32 %78, 11
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, ptr %79, align 4
  %84 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 5
  store i16 15, ptr %84, align 2
  %85 = tail call ptr @gether_connect(ptr noundef %0) #8
  %86 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = ptrtoint ptr %85 to i32
  br label %91

89:                                               ; preds = %75, %73
  %90 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 6
  store i8 1, ptr %90, align 4
  tail call fastcc void @ecm_do_notify(ptr noundef %0) #8
  br label %91

91:                                               ; preds = %89, %87, %67, %31, %28, %22, %12
  %92 = phi i32 [ 0, %89 ], [ 0, %28 ], [ -22, %31 ], [ -22, %22 ], [ -22, %12 ], [ -22, %67 ], [ %88, %87 ]
  ret i32 %92
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @ecm_get_alt(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 6
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i32 [ %12, %7 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ecm_setup(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_configuration, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_composite_dev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %10 = load i16, ptr %9, align 1
  %11 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %12 = load i16, ptr %11, align 1
  %13 = load i8, ptr %1, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %15, %18
  %20 = icmp ne i32 %19, 8515
  %21 = icmp ne i16 %12, 0
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %48, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %25 = load i16, ptr %24, align 1
  %26 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  %29 = icmp eq i16 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 5
  store i16 %10, ptr %31, align 2
  %32 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, -262145
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 1
  store i32 0, ptr %35, align 4
  %36 = load ptr, ptr %6, align 4
  %37 = getelementptr inbounds %struct.usb_gadget, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = tail call i32 @usb_ep_queue(ptr noundef %38, ptr noundef %8, i32 noundef 2592) #8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 11
  %44 = load i8, ptr %1, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, ptr %16, align 1
  %47 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.14, i32 noundef %45, i32 noundef %47, i32 noundef %39) #10
  br label %48

48:                                               ; preds = %41, %30, %23, %2
  %49 = phi i32 [ %39, %41 ], [ %39, %30 ], [ -95, %23 ], [ -95, %2 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ecm_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @gether_disconnect(ptr noundef %0) #8
  br label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 9
  store ptr null, ptr %9, align 4
  %10 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_ep, ptr %11, i32 0, i32 9
  store ptr null, ptr %12, align 4
  br label %13

13:                                               ; preds = %8, %7
  %14 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @usb_ep_disable(ptr noundef %15) #8
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.usb_ep, ptr %17, i32 0, i32 9
  store ptr null, ptr %18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ecm_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.f_ecm_opts, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.f_ecm_opts, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret void
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
define internal void @ecm_notify_complete(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %13 [
    i32 0, label %7
    i32 -104, label %10
    i32 -108, label %10
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.f_ecm, ptr %4, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #8, !srcloc !11
  br label %16

10:                                               ; preds = %2, %2
  %11 = getelementptr inbounds %struct.f_ecm, ptr %4, i32 0, i32 7
  store volatile i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.f_ecm, ptr %4, i32 0, i32 6
  store i8 0, ptr %12, align 4
  br label %16

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.f_ecm, ptr %4, i32 0, i32 7
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #8, !srcloc !10
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #8, !srcloc !11
  br label %16

16:                                               ; preds = %13, %10, %7
  tail call fastcc void @ecm_do_notify(ptr noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ecm_open(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 8
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 6
  store i8 1, ptr %3, align 4
  tail call fastcc void @ecm_do_notify(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ecm_close(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 8
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 6
  store i8 1, ptr %3, align 4
  tail call fastcc void @ecm_do_notify(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @ecm_do_notify(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 7
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %64

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 6
  %14 = load i8, ptr %13, align 4
  switch i8 %14, label %52 [
    i8 0, label %64
    i8 1, label %15
    i8 2, label %23
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 1
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 8
  %18 = load i8, ptr %17, align 4, !range !8
  %19 = zext i8 %18 to i16
  %20 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 2
  store i16 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 4
  store i16 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.usb_request, ptr %3, i32 0, i32 1
  store i32 8, ptr %22, align 4
  br label %50

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
  br i1 %33, label %38, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %47, label %43

38:                                               ; preds = %23
  %39 = icmp ult i32 %32, 3
  br i1 %39, label %46, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i32 [ %42, %40 ], [ %36, %34 ]
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %43, %34
  %48 = phi i32 [ 9728000, %46 ], [ 851968000, %34 ], [ 425984000, %43 ]
  store i32 %48, ptr %29, align 4
  %49 = getelementptr i8, ptr %28, i32 12
  store i32 %48, ptr %49, align 4
  br label %50

50:                                               ; preds = %47, %15
  %51 = phi i8 [ 0, %47 ], [ 2, %15 ]
  store i8 %51, ptr %13, align 4
  br label %52

52:                                               ; preds = %50, %11
  store i8 -95, ptr %12, align 1
  %53 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i16
  %56 = getelementptr inbounds %struct.usb_cdc_notification, ptr %12, i32 0, i32 3
  store i16 %55, ptr %56, align 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !10
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #8, !srcloc !12
  %58 = getelementptr inbounds %struct.f_ecm, ptr %0, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 @usb_ep_queue(ptr noundef %59, ptr noundef %3, i32 noundef 2592) #8
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #8, !srcloc !10
  %63 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #8, !srcloc !11
  br label %64

64:                                               ; preds = %62, %52, %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!10 = !{i64 780495, i64 2148270466, i64 2148270492, i64 2148270539, i64 2148270561, i64 2148270589, i64 2148270609}
!11 = !{i64 2148284238, i64 2148284264, i64 2148284293, i64 2148284327, i64 2148284358, i64 2148284381}
!12 = !{i64 2148281881, i64 2148281907, i64 2148281936, i64 2148281970, i64 2148282001, i64 2148282024}
