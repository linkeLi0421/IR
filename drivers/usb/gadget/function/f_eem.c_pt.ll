; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_eem.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_eem.c"
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_eem_opts = type { %struct.usb_function_instance, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.gether = type { %struct.usb_function, ptr, ptr, ptr, i8, i16, i32, i8, i32, i32, i8, ptr, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.f_eem = type { %struct.gether, i8 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.in_context = type { ptr, ptr }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }

@__UNIQUE_ID_alias320 = internal constant [18 x i8] c"alias=usbfunc:eem\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [22 x i8] c"author=David Brownell\00", section ".modinfo", align 1
@eemusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @eem_alloc_inst, ptr @eem_alloc }, align 4
@.str = private unnamed_addr constant [4 x i8] c"eem\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@eem_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@eem_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @eem_item_ops, ptr null, ptr @eem_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@eem_item_ops = internal global %struct.configfs_item_operations { ptr @eem_attr_release, ptr null, ptr null }, align 4
@eem_attrs = internal global [5 x ptr] [ptr @eem_opts_attr_dev_addr, ptr @eem_opts_attr_host_addr, ptr @eem_opts_attr_qmult, ptr @eem_opts_attr_ifname, ptr null], align 4
@eem_opts_attr_dev_addr = internal global %struct.configfs_attribute { ptr @.str.4, ptr @__this_module, i16 420, ptr @eem_opts_dev_addr_show, ptr @eem_opts_dev_addr_store }, align 4
@eem_opts_attr_host_addr = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @eem_opts_host_addr_show, ptr @eem_opts_host_addr_store }, align 4
@eem_opts_attr_qmult = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @eem_opts_qmult_show, ptr @eem_opts_qmult_store }, align 4
@eem_opts_attr_ifname = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @eem_opts_ifname_show, ptr @eem_opts_ifname_store }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"dev_addr\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"host_addr\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"qmult\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ifname\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"cdc_eem\00", align 1
@eem_strings = internal global [2 x ptr] [ptr @eem_string_table, ptr null], align 4
@eem_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 2, i8 12, i8 7, i8 0 }, align 1
@eem_fs_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@eem_fs_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@eem_hs_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@eem_hs_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@eem_ss_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@eem_ss_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@eem_fs_function = internal global [4 x ptr] [ptr @eem_intf, ptr @eem_fs_in_desc, ptr @eem_fs_out_desc, ptr null], align 4
@eem_hs_function = internal global [4 x ptr] [ptr @eem_intf, ptr @eem_hs_in_desc, ptr @eem_hs_out_desc, ptr null], align 4
@eem_ss_function = internal global [6 x ptr] [ptr @eem_intf, ptr @eem_ss_in_desc, ptr @eem_ss_bulk_comp_desc, ptr @eem_ss_out_desc, ptr @eem_ss_bulk_comp_desc, ptr null], align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"%s: can't bind, err %d\0A\00", align 1
@eem_string_table = internal global %struct.usb_gadget_strings { i16 1033, ptr @eem_string_defs }, align 4
@eem_string_defs = internal global [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.11 }, %struct.usb_string zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"CDC Ethernet Emulation Model (EEM)\00", align 1
@eem_ss_bulk_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias320, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_license321], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @eemusb_func) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @eemusb_func) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @eem_alloc_inst() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 132) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.f_eem_opts, ptr %2, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @eem_alloc_inst.__key) #11
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @eem_free_inst, ptr %6, align 8
  %7 = tail call ptr @gether_setup_name_default(ptr noundef nonnull @.str.3) #11
  %8 = getelementptr inbounds %struct.f_eem_opts, ptr %2, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #11
  br label %12

11:                                               ; preds = %4
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @eem_func_type) #11
  br label %12

12:                                               ; preds = %11, %10, %0
  %13 = phi ptr [ %7, %10 ], [ %2, %11 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @eem_alloc(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 164) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 1408
  %13 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %6) #11
  %14 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 5
  store i16 15, ptr %14, align 2
  store ptr @.str.9, ptr %3, align 8
  %15 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @eem_bind, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @eem_unbind, ptr %16, align 8
  %17 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @eem_set_alt, ptr %17, align 4
  %18 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 16
  store ptr @eem_setup, ptr %18, align 8
  %19 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @eem_disable, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @eem_free, ptr %20, align 4
  %21 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 11
  store ptr @eem_wrap, ptr %21, align 8
  %22 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 12
  store ptr @eem_unwrap, ptr %22, align 4
  %23 = getelementptr inbounds %struct.gether, ptr %3, i32 0, i32 6
  store i32 2, ptr %23, align 4
  br label %24

24:                                               ; preds = %5, %1
  %25 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eem_free_inst(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %6, i32 1408
  tail call void @gether_cleanup(ptr noundef %8) #11
  br label %10

9:                                                ; preds = %1
  tail call void @free_netdev(ptr noundef %6) #11
  br label %10

10:                                               ; preds = %9, %7
  tail call void @kfree(ptr noundef %0) #11
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

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_setup_name_default(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eem_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eem_opts_dev_addr_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_dev_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #11
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eem_opts_dev_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #11
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_dev_addr(ptr noundef %11, ptr noundef %1) #11
  tail call void @mutex_unlock(ptr noundef %4) #11
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
define internal i32 @eem_opts_host_addr_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_host_addr(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #11
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eem_opts_host_addr_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #11
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_host_addr(ptr noundef %11, ptr noundef %1) #11
  tail call void @mutex_unlock(ptr noundef %4) #11
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
define internal i32 @eem_opts_qmult_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_qmult(ptr noundef %5) #11
  tail call void @mutex_unlock(ptr noundef %3) #11
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eem_opts_qmult_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !9
  %5 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %4, align 1
  %16 = zext i8 %15 to i32
  call void @gether_set_qmult(ptr noundef %14, i32 noundef %16) #11
  br label %17

17:                                               ; preds = %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
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
define internal i32 @eem_opts_ifname_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gether_get_ifname(ptr noundef %5, ptr noundef %1, i32 noundef 4096) #11
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eem_opts_ifname_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef %4) #11
  br label %15

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_eem_opts, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @gether_set_ifname(ptr noundef %11, ptr noundef %1, i32 noundef %2) #11
  tail call void @mutex_unlock(ptr noundef %4) #11
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eem_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.f_eem_opts, ptr %6, i32 0, i32 2
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.f_eem_opts, ptr %6, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.f_eem_opts, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  tail call void @gether_set_gadget(ptr noundef %13, ptr noundef %14) #11
  %15 = load ptr, ptr %12, align 4
  %16 = tail call i32 @gether_register_netdev(ptr noundef %15) #11
  tail call void @mutex_unlock(ptr noundef %11) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %10
  store i8 1, ptr %7, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @eem_strings, i32 noundef 2) #11
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  br label %50

24:                                               ; preds = %19
  %25 = load i8, ptr %20, align 4
  store i8 %25, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @eem_intf, i32 0, i32 8), align 1
  %26 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #11
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %24
  %29 = trunc i32 %26 to i8
  %30 = getelementptr inbounds %struct.f_eem, ptr %1, i32 0, i32 1
  store i8 %29, ptr %30, align 4
  store i8 %29, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @eem_intf, i32 0, i32 2), align 1
  %31 = load ptr, ptr %4, align 4
  %32 = tail call ptr @usb_ep_autoconfig(ptr noundef %31, ptr noundef nonnull @eem_fs_in_desc) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 2
  store ptr %32, ptr %35, align 4
  %36 = load ptr, ptr %4, align 4
  %37 = tail call ptr @usb_ep_autoconfig(ptr noundef %36, ptr noundef nonnull @eem_fs_out_desc) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.gether, ptr %1, i32 0, i32 3
  store ptr %37, ptr %40, align 4
  %41 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_fs_in_desc, i32 0, i32 2), align 1
  store i8 %41, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_hs_in_desc, i32 0, i32 2), align 1
  %42 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_fs_out_desc, i32 0, i32 2), align 1
  store i8 %42, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_hs_out_desc, i32 0, i32 2), align 1
  store i8 %41, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_ss_in_desc, i32 0, i32 2), align 1
  store i8 %42, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @eem_ss_out_desc, i32 0, i32 2), align 1
  %43 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @eem_fs_function, ptr noundef nonnull @eem_hs_function, ptr noundef nonnull @eem_ss_function, ptr noundef nonnull @eem_ss_function) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39, %34, %28, %24
  %46 = phi i32 [ %26, %24 ], [ %43, %39 ], [ -19, %34 ], [ -19, %28 ]
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.usb_gadget, ptr %47, i32 0, i32 11
  %49 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.10, ptr noundef %49, i32 noundef %46) #13
  br label %50

50:                                               ; preds = %45, %39, %22, %10
  %51 = phi i32 [ %23, %22 ], [ %46, %45 ], [ %16, %10 ], [ 0, %39 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eem_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @usb_free_all_descriptors(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eem_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_eem, ptr %0, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  tail call void @gether_disconnect(ptr noundef %0) #11
  %15 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_ep, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_ep, ptr %22, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %20, %14
  %27 = load ptr, ptr %7, align 4
  %28 = tail call i32 @config_ep_by_speed(ptr noundef %27, ptr noundef %0, ptr noundef %16) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @config_ep_by_speed(ptr noundef %31, ptr noundef %0, ptr noundef %33) #11
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30, %26
  %37 = load ptr, ptr %15, align 4
  %38 = getelementptr inbounds %struct.usb_ep, ptr %37, i32 0, i32 9
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_ep, ptr %40, i32 0, i32 9
  store ptr null, ptr %41, align 4
  br label %49

42:                                               ; preds = %30, %20
  %43 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 4
  store i8 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 5
  store i16 15, ptr %44, align 2
  %45 = tail call ptr @gether_connect(ptr noundef %0) #11
  %46 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  %47 = ptrtoint ptr %45 to i32
  %48 = select i1 %46, i32 %47, i32 0
  br label %49

49:                                               ; preds = %42, %36, %9, %3
  %50 = phi i32 [ -22, %9 ], [ -22, %3 ], [ -22, %36 ], [ %48, %42 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @eem_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #7 {
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eem_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_ep, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @gether_disconnect(ptr noundef %0) #11
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eem_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.f_eem_opts, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.f_eem_opts, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @eem_wrap(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %66, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %10 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  %16 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 14
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %21 to i32
  %25 = ptrtoint ptr %23 to i32
  %26 = sub i32 %24, %25
  br label %27

27:                                               ; preds = %19, %4
  %28 = phi i32 [ %26, %19 ], [ 0, %4 ]
  %29 = and i32 %8, 65535
  %30 = add nuw nsw i32 %29, 6
  %31 = getelementptr inbounds %struct.usb_ep, ptr %6, i32 0, i32 7
  %32 = load i56, ptr %31, align 2
  %33 = trunc i56 %32 to i32
  %34 = and i32 %33, 65535
  %35 = urem i32 %30, %34
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 6, i32 4
  %38 = icmp sge i32 %28, %37
  %39 = icmp sgt i32 %15, 1
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %53

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 11
  %43 = load i8, ptr %42, align 2
  %44 = and i8 %43, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 10
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %46, %27
  %54 = tail call ptr @skb_copy_expand(ptr noundef nonnull %1, i32 noundef 2, i32 noundef %37, i32 noundef 2592) #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %1, i32 noundef 1) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %53, %46, %41
  %57 = phi ptr [ %54, %53 ], [ %1, %46 ], [ %1, %41 ]
  %58 = tail call ptr @skb_put(ptr noundef nonnull %57, i32 noundef 4) #11
  store i32 -272716322, ptr %58, align 1
  %59 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = trunc i32 %60 to i16
  %62 = and i16 %61, 16383
  %63 = tail call ptr @skb_push(ptr noundef nonnull %57, i32 noundef 2) #11
  store i16 %62, ptr %63, align 1
  br i1 %36, label %64, label %66

64:                                               ; preds = %56
  %65 = tail call ptr @skb_put(ptr noundef nonnull %57, i32 noundef 2) #11
  store i16 0, ptr %65, align 1
  br label %66

66:                                               ; preds = %64, %56, %53, %2
  %67 = phi ptr [ null, %2 ], [ null, %53 ], [ %57, %64 ], [ %57, %56 ]
  ret ptr %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @eem_unwrap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %5 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %6 = getelementptr inbounds %struct.gether, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %4, align 8
  br label %8

8:                                                ; preds = %102, %3
  %9 = phi i32 [ %103, %102 ], [ %7, %3 ]
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %105, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 4
  %13 = load i16, ptr %12, align 1
  %14 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef 2) #11
  %15 = zext i16 %13 to i32
  %16 = and i32 %15, 32768
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %11
  %19 = and i32 %15, 16384
  %20 = icmp eq i32 %19, 0
  %21 = and i16 %13, 14336
  %22 = icmp eq i16 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %102

24:                                               ; preds = %18
  %25 = and i16 %13, 2047
  %26 = load i32, ptr %4, align 8
  %27 = zext i16 %25 to i32
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %105, label %29

29:                                               ; preds = %24
  %30 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %99, label %32, !prof !10

32:                                               ; preds = %29
  tail call void @skb_trim(ptr noundef nonnull %30, i32 noundef %27) #11
  %33 = or i16 %25, -30720
  %34 = tail call ptr @skb_push(ptr noundef nonnull %30, i32 noundef 2) #11
  store i16 %33, ptr %34, align 1
  %35 = load ptr, ptr %6, align 4
  %36 = tail call ptr @usb_ep_alloc_request(ptr noundef %35, i32 noundef 2592) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %30, i32 noundef 1) #11
  br label %99

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %41, i32 noundef 3264) #14
  store ptr %42, ptr %36, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void @usb_ep_free_request(ptr noundef %35, ptr noundef nonnull %36) #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %30, i32 noundef 1) #11
  br label %99

45:                                               ; preds = %39
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3264, i32 noundef 8) #12
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %50) #11
  tail call void @usb_ep_free_request(ptr noundef %35, ptr noundef nonnull %36) #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %30, i32 noundef 1) #11
  br label %99

51:                                               ; preds = %45
  store ptr %30, ptr %47, align 8
  %52 = getelementptr inbounds %struct.in_context, ptr %47, i32 0, i32 1
  store ptr %35, ptr %52, align 4
  %53 = load ptr, ptr %36, align 4
  %54 = load i32, ptr %40, align 8
  %55 = tail call i32 @skb_copy_bits(ptr noundef nonnull %30, i32 noundef 0, ptr noundef %53, i32 noundef %54) #11
  %56 = load i32, ptr %40, align 8
  %57 = getelementptr inbounds %struct.usb_request, ptr %36, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.usb_request, ptr %36, i32 0, i32 7
  store ptr @eem_cmd_complete, ptr %58, align 4
  %59 = getelementptr inbounds %struct.usb_request, ptr %36, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = or i32 %60, 262144
  store i32 %61, ptr %59, align 4
  %62 = getelementptr inbounds %struct.usb_request, ptr %36, i32 0, i32 8
  store ptr %47, ptr %62, align 4
  %63 = load ptr, ptr %6, align 4
  %64 = tail call i32 @usb_ep_queue(ptr noundef %63, ptr noundef nonnull %36, i32 noundef 2592) #11
  br label %99

65:                                               ; preds = %11
  %66 = icmp eq i16 %13, 0
  br i1 %66, label %102, label %67

67:                                               ; preds = %65
  %68 = and i16 %13, 16383
  %69 = load i32, ptr %4, align 8
  %70 = zext i16 %68 to i32
  %71 = icmp ult i32 %69, %70
  %72 = icmp ult i16 %68, 18
  %73 = or i1 %72, %71
  br i1 %73, label %105, label %74

74:                                               ; preds = %67
  %75 = and i32 %15, 16384
  %76 = icmp eq i32 %75, 0
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr i8, ptr %77, i32 -4
  %79 = getelementptr i8, ptr %78, i32 %70
  %80 = load i32, ptr %79, align 1
  br i1 %76, label %85, label %81

81:                                               ; preds = %74
  %82 = add nsw i32 %70, -4
  %83 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %77, i32 noundef %82) #15
  %84 = xor i32 %83, -1
  br label %87

85:                                               ; preds = %74
  %86 = tail call i32 @llvm.bswap.i32(i32 %80) #11
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i32 [ %80, %81 ], [ %86, %85 ]
  %89 = phi i32 [ %84, %81 ], [ -559038737, %85 ]
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = tail call ptr @skb_clone(ptr noundef %1, i32 noundef 2592) #11
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94, !prof !10

94:                                               ; preds = %91
  %95 = add nsw i32 %70, -4
  tail call void @skb_trim(ptr noundef nonnull %92, i32 noundef %95) #11
  %96 = tail call ptr @skb_copy_expand(ptr noundef nonnull %92, i32 noundef 2, i32 noundef 0, i32 noundef 2592) #11
  %97 = icmp eq ptr %96, null
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %92, i32 noundef 1) #11
  br i1 %97, label %99, label %98, !prof !10

98:                                               ; preds = %94
  tail call void @skb_queue_tail(ptr noundef %2, ptr noundef nonnull %96) #11
  br label %99

99:                                               ; preds = %98, %94, %91, %87, %51, %49, %44, %38, %29
  %100 = phi i32 [ %70, %91 ], [ %70, %87 ], [ %70, %98 ], [ %27, %29 ], [ %27, %38 ], [ %27, %44 ], [ %27, %49 ], [ %27, %51 ], [ %70, %94 ]
  %101 = tail call ptr @skb_pull(ptr noundef %1, i32 noundef %100) #11
  br label %102

102:                                              ; preds = %99, %65, %18
  %103 = load i32, ptr %4, align 8
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %8

105:                                              ; preds = %102, %67, %24, %8
  %106 = phi i32 [ 0, %102 ], [ -22, %8 ], [ -75, %24 ], [ -22, %67 ]
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #11
  ret i32 %106
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
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gether_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gether_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @eem_cmd_complete(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %5, i32 noundef 1) #11
  %6 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.in_context, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @usb_ep_free_request(ptr noundef %8, ptr noundef %1) #11
  tail call void @kfree(ptr noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
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
!10 = !{!"branch_weights", i32 1, i32 2000}
