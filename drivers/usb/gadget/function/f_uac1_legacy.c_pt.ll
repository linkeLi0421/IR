; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_uac1_legacy.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_uac1_legacy.c"
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
%struct.uac_input_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i8, i8 }
%struct.uac_feature_unit_descriptor_0 = type <{ i8, i8, i8, i8, i8, i8, [1 x i16], i8 }>
%struct.uac1_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.uac_format_type_i_discrete_descriptor_1 = type { i8, i8, i8, i8, i8, i8, i8, i8, [1 x [3 x i8]] }
%struct.uac1_ac_header_descriptor_1 = type <{ i8, i8, i8, i16, i16, i8, [1 x i8] }>
%struct.uac1_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.uac_iso_endpoint_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.usb_audio_control_selector = type { %struct.list_head, %struct.list_head, i8, ptr, i8, ptr }
%struct.usb_audio_control = type { %struct.list_head, ptr, i8, [5 x i32], ptr, ptr }
%struct.f_uac1_legacy_opts = type { %struct.usb_function_instance, i32, i32, i32, ptr, ptr, ptr, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_audio = type { %struct.gaudio, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, i8, ptr }
%struct.gaudio = type { %struct.usb_function, ptr, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev, %struct.gaudio_snd_dev }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.gaudio_snd_dev = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.f_audio_buf = type { ptr, i32, %struct.list_head }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }

@__UNIQUE_ID_alias224 = internal constant [26 x i8] c"alias=usbfunc:uac1_legacy\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [16 x i8] c"author=Bryan Wu\00", section ".modinfo", align 1
@uac1_legacyusb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @f_audio_alloc_inst, ptr @f_audio_alloc }, align 4
@.str = private unnamed_addr constant [12 x i8] c"uac1_legacy\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@f_audio_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@f_uac1_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @f_uac1_item_ops, ptr null, ptr @f_uac1_attrs, ptr null }, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"/dev/snd/pcmC0D0p\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"/dev/snd/pcmC0D0c\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"/dev/snd/controlC0\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@f_uac1_item_ops = internal global %struct.configfs_item_operations { ptr @f_uac1_attr_release, ptr null, ptr null }, align 4
@f_uac1_attrs = internal global [7 x ptr] [ptr @f_uac1_opts_attr_req_buf_size, ptr @f_uac1_opts_attr_req_count, ptr @f_uac1_opts_attr_audio_buf_size, ptr @f_uac1_opts_attr_fn_play, ptr @f_uac1_opts_attr_fn_cap, ptr @f_uac1_opts_attr_fn_cntl, ptr null], align 4
@f_uac1_opts_attr_req_buf_size = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @f_uac1_opts_req_buf_size_show, ptr @f_uac1_opts_req_buf_size_store }, align 4
@f_uac1_opts_attr_req_count = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @f_uac1_opts_req_count_show, ptr @f_uac1_opts_req_count_store }, align 4
@f_uac1_opts_attr_audio_buf_size = internal global %struct.configfs_attribute { ptr @.str.9, ptr @__this_module, i16 420, ptr @f_uac1_opts_audio_buf_size_show, ptr @f_uac1_opts_audio_buf_size_store }, align 4
@f_uac1_opts_attr_fn_play = internal global %struct.configfs_attribute { ptr @.str.10, ptr @__this_module, i16 420, ptr @f_uac1_opts_fn_play_show, ptr @f_uac1_opts_fn_play_store }, align 4
@f_uac1_opts_attr_fn_cap = internal global %struct.configfs_attribute { ptr @.str.12, ptr @__this_module, i16 420, ptr @f_uac1_opts_fn_cap_show, ptr @f_uac1_opts_fn_cap_store }, align 4
@f_uac1_opts_attr_fn_cntl = internal global %struct.configfs_attribute { ptr @.str.13, ptr @__this_module, i16 420, ptr @f_uac1_opts_fn_cntl_show, ptr @f_uac1_opts_fn_cntl_store }, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"req_buf_size\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"req_count\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"audio_buf_size\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"fn_play\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"fn_cap\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"fn_cntl\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"g_audio\00", align 1
@uac1_strings = internal global [2 x ptr] [ptr @str_uac1, ptr null], align 4
@ac_interface_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 1
@input_terminal_desc = internal global %struct.uac_input_terminal_descriptor { i8 12, i8 36, i8 2, i8 1, i16 257, i8 0, i8 0, i16 3, i8 0, i8 0 }, align 1
@feature_unit_desc = internal global %struct.uac_feature_unit_descriptor_0 <{ i8 9, i8 36, i8 6, i8 2, i8 1, i8 2, [1 x i16] [i16 3], i8 0 }>, align 1
@output_terminal_desc = internal global %struct.uac1_output_terminal_descriptor <{ i8 9, i8 36, i8 3, i8 3, i16 769, i8 2, i8 2, i8 0 }>, align 1
@as_interface_alt_0_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 0, i8 0 }, align 1
@as_interface_alt_1_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 0, i8 0 }, align 1
@as_out_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 0, i8 9, i16 200, i8 4, i8 0, i8 0 }>, align 1
@f_audio_desc = internal global [12 x ptr] [ptr @ac_interface_desc, ptr @ac_header_desc, ptr @input_terminal_desc, ptr @output_terminal_desc, ptr @feature_unit_desc, ptr @as_interface_alt_0_desc, ptr @as_interface_alt_1_desc, ptr @as_header_desc, ptr @as_type_i_desc, ptr @as_out_ep_desc, ptr @as_iso_out_desc, ptr null], align 4
@str_uac1 = internal global %struct.usb_gadget_strings { i16 1033, ptr @strings_uac1 }, align 4
@strings_uac1 = internal global [8 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.15 }, %struct.usb_string { i8 0, ptr @.str.16 }, %struct.usb_string { i8 0, ptr @.str.17 }, %struct.usb_string { i8 0, ptr @.str.18 }, %struct.usb_string { i8 0, ptr @.str.19 }, %struct.usb_string { i8 0, ptr @.str.20 }, %struct.usb_string { i8 0, ptr @.str.20 }, %struct.usb_string zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"AC Interface\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Input terminal\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Channels\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Volume control & mute\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Output terminal\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"AS Interface\00", align 1
@as_type_i_desc = internal global %struct.uac_format_type_i_discrete_descriptor_1 { i8 11, i8 36, i8 2, i8 1, i8 0, i8 2, i8 16, i8 1, [1 x [3 x i8]] zeroinitializer }, align 1
@ac_header_desc = internal global %struct.uac1_ac_header_descriptor_1 <{ i8 9, i8 36, i8 1, i16 256, i16 39, i8 1, [1 x i8] c"\01" }>, align 1
@as_header_desc = internal global %struct.uac1_as_header_descriptor <{ i8 7, i8 36, i8 1, i8 1, i8 1, i16 1 }>, align 1
@as_iso_out_desc = internal global %struct.uac_iso_endpoint_descriptor <{ i8 7, i8 37, i8 1, i8 1, i8 1, i16 1 }>, align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%s:%d Error!\0A\00", align 1
@__func__.f_audio_set_alt = private unnamed_addr constant [16 x i8] c"f_audio_set_alt\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"%s queue req: %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"%s:%d Invalid Interface %d!\0A\00", align 1
@__func__.f_audio_get_alt = private unnamed_addr constant [16 x i8] c"f_audio_get_alt\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"audio response on err %d\0A\00", align 1
@feature_unit = internal global %struct.usb_audio_control_selector { %struct.list_head { ptr @feature_unit, ptr @feature_unit }, %struct.list_head zeroinitializer, i8 2, ptr @.str.26, i8 6, ptr @feature_unit_desc }, align 4
@mute_control = internal global %struct.usb_audio_control { %struct.list_head { ptr @mute_control, ptr @mute_control }, ptr @.str.27, i8 1, [5 x i32] zeroinitializer, ptr @generic_set_cmd, ptr @generic_get_cmd }, align 4
@volume_control = internal global %struct.usb_audio_control { %struct.list_head { ptr @volume_control, ptr @volume_control }, ptr @.str.28, i8 2, [5 x i32] zeroinitializer, ptr @generic_set_cmd, ptr @generic_get_cmd }, align 4
@.str.26 = private unnamed_addr constant [22 x i8] c"Mute & Volume Control\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"Mute Control\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"Volume Control\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias224, ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_license225], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @uac1_legacyusb_func) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @uac1_legacyusb_func) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @f_audio_alloc_inst() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 152) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %2, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @f_audio_alloc_inst.__key) #13
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @f_audio_free_inst, ptr %6, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @f_uac1_func_type) #13
  %7 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %2, i32 0, i32 1
  store i32 200, ptr %7, align 4
  %8 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %2, i32 0, i32 2
  store i32 256, ptr %8, align 8
  %9 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %2, i32 0, i32 3
  store i32 48000, ptr %9, align 4
  %10 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %2, i32 0, i32 4
  store ptr @.str.3, ptr %10, align 8
  %11 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %2, i32 0, i32 5
  store ptr @.str.4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %2, i32 0, i32 6
  store ptr @.str.5, ptr %12, align 8
  br label %13

13:                                               ; preds = %4, %0
  %14 = phi ptr [ %2, %4 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @f_audio_alloc(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 252) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  store ptr @.str.14, ptr %3, align 8
  %6 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %6) #13
  %10 = getelementptr inbounds %struct.f_audio, ptr %3, i32 0, i32 9
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.f_audio, ptr %3, i32 0, i32 9, i32 1
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.f_audio, ptr %3, i32 0, i32 6
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @f_audio_bind, ptr %13, align 4
  %14 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @f_audio_unbind, ptr %14, align 8
  %15 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @f_audio_set_alt, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 14
  store ptr @f_audio_get_alt, ptr %16, align 8
  %17 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 16
  store ptr @f_audio_setup, ptr %17, align 8
  %18 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @f_audio_disable, ptr %18, align 4
  %19 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @f_audio_free, ptr %19, align 4
  %20 = getelementptr inbounds %struct.f_audio, ptr %3, i32 0, i32 10
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.f_audio, ptr %3, i32 0, i32 10, i32 1
  store ptr @feature_unit, ptr %21, align 8
  store ptr %20, ptr @feature_unit, align 4
  store ptr %20, ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 0, i32 1), align 4
  store volatile ptr @feature_unit, ptr %20, align 4
  store volatile ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), align 4
  store ptr @mute_control, ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1, i32 1), align 4
  store ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr @mute_control, align 4
  store volatile ptr @mute_control, ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), align 4
  store ptr @volume_control, ptr getelementptr inbounds (%struct.usb_audio_control, ptr @mute_control, i32 0, i32 0, i32 1), align 4
  store ptr @mute_control, ptr @volume_control, align 4
  store ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 0, i32 1), align 4
  store volatile ptr @volume_control, ptr getelementptr inbounds (%struct.usb_audio_control_selector, ptr @feature_unit, i32 0, i32 1), align 4
  store i32 65472, ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 3, i32 1), align 4
  store i32 58272, ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 3, i32 2), align 4
  store i32 65520, ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 3, i32 3), align 4
  store i32 48, ptr getelementptr inbounds (%struct.usb_audio_control, ptr @volume_control, i32 0, i32 3, i32 4), align 4
  %22 = getelementptr inbounds %struct.f_audio, ptr %3, i32 0, i32 8
  store i32 -32, ptr %22, align 4
  %23 = getelementptr inbounds %struct.f_audio, ptr %3, i32 0, i32 8, i32 1
  store volatile ptr %23, ptr %23, align 8
  %24 = getelementptr inbounds %struct.f_audio, ptr %3, i32 0, i32 8, i32 1, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.f_audio, ptr %3, i32 0, i32 8, i32 2
  store ptr @f_audio_playback_work, ptr %25, align 8
  br label %26

26:                                               ; preds = %5, %1
  %27 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_audio_free_inst(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #13
  %9 = load i8, ptr %2, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i8 [ %9, %6 ], [ %3, %1 ]
  %12 = and i8 %11, 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #13
  %17 = load i8, ptr %2, align 4
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i8 [ %17, %14 ], [ %11, %10 ]
  %20 = and i8 %19, 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #13
  br label %25

25:                                               ; preds = %22, %18
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_uac1_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_buf_size_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_buf_size_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_count_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_count_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_audio_buf_size_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.7, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_audio_buf_size_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_play_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_play_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = tail call ptr @kstrndup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 7
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #13
  %19 = load i8, ptr %12, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i8 [ %19, %16 ], [ %13, %11 ]
  %22 = or i8 %21, 2
  store i8 %22, ptr %12, align 4
  %23 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 4
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %8, %3
  %25 = phi i32 [ -16, %3 ], [ %2, %20 ], [ -12, %8 ]
  tail call void @mutex_unlock(ptr noundef %4) #13
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_cap_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_cap_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = tail call ptr @kstrndup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 7
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #13
  %19 = load i8, ptr %12, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i8 [ %19, %16 ], [ %13, %11 ]
  %22 = or i8 %21, 4
  store i8 %22, ptr %12, align 4
  %23 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 5
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %8, %3
  %25 = phi i32 [ -16, %3 ], [ %2, %20 ], [ -12, %8 ]
  tail call void @mutex_unlock(ptr noundef %4) #13
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_cntl_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_fn_cntl_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = tail call ptr @kstrndup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 7
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #13
  %19 = load i8, ptr %12, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i8 [ %19, %16 ], [ %13, %11 ]
  %22 = or i8 %21, 8
  store i8 %22, ptr %12, align 4
  %23 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %0, i32 0, i32 6
  store ptr null, ptr %23, align 4
  br label %24

24:                                               ; preds = %20, %8, %3
  %25 = phi i32 [ -16, %3 ], [ %2, %20 ], [ -12, %8 ]
  tail call void @mutex_unlock(ptr noundef %4) #13
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_audio_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.gaudio, ptr %1, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %6, i32 0, i32 7
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = tail call i32 @gaudio_setup(ptr noundef %1) #13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr %9, align 4
  %18 = or i8 %17, 1
  store i8 %18, ptr %9, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @uac1_strings, i32 noundef 8) #13
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = ptrtoint ptr %20 to i32
  br label %66

24:                                               ; preds = %19
  %25 = load i8, ptr %20, align 4
  store i8 %25, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 8), align 1
  %26 = getelementptr %struct.usb_string, ptr %20, i32 1
  %27 = load i8, ptr %26, align 4
  store i8 %27, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @input_terminal_desc, i32 0, i32 9), align 1
  %28 = getelementptr %struct.usb_string, ptr %20, i32 2
  %29 = load i8, ptr %28, align 4
  store i8 %29, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @input_terminal_desc, i32 0, i32 8), align 1
  %30 = getelementptr %struct.usb_string, ptr %20, i32 3
  %31 = load i8, ptr %30, align 4
  store i8 %31, ptr getelementptr inbounds (%struct.uac_feature_unit_descriptor_0, ptr @feature_unit_desc, i32 0, i32 7), align 1
  %32 = getelementptr %struct.usb_string, ptr %20, i32 4
  %33 = load i8, ptr %32, align 4
  store i8 %33, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @output_terminal_desc, i32 0, i32 7), align 1
  %34 = getelementptr %struct.usb_string, ptr %20, i32 5
  %35 = load i8, ptr %34, align 4
  store i8 %35, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_interface_alt_0_desc, i32 0, i32 8), align 1
  %36 = getelementptr %struct.usb_string, ptr %20, i32 6
  %37 = load i8, ptr %36, align 4
  store i8 %37, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_interface_alt_1_desc, i32 0, i32 8), align 1
  %38 = tail call i32 @u_audio_get_playback_channels(ptr noundef %1) #13
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @input_terminal_desc, i32 0, i32 6), align 1
  %40 = tail call i32 @u_audio_get_playback_channels(ptr noundef %1) #13
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_type_i_desc, i32 0, i32 4), align 1
  %42 = tail call i32 @u_audio_get_playback_rate(ptr noundef %1) #13
  %43 = trunc i32 %42 to i24
  store i24 %43, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_type_i_desc, i32 0, i32 8), align 1
  %44 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #13
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %24
  %47 = trunc i32 %44 to i8
  store i8 %47, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 2), align 1
  %48 = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 1
  store i8 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 2
  store i8 0, ptr %49, align 1
  %50 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #13
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = trunc i32 %50 to i8
  store i8 %53, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_interface_alt_0_desc, i32 0, i32 2), align 1
  store i8 %53, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_interface_alt_1_desc, i32 0, i32 2), align 1
  %54 = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 3
  store i8 %53, ptr %54, align 2
  %55 = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 4
  store i8 0, ptr %55, align 1
  %56 = load ptr, ptr %4, align 4
  %57 = tail call ptr @usb_ep_autoconfig(ptr noundef %56, ptr noundef nonnull @as_out_ep_desc) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.f_audio, ptr %1, i32 0, i32 5
  store ptr %57, ptr %60, align 4
  %61 = getelementptr inbounds %struct.usb_ep, ptr %57, i32 0, i32 9
  store ptr @as_out_ep_desc, ptr %61, align 4
  %62 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @f_audio_desc, ptr noundef nonnull @f_audio_desc, ptr noundef null, ptr noundef null) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59, %52, %46, %24
  %65 = phi i32 [ %44, %24 ], [ %50, %46 ], [ %62, %59 ], [ -19, %52 ]
  tail call void @gaudio_cleanup(ptr noundef %1) #13
  br label %66

66:                                               ; preds = %64, %59, %22, %13
  %67 = phi i32 [ %23, %22 ], [ %65, %64 ], [ %14, %13 ], [ 0, %59 ]
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_audio_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @usb_free_all_descriptors(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_audio_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %11, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %11, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %2, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.usb_gadget, ptr %20, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.f_audio_set_alt, i32 noundef 593) #15
  br label %98

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 1
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %98, label %29

29:                                               ; preds = %27
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.usb_gadget, ptr %30, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.f_audio_set_alt, i32 noundef 600) #15
  br label %98

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 3
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %98

37:                                               ; preds = %32
  %38 = icmp eq i32 %2, 1
  br i1 %38, label %39, label %81

39:                                               ; preds = %37
  %40 = load ptr, ptr %7, align 4
  %41 = tail call i32 @config_ep_by_speed(ptr noundef %40, ptr noundef %0, ptr noundef %9) #13
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %98

43:                                               ; preds = %39
  %44 = tail call i32 @usb_ep_enable(ptr noundef %9) #13
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 2848, i32 noundef 16) #14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %17, i32 noundef 2848) #16
  store ptr %49, ptr %46, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  tail call void @kfree(ptr noundef nonnull %46) #13
  br label %52

52:                                               ; preds = %51, %43
  %53 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 7
  store ptr inttoptr (i32 -12 to ptr), ptr %53, align 4
  br label %98

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 7
  store ptr %46, ptr %55, align 4
  %56 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %98, label %57

57:                                               ; preds = %54
  %58 = icmp sgt i32 %15, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.usb_ep, ptr %9, i32 0, i32 1
  br label %61

61:                                               ; preds = %78, %59
  %62 = phi i32 [ 0, %59 ], [ %79, %78 ]
  %63 = tail call ptr @usb_ep_alloc_request(ptr noundef %9, i32 noundef 2592) #13
  %64 = icmp eq ptr %63, null
  br i1 %64, label %94, label %65

65:                                               ; preds = %61
  %66 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 2848) #16
  store ptr %66, ptr %63, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.usb_request, ptr %63, i32 0, i32 1
  store i32 %13, ptr %69, align 4
  %70 = getelementptr inbounds %struct.usb_request, ptr %63, i32 0, i32 8
  store ptr %0, ptr %70, align 4
  %71 = getelementptr inbounds %struct.usb_request, ptr %63, i32 0, i32 7
  store ptr @f_audio_complete, ptr %71, align 4
  %72 = tail call i32 @usb_ep_queue(ptr noundef %9, ptr noundef nonnull %63, i32 noundef 2592) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr %7, align 4
  %76 = getelementptr inbounds %struct.usb_gadget, ptr %75, i32 0, i32 11
  %77 = load ptr, ptr %60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.22, ptr noundef %77, i32 noundef %72) #15
  br label %94

78:                                               ; preds = %68
  %79 = add nuw nsw i32 %62, 1
  %80 = icmp slt i32 %79, %15
  br i1 %80, label %61, label %94

81:                                               ; preds = %37
  %82 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 7
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.f_audio_buf, ptr %83, i32 0, i32 2
  %87 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 9
  %88 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 9, i32 1
  %89 = load ptr, ptr %88, align 4
  store ptr %86, ptr %88, align 4
  store ptr %87, ptr %86, align 4
  %90 = getelementptr inbounds %struct.f_audio_buf, ptr %83, i32 0, i32 2, i32 1
  store ptr %89, ptr %90, align 4
  store volatile ptr %86, ptr %89, align 4
  %91 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 8
  %92 = load ptr, ptr @system_wq, align 4
  %93 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %92, ptr noundef %91) #13
  br label %94

94:                                               ; preds = %85, %81, %78, %74, %65, %61, %57
  %95 = phi i32 [ 0, %85 ], [ 0, %81 ], [ 0, %57 ], [ %72, %74 ], [ -12, %65 ], [ -12, %61 ], [ 0, %78 ]
  %96 = trunc i32 %2 to i8
  %97 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 4
  store i8 %96, ptr %97, align 1
  br label %98

98:                                               ; preds = %94, %54, %52, %39, %32, %29, %27, %19
  %99 = phi i32 [ -22, %19 ], [ -22, %29 ], [ 0, %27 ], [ %41, %39 ], [ -12, %54 ], [ %95, %94 ], [ 0, %32 ], [ -12, %52 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_audio_get_alt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_configuration, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  br label %27

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 3
  %17 = load i8, ptr %16, align 2
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  br label %27

24:                                               ; preds = %15
  %25 = load ptr, ptr %6, align 4
  %26 = getelementptr inbounds %struct.usb_gadget, ptr %25, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.f_audio_get_alt, i32 noundef 666, i32 noundef %1) #15
  br label %27

27:                                               ; preds = %24, %20, %11
  %28 = phi i32 [ %14, %11 ], [ %23, %20 ], [ -22, %24 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_audio_setup(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_composite_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i8, ptr %1, align 1
  switch i8 %10, label %115 [
    i8 33, label %11
    i8 -95, label %51
    i8 34, label %98
    i8 -94, label %106
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %13 = load i16, ptr %12, align 1
  %14 = lshr i16 %13, 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %16 = load i16, ptr %15, align 1
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %18 = load i16, ptr %17, align 1
  %19 = lshr i16 %18, 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 10
  br label %23

23:                                               ; preds = %27, %11
  %24 = phi ptr [ %22, %11 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.usb_audio_control_selector, ptr %25, i32 0, i32 2
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i16
  %31 = icmp eq i16 %14, %30
  br i1 %31, label %32, label %23

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.usb_audio_control_selector, ptr %25, i32 0, i32 1
  br label %34

34:                                               ; preds = %38, %32
  %35 = phi ptr [ %33, %32 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %33
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.usb_audio_control, ptr %36, i32 0, i32 2
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i16
  %42 = icmp eq i16 %19, %41
  br i1 %42, label %43, label %34

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 12
  store ptr %36, ptr %44, align 4
  br label %45

45:                                               ; preds = %43, %34, %23
  %46 = and i8 %21, 15
  %47 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 11
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 8
  store ptr %0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 7
  store ptr @f_audio_complete, ptr %49, align 4
  %50 = zext i16 %16 to i32
  br label %131

51:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 -95, ptr %3, align 4
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %53 = load i16, ptr %52, align 1
  %54 = lshr i16 %53, 8
  %55 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %56 = load i16, ptr %55, align 1
  %57 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %58 = load i16, ptr %57, align 1
  %59 = lshr i16 %58, 8
  %60 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 15
  %63 = getelementptr inbounds %struct.f_audio, ptr %0, i32 0, i32 10
  br label %64

64:                                               ; preds = %68, %51
  %65 = phi ptr [ %63, %51 ], [ %66, %68 ]
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %63
  br i1 %67, label %92, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.usb_audio_control_selector, ptr %66, i32 0, i32 2
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i16
  %72 = icmp eq i16 %54, %71
  br i1 %72, label %73, label %64

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.usb_audio_control_selector, ptr %66, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %92, label %77

77:                                               ; preds = %89, %73
  %78 = phi ptr [ %90, %89 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.usb_audio_control, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 4
  %81 = zext i8 %80 to i16
  %82 = icmp eq i16 %59, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.usb_audio_control, ptr %78, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = tail call i32 %85(ptr noundef %78, i8 noundef zeroext %62) #13
  store i32 %88, ptr %3, align 4
  br label %92

89:                                               ; preds = %83, %77
  %90 = load ptr, ptr %78, align 4
  %91 = icmp eq ptr %90, %74
  br i1 %91, label %92, label %77

92:                                               ; preds = %89, %87, %73, %64
  %93 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 8
  store ptr %0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 7
  store ptr @f_audio_complete, ptr %94, align 4
  %95 = tail call i16 @llvm.umin.i16(i16 %56, i16 4) #13
  %96 = load ptr, ptr %9, align 4
  %97 = zext i16 %95 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %96, ptr nonnull align 4 %3, i32 %97, i1 false) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %131

98:                                               ; preds = %2
  %99 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = icmp eq i8 %100, 1
  br i1 %101, label %102, label %145

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %104 = load i16, ptr %103, align 1
  %105 = zext i16 %104 to i32
  br label %131

106:                                              ; preds = %2
  %107 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %108 = load i8, ptr %107, align 1
  %109 = add i8 %108, 127
  %110 = icmp ult i8 %109, 4
  br i1 %110, label %111, label %145

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %113 = load i16, ptr %112, align 1
  %114 = zext i16 %113 to i32
  br label %131

115:                                              ; preds = %2
  %116 = zext i8 %10 to i32
  %117 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %118 = load i16, ptr %117, align 1
  %119 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %120 = load i16, ptr %119, align 1
  %121 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %122 = load i16, ptr %121, align 1
  %123 = load ptr, ptr %7, align 4
  %124 = getelementptr inbounds %struct.usb_gadget, ptr %123, i32 0, i32 11
  %125 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = zext i16 %120 to i32
  %129 = zext i16 %122 to i32
  %130 = zext i16 %118 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.24, i32 noundef %116, i32 noundef %127, i32 noundef %128, i32 noundef %129, i32 noundef %130) #15
  br label %145

131:                                              ; preds = %111, %102, %92, %45
  %132 = phi i32 [ %114, %111 ], [ %105, %102 ], [ %50, %45 ], [ %97, %92 ]
  %133 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 6
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, -262145
  store i32 %135, ptr %133, align 4
  %136 = getelementptr inbounds %struct.usb_request, ptr %9, i32 0, i32 1
  store i32 %132, ptr %136, align 4
  %137 = load ptr, ptr %7, align 4
  %138 = getelementptr inbounds %struct.usb_gadget, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8
  %140 = tail call i32 @usb_ep_queue(ptr noundef %139, ptr noundef %9, i32 noundef 2592) #13
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = load ptr, ptr %7, align 4
  %144 = getelementptr inbounds %struct.usb_gadget, ptr %143, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.25, i32 noundef %140) #15
  br label %145

145:                                              ; preds = %142, %131, %115, %106, %98
  %146 = phi i32 [ %140, %142 ], [ %140, %131 ], [ -95, %115 ], [ -95, %98 ], [ -95, %106 ]
  ret i32 %146
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @f_audio_disable(ptr nocapture noundef %0) #8 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_audio_free(ptr noundef %0) #2 {
  tail call void @gaudio_cleanup(ptr noundef %0) #13
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %0) #13
  %4 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %3, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %4) #13
  %5 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %3, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_audio_playback_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock_irq(ptr noundef %2) #13
  %3 = getelementptr i8, ptr %0, i32 16
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %7 = load i16, ptr %2, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %23

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -212
  %11 = getelementptr i8, ptr %4, i32 -8
  %12 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %16 = load i16, ptr %2, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %4, i32 -4
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @u_audio_playback(ptr noundef %10, ptr noundef %18, i32 noundef %20) #13
  %22 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %22) #13
  tail call void @kfree(ptr noundef %11) #13
  br label %23

23:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gaudio_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gaudio_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_playback_channels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_playback_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_audio_complete(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %7 = load i32, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %92

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.f_audio, ptr %5, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %77

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.usb_configuration, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.f_audio, ptr %5, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.usb_function, ptr %5, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.f_uac1_legacy_opts, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq ptr %19, null
  br i1 %24, label %92, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.f_audio_buf, ptr %19, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %23, %27
  %29 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %19, align 4
  br label %59

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.f_audio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %35) #13
  %36 = getelementptr inbounds %struct.f_audio_buf, ptr %19, i32 0, i32 2
  %37 = getelementptr inbounds %struct.f_audio, ptr %5, i32 0, i32 9
  %38 = getelementptr inbounds %struct.f_audio, ptr %5, i32 0, i32 9, i32 1
  %39 = load ptr, ptr %38, align 4
  store ptr %36, ptr %38, align 4
  store ptr %37, ptr %36, align 4
  %40 = getelementptr inbounds %struct.f_audio_buf, ptr %19, i32 0, i32 2, i32 1
  store ptr %39, ptr %40, align 4
  store volatile ptr %36, ptr %39, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %41 = load i16, ptr %35, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %43 = getelementptr inbounds %struct.f_audio, ptr %5, i32 0, i32 8
  %44 = load ptr, ptr @system_wq, align 4
  %45 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %44, ptr noundef %43) #13
  %46 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 2848, i32 noundef 16) #14
  %48 = icmp eq ptr %47, null
  br i1 %48, label %92, label %49

49:                                               ; preds = %34
  %50 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %23, i32 noundef 2848) #16
  store ptr %50, ptr %47, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @kfree(ptr noundef nonnull %47) #13
  br label %92

53:                                               ; preds = %49
  %54 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %92, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.f_audio_buf, ptr %47, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = load i32, ptr %29, align 4
  br label %59

59:                                               ; preds = %55, %32
  %60 = phi i32 [ %58, %55 ], [ %30, %32 ]
  %61 = phi i32 [ %57, %55 ], [ %27, %32 ]
  %62 = phi ptr [ %50, %55 ], [ %33, %32 ]
  %63 = phi ptr [ %47, %55 ], [ %19, %32 ]
  %64 = getelementptr inbounds %struct.f_audio_buf, ptr %63, i32 0, i32 1
  %65 = getelementptr i8, ptr %62, i32 %61
  %66 = load ptr, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %65, ptr align 1 %66, i32 %60, i1 false) #13
  %67 = load i32, ptr %29, align 4
  %68 = load i32, ptr %64, align 4
  %69 = add i32 %68, %67
  store i32 %69, ptr %64, align 4
  store ptr %63, ptr %18, align 4
  %70 = tail call i32 @usb_ep_queue(ptr noundef %0, ptr noundef %1, i32 noundef 2592) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %92, label %72

72:                                               ; preds = %59
  %73 = load ptr, ptr %17, align 4
  %74 = getelementptr inbounds %struct.usb_gadget, ptr %73, i32 0, i32 11
  %75 = getelementptr inbounds %struct.usb_ep, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.22, ptr noundef %76, i32 noundef %70) #15
  br label %92

77:                                               ; preds = %9
  %78 = getelementptr inbounds %struct.f_audio, ptr %5, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %1, align 4
  %83 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %3, ptr align 1 %82, i32 %84, i1 false)
  %85 = getelementptr inbounds %struct.usb_audio_control, ptr %79, i32 0, i32 4
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.f_audio, ptr %5, i32 0, i32 11
  %88 = load i8, ptr %87, align 4
  %89 = load i32, ptr %3, align 4
  %90 = and i32 %89, 65535
  %91 = tail call i32 %86(ptr noundef nonnull %79, i8 noundef zeroext %88, i32 noundef %90) #13
  store ptr null, ptr %78, align 4
  br label %92

92:                                               ; preds = %81, %77, %72, %59, %53, %52, %34, %13, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @generic_set_cmd(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i32 noundef %2) #10 {
  %4 = zext i8 %1 to i32
  %5 = getelementptr %struct.usb_audio_control, ptr %0, i32 0, i32 3, i32 %4
  store i32 %2, ptr %5, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @generic_get_cmd(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #11 {
  %3 = zext i8 %1 to i32
  %4 = getelementptr %struct.usb_audio_control, ptr %0, i32 0, i32 3, i32 %3
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_playback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #12

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i64 2148948759}
!10 = !{i64 2148944583}
!11 = !{i64 2148944658, i64 2148944685, i64 2148944732, i64 2148944754, i64 2148944782, i64 2148944802}
!12 = !{i64 686078}
!13 = !{i64 2148972903}
