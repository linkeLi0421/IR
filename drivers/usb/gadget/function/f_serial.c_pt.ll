; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_serial.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_serial.c"
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
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_serial_opts = type { %struct.usb_function_instance, i8 }
%struct.f_gser = type { %struct.gserial, i8, i8 }
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

@__UNIQUE_ID_alias220 = internal constant [19 x i8] c"alias=usbfunc:gser\00", section ".modinfo", align 1
@__UNIQUE_ID_license221 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author222 = internal constant [19 x i8] c"author=Al Borchers\00", section ".modinfo", align 1
@__UNIQUE_ID_author223 = internal constant [22 x i8] c"author=David Brownell\00", section ".modinfo", align 1
@gserusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @gser_alloc_inst, ptr @gser_alloc }, align 4
@.str = private unnamed_addr constant [5 x i8] c"gser\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@serial_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @serial_item_ops, ptr null, ptr @acm_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@serial_item_ops = internal global %struct.configfs_item_operations { ptr @serial_attr_release, ptr null, ptr null }, align 4
@acm_attrs = internal global [2 x ptr] [ptr @f_serial_attr_port_num, ptr null], align 4
@f_serial_attr_port_num = internal global %struct.configfs_attribute { ptr @.str.2, ptr @__this_module, i16 292, ptr @f_serial_port_num_show, ptr null }, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"port_num\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@gser_strings = internal global [2 x ptr] [ptr @gser_string_table, ptr null], align 4
@gser_string_table = internal global %struct.usb_gadget_strings { i16 1033, ptr @gser_string_defs }, align 4
@gser_string_defs = internal global [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.4 }, %struct.usb_string zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Generic Serial\00", align 1
@gser_interface_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 -1, i8 0, i8 0, i8 0 }, align 1
@gser_fs_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@gser_fs_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@gser_hs_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@gser_hs_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@gser_ss_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@gser_ss_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@gser_fs_function = internal global [4 x ptr] [ptr @gser_interface_desc, ptr @gser_fs_in_desc, ptr @gser_fs_out_desc, ptr null], align 4
@gser_hs_function = internal global [4 x ptr] [ptr @gser_interface_desc, ptr @gser_hs_in_desc, ptr @gser_hs_out_desc, ptr null], align 4
@gser_ss_function = internal global [6 x ptr] [ptr @gser_interface_desc, ptr @gser_ss_in_desc, ptr @gser_ss_bulk_comp_desc, ptr @gser_ss_out_desc, ptr @gser_ss_bulk_comp_desc, ptr null], align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: can't bind, err %d\0A\00", align 1
@gser_ss_bulk_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias220, ptr @__UNIQUE_ID_author222, ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_license221], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @gserusb_func) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @gserusb_func) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gser_alloc_inst() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 104) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @gser_free_inst, ptr %5, align 8
  %6 = getelementptr inbounds %struct.f_serial_opts, ptr %2, i32 0, i32 1
  %7 = tail call i32 @gserial_alloc_line(ptr noundef %6) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #7
  %10 = inttoptr i32 %7 to ptr
  br label %12

11:                                               ; preds = %4
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @serial_func_type) #7
  br label %12

12:                                               ; preds = %11, %9, %0
  %13 = phi ptr [ %10, %9 ], [ %2, %11 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gser_alloc(ptr nocapture noundef readonly %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 144) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_serial_opts, ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_gser, ptr %3, i32 0, i32 2
  store i8 %7, ptr %8, align 1
  store ptr @.str, ptr %3, align 8
  %9 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 1
  store ptr @gser_strings, ptr %9, align 4
  %10 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @gser_bind, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @gser_unbind, ptr %11, align 8
  %12 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @gser_set_alt, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @gser_disable, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @gser_free, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 19
  store ptr @gser_resume, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 18
  store ptr @gser_suspend, ptr %16, align 8
  br label %17

17:                                               ; preds = %5, %1
  %18 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gser_free_inst(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_serial_opts, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4
  tail call void @gserial_free_line(i8 noundef zeroext %3) #7
  tail call void @kfree(ptr noundef %0) #7
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
define internal void @serial_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_serial_port_num_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.f_serial_opts, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gser_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr @gser_string_defs, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = tail call i32 @usb_string_id(ptr noundef %4) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %7
  %11 = trunc i32 %8 to i8
  store i8 %11, ptr @gser_string_defs, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  %16 = trunc i32 %13 to i8
  %17 = getelementptr inbounds %struct.f_gser, ptr %1, i32 0, i32 1
  store i8 %16, ptr %17, align 4
  store i8 %16, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @gser_interface_desc, i32 0, i32 2), align 1
  %18 = load ptr, ptr %4, align 4
  %19 = tail call ptr @usb_ep_autoconfig(ptr noundef %18, ptr noundef nonnull @gser_fs_in_desc) #7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.gserial, ptr %1, i32 0, i32 2
  store ptr %19, ptr %22, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = tail call ptr @usb_ep_autoconfig(ptr noundef %23, ptr noundef nonnull @gser_fs_out_desc) #7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.gserial, ptr %1, i32 0, i32 3
  store ptr %24, ptr %27, align 4
  %28 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_fs_in_desc, i32 0, i32 2), align 1
  store i8 %28, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_hs_in_desc, i32 0, i32 2), align 1
  %29 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_fs_out_desc, i32 0, i32 2), align 1
  store i8 %29, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_hs_out_desc, i32 0, i32 2), align 1
  store i8 %28, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_ss_in_desc, i32 0, i32 2), align 1
  store i8 %29, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @gser_ss_out_desc, i32 0, i32 2), align 1
  %30 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @gser_fs_function, ptr noundef nonnull @gser_hs_function, ptr noundef nonnull @gser_ss_function, ptr noundef nonnull @gser_ss_function) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26, %21, %15, %12
  %33 = phi i32 [ %13, %12 ], [ %30, %26 ], [ -19, %21 ], [ -19, %15 ]
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.usb_gadget, ptr %34, i32 0, i32 11
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.5, ptr noundef %36, i32 noundef %33) #9
  br label %37

37:                                               ; preds = %32, %26, %7
  %38 = phi i32 [ %33, %32 ], [ %8, %7 ], [ 0, %26 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gser_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @usb_free_all_descriptors(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gser_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 6
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  tail call void @gserial_disconnect(ptr noundef %0) #7
  %14 = load ptr, ptr %8, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ %9, %3 ]
  %17 = getelementptr inbounds %struct.usb_ep, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.usb_ep, ptr %22, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %20, %15
  %27 = load ptr, ptr %7, align 4
  %28 = tail call i32 @config_ep_by_speed(ptr noundef %27, ptr noundef %0, ptr noundef %16) #7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @config_ep_by_speed(ptr noundef %31, ptr noundef %0, ptr noundef %33) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30, %26
  %37 = load ptr, ptr %8, align 4
  %38 = getelementptr inbounds %struct.usb_ep, ptr %37, i32 0, i32 9
  store ptr null, ptr %38, align 4
  %39 = getelementptr inbounds %struct.gserial, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.usb_ep, ptr %40, i32 0, i32 9
  store ptr null, ptr %41, align 4
  br label %46

42:                                               ; preds = %30, %20
  %43 = getelementptr inbounds %struct.f_gser, ptr %0, i32 0, i32 2
  %44 = load i8, ptr %43, align 1
  %45 = tail call i32 @gserial_connect(ptr noundef %0, i8 noundef zeroext %44) #7
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i32 [ 0, %42 ], [ -22, %36 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gser_disable(ptr noundef %0) #2 {
  tail call void @gserial_disconnect(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gser_free(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gser_resume(ptr noundef %0) #2 {
  tail call void @gserial_resume(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gser_suspend(ptr noundef %0) #2 {
  tail call void @gserial_suspend(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_id(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @gserial_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gserial_connect(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gserial_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
