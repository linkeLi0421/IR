; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_acm.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_acm.c"
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
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_cdc_union_desc = type { i8, i8, i8, i8, i8 }
%struct.usb_cdc_call_mgmt_descriptor = type { i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_cdc_header_desc = type <{ i8, i8, i8, i16 }>
%struct.usb_cdc_acm_descriptor = type { i8, i8, i8, i8 }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_serial_opts = type { %struct.usb_function_instance, i8 }
%struct.f_acm = type { %struct.gserial, i8, i8, i8, i8, %struct.spinlock, ptr, ptr, %struct.usb_cdc_line_coding, i16, i16 }
%struct.gserial = type { %struct.usb_function, ptr, ptr, ptr, %struct.usb_cdc_line_coding, ptr, ptr, ptr }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.usb_cdc_line_coding = type <{ i32, i8, i8, i8 }>
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
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
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_cdc_notification = type { i8, i8, i16, i16, i16 }

@__UNIQUE_ID_alias222 = internal constant [18 x i8] c"alias=usbfunc:acm\00", section ".modinfo", align 1
@__UNIQUE_ID_license223 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@acmusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @acm_alloc_instance, ptr @acm_alloc_func }, align 4
@.str = private unnamed_addr constant [4 x i8] c"acm\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@acm_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @acm_item_ops, ptr null, ptr @acm_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@acm_item_ops = internal global %struct.configfs_item_operations { ptr @acm_attr_release, ptr null, ptr null }, align 4
@acm_attrs = internal global [2 x ptr] [ptr @f_acm_attr_port_num, ptr null], align 4
@f_acm_attr_port_num = internal global %struct.configfs_attribute { ptr @.str.2, ptr @__this_module, i16 292, ptr @f_acm_port_num_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"port_num\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@acm_strings = internal global [2 x ptr] [ptr @acm_string_table, ptr null], align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"acm ttyGS%d can't notify serial state, %d\0A\00", align 1
@acm_string_table = internal global %struct.usb_gadget_strings { i16 1033, ptr @acm_string_defs }, align 4
@acm_string_defs = internal global [4 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.5 }, %struct.usb_string { i8 0, ptr @.str.6 }, %struct.usb_string { i8 0, ptr @.str.7 }, %struct.usb_string zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"CDC Abstract Control Model (ACM)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"CDC ACM Data\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"CDC Serial\00", align 1
@acm_control_interface_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 2, i8 2, i8 1, i8 0 }, align 1
@acm_data_interface_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 10, i8 0, i8 0, i8 0 }, align 1
@acm_iad_descriptor = internal global %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 2, i8 2, i8 1, i8 0 }, align 1
@acm_union_desc = internal global %struct.usb_cdc_union_desc { i8 5, i8 36, i8 6, i8 0, i8 0 }, align 1
@acm_call_mgmt_descriptor = internal global %struct.usb_cdc_call_mgmt_descriptor { i8 5, i8 36, i8 1, i8 0, i8 0 }, align 1
@acm_fs_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@acm_fs_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@acm_fs_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 10, i8 32, i8 0, i8 0 }>, align 1
@acm_hs_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@acm_hs_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@acm_hs_notify_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 10, i8 9, i8 0, i8 0 }>, align 1
@acm_ss_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@acm_ss_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@acm_fs_function = internal global [11 x ptr] [ptr @acm_iad_descriptor, ptr @acm_control_interface_desc, ptr @acm_header_desc, ptr @acm_call_mgmt_descriptor, ptr @acm_descriptor, ptr @acm_union_desc, ptr @acm_fs_notify_desc, ptr @acm_data_interface_desc, ptr @acm_fs_in_desc, ptr @acm_fs_out_desc, ptr null], align 4
@acm_hs_function = internal global [11 x ptr] [ptr @acm_iad_descriptor, ptr @acm_control_interface_desc, ptr @acm_header_desc, ptr @acm_call_mgmt_descriptor, ptr @acm_descriptor, ptr @acm_union_desc, ptr @acm_hs_notify_desc, ptr @acm_data_interface_desc, ptr @acm_hs_in_desc, ptr @acm_hs_out_desc, ptr null], align 4
@acm_ss_function = internal global [14 x ptr] [ptr @acm_iad_descriptor, ptr @acm_control_interface_desc, ptr @acm_header_desc, ptr @acm_call_mgmt_descriptor, ptr @acm_descriptor, ptr @acm_union_desc, ptr @acm_hs_notify_desc, ptr @acm_ss_bulk_comp_desc, ptr @acm_data_interface_desc, ptr @acm_ss_in_desc, ptr @acm_ss_bulk_comp_desc, ptr @acm_ss_out_desc, ptr @acm_ss_bulk_comp_desc, ptr null], align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"%s/%p: can't bind, err %d\0A\00", align 1
@acm_header_desc = internal global %struct.usb_cdc_header_desc <{ i8 5, i8 36, i8 0, i16 272 }>, align 1
@acm_descriptor = internal global %struct.usb_cdc_acm_descriptor { i8 4, i8 36, i8 2, i8 2 }, align 1
@acm_ss_bulk_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"acm response on ttyGS%d, err %d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_alias222, ptr @__UNIQUE_ID_license223], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @acmusb_func) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @acmusb_func) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @acm_alloc_instance() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 104) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @acm_free_instance, ptr %5, align 8
  %6 = getelementptr inbounds %struct.f_serial_opts, ptr %2, i32 0, i32 1
  %7 = tail call i32 @gserial_alloc_line(ptr noundef %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #9
  %10 = inttoptr i32 %7 to ptr
  br label %12

11:                                               ; preds = %4
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @acm_func_type) #9
  br label %12

12:                                               ; preds = %11, %9, %0
  %13 = phi ptr [ %10, %9 ], [ %2, %11 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @acm_alloc_func(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 168) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_acm, ptr %3, i32 0, i32 5
  store i32 0, ptr %6, align 8
  %7 = getelementptr inbounds %struct.gserial, ptr %3, i32 0, i32 5
  store ptr @acm_connect, ptr %7, align 8
  %8 = getelementptr inbounds %struct.gserial, ptr %3, i32 0, i32 6
  store ptr @acm_disconnect, ptr %8, align 4
  %9 = getelementptr inbounds %struct.gserial, ptr %3, i32 0, i32 7
  store ptr @acm_send_break, ptr %9, align 8
  store ptr @.str, ptr %3, align 8
  %10 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 1
  store ptr @acm_strings, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @acm_bind, ptr %11, align 4
  %12 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @acm_set_alt, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 16
  store ptr @acm_setup, ptr %13, align 8
  %14 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @acm_disable, ptr %14, align 4
  %15 = getelementptr inbounds %struct.f_serial_opts, ptr %0, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = getelementptr inbounds %struct.f_acm, ptr %3, i32 0, i32 3
  store i8 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @acm_unbind, ptr %18, align 8
  %19 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @acm_free_func, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 19
  store ptr @acm_resume, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 18
  store ptr @acm_suspend, ptr %21, align 8
  br label %22

22:                                               ; preds = %5, %1
  %23 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_free_instance(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_serial_opts, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  tail call void @gserial_free_line(i8 noundef zeroext %3) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_alloc_line(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_free_line(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_acm_port_num_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.f_serial_opts, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_connect(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 2
  %4 = or i16 %3, 3
  store i16 %4, ptr %2, align 2
  %5 = tail call fastcc i32 @acm_notify_serial_state(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_disconnect(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 10
  %3 = load i16, ptr %2, align 2
  %4 = and i16 %3, -4
  store i16 %4, ptr %2, align 2
  %5 = tail call fastcc i32 @acm_notify_serial_state(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @acm_send_break(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 10
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, -5
  %6 = icmp eq i32 %1, 0
  %7 = select i1 %6, i16 0, i16 4
  %8 = or i16 %5, %7
  store i16 %8, ptr %3, align 2
  %9 = tail call fastcc i32 @acm_notify_serial_state(ptr noundef %0)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @acm_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @acm_strings, i32 noundef 4) #9
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i32
  br label %64

9:                                                ; preds = %2
  %10 = load i8, ptr %5, align 4
  store i8 %10, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @acm_control_interface_desc, i32 0, i32 8), align 1
  %11 = getelementptr %struct.usb_string, ptr %5, i32 1
  %12 = load i8, ptr %11, align 4
  store i8 %12, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @acm_data_interface_desc, i32 0, i32 8), align 1
  %13 = getelementptr %struct.usb_string, ptr %5, i32 2
  %14 = load i8, ptr %13, align 4
  store i8 %14, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @acm_iad_descriptor, i32 0, i32 7), align 1
  %15 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %9
  %18 = trunc i32 %15 to i8
  %19 = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 1
  store i8 %18, ptr %19, align 4
  store i8 %18, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @acm_iad_descriptor, i32 0, i32 2), align 1
  store i8 %18, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @acm_control_interface_desc, i32 0, i32 2), align 1
  store i8 %18, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @acm_union_desc, i32 0, i32 3), align 1
  %20 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #9
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = trunc i32 %20 to i8
  %24 = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 2
  store i8 %23, ptr %24, align 1
  store i8 %23, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @acm_data_interface_desc, i32 0, i32 2), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.usb_cdc_union_desc, ptr @acm_union_desc, i32 0, i32 4), align 1
  store i8 %23, ptr getelementptr inbounds (%struct.usb_cdc_call_mgmt_descriptor, ptr @acm_call_mgmt_descriptor, i32 0, i32 4), align 1
  %25 = load ptr, ptr %4, align 4
  %26 = tail call ptr @usb_ep_autoconfig(ptr noundef %25, ptr noundef nonnull @acm_fs_in_desc) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %52, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.gserial, ptr %1, i32 0, i32 2
  store ptr %26, ptr %29, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = tail call ptr @usb_ep_autoconfig(ptr noundef %30, ptr noundef nonnull @acm_fs_out_desc) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gserial, ptr %1, i32 0, i32 3
  store ptr %31, ptr %34, align 4
  %35 = load ptr, ptr %4, align 4
  %36 = tail call ptr @usb_ep_autoconfig(ptr noundef %35, ptr noundef nonnull @acm_fs_notify_desc) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 6
  store ptr %36, ptr %39, align 4
  %40 = tail call ptr @gs_alloc_req(ptr noundef nonnull %36, i32 noundef 10, i32 noundef 3264) #9
  %41 = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 7
  store ptr %40, ptr %41, align 4
  %42 = icmp eq ptr %40, null
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.usb_request, ptr %40, i32 0, i32 7
  store ptr @acm_cdc_notify_complete, ptr %44, align 4
  %45 = load ptr, ptr %41, align 4
  %46 = getelementptr inbounds %struct.usb_request, ptr %45, i32 0, i32 8
  store ptr %1, ptr %46, align 4
  %47 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_fs_in_desc, i32 0, i32 2), align 1
  store i8 %47, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_hs_in_desc, i32 0, i32 2), align 1
  %48 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_fs_out_desc, i32 0, i32 2), align 1
  store i8 %48, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_hs_out_desc, i32 0, i32 2), align 1
  %49 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_fs_notify_desc, i32 0, i32 2), align 1
  store i8 %49, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_hs_notify_desc, i32 0, i32 2), align 1
  store i8 %47, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_ss_in_desc, i32 0, i32 2), align 1
  store i8 %48, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @acm_ss_out_desc, i32 0, i32 2), align 1
  %50 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @acm_fs_function, ptr noundef nonnull @acm_hs_function, ptr noundef nonnull @acm_ss_function, ptr noundef nonnull @acm_ss_function) #9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %43, %38, %33, %28, %22, %17, %9
  %53 = phi i32 [ %15, %9 ], [ %20, %17 ], [ %50, %43 ], [ -19, %38 ], [ -19, %33 ], [ -19, %28 ], [ -19, %22 ]
  %54 = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  tail call void @gs_free_req(ptr noundef %59, ptr noundef nonnull %55) #9
  br label %60

60:                                               ; preds = %57, %52
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.usb_gadget, ptr %61, i32 0, i32 11
  %63 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.8, ptr noundef %63, ptr noundef %1, i32 noundef %53) #11
  br label %64

64:                                               ; preds = %60, %43, %7
  %65 = phi i32 [ %8, %7 ], [ %53, %60 ], [ 0, %43 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @acm_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_ep, ptr %14, i32 0, i32 6
  %16 = load i8, ptr %15, align 1, !range !8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = tail call i32 @usb_ep_disable(ptr noundef %14) #9
  %20 = load ptr, ptr %13, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi ptr [ %20, %18 ], [ %14, %12 ]
  %23 = getelementptr inbounds %struct.usb_ep, ptr %22, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load ptr, ptr %7, align 4
  %28 = tail call i32 @config_ep_by_speed(ptr noundef %27, ptr noundef %0, ptr noundef %22) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %26
  %31 = load ptr, ptr %13, align 4
  br label %32

32:                                               ; preds = %30, %21
  %33 = phi ptr [ %31, %30 ], [ %22, %21 ]
  %34 = tail call i32 @usb_ep_enable(ptr noundef %33) #9
  br label %79

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %79

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_ep, ptr %42, i32 0, i32 6
  %44 = load i8, ptr %43, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  tail call void @gserial_disconnect(ptr noundef %0) #9
  br label %47

47:                                               ; preds = %46, %40
  %48 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_ep, ptr %49, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.usb_ep, ptr %55, i32 0, i32 9
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %53, %47
  %60 = load ptr, ptr %7, align 4
  %61 = tail call i32 @config_ep_by_speed(ptr noundef %60, ptr noundef %0, ptr noundef %49) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = tail call i32 @config_ep_by_speed(ptr noundef %64, ptr noundef %0, ptr noundef %66) #9
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63, %59
  %70 = load ptr, ptr %48, align 4
  %71 = getelementptr inbounds %struct.usb_ep, ptr %70, i32 0, i32 9
  store ptr null, ptr %71, align 4
  %72 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.usb_ep, ptr %73, i32 0, i32 9
  store ptr null, ptr %74, align 4
  br label %79

75:                                               ; preds = %63, %53
  %76 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 3
  %77 = load i8, ptr %76, align 2
  %78 = tail call i32 @gserial_connect(ptr noundef %0, i8 noundef zeroext %77) #9
  br label %79

79:                                               ; preds = %75, %69, %35, %32, %26
  %80 = phi i32 [ -22, %69 ], [ -22, %26 ], [ -22, %35 ], [ 0, %75 ], [ 0, %32 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @acm_setup(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
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
  switch i16 %21, label %68 [
    i16 8480, label %22
    i16 -24287, label %34
    i16 8482, label %44
  ]

22:                                               ; preds = %2
  %23 = icmp eq i16 %14, 7
  br i1 %23, label %24, label %68

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 1
  %26 = load i8, ptr %25, align 4
  %27 = zext i8 %26 to i16
  %28 = icmp eq i16 %10, %27
  br i1 %28, label %29, label %68

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  store ptr %0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 7
  store ptr @acm_complete_set_line_coding, ptr %33, align 4
  br label %51

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 1
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  %38 = icmp eq i16 %10, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = tail call i16 @llvm.umin.i16(i16 %14, i16 7)
  %41 = zext i16 %40 to i32
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 4 %43, i32 %41, i1 false)
  br label %51

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = zext i8 %46 to i16
  %48 = icmp eq i16 %10, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 9
  store i16 %12, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %39, %29
  %52 = phi i32 [ 0, %49 ], [ %41, %39 ], [ 7, %29 ]
  %53 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -262145
  store i32 %55, ptr %53, align 4
  %56 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 1
  store i32 %52, ptr %56, align 4
  %57 = load ptr, ptr %6, align 4
  %58 = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 3
  %59 = load ptr, ptr %58, align 8
  %60 = tail call i32 @usb_ep_queue(ptr noundef %59, ptr noundef %8, i32 noundef 2592) #9
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load ptr, ptr %6, align 4
  %64 = getelementptr inbounds %struct.usb_gadget, ptr %63, i32 0, i32 11
  %65 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 3
  %66 = load i8, ptr %65, align 2
  %67 = zext i8 %66 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.9, i32 noundef %67, i32 noundef %60) #11
  br label %68

68:                                               ; preds = %62, %51, %44, %34, %24, %22, %2
  %69 = phi i32 [ %60, %62 ], [ %60, %51 ], [ -95, %2 ], [ -95, %44 ], [ -95, %34 ], [ -95, %22 ], [ -95, %24 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_disable(ptr noundef %0) #2 {
  tail call void @gserial_disconnect(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @usb_ep_disable(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  store i8 0, ptr @acm_string_defs, align 4
  tail call void @usb_free_all_descriptors(ptr noundef %1) #9
  %3 = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.f_acm, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  tail call void @gs_free_req(ptr noundef %8, ptr noundef nonnull %4) #9
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_free_func(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_resume(ptr noundef %0) #2 {
  tail call void @gserial_resume(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_suspend(ptr noundef %0) #2 {
  tail call void @gserial_suspend(ptr noundef %0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @acm_notify_serial_state(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %2) #9
  %3 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 10
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  store ptr null, ptr %3, align 4
  %11 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 4
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.usb_request, ptr %4, i32 0, i32 1
  store i32 10, ptr %12, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr %struct.usb_cdc_notification, ptr %13, i32 1
  store i8 -95, ptr %13, align 1
  %15 = getelementptr inbounds %struct.usb_cdc_notification, ptr %13, i32 0, i32 1
  store i8 32, ptr %15, align 1
  %16 = getelementptr inbounds %struct.usb_cdc_notification, ptr %13, i32 0, i32 2
  store i16 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  %20 = getelementptr inbounds %struct.usb_cdc_notification, ptr %13, i32 0, i32 3
  store i16 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.usb_cdc_notification, ptr %13, i32 0, i32 4
  store i16 2, ptr %21, align 1
  store i16 %8, ptr %14, align 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %22 = load i16, ptr %2, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  %24 = tail call i32 @usb_ep_queue(ptr noundef %10, ptr noundef nonnull %4, i32 noundef 2592) #9
  tail call void @_raw_spin_lock(ptr noundef %2) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.usb_configuration, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 3
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.4, i32 noundef %35, i32 noundef %24) #11
  store ptr %4, ptr %3, align 4
  br label %38

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.f_acm, ptr %0, i32 0, i32 4
  store i8 1, ptr %37, align 1
  br label %38

38:                                               ; preds = %36, %26, %6
  %39 = phi i32 [ 0, %36 ], [ %24, %6 ], [ %24, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %40 = load i16, ptr %2, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gs_alloc_req(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_cdc_notify_complete(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.f_acm, ptr %4, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, -108
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.f_acm, ptr %4, i32 0, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.f_acm, ptr %4, i32 0, i32 7
  store ptr %1, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %14 = load i16, ptr %5, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br i1 %12, label %22, label %16

16:                                               ; preds = %9
  %17 = tail call fastcc i32 @acm_notify_serial_state(ptr noundef %4)
  br label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.f_acm, ptr %4, i32 0, i32 7
  store ptr %1, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  %20 = load i16, ptr %5, align 4
  %21 = add i16 %20, 1
  store i16 %21, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !12
  br label %22

22:                                               ; preds = %18, %16, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gs_free_req(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_connect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @acm_complete_set_line_coding(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @usb_ep_set_halt(ptr noundef %0) #9
  br label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.f_acm, ptr %3, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(7) %15, ptr noundef align 1 dereferenceable(7) %14, i32 7, i1 false)
  br label %16

16:                                               ; preds = %13, %11, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
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
!8 = !{i8 0, i8 2}
!9 = !{i64 2148946736}
!10 = !{i64 2148942560}
!11 = !{i64 2148942635, i64 2148942662, i64 2148942709, i64 2148942731, i64 2148942759, i64 2148942779}
!12 = !{i64 2148969739}
