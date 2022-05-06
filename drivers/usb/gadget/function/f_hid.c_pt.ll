; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_hid.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_hid.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
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
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.hid_descriptor = type <{ i8, i8, i16, i8, i8, [1 x %struct.hid_class_descriptor] }>
%struct.hid_class_descriptor = type <{ i8, i16 }>
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.f_hid_opts = type { %struct.usb_function_instance, i32, i8, i8, i8, i16, i16, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_hidg = type { i8, i8, i8, i8, i16, ptr, i16, i8, %struct.spinlock, %struct.wait_queue_head, %struct.list_head, i32, ptr, i32, %struct.spinlock, i8, %struct.wait_queue_head, ptr, i32, %struct.cdev, %struct.usb_function, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
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
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
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
%struct.f_hidg_req_list = type { ptr, i32, %struct.list_head }

@__UNIQUE_ID_alias236 = internal constant [18 x i8] c"alias=usbfunc:hid\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [23 x i8] c"author=Fabien Chouteau\00", section ".modinfo", align 1
@ghid_setup.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [5 x i8] c"hidg\00", align 1
@hidg_class = internal unnamed_addr global ptr null, align 4
@major = internal unnamed_addr global i32 0, align 4
@minors = internal unnamed_addr global i32 0, align 4
@hidusb_func = internal global %struct.usb_function_driver { ptr @.str.1, ptr @__this_module, %struct.list_head zeroinitializer, ptr @hidg_alloc_inst, ptr @hidg_alloc }, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@hidg_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@hidg_ida_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @hidg_ida_lock, i64 12), ptr getelementptr (i8, ptr @hidg_ida_lock, i64 12) } }, align 4
@hidg_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hid_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @hidg_item_ops, ptr null, ptr @hid_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@hidg_item_ops = internal global %struct.configfs_item_operations { ptr @hid_attr_release, ptr null, ptr null }, align 4
@hid_attrs = internal global [7 x ptr] [ptr @f_hid_opts_attr_subclass, ptr @f_hid_opts_attr_protocol, ptr @f_hid_opts_attr_no_out_endpoint, ptr @f_hid_opts_attr_report_length, ptr @f_hid_opts_attr_report_desc, ptr @f_hid_opts_attr_dev, ptr null], align 4
@f_hid_opts_attr_subclass = internal global %struct.configfs_attribute { ptr @.str.4, ptr @__this_module, i16 420, ptr @f_hid_opts_subclass_show, ptr @f_hid_opts_subclass_store }, align 4
@f_hid_opts_attr_protocol = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @f_hid_opts_protocol_show, ptr @f_hid_opts_protocol_store }, align 4
@f_hid_opts_attr_no_out_endpoint = internal global %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 420, ptr @f_hid_opts_no_out_endpoint_show, ptr @f_hid_opts_no_out_endpoint_store }, align 4
@f_hid_opts_attr_report_length = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @f_hid_opts_report_length_show, ptr @f_hid_opts_report_length_store }, align 4
@f_hid_opts_attr_report_desc = internal global %struct.configfs_attribute { ptr @.str.9, ptr @__this_module, i16 420, ptr @f_hid_opts_report_desc_show, ptr @f_hid_opts_report_desc_store }, align 4
@f_hid_opts_attr_dev = internal global %struct.configfs_attribute { ptr @.str.10, ptr @__this_module, i16 292, ptr @f_hid_opts_dev_show, ptr null }, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"subclass\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"no_out_endpoint\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"report_length\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"report_desc\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%d:%d\0A\00", align 1
@ct_func_strings = internal global [2 x ptr] [ptr @ct_func_string_table, ptr null], align 4
@hidg_interface_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0 }, align 1
@hidg_fs_in_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 0, i8 10, i8 0, i8 0 }>, align 1
@hidg_fs_out_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 3, i16 0, i8 10, i8 0, i8 0 }>, align 1
@hidg_ss_in_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 0, i8 4, i8 0, i8 0 }>, align 1
@hidg_ss_in_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@hidg_hs_in_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 0, i8 4, i8 0, i8 0 }>, align 1
@hidg_ss_out_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 3, i16 0, i8 4, i8 0, i8 0 }>, align 1
@hidg_ss_out_comp_desc = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@hidg_hs_out_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 3, i16 0, i8 4, i8 0, i8 0 }>, align 1
@hidg_desc = internal global %struct.hid_descriptor <{ i8 9, i8 33, i16 257, i8 0, i8 1, [1 x %struct.hid_class_descriptor] zeroinitializer }>, align 1
@hidg_fs_descriptors_intout = internal global [5 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_fs_in_ep_desc, ptr @hidg_fs_out_ep_desc, ptr null], align 4
@hidg_hs_descriptors_intout = internal global [5 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_hs_in_ep_desc, ptr @hidg_hs_out_ep_desc, ptr null], align 4
@hidg_ss_descriptors_intout = internal global [7 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_ss_in_ep_desc, ptr @hidg_ss_in_comp_desc, ptr @hidg_ss_out_ep_desc, ptr @hidg_ss_out_comp_desc, ptr null], align 4
@hidg_fs_descriptors_ssreport = internal global [4 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_fs_in_ep_desc, ptr null], align 4
@hidg_hs_descriptors_ssreport = internal global [4 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_hs_in_ep_desc, ptr null], align 4
@hidg_ss_descriptors_ssreport = internal global [5 x ptr] [ptr @hidg_interface_desc, ptr @hidg_desc, ptr @hidg_ss_in_ep_desc, ptr @hidg_ss_in_comp_desc, ptr null], align 4
@hidg_bind.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"&hidg->write_queue\00", align 1
@hidg_bind.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"&hidg->read_queue\00", align 1
@f_hidg_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @f_hidg_read, ptr @f_hidg_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @f_hidg_poll, ptr null, ptr null, ptr null, i32 0, ptr @f_hidg_open, ptr null, ptr @f_hidg_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"hidg_bind FAILED\0A\00", align 1
@ct_func_string_table = internal global %struct.usb_gadget_strings { i16 1033, ptr @ct_func_string_defs }, align 4
@ct_func_string_defs = internal global [2 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.17 }, %struct.usb_string zeroinitializer], align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"HID Interface\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"hidg->req is NULL\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"copy_from_user error\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"in_ep is disabled\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"End Point Request ERROR: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"drivers/usb/gadget/u_f.h\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"config_ep_by_speed FAILED!\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Enable IN endpoint FAILED!\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"Enable OUT endpoint FAILED!\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"%s queue req --> %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"Unable to allocate mem for req_list\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Set report failed %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"usb_ep_queue error on ep0 %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"%s FAILED: status=%d, buf=%p, actual=%d\0A\00", align 1
@__func__.hidg_ssreport_complete = private unnamed_addr constant [23 x i8] c"hidg_ssreport_complete\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_license237], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @hidusb_func) #15
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @hidusb_func) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ghid_setup(ptr nocapture readnone %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = tail call ptr @__class_create(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str, ptr noundef nonnull @ghid_setup.__key) #15
  store ptr %4, ptr @hidg_class, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = ptrtoint ptr %4 to i32
  store ptr null, ptr @hidg_class, align 4
  br label %16

8:                                                ; preds = %2
  %9 = call i32 @alloc_chrdev_region(ptr noundef nonnull %3, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @hidg_class, align 4
  call void @class_destroy(ptr noundef %12) #15
  store ptr null, ptr @hidg_class, align 4
  br label %16

13:                                               ; preds = %8
  %14 = load i32, ptr %3, align 4
  %15 = lshr i32 %14, 20
  store i32 %15, ptr @major, align 4
  store i32 %1, ptr @minors, align 4
  br label %16

16:                                               ; preds = %13, %11, %6
  %17 = phi i32 [ %7, %6 ], [ %9, %11 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ghid_cleanup() local_unnamed_addr #1 {
  %1 = load i32, ptr @major, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = shl i32 %1, 20
  %5 = load i32, ptr @minors, align 4
  tail call void @unregister_chrdev_region(i32 noundef %4, i32 noundef %5) #15
  store i32 0, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %6

6:                                                ; preds = %3, %0
  %7 = load ptr, ptr @hidg_class, align 4
  tail call void @class_destroy(ptr noundef %7) #15
  store ptr null, ptr @hidg_class, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hidg_alloc_inst() #1 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 144) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.f_hid_opts, ptr %3, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @hidg_alloc_inst.__key) #15
  %7 = getelementptr inbounds %struct.usb_function_instance, ptr %3, i32 0, i32 4
  store ptr @hidg_free_inst, ptr %7, align 8
  tail call void @mutex_lock(ptr noundef nonnull @hidg_ida_lock) #15
  %8 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @hidg_ida, i32 0, i32 0, i32 2), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #15
  store i32 0, ptr %1, align 4, !annotation !8
  %11 = tail call ptr @__class_create(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str, ptr noundef nonnull @ghid_setup.__key) #15
  store ptr %11, ptr @hidg_class, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = call i32 @alloc_chrdev_region(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @.str) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @hidg_class, align 4
  call void @class_destroy(ptr noundef %17) #15
  store ptr null, ptr @hidg_class, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  br label %23

18:                                               ; preds = %13
  %19 = load i32, ptr %1, align 4
  %20 = lshr i32 %19, 20
  store i32 %20, ptr @major, align 4
  store i32 4, ptr @minors, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  br label %26

21:                                               ; preds = %10
  %22 = ptrtoint ptr %11 to i32
  store ptr null, ptr @hidg_class, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  br label %23

23:                                               ; preds = %21, %16
  %24 = phi i32 [ %14, %16 ], [ %22, %21 ]
  %25 = inttoptr i32 %24 to ptr
  call void @kfree(ptr noundef nonnull %3) #15
  br label %48

26:                                               ; preds = %18, %5
  %27 = call i32 @ida_alloc_range(ptr noundef nonnull @hidg_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #15
  %28 = icmp sgt i32 %27, 3
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  call void @ida_free(ptr noundef nonnull @hidg_ida, i32 noundef %27) #15
  %30 = getelementptr inbounds %struct.f_hid_opts, ptr %3, i32 0, i32 1
  store i32 -19, ptr %30, align 4
  br label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.f_hid_opts, ptr %3, i32 0, i32 1
  store i32 %27, ptr %32, align 4
  %33 = icmp slt i32 %27, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31, %29
  %35 = phi i32 [ -19, %29 ], [ %27, %31 ]
  %36 = inttoptr i32 %35 to ptr
  call void @kfree(ptr noundef nonnull %3) #15
  %37 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @hidg_ida, i32 0, i32 0, i32 2), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load i32, ptr @major, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = shl i32 %40, 20
  %44 = load i32, ptr @minors, align 4
  call void @unregister_chrdev_region(i32 noundef %43, i32 noundef %44) #15
  store i32 0, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load ptr, ptr @hidg_class, align 4
  call void @class_destroy(ptr noundef %46) #15
  store ptr null, ptr @hidg_class, align 4
  br label %48

47:                                               ; preds = %31
  call void @config_group_init_type_name(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @hid_func_type) #15
  br label %48

48:                                               ; preds = %47, %45, %34, %23
  %49 = phi ptr [ %25, %23 ], [ %36, %45 ], [ %36, %34 ], [ %3, %47 ]
  call void @mutex_unlock(ptr noundef nonnull @hidg_ida_lock) #15
  br label %50

50:                                               ; preds = %48, %0
  %51 = phi ptr [ %49, %48 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hidg_alloc(ptr noundef %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 256) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %6) #15
  %7 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 18
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  store i8 %14, ptr %3, align 8
  %15 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 5
  %19 = load i16, ptr %18, align 4
  %20 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 6
  store i16 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 6
  %22 = load i16, ptr %21, align 2
  %23 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 4
  store i16 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 7
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %5
  %28 = zext i16 %22 to i32
  %29 = tail call ptr @kmemdup(ptr noundef nonnull %25, i32 noundef %28, i32 noundef 3264) #15
  %30 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 5
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void @kfree(ptr noundef nonnull %3) #15
  tail call void @mutex_unlock(ptr noundef %6) #15
  br label %47

33:                                               ; preds = %27, %5
  %34 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 4
  %35 = load i8, ptr %34, align 2
  %36 = icmp eq i8 %35, 0
  %37 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 7
  %38 = zext i1 %36 to i8
  store i8 %38, ptr %37, align 2
  tail call void @mutex_unlock(ptr noundef %6) #15
  %39 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 20
  store ptr @.str.1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 20, i32 9
  store ptr @hidg_bind, ptr %40, align 8
  %41 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 20, i32 10
  store ptr @hidg_unbind, ptr %41, align 4
  %42 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 20, i32 13
  store ptr @hidg_set_alt, ptr %42, align 8
  %43 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 20, i32 15
  store ptr @hidg_disable, ptr %43, align 8
  %44 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 20, i32 16
  store ptr @hidg_setup, ptr %44, align 4
  %45 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 20, i32 11
  store ptr @hidg_free, ptr %45, align 8
  %46 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 11
  store i32 4, ptr %46, align 8
  br label %47

47:                                               ; preds = %33, %32, %1
  %48 = phi ptr [ %39, %33 ], [ inttoptr (i32 -12 to ptr), %32 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hidg_free_inst(ptr noundef %0) #1 {
  tail call void @mutex_lock(ptr noundef nonnull @hidg_ida_lock) #15
  %2 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  tail call void @ida_free(ptr noundef nonnull @hidg_ida, i32 noundef %3) #15
  %4 = load ptr, ptr getelementptr inbounds (%struct.ida, ptr @hidg_ida, i32 0, i32 0, i32 2), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, ptr @major, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = shl i32 %7, 20
  %11 = load i32, ptr @minors, align 4
  tail call void @unregister_chrdev_region(i32 noundef %10, i32 noundef %11) #15
  store i32 0, ptr @minors, align 4
  store i32 0, ptr @major, align 4
  br label %12

12:                                               ; preds = %9, %6
  %13 = load ptr, ptr @hidg_class, align 4
  tail call void @class_destroy(ptr noundef %13) #15
  store ptr null, ptr @hidg_class, align 4
  br label %14

14:                                               ; preds = %12, %1
  tail call void @mutex_unlock(ptr noundef nonnull @hidg_ida_lock) #15
  %15 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 8
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #15
  br label %21

21:                                               ; preds = %18, %14
  tail call void @kfree(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hid_attr_release(ptr noundef %0) #1 {
  tail call void @usb_put_function_instance(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_subclass_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_subclass_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1
  %14 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 2
  store i8 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_protocol_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_protocol_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1
  %14 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 3
  store i8 %13, ptr %14, align 1
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_no_out_endpoint_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_no_out_endpoint_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1
  %14 = icmp ugt i8 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 4
  store i8 %13, ptr %16, align 2
  br label %17

17:                                               ; preds = %15, %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_report_length_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 5
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_report_length_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #15
  %6 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 5
  store i16 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_report_desc_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #1 {
  %3 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %3) #15
  %4 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 6
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 1 %8, i32 %6, i1 false)
  tail call void @mutex_unlock(ptr noundef %3) #15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_report_desc_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #15
  %5 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = icmp ugt i32 %2, 4096
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #15
  store ptr %11, ptr %14, align 4
  %16 = trunc i32 %2 to i16
  %17 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 6
  store i16 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 8
  store i8 1, ptr %18, align 4
  br label %19

19:                                               ; preds = %13, %10, %8, %3
  %20 = phi i32 [ -16, %3 ], [ %2, %13 ], [ -28, %8 ], [ -12, %10 ]
  tail call void @mutex_unlock(ptr noundef %4) #15
  ret i32 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hid_opts_dev_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = load i32, ptr @major, align 4
  %4 = getelementptr inbounds %struct.f_hid_opts, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hidg_bind(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr i8, ptr %1, i32 -140
  %4 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @usb_gstrings_attach(ptr noundef %5, ptr noundef nonnull @ct_func_strings, i32 noundef 2) #15
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = ptrtoint ptr %6 to i32
  br label %104

10:                                               ; preds = %2
  %11 = load i8, ptr %6, align 4
  store i8 %11, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 8), align 1
  %12 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #15
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %84, label %14

14:                                               ; preds = %10
  %15 = trunc i32 %12 to i8
  store i8 %15, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 2), align 1
  %16 = load ptr, ptr %4, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = tail call ptr @usb_ep_autoconfig(ptr noundef %17, ptr noundef nonnull @hidg_fs_in_ep_desc) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %84, label %20

20:                                               ; preds = %14
  %21 = getelementptr i8, ptr %1, i32 108
  store ptr %18, ptr %21, align 4
  %22 = getelementptr i8, ptr %1, i32 112
  store ptr null, ptr %22, align 4
  %23 = getelementptr i8, ptr %1, i32 -126
  %24 = load i8, ptr %23, align 2, !range !9
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %4, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @usb_ep_autoconfig(ptr noundef %28, ptr noundef nonnull @hidg_fs_out_ep_desc) #15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %84, label %31

31:                                               ; preds = %26
  store ptr %29, ptr %22, align 4
  br label %32

32:                                               ; preds = %31, %20
  %33 = getelementptr i8, ptr %1, i32 -96
  store ptr null, ptr %33, align 4
  %34 = load i8, ptr %3, align 4
  store i8 %34, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 6), align 1
  %35 = getelementptr i8, ptr %1, i32 -139
  %36 = load i8, ptr %35, align 1
  store i8 %36, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 7), align 1
  %37 = load i8, ptr %23, align 2, !range !9
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i8 1, i8 2
  store i8 %39, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @hidg_interface_desc, i32 0, i32 4), align 1
  %40 = getelementptr i8, ptr %1, i32 -138
  store i8 1, ptr %40, align 2
  %41 = getelementptr i8, ptr %1, i32 -137
  store i8 1, ptr %41, align 1
  %42 = getelementptr i8, ptr %1, i32 -128
  %43 = load i16, ptr %42, align 4
  store i16 %43, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_ss_in_ep_desc, i32 0, i32 4), align 1
  store i16 %43, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @hidg_ss_in_comp_desc, i32 0, i32 4), align 1
  store i16 %43, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_hs_in_ep_desc, i32 0, i32 4), align 1
  store i16 %43, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_fs_in_ep_desc, i32 0, i32 4), align 1
  store i16 %43, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_ss_out_ep_desc, i32 0, i32 4), align 1
  store i16 %43, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @hidg_ss_out_comp_desc, i32 0, i32 4), align 1
  %44 = load i16, ptr %42, align 4
  store i16 %44, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_hs_out_ep_desc, i32 0, i32 4), align 1
  store i16 %44, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_fs_out_ep_desc, i32 0, i32 4), align 1
  store i8 34, ptr getelementptr inbounds (%struct.hid_descriptor, ptr @hidg_desc, i32 0, i32 5), align 1
  %45 = getelementptr i8, ptr %1, i32 -136
  %46 = load i16, ptr %45, align 4
  store i16 %46, ptr getelementptr inbounds (%struct.hid_descriptor, ptr @hidg_desc, i32 0, i32 5, i32 0, i32 1), align 1
  %47 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_fs_in_ep_desc, i32 0, i32 2), align 1
  store i8 %47, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_hs_in_ep_desc, i32 0, i32 2), align 1
  %48 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_fs_out_ep_desc, i32 0, i32 2), align 1
  store i8 %48, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_hs_out_ep_desc, i32 0, i32 2), align 1
  store i8 %47, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_ss_in_ep_desc, i32 0, i32 2), align 1
  store i8 %48, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hidg_ss_out_ep_desc, i32 0, i32 2), align 1
  %49 = load i8, ptr %23, align 2, !range !9
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %32
  %52 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @hidg_fs_descriptors_intout, ptr noundef nonnull @hidg_hs_descriptors_intout, ptr noundef nonnull @hidg_ss_descriptors_intout, ptr noundef nonnull @hidg_ss_descriptors_intout) #15
  br label %55

53:                                               ; preds = %32
  %54 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @hidg_fs_descriptors_ssreport, ptr noundef nonnull @hidg_hs_descriptors_ssreport, ptr noundef nonnull @hidg_ss_descriptors_ssreport, ptr noundef nonnull @hidg_ss_descriptors_ssreport) #15
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %1, i32 -88
  store i32 0, ptr %59, align 4
  %60 = getelementptr i8, ptr %1, i32 -84
  store i8 1, ptr %60, align 4
  %61 = getelementptr i8, ptr %1, i32 -68
  store ptr null, ptr %61, align 4
  %62 = getelementptr i8, ptr %1, i32 -124
  store i32 0, ptr %62, align 4
  %63 = getelementptr i8, ptr %1, i32 -80
  tail call void @__init_waitqueue_head(ptr noundef %63, ptr noundef nonnull @.str.12, ptr noundef nonnull @hidg_bind.__key) #15
  %64 = getelementptr i8, ptr %1, i32 -120
  tail call void @__init_waitqueue_head(ptr noundef %64, ptr noundef nonnull @.str.14, ptr noundef nonnull @hidg_bind.__key.13) #15
  %65 = getelementptr i8, ptr %1, i32 -108
  store volatile ptr %65, ptr %65, align 4
  %66 = getelementptr i8, ptr %1, i32 -104
  store ptr %65, ptr %66, align 4
  %67 = getelementptr i8, ptr %1, i32 -60
  tail call void @cdev_init(ptr noundef %67, ptr noundef nonnull @f_hidg_fops) #15
  %68 = load i32, ptr @major, align 4
  %69 = shl i32 %68, 20
  %70 = getelementptr i8, ptr %1, i32 -64
  %71 = load i32, ptr %70, align 4
  %72 = or i32 %69, %71
  %73 = tail call i32 @cdev_add(ptr noundef %67, i32 noundef %72, i32 noundef 1) #15
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %58
  %76 = load ptr, ptr @hidg_class, align 4
  %77 = load i32, ptr %70, align 4
  %78 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %76, ptr noundef null, i32 noundef %72, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, i32 noundef %77) #15
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %104

80:                                               ; preds = %75
  %81 = ptrtoint ptr %78 to i32
  tail call void @cdev_del(ptr noundef %67) #15
  br label %82

82:                                               ; preds = %80, %58
  %83 = phi i32 [ %73, %58 ], [ %81, %80 ]
  tail call void @usb_free_all_descriptors(ptr noundef %1) #15
  br label %84

84:                                               ; preds = %82, %55, %26, %14, %10
  %85 = phi i32 [ %12, %10 ], [ %56, %55 ], [ %83, %82 ], [ -19, %26 ], [ -19, %14 ]
  %86 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 6
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.usb_configuration, ptr %87, i32 0, i32 9
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.usb_gadget, ptr %90, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.16) #17
  %92 = getelementptr i8, ptr %1, i32 -68
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %84
  %96 = getelementptr i8, ptr %1, i32 108
  %97 = load ptr, ptr %96, align 4
  %98 = load ptr, ptr %93, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102, !prof !10

100:                                              ; preds = %95
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %101 = load ptr, ptr %93, align 4
  br label %102

102:                                              ; preds = %100, %95
  %103 = phi ptr [ %101, %100 ], [ %98, %95 ]
  tail call void @kfree(ptr noundef %103) #15
  store ptr null, ptr %93, align 4
  tail call void @usb_ep_free_request(ptr noundef %97, ptr noundef nonnull %93) #15
  br label %104

104:                                              ; preds = %102, %84, %75, %8
  %105 = phi i32 [ %9, %8 ], [ 0, %75 ], [ %85, %102 ], [ %85, %84 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hidg_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #1 {
  %3 = load ptr, ptr @hidg_class, align 4
  %4 = load i32, ptr @major, align 4
  %5 = shl i32 %4, 20
  %6 = getelementptr i8, ptr %1, i32 -64
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %5, %7
  tail call void @device_destroy(ptr noundef %3, i32 noundef %8) #15
  %9 = getelementptr i8, ptr %1, i32 -60
  tail call void @cdev_del(ptr noundef %9) #15
  tail call void @usb_free_all_descriptors(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hidg_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %0, i32 -140
  %9 = getelementptr i8, ptr %0, i32 108
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %12

12:                                               ; preds = %3
  %13 = tail call i32 @usb_ep_disable(ptr noundef nonnull %10) #15
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.usb_configuration, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %9, align 4
  %19 = tail call i32 @config_ep_by_speed(ptr noundef %17, ptr noundef %0, ptr noundef %18) #15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.usb_gadget, ptr %22, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.25) #17
  br label %138

24:                                               ; preds = %12
  %25 = load ptr, ptr %9, align 4
  %26 = tail call i32 @usb_ep_enable(ptr noundef %25) #15
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.usb_gadget, ptr %29, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.26) #17
  br label %138

31:                                               ; preds = %24
  %32 = load ptr, ptr %9, align 4
  store ptr %8, ptr %32, align 4
  %33 = load ptr, ptr %9, align 4
  %34 = getelementptr i8, ptr %0, i32 -128
  %35 = load i16, ptr %34, align 4
  %36 = zext i16 %35 to i32
  %37 = tail call ptr @alloc_ep_req(ptr noundef %33, i32 noundef %36) #15
  %38 = icmp eq ptr %37, null
  br i1 %38, label %132, label %39

39:                                               ; preds = %31, %3
  %40 = phi ptr [ %37, %31 ], [ null, %3 ]
  %41 = getelementptr i8, ptr %0, i32 -126
  %42 = load i8, ptr %41, align 2, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %107, label %44

44:                                               ; preds = %39
  %45 = getelementptr i8, ptr %0, i32 112
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %107, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @usb_ep_disable(ptr noundef nonnull %46) #15
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.usb_configuration, ptr %50, i32 0, i32 9
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %45, align 4
  %55 = tail call i32 @config_ep_by_speed(ptr noundef %53, ptr noundef %0, ptr noundef %54) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr inbounds %struct.usb_gadget, ptr %58, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.25) #17
  br label %121

60:                                               ; preds = %48
  %61 = load ptr, ptr %45, align 4
  %62 = tail call i32 @usb_ep_enable(ptr noundef %61) #15
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load ptr, ptr %7, align 4
  %66 = getelementptr inbounds %struct.usb_gadget, ptr %65, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.27) #17
  br label %121

67:                                               ; preds = %60
  %68 = load ptr, ptr %45, align 4
  store ptr %8, ptr %68, align 4
  %69 = getelementptr i8, ptr %0, i32 -100
  %70 = load i32, ptr %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = icmp eq i32 %62, 0
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %107

74:                                               ; preds = %67
  %75 = getelementptr i8, ptr %0, i32 -128
  br label %76

76:                                               ; preds = %102, %74
  %77 = phi i32 [ 0, %74 ], [ %103, %102 ]
  %78 = load ptr, ptr %45, align 4
  %79 = load i16, ptr %75, align 4
  %80 = zext i16 %79 to i32
  %81 = tail call ptr @alloc_ep_req(ptr noundef %78, i32 noundef %80) #15
  %82 = icmp eq ptr %81, null
  br i1 %82, label %116, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.usb_request, ptr %81, i32 0, i32 7
  store ptr @hidg_intout_complete, ptr %84, align 4
  %85 = getelementptr inbounds %struct.usb_request, ptr %81, i32 0, i32 8
  store ptr %8, ptr %85, align 4
  %86 = load ptr, ptr %45, align 4
  %87 = tail call i32 @usb_ep_queue(ptr noundef %86, ptr noundef nonnull %81, i32 noundef 2592) #15
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr inbounds %struct.usb_gadget, ptr %90, i32 0, i32 11
  %92 = load ptr, ptr %45, align 4
  %93 = getelementptr inbounds %struct.usb_ep, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.28, ptr noundef %94, i32 noundef %87) #17
  %95 = load ptr, ptr %45, align 4
  %96 = load ptr, ptr %81, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %100, !prof !10

98:                                               ; preds = %89
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %99 = load ptr, ptr %81, align 4
  br label %100

100:                                              ; preds = %98, %89
  %101 = phi ptr [ %99, %98 ], [ %96, %89 ]
  tail call void @kfree(ptr noundef %101) #15
  store ptr null, ptr %81, align 4
  tail call void @usb_ep_free_request(ptr noundef %95, ptr noundef nonnull %81) #15
  br label %107

102:                                              ; preds = %83
  %103 = add nuw i32 %77, 1
  %104 = load i32, ptr %69, align 4
  %105 = icmp ult i32 %103, %104
  %106 = select i1 %105, i1 %88, i1 false
  br i1 %106, label %76, label %107

107:                                              ; preds = %102, %100, %67, %44, %39
  %108 = load ptr, ptr %9, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %138, label %110

110:                                              ; preds = %107
  %111 = getelementptr i8, ptr %0, i32 -88
  %112 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %111) #15
  %113 = getelementptr i8, ptr %0, i32 -68
  store ptr %40, ptr %113, align 4
  %114 = getelementptr i8, ptr %0, i32 -84
  store i8 0, ptr %114, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %111, i32 noundef %112) #15
  %115 = getelementptr i8, ptr %0, i32 -80
  tail call void @__wake_up(ptr noundef %115, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %138

116:                                              ; preds = %76
  %117 = load ptr, ptr %45, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = tail call i32 @usb_ep_disable(ptr noundef nonnull %117) #15
  br label %121

121:                                              ; preds = %119, %116, %64, %57
  %122 = phi i32 [ %55, %57 ], [ %62, %64 ], [ -12, %119 ], [ -12, %116 ]
  %123 = icmp eq ptr %40, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %9, align 4
  %126 = load ptr, ptr %40, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %130, !prof !10

128:                                              ; preds = %124
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %129 = load ptr, ptr %40, align 4
  br label %130

130:                                              ; preds = %128, %124
  %131 = phi ptr [ %129, %128 ], [ %126, %124 ]
  tail call void @kfree(ptr noundef %131) #15
  store ptr null, ptr %40, align 4
  tail call void @usb_ep_free_request(ptr noundef %125, ptr noundef nonnull %40) #15
  br label %132

132:                                              ; preds = %130, %121, %31
  %133 = phi i32 [ %122, %130 ], [ %122, %121 ], [ -12, %31 ]
  %134 = load ptr, ptr %9, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = tail call i32 @usb_ep_disable(ptr noundef nonnull %134) #15
  br label %138

138:                                              ; preds = %136, %132, %110, %107, %28, %21
  %139 = phi i32 [ 0, %110 ], [ 0, %107 ], [ %19, %21 ], [ %26, %28 ], [ %133, %136 ], [ %133, %132 ]
  ret i32 %139
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hidg_disable(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 108
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @usb_ep_disable(ptr noundef %3) #15
  %5 = getelementptr i8, ptr %0, i32 112
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @usb_ep_disable(ptr noundef nonnull %6) #15
  %10 = getelementptr i8, ptr %0, i32 -124
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #15
  %12 = getelementptr i8, ptr %0, i32 -108
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %32, label %15

15:                                               ; preds = %25, %8
  %16 = phi ptr [ %18, %25 ], [ %13, %8 ]
  %17 = getelementptr i8, ptr %16, i32 -8
  %18 = load ptr, ptr %16, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25, !prof !10

23:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %24 = load ptr, ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi ptr [ %24, %23 ], [ %21, %15 ]
  tail call void @kfree(ptr noundef %26) #15
  store ptr null, ptr %20, align 4
  tail call void @usb_ep_free_request(ptr noundef %19, ptr noundef %20) #15
  %27 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  tail call void @kfree(ptr noundef %17) #15
  %31 = icmp eq ptr %18, %12
  br i1 %31, label %32, label %15

32:                                               ; preds = %25, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #15
  br label %33

33:                                               ; preds = %32, %1
  %34 = getelementptr i8, ptr %0, i32 -88
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #15
  %36 = getelementptr i8, ptr %0, i32 -84
  %37 = load i8, ptr %36, align 4, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr i8, ptr %0, i32 -68
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47, !prof !10

45:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %46 = load ptr, ptr %42, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %46, %45 ], [ %43, %39 ]
  tail call void @kfree(ptr noundef %48) #15
  store ptr null, ptr %42, align 4
  tail call void @usb_ep_free_request(ptr noundef %40, ptr noundef %42) #15
  store i8 1, ptr %36, align 4
  br label %49

49:                                               ; preds = %47, %33
  %50 = getelementptr i8, ptr %0, i32 -68
  store ptr null, ptr %50, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hidg_setup(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.hid_descriptor, align 1
  %4 = getelementptr i8, ptr %0, i32 -140
  %5 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_configuration, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_composite_dev, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
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
  switch i16 %21, label %97 [
    i16 -24319, label %22
    i16 -24317, label %28
    i16 -24318, label %34
    i16 8457, label %40
    i16 8459, label %47
    i16 8458, label %55
    i16 -32506, label %59
  ]

22:                                               ; preds = %2
  %23 = getelementptr i8, ptr %0, i32 -128
  %24 = load i16, ptr %23, align 4
  %25 = tail call i16 @llvm.umin.i16(i16 %14, i16 %24)
  %26 = load ptr, ptr %10, align 4
  %27 = zext i16 %25 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %26, i8 0, i32 %27, i1 false)
  br label %81

28:                                               ; preds = %2
  %29 = icmp ne i16 %14, 0
  %30 = zext i1 %29 to i16
  %31 = getelementptr i8, ptr %0, i32 -138
  %32 = load i8, ptr %31, align 2
  %33 = load ptr, ptr %10, align 4
  store i8 %32, ptr %33, align 1
  br label %81

34:                                               ; preds = %2
  %35 = icmp ne i16 %14, 0
  %36 = zext i1 %35 to i16
  %37 = getelementptr i8, ptr %0, i32 -137
  %38 = load i8, ptr %37, align 1
  %39 = load ptr, ptr %10, align 4
  store i8 %38, ptr %39, align 1
  br label %81

40:                                               ; preds = %2
  %41 = getelementptr i8, ptr %0, i32 -126
  %42 = load i8, ptr %41, align 2, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 7
  store ptr @hidg_ssreport_complete, ptr %45, align 4
  %46 = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 8
  store ptr %4, ptr %46, align 4
  br label %81

47:                                               ; preds = %2
  %48 = icmp ugt i16 %12, 1
  br i1 %48, label %97, label %49

49:                                               ; preds = %47
  %50 = load i8, ptr %4, align 4
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %97

52:                                               ; preds = %49
  %53 = trunc i16 %12 to i8
  %54 = getelementptr i8, ptr %0, i32 -138
  store i8 %53, ptr %54, align 2
  br label %81

55:                                               ; preds = %2
  %56 = lshr i16 %12, 8
  %57 = trunc i16 %56 to i8
  %58 = getelementptr i8, ptr %0, i32 -137
  store i8 %57, ptr %58, align 1
  br label %81

59:                                               ; preds = %2
  %60 = lshr i16 %12, 8
  %61 = trunc i16 %60 to i8
  switch i8 %61, label %97 [
    i8 33, label %62
    i8 34, label %73
  ]

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 1 dereferenceable(9) @hidg_desc, i32 6, i1 false)
  %63 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 34, ptr %63, align 1
  %64 = getelementptr i8, ptr %0, i32 -136
  %65 = load i16, ptr %64, align 4
  %66 = getelementptr inbounds i8, ptr %3, i32 7
  store i16 %65, ptr %66, align 1
  %67 = load i8, ptr %3, align 1
  %68 = zext i16 %14 to i32
  %69 = zext i8 %67 to i32
  %70 = tail call i32 @llvm.umin.i32(i32 %68, i32 %69)
  %71 = trunc i32 %70 to i16
  %72 = load ptr, ptr %10, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %72, ptr nonnull align 1 %3, i32 %70, i1 false)
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %3)
  br label %81

73:                                               ; preds = %59
  %74 = getelementptr i8, ptr %0, i32 -136
  %75 = load i16, ptr %74, align 4
  %76 = tail call i16 @llvm.umin.i16(i16 %14, i16 %75)
  %77 = load ptr, ptr %10, align 4
  %78 = getelementptr i8, ptr %0, i32 -132
  %79 = load ptr, ptr %78, align 4
  %80 = zext i16 %76 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %77, ptr align 1 %79, i32 %80, i1 false)
  br label %81

81:                                               ; preds = %73, %62, %55, %52, %44, %34, %28, %22
  %82 = phi i16 [ %76, %73 ], [ %71, %62 ], [ 0, %55 ], [ 0, %52 ], [ %14, %44 ], [ %36, %34 ], [ %30, %28 ], [ %25, %22 ]
  %83 = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, -262145
  store i32 %85, ptr %83, align 4
  %86 = zext i16 %82 to i32
  %87 = getelementptr inbounds %struct.usb_request, ptr %10, i32 0, i32 1
  store i32 %86, ptr %87, align 4
  %88 = load ptr, ptr %8, align 4
  %89 = getelementptr inbounds %struct.usb_gadget, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 8
  %91 = tail call i32 @usb_ep_queue(ptr noundef %90, ptr noundef %10, i32 noundef 2592) #15
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %81
  %94 = load ptr, ptr %8, align 4
  %95 = getelementptr inbounds %struct.usb_gadget, ptr %94, i32 0, i32 11
  %96 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.31, i32 noundef %96) #17
  br label %97

97:                                               ; preds = %93, %81, %59, %49, %47, %40, %2
  %98 = phi i32 [ -95, %2 ], [ -95, %59 ], [ -95, %49 ], [ -95, %47 ], [ -95, %40 ], [ %91, %93 ], [ %91, %81 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hidg_free(ptr noundef %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -140
  %3 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -132
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #15
  %7 = getelementptr i8, ptr %0, i32 -96
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #15
  tail call void @kfree(ptr noundef %2) #15
  %9 = getelementptr inbounds %struct.f_hid_opts, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %9) #15
  %10 = getelementptr inbounds %struct.f_hid_opts, ptr %4, i32 0, i32 10
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef %9) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hidg_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 7
  %10 = load i8, ptr %9, align 2, !range !9
  %11 = icmp eq i8 %10, 0
  %12 = icmp eq i32 %2, 0
  br i1 %11, label %112, label %13

13:                                               ; preds = %4
  br i1 %12, label %174, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 8
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 10
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %22 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 9
  br label %23

23:                                               ; preds = %44, %20
  %24 = phi i32 [ %16, %20 ], [ %45, %44 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %24) #15
  %25 = load i32, ptr %21, align 4
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %174

28:                                               ; preds = %23
  %29 = load volatile ptr, ptr %17, align 4
  %30 = icmp eq ptr %29, %17
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #15, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #15
  %32 = call i32 @prepare_to_wait_event(ptr noundef %22, ptr noundef nonnull %6, i32 noundef 1) #15
  %33 = load volatile ptr, ptr %17, align 4
  %34 = icmp eq ptr %33, %17
  br i1 %34, label %35, label %42

35:                                               ; preds = %38, %31
  %36 = phi i32 [ %39, %38 ], [ %32, %31 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  call void @schedule() #15
  %39 = call i32 @prepare_to_wait_event(ptr noundef %22, ptr noundef nonnull %6, i32 noundef 1) #15
  %40 = load volatile ptr, ptr %17, align 4
  %41 = icmp eq ptr %40, %17
  br i1 %41, label %35, label %42

42:                                               ; preds = %38, %31
  call void @finish_wait(ptr noundef %22, ptr noundef nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #15
  br label %44

43:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #15
  br label %174

44:                                               ; preds = %42, %28
  %45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  %46 = load volatile ptr, ptr %17, align 4
  %47 = icmp eq ptr %46, %17
  br i1 %47, label %23, label %48

48:                                               ; preds = %44, %14
  %49 = phi i32 [ %16, %14 ], [ %45, %44 ]
  %50 = phi ptr [ %18, %14 ], [ %46, %44 ]
  %51 = getelementptr i8, ptr %50, i32 -8
  %52 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %50, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %50, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  %56 = load ptr, ptr %51, align 4
  %57 = getelementptr inbounds %struct.usb_request, ptr %56, i32 0, i32 12
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %50, i32 -4
  %60 = load i32, ptr %59, align 4
  %61 = sub i32 %58, %60
  %62 = call i32 @llvm.umin.i32(i32 %61, i32 %2) #15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %49) #15
  %63 = load ptr, ptr %56, align 4
  %64 = load i32, ptr %59, align 4
  %65 = getelementptr i8, ptr %63, i32 %64
  %66 = icmp slt i32 %62, 0
  %67 = load i1, ptr @check_copy_size.__already_done, align 1
  %68 = xor i1 %67, true
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71, !prof !10

70:                                               ; preds = %48
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %71

71:                                               ; preds = %70, %48
  br i1 %66, label %83, label %72, !prof !10

72:                                               ; preds = %71
  %73 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %62, i32 -1090519040) #18, !srcloc !11
  %74 = extractvalue { i32, i32 } %73, 0
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = tail call ptr @llvm.thread.pointer() #15
  %78 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %79 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %78) #19, !srcloc !12
  %80 = and i32 %79, -13
  %81 = or i32 %80, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #15, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !14
  %82 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %65, i32 noundef %62) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #15, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !14
  br label %83

83:                                               ; preds = %76, %72, %71
  %84 = phi i32 [ %62, %71 ], [ %82, %76 ], [ %62, %72 ]
  %85 = sub i32 %62, %84
  %86 = load i32, ptr %59, align 4
  %87 = add i32 %86, %85
  store i32 %87, ptr %59, align 4
  %88 = load i32, ptr %57, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %107

90:                                               ; preds = %83
  call void @kfree(ptr noundef %51) #15
  %91 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 6
  %92 = load i16, ptr %91, align 4
  %93 = zext i16 %92 to i32
  %94 = getelementptr inbounds %struct.usb_request, ptr %56, i32 0, i32 1
  store i32 %93, ptr %94, align 4
  %95 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 22
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 @usb_ep_queue(ptr noundef %96, ptr noundef %56, i32 noundef 3264) #15
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %174

99:                                               ; preds = %90
  %100 = load ptr, ptr %95, align 4
  %101 = load ptr, ptr %56, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %105, !prof !10

103:                                              ; preds = %99
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %104 = load ptr, ptr %56, align 4
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi ptr [ %104, %103 ], [ %101, %99 ]
  call void @kfree(ptr noundef %106) #15
  store ptr null, ptr %56, align 4
  call void @usb_ep_free_request(ptr noundef %100, ptr noundef %56) #15
  br label %174

107:                                              ; preds = %83
  %108 = call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  %109 = load ptr, ptr %17, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %50, ptr %110, align 4
  store ptr %109, ptr %50, align 4
  store ptr %17, ptr %52, align 4
  store volatile ptr %50, ptr %17, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %108) #15
  %111 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 9
  call void @__wake_up(ptr noundef %111, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %174

112:                                              ; preds = %4
  br i1 %12, label %174, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 8
  %115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %114) #15
  %116 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 12
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %147

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %121 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 9
  br label %122

122:                                              ; preds = %143, %119
  %123 = phi i32 [ %115, %119 ], [ %144, %143 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %114, i32 noundef %123) #15
  %124 = load i32, ptr %120, align 4
  %125 = and i32 %124, 2048
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %174

127:                                              ; preds = %122
  %128 = load ptr, ptr %116, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false) #15, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 0) #15
  %131 = call i32 @prepare_to_wait_event(ptr noundef %121, ptr noundef nonnull %5, i32 noundef 1) #15
  %132 = load ptr, ptr %116, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %137, %130
  %135 = phi i32 [ %138, %137 ], [ %131, %130 ]
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  call void @schedule() #15
  %138 = call i32 @prepare_to_wait_event(ptr noundef %121, ptr noundef nonnull %5, i32 noundef 1) #15
  %139 = load ptr, ptr %116, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %134, label %141

141:                                              ; preds = %137, %130
  call void @finish_wait(ptr noundef %121, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %143

142:                                              ; preds = %134
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %174

143:                                              ; preds = %141, %127
  %144 = call i32 @_raw_spin_lock_irqsave(ptr noundef %114) #15
  %145 = load ptr, ptr %116, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %122, label %147

147:                                              ; preds = %143, %113
  %148 = phi i32 [ %115, %113 ], [ %144, %143 ]
  %149 = phi ptr [ %117, %113 ], [ %145, %143 ]
  %150 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 13
  %151 = load i32, ptr %150, align 4
  store ptr null, ptr %116, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %114, i32 noundef %148) #15
  %152 = call i32 @llvm.umin.i32(i32 %151, i32 %2) #15
  %153 = icmp slt i32 %152, 0
  %154 = load i1, ptr @check_copy_size.__already_done, align 1
  %155 = xor i1 %154, true
  %156 = select i1 %153, i1 %155, i1 false
  br i1 %156, label %157, label %158, !prof !10

157:                                              ; preds = %147
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #15
  br label %158

158:                                              ; preds = %157, %147
  br i1 %153, label %170, label %159, !prof !10

159:                                              ; preds = %158
  %160 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %152, i32 -1090519040) #18, !srcloc !11
  %161 = extractvalue { i32, i32 } %160, 0
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = tail call ptr @llvm.thread.pointer() #15
  %165 = getelementptr inbounds %struct.thread_info, ptr %164, i32 0, i32 3
  %166 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %165) #19, !srcloc !12
  %167 = and i32 %166, -13
  %168 = or i32 %167, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %168) #15, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !14
  %169 = call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %149, i32 noundef %152) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %166) #15, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !14
  br label %170

170:                                              ; preds = %163, %159, %158
  %171 = phi i32 [ %152, %158 ], [ %169, %163 ], [ %152, %159 ]
  %172 = sub i32 %152, %171
  call void @kfree(ptr noundef nonnull %149) #15
  %173 = getelementptr inbounds %struct.f_hidg, ptr %8, i32 0, i32 9
  call void @__wake_up(ptr noundef %173, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %174

174:                                              ; preds = %170, %142, %122, %112, %107, %105, %90, %43, %23, %13
  %175 = phi i32 [ %97, %105 ], [ 0, %13 ], [ -512, %43 ], [ %85, %90 ], [ %85, %107 ], [ %172, %170 ], [ 0, %112 ], [ -512, %142 ], [ -11, %122 ], [ -11, %23 ]
  ret i32 %175
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hidg_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #1 {
  %5 = alloca %struct.wait_queue_entry, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.f_hidg, ptr %7, i32 0, i32 14
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #15
  %10 = getelementptr inbounds %struct.f_hidg, ptr %7, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.f_hidg, ptr %7, i32 0, i32 15
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 7
  %16 = getelementptr inbounds %struct.f_hidg, ptr %7, i32 0, i32 16
  %17 = getelementptr inbounds %struct.f_hidg, ptr %7, i32 0, i32 6
  %18 = getelementptr inbounds %struct.f_hidg, ptr %7, i32 0, i32 21
  br label %20

19:                                               ; preds = %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #15
  br label %114

20:                                               ; preds = %85, %13
  %21 = phi i32 [ %76, %85 ], [ %9, %13 ]
  %22 = phi i32 [ %55, %85 ], [ %2, %13 ]
  %23 = load i8, ptr %14, align 4, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %46, %20
  %26 = phi i32 [ %47, %46 ], [ %21, %20 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %26) #15
  %27 = load i32, ptr %15, align 4
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %114

30:                                               ; preds = %25
  %31 = load i8, ptr %14, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %5, i32 noundef 1) #15
  %34 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #15
  %35 = load i8, ptr %14, align 4, !range !9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %40, %33
  %38 = phi i32 [ %41, %40 ], [ %34, %33 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  call void @schedule() #15
  %41 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %5, i32 noundef 1) #15
  %42 = load i8, ptr %14, align 4, !range !9
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %37

44:                                               ; preds = %40, %33
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %46

45:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #15
  br label %114

46:                                               ; preds = %44, %30
  %47 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #15
  %48 = load i8, ptr %14, align 4, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %25

50:                                               ; preds = %46, %20
  %51 = phi i32 [ %21, %20 ], [ %47, %46 ]
  store i8 1, ptr %14, align 4
  %52 = load ptr, ptr %10, align 4
  %53 = load i16, ptr %17, align 4
  %54 = zext i16 %53 to i32
  %55 = call i32 @llvm.umin.i32(i32 %22, i32 %54)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %51) #15
  %56 = icmp eq ptr %52, null
  br i1 %56, label %102, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %52, align 4
  %59 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %55, i32 -1090519040) #18, !srcloc !15
  %60 = extractvalue { i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69, !prof !16

62:                                               ; preds = %57
  %63 = tail call ptr @llvm.thread.pointer() #15
  %64 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %65 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %64) #19, !srcloc !12
  %66 = and i32 %65, -13
  %67 = or i32 %66, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #15, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !14
  %68 = call i32 @arm_copy_from_user(ptr noundef %58, ptr noundef %1, i32 noundef %55) #15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %65) #15, !srcloc !13
  call void asm sideeffect "isb ", "~{memory}"() #15, !srcloc !14
  br label %69

69:                                               ; preds = %62, %57
  %70 = phi i32 [ %68, %62 ], [ %55, %57 ]
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72, !prof !16

72:                                               ; preds = %69
  %73 = sub i32 %55, %70
  %74 = getelementptr i8, ptr %58, i32 %73
  call void @llvm.memset.p0.i32(ptr align 1 %74, i8 0, i32 %70, i1 false) #15
  br label %102

75:                                               ; preds = %69
  %76 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #15
  %77 = load ptr, ptr %10, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load ptr, ptr %18, align 4
  %81 = load ptr, ptr %52, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %85, !prof !10

83:                                               ; preds = %79
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %84 = load ptr, ptr %52, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi ptr [ %84, %83 ], [ %81, %79 ]
  call void @kfree(ptr noundef %86) #15
  store ptr null, ptr %52, align 4
  call void @usb_ep_free_request(ptr noundef %80, ptr noundef nonnull %52) #15
  br label %20

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.usb_request, ptr %52, i32 0, i32 11
  store i32 0, ptr %88, align 4
  %89 = getelementptr inbounds %struct.usb_request, ptr %52, i32 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, -262145
  store i32 %91, ptr %89, align 4
  %92 = getelementptr inbounds %struct.usb_request, ptr %52, i32 0, i32 1
  store i32 %55, ptr %92, align 4
  %93 = getelementptr inbounds %struct.usb_request, ptr %52, i32 0, i32 7
  store ptr @f_hidg_req_complete, ptr %93, align 4
  %94 = getelementptr inbounds %struct.usb_request, ptr %52, i32 0, i32 8
  store ptr %7, ptr %94, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %76) #15
  %95 = load ptr, ptr %18, align 4
  %96 = getelementptr inbounds %struct.usb_ep, ptr %95, i32 0, i32 6
  %97 = load i8, ptr %96, align 1, !range !9
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %87
  %100 = call i32 @usb_ep_queue(ptr noundef %95, ptr noundef nonnull %52, i32 noundef 2592) #15
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %111, label %114

102:                                              ; preds = %87, %72, %50
  %103 = phi ptr [ @.str.21, %72 ], [ @.str.22, %87 ], [ @.str.20, %50 ]
  %104 = phi i32 [ -22, %72 ], [ -108, %87 ], [ -108, %50 ]
  %105 = getelementptr inbounds %struct.f_hidg, ptr %7, i32 0, i32 20, i32 6
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.usb_configuration, ptr %106, i32 0, i32 9
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.usb_gadget, ptr %109, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull %103) #17
  br label %111

111:                                              ; preds = %102, %99
  %112 = phi i32 [ %100, %99 ], [ %104, %102 ]
  %113 = call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #15
  store i8 0, ptr %14, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %113) #15
  call void @__wake_up(ptr noundef %16, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %114

114:                                              ; preds = %111, %99, %45, %25, %19
  %115 = phi i32 [ %112, %111 ], [ -108, %19 ], [ -512, %45 ], [ %55, %99 ], [ -11, %25 ]
  ret i32 %115
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_hidg_poll(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 9
  %6 = icmp eq ptr %1, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %5, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %1) #15
  %13 = load ptr, ptr %1, align 4
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %8, %7 ], [ %13, %12 ]
  %16 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 16
  %17 = icmp ne ptr %15, null
  %18 = icmp ne ptr %16, null
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void %15(ptr noundef %0, ptr noundef nonnull %16, ptr noundef nonnull %1) #15
  br label %21

21:                                               ; preds = %20, %14, %2
  %22 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 15
  %23 = load i8, ptr %22, align 4, !range !9
  %24 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 7
  %25 = load i8, ptr %24, align 2, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 10
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br label %35

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 12
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ %34, %31 ], [ %30, %27 ]
  %37 = icmp eq i8 %23, 0
  %38 = select i1 %37, i32 260, i32 0
  %39 = or i32 %38, 65
  %40 = select i1 %36, i32 %38, i32 %39
  ret i32 %40
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @f_hidg_open(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -80
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %5, ptr %6, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @f_hidg_release(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr null, ptr %3, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_hidg_req_complete(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 20, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_configuration, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_gadget, ptr %12, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef %5) #17
  br label %14

14:                                               ; preds = %7, %2
  %15 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 14
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #15
  %17 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 15
  store i8 0, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #15
  %18 = getelementptr inbounds %struct.f_hidg, ptr %3, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %18, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hidg_intout_complete(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 20, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_configuration, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %27 [
    i32 0, label %11
    i32 -103, label %30
    i32 -104, label %30
    i32 -108, label %30
  ]

11:                                               ; preds = %2
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 16) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr %8, align 4
  %17 = getelementptr inbounds %struct.usb_gadget, ptr %16, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.29) #17
  br label %30

18:                                               ; preds = %11
  store ptr %1, ptr %13, align 8
  %19 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 8
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #15
  %21 = getelementptr inbounds %struct.f_hidg_req_list, ptr %13, i32 0, i32 2
  %22 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 10
  %23 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 10, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %21, ptr %23, align 4
  store ptr %22, ptr %21, align 8
  %25 = getelementptr inbounds %struct.f_hidg_req_list, ptr %13, i32 0, i32 2, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %21, ptr %24, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #15
  %26 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %26, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %37

27:                                               ; preds = %2
  %28 = load ptr, ptr %8, align 4
  %29 = getelementptr inbounds %struct.usb_gadget, ptr %28, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.30, i32 noundef %10) #17
  br label %30

30:                                               ; preds = %27, %15, %2, %2, %2
  %31 = load ptr, ptr %1, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35, !prof !10

33:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 80, i32 noundef 9, ptr noundef null) #15
  %34 = load ptr, ptr %1, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi ptr [ %34, %33 ], [ %31, %30 ]
  tail call void @kfree(ptr noundef %36) #15
  store ptr null, ptr %1, align 4
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #15
  br label %37

37:                                               ; preds = %35, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_ep_req(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hidg_ssreport_complete(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 20, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.usb_configuration, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %1, align 4
  br i1 %11, label %13, label %19

13:                                               ; preds = %2
  %14 = icmp eq ptr %12, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15, %13, %2
  %20 = phi ptr [ null, %13 ], [ %12, %15 ], [ %12, %2 ]
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.usb_gadget, ptr %21, i32 0, i32 11
  %23 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.hidg_ssreport_complete, i32 noundef %10, ptr noundef %20, i32 noundef %24) #17
  br label %40

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 8
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #15
  %28 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 12
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %16, align 4
  %31 = tail call noalias ptr @krealloc(ptr noundef %29, i32 noundef %30, i32 noundef 2592) #20
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #15
  br label %40

34:                                               ; preds = %25
  store ptr %31, ptr %28, align 4
  %35 = load i32, ptr %16, align 4
  %36 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = load ptr, ptr %1, align 4
  %38 = load i32, ptr %16, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %31, ptr align 1 %37, i32 %38, i1 false)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #15
  %39 = getelementptr inbounds %struct.f_hidg, ptr %4, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %39, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %40

40:                                               ; preds = %34, %33, %19
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #14

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nounwind readonly }
attributes #20 = { nounwind allocsize(1) }

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
!11 = !{i64 2151744227, i64 2151744252}
!12 = !{i64 4239761}
!13 = !{i64 4239958}
!14 = !{i64 2151725237}
!15 = !{i64 2151743649, i64 2151743674}
!16 = !{!"branch_weights", i32 2000, i32 1}
