; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_sourcesink.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_sourcesink.c"
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
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.f_ss_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_sourcesink = type { %struct.usb_function, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }

@__UNIQUE_ID_alias220 = internal constant [25 x i8] c"alias=usbfunc:SourceSink\00", section ".modinfo", align 1
@__UNIQUE_ID_license221 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@SourceSinkusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @source_sink_alloc_inst, ptr @source_sink_alloc_func }, align 4
@.str = private unnamed_addr constant [11 x i8] c"SourceSink\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@source_sink_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"&ss_opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ss_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @ss_item_ops, ptr null, ptr @ss_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ss_item_ops = internal global %struct.configfs_item_operations { ptr @ss_attr_release, ptr null, ptr null }, align 4
@ss_attrs = internal global [9 x ptr] [ptr @f_ss_opts_attr_pattern, ptr @f_ss_opts_attr_isoc_interval, ptr @f_ss_opts_attr_isoc_maxpacket, ptr @f_ss_opts_attr_isoc_mult, ptr @f_ss_opts_attr_isoc_maxburst, ptr @f_ss_opts_attr_bulk_buflen, ptr @f_ss_opts_attr_bulk_qlen, ptr @f_ss_opts_attr_iso_qlen, ptr null], align 4
@f_ss_opts_attr_pattern = internal global %struct.configfs_attribute { ptr @.str.3, ptr @__this_module, i16 420, ptr @f_ss_opts_pattern_show, ptr @f_ss_opts_pattern_store }, align 4
@f_ss_opts_attr_isoc_interval = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @f_ss_opts_isoc_interval_show, ptr @f_ss_opts_isoc_interval_store }, align 4
@f_ss_opts_attr_isoc_maxpacket = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @f_ss_opts_isoc_maxpacket_show, ptr @f_ss_opts_isoc_maxpacket_store }, align 4
@f_ss_opts_attr_isoc_mult = internal global %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 420, ptr @f_ss_opts_isoc_mult_show, ptr @f_ss_opts_isoc_mult_store }, align 4
@f_ss_opts_attr_isoc_maxburst = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @f_ss_opts_isoc_maxburst_show, ptr @f_ss_opts_isoc_maxburst_store }, align 4
@f_ss_opts_attr_bulk_buflen = internal global %struct.configfs_attribute { ptr @.str.9, ptr @__this_module, i16 420, ptr @f_ss_opts_bulk_buflen_show, ptr @f_ss_opts_bulk_buflen_store }, align 4
@f_ss_opts_attr_bulk_qlen = internal global %struct.configfs_attribute { ptr @.str.10, ptr @__this_module, i16 420, ptr @f_ss_opts_bulk_qlen_show, ptr @f_ss_opts_bulk_qlen_store }, align 4
@f_ss_opts_attr_iso_qlen = internal global %struct.configfs_attribute { ptr @.str.11, ptr @__this_module, i16 420, ptr @f_ss_opts_iso_qlen_show, ptr @f_ss_opts_iso_qlen_store }, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"isoc_interval\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"isoc_maxpacket\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"isoc_mult\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"isoc_maxburst\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"bulk_buflen\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"bulk_qlen\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"iso_qlen\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"source/sink\00", align 1
@sourcesink_strings = internal global [2 x ptr] [ptr @stringtab_sourcesink, ptr null], align 4
@source_sink_intf_alt0 = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 -1, i8 0, i8 0, i8 0 }, align 1
@source_sink_intf_alt1 = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 4, i8 -1, i8 0, i8 0, i8 0 }, align 1
@fs_source_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"%s: can't autoconfigure on %s\0A\00", align 1
@fs_sink_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@fs_iso_source_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 1, i16 1023, i8 4, i8 0, i8 0 }>, align 1
@fs_iso_sink_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 1023, i8 4, i8 0, i8 0 }>, align 1
@fs_source_sink_descs = internal global [9 x ptr] [ptr @source_sink_intf_alt0, ptr @fs_sink_desc, ptr @fs_source_desc, ptr @source_sink_intf_alt1, ptr @fs_sink_desc, ptr @fs_source_desc, ptr @fs_iso_sink_desc, ptr @fs_iso_source_desc, ptr null], align 4
@hs_source_sink_descs = internal global [9 x ptr] [ptr @source_sink_intf_alt0, ptr @hs_source_desc, ptr @hs_sink_desc, ptr @source_sink_intf_alt1, ptr @hs_source_desc, ptr @hs_sink_desc, ptr @hs_iso_source_desc, ptr @hs_iso_sink_desc, ptr null], align 4
@ss_source_sink_descs = internal global [15 x ptr] [ptr @source_sink_intf_alt0, ptr @ss_source_desc, ptr @ss_source_comp_desc, ptr @ss_sink_desc, ptr @ss_sink_comp_desc, ptr @source_sink_intf_alt1, ptr @ss_source_desc, ptr @ss_source_comp_desc, ptr @ss_sink_desc, ptr @ss_sink_comp_desc, ptr @ss_iso_source_desc, ptr @ss_iso_source_comp_desc, ptr @ss_iso_sink_desc, ptr @ss_iso_sink_comp_desc, ptr null], align 4
@hs_source_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_sink_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_iso_source_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 1024, i8 4, i8 0, i8 0 }>, align 1
@hs_iso_sink_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 1024, i8 4, i8 0, i8 0 }>, align 1
@ss_source_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_sink_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_iso_source_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 1024, i8 4, i8 0, i8 0 }>, align 1
@ss_iso_source_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 1024 }, align 1
@ss_iso_sink_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 1, i16 1024, i8 4, i8 0, i8 0 }>, align 1
@ss_iso_sink_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 1024 }, align 1
@ss_source_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@ss_sink_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"start %s%s %s --> %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ISO-\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"kill %s:  resubmit %d bytes --> %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"bad OUT byte, buf[%d] = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"drivers/usb/gadget/u_f.h\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"source/sink response, err %d\0A\00", align 1
@stringtab_sourcesink = internal global %struct.usb_gadget_strings { i16 1033, ptr @strings_sourcesink }, align 4
@strings_sourcesink = internal global [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.22 }, %struct.usb_string zeroinitializer], align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"source and sink data\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_alias220, ptr @__UNIQUE_ID_license221], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disable_endpoints(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @usb_ep_disable(ptr noundef %1) #10
  %7 = tail call i32 @usb_ep_disable(ptr noundef %2) #10
  %8 = icmp eq ptr %3, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @usb_ep_disable(ptr noundef nonnull %3) #10
  br label %11

11:                                               ; preds = %9, %5
  %12 = icmp eq ptr %4, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @usb_ep_disable(ptr noundef nonnull %4) #10
  br label %15

15:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #1 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @SourceSinkusb_func) #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @lb_modinit() #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @usb_function_unregister(ptr noundef nonnull @SourceSinkusb_func) #10
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @SourceSinkusb_func) #10
  tail call void @lb_modexit() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lb_modinit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @source_sink_alloc_inst() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 156) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %2, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @source_sink_alloc_inst.__key) #10
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @source_sink_free_instance, ptr %6, align 8
  %7 = getelementptr inbounds %struct.f_ss_opts, ptr %2, i32 0, i32 2
  store i32 4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.f_ss_opts, ptr %2, i32 0, i32 3
  store i32 1024, ptr %8, align 4
  %9 = getelementptr inbounds %struct.f_ss_opts, ptr %2, i32 0, i32 6
  store i32 4096, ptr %9, align 8
  %10 = getelementptr inbounds %struct.f_ss_opts, ptr %2, i32 0, i32 7
  store i32 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.f_ss_opts, ptr %2, i32 0, i32 8
  store i32 8, ptr %11, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @ss_func_type) #10
  br label %12

12:                                               ; preds = %4, %0
  %13 = phi ptr [ %2, %4 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @source_sink_alloc_func(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 160) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %6) #10
  %10 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 6
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 7
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 8
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 9
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 10
  store i32 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 11
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 12
  store i32 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  store ptr @.str.12, ptr %3, align 8
  %34 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @sourcesink_bind, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @sourcesink_set_alt, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 14
  store ptr @sourcesink_get_alt, ptr %36, align 8
  %37 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @sourcesink_disable, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 16
  store ptr @sourcesink_setup, ptr %38, align 8
  %39 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 1
  store ptr @sourcesink_strings, ptr %39, align 4
  %40 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @sourcesink_free_func, ptr %40, align 4
  br label %41

41:                                               ; preds = %5, %1
  %42 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @source_sink_free_instance(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ss_attr_release(ptr noundef %0) #0 {
  tail call void @usb_put_function_instance(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_pattern_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_pattern_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1
  %14 = icmp ugt i8 %13, 2
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = zext i8 %13 to i32
  %17 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %12, %9, %3
  %19 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_interval_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_interval_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1
  %14 = icmp ugt i8 %13, 16
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = zext i8 %13 to i32
  %17 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %12, %9, %3
  %19 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_maxpacket_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_maxpacket_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = icmp ugt i16 %13, 1024
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = zext i16 %13 to i32
  %17 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %12, %9, %3
  %19 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_mult_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_mult_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1
  %14 = icmp ugt i8 %13, 2
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = zext i8 %13 to i32
  %17 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 4
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %12, %9, %3
  %19 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_maxburst_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_isoc_maxburst_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1
  %14 = icmp ugt i8 %13, 15
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = zext i8 %13 to i32
  %17 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 5
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %12, %9, %3
  %19 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_bulk_buflen_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_bulk_buflen_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_bulk_qlen_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_bulk_qlen_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 7
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_iso_qlen_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_ss_opts_iso_qlen_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_ss_opts, ptr %0, i32 0, i32 8
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sourcesink_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #10
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %87, label %7

7:                                                ; preds = %2
  %8 = trunc i32 %5 to i8
  store i8 %8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @source_sink_intf_alt0, i32 0, i32 2), align 1
  store i8 %8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @source_sink_intf_alt1, i32 0, i32 2), align 1
  %9 = load ptr, ptr %4, align 4
  %10 = tail call ptr @usb_ep_autoconfig(ptr noundef %9, ptr noundef nonnull @fs_source_desc) #10
  %11 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %19, %7
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %1, align 4
  %17 = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 10
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.13, ptr noundef %16, ptr noundef %18) #12
  br label %87

19:                                               ; preds = %7
  %20 = load ptr, ptr %4, align 4
  %21 = tail call ptr @usb_ep_autoconfig(ptr noundef %20, ptr noundef nonnull @fs_sink_desc) #10
  %22 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 2
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %13, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = icmp ugt i32 %26, 16
  br i1 %29, label %30, label %32

30:                                               ; preds = %28, %24
  %31 = phi i32 [ 1, %24 ], [ 16, %28 ]
  store i32 %31, ptr %25, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %26, %28 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 2, ptr %34, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 15
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 15, ptr %39, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 1023)
  %47 = trunc i32 %46 to i16
  store i16 %47, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_source_desc, i32 0, i32 4), align 1
  %48 = trunc i32 %33 to i8
  store i8 %48, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_source_desc, i32 0, i32 5), align 1
  store i16 %47, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_sink_desc, i32 0, i32 4), align 1
  store i8 %48, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_sink_desc, i32 0, i32 5), align 1
  %49 = load ptr, ptr %4, align 4
  %50 = tail call ptr @usb_ep_autoconfig(ptr noundef %49, ptr noundef nonnull @fs_iso_source_desc) #10
  %51 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 3
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %43
  %54 = load ptr, ptr %4, align 4
  %55 = tail call ptr @usb_ep_autoconfig(ptr noundef %54, ptr noundef nonnull @fs_iso_sink_desc) #10
  %56 = getelementptr inbounds %struct.f_sourcesink, ptr %1, i32 0, i32 4
  store ptr %55, ptr %56, align 4
  %57 = icmp eq ptr %55, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load ptr, ptr %51, align 4
  tail call void @usb_ep_autoconfig_release(ptr noundef %59) #10
  store ptr null, ptr %51, align 4
  br label %60

60:                                               ; preds = %58, %43
  store ptr null, ptr getelementptr inbounds ([9 x ptr], ptr @fs_source_sink_descs, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds ([9 x ptr], ptr @hs_source_sink_descs, i32 0, i32 3), align 4
  store ptr null, ptr getelementptr inbounds ([15 x ptr], ptr @ss_source_sink_descs, i32 0, i32 5), align 4
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, ptr %44, align 4
  %63 = icmp ugt i32 %62, 1024
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 1024, ptr %44, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ 1024, %64 ], [ %62, %61 ]
  %67 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_source_desc, i32 0, i32 2), align 1
  store i8 %67, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_source_desc, i32 0, i32 2), align 1
  %68 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_sink_desc, i32 0, i32 2), align 1
  store i8 %68, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_sink_desc, i32 0, i32 2), align 1
  %69 = trunc i32 %66 to i16
  %70 = load i32, ptr %34, align 4
  %71 = shl i32 %70, 11
  %72 = or i32 %71, %66
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_source_desc, i32 0, i32 4), align 1
  %74 = load i32, ptr %25, align 4
  %75 = trunc i32 %74 to i8
  store i8 %75, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_source_desc, i32 0, i32 5), align 1
  %76 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_source_desc, i32 0, i32 2), align 1
  store i8 %76, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_source_desc, i32 0, i32 2), align 1
  store i16 %73, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_sink_desc, i32 0, i32 4), align 1
  store i8 %75, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_sink_desc, i32 0, i32 5), align 1
  %77 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_iso_sink_desc, i32 0, i32 2), align 1
  store i8 %77, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_iso_sink_desc, i32 0, i32 2), align 1
  store i8 %67, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_source_desc, i32 0, i32 2), align 1
  store i8 %68, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_sink_desc, i32 0, i32 2), align 1
  store i16 %69, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_source_desc, i32 0, i32 4), align 1
  store i8 %75, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_source_desc, i32 0, i32 5), align 1
  %78 = trunc i32 %70 to i8
  store i8 %78, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_source_comp_desc, i32 0, i32 3), align 1
  %79 = load i32, ptr %39, align 4
  %80 = trunc i32 %79 to i8
  store i8 %80, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_source_comp_desc, i32 0, i32 2), align 1
  %81 = add i32 %70, 1
  %82 = mul i32 %81, %66
  %83 = add i32 %79, 1
  %84 = mul i32 %82, %83
  %85 = trunc i32 %84 to i16
  store i16 %85, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_source_comp_desc, i32 0, i32 4), align 1
  store i8 %76, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_source_desc, i32 0, i32 2), align 1
  store i16 %69, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_sink_desc, i32 0, i32 4), align 1
  store i8 %75, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_sink_desc, i32 0, i32 5), align 1
  store i8 %78, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_sink_comp_desc, i32 0, i32 3), align 1
  store i8 %80, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_sink_comp_desc, i32 0, i32 2), align 1
  store i16 %85, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_iso_sink_comp_desc, i32 0, i32 4), align 1
  store i8 %77, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_iso_sink_desc, i32 0, i32 2), align 1
  %86 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @fs_source_sink_descs, ptr noundef nonnull @hs_source_sink_descs, ptr noundef nonnull @ss_source_sink_descs, ptr noundef nonnull @ss_source_sink_descs) #10
  br label %87

87:                                               ; preds = %65, %13, %2
  %88 = phi i32 [ -19, %13 ], [ %5, %2 ], [ %86, %65 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sourcesink_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @usb_ep_disable(ptr noundef %9) #10
  %17 = tail call i32 @usb_ep_disable(ptr noundef %11) #10
  %18 = icmp eq ptr %13, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = tail call i32 @usb_ep_disable(ptr noundef nonnull %13) #10
  br label %21

21:                                               ; preds = %19, %3
  %22 = icmp eq ptr %15, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call i32 @usb_ep_disable(ptr noundef nonnull %15) #10
  br label %25

25:                                               ; preds = %23, %21
  %26 = load ptr, ptr %7, align 4
  %27 = getelementptr inbounds %struct.usb_gadget, ptr %26, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %8, align 4
  %30 = tail call i32 @config_ep_by_speed(ptr noundef %26, ptr noundef %0, ptr noundef %29) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %97

32:                                               ; preds = %25
  %33 = tail call i32 @usb_ep_enable(ptr noundef %29) #10
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %97, label %35

35:                                               ; preds = %32
  store ptr %0, ptr %29, align 4
  %36 = tail call fastcc i32 @source_sink_start_ep(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef %28) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %53, %47, %42, %35
  %39 = phi i32 [ %36, %35 ], [ %45, %42 ], [ %48, %47 ], [ %54, %53 ]
  %40 = load ptr, ptr %8, align 4
  %41 = tail call i32 @usb_ep_disable(ptr noundef %40) #10
  br label %97

42:                                               ; preds = %35
  %43 = load ptr, ptr %10, align 4
  %44 = load ptr, ptr %7, align 4
  %45 = tail call i32 @config_ep_by_speed(ptr noundef %44, ptr noundef %0, ptr noundef %43) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %38

47:                                               ; preds = %42
  %48 = tail call i32 @usb_ep_enable(ptr noundef %43) #10
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %38, label %50

50:                                               ; preds = %47
  store ptr %0, ptr %43, align 4
  %51 = tail call fastcc i32 @source_sink_start_ep(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef %28) #10
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %76, %72, %66, %62, %50
  %54 = phi i32 [ %51, %50 ], [ %64, %62 ], [ %67, %66 ], [ %73, %76 ], [ %73, %72 ]
  %55 = load ptr, ptr %10, align 4
  %56 = tail call i32 @usb_ep_disable(ptr noundef %55) #10
  br label %38

57:                                               ; preds = %50
  %58 = icmp eq i32 %2, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %57
  %60 = load ptr, ptr %12, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %7, align 4
  %64 = tail call i32 @config_ep_by_speed(ptr noundef %63, ptr noundef %0, ptr noundef nonnull %60) #10
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %53

66:                                               ; preds = %62
  %67 = tail call i32 @usb_ep_enable(ptr noundef nonnull %60) #10
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %53, label %69

69:                                               ; preds = %66
  store ptr %0, ptr %60, align 4
  %70 = tail call fastcc i32 @source_sink_start_ep(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %28) #10
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %92, %86, %82, %69
  %73 = phi i32 [ %70, %69 ], [ %84, %82 ], [ %87, %86 ], [ %90, %92 ]
  %74 = load ptr, ptr %12, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %53, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @usb_ep_disable(ptr noundef nonnull %74) #10
  br label %53

78:                                               ; preds = %69, %59
  %79 = phi i32 [ %70, %69 ], [ %51, %59 ]
  %80 = load ptr, ptr %14, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %7, align 4
  %84 = tail call i32 @config_ep_by_speed(ptr noundef %83, ptr noundef %0, ptr noundef nonnull %80) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %72

86:                                               ; preds = %82
  %87 = tail call i32 @usb_ep_enable(ptr noundef nonnull %80) #10
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %72, label %89

89:                                               ; preds = %86
  store ptr %0, ptr %80, align 4
  %90 = tail call fastcc i32 @source_sink_start_ep(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef %28) #10
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = tail call i32 @usb_ep_disable(ptr noundef nonnull %80) #10
  br label %72

94:                                               ; preds = %89, %78, %57
  %95 = phi i32 [ %51, %57 ], [ %90, %89 ], [ %79, %78 ]
  %96 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 5
  store i32 %2, ptr %96, align 4
  br label %97

97:                                               ; preds = %94, %38, %32, %25
  %98 = phi i32 [ %39, %38 ], [ %95, %94 ], [ %30, %25 ], [ %33, %32 ]
  ret i32 %98
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @sourcesink_get_alt(ptr nocapture noundef readonly %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sourcesink_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @usb_ep_disable(ptr noundef %3) #10
  %11 = tail call i32 @usb_ep_disable(ptr noundef %5) #10
  %12 = icmp eq ptr %7, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @usb_ep_disable(ptr noundef nonnull %7) #10
  br label %15

15:                                               ; preds = %13, %1
  %16 = icmp eq ptr %9, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = tail call i32 @usb_ep_disable(ptr noundef nonnull %9) #10
  br label %19

19:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sourcesink_setup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %15 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 1
  store i32 4096, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  switch i8 %17, label %51 [
    i8 91, label %18
    i8 92, label %27
  ]

18:                                               ; preds = %2
  %19 = load i8, ptr %1, align 1
  %20 = icmp eq i8 %19, 64
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = icmp ne i16 %12, 0
  %23 = icmp ne i16 %10, 0
  %24 = select i1 %22, i1 true, i1 %23
  %25 = icmp ugt i16 %14, 4096
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %51, label %36

27:                                               ; preds = %2
  %28 = load i8, ptr %1, align 1
  %29 = icmp eq i8 %28, -64
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = icmp ne i16 %12, 0
  %32 = icmp ne i16 %10, 0
  %33 = select i1 %31, i1 true, i1 %32
  %34 = icmp ugt i16 %14, 4096
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %30, %21
  %37 = zext i16 %14 to i32
  %38 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, -262145
  store i32 %40, ptr %38, align 4
  store i32 %37, ptr %15, align 4
  %41 = load ptr, ptr %5, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_gadget, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call i32 @usb_ep_queue(ptr noundef %44, ptr noundef %8, i32 noundef 2592) #10
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load ptr, ptr %5, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_gadget, ptr %49, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.21, i32 noundef %45) #12
  br label %51

51:                                               ; preds = %47, %36, %30, %27, %21, %18, %2
  %52 = phi i32 [ %45, %47 ], [ %45, %36 ], [ -95, %2 ], [ -95, %27 ], [ -95, %18 ], [ -95, %21 ], [ -95, %30 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sourcesink_free_func(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.f_ss_opts, ptr %3, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.f_ss_opts, ptr %3, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #10
  tail call void @usb_free_all_descriptors(ptr noundef %0) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_autoconfig_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @source_sink_start_ep(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  br i1 %2, label %5, label %34

5:                                                ; preds = %4
  switch i32 %3, label %24 [
    i32 6, label %6
    i32 5, label %6
    i32 3, label %17
  ]

6:                                                ; preds = %5, %5
  %7 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  %12 = mul i32 %11, %8
  %13 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 10
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  %16 = mul i32 %12, %15
  br label %28

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  %23 = mul i32 %22, %19
  br label %28

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 1023)
  br label %28

28:                                               ; preds = %24, %17, %6
  %29 = phi i32 [ %27, %24 ], [ %23, %17 ], [ %16, %6 ]
  %30 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 3
  %31 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 4
  %32 = select i1 %1, ptr %30, ptr %31
  %33 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 13
  br label %41

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 1
  %36 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 2
  %37 = select i1 %1, ptr %35, ptr %36
  %38 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 12
  %39 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = phi ptr [ %32, %28 ], [ %37, %34 ]
  %43 = phi i32 [ %29, %28 ], [ %40, %34 ]
  %44 = phi ptr [ %33, %28 ], [ %38, %34 ]
  %45 = load ptr, ptr %42, align 4
  %46 = load i32, ptr %44, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %113

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.f_sourcesink, ptr %0, i32 0, i32 6
  %50 = getelementptr inbounds %struct.usb_ep, ptr %45, i32 0, i32 9
  br label %54

51:                                               ; preds = %93
  %52 = add nuw nsw i32 %55, 1
  %53 = icmp eq i32 %52, %46
  br i1 %53, label %113, label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ 0, %48 ], [ %52, %51 ]
  %56 = tail call ptr @alloc_ep_req(ptr noundef %45, i32 noundef %43) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %113, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.usb_request, ptr %56, i32 0, i32 7
  store ptr @source_sink_complete, ptr %59, align 4
  br i1 %1, label %60, label %86

60:                                               ; preds = %58
  %61 = load ptr, ptr %56, align 4
  %62 = load ptr, ptr %50, align 4
  %63 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %62, i32 0, i32 4
  %64 = load i16, ptr %63, align 1
  %65 = zext i16 %64 to i32
  %66 = load ptr, ptr %45, align 4
  %67 = getelementptr inbounds %struct.f_sourcesink, ptr %66, i32 0, i32 6
  %68 = load i32, ptr %67, align 4
  switch i32 %68, label %93 [
    i32 0, label %73
    i32 1, label %69
  ]

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.usb_request, ptr %56, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %93, label %76

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.usb_request, ptr %56, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %61, i8 0, i32 %75, i1 false) #10
  br label %93

76:                                               ; preds = %76, %69
  %77 = phi i32 [ %83, %76 ], [ 0, %69 ]
  %78 = phi ptr [ %82, %76 ], [ %61, %69 ]
  %79 = urem i32 %77, %65
  %80 = urem i32 %79, 63
  %81 = trunc i32 %80 to i8
  %82 = getelementptr i8, ptr %78, i32 1
  store i8 %81, ptr %78, align 1
  %83 = add nuw i32 %77, 1
  %84 = load i32, ptr %70, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %76, label %93

86:                                               ; preds = %58
  %87 = load i32, ptr %49, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %56, align 4
  %91 = getelementptr inbounds %struct.usb_request, ptr %56, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %90, i8 85, i32 %92, i1 false)
  br label %93

93:                                               ; preds = %89, %86, %76, %73, %69, %60
  %94 = tail call i32 @usb_ep_queue(ptr noundef %45, ptr noundef nonnull %56, i32 noundef 2592) #10
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %51, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.usb_configuration, ptr %98, i32 0, i32 9
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.usb_gadget, ptr %101, i32 0, i32 11
  %103 = select i1 %2, ptr @.str.15, ptr @.str.2
  %104 = select i1 %1, ptr @.str.16, ptr @.str.17
  %105 = getelementptr inbounds %struct.usb_ep, ptr %45, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.14, ptr noundef nonnull %103, ptr noundef nonnull %104, ptr noundef %106, i32 noundef %94) #12
  %107 = load ptr, ptr %56, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %111, !prof !9

109:                                              ; preds = %96
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 80, i32 noundef 9, ptr noundef null) #10
  %110 = load ptr, ptr %56, align 4
  br label %111

111:                                              ; preds = %109, %96
  %112 = phi ptr [ %110, %109 ], [ %107, %96 ]
  tail call void @kfree(ptr noundef %112) #10
  store ptr null, ptr %56, align 4
  tail call void @usb_ep_free_request(ptr noundef %45, ptr noundef nonnull %56) #10
  br label %113

113:                                              ; preds = %111, %54, %51, %41
  %114 = phi i32 [ %94, %111 ], [ 0, %41 ], [ -12, %54 ], [ 0, %51 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @source_sink_complete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %134, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_configuration, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  switch i32 %7, label %123 [
    i32 0, label %12
    i32 -103, label %67
    i32 -104, label %67
    i32 -108, label %67
  ]

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %123

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 4
  %20 = load i16, ptr %19, align 1
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %123, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr %1, align 4
  %27 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %25
  %31 = icmp ult i32 %23, 2
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = icmp eq i32 %23, 0
  br label %34

34:                                               ; preds = %56, %32
  %35 = phi ptr [ %58, %56 ], [ %26, %32 ]
  %36 = phi i32 [ %57, %56 ], [ 0, %32 ]
  %37 = load i8, ptr %35, align 1
  br i1 %33, label %40, label %42

38:                                               ; preds = %30
  %39 = load i8, ptr %26, align 1
  br label %47

40:                                               ; preds = %34
  %41 = icmp eq i8 %37, 0
  br i1 %41, label %56, label %47

42:                                               ; preds = %34
  %43 = zext i8 %37 to i32
  %44 = urem i32 %36, %21
  %45 = urem i32 %44, 63
  %46 = icmp eq i32 %45, %43
  br i1 %46, label %56, label %47

47:                                               ; preds = %42, %40, %38
  %48 = phi i8 [ %39, %38 ], [ %37, %40 ], [ %37, %42 ]
  %49 = phi i32 [ 0, %38 ], [ %36, %40 ], [ %36, %42 ]
  %50 = load ptr, ptr %11, align 4
  %51 = getelementptr inbounds %struct.usb_gadget, ptr %50, i32 0, i32 11
  %52 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.19, i32 noundef %49, i32 noundef %52) #12
  %53 = load ptr, ptr %13, align 4
  %54 = tail call i32 @usb_ep_set_halt(ptr noundef %53) #10
  %55 = load i32, ptr %22, align 4
  br label %60

56:                                               ; preds = %42, %40
  %57 = add nuw i32 %36, 1
  %58 = getelementptr i8, ptr %35, i32 1
  %59 = icmp eq i32 %57, %28
  br i1 %59, label %60, label %34

60:                                               ; preds = %56, %47
  %61 = phi i32 [ %55, %47 ], [ %23, %56 ]
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %123, label %63

63:                                               ; preds = %60, %25
  %64 = load ptr, ptr %1, align 4
  %65 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  tail call void @llvm.memset.p0.i32(ptr align 1 %64, i8 85, i32 %66, i1 false)
  br label %123

67:                                               ; preds = %5, %5, %5
  %68 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %71, label %114

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %73, i32 0, i32 4
  %75 = load i16, ptr %74, align 1
  %76 = zext i16 %75 to i32
  %77 = getelementptr inbounds %struct.f_sourcesink, ptr %3, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %114, label %80

80:                                               ; preds = %71
  %81 = load ptr, ptr %1, align 4
  %82 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %116, label %85

85:                                               ; preds = %80
  %86 = icmp ult i32 %78, 2
  br i1 %86, label %87, label %93

87:                                               ; preds = %85
  %88 = icmp eq i32 %78, 0
  br label %89

89:                                               ; preds = %110, %87
  %90 = phi ptr [ %112, %110 ], [ %81, %87 ]
  %91 = phi i32 [ %111, %110 ], [ 0, %87 ]
  %92 = load i8, ptr %90, align 1
  br i1 %88, label %95, label %97

93:                                               ; preds = %85
  %94 = load i8, ptr %81, align 1
  br label %102

95:                                               ; preds = %89
  %96 = icmp eq i8 %92, 0
  br i1 %96, label %110, label %102

97:                                               ; preds = %89
  %98 = zext i8 %92 to i32
  %99 = urem i32 %91, %76
  %100 = urem i32 %99, 63
  %101 = icmp eq i32 %100, %98
  br i1 %101, label %110, label %102

102:                                              ; preds = %97, %95, %93
  %103 = phi i8 [ %94, %93 ], [ %92, %95 ], [ %92, %97 ]
  %104 = phi i32 [ 0, %93 ], [ %91, %95 ], [ %91, %97 ]
  %105 = load ptr, ptr %11, align 4
  %106 = getelementptr inbounds %struct.usb_gadget, ptr %105, i32 0, i32 11
  %107 = zext i8 %103 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.19, i32 noundef %104, i32 noundef %107) #12
  %108 = load ptr, ptr %68, align 4
  %109 = tail call i32 @usb_ep_set_halt(ptr noundef %108) #10
  br label %114

110:                                              ; preds = %97, %95
  %111 = add nuw i32 %91, 1
  %112 = getelementptr i8, ptr %90, i32 1
  %113 = icmp eq i32 %111, %83
  br i1 %113, label %114, label %89

114:                                              ; preds = %110, %102, %71, %67
  %115 = load ptr, ptr %1, align 4
  br label %116

116:                                              ; preds = %114, %80
  %117 = phi ptr [ %115, %114 ], [ %81, %80 ]
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121, !prof !9

119:                                              ; preds = %116
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 80, i32 noundef 9, ptr noundef null) #10
  %120 = load ptr, ptr %1, align 4
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi ptr [ %120, %119 ], [ %117, %116 ]
  tail call void @kfree(ptr noundef %122) #10
  store ptr null, ptr %1, align 4
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #10
  br label %134

123:                                              ; preds = %63, %60, %16, %12, %5
  %124 = tail call i32 @usb_ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef 2592) #10
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %11, align 4
  %128 = getelementptr inbounds %struct.usb_gadget, ptr %127, i32 0, i32 11
  %129 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.18, ptr noundef %130, i32 noundef %132, i32 noundef %124) #12
  %133 = tail call i32 @usb_ep_set_halt(ptr noundef %0) #10
  br label %134

134:                                              ; preds = %126, %123, %121, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ep_req(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lb_modexit() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
