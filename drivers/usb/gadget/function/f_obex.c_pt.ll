; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_obex.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_obex.c"
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
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_obex_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_serial_opts = type { %struct.usb_function_instance, i8 }
%struct.f_obex = type { %struct.gserial, i8, i8, i8, i8 }
%struct.gserial = type { %struct.usb_function, ptr, ptr, ptr, %struct.usb_cdc_line_coding, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>
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

@__UNIQUE_ID_alias220 = internal constant [19 x i8] c"alias=usbfunc:obex\00", section ".modinfo", align 1
@__UNIQUE_ID_author221 = internal constant [20 x i8] c"author=Felipe Balbi\00", section ".modinfo", align 1
@__UNIQUE_ID_license222 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@obexusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @obex_alloc_inst, ptr @obex_alloc }, align 4
@.str = private unnamed_addr constant [5 x i8] c"obex\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@obex_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @obex_item_ops, ptr null, ptr @acm_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@obex_item_ops = internal global %struct.configfs_item_operations { ptr @obex_attr_release, ptr null, ptr null }, align 4
@acm_attrs = internal global [2 x ptr] [ptr @f_obex_attr_port_num, ptr null], align 4
@f_obex_attr_port_num = internal global %struct.configfs_attribute { ptr @.str.2, ptr @__this_module, i16 292, ptr @f_obex_port_num_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"port_num\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@obex_strings = internal global [2 x ptr] [ptr @obex_string_table, ptr null], align 4
@obex_control_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 2, i8 11, i8 0, i8 0 }, align 1
@obex_data_nop_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 0, i8 0, i8 10, i8 0, i8 0, i8 0 }, align 1
@obex_data_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 2, i8 1, i8 2, i8 10, i8 0, i8 0, i8 0 }, align 1
@obex_cdc_union_desc = internal global %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 1, i8 2 }, align 1
@obex_fs_ep_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@obex_fs_ep_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@obex_hs_ep_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@obex_hs_ep_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@fs_function = internal global [9 x ptr] [ptr @obex_control_intf, ptr @obex_cdc_header_desc, ptr @obex_desc, ptr @obex_cdc_union_desc, ptr @obex_data_nop_intf, ptr @obex_data_intf, ptr @obex_fs_ep_in_desc, ptr @obex_fs_ep_out_desc, ptr null], align 4
@hs_function = internal global [9 x ptr] [ptr @obex_control_intf, ptr @obex_cdc_header_desc, ptr @obex_desc, ptr @obex_cdc_union_desc, ptr @obex_data_nop_intf, ptr @obex_data_intf, ptr @obex_hs_ep_in_desc, ptr @obex_hs_ep_out_desc, ptr null], align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s/%p: can't bind, err %d\0A\00", align 1
@obex_string_table = internal global %struct.usb_gadget_strings { i16 1033, ptr @obex_string_defs }, align 4
@obex_string_defs = internal global [3 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.5 }, %struct.usb_string { i8 0, ptr @.str.6 }, %struct.usb_string zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"CDC Object Exchange (OBEX)\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"CDC OBEX Data\00", align 1
@obex_cdc_header_desc = internal global %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 288 }>, align 1
@obex_desc = internal global %struct.usb_cdc_obex_desc <{ i8 5, i8 36, i8 21, i16 256 }>, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias220, ptr @__UNIQUE_ID_author221, ptr @__UNIQUE_ID_license222], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @obexusb_func) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @obexusb_func) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @obex_alloc_inst() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 104) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @obex_free_inst, ptr %5, align 8
  %6 = getelementptr inbounds %struct.f_serial_opts, ptr %2, i32 0, i32 1
  %7 = tail call i32 @gserial_alloc_line_no_console(ptr noundef %6) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #8
  %10 = inttoptr i32 %7 to ptr
  br label %12

11:                                               ; preds = %4
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @obex_func_type) #8
  br label %12

12:                                               ; preds = %11, %9, %0
  %13 = phi ptr [ %10, %9 ], [ %2, %11 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @obex_alloc(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 144) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_serial_opts, ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_obex, ptr %3, i32 0, i32 4
  store i8 %7, ptr %8, align 1
  %9 = getelementptr inbounds %struct.gserial, ptr %3, i32 0, i32 5
  store ptr @obex_connect, ptr %9, align 8
  %10 = getelementptr inbounds %struct.gserial, ptr %3, i32 0, i32 6
  store ptr @obex_disconnect, ptr %10, align 4
  store ptr @.str, ptr %3, align 8
  %11 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @obex_bind, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @obex_unbind, ptr %12, align 8
  %13 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @obex_set_alt, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 14
  store ptr @obex_get_alt, ptr %14, align 8
  %15 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @obex_disable, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @obex_free, ptr %16, align 4
  %17 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 25
  %18 = load i8, ptr %17, align 8
  %19 = or i8 %18, 1
  store i8 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %5, %1
  %21 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @obex_free_inst(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_serial_opts, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  tail call void @gserial_free_line(i8 noundef zeroext %3) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_alloc_line_no_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_free_line(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @obex_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_obex_port_num_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.f_serial_opts, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @obex_connect(ptr noundef %0) #2 {
  %2 = tail call i32 @usb_function_activate(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @obex_disconnect(ptr noundef %0) #2 {
  %2 = tail call i32 @usb_function_deactivate(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @obex_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 17
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %2
  %11 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @obex_strings, i32 noundef 3) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %49

15:                                               ; preds = %10
  %16 = load i8, ptr %11, align 4
  store i8 %16, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_control_intf, i32 0, i32 8), align 1
  %17 = getelementptr %struct.usb_string, ptr %11, i32 1
  %18 = load i8, ptr %17, align 4
  store i8 %18, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_data_nop_intf, i32 0, i32 8), align 1
  %19 = load i8, ptr %17, align 4
  store i8 %19, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_data_intf, i32 0, i32 8), align 1
  %20 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #8
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %15
  %23 = trunc i32 %20 to i8
  %24 = getelementptr inbounds %struct.f_obex, ptr %1, i32 0, i32 1
  store i8 %23, ptr %24, align 4
  store i8 %23, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_control_intf, i32 0, i32 2), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @obex_cdc_union_desc, i32 0, i32 3), align 1
  %25 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = trunc i32 %25 to i8
  %29 = getelementptr inbounds %struct.f_obex, ptr %1, i32 0, i32 2
  store i8 %28, ptr %29, align 1
  store i8 %28, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_data_nop_intf, i32 0, i32 2), align 1
  store i8 %28, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @obex_data_intf, i32 0, i32 2), align 1
  store i8 %28, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @obex_cdc_union_desc, i32 0, i32 4), align 1
  %30 = load ptr, ptr %4, align 4
  %31 = tail call ptr @usb_ep_autoconfig(ptr noundef %30, ptr noundef nonnull @obex_fs_ep_in_desc) #8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.gserial, ptr %1, i32 0, i32 2
  store ptr %31, ptr %34, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = tail call ptr @usb_ep_autoconfig(ptr noundef %35, ptr noundef nonnull @obex_fs_ep_out_desc) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.gserial, ptr %1, i32 0, i32 3
  store ptr %36, ptr %39, align 4
  %40 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @obex_fs_ep_in_desc, i32 0, i32 2), align 1
  store i8 %40, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @obex_hs_ep_in_desc, i32 0, i32 2), align 1
  %41 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @obex_fs_ep_out_desc, i32 0, i32 2), align 1
  store i8 %41, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @obex_hs_ep_out_desc, i32 0, i32 2), align 1
  %42 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @fs_function, ptr noundef nonnull @hs_function, ptr noundef null, ptr noundef null) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %38, %33, %27, %22, %15
  %45 = phi i32 [ %20, %15 ], [ %25, %22 ], [ %42, %38 ], [ -19, %33 ], [ -19, %27 ]
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.usb_gadget, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.4, ptr noundef %48, ptr noundef %1, i32 noundef %45) #10
  br label %49

49:                                               ; preds = %44, %38, %13, %2
  %50 = phi i32 [ %14, %13 ], [ %45, %44 ], [ -22, %2 ], [ 0, %38 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @obex_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @usb_free_all_descriptors(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @obex_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_obex, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %62, label %65

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.f_obex, ptr %0, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, %1
  %19 = icmp ugt i32 %2, 1
  %20 = or i1 %19, %18
  br i1 %20, label %65, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.usb_ep, ptr %23, i32 0, i32 6
  %25 = load i8, ptr %24, align 1, !range !8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  tail call void @gserial_disconnect(ptr noundef %0) #8
  %28 = load ptr, ptr %22, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %28, %27 ], [ %23, %21 ]
  %31 = getelementptr inbounds %struct.usb_ep, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usb_ep, ptr %36, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %34, %29
  %41 = load ptr, ptr %7, align 4
  %42 = tail call i32 @config_ep_by_speed(ptr noundef %41, ptr noundef %0, ptr noundef %30) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @config_ep_by_speed(ptr noundef %45, ptr noundef %0, ptr noundef %47) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %44, %40
  %51 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.usb_ep, ptr %52, i32 0, i32 9
  store ptr null, ptr %53, align 4
  %54 = load ptr, ptr %22, align 4
  %55 = getelementptr inbounds %struct.usb_ep, ptr %54, i32 0, i32 9
  store ptr null, ptr %55, align 4
  br label %65

56:                                               ; preds = %44, %34
  %57 = icmp eq i32 %2, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.f_obex, ptr %0, i32 0, i32 4
  %60 = load i8, ptr %59, align 1
  %61 = tail call i32 @gserial_connect(ptr noundef %0, i8 noundef zeroext %60) #8
  br label %62

62:                                               ; preds = %58, %56, %12
  %63 = trunc i32 %2 to i8
  %64 = getelementptr inbounds %struct.f_obex, ptr %0, i32 0, i32 3
  store i8 %63, ptr %64, align 2
  br label %65

65:                                               ; preds = %62, %50, %14, %12
  %66 = phi i32 [ 0, %62 ], [ -22, %14 ], [ -22, %12 ], [ -22, %50 ]
  ret i32 %66
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @obex_get_alt(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.f_obex, ptr %0, i32 0, i32 3
  %4 = load i8, ptr %3, align 2
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @obex_disable(ptr noundef %0) #2 {
  tail call void @gserial_disconnect(ptr noundef %0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @obex_free(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_activate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_connect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
