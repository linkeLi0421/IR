; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_uvc.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_uvc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.usb_function_driver = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.lock_class_key = type {}
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.uvc_control_endpoint_descriptor = type <{ i8, i8, i8, i16 }>
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type opaque
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.uvc_device = type { %struct.video_device, %struct.v4l2_device, i32, %struct.usb_function, %struct.uvc_video, i8, %struct.anon.84, i32, ptr, ptr, ptr, i32, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.uvc_video = type { ptr, ptr, %struct.work_struct, i8, i32, i32, i32, i32, %struct.mutex, i32, i32, ptr, %struct.list_head, %struct.spinlock, i32, ptr, i32, i32, %struct.uvc_video_queue, i32 }
%struct.uvc_video_queue = type { %struct.vb2_queue, i32, i32, i32, i8, %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.anon.84 = type { ptr, ptr, ptr, ptr, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_uvc_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.uvc_camera_terminal_descriptor, %struct.uvc_processing_unit_descriptor, %struct.uvc_output_terminal_descriptor, %struct.uvc_color_matching_descriptor, [5 x ptr], [5 x ptr], ptr, ptr, ptr, %struct.mutex, i32 }
%struct.uvc_camera_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i16, i16, i8, [3 x i8] }
%struct.uvc_processing_unit_descriptor = type <{ i8, i8, i8, i8, i8, i16, i8, [2 x i8], i8, i8 }>
%struct.uvc_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.uvc_color_matching_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.v4l2_event = type { i32, %union.anon.85, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.85 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.86, i32, i32, i32, i32, i32 }
%union.anon.86 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.uvc_header_descriptor = type <{ i8, i8, i8, i16, i16, i32, i8, [0 x i8] }>
%struct.uvc_input_header_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }>

@__param_str_trace = internal constant [6 x i8] c"trace\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@uvc_gadget_trace_param = dso_local global i32 0, align 4
@__param_trace = internal constant %struct.kernel_param { ptr @__param_str_trace, ptr @__this_module, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @uvc_gadget_trace_param } }, section "__param", align 4
@__UNIQUE_ID_tracetype257 = internal constant [20 x i8] c"parmtype=trace:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_trace258 = internal constant [31 x i8] c"parm=trace:Trace level bitmask\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [32 x i8] c"%s: UVC connect failed with %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: UVC disconnect failed with %d\0A\00", align 1
@__UNIQUE_ID_alias271 = internal constant [18 x i8] c"alias=usbfunc:uvc\00", section ".modinfo", align 1
@__UNIQUE_ID_license272 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author273 = internal constant [24 x i8] c"author=Laurent Pinchart\00", section ".modinfo", align 1
@uvcusb_func = internal global %struct.usb_function_driver { ptr @.str.2, ptr @__this_module, %struct.list_head zeroinitializer, ptr @uvc_alloc_inst, ptr @uvc_alloc }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"uvc\00", align 1
@uvc_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@uvc_alloc.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"&uvc->video.mutex\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s: %s()\0A\00", align 1
@__func__.uvc_function_bind = private unnamed_addr constant [18 x i8] c"uvc_function_bind\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"%s: overriding streaming_maxpacket to %d\0A\00", align 1
@uvc_fs_streaming_ep = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 0, i8 0, i8 0 }>, align 1
@uvc_hs_streaming_ep = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 0, i8 0, i8 0 }>, align 1
@uvc_ss_streaming_ep = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 0, i8 0, i8 0 }>, align 1
@uvc_ss_streaming_comp = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@uvc_control_ep = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 16, i8 8, i8 0, i8 0 }>, align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"%s: Unable to allocate control EP\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%s: Unable to allocate streaming EP\0A\00", align 1
@uvc_function_strings = internal global [2 x ptr] [ptr @uvc_stringtab, ptr null], align 4
@uvc_iad = internal unnamed_addr global %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 2, i8 14, i8 3, i8 0, i8 0 }, align 1
@uvc_control_intf = internal unnamed_addr global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 1, i8 14, i8 1, i8 0, i8 0 }, align 1
@uvc_streaming_intf_alt0 = internal unnamed_addr global %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 0, i8 0, i8 14, i8 2, i8 0, i8 0 }, align 1
@uvc_streaming_intf_alt1 = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 1, i8 1, i8 1, i8 14, i8 2, i8 0, i8 0 }, align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s: failed to register V4L2 device\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"%s: failed to register video device\0A\00", align 1
@uvc_stringtab = internal global %struct.usb_gadget_strings { i16 1033, ptr @uvc_en_us_strings }, align 4
@uvc_en_us_strings = internal global [3 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.11 }, %struct.usb_string { i8 0, ptr @.str.12 }, %struct.usb_string zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"UVC Camera\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Video Streaming\00", align 1
@uvc_ss_streaming = internal unnamed_addr constant [4 x ptr] [ptr @uvc_streaming_intf_alt1, ptr @uvc_ss_streaming_ep, ptr @uvc_ss_streaming_comp, ptr null], align 4
@uvc_hs_streaming = internal unnamed_addr constant [3 x ptr] [ptr @uvc_streaming_intf_alt1, ptr @uvc_hs_streaming_ep, ptr null], align 4
@uvc_fs_streaming = internal unnamed_addr constant [3 x ptr] [ptr @uvc_streaming_intf_alt1, ptr @uvc_fs_streaming_ep, ptr null], align 4
@uvc_control_cs_ep = internal unnamed_addr constant %struct.uvc_control_endpoint_descriptor <{ i8 5, i8 37, i8 3, i16 16 }>, align 1
@uvc_ss_control_comp = internal unnamed_addr constant %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 16 }, align 1
@uvc_v4l2_fops = external dso_local constant %struct.v4l2_file_operations, align 4
@uvc_v4l2_ioctl_ops = external dso_local constant %struct.v4l2_ioctl_ops, align 1
@dev_attr_function_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @function_name_show, ptr null }, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"function_name\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__func__.uvc_function_unbind = private unnamed_addr constant [20 x i8] c"uvc_function_unbind\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"%s: %s(%u)\0A\00", align 1
@__func__.uvc_function_get_alt = private unnamed_addr constant [21 x i8] c"uvc_function_get_alt\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"%s: %s(%u, %u)\0A\00", align 1
@__func__.uvc_function_set_alt = private unnamed_addr constant [21 x i8] c"uvc_function_set_alt\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%s: reset UVC Control\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"%s: reset UVC\0A\00", align 1
@__func__.uvc_function_disable = private unnamed_addr constant [21 x i8] c"uvc_function_disable\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"%s: invalid request type\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_alias271, ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_license272, ptr @__UNIQUE_ID_trace258, ptr @__UNIQUE_ID_tracetype257, ptr @__param_trace], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_function_setup_continue(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 3, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call void @usb_composite_setup_continue(ptr noundef %5) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_composite_setup_continue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_function_connect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @usb_function_activate(ptr noundef %2) #13
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 3, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_configuration, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %12, i32 noundef %3) #14
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @uvc_function_disconnect(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @usb_function_deactivate(ptr noundef %2) #13
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 3, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_configuration, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef %12, i32 noundef %3) #14
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @uvcusb_func) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @uvcusb_func) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uvc_alloc_inst() #0 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 264) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @uvc_free_inst, ptr %5, align 8
  %6 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 20
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull @uvc_alloc_inst.__key) #13
  %7 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 11
  store i8 18, ptr %7, align 4
  %8 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 11, i32 1
  store i8 36, ptr %8, align 1
  %9 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 11, i32 2
  store i8 2, ptr %9, align 2
  %10 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 11, i32 3
  store i8 1, ptr %10, align 1
  %11 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 11, i32 4
  store i16 513, ptr %11, align 8
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 11, i32 5
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 11, i32 10
  store i64 0, ptr %12, align 2
  store i8 3, ptr %13, align 2
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 11, i32 11
  store i8 2, ptr %14, align 1
  %15 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 11, i32 11, i32 1
  store i8 0, ptr %15, align 4
  %16 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 11, i32 11, i32 2
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12
  store i8 12, ptr %17, align 2
  %18 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 1
  store i8 36, ptr %18, align 1
  %19 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 2
  store i8 5, ptr %19, align 8
  %20 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 3
  store i8 2, ptr %20, align 1
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 4
  store i8 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 5
  store i16 16384, ptr %22, align 1
  %23 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 6
  store i8 2, ptr %23, align 1
  %24 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 7
  store i8 1, ptr %24, align 2
  %25 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 7, i32 1
  store i8 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 8
  store i8 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 12, i32 9
  store i8 0, ptr %27, align 1
  %28 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 13
  store i8 9, ptr %28, align 2
  %29 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 13, i32 1
  store i8 36, ptr %29, align 1
  %30 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 13, i32 2
  store i8 3, ptr %30, align 4
  %31 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 13, i32 3
  store i8 3, ptr %31, align 1
  %32 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 13, i32 4
  store i16 257, ptr %32, align 2
  %33 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 13, i32 5
  store i8 0, ptr %33, align 8
  %34 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 13, i32 6
  store i8 2, ptr %34, align 1
  %35 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 13, i32 7
  store i8 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 14
  store i8 6, ptr %36, align 1
  %37 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 14, i32 1
  store i8 36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 14, i32 2
  store i8 13, ptr %38, align 1
  %39 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 14, i32 3
  store i8 1, ptr %39, align 2
  %40 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 14, i32 4
  store i8 1, ptr %40, align 1
  %41 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 14, i32 5
  store i8 4, ptr %41, align 8
  %42 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 15
  store ptr null, ptr %42, align 4
  %43 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 15, i32 1
  store ptr %7, ptr %43, align 8
  %44 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 15, i32 2
  store ptr %17, ptr %44, align 4
  %45 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 15, i32 3
  store ptr %28, ptr %45, align 8
  %46 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 15, i32 4
  store ptr null, ptr %46, align 4
  %47 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 6
  store ptr %42, ptr %47, align 8
  %48 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 16
  store ptr null, ptr %48, align 8
  %49 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 16, i32 1
  store ptr %7, ptr %49, align 4
  %50 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 16, i32 2
  store ptr %17, ptr %50, align 8
  %51 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 16, i32 3
  store ptr %28, ptr %51, align 4
  %52 = getelementptr %struct.f_uvc_opts, ptr %2, i32 0, i32 16, i32 4
  store ptr null, ptr %52, align 8
  %53 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 7
  store ptr %48, ptr %53, align 4
  %54 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 1
  store i32 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.f_uvc_opts, ptr %2, i32 0, i32 2
  store i32 1024, ptr %55, align 8
  %56 = tail call i32 @uvcg_attach_configfs(ptr noundef nonnull %2) #13
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %4
  tail call void @kfree(ptr noundef nonnull %2) #13
  %59 = inttoptr i32 %56 to ptr
  br label %60

60:                                               ; preds = %58, %4, %0
  %61 = phi ptr [ %59, %58 ], [ %2, %4 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uvc_alloc(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1584) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 4, i32 8
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull @uvc_alloc.__key) #13
  %7 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 2
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 8
  store ptr %10, ptr %13, align 4
  br label %14

14:                                               ; preds = %12, %5
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 9
  store ptr %16, ptr %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 10
  br i1 %23, label %25, label %27

25:                                               ; preds = %20
  %26 = load ptr, ptr %24, align 4
  br label %28

27:                                               ; preds = %20
  store ptr %22, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi ptr [ %26, %25 ], [ %22, %27 ]
  %30 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 6
  store ptr %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 6, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 6, i32 2
  store ptr %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 6, i32 3
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 6, i32 4
  store ptr %29, ptr %42, align 8
  %43 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 21
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  tail call void @mutex_unlock(ptr noundef %8) #13
  %46 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3
  store ptr @.str.2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 9
  store ptr @uvc_function_bind, ptr %47, align 8
  %48 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 10
  store ptr @uvc_function_unbind, ptr %48, align 4
  %49 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 14
  store ptr @uvc_function_get_alt, ptr %49, align 4
  %50 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 13
  store ptr @uvc_function_set_alt, ptr %50, align 8
  %51 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 15
  store ptr @uvc_function_disable, ptr %51, align 8
  %52 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 16
  store ptr @uvc_function_setup, ptr %52, align 4
  %53 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 11
  store ptr @uvc_free, ptr %53, align 8
  %54 = getelementptr inbounds %struct.uvc_device, ptr %3, i32 0, i32 3, i32 25
  %55 = load i8, ptr %54, align 4
  %56 = or i8 %55, 1
  store i8 %56, ptr %54, align 4
  br label %57

57:                                               ; preds = %28, %1
  %58 = phi ptr [ %46, %28 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_free_inst(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_attach_configfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_function_bind(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 -948
  %6 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_configuration, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %12, ptr noundef nonnull @__func__.uvc_function_bind) #14
  %13 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 1)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 16)
  store i32 %18, ptr %15, align 4
  %19 = getelementptr inbounds %struct.f_uvc_opts, ptr %14, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 1)
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 3072)
  store i32 %22, ptr %19, align 4
  %23 = getelementptr inbounds %struct.f_uvc_opts, ptr %14, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 15)
  store i32 %25, ptr %23, align 4
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %22, 1023
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %2
  %31 = add nuw nsw i32 %22, 1023
  %32 = and i32 %31, 7168
  store i32 %32, ptr %19, align 4
  %33 = load ptr, ptr %6, align 4
  %34 = getelementptr inbounds %struct.usb_configuration, ptr %33, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.usb_gadget, ptr %36, i32 0, i32 11
  %38 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.6, ptr noundef %38, i32 noundef %32) #14
  %39 = load i32, ptr %19, align 4
  br label %40

40:                                               ; preds = %30, %2
  %41 = phi i32 [ %39, %30 ], [ %22, %2 ]
  %42 = icmp ult i32 %41, 1025
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = icmp ult i32 %41, 2049
  br i1 %44, label %45, label %47

45:                                               ; preds = %43
  %46 = lshr i32 %41, 1
  br label %49

47:                                               ; preds = %43
  %48 = udiv i32 %41, 3
  br label %49

49:                                               ; preds = %47, %45, %40
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ], [ %41, %40 ]
  %51 = phi i32 [ 2, %45 ], [ 3, %47 ], [ 1, %40 ]
  %52 = tail call i32 @llvm.umin.i32(i32 %41, i32 1023)
  %53 = trunc i32 %52 to i16
  store i16 %53, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_fs_streaming_ep, i32 0, i32 4), align 1
  %54 = load i32, ptr %15, align 4
  %55 = trunc i32 %54 to i8
  store i8 %55, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_fs_streaming_ep, i32 0, i32 5), align 1
  %56 = add nsw i32 %51, -1
  %57 = shl nuw nsw i32 %56, 11
  %58 = or i32 %57, %50
  %59 = trunc i32 %58 to i16
  store i16 %59, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_hs_streaming_ep, i32 0, i32 4), align 1
  %60 = select i1 %42, i8 %55, i8 1
  store i8 %60, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_hs_streaming_ep, i32 0, i32 5), align 1
  %61 = trunc i32 %50 to i16
  store i16 %61, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_ss_streaming_ep, i32 0, i32 4), align 1
  store i8 %55, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_ss_streaming_ep, i32 0, i32 5), align 1
  %62 = trunc i32 %56 to i8
  store i8 %62, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @uvc_ss_streaming_comp, i32 0, i32 3), align 1
  %63 = load i32, ptr %23, align 4
  %64 = trunc i32 %63 to i8
  store i8 %64, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @uvc_ss_streaming_comp, i32 0, i32 2), align 1
  %65 = mul nuw i32 %51, %50
  %66 = add i32 %63, 1
  %67 = mul i32 %65, %66
  %68 = trunc i32 %67 to i16
  store i16 %68, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @uvc_ss_streaming_comp, i32 0, i32 4), align 1
  %69 = load ptr, ptr %4, align 4
  %70 = tail call ptr @usb_ep_autoconfig(ptr noundef %69, ptr noundef nonnull @uvc_control_ep) #13
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %49
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.usb_configuration, ptr %73, i32 0, i32 9
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.usb_gadget, ptr %76, i32 0, i32 11
  %78 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.7, ptr noundef %78) #14
  br label %206

79:                                               ; preds = %49
  %80 = getelementptr i8, ptr %1, i32 612
  store ptr %70, ptr %80, align 8
  %81 = load ptr, ptr %3, align 4
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.usb_gadget, ptr %82, i32 0, i32 6
  %84 = load i32, ptr %83, align 8
  %85 = icmp ult i32 %84, 5
  %86 = load ptr, ptr %4, align 4
  br i1 %85, label %89, label %87

87:                                               ; preds = %79
  %88 = tail call ptr @usb_ep_autoconfig_ss(ptr noundef %86, ptr noundef nonnull @uvc_ss_streaming_ep, ptr noundef nonnull @uvc_ss_streaming_comp) #13
  br label %97

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.usb_gadget, ptr %86, i32 0, i32 6
  %91 = load i32, ptr %90, align 8
  %92 = icmp ult i32 %91, 3
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = tail call ptr @usb_ep_autoconfig(ptr noundef %86, ptr noundef nonnull @uvc_hs_streaming_ep) #13
  br label %97

95:                                               ; preds = %89
  %96 = tail call ptr @usb_ep_autoconfig(ptr noundef %86, ptr noundef nonnull @uvc_fs_streaming_ep) #13
  br label %97

97:                                               ; preds = %95, %93, %87
  %98 = phi ptr [ %88, %87 ], [ %94, %93 ], [ %96, %95 ]
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load ptr, ptr %6, align 4
  %102 = getelementptr inbounds %struct.usb_configuration, ptr %101, i32 0, i32 9
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.usb_gadget, ptr %104, i32 0, i32 11
  %106 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str.8, ptr noundef %106) #14
  br label %206

107:                                              ; preds = %97
  %108 = getelementptr i8, ptr %1, i32 108
  %109 = getelementptr i8, ptr %1, i32 112
  store ptr %98, ptr %109, align 4
  %110 = getelementptr inbounds %struct.usb_ep, ptr %98, i32 0, i32 8
  %111 = load i8, ptr %110, align 1
  store i8 %111, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_fs_streaming_ep, i32 0, i32 2), align 1
  store i8 %111, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_hs_streaming_ep, i32 0, i32 2), align 1
  store i8 %111, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @uvc_ss_streaming_ep, i32 0, i32 2), align 1
  %112 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @uvc_function_strings, i32 noundef 3) #13
  %113 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = ptrtoint ptr %112 to i32
  br label %206

116:                                              ; preds = %107
  %117 = load i8, ptr %112, align 4
  store i8 %117, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @uvc_iad, i32 0, i32 7), align 1
  %118 = load i8, ptr %112, align 4
  store i8 %118, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_control_intf, i32 0, i32 8), align 1
  %119 = getelementptr %struct.usb_string, ptr %112, i32 1
  %120 = load i8, ptr %119, align 4
  store i8 %120, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_streaming_intf_alt0, i32 0, i32 8), align 1
  store i8 %120, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_streaming_intf_alt1, i32 0, i32 8), align 1
  %121 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #13
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %206, label %123

123:                                              ; preds = %116
  %124 = trunc i32 %121 to i8
  store i8 %124, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @uvc_iad, i32 0, i32 2), align 1
  store i8 %124, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_control_intf, i32 0, i32 2), align 1
  %125 = getelementptr i8, ptr %1, i32 608
  store i32 %121, ptr %125, align 4
  %126 = getelementptr inbounds %struct.f_uvc_opts, ptr %14, i32 0, i32 4
  store i32 %121, ptr %126, align 4
  %127 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #13
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %206, label %129

129:                                              ; preds = %123
  %130 = trunc i32 %127 to i8
  store i8 %130, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_streaming_intf_alt0, i32 0, i32 2), align 1
  store i8 %130, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @uvc_streaming_intf_alt1, i32 0, i32 2), align 1
  %131 = getelementptr i8, ptr %1, i32 624
  store i32 %127, ptr %131, align 4
  %132 = getelementptr inbounds %struct.f_uvc_opts, ptr %14, i32 0, i32 5
  store i32 %127, ptr %132, align 4
  %133 = tail call fastcc ptr @uvc_copy_descriptors(ptr noundef %5, i32 noundef 2)
  %134 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 2
  store ptr %133, ptr %134, align 4
  %135 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = ptrtoint ptr %133 to i32
  store ptr null, ptr %134, align 4
  br label %206

138:                                              ; preds = %129
  %139 = load ptr, ptr %4, align 4
  %140 = getelementptr inbounds %struct.usb_gadget, ptr %139, i32 0, i32 6
  %141 = load i32, ptr %140, align 8
  %142 = icmp ult i32 %141, 3
  br i1 %142, label %149, label %143

143:                                              ; preds = %138
  %144 = tail call fastcc ptr @uvc_copy_descriptors(ptr noundef %5, i32 noundef 3)
  %145 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 3
  store ptr %144, ptr %145, align 4
  %146 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = ptrtoint ptr %144 to i32
  store ptr null, ptr %145, align 4
  br label %206

149:                                              ; preds = %143, %138
  %150 = load ptr, ptr %3, align 4
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.usb_gadget, ptr %151, i32 0, i32 6
  %153 = load i32, ptr %152, align 8
  %154 = icmp ult i32 %153, 5
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = tail call fastcc ptr @uvc_copy_descriptors(ptr noundef %5, i32 noundef 5)
  %157 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 4
  store ptr %156, ptr %157, align 4
  %158 = icmp ugt ptr %156, inttoptr (i32 -4096 to ptr)
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = ptrtoint ptr %156 to i32
  store ptr null, ptr %157, align 4
  br label %206

161:                                              ; preds = %155, %149
  %162 = load ptr, ptr %4, align 4
  %163 = getelementptr inbounds %struct.usb_gadget, ptr %162, i32 0, i32 3
  %164 = load ptr, ptr %163, align 8
  %165 = tail call ptr @usb_ep_alloc_request(ptr noundef %164, i32 noundef 3264) #13
  %166 = getelementptr i8, ptr %1, i32 616
  store ptr %165, ptr %166, align 4
  %167 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %168 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %167, i32 noundef 3264, i32 noundef 64) #15
  %169 = getelementptr i8, ptr %1, i32 620
  store ptr %168, ptr %169, align 8
  %170 = load ptr, ptr %166, align 4
  %171 = icmp eq ptr %170, null
  %172 = icmp eq ptr %168, null
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %206, label %174

174:                                              ; preds = %161
  store ptr %168, ptr %170, align 4
  %175 = load ptr, ptr %166, align 4
  %176 = getelementptr inbounds %struct.usb_request, ptr %175, i32 0, i32 7
  store ptr @uvc_function_ep0_complete, ptr %176, align 4
  %177 = load ptr, ptr %166, align 4
  %178 = getelementptr inbounds %struct.usb_request, ptr %177, i32 0, i32 8
  store ptr %5, ptr %178, align 4
  %179 = load ptr, ptr %4, align 4
  %180 = getelementptr inbounds %struct.usb_gadget, ptr %179, i32 0, i32 11
  %181 = getelementptr i8, ptr %1, i32 -92
  %182 = tail call i32 @v4l2_device_register(ptr noundef %180, ptr noundef %181) #13
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %174
  %185 = load ptr, ptr %6, align 4
  %186 = getelementptr inbounds %struct.usb_configuration, ptr %185, i32 0, i32 9
  %187 = load ptr, ptr %186, align 4
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.usb_gadget, ptr %188, i32 0, i32 11
  %190 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.9, ptr noundef %190) #14
  br label %206

191:                                              ; preds = %174
  %192 = tail call i32 @uvcg_video_init(ptr noundef %108, ptr noundef %5) #13
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %191
  %195 = tail call fastcc i32 @uvc_register_video(ptr noundef %5)
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %194
  %198 = load ptr, ptr %6, align 4
  %199 = getelementptr inbounds %struct.usb_configuration, ptr %198, i32 0, i32 9
  %200 = load ptr, ptr %199, align 4
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.usb_gadget, ptr %201, i32 0, i32 11
  %203 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %202, ptr noundef nonnull @.str.10, ptr noundef %203) #14
  br label %204

204:                                              ; preds = %197, %191
  %205 = phi i32 [ %192, %191 ], [ %195, %197 ]
  tail call void @v4l2_device_unregister(ptr noundef %181) #13
  br label %206

206:                                              ; preds = %204, %184, %161, %159, %147, %136, %123, %116, %114, %100, %72
  %207 = phi i32 [ %115, %114 ], [ %121, %116 ], [ %127, %123 ], [ %137, %136 ], [ %148, %147 ], [ %160, %159 ], [ %127, %184 ], [ %205, %204 ], [ -22, %100 ], [ -22, %72 ], [ -12, %161 ]
  %208 = getelementptr i8, ptr %1, i32 616
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %206
  %212 = load ptr, ptr %4, align 4
  %213 = getelementptr inbounds %struct.usb_gadget, ptr %212, i32 0, i32 3
  %214 = load ptr, ptr %213, align 8
  tail call void @usb_ep_free_request(ptr noundef %214, ptr noundef nonnull %209) #13
  br label %215

215:                                              ; preds = %211, %206
  %216 = getelementptr i8, ptr %1, i32 620
  %217 = load ptr, ptr %216, align 8
  tail call void @kfree(ptr noundef %217) #13
  tail call void @usb_free_all_descriptors(ptr noundef %1) #13
  br label %218

218:                                              ; preds = %215, %194
  %219 = phi i32 [ %207, %215 ], [ 0, %194 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_function_unbind(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %1, i32 -948
  %6 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_configuration, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_gadget, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %12, ptr noundef nonnull @__func__.uvc_function_unbind) #14
  %13 = getelementptr i8, ptr %1, i32 -708
  tail call void @device_remove_file(ptr noundef %13, ptr noundef nonnull @dev_attr_function_name) #13
  tail call void @video_unregister_device(ptr noundef %5) #13
  %14 = getelementptr i8, ptr %1, i32 -92
  tail call void @v4l2_device_unregister(ptr noundef %14) #13
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.usb_gadget, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %1, i32 616
  %19 = load ptr, ptr %18, align 4
  tail call void @usb_ep_free_request(ptr noundef %17, ptr noundef %19) #13
  %20 = getelementptr i8, ptr %1, i32 620
  %21 = load ptr, ptr %20, align 8
  tail call void @kfree(ptr noundef %21) #13
  tail call void @usb_free_all_descriptors(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_function_get_alt(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_configuration, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef %9, ptr noundef nonnull @__func__.uvc_function_get_alt, i32 noundef %1) #14
  %10 = getelementptr i8, ptr %0, i32 608
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %0, i32 624
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %0, i32 112
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_ep, ptr %19, i32 0, i32 6
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = zext i8 %21 to i32
  br label %23

23:                                               ; preds = %17, %13, %2
  %24 = phi i32 [ %22, %17 ], [ 0, %2 ], [ -22, %13 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_function_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.v4l2_event, align 8
  %5 = getelementptr i8, ptr %0, i32 -948
  %6 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_configuration, ptr %7, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i32 136, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 1
  %11 = load ptr, ptr %8, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_gadget, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.16, ptr noundef %14, ptr noundef nonnull @__func__.uvc_function_set_alt, i32 noundef %1, i32 noundef %2) #14
  %15 = getelementptr i8, ptr %0, i32 608
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %18, label %50

18:                                               ; preds = %3
  %19 = icmp eq i32 %2, 0
  br i1 %19, label %20, label %93

20:                                               ; preds = %18
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.usb_configuration, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.usb_gadget, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.17, ptr noundef %26) #14
  %27 = getelementptr i8, ptr %0, i32 612
  %28 = load ptr, ptr %27, align 8
  %29 = tail call i32 @usb_ep_disable(ptr noundef %28) #13
  %30 = load ptr, ptr %27, align 8
  %31 = getelementptr inbounds %struct.usb_ep, ptr %30, i32 0, i32 9
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load ptr, ptr %9, align 4
  %36 = tail call i32 @config_ep_by_speed(ptr noundef %35, ptr noundef %0, ptr noundef %30) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %93

38:                                               ; preds = %34
  %39 = load ptr, ptr %27, align 8
  br label %40

40:                                               ; preds = %38, %20
  %41 = phi ptr [ %39, %38 ], [ %30, %20 ]
  %42 = tail call i32 @usb_ep_enable(ptr noundef %41) #13
  %43 = getelementptr i8, ptr %0, i32 -4
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %40
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i32 136, i1 false)
  store i32 134217728, ptr %4, align 8
  %47 = load ptr, ptr %9, align 4
  %48 = getelementptr inbounds %struct.usb_gadget, ptr %47, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %10, align 8
  call void @v4l2_event_queue(ptr noundef %5, ptr noundef nonnull %4) #13
  store i32 1, ptr %43, align 8
  br label %93

50:                                               ; preds = %3
  %51 = getelementptr i8, ptr %0, i32 624
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, %1
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  switch i32 %2, label %93 [
    i32 0, label %55
    i32 1, label %66
  ]

55:                                               ; preds = %54
  %56 = getelementptr i8, ptr %0, i32 -4
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %93

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %0, i32 112
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @usb_ep_disable(ptr noundef nonnull %61) #13
  br label %65

65:                                               ; preds = %63, %59
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i32 136, i1 false)
  store i32 134217731, ptr %4, align 8
  call void @v4l2_event_queue(ptr noundef %5, ptr noundef nonnull %4) #13
  store i32 1, ptr %56, align 8
  br label %93

66:                                               ; preds = %54
  %67 = getelementptr i8, ptr %0, i32 -4
  %68 = load i32, ptr %67, align 8
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %0, i32 112
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %93, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr inbounds %struct.usb_configuration, ptr %75, i32 0, i32 9
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.usb_gadget, ptr %78, i32 0, i32 11
  %80 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %79, ptr noundef nonnull @.str.18, ptr noundef %80) #14
  %81 = load ptr, ptr %71, align 4
  %82 = tail call i32 @usb_ep_disable(ptr noundef %81) #13
  %83 = load ptr, ptr %6, align 4
  %84 = getelementptr inbounds %struct.usb_configuration, ptr %83, i32 0, i32 9
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %85, align 4
  %87 = load ptr, ptr %71, align 4
  %88 = tail call i32 @config_ep_by_speed(ptr noundef %86, ptr noundef %0, ptr noundef %87) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load ptr, ptr %71, align 4
  %92 = tail call i32 @usb_ep_enable(ptr noundef %91) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i32 136, i1 false)
  store i32 134217730, ptr %4, align 8
  call void @v4l2_event_queue(ptr noundef %5, ptr noundef nonnull %4) #13
  br label %93

93:                                               ; preds = %90, %74, %70, %66, %65, %55, %54, %50, %46, %40, %34, %18
  %94 = phi i32 [ 32767, %90 ], [ 0, %65 ], [ -22, %18 ], [ -22, %34 ], [ 0, %46 ], [ 0, %40 ], [ -22, %50 ], [ 0, %55 ], [ 0, %66 ], [ -22, %70 ], [ %88, %74 ], [ -22, %54 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #13
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_function_disable(ptr noundef %0) #0 {
  %2 = alloca %struct.v4l2_event, align 8
  %3 = getelementptr i8, ptr %0, i32 -948
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %2) #13
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %10, ptr noundef nonnull @__func__.uvc_function_disable) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %2, i8 0, i32 136, i1 false)
  store i32 134217729, ptr %2, align 8
  call void @v4l2_event_queue(ptr noundef %3, ptr noundef nonnull %2) #13
  %11 = getelementptr i8, ptr %0, i32 -4
  store i32 0, ptr %11, align 8
  %12 = getelementptr i8, ptr %0, i32 112
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @usb_ep_disable(ptr noundef %13) #13
  %15 = getelementptr i8, ptr %0, i32 612
  %16 = load ptr, ptr %15, align 8
  %17 = call i32 @usb_ep_disable(ptr noundef %16) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvc_function_setup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.v4l2_event, align 8
  %4 = getelementptr i8, ptr %0, i32 -948
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #13
  %5 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1
  %6 = load i8, ptr %1, align 1
  %7 = and i8 %6, 96
  %8 = icmp eq i8 %7, 32
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.usb_configuration, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_gadget, ptr %14, i32 0, i32 11
  %16 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.19, ptr noundef %16) #14
  br label %32

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %19 = load i16, ptr %18, align 1
  %20 = icmp ugt i16 %19, 64
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %0, i32 632
  %23 = xor i8 %6, -1
  %24 = lshr i8 %23, 7
  %25 = load i8, ptr %22, align 4
  %26 = and i8 %25, -2
  %27 = or i8 %26, %24
  store i8 %27, ptr %22, align 4
  %28 = load i16, ptr %18, align 1
  %29 = zext i16 %28 to i32
  %30 = getelementptr i8, ptr %0, i32 628
  store i32 %29, ptr %30, align 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i32 136, i1 false)
  store i32 134217732, ptr %3, align 8
  %31 = load i64, ptr %1, align 1
  store i64 %31, ptr %5, align 8
  call void @v4l2_event_queue(ptr noundef %4, ptr noundef nonnull %3) #13
  br label %32

32:                                               ; preds = %21, %17, %9
  %33 = phi i32 [ -22, %9 ], [ 0, %21 ], [ -22, %17 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #13
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -948
  %3 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.f_uvc_opts, ptr %4, i32 0, i32 21
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @kfree(ptr noundef %2) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig_ss(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @uvc_copy_descriptors(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %9 [
    i32 5, label %3
    i32 3, label %6
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 6, i32 1
  %5 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 6, i32 4
  br label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 6, i32 3
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %6, %3
  %13 = phi ptr [ %10, %9 ], [ %7, %6 ], [ %4, %3 ]
  %14 = phi ptr [ %11, %9 ], [ %8, %6 ], [ %5, %3 ]
  %15 = phi ptr [ @uvc_fs_streaming, %9 ], [ @uvc_hs_streaming, %6 ], [ @uvc_ss_streaming, %3 ]
  %16 = load ptr, ptr %14, align 4
  %17 = load ptr, ptr %13, align 4
  %18 = icmp ne ptr %17, null
  %19 = icmp ne ptr %16, null
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %201

21:                                               ; preds = %12
  %22 = load i8, ptr @uvc_iad, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, ptr @uvc_control_intf, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, ptr @uvc_control_ep, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, ptr @uvc_streaming_intf_alt0, align 1
  %29 = zext i8 %28 to i32
  %30 = add nuw nsw i32 %23, 5
  %31 = add nuw nsw i32 %30, %25
  %32 = add nuw nsw i32 %31, %27
  %33 = add nuw nsw i32 %32, %29
  %34 = icmp eq i32 %1, 5
  %35 = add nuw nsw i32 %33, 6
  %36 = select i1 %34, i32 6, i32 5
  %37 = select i1 %34, i32 %35, i32 %33
  %38 = load ptr, ptr %17, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %48

40:                                               ; preds = %48
  %41 = trunc i32 %56 to i16
  br label %42

42:                                               ; preds = %40, %21
  %43 = phi i16 [ 0, %21 ], [ %41, %40 ]
  %44 = phi i32 [ %36, %21 ], [ %58, %40 ]
  %45 = phi i32 [ %37, %21 ], [ %57, %40 ]
  %46 = load ptr, ptr %16, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %64, label %70

48:                                               ; preds = %48, %21
  %49 = phi ptr [ %60, %48 ], [ %38, %21 ]
  %50 = phi i32 [ %57, %48 ], [ %37, %21 ]
  %51 = phi i32 [ %58, %48 ], [ %36, %21 ]
  %52 = phi i32 [ %56, %48 ], [ 0, %21 ]
  %53 = phi ptr [ %59, %48 ], [ %17, %21 ]
  %54 = load i8, ptr %49, align 1
  %55 = zext i8 %54 to i32
  %56 = add i32 %52, %55
  %57 = add i32 %50, %55
  %58 = add i32 %51, 1
  %59 = getelementptr ptr, ptr %53, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %40, label %48

62:                                               ; preds = %70
  %63 = trunc i32 %78 to i16
  br label %64

64:                                               ; preds = %62, %42
  %65 = phi i16 [ 0, %42 ], [ %63, %62 ]
  %66 = phi i32 [ %44, %42 ], [ %80, %62 ]
  %67 = phi i32 [ %45, %42 ], [ %79, %62 ]
  %68 = load ptr, ptr %15, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %96, label %84

70:                                               ; preds = %70, %42
  %71 = phi ptr [ %82, %70 ], [ %46, %42 ]
  %72 = phi i32 [ %79, %70 ], [ %45, %42 ]
  %73 = phi i32 [ %80, %70 ], [ %44, %42 ]
  %74 = phi i32 [ %78, %70 ], [ 0, %42 ]
  %75 = phi ptr [ %81, %70 ], [ %16, %42 ]
  %76 = load i8, ptr %71, align 1
  %77 = zext i8 %76 to i32
  %78 = add i32 %74, %77
  %79 = add i32 %72, %77
  %80 = add i32 %73, 1
  %81 = getelementptr ptr, ptr %75, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %62, label %70

84:                                               ; preds = %84, %64
  %85 = phi ptr [ %94, %84 ], [ %68, %64 ]
  %86 = phi i32 [ %91, %84 ], [ %67, %64 ]
  %87 = phi i32 [ %92, %84 ], [ %66, %64 ]
  %88 = phi ptr [ %93, %84 ], [ %15, %64 ]
  %89 = load i8, ptr %85, align 1
  %90 = zext i8 %89 to i32
  %91 = add i32 %86, %90
  %92 = add i32 %87, 1
  %93 = getelementptr ptr, ptr %88, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %84

96:                                               ; preds = %84, %64
  %97 = phi i32 [ %66, %64 ], [ %92, %84 ]
  %98 = phi i32 [ %67, %64 ], [ %91, %84 ]
  %99 = shl i32 %97, 2
  %100 = add i32 %99, 4
  %101 = add i32 %100, %98
  %102 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %101, i32 noundef 3264) #16
  %103 = icmp eq ptr %102, null
  br i1 %103, label %201, label %104

104:                                              ; preds = %96
  %105 = load i8, ptr @uvc_iad, align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr i8, ptr %102, i32 %100
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %107, ptr nonnull align 1 @uvc_iad, i32 %106, i1 false)
  %108 = getelementptr ptr, ptr %102, i32 1
  store ptr %107, ptr %102, align 64
  %109 = getelementptr i8, ptr %107, i32 %106
  %110 = load i8, ptr @uvc_control_intf, align 1
  %111 = zext i8 %110 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %109, ptr nonnull align 1 @uvc_control_intf, i32 %111, i1 false)
  %112 = getelementptr ptr, ptr %102, i32 2
  store ptr %109, ptr %108, align 4
  %113 = getelementptr i8, ptr %109, i32 %111
  %114 = load ptr, ptr %17, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %131, label %116

116:                                              ; preds = %116, %104
  %117 = phi ptr [ %129, %116 ], [ %114, %104 ]
  %118 = phi ptr [ %128, %116 ], [ %17, %104 ]
  %119 = phi ptr [ %127, %116 ], [ %113, %104 ]
  %120 = phi ptr [ %123, %116 ], [ %112, %104 ]
  %121 = load i8, ptr %117, align 1
  %122 = zext i8 %121 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %119, ptr nonnull align 1 %117, i32 %122, i1 false)
  %123 = getelementptr ptr, ptr %120, i32 1
  store ptr %119, ptr %120, align 4
  %124 = load ptr, ptr %118, align 4
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = getelementptr i8, ptr %119, i32 %126
  %128 = getelementptr ptr, ptr %118, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %116

131:                                              ; preds = %116, %104
  %132 = phi ptr [ %112, %104 ], [ %123, %116 ]
  %133 = phi ptr [ %113, %104 ], [ %127, %116 ]
  %134 = getelementptr inbounds %struct.uvc_header_descriptor, ptr %113, i32 0, i32 4
  store i16 %43, ptr %134, align 1
  %135 = getelementptr inbounds %struct.uvc_header_descriptor, ptr %113, i32 0, i32 6
  store i8 1, ptr %135, align 1
  %136 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 11
  %137 = load i32, ptr %136, align 4
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds %struct.uvc_header_descriptor, ptr %113, i32 0, i32 7
  store i8 %138, ptr %139, align 1
  %140 = load i8, ptr @uvc_control_ep, align 1
  %141 = zext i8 %140 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %133, ptr nonnull align 1 @uvc_control_ep, i32 %141, i1 false)
  %142 = getelementptr ptr, ptr %132, i32 1
  store ptr %133, ptr %132, align 4
  %143 = getelementptr i8, ptr %133, i32 %141
  br i1 %34, label %144, label %147

144:                                              ; preds = %131
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %143, ptr noundef nonnull align 1 dereferenceable(6) @uvc_ss_control_comp, i32 6, i1 false)
  %145 = getelementptr ptr, ptr %132, i32 2
  store ptr %143, ptr %142, align 4
  %146 = getelementptr i8, ptr %143, i32 6
  br label %147

147:                                              ; preds = %144, %131
  %148 = phi ptr [ %145, %144 ], [ %142, %131 ]
  %149 = phi ptr [ %146, %144 ], [ %143, %131 ]
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %149, ptr noundef nonnull align 1 dereferenceable(5) @uvc_control_cs_ep, i32 5, i1 false)
  %150 = getelementptr ptr, ptr %148, i32 1
  store ptr %149, ptr %148, align 4
  %151 = getelementptr i8, ptr %149, i32 5
  %152 = load i8, ptr @uvc_streaming_intf_alt0, align 1
  %153 = zext i8 %152 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %151, ptr nonnull align 1 @uvc_streaming_intf_alt0, i32 %153, i1 false)
  %154 = getelementptr ptr, ptr %148, i32 2
  store ptr %151, ptr %150, align 4
  %155 = load i8, ptr @uvc_streaming_intf_alt0, align 1
  %156 = zext i8 %155 to i32
  %157 = getelementptr i8, ptr %151, i32 %156
  %158 = load ptr, ptr %16, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %175, label %160

160:                                              ; preds = %160, %147
  %161 = phi ptr [ %173, %160 ], [ %158, %147 ]
  %162 = phi ptr [ %172, %160 ], [ %16, %147 ]
  %163 = phi ptr [ %171, %160 ], [ %157, %147 ]
  %164 = phi ptr [ %167, %160 ], [ %154, %147 ]
  %165 = load i8, ptr %161, align 1
  %166 = zext i8 %165 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %163, ptr nonnull align 1 %161, i32 %166, i1 false)
  %167 = getelementptr ptr, ptr %164, i32 1
  store ptr %163, ptr %164, align 4
  %168 = load ptr, ptr %162, align 4
  %169 = load i8, ptr %168, align 1
  %170 = zext i8 %169 to i32
  %171 = getelementptr i8, ptr %163, i32 %170
  %172 = getelementptr ptr, ptr %162, i32 1
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %160

175:                                              ; preds = %160, %147
  %176 = phi ptr [ %154, %147 ], [ %167, %160 ]
  %177 = phi ptr [ %157, %147 ], [ %171, %160 ]
  %178 = getelementptr inbounds %struct.uvc_input_header_descriptor, ptr %157, i32 0, i32 4
  store i16 %65, ptr %178, align 1
  %179 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 4, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.usb_ep, ptr %180, i32 0, i32 8
  %182 = load i8, ptr %181, align 1
  %183 = getelementptr inbounds %struct.uvc_input_header_descriptor, ptr %157, i32 0, i32 5
  store i8 %182, ptr %183, align 1
  br i1 %69, label %199, label %184

184:                                              ; preds = %184, %175
  %185 = phi ptr [ %197, %184 ], [ %68, %175 ]
  %186 = phi ptr [ %196, %184 ], [ %15, %175 ]
  %187 = phi ptr [ %195, %184 ], [ %177, %175 ]
  %188 = phi ptr [ %191, %184 ], [ %176, %175 ]
  %189 = load i8, ptr %185, align 1
  %190 = zext i8 %189 to i32
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %187, ptr nonnull align 1 %185, i32 %190, i1 false)
  %191 = getelementptr ptr, ptr %188, i32 1
  store ptr %187, ptr %188, align 4
  %192 = load ptr, ptr %186, align 4
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i32
  %195 = getelementptr i8, ptr %187, i32 %194
  %196 = getelementptr ptr, ptr %186, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %184

199:                                              ; preds = %184, %175
  %200 = phi ptr [ %176, %175 ], [ %191, %184 ]
  store ptr null, ptr %200, align 4
  br label %201

201:                                              ; preds = %199, %96, %12
  %202 = phi ptr [ %102, %199 ], [ null, %96 ], [ inttoptr (i32 -19 to ptr), %12 ]
  ret ptr %202
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_function_ep0_complete(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.v4l2_event, align 8
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 13
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1
  %12 = and i8 %7, -2
  store i8 %12, ptr %6, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i32 136, i1 false)
  store i32 134217733, ptr %3, align 8
  %13 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %11, align 8
  %15 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1, i32 0, i32 1
  %16 = load ptr, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 1 %16, i32 %14, i1 false)
  call void @v4l2_event_queue(ptr noundef %5, ptr noundef nonnull %3) #13
  br label %17

17:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uvcg_video_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvc_register_video(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 3, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.usb_configuration, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(476) %0, i8 0, i32 476, i1 false)
  %6 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 7
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 11
  store ptr %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 3
  store ptr @uvc_v4l2_fops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 24
  store ptr @uvc_v4l2_ioctl_ops, ptr %11, align 4
  %12 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 23
  store ptr @video_device_release_empty, ptr %12, align 8
  %13 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 14
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.uvc_device, ptr %0, i32 0, i32 4, i32 8
  %15 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 26
  store ptr %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 4
  store i32 67108866, ptr %16, align 8
  %17 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 12
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr inbounds %struct.usb_gadget, ptr %18, i32 0, i32 10
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @strlcpy(ptr noundef %17, ptr noundef %20, i32 noundef 32) #13
  %22 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 5, i32 8
  store ptr %0, ptr %22, align 8
  %23 = load ptr, ptr %10, align 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @__video_register_device(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %24) #13
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 5
  %29 = tail call i32 @device_create_file(ptr noundef %28, ptr noundef nonnull @dev_attr_function_name) #13
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @video_unregister_device(ptr noundef %0) #13
  br label %32

32:                                               ; preds = %31, %27, %1
  %33 = phi i32 [ %29, %31 ], [ %25, %1 ], [ 0, %27 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @function_name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.uvc_device, ptr %5, i32 0, i32 3, i32 24
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

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
