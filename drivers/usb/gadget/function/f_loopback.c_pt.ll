; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_loopback.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_loopback.c"
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
%struct.usb_string = type { i8, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.f_lb_opts = type { %struct.usb_function_instance, i32, i32, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_loopback = type { %struct.usb_function, ptr, ptr, i32, i32 }
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

@__UNIQUE_ID_alias220 = internal constant [23 x i8] c"alias=usbfunc:Loopback\00", section ".modinfo", align 1
@Loopbackusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @loopback_alloc_instance, ptr @loopback_alloc }, align 4
@__UNIQUE_ID_license221 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"Loopback\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@loopback_alloc_instance.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"&lb_opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lb_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @lb_item_ops, ptr null, ptr @lb_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@lb_item_ops = internal global %struct.configfs_item_operations { ptr @lb_attr_release, ptr null, ptr null }, align 4
@lb_attrs = internal global [3 x ptr] [ptr @f_lb_opts_attr_qlen, ptr @f_lb_opts_attr_bulk_buflen, ptr null], align 4
@f_lb_opts_attr_qlen = internal global %struct.configfs_attribute { ptr @.str.3, ptr @__this_module, i16 420, ptr @f_lb_opts_qlen_show, ptr @f_lb_opts_qlen_store }, align 4
@f_lb_opts_attr_bulk_buflen = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @f_lb_opts_bulk_buflen_show, ptr @f_lb_opts_bulk_buflen_store }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"qlen\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bulk_buflen\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"loopback\00", align 1
@loopback_strings = internal global [2 x ptr] [ptr @stringtab_loop, ptr null], align 4
@loopback_intf = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 -1, i8 0, i8 0, i8 0 }, align 1
@strings_loopback = internal global [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.8 }, %struct.usb_string zeroinitializer], align 4
@fs_loop_source_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%s: can't autoconfigure on %s\0A\00", align 1
@fs_loop_sink_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@hs_loop_source_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_loop_sink_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@ss_loop_source_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_loop_sink_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@fs_loopback_descs = internal global [4 x ptr] [ptr @loopback_intf, ptr @fs_loop_sink_desc, ptr @fs_loop_source_desc, ptr null], align 4
@hs_loopback_descs = internal global [4 x ptr] [ptr @loopback_intf, ptr @hs_loop_source_desc, ptr @hs_loop_sink_desc, ptr null], align 4
@ss_loopback_descs = internal global [6 x ptr] [ptr @loopback_intf, ptr @ss_loop_source_desc, ptr @ss_loop_source_comp_desc, ptr @ss_loop_sink_desc, ptr @ss_loop_sink_comp_desc, ptr null], align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"loop input to output\00", align 1
@ss_loop_source_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@ss_loop_sink_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s queue req --> %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Unable to loop back buffer to %s: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"%s loop complete --> %d, %d/%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"drivers/usb/gadget/u_f.h\00", align 1
@stringtab_loop = internal global %struct.usb_gadget_strings { i16 1033, ptr @strings_loopback }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_alias220, ptr @__UNIQUE_ID_license221], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @lb_modinit() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @Loopbackusb_func) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @lb_modexit() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @Loopbackusb_func) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @loopback_alloc_instance() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 132) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.f_lb_opts, ptr %2, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @loopback_alloc_instance.__key) #7
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @lb_free_instance, ptr %6, align 8
  %7 = getelementptr inbounds %struct.f_lb_opts, ptr %2, i32 0, i32 1
  store i32 4096, ptr %7, align 4
  %8 = getelementptr inbounds %struct.f_lb_opts, ptr %2, i32 0, i32 2
  store i32 32, ptr %8, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @lb_func_type) #7
  br label %9

9:                                                ; preds = %4, %0
  %10 = phi ptr [ %2, %4 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @loopback_alloc(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 124) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #7
  %7 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %6) #7
  %10 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_loopback, ptr %3, i32 0, i32 4
  store i32 %11, ptr %12, align 8
  %13 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.f_loopback, ptr %3, i32 0, i32 3
  %16 = icmp eq i32 %14, 0
  %17 = select i1 %16, i32 32, i32 %14
  store i32 %17, ptr %15, align 4
  store ptr @.str.6, ptr %3, align 8
  %18 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @loopback_bind, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @loopback_set_alt, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @loopback_disable, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 1
  store ptr @loopback_strings, ptr %21, align 4
  %22 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @lb_free_func, ptr %22, align 4
  br label %23

23:                                               ; preds = %5, %1
  %24 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lb_free_instance(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lb_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_lb_opts_qlen_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_lb_opts_qlen_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_lb_opts_bulk_buflen_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #7
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_lb_opts_bulk_buflen_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_lb_opts, ptr %0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loopback_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = trunc i32 %5 to i8
  store i8 %8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @loopback_intf, i32 0, i32 2), align 1
  %9 = tail call i32 @usb_string_id(ptr noundef %4) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %7
  %12 = trunc i32 %9 to i8
  store i8 %12, ptr @strings_loopback, align 4
  store i8 %12, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @loopback_intf, i32 0, i32 8), align 1
  %13 = load ptr, ptr %4, align 4
  %14 = tail call ptr @usb_ep_autoconfig(ptr noundef %13, ptr noundef nonnull @fs_loop_source_desc) #7
  %15 = getelementptr inbounds %struct.f_loopback, ptr %1, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %23, %11
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 11
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 10
  %22 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef %20, ptr noundef %22) #9
  br label %32

23:                                               ; preds = %11
  %24 = load ptr, ptr %4, align 4
  %25 = tail call ptr @usb_ep_autoconfig(ptr noundef %24, ptr noundef nonnull @fs_loop_sink_desc) #7
  %26 = getelementptr inbounds %struct.f_loopback, ptr %1, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %17, label %28

28:                                               ; preds = %23
  %29 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_loop_source_desc, i32 0, i32 2), align 1
  store i8 %29, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_loop_source_desc, i32 0, i32 2), align 1
  %30 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_loop_sink_desc, i32 0, i32 2), align 1
  store i8 %30, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_loop_sink_desc, i32 0, i32 2), align 1
  store i8 %29, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_loop_source_desc, i32 0, i32 2), align 1
  store i8 %30, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_loop_sink_desc, i32 0, i32 2), align 1
  %31 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @fs_loopback_descs, ptr noundef nonnull @hs_loopback_descs, ptr noundef nonnull @ss_loopback_descs, ptr noundef nonnull @ss_loopback_descs) #7
  br label %32

32:                                               ; preds = %28, %17, %7, %2
  %33 = phi i32 [ -19, %17 ], [ %5, %2 ], [ %9, %7 ], [ %31, %28 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @loopback_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_loopback, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.f_loopback, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @disable_endpoints(ptr noundef %7, ptr noundef %9, ptr noundef %11, ptr noundef null, ptr noundef null) #7
  %12 = load ptr, ptr %8, align 4
  %13 = load ptr, ptr %7, align 4
  %14 = tail call i32 @config_ep_by_speed(ptr noundef %13, ptr noundef %0, ptr noundef %12) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %3
  %17 = tail call i32 @usb_ep_enable(ptr noundef %12) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %80, label %19

19:                                               ; preds = %16
  store ptr %0, ptr %12, align 4
  %20 = load ptr, ptr %10, align 4
  %21 = load ptr, ptr %7, align 4
  %22 = tail call i32 @config_ep_by_speed(ptr noundef %21, ptr noundef %0, ptr noundef %20) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %19
  %25 = tail call i32 @usb_ep_enable(ptr noundef %20) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %76, label %27

27:                                               ; preds = %24
  store ptr %0, ptr %20, align 4
  %28 = getelementptr inbounds %struct.f_loopback, ptr %0, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %80, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.f_loopback, ptr %0, i32 0, i32 4
  br label %37

33:                                               ; preds = %47
  %34 = add nuw i32 %38, 1
  %35 = load i32, ptr %28, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %80

37:                                               ; preds = %33, %31
  %38 = phi i32 [ 0, %31 ], [ %34, %33 ]
  %39 = load ptr, ptr %8, align 4
  %40 = tail call ptr @usb_ep_alloc_request(ptr noundef %39, i32 noundef 2592) #7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %72, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %10, align 4
  %44 = load i32, ptr %32, align 4
  %45 = tail call ptr @alloc_ep_req(ptr noundef %43, i32 noundef %44) #7
  %46 = icmp eq ptr %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.usb_request, ptr %40, i32 0, i32 7
  store ptr @loopback_complete, ptr %48, align 4
  %49 = getelementptr inbounds %struct.usb_request, ptr %45, i32 0, i32 7
  store ptr @loopback_complete, ptr %49, align 4
  %50 = load ptr, ptr %45, align 4
  store ptr %50, ptr %40, align 4
  %51 = getelementptr inbounds %struct.usb_request, ptr %40, i32 0, i32 8
  store ptr %45, ptr %51, align 4
  %52 = getelementptr inbounds %struct.usb_request, ptr %45, i32 0, i32 8
  store ptr %40, ptr %52, align 4
  %53 = load ptr, ptr %10, align 4
  %54 = tail call i32 @usb_ep_queue(ptr noundef %53, ptr noundef nonnull %45, i32 noundef 2592) #7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %33, label %56

56:                                               ; preds = %47
  %57 = load ptr, ptr %7, align 4
  %58 = getelementptr inbounds %struct.usb_gadget, ptr %57, i32 0, i32 11
  %59 = load ptr, ptr %10, align 4
  %60 = getelementptr inbounds %struct.usb_ep, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.9, ptr noundef %61, i32 noundef %54) #9
  %62 = load ptr, ptr %10, align 4
  %63 = load ptr, ptr %45, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67, !prof !9

65:                                               ; preds = %56
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 80, i32 noundef 9, ptr noundef null) #7
  %66 = load ptr, ptr %45, align 4
  br label %67

67:                                               ; preds = %65, %56
  %68 = phi ptr [ %66, %65 ], [ %63, %56 ]
  tail call void @kfree(ptr noundef %68) #7
  store ptr null, ptr %45, align 4
  tail call void @usb_ep_free_request(ptr noundef %62, ptr noundef nonnull %45) #7
  br label %69

69:                                               ; preds = %67, %42
  %70 = phi i32 [ %54, %67 ], [ -12, %42 ]
  %71 = load ptr, ptr %8, align 4
  tail call void @usb_ep_free_request(ptr noundef %71, ptr noundef nonnull %40) #7
  br label %72

72:                                               ; preds = %69, %37
  %73 = phi i32 [ %70, %69 ], [ -12, %37 ]
  %74 = load ptr, ptr %10, align 4
  %75 = tail call i32 @usb_ep_disable(ptr noundef %74) #7
  br label %76

76:                                               ; preds = %72, %24, %19
  %77 = phi i32 [ %73, %72 ], [ %25, %24 ], [ %22, %19 ]
  %78 = load ptr, ptr %8, align 4
  %79 = tail call i32 @usb_ep_disable(ptr noundef %78) #7
  br label %80

80:                                               ; preds = %76, %33, %27, %16, %3
  %81 = phi i32 [ %77, %76 ], [ %17, %16 ], [ %14, %3 ], [ 0, %27 ], [ 0, %33 ]
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @loopback_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.f_loopback, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_loopback, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @disable_endpoints(ptr noundef %5, ptr noundef %7, ptr noundef %9, ptr noundef null, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lb_free_func(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.f_lb_opts, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.f_lb_opts, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #7
  tail call void @usb_free_all_descriptors(ptr noundef %0) #7
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_endpoints(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @loopback_complete(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %40 [
    i32 0, label %10
    i32 -103, label %49
    i32 -104, label %49
    i32 -108, label %49
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.f_loopback, ptr %3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  %14 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %15 = load ptr, ptr %14, align 4
  br i1 %13, label %16, label %31

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %18, %20
  %22 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = select i1 %21, i32 262144, i32 0
  %25 = and i32 %23, -262145
  %26 = or i32 %25, %24
  store i32 %26, ptr %22, align 4
  %27 = load i32, ptr %17, align 4
  %28 = getelementptr inbounds %struct.usb_request, ptr %15, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.f_loopback, ptr %3, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %16, %10
  %32 = phi ptr [ %30, %16 ], [ %12, %10 ]
  %33 = tail call i32 @usb_ep_queue(ptr noundef %32, ptr noundef %15, i32 noundef 2592) #7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %68, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 4
  %37 = getelementptr inbounds %struct.usb_gadget, ptr %36, i32 0, i32 11
  %38 = getelementptr inbounds %struct.usb_ep, ptr %32, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.10, ptr noundef %39, i32 noundef %33) #9
  br label %49

40:                                               ; preds = %2
  %41 = load ptr, ptr %7, align 4
  %42 = getelementptr inbounds %struct.usb_gadget, ptr %41, i32 0, i32 11
  %43 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.11, ptr noundef %44, i32 noundef %9, i32 noundef %46, i32 noundef %48) #9
  br label %49

49:                                               ; preds = %40, %35, %2, %2, %2
  %50 = phi ptr [ %1, %40 ], [ %1, %2 ], [ %1, %2 ], [ %1, %2 ], [ %15, %35 ]
  %51 = phi ptr [ %0, %40 ], [ %0, %2 ], [ %0, %2 ], [ %0, %2 ], [ %32, %35 ]
  %52 = getelementptr inbounds %struct.f_loopback, ptr %3, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.f_loopback, ptr %3, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi ptr [ %57, %55 ], [ %53, %49 ]
  %60 = getelementptr inbounds %struct.usb_request, ptr %50, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  tail call void @usb_ep_free_request(ptr noundef %59, ptr noundef %61) #7
  %62 = load ptr, ptr %50, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66, !prof !9

64:                                               ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 80, i32 noundef 9, ptr noundef null) #7
  %65 = load ptr, ptr %50, align 4
  br label %66

66:                                               ; preds = %64, %58
  %67 = phi ptr [ %65, %64 ], [ %62, %58 ]
  tail call void @kfree(ptr noundef %67) #7
  store ptr null, ptr %50, align 4
  tail call void @usb_ep_free_request(ptr noundef %51, ptr noundef %50) #7
  br label %68

68:                                               ; preds = %66, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ep_req(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
