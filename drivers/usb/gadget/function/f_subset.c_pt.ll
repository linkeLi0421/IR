; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_subset.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_subset.c"
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
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_mdlm_desc = type <{ i8, i8, i8, i16, [16 x i8] }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_gether_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_gether = type { %struct.gether, [14 x i8] }
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
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }

@__UNIQUE_ID_alias320 = internal constant [19 x i8] c"alias=usbfunc:geth\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [22 x i8] c"author=David Brownell\00", section ".modinfo", align 1
@gethusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @geth_alloc_inst, ptr @geth_alloc }, align 4
@.str = private unnamed_addr constant [5 x i8] c"geth\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@geth_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gether_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @gether_item_ops, ptr null, ptr @gether_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@gether_item_ops = internal global %struct.configfs_item_operations { ptr @gether_attr_release, ptr null, ptr null }, align 4
@gether_attrs = internal global [5 x ptr] [ptr @gether_opts_attr_dev_addr, ptr @gether_opts_attr_host_addr, ptr @gether_opts_attr_qmult, ptr @gether_opts_attr_ifname, ptr null], align 4
@gether_opts_attr_dev_addr = internal global %struct.configfs_attribute { ptr @.str.4, ptr @__this_module, i16 420, ptr @gether_opts_dev_addr_show, ptr @gether_opts_dev_addr_store }, align 4
@gether_opts_attr_host_addr = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @gether_opts_host_addr_show, ptr @gether_opts_host_addr_store }, align 4
@gether_opts_attr_qmult = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @gether_opts_qmult_show, ptr @gether_opts_qmult_store }, align 4
@gether_opts_attr_ifname = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @gether_opts_ifname_show, ptr @gether_opts_ifname_store }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@geth_string_defs = internal global [3 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.10 }, %struct.usb_string { i8 0, ptr @.str.2 }, %struct.usb_string zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"cdc_subset\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"CDC Ethernet Subset/SAFE\00", align 1
@geth_strings = internal global [2 x ptr] [ptr @geth_string_table, ptr null], align 4
@subset_data_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 2, i8 10, i8 0, i8 0 }, align 1
@ether_desc = internal global %struct.usb_cdc_ether_desc <{ i8 13, i8 36, i8 15, i8 0, i32 0, i16 1514, i16 0, i8 0 }>, align 1
@fs_subset_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@fs_subset_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@hs_subset_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_subset_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@ss_subset_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_subset_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@fs_eth_function = internal global [8 x ptr] [ptr @subset_data_intf, ptr @mdlm_header_desc, ptr @mdlm_desc, ptr @mdlm_detail_desc, ptr @ether_desc, ptr @fs_subset_in_desc, ptr @fs_subset_out_desc, ptr null], align 4
@hs_eth_function = internal global [8 x ptr] [ptr @subset_data_intf, ptr @mdlm_header_desc, ptr @mdlm_desc, ptr @mdlm_detail_desc, ptr @ether_desc, ptr @hs_subset_in_desc, ptr @hs_subset_out_desc, ptr null], align 4
@ss_eth_function = internal global [10 x ptr] [ptr @subset_data_intf, ptr @mdlm_header_desc, ptr @mdlm_desc, ptr @mdlm_detail_desc, ptr @ether_desc, ptr @ss_subset_in_desc, ptr @ss_subset_bulk_comp_desc, ptr @ss_subset_out_desc, ptr @ss_subset_bulk_comp_desc, ptr null], align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"%s: can't bind, err %d\0A\00", align 1
@geth_string_table = internal global %struct.usb_gadget_strings { i16 1033, ptr @geth_string_defs }, align 4
@mdlm_header_desc = internal global %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 272 }>, align 1
@mdlm_desc = internal global %struct.usb_cdc_mdlm_desc <{ i8 21, i8 36, i8 18, i16 256, [16 x i8] c"]4\CFf\11\18\11\D6\A2\1A\00\01\02\CA\9A\7F" }>, align 1
@mdlm_detail_desc = internal global [6 x i8] c"\06$\13\00\00\00", align 1
@ss_subset_bulk_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias320, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_license321], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @gethusb_func) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @gethusb_func) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @geth_alloc_inst() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 132) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.f_gether_opts, ptr %2, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @geth_alloc_inst.__key) #7
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @geth_free_inst, ptr %6, align 8
  %7 = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #7
  %8 = getelementptr inbounds %struct.f_gether_opts, ptr %2, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #7
  br label %12

11:                                               ; preds = %4
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @gether_func_type) #7
  br label %12

12:                                               ; preds = %11, %10, %0
  %13 = phi ptr [ %7, %10 ], [ %2, %11 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @geth_alloc(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 176) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_gether, ptr %3, i32 0, i32 1
  %13 = tail call i32 @gether_get_host_addr_cdc(ptr noundef %11, ptr noundef %12, i32 noundef 14) #7
  %14 = icmp slt i32 %13, 12
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #7
  tail call void @mutex_unlock(ptr noundef %6) #7
  br label %26

16:                                               ; preds = %5
  store ptr %12, ptr getelementptr inbounds ([3 x %struct.usb_string], ptr @geth_string_defs, i32 0, i32 1, i32 1), align 4
  %17 = load ptr, ptr %10, align 4
  %18 = getelementptr i8, ptr %17, i32 1408
  %19 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef %6) #7
  %20 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 5
  store i16 15, ptr %20, align 2
  store ptr @.str.9, ptr %3, align 8
  %21 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @geth_bind, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @geth_unbind, ptr %22, align 8
  %23 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @geth_set_alt, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @geth_disable, ptr %24, align 4
  %25 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @geth_free, ptr %25, align 4
  br label %26

26:                                               ; preds = %16, %15, %1
  %27 = phi ptr [ inttoptr (i32 -22 to ptr), %15 ], [ %3, %16 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @geth_free_inst(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %6, i32 1408
  tail call void @gether_cleanup(ptr noundef %8) #7
  br label %10

9:                                                ; preds = %1
  tail call void @free_netdev(ptr noundef %6) #7
  br label %10

10:                                               ; preds = %9, %7
  tail call void @kfree(ptr noundef %0) #7
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
define internal void @gether_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gether_opts_dev_addr_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_dev_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gether_opts_dev_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #7
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_dev_addr(ptr noundef %11, ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %4) #7
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
define internal i32 @gether_opts_host_addr_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_host_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gether_opts_host_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #7
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_host_addr(ptr noundef %11, ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %4) #7
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
define internal i32 @gether_opts_qmult_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_qmult(ptr noundef %5) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gether_opts_qmult_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %4, align 1
  %16 = zext i8 %15 to i32
  call void @gether_set_qmult(ptr noundef %14, i32 noundef %16) #7
  br label %17

17:                                               ; preds = %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
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
define internal i32 @gether_opts_ifname_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_ifname(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #7
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gether_opts_ifname_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #7
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_gether_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_ifname(ptr noundef %11, ptr noundef %1, i32 noundef %2) #7
  tail call void @mutex_unlock(ptr noundef %4) #7
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
define internal i32 @geth_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.f_gether_opts, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.f_gether_opts, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.f_gether_opts, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  tail call void @gether_set_gadget(ptr noundef %13, ptr noundef %14) #7
  %15 = load ptr, ptr %12, align 4
  %16 = tail call i32 @gether_register_netdev(ptr noundef %15) #7
  tail call void @mutex_unlock(ptr noundef %11) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %10
  store i8 1, ptr %7, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @geth_strings, i32 noundef 3) #7
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  br label %51

24:                                               ; preds = %19
  %25 = load i8, ptr %20, align 4
  store i8 %25, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @subset_data_intf, i32 0, i32 8), align 1
  %26 = getelementptr %struct.usb_string, ptr %20, i32 1
  %27 = load i8, ptr %26, align 4
  store i8 %27, ptr getelementptr inbounds (%struct.usb_cdc_ether_desc, ptr @ether_desc, i32 0, i32 3), align 1
  %28 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = trunc i32 %28 to i8
  store i8 %31, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @subset_data_intf, i32 0, i32 2), align 1
  %32 = load ptr, ptr %4, align 4
  %33 = tail call ptr @usb_ep_autoconfig(ptr noundef %32, ptr noundef nonnull @fs_subset_in_desc) #7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 2
  store ptr %33, ptr %36, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = tail call ptr @usb_ep_autoconfig(ptr noundef %37, ptr noundef nonnull @fs_subset_out_desc) #7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 3
  store ptr %38, ptr %41, align 4
  %42 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_subset_in_desc, i32 0, i32 2), align 1
  store i8 %42, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_subset_in_desc, i32 0, i32 2), align 1
  %43 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_subset_out_desc, i32 0, i32 2), align 1
  store i8 %43, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_subset_out_desc, i32 0, i32 2), align 1
  store i8 %42, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_subset_in_desc, i32 0, i32 2), align 1
  store i8 %43, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_subset_out_desc, i32 0, i32 2), align 1
  %44 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @fs_eth_function, ptr noundef nonnull @hs_eth_function, ptr noundef nonnull @ss_eth_function, ptr noundef nonnull @ss_eth_function) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %40, %35, %30, %24
  %47 = phi i32 [ %28, %24 ], [ %44, %40 ], [ -19, %35 ], [ -19, %30 ]
  %48 = load ptr, ptr %4, align 4
  %49 = getelementptr inbounds %struct.usb_gadget, ptr %48, i32 0, i32 11
  %50 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.11, ptr noundef %50, i32 noundef %47) #9
  br label %51

51:                                               ; preds = %46, %40, %22, %10
  %52 = phi i32 [ %23, %22 ], [ %47, %46 ], [ %16, %10 ], [ 0, %40 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @geth_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  store i8 0, ptr @geth_string_defs, align 4
  tail call void @usb_free_all_descriptors(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @geth_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 6
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  tail call void @gether_disconnect(ptr noundef %0) #7
  %14 = load ptr, ptr %8, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ %9, %3 ]
  %17 = load ptr, ptr %7, align 4
  %18 = tail call i32 @config_ep_by_speed(ptr noundef %17, ptr noundef %0, ptr noundef %16) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @config_ep_by_speed(ptr noundef %21, ptr noundef %0, ptr noundef %23) #7
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20, %15
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr inbounds %struct.usb_ep, ptr %27, i32 0, i32 9
  store ptr null, ptr %28, align 4
  %29 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.usb_ep, ptr %30, i32 0, i32 9
  store ptr null, ptr %31, align 4
  br label %37

32:                                               ; preds = %20
  %33 = tail call ptr @gether_connect(ptr noundef %0) #7
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %35 = ptrtoint ptr %33 to i32
  %36 = select i1 %34, i32 %35, i32 0
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i32 [ -22, %26 ], [ %36, %32 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @geth_disable(ptr noundef %0) #2 {
  tail call void @gether_disconnect(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @geth_free(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #7
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
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
