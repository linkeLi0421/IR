; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_printer.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_printer.c"
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
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.f_printer_opts = type { %struct.usb_function_instance, i32, ptr, i8, i32, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.printer_dev = type { %struct.spinlock, %struct.mutex, ptr, i8, ptr, ptr, %struct.kref, %struct.list_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32, ptr, i8, i8, i32, %struct.cdev, i8, %struct.wait_queue_head, i32, ptr, %struct.usb_function }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, ptr, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.62 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.63 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.64 = type { ptr }

@__UNIQUE_ID_alias226 = internal constant [22 x i8] c"alias=usbfunc:printer\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [20 x i8] c"author=Craig Nadler\00", section ".modinfo", align 1
@printerusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @gprinter_alloc_inst, ptr @gprinter_alloc }, align 4
@.str = private unnamed_addr constant [8 x i8] c"printer\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@gprinter_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@printer_ida_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @printer_ida_lock, i64 12), ptr getelementptr (i8, ptr @printer_ida_lock, i64 12) } }, align 4
@printer_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@printer_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @printer_item_ops, ptr null, ptr @printer_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gprinter_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"usb_printer_gadget\00", align 1
@usb_gadget_class = internal unnamed_addr global ptr null, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"\013unable to create usb_gadget class %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"USB printer gadget\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\013alloc_chrdev_region %d\0A\00", align 1
@major = internal unnamed_addr global i32 0, align 4
@minors = internal unnamed_addr global i1 false, align 4
@printer_item_ops = internal global %struct.configfs_item_operations { ptr @printer_attr_release, ptr null, ptr null }, align 4
@printer_attrs = internal global [3 x ptr] [ptr @f_printer_opts_attr_pnp_string, ptr @f_printer_opts_attr_q_len, ptr null], align 4
@f_printer_opts_attr_pnp_string = internal global %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 420, ptr @f_printer_opts_pnp_string_show, ptr @f_printer_opts_pnp_string_store }, align 4
@f_printer_opts_attr_q_len = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @f_printer_opts_q_len_show, ptr @f_printer_opts_q_len_store }, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"pnp_string\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"q_len\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@gprinter_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"&dev->lock_printer_io\00", align 1
@gprinter_alloc.__key.11 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"&dev->rx_wait\00", align 1
@gprinter_alloc.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"&dev->tx_wait\00", align 1
@gprinter_alloc.__key.15 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"&dev->tx_flush_wait\00", align 1
@intf_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 2, i8 7, i8 1, i8 2, i8 0 }, align 1
@fs_ep_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"can't autoconfigure on %s\0A\00", align 1
@fs_ep_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 0, i8 0, i8 0, i8 0 }>, align 1
@hs_ep_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@hs_ep_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 512, i8 0, i8 0, i8 0 }>, align 1
@ss_ep_in_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@ss_ep_out_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 2, i16 1024, i8 0, i8 0, i8 0 }>, align 1
@fs_printer_function = internal global [4 x ptr] [ptr @intf_desc, ptr @fs_ep_in_desc, ptr @fs_ep_out_desc, ptr null], align 4
@hs_printer_function = internal global [4 x ptr] [ptr @intf_desc, ptr @hs_ep_in_desc, ptr @hs_ep_out_desc, ptr null], align 4
@ss_printer_function = internal global [6 x ptr] [ptr @intf_desc, ptr @ss_ep_in_desc, ptr @ss_ep_in_comp_desc, ptr @ss_ep_out_desc, ptr @ss_ep_out_comp_desc, ptr null], align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"g_printer%d\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"Failed to create device: g_printer\0A\00", align 1
@printer_io_operations = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @printer_read, ptr @printer_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @printer_poll, ptr @printer_ioctl, ptr null, ptr null, i32 0, ptr @printer_open, ptr null, ptr @printer_close, ptr @printer_fsync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [28 x i8] c"Failed to open char device\0A\00", align 1
@ss_ep_in_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@ss_ep_out_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"%s:%d Error!\0A\00", align 1
@__func__.printer_func_setup = private unnamed_addr constant [19 x i8] c"printer_func_setup\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Received Printer Reset Request\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"drivers/usb/gadget/function/f_printer.c\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Using interface %x\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_license227], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @printerusb_func) #14
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @printerusb_func) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gprinter_alloc_inst() #2 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 140) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.f_printer_opts, ptr %3, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull @gprinter_alloc_inst.__key) #14
  %7 = getelementptr inbounds %struct.usb_function_instance, ptr %3, i32 0, i32 4
  store ptr @gprinter_free_inst, ptr %7, align 8
  %8 = getelementptr inbounds %struct.f_printer_opts, ptr %3, i32 0, i32 4
  store i32 10, ptr %8, align 8
  tail call void @mutex_lock(ptr noundef nonnull @printer_ida_lock) #14
  %9 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @printer_ida, i32 0, i32 0, i32 2), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #14
  store i32 0, ptr %1, align 4, !annotation !8
  %12 = tail call ptr @__class_create(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.3, ptr noundef nonnull @gprinter_setup.__key) #14
  store ptr %12, ptr @usb_gadget_class, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = call i32 @alloc_chrdev_region(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @.str.5) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %15) #16
  %19 = load ptr, ptr @usb_gadget_class, align 4
  call void @class_destroy(ptr noundef %19) #14
  store ptr null, ptr @usb_gadget_class, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  br label %26

20:                                               ; preds = %14
  %21 = load i32, ptr %1, align 4
  %22 = lshr i32 %21, 20
  store i32 %22, ptr @major, align 4
  store i1 true, ptr @minors, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  br label %29

23:                                               ; preds = %11
  %24 = ptrtoint ptr %12 to i32
  store ptr null, ptr @usb_gadget_class, align 4
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %24) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i32 [ %15, %17 ], [ %24, %23 ]
  %28 = inttoptr i32 %27 to ptr
  call void @kfree(ptr noundef nonnull %3) #14
  br label %52

29:                                               ; preds = %20, %5
  %30 = call i32 @ida_alloc_range(ptr noundef nonnull @printer_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #14
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  call void @ida_free(ptr noundef nonnull @printer_ida, i32 noundef %30) #14
  %33 = getelementptr inbounds %struct.f_printer_opts, ptr %3, i32 0, i32 1
  store i32 -19, ptr %33, align 4
  br label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.f_printer_opts, ptr %3, i32 0, i32 1
  store i32 %30, ptr %35, align 4
  %36 = icmp slt i32 %30, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34, %32
  %38 = phi i32 [ -19, %32 ], [ %30, %34 ]
  %39 = inttoptr i32 %38 to ptr
  call void @kfree(ptr noundef nonnull %3) #14
  %40 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @printer_ida, i32 0, i32 0, i32 2), align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32, ptr @major, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = shl i32 %43, 20
  %47 = load i1, ptr @minors, align 4
  %48 = select i1 %47, i32 4, i32 0
  call void @unregister_chrdev_region(i32 noundef %46, i32 noundef %48) #14
  store i1 false, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load ptr, ptr @usb_gadget_class, align 4
  call void @class_destroy(ptr noundef %50) #14
  store ptr null, ptr @usb_gadget_class, align 4
  br label %52

51:                                               ; preds = %34
  call void @config_group_init_type_name(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @printer_func_type) #14
  br label %52

52:                                               ; preds = %51, %49, %37, %26
  %53 = phi ptr [ %28, %26 ], [ %39, %49 ], [ %39, %37 ], [ %3, %51 ]
  call void @mutex_unlock(ptr noundef nonnull @printer_ida_lock) #14
  br label %54

54:                                               ; preds = %52, %0
  %55 = phi ptr [ %53, %52 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gprinter_alloc(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %2) #14
  %3 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load i1, ptr @minors, align 4
  %6 = select i1 %5, i32 4, i32 0
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef %2) #14
  br label %55

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 332) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef %2) #14
  br label %55

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 6
  store volatile i32 1, ptr %15, align 8
  %16 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = load i32, ptr %3, align 4
  %20 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 20
  store i32 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 25
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 24
  store i32 %25, ptr %26, align 8
  tail call void @mutex_unlock(ptr noundef %2) #14
  %27 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 26
  store ptr @.str, ptr %27, align 8
  %28 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 26, i32 9
  store ptr @printer_func_bind, ptr %28, align 4
  %29 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 26, i32 16
  store ptr @printer_func_setup, ptr %29, align 8
  %30 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 26, i32 10
  store ptr @printer_func_unbind, ptr %30, align 8
  %31 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 26, i32 13
  store ptr @printer_func_set_alt, ptr %31, align 4
  %32 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 26, i32 15
  store ptr @printer_func_disable, ptr %32, align 4
  %33 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 26, i32 17
  store ptr @gprinter_req_match, ptr %33, align 4
  %34 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 26, i32 11
  store ptr @gprinter_free, ptr %34, align 4
  %35 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 11
  store volatile ptr %35, ptr %35, align 8
  %36 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 11, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 7
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 7, i32 1
  store ptr %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 9
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 9, i32 1
  store ptr %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 12
  store volatile ptr %41, ptr %41, align 8
  %42 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 12, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 8
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 8, i32 1
  store ptr %43, ptr %44, align 8
  store i32 0, ptr %11, align 8
  %45 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %45, ptr noundef nonnull @.str.10, ptr noundef nonnull @gprinter_alloc.__key) #14
  %46 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %46, ptr noundef nonnull @.str.12, ptr noundef nonnull @gprinter_alloc.__key.11) #14
  %47 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %47, ptr noundef nonnull @.str.14, ptr noundef nonnull @gprinter_alloc.__key.13) #14
  %48 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %48, ptr noundef nonnull @.str.16, ptr noundef nonnull @gprinter_alloc.__key.15) #14
  %49 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 3
  store i8 -1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 22
  store i8 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 18
  store i8 8, ptr %51, align 4
  %52 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 15
  store ptr null, ptr %52, align 8
  %53 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 16
  store i32 0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.printer_dev, ptr %11, i32 0, i32 17
  store ptr null, ptr %54, align 8
  br label %55

55:                                               ; preds = %14, %13, %8
  %56 = phi ptr [ inttoptr (i32 -2 to ptr), %8 ], [ %27, %14 ], [ inttoptr (i32 -12 to ptr), %13 ]
  ret ptr %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gprinter_free_inst(ptr noundef %0) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @printer_ida_lock) #14
  %2 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  tail call void @ida_free(ptr noundef nonnull @printer_ida, i32 noundef %3) #14
  %4 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @printer_ida, i32 0, i32 0, i32 2), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, ptr @major, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = shl i32 %7, 20
  %11 = load i1, ptr @minors, align 4
  %12 = select i1 %11, i32 4, i32 0
  tail call void @unregister_chrdev_region(i32 noundef %10, i32 noundef %12) #14
  store i1 false, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %13

13:                                               ; preds = %9, %6
  %14 = load ptr, ptr @usb_gadget_class, align 4
  tail call void @class_destroy(ptr noundef %14) #14
  store ptr null, ptr @usb_gadget_class, align 4
  br label %15

15:                                               ; preds = %13, %1
  tail call void @mutex_unlock(ptr noundef nonnull @printer_ida_lock) #14
  %16 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 3
  %17 = load i8, ptr %16, align 4, !range !9
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @kfree(ptr noundef %21) #14
  br label %22

22:                                               ; preds = %19, %15
  tail call void @kfree(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @printer_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_printer_opts_pnp_string_show(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @strlcpy(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 4096) #14
  %9 = icmp ugt i32 %8, 4095
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = add nsw i32 %8, -1
  %12 = getelementptr i8, ptr %1, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 10
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = icmp ult i32 %8, 4095
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = add nuw nsw i32 %8, 1
  %19 = getelementptr i8, ptr %1, i32 %8
  store i8 10, ptr %19, align 1
  %20 = getelementptr i8, ptr %1, i32 %18
  store i8 0, ptr %20, align 1
  br label %21

21:                                               ; preds = %17, %15, %10, %7, %2
  %22 = phi i32 [ %18, %17 ], [ 4095, %15 ], [ %8, %10 ], [ 0, %2 ], [ 4096, %7 ]
  tail call void @mutex_unlock(ptr noundef %3) #14
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_printer_opts_pnp_string_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %4) #14
  %5 = tail call ptr @kstrndup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 4, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #14
  br label %14

14:                                               ; preds = %11, %7
  store i8 1, ptr %8, align 4
  %15 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 2
  store ptr %5, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %2, %14 ], [ -12, %3 ]
  tail call void @mutex_unlock(ptr noundef %4) #14
  ret i32 %17
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_printer_opts_q_len_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #14
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_printer_opts_q_len_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #14
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %5) #14
  %6 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds %struct.f_printer_opts, ptr %0, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9, %3
  %17 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #14
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_func_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #14
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %147, label %8

8:                                                ; preds = %2
  %9 = trunc i32 %6 to i8
  store i8 %9, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @intf_desc, i32 0, i32 2), align 1
  %10 = getelementptr i8, ptr %1, i32 -200
  store ptr %5, ptr %10, align 4
  %11 = load ptr, ptr %4, align 4
  %12 = tail call ptr @usb_ep_autoconfig(ptr noundef %11, ptr noundef nonnull @fs_ep_in_desc) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %19, %8
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 10
  %18 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.17, ptr noundef %18) #16
  br label %147

19:                                               ; preds = %8
  %20 = load ptr, ptr %4, align 4
  %21 = tail call ptr @usb_ep_autoconfig(ptr noundef %20, ptr noundef nonnull @fs_ep_out_desc) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %14, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ep_in_desc, i32 0, i32 2), align 1
  store i8 %24, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ep_in_desc, i32 0, i32 2), align 1
  %25 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ep_out_desc, i32 0, i32 2), align 1
  store i8 %25, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ep_out_desc, i32 0, i32 2), align 1
  store i8 %24, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ep_in_desc, i32 0, i32 2), align 1
  store i8 %25, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ep_out_desc, i32 0, i32 2), align 1
  %26 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @fs_printer_function, ptr noundef nonnull @hs_printer_function, ptr noundef nonnull @ss_printer_function, ptr noundef nonnull @ss_printer_function) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %147

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %1, i32 -192
  store ptr %12, ptr %29, align 4
  %30 = getelementptr i8, ptr %1, i32 -188
  store ptr %21, ptr %30, align 4
  %31 = getelementptr i8, ptr %1, i32 -8
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %82, label %34

34:                                               ; preds = %28
  %35 = getelementptr i8, ptr %1, i32 -144
  %36 = tail call ptr @usb_ep_alloc_request(ptr noundef nonnull %12, i32 noundef 3264) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %125, label %42

38:                                               ; preds = %51
  %39 = icmp eq i32 %57, 0
  br i1 %39, label %82, label %40

40:                                               ; preds = %38
  %41 = getelementptr i8, ptr %1, i32 -180
  br label %63

42:                                               ; preds = %59, %34
  %43 = phi ptr [ %61, %59 ], [ %36, %34 ]
  %44 = phi i32 [ %56, %59 ], [ 0, %34 ]
  %45 = phi ptr [ %60, %59 ], [ %12, %34 ]
  %46 = getelementptr inbounds %struct.usb_request, ptr %43, i32 0, i32 1
  store i32 8192, ptr %46, align 4
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3264, i32 noundef 8192) #15
  store ptr %48, ptr %43, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  tail call void @usb_ep_free_request(ptr noundef %45, ptr noundef nonnull %43) #14
  br label %125

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.usb_request, ptr %43, i32 0, i32 9
  %53 = load ptr, ptr %35, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  store ptr %52, ptr %54, align 4
  store ptr %53, ptr %52, align 4
  %55 = getelementptr inbounds %struct.usb_request, ptr %43, i32 0, i32 9, i32 1
  store ptr %35, ptr %55, align 4
  store volatile ptr %52, ptr %35, align 4
  %56 = add nuw i32 %44, 1
  %57 = load i32, ptr %31, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %38

59:                                               ; preds = %51
  %60 = load ptr, ptr %29, align 4
  %61 = tail call ptr @usb_ep_alloc_request(ptr noundef %60, i32 noundef 3264) #14
  %62 = icmp eq ptr %61, null
  br i1 %62, label %125, label %42

63:                                               ; preds = %74, %40
  %64 = phi i32 [ 0, %40 ], [ %79, %74 ]
  %65 = load ptr, ptr %30, align 4
  %66 = tail call ptr @usb_ep_alloc_request(ptr noundef %65, i32 noundef 3264) #14
  %67 = icmp eq ptr %66, null
  br i1 %67, label %104, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.usb_request, ptr %66, i32 0, i32 1
  store i32 8192, ptr %69, align 4
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %71 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 8192) #15
  store ptr %71, ptr %66, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  tail call void @usb_ep_free_request(ptr noundef %65, ptr noundef nonnull %66) #14
  br label %104

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.usb_request, ptr %66, i32 0, i32 9
  %76 = load ptr, ptr %41, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %75, ptr %77, align 4
  store ptr %76, ptr %75, align 4
  %78 = getelementptr inbounds %struct.usb_request, ptr %66, i32 0, i32 9, i32 1
  store ptr %41, ptr %78, align 4
  store volatile ptr %75, ptr %41, align 4
  %79 = add nuw i32 %64, 1
  %80 = load i32, ptr %31, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %63, label %82

82:                                               ; preds = %74, %38, %28
  %83 = load i32, ptr @major, align 4
  %84 = shl i32 %83, 20
  %85 = getelementptr i8, ptr %1, i32 -88
  %86 = load i32, ptr %85, align 4
  %87 = or i32 %84, %86
  %88 = load ptr, ptr @usb_gadget_class, align 4
  %89 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %88, ptr noundef null, i32 noundef %87, ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef %86) #14
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load ptr, ptr %10, align 4
  %93 = getelementptr inbounds %struct.usb_gadget, ptr %92, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.19) #16
  %94 = ptrtoint ptr %89 to i32
  br label %104

95:                                               ; preds = %82
  %96 = getelementptr i8, ptr %1, i32 -84
  tail call void @cdev_init(ptr noundef %96, ptr noundef nonnull @printer_io_operations) #14
  %97 = getelementptr i8, ptr %1, i32 -48
  store ptr @__this_module, ptr %97, align 4
  %98 = tail call i32 @cdev_add(ptr noundef %96, i32 noundef %87, i32 noundef 1) #14
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %147, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %10, align 4
  %102 = getelementptr inbounds %struct.usb_gadget, ptr %101, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.20) #16
  %103 = load ptr, ptr @usb_gadget_class, align 4
  tail call void @device_destroy(ptr noundef %103, i32 noundef %87) #14
  br label %104

104:                                              ; preds = %100, %91, %73, %63
  %105 = phi i32 [ %94, %91 ], [ %98, %100 ], [ -12, %73 ], [ -12, %63 ]
  %106 = getelementptr i8, ptr %1, i32 -180
  %107 = load volatile ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %125, label %109

109:                                              ; preds = %122, %104
  %110 = phi ptr [ %123, %122 ], [ %107, %104 ]
  %111 = getelementptr i8, ptr %110, i32 -36
  %112 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = load ptr, ptr %110, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %113, ptr %115, align 4
  store volatile ptr %114, ptr %113, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %110, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %112, align 4
  %116 = load ptr, ptr %30, align 4
  %117 = icmp ne ptr %116, null
  %118 = icmp ne ptr %111, null
  %119 = and i1 %118, %117
  br i1 %119, label %120, label %122

120:                                              ; preds = %109
  %121 = load ptr, ptr %111, align 4
  tail call void @kfree(ptr noundef %121) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %116, ptr noundef nonnull %111) #14
  br label %122

122:                                              ; preds = %120, %109
  %123 = load volatile ptr, ptr %106, align 4
  %124 = icmp eq ptr %123, %106
  br i1 %124, label %125, label %109

125:                                              ; preds = %122, %104, %59, %50, %34
  %126 = phi i32 [ -12, %50 ], [ %105, %104 ], [ -12, %34 ], [ %105, %122 ], [ -12, %59 ]
  %127 = getelementptr i8, ptr %1, i32 -144
  %128 = load volatile ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %127
  br i1 %129, label %146, label %130

130:                                              ; preds = %143, %125
  %131 = phi ptr [ %144, %143 ], [ %128, %125 ]
  %132 = getelementptr i8, ptr %131, i32 -36
  %133 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = load ptr, ptr %131, align 4
  %136 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  store ptr %134, ptr %136, align 4
  store volatile ptr %135, ptr %134, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %131, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %133, align 4
  %137 = load ptr, ptr %29, align 4
  %138 = icmp ne ptr %137, null
  %139 = icmp ne ptr %132, null
  %140 = and i1 %139, %138
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load ptr, ptr %132, align 4
  tail call void @kfree(ptr noundef %142) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %137, ptr noundef nonnull %132) #14
  br label %143

143:                                              ; preds = %141, %130
  %144 = load volatile ptr, ptr %127, align 4
  %145 = icmp eq ptr %144, %127
  br i1 %145, label %146, label %130

146:                                              ; preds = %143, %125
  tail call void @usb_free_all_descriptors(ptr noundef %1) #14
  br label %147

147:                                              ; preds = %146, %95, %23, %14, %2
  %148 = phi i32 [ %126, %146 ], [ -19, %14 ], [ %6, %2 ], [ %26, %23 ], [ 0, %95 ]
  ret i32 %148
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_func_setup(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_configuration, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_composite_dev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %11 = load i16, ptr %10, align 1
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %13 = load i16, ptr %12, align 1
  %14 = load i8, ptr %1, align 1
  %15 = and i8 %14, 96
  %16 = icmp eq i8 %15, 32
  br i1 %16, label %17, label %169

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  switch i8 %19, label %169 [
    i8 0, label %20
    i8 1, label %30
    i8 2, label %41
  ]

20:                                               ; preds = %17
  %21 = lshr i16 %11, 8
  %22 = getelementptr i8, ptr %0, i32 -196
  %23 = load i8, ptr %22, align 4
  %24 = sext i8 %23 to i16
  %25 = icmp eq i16 %21, %24
  br i1 %25, label %26, label %169

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %0, i32 -4
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %149, label %140

30:                                               ; preds = %17
  %31 = zext i16 %11 to i32
  %32 = getelementptr i8, ptr %0, i32 -196
  %33 = load i8, ptr %32, align 4
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %169

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %0, i32 -92
  %38 = load i8, ptr %37, align 4
  store i8 %38, ptr %9, align 1
  %39 = icmp ne i16 %13, 0
  %40 = zext i1 %39 to i32
  br label %149

41:                                               ; preds = %17
  %42 = zext i16 %11 to i32
  %43 = getelementptr i8, ptr %0, i32 -196
  %44 = load i8, ptr %43, align 4
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %169

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %0, i32 -200
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.usb_gadget, ptr %49, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.24) #16
  %51 = getelementptr i8, ptr %0, i32 -192
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 @usb_ep_disable(ptr noundef %52) #14
  %54 = getelementptr i8, ptr %0, i32 -188
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @usb_ep_disable(ptr noundef %55) #14
  %57 = getelementptr i8, ptr %0, i32 -104
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.usb_request, ptr %58, i32 0, i32 9
  %62 = getelementptr i8, ptr %0, i32 -180
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %61, ptr %64, align 4
  store ptr %63, ptr %61, align 4
  %65 = getelementptr inbounds %struct.usb_request, ptr %58, i32 0, i32 9, i32 1
  store ptr %62, ptr %65, align 4
  store volatile ptr %61, ptr %62, align 4
  store ptr null, ptr %57, align 4
  br label %66

66:                                               ; preds = %60, %47
  %67 = getelementptr i8, ptr %0, i32 -100
  store i32 0, ptr %67, align 4
  %68 = getelementptr i8, ptr %0, i32 -96
  store ptr null, ptr %68, align 4
  %69 = getelementptr i8, ptr %0, i32 -91
  store i8 1, ptr %69, align 1
  %70 = getelementptr i8, ptr %0, i32 -164
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %75, label %73, !prof !10

73:                                               ; preds = %66
  %74 = getelementptr i8, ptr %0, i32 -180
  br label %96

75:                                               ; preds = %96, %66
  %76 = getelementptr i8, ptr %0, i32 -172
  %77 = load volatile ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %106, label %79, !prof !10

79:                                               ; preds = %75
  %80 = getelementptr i8, ptr %0, i32 -180
  %81 = getelementptr i8, ptr %0, i32 -160
  %82 = load ptr, ptr %81, align 4
  store volatile ptr %70, ptr %82, align 4
  store volatile ptr %70, ptr %70, align 4
  %83 = load ptr, ptr %80, align 4
  %84 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  store ptr %70, ptr %84, align 4
  store ptr %83, ptr %70, align 4
  store ptr %80, ptr %81, align 4
  store volatile ptr %70, ptr %80, align 4
  %85 = load volatile ptr, ptr %76, align 4
  %86 = icmp eq ptr %85, %76
  br i1 %86, label %106, label %87, !prof !10

87:                                               ; preds = %79
  %88 = load ptr, ptr %83, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %88, ptr %90, align 4
  store volatile ptr %83, ptr %83, align 4
  store ptr %83, ptr %89, align 4
  %92 = load ptr, ptr %80, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %83, ptr %93, align 4
  store ptr %92, ptr %83, align 4
  store ptr %80, ptr %89, align 4
  store volatile ptr %83, ptr %80, align 4
  %94 = load volatile ptr, ptr %76, align 4
  %95 = icmp eq ptr %94, %76
  br i1 %95, label %106, label %112, !prof !10

96:                                               ; preds = %96, %73
  %97 = phi ptr [ %71, %73 ], [ %104, %96 ]
  %98 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %97, align 4
  %101 = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  store ptr %99, ptr %101, align 4
  store volatile ptr %100, ptr %99, align 4
  store volatile ptr %97, ptr %97, align 4
  store ptr %97, ptr %98, align 4
  %102 = load ptr, ptr %74, align 4
  %103 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  store ptr %97, ptr %103, align 4
  store ptr %102, ptr %97, align 4
  store ptr %74, ptr %98, align 4
  store volatile ptr %97, ptr %74, align 4
  %104 = load volatile ptr, ptr %70, align 4
  %105 = icmp eq ptr %104, %70
  br i1 %105, label %75, label %96, !prof !10

106:                                              ; preds = %112, %87, %79, %75
  %107 = getelementptr i8, ptr %0, i32 -136
  %108 = load volatile ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %107
  br i1 %109, label %132, label %110, !prof !10

110:                                              ; preds = %106
  %111 = getelementptr i8, ptr %0, i32 -144
  br label %122

112:                                              ; preds = %112, %87
  %113 = load ptr, ptr %70, align 4
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %114, i32 0, i32 1
  store ptr %116, ptr %117, align 4
  store volatile ptr %114, ptr %116, align 4
  store volatile ptr %113, ptr %113, align 4
  store ptr %113, ptr %115, align 4
  %118 = load ptr, ptr %80, align 4
  %119 = getelementptr inbounds %struct.list_head, ptr %118, i32 0, i32 1
  store ptr %113, ptr %119, align 4
  store ptr %118, ptr %113, align 4
  store ptr %80, ptr %115, align 4
  store volatile ptr %113, ptr %80, align 4
  %120 = load volatile ptr, ptr %76, align 4
  %121 = icmp eq ptr %120, %76
  br i1 %121, label %106, label %112, !prof !10

122:                                              ; preds = %122, %110
  %123 = phi ptr [ %108, %110 ], [ %130, %122 ]
  %124 = getelementptr inbounds %struct.list_head, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = load ptr, ptr %123, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %125, ptr %127, align 4
  store volatile ptr %126, ptr %125, align 4
  store volatile ptr %123, ptr %123, align 4
  store ptr %123, ptr %124, align 4
  %128 = load ptr, ptr %111, align 4
  %129 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  store ptr %123, ptr %129, align 4
  store ptr %128, ptr %123, align 4
  store ptr %111, ptr %124, align 4
  store volatile ptr %123, ptr %111, align 4
  %130 = load volatile ptr, ptr %107, align 4
  %131 = icmp eq ptr %130, %107
  br i1 %131, label %132, label %122, !prof !10

132:                                              ; preds = %122, %106
  %133 = load ptr, ptr %51, align 4
  %134 = tail call i32 @usb_ep_enable(ptr noundef %133) #14
  %135 = load ptr, ptr %54, align 4
  %136 = tail call i32 @usb_ep_enable(ptr noundef %135) #14
  %137 = getelementptr i8, ptr %0, i32 -156
  tail call void @__wake_up(ptr noundef %137, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %138 = getelementptr i8, ptr %0, i32 -128
  tail call void @__wake_up(ptr noundef %138, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %139 = getelementptr i8, ptr %0, i32 -116
  tail call void @__wake_up(ptr noundef %139, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %149

140:                                              ; preds = %26
  %141 = tail call i32 @strlen(ptr noundef nonnull %28)
  %142 = lshr i32 %141, 8
  %143 = trunc i32 %142 to i8
  store i8 %143, ptr %9, align 1
  %144 = trunc i32 %141 to i8
  %145 = getelementptr i8, ptr %9, i32 1
  store i8 %144, ptr %145, align 1
  %146 = getelementptr i8, ptr %9, i32 2
  %147 = load ptr, ptr %27, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %146, ptr align 1 %147, i32 %141, i1 false)
  %148 = icmp sgt i32 %141, -1
  br i1 %148, label %149, label %169

149:                                              ; preds = %140, %132, %36, %26
  %150 = phi i32 [ %141, %140 ], [ 0, %26 ], [ %40, %36 ], [ 0, %132 ]
  %151 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 1
  store i32 %150, ptr %151, align 4
  %152 = zext i16 %13 to i32
  %153 = icmp ult i32 %150, %152
  %154 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = select i1 %153, i32 262144, i32 0
  %157 = and i32 %155, -262145
  %158 = or i32 %157, %156
  store i32 %158, ptr %154, align 4
  %159 = load ptr, ptr %6, align 4
  %160 = getelementptr inbounds %struct.usb_gadget, ptr %159, i32 0, i32 3
  %161 = load ptr, ptr %160, align 8
  %162 = tail call i32 @usb_ep_queue(ptr noundef %161, ptr noundef %8, i32 noundef 2592) #14
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %149
  %165 = getelementptr i8, ptr %0, i32 -200
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.usb_gadget, ptr %166, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.printer_func_setup, i32 noundef 1053) #16
  %168 = getelementptr inbounds %struct.usb_request, ptr %8, i32 0, i32 11
  store i32 0, ptr %168, align 4
  br label %169

169:                                              ; preds = %164, %149, %140, %41, %30, %20, %17, %2
  %170 = phi i32 [ %162, %164 ], [ %162, %149 ], [ %141, %140 ], [ -95, %17 ], [ -95, %41 ], [ -95, %30 ], [ -95, %20 ], [ -95, %2 ]
  ret i32 %170
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @printer_func_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr @usb_gadget_class, align 4
  %4 = load i32, ptr @major, align 4
  %5 = shl i32 %4, 20
  %6 = getelementptr i8, ptr %1, i32 -88
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %5, %7
  tail call void @device_destroy(ptr noundef %3, i32 noundef %8) #14
  %9 = getelementptr i8, ptr %1, i32 -84
  tail call void @cdev_del(ptr noundef %9) #14
  %10 = getelementptr i8, ptr %1, i32 -136
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %14, label %13, !prof !11

13:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1426, i32 noundef 9, ptr noundef null) #14
  br label %14

14:                                               ; preds = %13, %2
  %15 = getelementptr i8, ptr %1, i32 -172
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %19, label %18, !prof !11

18:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1427, i32 noundef 9, ptr noundef null) #14
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr i8, ptr %1, i32 -144
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %41, label %23

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %1, i32 -192
  br label %25

25:                                               ; preds = %38, %23
  %26 = phi ptr [ %21, %23 ], [ %39, %38 ]
  %27 = getelementptr i8, ptr %26, i32 -36
  %28 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store volatile ptr %30, ptr %29, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %28, align 4
  %32 = load ptr, ptr %24, align 4
  %33 = icmp ne ptr %32, null
  %34 = icmp ne ptr %27, null
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %37) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %32, ptr noundef nonnull %27) #14
  br label %38

38:                                               ; preds = %36, %25
  %39 = load volatile ptr, ptr %20, align 4
  %40 = icmp eq ptr %39, %20
  br i1 %40, label %41, label %25

41:                                               ; preds = %38, %19
  %42 = getelementptr i8, ptr %1, i32 -104
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = getelementptr i8, ptr %1, i32 -188
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %43, align 4
  tail call void @kfree(ptr noundef %50) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %47, ptr noundef nonnull %43) #14
  br label %51

51:                                               ; preds = %49, %45, %41
  %52 = getelementptr i8, ptr %1, i32 -180
  %53 = load volatile ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %1, i32 -188
  br label %63

57:                                               ; preds = %76, %51
  %58 = getelementptr i8, ptr %1, i32 -164
  %59 = load volatile ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %58
  br i1 %60, label %95, label %61

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %1, i32 -188
  br label %79

63:                                               ; preds = %76, %55
  %64 = phi ptr [ %53, %55 ], [ %77, %76 ]
  %65 = getelementptr i8, ptr %64, i32 -36
  %66 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %64, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store volatile ptr %68, ptr %67, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %64, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %66, align 4
  %70 = load ptr, ptr %56, align 4
  %71 = icmp ne ptr %70, null
  %72 = icmp ne ptr %65, null
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %75) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %70, ptr noundef nonnull %65) #14
  br label %76

76:                                               ; preds = %74, %63
  %77 = load volatile ptr, ptr %52, align 4
  %78 = icmp eq ptr %77, %52
  br i1 %78, label %57, label %63

79:                                               ; preds = %92, %61
  %80 = phi ptr [ %59, %61 ], [ %93, %92 ]
  %81 = getelementptr i8, ptr %80, i32 -36
  %82 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = load ptr, ptr %80, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %83, ptr %85, align 4
  store volatile ptr %84, ptr %83, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %80, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %82, align 4
  %86 = load ptr, ptr %62, align 4
  %87 = icmp ne ptr %86, null
  %88 = icmp ne ptr %81, null
  %89 = and i1 %88, %87
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load ptr, ptr %81, align 4
  tail call void @kfree(ptr noundef %91) #14
  tail call void @usb_ep_free_request(ptr noundef nonnull %86, ptr noundef nonnull %81) #14
  br label %92

92:                                               ; preds = %90, %79
  %93 = load volatile ptr, ptr %58, align 4
  %94 = icmp eq ptr %93, %58
  br i1 %94, label %95, label %79

95:                                               ; preds = %92, %57
  tail call void @usb_free_all_descriptors(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_func_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -224
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %99

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i32 -196
  %8 = load i8, ptr %7, align 4
  %9 = icmp slt i8 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %0, i32 -192
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_ep, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 @usb_ep_disable(ptr noundef %12) #14
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr i8, ptr %0, i32 -188
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.usb_ep, ptr %20, i32 0, i32 9
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call i32 @usb_ep_disable(ptr noundef %20) #14
  br label %26

26:                                               ; preds = %24, %18
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr inbounds %struct.usb_ep, ptr %28, i32 0, i32 9
  store ptr null, ptr %29, align 4
  %30 = load ptr, ptr %19, align 4
  %31 = getelementptr inbounds %struct.usb_ep, ptr %30, i32 0, i32 9
  store ptr null, ptr %31, align 4
  store i8 -1, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %27) #14
  br label %32

32:                                               ; preds = %26, %6
  %33 = getelementptr i8, ptr %0, i32 -200
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.usb_gadget, ptr %34, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 3
  %38 = select i1 %37, ptr @hs_ep_in_desc, ptr @fs_ep_in_desc
  %39 = icmp eq i32 %36, 5
  %40 = select i1 %39, ptr @ss_ep_in_desc, ptr %38
  %41 = getelementptr i8, ptr %0, i32 -192
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_ep, ptr %42, i32 0, i32 9
  store ptr %40, ptr %43, align 4
  %44 = load ptr, ptr %41, align 4
  store ptr %4, ptr %44, align 4
  %45 = load ptr, ptr %33, align 4
  %46 = getelementptr inbounds %struct.usb_gadget, ptr %45, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 3
  %49 = select i1 %48, ptr @hs_ep_out_desc, ptr @fs_ep_out_desc
  %50 = icmp eq i32 %47, 5
  %51 = select i1 %50, ptr @ss_ep_out_desc, ptr %49
  %52 = getelementptr i8, ptr %0, i32 -188
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.usb_ep, ptr %53, i32 0, i32 9
  store ptr %51, ptr %54, align 4
  %55 = load ptr, ptr %52, align 4
  store ptr %4, ptr %55, align 4
  %56 = load ptr, ptr %41, align 4
  %57 = tail call i32 @usb_ep_enable(ptr noundef %56) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %32
  %60 = load ptr, ptr %52, align 4
  %61 = tail call i32 @usb_ep_enable(ptr noundef %60) #14
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %95, label %63

63:                                               ; preds = %59, %32
  %64 = phi i32 [ %61, %59 ], [ %57, %32 ]
  %65 = load ptr, ptr %41, align 4
  %66 = tail call i32 @usb_ep_disable(ptr noundef %65) #14
  %67 = load ptr, ptr %52, align 4
  %68 = tail call i32 @usb_ep_disable(ptr noundef %67) #14
  %69 = load ptr, ptr %41, align 4
  %70 = getelementptr inbounds %struct.usb_ep, ptr %69, i32 0, i32 9
  store ptr null, ptr %70, align 4
  %71 = load ptr, ptr %52, align 4
  %72 = getelementptr inbounds %struct.usb_ep, ptr %71, i32 0, i32 9
  store ptr null, ptr %72, align 4
  %73 = load i8, ptr %7, align 4
  %74 = icmp slt i8 %73, 0
  br i1 %74, label %99, label %75

75:                                               ; preds = %63
  %76 = load ptr, ptr %41, align 4
  %77 = getelementptr inbounds %struct.usb_ep, ptr %76, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = tail call i32 @usb_ep_disable(ptr noundef %76) #14
  br label %82

82:                                               ; preds = %80, %75
  %83 = load ptr, ptr %52, align 4
  %84 = getelementptr inbounds %struct.usb_ep, ptr %83, i32 0, i32 9
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = tail call i32 @usb_ep_disable(ptr noundef %83) #14
  br label %89

89:                                               ; preds = %87, %82
  %90 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %91 = load ptr, ptr %41, align 4
  %92 = getelementptr inbounds %struct.usb_ep, ptr %91, i32 0, i32 9
  store ptr null, ptr %92, align 4
  %93 = load ptr, ptr %52, align 4
  %94 = getelementptr inbounds %struct.usb_ep, ptr %93, i32 0, i32 9
  store ptr null, ptr %94, align 4
  store i8 -1, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %90) #14
  br label %99

95:                                               ; preds = %59
  %96 = trunc i32 %1 to i8
  store i8 %96, ptr %7, align 4
  %97 = load ptr, ptr %33, align 4
  %98 = getelementptr inbounds %struct.usb_gadget, ptr %97, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %98, ptr noundef nonnull @.str.26, i32 noundef %1) #16
  br label %99

99:                                               ; preds = %95, %89, %63, %3
  %100 = phi i32 [ -524, %3 ], [ 0, %95 ], [ %64, %63 ], [ %64, %89 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @printer_func_disable(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -224
  %3 = getelementptr i8, ptr %0, i32 -196
  %4 = load i8, ptr %3, align 4
  %5 = icmp slt i8 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -192
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_ep, ptr %8, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = tail call i32 @usb_ep_disable(ptr noundef %8) #14
  br label %14

14:                                               ; preds = %12, %6
  %15 = getelementptr i8, ptr %0, i32 -188
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.usb_ep, ptr %16, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @usb_ep_disable(ptr noundef %16) #14
  br label %22

22:                                               ; preds = %20, %14
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #14
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.usb_ep, ptr %24, i32 0, i32 9
  store ptr null, ptr %25, align 4
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr inbounds %struct.usb_ep, ptr %26, i32 0, i32 9
  store ptr null, ptr %27, align 4
  store i8 -1, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %23) #14
  br label %28

28:                                               ; preds = %22, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @gprinter_req_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) #8 {
  %4 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %5 = load i16, ptr %4, align 1
  %6 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %7 = load i16, ptr %6, align 1
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %9 = load i16, ptr %8, align 1
  br i1 %2, label %43, label %10

10:                                               ; preds = %3
  %11 = load i8, ptr %1, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 127
  %14 = icmp eq i32 %13, 33
  br i1 %14, label %15, label %43

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  switch i8 %17, label %43 [
    i8 0, label %18
    i8 1, label %22
    i8 2, label %29
  ]

18:                                               ; preds = %15
  %19 = lshr i16 %5, 8
  %20 = and i32 %12, 128
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %36

22:                                               ; preds = %15
  %23 = icmp ne i16 %7, 0
  %24 = icmp ne i16 %9, 1
  %25 = select i1 %23, i1 true, i1 %24
  %26 = and i32 %12, 128
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %43, label %36

29:                                               ; preds = %15
  %30 = icmp eq i16 %7, 0
  %31 = icmp eq i16 %9, 0
  %32 = select i1 %30, i1 %31, i1 false
  %33 = and i32 %12, 128
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %43

36:                                               ; preds = %29, %22, %18
  %37 = phi i16 [ %19, %18 ], [ %5, %22 ], [ %5, %29 ]
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %0, i32 -196
  %40 = load i8, ptr %39, align 4
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %38, %41
  br label %43

43:                                               ; preds = %36, %29, %22, %18, %15, %10, %3
  %44 = phi i1 [ %42, %36 ], [ false, %3 ], [ false, %10 ], [ false, %18 ], [ false, %22 ], [ false, %29 ], [ false, %15 ]
  ret i1 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gprinter_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -184
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #14, !srcloc !13
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #14, !srcloc !14
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %13, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #14
  br label %13

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !15
  %12 = getelementptr i8, ptr %0, i32 -224
  tail call void @kfree(ptr noundef %12) #14
  br label %13

13:                                               ; preds = %11, %10, %8
  %14 = getelementptr inbounds %struct.f_printer_opts, ptr %3, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %14) #14
  %15 = getelementptr inbounds %struct.f_printer_opts, ptr %3, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %14) #14
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %146, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #14
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  %12 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = icmp slt i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %11) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %146

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 19
  store i8 0, ptr %17, align 1
  tail call fastcc void @setup_rx_reqs(ptr noundef %7)
  %18 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 16
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 17
  %23 = load ptr, ptr %22, align 4
  store ptr null, ptr %18, align 4
  store i32 0, ptr %20, align 4
  store ptr null, ptr %22, align 4
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 9
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %29, label %54, !prof !11

29:                                               ; preds = %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %11) #14
  %30 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %146

35:                                               ; preds = %29
  %36 = load volatile ptr, ptr %26, align 4
  %37 = icmp eq ptr %36, %26
  br i1 %37, label %38, label %52, !prof !10

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #14
  %39 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 10
  %40 = call i32 @prepare_to_wait_event(ptr noundef %39, ptr noundef nonnull %5, i32 noundef 1) #14
  %41 = load volatile ptr, ptr %26, align 4
  %42 = icmp eq ptr %41, %26
  br i1 %42, label %43, label %50, !prof !10

43:                                               ; preds = %46, %38
  %44 = phi i32 [ %47, %46 ], [ %40, %38 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  call void @schedule() #14
  %47 = call i32 @prepare_to_wait_event(ptr noundef %39, ptr noundef nonnull %5, i32 noundef 1) #14
  %48 = load volatile ptr, ptr %26, align 4
  %49 = icmp eq ptr %48, %26
  br i1 %49, label %43, label %50, !prof !10

50:                                               ; preds = %46, %38
  call void @finish_wait(ptr noundef %39, ptr noundef nonnull %5) #14
  br label %51

51:                                               ; preds = %50, %43
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  br label %52

52:                                               ; preds = %51, %35
  %53 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  br label %54

54:                                               ; preds = %52, %25, %16
  %55 = phi i32 [ %53, %52 ], [ %11, %25 ], [ %11, %16 ]
  %56 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 9
  %57 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 7
  br label %58

58:                                               ; preds = %134, %54
  %59 = phi ptr [ %19, %54 ], [ %135, %134 ]
  %60 = phi i32 [ %21, %54 ], [ %136, %134 ]
  %61 = phi ptr [ %23, %54 ], [ %137, %134 ]
  %62 = phi i32 [ 0, %54 ], [ %118, %134 ]
  %63 = phi i32 [ %55, %54 ], [ %121, %134 ]
  %64 = phi i32 [ %2, %54 ], [ %119, %134 ]
  %65 = phi ptr [ %1, %54 ], [ %120, %134 ]
  %66 = icmp ne i32 %64, 0
  br label %67

67:                                               ; preds = %88, %58
  %68 = phi i32 [ 0, %88 ], [ %60, %58 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load volatile ptr, ptr %56, align 4
  %72 = icmp ne ptr %71, %56
  %73 = select i1 %72, i1 %66, i1 false
  br i1 %73, label %76, label %143, !prof !16

74:                                               ; preds = %67
  %75 = icmp eq i32 %64, 0
  br i1 %75, label %143, label %93

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %71, align 4
  %80 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  store ptr %78, ptr %80, align 4
  store volatile ptr %79, ptr %78, align 4
  store volatile ptr %71, ptr %71, align 4
  store ptr %71, ptr %77, align 4
  %81 = getelementptr i8, ptr %71, i32 16
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %76
  %85 = getelementptr i8, ptr %71, i32 -36
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %76
  %89 = load ptr, ptr %57, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  store ptr %71, ptr %90, align 4
  store ptr %89, ptr %71, align 4
  store ptr %57, ptr %77, align 4
  store volatile ptr %71, ptr %57, align 4
  br label %67

91:                                               ; preds = %84
  %92 = getelementptr i8, ptr %71, i32 -36
  br label %93

93:                                               ; preds = %91, %74
  %94 = phi ptr [ %59, %74 ], [ %92, %91 ]
  %95 = phi i32 [ %68, %74 ], [ %82, %91 ]
  %96 = phi ptr [ %61, %74 ], [ %86, %91 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %63) #14
  %97 = call i32 @llvm.umin.i32(i32 %64, i32 %95)
  %98 = icmp slt i32 %97, 0
  %99 = load i1, ptr @check_copy_size.__already_done, align 1
  %100 = xor i1 %99, true
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %103, !prof !10

102:                                              ; preds = %93
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #14
  br label %103

103:                                              ; preds = %102, %93
  br i1 %98, label %115, label %104, !prof !10

104:                                              ; preds = %103
  %105 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %65, i32 %97, i32 -1090519040) #17, !srcloc !17
  %106 = extractvalue { i32, i32 } %105, 0
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = tail call ptr @llvm.thread.pointer() #14
  %110 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 3
  %111 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %110) #18, !srcloc !18
  %112 = and i32 %111, -13
  %113 = or i32 %112, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %113) #14, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !20
  %114 = call i32 @arm_copy_to_user(ptr noundef %65, ptr noundef %96, i32 noundef %97) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %111) #14, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !20
  br label %115

115:                                              ; preds = %108, %104, %103
  %116 = phi i32 [ %97, %103 ], [ %114, %108 ], [ %97, %104 ]
  %117 = sub i32 %97, %116
  %118 = add i32 %117, %62
  %119 = sub i32 %64, %117
  %120 = getelementptr i8, ptr %65, i32 %117
  %121 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  %122 = load i8, ptr %17, align 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.usb_request, ptr %94, i32 0, i32 9
  %126 = load ptr, ptr %57, align 4
  %127 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  store ptr %125, ptr %127, align 4
  store ptr %126, ptr %125, align 4
  %128 = getelementptr inbounds %struct.usb_request, ptr %94, i32 0, i32 9, i32 1
  store ptr %57, ptr %128, align 4
  store volatile ptr %125, ptr %57, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %121) #14
  call void @mutex_unlock(ptr noundef %10) #14
  br label %146

129:                                              ; preds = %115
  %130 = icmp ugt i32 %95, %117
  br i1 %130, label %131, label %138

131:                                              ; preds = %129
  %132 = sub i32 %95, %117
  %133 = getelementptr i8, ptr %96, i32 %117
  br label %134

134:                                              ; preds = %138, %131
  %135 = phi ptr [ null, %138 ], [ %94, %131 ]
  %136 = phi i32 [ 0, %138 ], [ %132, %131 ]
  %137 = phi ptr [ null, %138 ], [ %133, %131 ]
  br label %58

138:                                              ; preds = %129
  %139 = getelementptr inbounds %struct.usb_request, ptr %94, i32 0, i32 9
  %140 = load ptr, ptr %57, align 4
  %141 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  store ptr %139, ptr %141, align 4
  store ptr %140, ptr %139, align 4
  %142 = getelementptr inbounds %struct.usb_request, ptr %94, i32 0, i32 9, i32 1
  store ptr %57, ptr %142, align 4
  store volatile ptr %139, ptr %57, align 4
  br label %134

143:                                              ; preds = %74, %70
  store ptr %59, ptr %18, align 4
  store i32 %68, ptr %20, align 4
  store ptr %61, ptr %22, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %63) #14
  call void @mutex_unlock(ptr noundef %10) #14
  %144 = icmp eq i32 %62, 0
  %145 = select i1 %144, i32 -11, i32 %62
  br label %146

146:                                              ; preds = %143, %124, %34, %15, %4
  %147 = phi i32 [ -19, %15 ], [ -11, %34 ], [ -11, %124 ], [ -22, %4 ], [ %145, %143 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #2 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %132, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #14
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  %12 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = icmp slt i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %11) #14
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %132

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 19
  store i8 0, ptr %17, align 1
  %18 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %21, label %46, !prof !11

21:                                               ; preds = %16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %11) #14
  %22 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @mutex_unlock(ptr noundef %10) #14
  br label %132

27:                                               ; preds = %21
  %28 = load volatile ptr, ptr %18, align 4
  %29 = icmp eq ptr %28, %18
  br i1 %29, label %30, label %44, !prof !10

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #14
  %31 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 13
  %32 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %5, i32 noundef 1) #14
  %33 = load volatile ptr, ptr %18, align 4
  %34 = icmp eq ptr %33, %18
  br i1 %34, label %35, label %42, !prof !10

35:                                               ; preds = %38, %30
  %36 = phi i32 [ %39, %38 ], [ %32, %30 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  call void @schedule() #14
  %39 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %5, i32 noundef 1) #14
  %40 = load volatile ptr, ptr %18, align 4
  %41 = icmp eq ptr %40, %18
  br i1 %41, label %35, label %42, !prof !10

42:                                               ; preds = %38, %30
  call void @finish_wait(ptr noundef %31, ptr noundef nonnull %5) #14
  br label %43

43:                                               ; preds = %42, %35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  br label %44

44:                                               ; preds = %43, %27
  %45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  br label %46

46:                                               ; preds = %44, %16
  %47 = phi i32 [ %45, %44 ], [ %11, %16 ]
  %48 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 4
  %49 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 12
  br label %50

50:                                               ; preds = %112, %46
  %51 = phi i32 [ 0, %46 ], [ %115, %112 ]
  %52 = phi i32 [ %47, %46 ], [ %106, %112 ]
  %53 = phi i32 [ %2, %46 ], [ %114, %112 ]
  %54 = phi ptr [ %1, %46 ], [ %113, %112 ]
  %55 = load volatile ptr, ptr %18, align 4
  %56 = icmp ne ptr %55, %18
  %57 = icmp ne i32 %53, 0
  %58 = select i1 %56, i1 %57, i1 false, !prof !11
  br i1 %58, label %59, label %129

59:                                               ; preds = %50
  %60 = icmp ugt i32 %53, 8192
  %61 = call i32 @llvm.umin.i32(i32 %53, i32 8192)
  %62 = getelementptr i8, ptr %55, i32 -36
  %63 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %55, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %64, ptr %66, align 4
  store volatile ptr %65, ptr %64, align 4
  store volatile ptr %55, ptr %55, align 4
  store ptr %55, ptr %63, align 4
  %67 = getelementptr i8, ptr %55, i32 -8
  store ptr @tx_complete, ptr %67, align 4
  %68 = getelementptr i8, ptr %55, i32 -32
  store i32 %61, ptr %68, align 4
  br i1 %60, label %69, label %73

69:                                               ; preds = %59
  %70 = getelementptr i8, ptr %55, i32 -12
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, -262145
  store i32 %72, ptr %70, align 4
  br label %86

73:                                               ; preds = %59
  %74 = load ptr, ptr %48, align 4
  %75 = getelementptr inbounds %struct.usb_ep, ptr %74, i32 0, i32 7
  %76 = load i56, ptr %75, align 2
  %77 = trunc i56 %76 to i16
  %78 = trunc i32 %53 to i16
  %79 = urem i16 %78, %77
  %80 = icmp eq i16 %79, 0
  %81 = getelementptr i8, ptr %55, i32 -12
  %82 = load i32, ptr %81, align 4
  %83 = select i1 %80, i32 262144, i32 0
  %84 = and i32 %82, -262145
  %85 = or i32 %84, %83
  store i32 %85, ptr %81, align 4
  br label %86

86:                                               ; preds = %73, %69
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %52) #14
  %87 = load ptr, ptr %62, align 4
  %88 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %54, i32 %61, i32 -1090519040) #17, !srcloc !21
  %89 = extractvalue { i32, i32 } %88, 0
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %99, !prof !11

91:                                               ; preds = %86
  %92 = tail call ptr @llvm.thread.pointer() #14
  %93 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 3
  %94 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %93) #18, !srcloc !18
  %95 = and i32 %94, -13
  %96 = or i32 %95, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %96) #14, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !20
  %97 = call i32 @arm_copy_from_user(ptr noundef %87, ptr noundef %54, i32 noundef %61) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #14, !srcloc !19
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !20
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99, !prof !11

99:                                               ; preds = %91, %86
  %100 = phi i32 [ %97, %91 ], [ %61, %86 ]
  %101 = sub i32 %61, %100
  %102 = getelementptr i8, ptr %87, i32 %101
  call void @llvm.memset.p0.i32(ptr align 1 %102, i8 0, i32 %100, i1 false) #14
  %103 = load ptr, ptr %18, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %55, ptr %104, align 4
  store ptr %103, ptr %55, align 4
  store ptr %18, ptr %63, align 4
  store volatile ptr %55, ptr %18, align 4
  call void @mutex_unlock(ptr noundef %10) #14
  br label %132

105:                                              ; preds = %91
  %106 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  %107 = load i8, ptr %17, align 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr %18, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %55, ptr %111, align 4
  store ptr %110, ptr %55, align 4
  store ptr %18, ptr %63, align 4
  store volatile ptr %55, ptr %18, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %106) #14
  call void @mutex_unlock(ptr noundef %10) #14
  br label %132

112:                                              ; preds = %105
  %113 = getelementptr i8, ptr %54, i32 %61
  %114 = sub i32 %53, %61
  %115 = add i32 %61, %51
  %116 = load ptr, ptr %49, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  store ptr %55, ptr %117, align 4
  store ptr %116, ptr %55, align 4
  store ptr %49, ptr %63, align 4
  store volatile ptr %55, ptr %49, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %118 = load i16, ptr %7, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  %120 = load ptr, ptr %48, align 4
  %121 = call i32 @usb_ep_queue(ptr noundef %120, ptr noundef %62, i32 noundef 2592) #14
  call void @_raw_spin_lock(ptr noundef %7) #14
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %50, label %123

123:                                              ; preds = %112
  %124 = load ptr, ptr %63, align 4
  %125 = load ptr, ptr %55, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  store ptr %124, ptr %126, align 4
  store volatile ptr %125, ptr %124, align 4
  %127 = load ptr, ptr %18, align 4
  %128 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %55, ptr %128, align 4
  store ptr %127, ptr %55, align 4
  store ptr %18, ptr %63, align 4
  store volatile ptr %55, ptr %18, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %106) #14
  call void @mutex_unlock(ptr noundef %10) #14
  br label %132

129:                                              ; preds = %50
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %52) #14
  call void @mutex_unlock(ptr noundef %10) #14
  %130 = icmp eq i32 %51, 0
  %131 = select i1 %130, i32 -11, i32 %51
  br label %132

132:                                              ; preds = %129, %123, %109, %99, %26, %15, %4
  %133 = phi i32 [ -19, %15 ], [ -11, %26 ], [ %51, %99 ], [ -11, %109 ], [ -11, %123 ], [ -22, %4 ], [ %131, %129 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_poll(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #14
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %7 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = icmp slt i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %6) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  br label %45

11:                                               ; preds = %2
  tail call fastcc void @setup_rx_reqs(ptr noundef %4)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %6) #14
  tail call void @mutex_unlock(ptr noundef %5) #14
  %12 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 10
  %13 = icmp eq ptr %1, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 4
  %16 = icmp ne ptr %15, null
  %17 = icmp ne ptr %12, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  tail call void %15(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %1) #14
  %20 = load ptr, ptr %1, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %15, %14 ], [ %20, %19 ]
  %23 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 13
  %24 = icmp ne ptr %22, null
  %25 = icmp ne ptr %23, null
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  tail call void %22(ptr noundef %0, ptr noundef nonnull %23, ptr noundef nonnull %1) #14
  br label %28

28:                                               ; preds = %27, %21, %11
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %30 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 11
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  %33 = select i1 %32, i32 0, i32 260, !prof !10
  %34 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41, !prof !10

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 9
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %43, label %41, !prof !10

41:                                               ; preds = %37, %28
  %42 = or i32 %33, 65
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi i32 [ %42, %41 ], [ %33, %37 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %29) #14
  br label %45

45:                                               ; preds = %43, %10
  %46 = phi i32 [ 24, %10 ], [ %44, %43 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_ioctl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr inbounds %struct.printer_dev, ptr %5, i32 0, i32 3
  %8 = load i8, ptr %7, align 4
  %9 = icmp slt i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  switch i32 %1, label %18 [
    i32 -2147391711, label %11
    i32 -1073649886, label %15
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.printer_dev, ptr %5, i32 0, i32 18
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  br label %18

15:                                               ; preds = %10
  %16 = trunc i32 %2 to i8
  %17 = getelementptr inbounds %struct.printer_dev, ptr %5, i32 0, i32 18
  store i8 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %11, %10, %3
  %19 = phi i32 [ -19, %3 ], [ 0, %15 ], [ %14, %11 ], [ -25, %10 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -140
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #14
  %7 = getelementptr i8, ptr %4, i32 -112
  %8 = load i8, ptr %7, align 4
  %9 = icmp slt i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  br label %32

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %4, i32 60
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  store i8 1, ptr %12, align 4
  %16 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %16, align 8
  %17 = getelementptr i8, ptr %4, i32 -8
  %18 = load i8, ptr %17, align 4
  %19 = or i8 %18, 16
  store i8 %19, ptr %17, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i32 [ -16, %11 ], [ 0, %15 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #14
  %22 = getelementptr i8, ptr %4, i32 -100
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #14, !srcloc !13
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 1, ptr elementtype(i32) %22) #14, !srcloc !26
  %24 = extractvalue { i32, i32, i32 } %23, 0
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26, !prof !10

26:                                               ; preds = %20
  %27 = add i32 %24, 1
  %28 = or i32 %27, %24
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30, !prof !11

30:                                               ; preds = %26, %20
  %31 = phi i32 [ 2, %20 ], [ 1, %26 ]
  tail call void @refcount_warn_saturate(ptr noundef %22, i32 noundef %31) #14
  br label %32

32:                                               ; preds = %30, %26, %10
  %33 = phi i32 [ -19, %10 ], [ %21, %26 ], [ %21, %30 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_close(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 22
  store i8 0, ptr %6, align 4
  store ptr null, ptr %3, align 8
  %7 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 18
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, -17
  store i8 %9, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #14
  %10 = getelementptr inbounds %struct.printer_dev, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #14, !srcloc !13
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #14, !srcloc !14
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %18, label %16, !prof !11

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #14
  br label %18

17:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !15
  tail call void @kfree(ptr noundef %4) #14
  br label %18

18:                                               ; preds = %17, %16, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @printer_fsync(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #2 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 24
  tail call void @down_write(ptr noundef %10) #14
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #14
  %12 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 3
  %13 = load i8, ptr %12, align 4
  %14 = icmp slt i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %11) #14
  tail call void @up_write(ptr noundef %10) #14
  br label %39

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %11) #14
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 12
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %38, label %24, !prof !11

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #14
  %25 = getelementptr inbounds %struct.printer_dev, ptr %7, i32 0, i32 14
  %26 = call i32 @prepare_to_wait_event(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 1) #14
  %27 = load volatile ptr, ptr %21, align 4
  %28 = icmp eq ptr %27, %21
  br i1 %28, label %36, label %29, !prof !11

29:                                               ; preds = %32, %24
  %30 = phi i32 [ %33, %32 ], [ %26, %24 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  call void @schedule() #14
  %33 = call i32 @prepare_to_wait_event(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 1) #14
  %34 = load volatile ptr, ptr %21, align 4
  %35 = icmp eq ptr %34, %21
  br i1 %35, label %36, label %29, !prof !11

36:                                               ; preds = %32, %24
  call void @finish_wait(ptr noundef %25, ptr noundef nonnull %5) #14
  br label %37

37:                                               ; preds = %36, %29
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #14
  br label %38

38:                                               ; preds = %37, %20, %16
  call void @up_write(ptr noundef %10) #14
  br label %39

39:                                               ; preds = %38, %15
  %40 = phi i32 [ -19, %15 ], [ 0, %38 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @setup_rx_reqs(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.printer_dev, ptr %0, i32 0, i32 7
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %34, label %5, !prof !10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.printer_dev, ptr %0, i32 0, i32 5
  %7 = getelementptr inbounds %struct.printer_dev, ptr %0, i32 0, i32 8
  br label %8

8:                                                ; preds = %31, %5
  %9 = phi ptr [ %3, %5 ], [ %32, %31 ]
  %10 = getelementptr i8, ptr %9, i32 -36
  %11 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %11, align 4
  %15 = getelementptr i8, ptr %9, i32 -32
  store i32 8192, ptr %15, align 4
  %16 = getelementptr i8, ptr %9, i32 -8
  store ptr @rx_complete, ptr %16, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %17 = load i16, ptr %0, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  %19 = load ptr, ptr %6, align 4
  %20 = tail call i32 @usb_ep_queue(ptr noundef %19, ptr noundef %10, i32 noundef 2592) #14
  tail call void @_raw_spin_lock(ptr noundef %0) #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %8
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %9, ptr %24, align 4
  store ptr %23, ptr %9, align 4
  store ptr %2, ptr %11, align 4
  store volatile ptr %9, ptr %2, align 4
  br label %34

25:                                               ; preds = %8
  %26 = load volatile ptr, ptr %9, align 4
  %27 = icmp eq ptr %26, %9
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %9, ptr %30, align 4
  store ptr %29, ptr %9, align 4
  store ptr %7, ptr %11, align 4
  store volatile ptr %9, ptr %7, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load volatile ptr, ptr %2, align 4
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %34, label %8, !prof !10

34:                                               ; preds = %31, %22, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rx_complete(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #14
  %7 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9
  %8 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %8, align 4
  switch i32 %5, label %32 [
    i32 0, label %12
    i32 -104, label %24
    i32 -108, label %24
    i32 -103, label %28
  ]

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 9
  %18 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 9, i32 1
  %19 = load ptr, ptr %18, align 4
  br label %36

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  br label %36

24:                                               ; preds = %2, %2
  %25 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  br label %36

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  br label %36

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  br label %36

36:                                               ; preds = %32, %28, %24, %20, %16
  %37 = phi ptr [ %18, %16 ], [ %23, %20 ], [ %35, %32 ], [ %31, %28 ], [ %27, %24 ]
  %38 = phi ptr [ %17, %16 ], [ %22, %20 ], [ %34, %32 ], [ %30, %28 ], [ %26, %24 ]
  %39 = phi ptr [ %19, %16 ], [ %21, %20 ], [ %33, %32 ], [ %29, %28 ], [ %25, %24 ]
  store ptr %7, ptr %37, align 4
  store ptr %38, ptr %7, align 4
  store ptr %39, ptr %8, align 4
  store volatile ptr %7, ptr %39, align 4
  %40 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %40, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %6) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tx_complete(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #14
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9
  %5 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 9, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %5, align 4
  %9 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %4, ptr %11, align 4
  store ptr %10, ptr %4, align 4
  store ptr %9, ptr %5, align 4
  store volatile ptr %4, ptr %9, align 4
  %12 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %12, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  %13 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 12
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.printer_dev, ptr %3, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %17, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  br label %18

18:                                               ; preds = %16, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %19 = load i16, ptr %3, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148181386}
!13 = !{i64 578320, i64 2148068291, i64 2148068317, i64 2148068364, i64 2148068386, i64 2148068414, i64 2148068434}
!14 = !{i64 2148083521, i64 2148083553, i64 2148083582, i64 2148083616, i64 2148083647, i64 2148083670}
!15 = !{i64 2149030449}
!16 = !{!"branch_weights", i32 2000, i32 2002}
!17 = !{i64 2151928012, i64 2151928037}
!18 = !{i64 4423546}
!19 = !{i64 4423743}
!20 = !{i64 2151909022}
!21 = !{i64 2151927434, i64 2151927459}
!22 = !{i64 2148962461}
!23 = !{i64 2148958285}
!24 = !{i64 2148958360, i64 2148958387, i64 2148958434, i64 2148958456, i64 2148958484, i64 2148958504}
!25 = !{i64 2148985464}
!26 = !{i64 2148081164, i64 2148081196, i64 2148081225, i64 2148081259, i64 2148081290, i64 2148081313}
