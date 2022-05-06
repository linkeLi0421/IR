; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_uac1.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_uac1.c"
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
%struct.uac1_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.uac_format_type_i_discrete_descriptor_1 = type { i8, i8, i8, i8, i8, i8, i8, i8, [1 x [3 x i8]] }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.uac1_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.uac_iso_endpoint_descriptor = type <{ i8, i8, i8, i8, i8, i16 }>
%struct.f_uac1_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i8, i8, i16, i16, i16, i32, i8, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
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
%struct.uac1_ac_header_descriptor = type <{ i8, i8, i8, i16, i16, i8, [0 x i8] }>
%struct.uac_feature_unit_descriptor = type { i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.f_uac1 = type { %struct.g_audio, i8, i8, i8, i8, i8, i8, %struct.usb_ctrlrequest, ptr, %struct.atomic_t }
%struct.g_audio = type { %struct.usb_function, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.uac_params }
%struct.uac_params = type { i32, i32, i32, %struct.uac_fu_params, i32, i32, i32, %struct.uac_fu_params, i32, i32 }
%struct.uac_fu_params = type { i32, i8, i8, i16, i16, i16 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.uac1_status_word = type { i8, i8 }

@__UNIQUE_ID_alias230 = internal constant [19 x i8] c"alias=usbfunc:uac1\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [22 x i8] c"author=Ruslan Bilovol\00", section ".modinfo", align 1
@uac1usb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @f_audio_alloc_inst, ptr @f_audio_alloc }, align 4
@.str = private unnamed_addr constant [5 x i8] c"uac1\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@f_audio_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@f_uac1_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @f_uac1_item_ops, ptr null, ptr @f_uac1_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@f_uac1_item_ops = internal global %struct.configfs_item_operations { ptr @f_uac1_attr_release, ptr null, ptr null }, align 4
@f_uac1_attrs = internal global [18 x ptr] [ptr @f_uac1_opts_attr_c_chmask, ptr @f_uac1_opts_attr_c_srate, ptr @f_uac1_opts_attr_c_ssize, ptr @f_uac1_opts_attr_p_chmask, ptr @f_uac1_opts_attr_p_srate, ptr @f_uac1_opts_attr_p_ssize, ptr @f_uac1_opts_attr_req_number, ptr @f_uac1_opts_attr_p_mute_present, ptr @f_uac1_opts_attr_p_volume_present, ptr @f_uac1_opts_attr_p_volume_min, ptr @f_uac1_opts_attr_p_volume_max, ptr @f_uac1_opts_attr_p_volume_res, ptr @f_uac1_opts_attr_c_mute_present, ptr @f_uac1_opts_attr_c_volume_present, ptr @f_uac1_opts_attr_c_volume_min, ptr @f_uac1_opts_attr_c_volume_max, ptr @f_uac1_opts_attr_c_volume_res, ptr null], align 4
@f_uac1_opts_attr_c_chmask = internal global %struct.configfs_attribute { ptr @.str.3, ptr @__this_module, i16 420, ptr @f_uac1_opts_c_chmask_show, ptr @f_uac1_opts_c_chmask_store }, align 4
@f_uac1_opts_attr_c_srate = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @f_uac1_opts_c_srate_show, ptr @f_uac1_opts_c_srate_store }, align 4
@f_uac1_opts_attr_c_ssize = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @f_uac1_opts_c_ssize_show, ptr @f_uac1_opts_c_ssize_store }, align 4
@f_uac1_opts_attr_p_chmask = internal global %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 420, ptr @f_uac1_opts_p_chmask_show, ptr @f_uac1_opts_p_chmask_store }, align 4
@f_uac1_opts_attr_p_srate = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @f_uac1_opts_p_srate_show, ptr @f_uac1_opts_p_srate_store }, align 4
@f_uac1_opts_attr_p_ssize = internal global %struct.configfs_attribute { ptr @.str.9, ptr @__this_module, i16 420, ptr @f_uac1_opts_p_ssize_show, ptr @f_uac1_opts_p_ssize_store }, align 4
@f_uac1_opts_attr_req_number = internal global %struct.configfs_attribute { ptr @.str.10, ptr @__this_module, i16 420, ptr @f_uac1_opts_req_number_show, ptr @f_uac1_opts_req_number_store }, align 4
@f_uac1_opts_attr_p_mute_present = internal global %struct.configfs_attribute { ptr @.str.11, ptr @__this_module, i16 420, ptr @f_uac1_opts_p_mute_present_show, ptr @f_uac1_opts_p_mute_present_store }, align 4
@f_uac1_opts_attr_p_volume_present = internal global %struct.configfs_attribute { ptr @.str.12, ptr @__this_module, i16 420, ptr @f_uac1_opts_p_volume_present_show, ptr @f_uac1_opts_p_volume_present_store }, align 4
@f_uac1_opts_attr_p_volume_min = internal global %struct.configfs_attribute { ptr @.str.13, ptr @__this_module, i16 420, ptr @f_uac1_opts_p_volume_min_show, ptr @f_uac1_opts_p_volume_min_store }, align 4
@f_uac1_opts_attr_p_volume_max = internal global %struct.configfs_attribute { ptr @.str.15, ptr @__this_module, i16 420, ptr @f_uac1_opts_p_volume_max_show, ptr @f_uac1_opts_p_volume_max_store }, align 4
@f_uac1_opts_attr_p_volume_res = internal global %struct.configfs_attribute { ptr @.str.16, ptr @__this_module, i16 420, ptr @f_uac1_opts_p_volume_res_show, ptr @f_uac1_opts_p_volume_res_store }, align 4
@f_uac1_opts_attr_c_mute_present = internal global %struct.configfs_attribute { ptr @.str.17, ptr @__this_module, i16 420, ptr @f_uac1_opts_c_mute_present_show, ptr @f_uac1_opts_c_mute_present_store }, align 4
@f_uac1_opts_attr_c_volume_present = internal global %struct.configfs_attribute { ptr @.str.18, ptr @__this_module, i16 420, ptr @f_uac1_opts_c_volume_present_show, ptr @f_uac1_opts_c_volume_present_store }, align 4
@f_uac1_opts_attr_c_volume_min = internal global %struct.configfs_attribute { ptr @.str.19, ptr @__this_module, i16 420, ptr @f_uac1_opts_c_volume_min_show, ptr @f_uac1_opts_c_volume_min_store }, align 4
@f_uac1_opts_attr_c_volume_max = internal global %struct.configfs_attribute { ptr @.str.20, ptr @__this_module, i16 420, ptr @f_uac1_opts_c_volume_max_show, ptr @f_uac1_opts_c_volume_max_store }, align 4
@f_uac1_opts_attr_c_volume_res = internal global %struct.configfs_attribute { ptr @.str.21, ptr @__this_module, i16 420, ptr @f_uac1_opts_c_volume_res_show, ptr @f_uac1_opts_c_volume_res_store }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"c_chmask\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"c_srate\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"c_ssize\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"p_chmask\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"p_srate\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"p_ssize\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"req_number\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"p_mute_present\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"p_volume_present\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"p_volume_min\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"p_volume_max\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"p_volume_res\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"c_mute_present\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"c_volume_present\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"c_volume_min\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"c_volume_max\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"c_volume_res\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"uac1_func\00", align 1
@uac1_strings = internal global [2 x ptr] [ptr @str_uac1, ptr null], align 4
@ac_header_desc = internal global ptr null, align 4
@out_feature_unit_desc = internal global ptr null, align 4
@in_feature_unit_desc = internal global ptr null, align 4
@ac_interface_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 1
@usb_out_it_desc = internal global %struct.uac_input_terminal_descriptor { i8 12, i8 36, i8 2, i8 0, i16 257, i8 0, i8 0, i16 3, i8 0, i8 0 }, align 1
@io_out_ot_desc = internal global %struct.uac1_output_terminal_descriptor <{ i8 9, i8 36, i8 3, i8 0, i16 769, i8 0, i8 0, i8 0 }>, align 1
@as_out_interface_alt_0_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 0, i8 0 }, align 1
@as_out_interface_alt_1_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 0, i8 0 }, align 1
@io_in_it_desc = internal global %struct.uac_input_terminal_descriptor { i8 12, i8 36, i8 2, i8 0, i16 513, i8 0, i8 0, i16 3, i8 0, i8 0 }, align 1
@usb_in_ot_desc = internal global %struct.uac1_output_terminal_descriptor <{ i8 9, i8 36, i8 3, i8 0, i16 257, i8 0, i8 0, i8 0 }>, align 1
@as_in_interface_alt_0_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 0, i8 0 }, align 1
@as_in_interface_alt_1_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 0, i8 0 }, align 1
@as_out_type_i_desc = internal global %struct.uac_format_type_i_discrete_descriptor_1 { i8 11, i8 36, i8 2, i8 1, i8 0, i8 2, i8 16, i8 1, [1 x [3 x i8]] zeroinitializer }, align 1
@as_in_type_i_desc = internal global %struct.uac_format_type_i_discrete_descriptor_1 { i8 11, i8 36, i8 2, i8 1, i8 0, i8 2, i8 16, i8 1, [1 x [3 x i8]] zeroinitializer }, align 1
@ac_int_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 2, i8 4, i8 0, i8 0 }>, align 1
@as_out_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 0, i8 9, i16 200, i8 4, i8 0, i8 0 }>, align 1
@as_in_ep_desc = internal global %struct.usb_endpoint_descriptor <{ i8 9, i8 5, i8 -128, i8 5, i16 200, i8 4, i8 0, i8 0 }>, align 1
@f_audio_desc = internal global [22 x ptr] [ptr @ac_interface_desc, ptr @ac_header_desc, ptr @usb_out_it_desc, ptr @io_out_ot_desc, ptr @out_feature_unit_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @in_feature_unit_desc, ptr @ac_int_ep_desc, ptr @as_out_interface_alt_0_desc, ptr @as_out_interface_alt_1_desc, ptr @as_out_header_desc, ptr @as_out_type_i_desc, ptr @as_out_ep_desc, ptr @as_iso_out_desc, ptr @as_in_interface_alt_0_desc, ptr @as_in_interface_alt_1_desc, ptr @as_in_header_desc, ptr @as_in_type_i_desc, ptr @as_in_ep_desc, ptr @as_iso_in_desc, ptr null], align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"UAC1_PCM\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"UAC1_Gadget\00", align 1
@.str.25 = private unnamed_addr constant [41 x i8] c"Error: no playback and capture channels\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"Error: unsupported playback channels mask\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Error: unsupported capture channels mask\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"Error: incorrect playback sample size\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Error: incorrect capture sample size\0A\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"Error: incorrect playback sampling rate\0A\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"Error: incorrect capture sampling rate\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Error: incorrect playback volume max/min\0A\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"Error: incorrect capture volume max/min\0A\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"Error: negative/zero playback volume resolution\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"Error: negative/zero capture volume resolution\0A\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"Error: incorrect playback volume resolution\0A\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"Error: incorrect capture volume resolution\0A\00", align 1
@str_uac1 = internal global %struct.usb_gadget_strings { i16 1033, ptr @strings_uac1 }, align 4
@strings_uac1 = internal global [14 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.38 }, %struct.usb_string { i8 0, ptr @.str.39 }, %struct.usb_string { i8 0, ptr @.str.40 }, %struct.usb_string { i8 0, ptr @.str.41 }, %struct.usb_string { i8 0, ptr @.str.42 }, %struct.usb_string { i8 0, ptr @.str.43 }, %struct.usb_string { i8 0, ptr @.str.44 }, %struct.usb_string { i8 0, ptr @.str.45 }, %struct.usb_string { i8 0, ptr @.str.46 }, %struct.usb_string { i8 0, ptr @.str.47 }, %struct.usb_string { i8 0, ptr @.str.48 }, %struct.usb_string { i8 0, ptr @.str.49 }, %struct.usb_string { i8 0, ptr @.str.50 }, %struct.usb_string zeroinitializer], align 4
@.str.38 = private unnamed_addr constant [13 x i8] c"AC Interface\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"Playback Input terminal\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Playback Channels\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"Playback Output terminal\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"Capture Input terminal\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"Capture Channels\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"Capture Output terminal\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"Playback Volume\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"Playback Inactive\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Playback Active\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"Capture Inactive\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"Capture Active\00", align 1
@as_out_header_desc = internal global %struct.uac1_as_header_descriptor <{ i8 7, i8 36, i8 1, i8 0, i8 1, i16 1 }>, align 1
@as_in_header_desc = internal global %struct.uac1_as_header_descriptor <{ i8 7, i8 36, i8 1, i8 0, i8 1, i16 1 }>, align 1
@as_iso_out_desc = internal global %struct.uac_iso_endpoint_descriptor <{ i8 7, i8 37, i8 1, i8 1, i8 1, i16 1 }>, align 1
@as_iso_in_desc = internal global %struct.uac_iso_endpoint_descriptor <{ i8 7, i8 37, i8 1, i8 1, i8 0, i16 0 }>, align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"%s:%d Error!\0A\00", align 1
@__func__.f_audio_set_alt = private unnamed_addr constant [16 x i8] c"f_audio_set_alt\00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"%s:%d Invalid Interface %d!\0A\00", align 1
@__func__.f_audio_get_alt = private unnamed_addr constant [16 x i8] c"f_audio_get_alt\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"invalid control req%02x.%02x v%04x i%04x l%d\0A\00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c"audio response on err %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c"%s:%d entity_id=%d control_selector=%d TODO!\0A\00", align 1
@__func__.out_rq_cur = private unnamed_addr constant [11 x i8] c"out_rq_cur\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"%s:%d control_selector=%d TODO!\0A\00", align 1
@__func__.out_rq_cur_complete = private unnamed_addr constant [20 x i8] c"out_rq_cur_complete\00", align 1
@__func__.in_rq_cur = private unnamed_addr constant [10 x i8] c"in_rq_cur\00", align 1
@__func__.in_rq_min = private unnamed_addr constant [10 x i8] c"in_rq_min\00", align 1
@__func__.in_rq_max = private unnamed_addr constant [10 x i8] c"in_rq_max\00", align 1
@__func__.in_rq_res = private unnamed_addr constant [10 x i8] c"in_rq_res\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_license231], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @uac1usb_func) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @uac1usb_func) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @f_audio_alloc_inst() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 172) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @f_audio_alloc_inst.__key) #11
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @f_audio_free_inst, ptr %6, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @f_uac1_func_type) #11
  %7 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 1
  store i32 3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 2
  store i32 48000, ptr %8, align 8
  %9 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 3
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 4
  store i32 3, ptr %10, align 8
  %11 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 5
  store i32 48000, ptr %11, align 4
  %12 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 6
  store i32 2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 7
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 8
  store i8 1, ptr %14, align 1
  %15 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 9
  store i16 -25600, ptr %15, align 2
  %16 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 10
  store i16 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 11
  store i16 256, ptr %17, align 2
  %18 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 12
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 13
  store i8 1, ptr %19, align 1
  %20 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 14
  store i16 -25600, ptr %20, align 2
  %21 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 15
  store i16 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 16
  store i16 256, ptr %22, align 2
  %23 = getelementptr inbounds %struct.f_uac1_opts, ptr %2, i32 0, i32 17
  store i32 2, ptr %23, align 4
  br label %24

24:                                               ; preds = %4, %0
  %25 = phi ptr [ %2, %4 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @f_audio_alloc(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 220) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %6) #11
  store ptr @.str.22, ptr %3, align 8
  %10 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @f_audio_bind, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @f_audio_unbind, ptr %11, align 8
  %12 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @f_audio_set_alt, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 14
  store ptr @f_audio_get_alt, ptr %13, align 8
  %14 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 16
  store ptr @f_audio_setup, ptr %14, align 8
  %15 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @f_audio_disable, ptr %15, align 4
  %16 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @f_audio_free, ptr %16, align 4
  br label %17

17:                                               ; preds = %5, %1
  %18 = phi ptr [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_audio_free_inst(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #11
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
  tail call void @usb_put_function_instance(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_chmask_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_chmask_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
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
define internal i32 @f_uac1_opts_c_srate_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_srate_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_ssize_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_ssize_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_chmask_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_chmask_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_srate_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_srate_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 5
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_ssize_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_ssize_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_number_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_req_number_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 17
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_mute_present_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_mute_present_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1, !range !9
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 7
  store i8 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_present_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_present_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1, !range !9
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 8
  store i8 %13, ptr %14, align 1
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_min_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 9
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_min_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 9
  store i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_max_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 10
  %5 = load i16, ptr %4, align 4
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_max_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 10
  store i16 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_res_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 11
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_p_volume_res_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 11
  store i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_mute_present_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 12
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_mute_present_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1, !range !9
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 12
  store i8 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_present_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 13
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_present_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1, !range !9
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 13
  store i8 %13, ptr %14, align 1
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_min_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 14
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_min_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 14
  store i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_max_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 15
  %5 = load i16, ptr %4, align 4
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_max_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 15
  store i16 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_res_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 16
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #11
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac1_opts_c_volume_res_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %5) #11
  %6 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 16
  store i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_audio_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %7 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %76, label %21

16:                                               ; preds = %2
  %17 = icmp ult i32 %10, 4096
  br i1 %17, label %18, label %76

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %20, %18 ], [ %14, %12 ]
  %23 = icmp ult i32 %22, 4096
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -5
  %28 = icmp ult i32 %27, -4
  br i1 %28, label %76, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -5
  %33 = icmp ult i32 %32, -4
  br i1 %33, label %76, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 10
  %44 = load i16, ptr %43, align 4
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 9
  %47 = load i16, ptr %46, align 2
  %48 = sext i16 %47 to i32
  %49 = icmp sgt i16 %44, %47
  br i1 %49, label %50, label %76

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 15
  %52 = load i16, ptr %51, align 4
  %53 = sext i16 %52 to i32
  %54 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 14
  %55 = load i16, ptr %54, align 2
  %56 = sext i16 %55 to i32
  %57 = icmp sgt i16 %52, %55
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 11
  %60 = load i16, ptr %59, align 2
  %61 = sext i16 %60 to i32
  %62 = icmp slt i16 %60, 1
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 16
  %65 = load i16, ptr %64, align 2
  %66 = sext i16 %65 to i32
  %67 = icmp slt i16 %65, 1
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = sub nsw i32 %45, %48
  %70 = srem i32 %69, %61
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = sub nsw i32 %53, %56
  %74 = srem i32 %73, %66
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72, %68, %63, %58, %50, %42, %38, %34, %29, %24, %21, %16, %12
  %77 = phi ptr [ @.str.25, %12 ], [ @.str.26, %16 ], [ @.str.27, %21 ], [ @.str.28, %24 ], [ @.str.29, %29 ], [ @.str.30, %34 ], [ @.str.31, %38 ], [ @.str.32, %42 ], [ @.str.33, %50 ], [ @.str.34, %58 ], [ @.str.35, %63 ], [ @.str.36, %68 ], [ @.str.37, %72 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %77) #13
  br label %478

78:                                               ; preds = %72
  %79 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @uac1_strings, i32 noundef 14) #11
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = ptrtoint ptr %79 to i32
  br label %478

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load i32, ptr %9, align 4
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %86, i32 2, i32 1
  %91 = select i1 %89, i32 %87, i32 %90
  %92 = or i32 %91, 8
  %93 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %92, i32 noundef 3520) #14
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store ptr null, ptr @ac_header_desc, align 4
  br label %478

96:                                               ; preds = %83
  %97 = trunc i32 %92 to i8
  store i8 %97, ptr %93, align 64
  %98 = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %93, i32 0, i32 1
  store i8 36, ptr %98, align 1
  %99 = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %93, i32 0, i32 2
  store i8 1, ptr %99, align 2
  %100 = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %93, i32 0, i32 3
  store i16 256, ptr %100, align 1
  %101 = trunc i32 %91 to i8
  %102 = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %93, i32 0, i32 5
  store i8 %101, ptr %102, align 1
  store ptr %93, ptr @ac_header_desc, align 4
  %103 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 12
  %104 = load i8, ptr %103, align 4, !range !9
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 13
  %108 = load i8, ptr %107, align 1, !range !9
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %106, %96
  %111 = load i32, ptr %84, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %113, %110
  %114 = phi i32 [ %117, %113 ], [ 0, %110 ]
  %115 = phi i32 [ %118, %113 ], [ %111, %110 ]
  %116 = and i32 %115, 1
  %117 = add i32 %116, %114
  %118 = lshr i32 %115, 1
  %119 = icmp ult i32 %115, 2
  br i1 %119, label %120, label %113

120:                                              ; preds = %113
  %121 = shl i32 %117, 1
  br label %122

122:                                              ; preds = %120, %110
  %123 = phi i32 [ 0, %110 ], [ %121, %120 ]
  %124 = add i32 %123, 9
  %125 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %124, i32 noundef 3520) #14
  %126 = icmp eq ptr %125, null
  br i1 %126, label %474, label %127

127:                                              ; preds = %122
  %128 = trunc i32 %124 to i8
  store i8 %128, ptr %125, align 64
  %129 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %125, i32 0, i32 1
  store i8 36, ptr %129, align 1
  %130 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %125, i32 0, i32 2
  store i8 6, ptr %130, align 2
  %131 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %125, i32 0, i32 5
  store i8 2, ptr %131, align 1
  store ptr %125, ptr @out_feature_unit_desc, align 4
  br label %132

132:                                              ; preds = %127, %106
  %133 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 7
  %134 = load i8, ptr %133, align 4, !range !9
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 8
  %138 = load i8, ptr %137, align 1, !range !9
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %163, label %140

140:                                              ; preds = %136, %132
  %141 = load i32, ptr %9, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %143, %140
  %144 = phi i32 [ %147, %143 ], [ 0, %140 ]
  %145 = phi i32 [ %148, %143 ], [ %141, %140 ]
  %146 = and i32 %145, 1
  %147 = add i32 %146, %144
  %148 = lshr i32 %145, 1
  %149 = icmp ult i32 %145, 2
  br i1 %149, label %150, label %143

150:                                              ; preds = %143
  %151 = shl i32 %147, 1
  br label %152

152:                                              ; preds = %150, %140
  %153 = phi i32 [ 0, %140 ], [ %151, %150 ]
  %154 = add i32 %153, 9
  %155 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %154, i32 noundef 3520) #14
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store ptr null, ptr @in_feature_unit_desc, align 4
  br label %470

158:                                              ; preds = %152
  %159 = trunc i32 %154 to i8
  store i8 %159, ptr %155, align 64
  %160 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %155, i32 0, i32 1
  store i8 36, ptr %160, align 1
  %161 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %155, i32 0, i32 2
  store i8 6, ptr %161, align 2
  %162 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %155, i32 0, i32 5
  store i8 2, ptr %162, align 1
  store ptr %155, ptr @in_feature_unit_desc, align 4
  br label %163

163:                                              ; preds = %158, %136
  %164 = load i8, ptr %79, align 4
  store i8 %164, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 8), align 1
  %165 = getelementptr %struct.usb_string, ptr %79, i32 1
  %166 = load i8, ptr %165, align 4
  store i8 %166, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 9), align 1
  %167 = getelementptr %struct.usb_string, ptr %79, i32 2
  %168 = load i8, ptr %167, align 4
  store i8 %168, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 8), align 1
  %169 = getelementptr %struct.usb_string, ptr %79, i32 3
  %170 = load i8, ptr %169, align 4
  store i8 %170, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 7), align 1
  %171 = getelementptr %struct.usb_string, ptr %79, i32 9
  %172 = load i8, ptr %171, align 4
  store i8 %172, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_out_interface_alt_0_desc, i32 0, i32 8), align 1
  %173 = getelementptr %struct.usb_string, ptr %79, i32 10
  %174 = load i8, ptr %173, align 4
  store i8 %174, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_out_interface_alt_1_desc, i32 0, i32 8), align 1
  %175 = getelementptr %struct.usb_string, ptr %79, i32 4
  %176 = load i8, ptr %175, align 4
  store i8 %176, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 9), align 1
  %177 = getelementptr %struct.usb_string, ptr %79, i32 5
  %178 = load i8, ptr %177, align 4
  store i8 %178, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 8), align 1
  %179 = getelementptr %struct.usb_string, ptr %79, i32 6
  %180 = load i8, ptr %179, align 4
  store i8 %180, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 7), align 1
  %181 = getelementptr %struct.usb_string, ptr %79, i32 11
  %182 = load i8, ptr %181, align 4
  store i8 %182, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_in_interface_alt_0_desc, i32 0, i32 8), align 1
  %183 = getelementptr %struct.usb_string, ptr %79, i32 12
  %184 = load i8, ptr %183, align 4
  store i8 %184, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_in_interface_alt_1_desc, i32 0, i32 8), align 1
  %185 = load i8, ptr %103, align 4, !range !9
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %163
  %188 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 13
  %189 = load i8, ptr %188, align 1, !range !9
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %187, %163
  %192 = load ptr, ptr @out_feature_unit_desc, align 4
  %193 = load i8, ptr %192, align 1
  %194 = zext i8 %193 to i32
  %195 = getelementptr i8, ptr %192, i32 %194
  %196 = getelementptr i8, ptr %195, i32 -1
  %197 = getelementptr %struct.usb_string, ptr %79, i32 8
  %198 = load i8, ptr %197, align 4
  store i8 %198, ptr %196, align 1
  br label %199

199:                                              ; preds = %191, %187
  %200 = load i8, ptr %133, align 4, !range !9
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 8
  %204 = load i8, ptr %203, align 1, !range !9
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %214, label %206

206:                                              ; preds = %202, %199
  %207 = load ptr, ptr @in_feature_unit_desc, align 4
  %208 = load i8, ptr %207, align 1
  %209 = zext i8 %208 to i32
  %210 = getelementptr i8, ptr %207, i32 %209
  %211 = getelementptr i8, ptr %210, i32 -1
  %212 = getelementptr %struct.usb_string, ptr %79, i32 7
  %213 = load i8, ptr %212, align 4
  store i8 %213, ptr %211, align 1
  br label %214

214:                                              ; preds = %206, %202
  %215 = load i32, ptr %84, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i8 0, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 6), align 1
  store i16 0, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 7), align 1
  br label %235

218:                                              ; preds = %218, %214
  %219 = phi i32 [ %222, %218 ], [ 0, %214 ]
  %220 = phi i32 [ %223, %218 ], [ %215, %214 ]
  %221 = and i32 %220, 1
  %222 = add i32 %221, %219
  %223 = lshr i32 %220, 1
  %224 = icmp ult i32 %220, 2
  br i1 %224, label %225, label %218

225:                                              ; preds = %218
  %226 = trunc i32 %222 to i8
  store i8 %226, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 6), align 1
  %227 = trunc i32 %215 to i16
  store i16 %227, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 7), align 1
  br label %228

228:                                              ; preds = %228, %225
  %229 = phi i32 [ %232, %228 ], [ 0, %225 ]
  %230 = phi i32 [ %233, %228 ], [ %215, %225 ]
  %231 = and i32 %230, 1
  %232 = add i32 %231, %229
  %233 = lshr i32 %230, 1
  %234 = icmp ult i32 %230, 2
  br i1 %234, label %235, label %228

235:                                              ; preds = %228, %217
  %236 = phi i32 [ 0, %217 ], [ %232, %228 ]
  %237 = trunc i32 %236 to i8
  store i8 %237, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_out_type_i_desc, i32 0, i32 4), align 1
  %238 = load i32, ptr %30, align 4
  %239 = trunc i32 %238 to i8
  store i8 %239, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_out_type_i_desc, i32 0, i32 5), align 1
  %240 = shl i8 %239, 3
  store i8 %240, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_out_type_i_desc, i32 0, i32 6), align 1
  %241 = load i32, ptr %9, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  store i8 0, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 6), align 1
  store i16 0, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 7), align 1
  br label %261

244:                                              ; preds = %244, %235
  %245 = phi i32 [ %248, %244 ], [ 0, %235 ]
  %246 = phi i32 [ %249, %244 ], [ %241, %235 ]
  %247 = and i32 %246, 1
  %248 = add i32 %247, %245
  %249 = lshr i32 %246, 1
  %250 = icmp ult i32 %246, 2
  br i1 %250, label %251, label %244

251:                                              ; preds = %244
  %252 = trunc i32 %248 to i8
  store i8 %252, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 6), align 1
  %253 = trunc i32 %241 to i16
  store i16 %253, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 7), align 1
  br label %254

254:                                              ; preds = %254, %251
  %255 = phi i32 [ %258, %254 ], [ 0, %251 ]
  %256 = phi i32 [ %259, %254 ], [ %241, %251 ]
  %257 = and i32 %256, 1
  %258 = add i32 %257, %255
  %259 = lshr i32 %256, 1
  %260 = icmp ult i32 %256, 2
  br i1 %260, label %261, label %254

261:                                              ; preds = %254, %243
  %262 = phi i32 [ 0, %243 ], [ %258, %254 ]
  %263 = trunc i32 %262 to i8
  store i8 %263, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_in_type_i_desc, i32 0, i32 4), align 1
  %264 = load i32, ptr %25, align 4
  %265 = trunc i32 %264 to i8
  store i8 %265, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_in_type_i_desc, i32 0, i32 5), align 1
  %266 = shl i8 %265, 3
  store i8 %266, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_in_type_i_desc, i32 0, i32 6), align 1
  %267 = load i8, ptr %103, align 4, !range !9
  %268 = icmp eq i8 %267, 0
  %269 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 13
  %270 = load i8, ptr %269, align 1, !range !9
  br i1 %268, label %271, label %273

271:                                              ; preds = %261
  %272 = icmp eq i8 %270, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %271, %261
  %274 = phi i8 [ 1, %271 ], [ %270, %261 ]
  %275 = load ptr, ptr @out_feature_unit_desc, align 4
  %276 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %275, i32 0, i32 6
  %277 = xor i1 %268, true
  %278 = zext i1 %277 to i32
  %279 = icmp eq i8 %274, 0
  %280 = or i32 %278, 2
  %281 = select i1 %279, i32 %278, i32 %280
  %282 = trunc i32 %281 to i16
  store i16 %282, ptr %276, align 2
  br label %283

283:                                              ; preds = %273, %271
  %284 = load i8, ptr %133, align 4, !range !9
  %285 = icmp eq i8 %284, 0
  %286 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 8
  %287 = load i8, ptr %286, align 1, !range !9
  br i1 %285, label %288, label %290

288:                                              ; preds = %283
  %289 = icmp eq i8 %287, 0
  br i1 %289, label %300, label %290

290:                                              ; preds = %288, %283
  %291 = phi i8 [ 1, %288 ], [ %287, %283 ]
  %292 = load ptr, ptr @in_feature_unit_desc, align 4
  %293 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %292, i32 0, i32 6
  %294 = xor i1 %285, true
  %295 = zext i1 %294 to i32
  %296 = icmp eq i8 %291, 0
  %297 = or i32 %295, 2
  %298 = select i1 %296, i32 %295, i32 %297
  %299 = trunc i32 %298 to i16
  store i16 %299, ptr %293, align 2
  br label %300

300:                                              ; preds = %290, %288
  %301 = load i32, ptr %39, align 4
  %302 = trunc i32 %301 to i24
  store i24 %302, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_out_type_i_desc, i32 0, i32 8), align 1
  %303 = load i32, ptr %35, align 4
  %304 = trunc i32 %303 to i24
  store i24 %304, ptr getelementptr inbounds (%struct.uac_format_type_i_discrete_descriptor_1, ptr @as_in_type_i_desc, i32 0, i32 8), align 1
  %305 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #11
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %470, label %307

307:                                              ; preds = %300
  %308 = trunc i32 %305 to i8
  store i8 %308, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 2), align 1
  %309 = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 1
  store i8 %308, ptr %309, align 4
  %310 = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 4
  store i8 0, ptr %310, align 1
  %311 = load i32, ptr %84, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %307
  %314 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #11
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %470, label %316

316:                                              ; preds = %313
  %317 = trunc i32 %314 to i8
  store i8 %317, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_out_interface_alt_0_desc, i32 0, i32 2), align 1
  store i8 %317, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_out_interface_alt_1_desc, i32 0, i32 2), align 1
  %318 = load ptr, ptr @ac_header_desc, align 4
  %319 = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %318, i32 0, i32 6
  store i8 %317, ptr %319, align 1
  %320 = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 3
  store i8 %317, ptr %320, align 2
  %321 = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 6
  store i8 0, ptr %321, align 1
  br label %322

322:                                              ; preds = %316, %307
  %323 = phi i32 [ 1, %316 ], [ 0, %307 ]
  %324 = load i32, ptr %9, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %335, label %326

326:                                              ; preds = %322
  %327 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #11
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %470, label %329

329:                                              ; preds = %326
  %330 = trunc i32 %327 to i8
  store i8 %330, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_in_interface_alt_0_desc, i32 0, i32 2), align 1
  store i8 %330, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @as_in_interface_alt_1_desc, i32 0, i32 2), align 1
  %331 = load ptr, ptr @ac_header_desc, align 4
  %332 = getelementptr %struct.uac1_ac_header_descriptor, ptr %331, i32 0, i32 6, i32 %323
  store i8 %330, ptr %332, align 1
  %333 = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 2
  store i8 %330, ptr %333, align 1
  %334 = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 5
  store i8 0, ptr %334, align 4
  br label %335

335:                                              ; preds = %329, %322
  %336 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 1
  store ptr %5, ptr %336, align 4
  store i8 0, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 4), align 1
  %337 = load i8, ptr %103, align 4, !range !9
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %339, label %350

339:                                              ; preds = %335
  %340 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 13
  %341 = load i8, ptr %340, align 1, !range !9
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %339
  %344 = load i8, ptr %133, align 4, !range !9
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %343
  %347 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 8
  %348 = load i8, ptr %347, align 1, !range !9
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %357, label %350

350:                                              ; preds = %346, %343, %339, %335
  %351 = load ptr, ptr %4, align 4
  %352 = tail call ptr @usb_ep_autoconfig(ptr noundef %351, ptr noundef nonnull @ac_int_ep_desc) #11
  %353 = icmp eq ptr %352, null
  br i1 %353, label %470, label %354

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.f_uac1, ptr %1, i32 0, i32 8
  store ptr %352, ptr %355, align 4
  %356 = getelementptr inbounds %struct.usb_ep, ptr %352, i32 0, i32 9
  store ptr @ac_int_ep_desc, ptr %356, align 4
  store i8 1, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @ac_interface_desc, i32 0, i32 4), align 1
  br label %357

357:                                              ; preds = %354, %346
  %358 = load i32, ptr %84, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %367, label %360

360:                                              ; preds = %357
  %361 = load ptr, ptr %4, align 4
  %362 = tail call ptr @usb_ep_autoconfig(ptr noundef %361, ptr noundef nonnull @as_out_ep_desc) #11
  %363 = icmp eq ptr %362, null
  br i1 %363, label %470, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 3
  store ptr %362, ptr %365, align 4
  %366 = getelementptr inbounds %struct.usb_ep, ptr %362, i32 0, i32 9
  store ptr @as_out_ep_desc, ptr %366, align 4
  br label %367

367:                                              ; preds = %364, %357
  %368 = load i32, ptr %9, align 4
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %377, label %370

370:                                              ; preds = %367
  %371 = load ptr, ptr %4, align 4
  %372 = tail call ptr @usb_ep_autoconfig(ptr noundef %371, ptr noundef nonnull @as_in_ep_desc) #11
  %373 = icmp eq ptr %372, null
  br i1 %373, label %470, label %374

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 2
  store ptr %372, ptr %375, align 4
  %376 = getelementptr inbounds %struct.usb_ep, ptr %372, i32 0, i32 9
  store ptr @as_in_ep_desc, ptr %376, align 4
  br label %377

377:                                              ; preds = %374, %367
  tail call fastcc void @setup_descriptor(ptr noundef %8)
  %378 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @f_audio_desc, ptr noundef nonnull @f_audio_desc, ptr noundef null, ptr noundef null) #11
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %470

380:                                              ; preds = %377
  %381 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @as_out_ep_desc, i32 0, i32 4), align 1
  %382 = zext i16 %381 to i32
  %383 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 6
  store i32 %382, ptr %383, align 4
  %384 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @as_in_ep_desc, i32 0, i32 4), align 1
  %385 = zext i16 %384 to i32
  %386 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 5
  store i32 %385, ptr %386, align 4
  %387 = load i32, ptr %84, align 4
  %388 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9
  %389 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 4
  store i32 %387, ptr %389, align 4
  %390 = load i32, ptr %39, align 4
  %391 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 5
  store i32 %390, ptr %391, align 4
  %392 = load i32, ptr %30, align 4
  %393 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 6
  store i32 %392, ptr %393, align 4
  %394 = load i8, ptr %133, align 4, !range !9
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %380
  %397 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 8
  %398 = load i8, ptr %397, align 1, !range !9
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %417, label %400

400:                                              ; preds = %396, %380
  %401 = load ptr, ptr @in_feature_unit_desc, align 4
  %402 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %401, i32 0, i32 3
  %403 = load i8, ptr %402, align 1
  %404 = zext i8 %403 to i32
  %405 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3
  store i32 %404, ptr %405, align 4
  %406 = load i8, ptr %133, align 4, !range !9
  %407 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 1
  store i8 %406, ptr %407, align 4
  %408 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 8
  %409 = load i8, ptr %408, align 1, !range !9
  %410 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 2
  store i8 %409, ptr %410, align 1
  %411 = load i16, ptr %46, align 2
  %412 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 3
  store i16 %411, ptr %412, align 2
  %413 = load i16, ptr %43, align 4
  %414 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 4
  store i16 %413, ptr %414, align 4
  %415 = load i16, ptr %59, align 2
  %416 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 5
  store i16 %415, ptr %416, align 2
  br label %417

417:                                              ; preds = %400, %396
  %418 = load i32, ptr %9, align 4
  store i32 %418, ptr %388, align 4
  %419 = load i32, ptr %35, align 4
  %420 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 1
  store i32 %419, ptr %420, align 4
  %421 = load i32, ptr %25, align 4
  %422 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 2
  store i32 %421, ptr %422, align 4
  %423 = load i8, ptr %103, align 4, !range !9
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %425, label %429

425:                                              ; preds = %417
  %426 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 13
  %427 = load i8, ptr %426, align 1, !range !9
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %446, label %429

429:                                              ; preds = %425, %417
  %430 = load ptr, ptr @out_feature_unit_desc, align 4
  %431 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %430, i32 0, i32 3
  %432 = load i8, ptr %431, align 1
  %433 = zext i8 %432 to i32
  %434 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7
  store i32 %433, ptr %434, align 4
  %435 = load i8, ptr %103, align 4, !range !9
  %436 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 1
  store i8 %435, ptr %436, align 4
  %437 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 13
  %438 = load i8, ptr %437, align 1, !range !9
  %439 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 2
  store i8 %438, ptr %439, align 1
  %440 = load i16, ptr %54, align 2
  %441 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 3
  store i16 %440, ptr %441, align 2
  %442 = load i16, ptr %51, align 4
  %443 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 4
  store i16 %442, ptr %443, align 4
  %444 = load i16, ptr %64, align 2
  %445 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 5
  store i16 %444, ptr %445, align 2
  br label %446

446:                                              ; preds = %429, %425
  %447 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 17
  %448 = load i32, ptr %447, align 4
  %449 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 8
  store i32 %448, ptr %449, align 4
  %450 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 9
  store i32 5, ptr %450, align 4
  %451 = load i8, ptr %103, align 4, !range !9
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %453, label %464

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 13
  %455 = load i8, ptr %454, align 1, !range !9
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %457, label %464

457:                                              ; preds = %453
  %458 = load i8, ptr %133, align 4, !range !9
  %459 = icmp eq i8 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.f_uac1_opts, ptr %8, i32 0, i32 8
  %462 = load i8, ptr %461, align 1, !range !9
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %466, label %464

464:                                              ; preds = %460, %457, %453, %446
  %465 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 7
  store ptr @audio_notify, ptr %465, align 4
  br label %466

466:                                              ; preds = %464, %460
  %467 = tail call i32 @g_audio_setup(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #11
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %478, label %469

469:                                              ; preds = %466
  tail call void @usb_free_all_descriptors(ptr noundef %1) #11
  br label %470

470:                                              ; preds = %469, %377, %370, %360, %350, %326, %313, %300, %157
  %471 = phi i32 [ %305, %300 ], [ %314, %313 ], [ %327, %326 ], [ %378, %377 ], [ %467, %469 ], [ -19, %370 ], [ -19, %360 ], [ -19, %350 ], [ -12, %157 ]
  %472 = load ptr, ptr @out_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %472) #11
  store ptr null, ptr @out_feature_unit_desc, align 4
  %473 = load ptr, ptr @in_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %473) #11
  br label %474

474:                                              ; preds = %470, %122
  %475 = phi ptr [ @in_feature_unit_desc, %470 ], [ @out_feature_unit_desc, %122 ]
  %476 = phi i32 [ %471, %470 ], [ -12, %122 ]
  store ptr null, ptr %475, align 4
  %477 = load ptr, ptr @ac_header_desc, align 4
  tail call void @kfree(ptr noundef %477) #11
  store ptr null, ptr @ac_header_desc, align 4
  br label %478

478:                                              ; preds = %474, %466, %95, %81, %76
  %479 = phi i32 [ %82, %81 ], [ %476, %474 ], [ -22, %76 ], [ 0, %466 ], [ -12, %95 ]
  ret i32 %479
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_audio_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @g_audio_cleanup(ptr noundef %1) #11
  tail call void @usb_free_all_descriptors(ptr noundef %1) #11
  %3 = load ptr, ptr @out_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %3) #11
  store ptr null, ptr @out_feature_unit_desc, align 4
  %4 = load ptr, ptr @in_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %4) #11
  store ptr null, ptr @in_feature_unit_desc, align 4
  %5 = load ptr, ptr @ac_header_desc, align 4
  tail call void @kfree(ptr noundef %5) #11
  store ptr null, ptr @ac_header_desc, align 4
  %6 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 1
  store ptr null, ptr %6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_audio_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 11
  %10 = icmp ugt i32 %2, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.f_audio_set_alt, i32 noundef 831) #13
  br label %55

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.f_audio_set_alt, i32 noundef 838) #13
  br label %55

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @usb_ep_disable(ptr noundef nonnull %22) #11
  %26 = load ptr, ptr %21, align 4
  %27 = tail call i32 @config_ep_by_speed(ptr noundef %8, ptr noundef %0, ptr noundef %26) #11
  %28 = load ptr, ptr %21, align 4
  %29 = tail call i32 @usb_ep_enable(ptr noundef %28) #11
  br label %55

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 3
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = trunc i32 %2 to i8
  %37 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 6
  store i8 %36, ptr %37, align 1
  %38 = icmp eq i32 %2, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @u_audio_start_capture(ptr noundef %0) #11
  br label %55

41:                                               ; preds = %35
  tail call void @u_audio_stop_capture(ptr noundef %0) #11
  br label %55

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 2
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = trunc i32 %2 to i8
  %49 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 5
  store i8 %48, ptr %49, align 4
  %50 = icmp eq i32 %2, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @u_audio_start_playback(ptr noundef %0) #11
  br label %55

53:                                               ; preds = %47
  tail call void @u_audio_stop_playback(ptr noundef %0) #11
  br label %55

54:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.f_audio_set_alt, i32 noundef 867) #13
  br label %55

55:                                               ; preds = %54, %53, %51, %41, %39, %24, %20, %19, %11
  %56 = phi i32 [ -22, %11 ], [ -22, %19 ], [ -22, %54 ], [ 0, %24 ], [ 0, %20 ], [ %40, %39 ], [ 0, %41 ], [ %52, %51 ], [ 0, %53 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_audio_get_alt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_configuration, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.usb_gadget, ptr %7, i32 0, i32 11
  %9 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  br label %36

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 3
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  br label %36

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 5
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  br label %36

35:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.f_audio_get_alt, i32 noundef 889, i32 noundef %1) #13
  br label %36

36:                                               ; preds = %35, %31, %22, %13
  %37 = phi i32 [ %16, %13 ], [ %25, %22 ], [ %34, %31 ], [ -22, %35 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_audio_setup(ptr noundef %0, ptr noundef readonly %1) #2 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_configuration, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_composite_dev, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %1, align 1
  switch i8 %15, label %380 [
    i8 34, label %16
    i8 -94, label %24
    i8 33, label %33
    i8 -95, label %87
  ]

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %410

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i32
  br label %396

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = add i8 %26, 127
  %28 = icmp ult i8 %27, 4
  br i1 %28, label %29, label %410

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %31 = load i16, ptr %30, align 1
  %32 = zext i16 %31 to i32
  br label %396

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %410

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %41 = load i16, ptr %40, align 1
  %42 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %43 = load i16, ptr %42, align 1
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %45 = load i16, ptr %44, align 1
  %46 = lshr i16 %43, 8
  %47 = lshr i16 %45, 8
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds %struct.f_uac1_opts, ptr %39, i32 0, i32 7
  %50 = load i8, ptr %49, align 4, !range !9
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.f_uac1_opts, ptr %39, i32 0, i32 8
  %54 = load i8, ptr %53, align 1, !range !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52, %37
  %57 = load ptr, ptr @in_feature_unit_desc, align 4
  %58 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %57, i32 0, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i16
  %61 = icmp eq i16 %46, %60
  br i1 %61, label %76, label %62

62:                                               ; preds = %56, %52
  %63 = getelementptr inbounds %struct.f_uac1_opts, ptr %39, i32 0, i32 12
  %64 = load i8, ptr %63, align 4, !range !9
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.f_uac1_opts, ptr %39, i32 0, i32 13
  %68 = load i8, ptr %67, align 1, !range !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %66, %62
  %71 = load ptr, ptr @out_feature_unit_desc, align 4
  %72 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %71, i32 0, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i16
  %75 = icmp eq i16 %46, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70, %56
  %77 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 7
  %78 = load i64, ptr %1, align 1
  store i64 %78, ptr %77, align 2
  %79 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 8
  store ptr %0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 7
  store ptr @out_rq_cur_complete, ptr %80, align 4
  %81 = zext i16 %41 to i32
  br label %396

82:                                               ; preds = %70, %66
  %83 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.usb_gadget, ptr %84, i32 0, i32 11
  %86 = zext i16 %46 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.out_rq_cur, i32 noundef 668, i32 noundef %86, i32 noundef %48) #13
  br label %410

87:                                               ; preds = %2
  %88 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %89 = load i8, ptr %88, align 1
  switch i8 %89, label %410 [
    i8 -127, label %90
    i8 -126, label %166
    i8 -125, label %236
    i8 -124, label %306
    i8 -1, label %376
  ]

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %94 = load i16, ptr %93, align 1
  %95 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %96 = load i16, ptr %95, align 1
  %97 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %98 = load i16, ptr %97, align 1
  %99 = lshr i16 %96, 8
  %100 = lshr i16 %98, 8
  %101 = zext i16 %100 to i32
  %102 = getelementptr inbounds %struct.f_uac1_opts, ptr %92, i32 0, i32 7
  %103 = load i8, ptr %102, align 4, !range !9
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %90
  %106 = getelementptr inbounds %struct.f_uac1_opts, ptr %92, i32 0, i32 8
  %107 = load i8, ptr %106, align 1, !range !9
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %105, %90
  %110 = load ptr, ptr @in_feature_unit_desc, align 4
  %111 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %110, i32 0, i32 3
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i16
  %114 = icmp eq i16 %99, %113
  br i1 %114, label %129, label %115

115:                                              ; preds = %109, %105
  %116 = getelementptr inbounds %struct.f_uac1_opts, ptr %92, i32 0, i32 12
  %117 = load i8, ptr %116, align 4, !range !9
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.f_uac1_opts, ptr %92, i32 0, i32 13
  %121 = load i8, ptr %120, align 1, !range !9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %161, label %123

123:                                              ; preds = %119, %115
  %124 = load ptr, ptr @out_feature_unit_desc, align 4
  %125 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %124, i32 0, i32 3
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i16
  %128 = icmp eq i16 %99, %127
  br i1 %128, label %129, label %161

129:                                              ; preds = %123, %109
  br i1 %104, label %130, label %134

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.f_uac1_opts, ptr %92, i32 0, i32 8
  %132 = load i8, ptr %131, align 1, !range !9
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %130, %129
  %135 = load ptr, ptr @in_feature_unit_desc, align 4
  %136 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %135, i32 0, i32 3
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i16
  %139 = icmp eq i16 %99, %138
  %140 = zext i1 %139 to i32
  br label %141

141:                                              ; preds = %134, %130
  %142 = phi i32 [ 0, %130 ], [ %140, %134 ]
  %143 = trunc i16 %100 to i8
  switch i8 %143, label %157 [
    i8 1, label %144
    i8 2, label %151
  ]

144:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %145 = call i32 @u_audio_get_mute(ptr noundef %0, i32 noundef %142, ptr noundef nonnull %6) #11
  %146 = load i32, ptr %6, align 4
  %147 = trunc i32 %146 to i8
  %148 = load ptr, ptr %14, align 4
  store i8 %147, ptr %148, align 1
  %149 = icmp ne i16 %94, 0
  %150 = zext i1 %149 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %396

151:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i16 0, ptr %8, align 2, !annotation !8
  %152 = call i32 @u_audio_get_volume(ptr noundef %0, i32 noundef %142, ptr noundef nonnull %8) #11
  %153 = load i16, ptr %8, align 2
  store i16 %153, ptr %7, align 2
  %154 = call i16 @llvm.umin.i16(i16 %94, i16 2) #11
  %155 = zext i16 %154 to i32
  %156 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %156, ptr nonnull align 2 %7, i32 %155, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7)
  br label %396

157:                                              ; preds = %141
  %158 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.usb_gadget, ptr %159, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.in_rq_cur, i32 noundef 439, i32 noundef %101) #13
  br label %410

161:                                              ; preds = %123, %119
  %162 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.usb_gadget, ptr %163, i32 0, i32 11
  %165 = zext i16 %99 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.in_rq_cur, i32 noundef 444, i32 noundef %165, i32 noundef %101) #13
  br label %410

166:                                              ; preds = %87
  %167 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %170 = load i16, ptr %169, align 1
  %171 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %172 = load i16, ptr %171, align 1
  %173 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %174 = load i16, ptr %173, align 1
  %175 = lshr i16 %172, 8
  %176 = lshr i16 %174, 8
  %177 = zext i16 %176 to i32
  %178 = getelementptr inbounds %struct.f_uac1_opts, ptr %168, i32 0, i32 7
  %179 = load i8, ptr %178, align 4, !range !9
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %166
  %182 = getelementptr inbounds %struct.f_uac1_opts, ptr %168, i32 0, i32 8
  %183 = load i8, ptr %182, align 1, !range !9
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %181, %166
  %186 = load ptr, ptr @in_feature_unit_desc, align 4
  %187 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %186, i32 0, i32 3
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i16
  %190 = icmp eq i16 %175, %189
  br i1 %190, label %205, label %191

191:                                              ; preds = %185, %181
  %192 = getelementptr inbounds %struct.f_uac1_opts, ptr %168, i32 0, i32 12
  %193 = load i8, ptr %192, align 4, !range !9
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.f_uac1_opts, ptr %168, i32 0, i32 13
  %197 = load i8, ptr %196, align 1, !range !9
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %231, label %199

199:                                              ; preds = %195, %191
  %200 = load ptr, ptr @out_feature_unit_desc, align 4
  %201 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %200, i32 0, i32 3
  %202 = load i8, ptr %201, align 1
  %203 = zext i8 %202 to i16
  %204 = icmp eq i16 %175, %203
  br i1 %204, label %205, label %231

205:                                              ; preds = %199, %185
  br i1 %180, label %206, label %210

206:                                              ; preds = %205
  %207 = getelementptr inbounds %struct.f_uac1_opts, ptr %168, i32 0, i32 8
  %208 = load i8, ptr %207, align 1, !range !9
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %206, %205
  %211 = load ptr, ptr @in_feature_unit_desc, align 4
  %212 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %211, i32 0, i32 3
  %213 = load i8, ptr %212, align 1
  %214 = zext i8 %213 to i16
  %215 = icmp ne i16 %175, %214
  br label %216

216:                                              ; preds = %210, %206
  %217 = phi i1 [ true, %206 ], [ %215, %210 ]
  %218 = icmp eq i16 %176, 2
  br i1 %218, label %219, label %227

219:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5)
  %220 = getelementptr inbounds %struct.f_uac1_opts, ptr %168, i32 0, i32 9
  %221 = getelementptr inbounds %struct.f_uac1_opts, ptr %168, i32 0, i32 14
  %222 = select i1 %217, ptr %221, ptr %220
  %223 = load i16, ptr %222, align 2
  store i16 %223, ptr %5, align 2
  %224 = tail call i16 @llvm.umin.i16(i16 %170, i16 2) #11
  %225 = zext i16 %224 to i32
  %226 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %226, ptr nonnull align 2 %5, i32 %225, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5)
  br label %396

227:                                              ; preds = %216
  %228 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.usb_gadget, ptr %229, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.in_rq_min, i32 noundef 486, i32 noundef %177) #13
  br label %410

231:                                              ; preds = %199, %195
  %232 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.usb_gadget, ptr %233, i32 0, i32 11
  %235 = zext i16 %175 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.in_rq_min, i32 noundef 491, i32 noundef %235, i32 noundef %177) #13
  br label %410

236:                                              ; preds = %87
  %237 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %238 = load ptr, ptr %237, align 4
  %239 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %240 = load i16, ptr %239, align 1
  %241 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %242 = load i16, ptr %241, align 1
  %243 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %244 = load i16, ptr %243, align 1
  %245 = lshr i16 %242, 8
  %246 = lshr i16 %244, 8
  %247 = zext i16 %246 to i32
  %248 = getelementptr inbounds %struct.f_uac1_opts, ptr %238, i32 0, i32 7
  %249 = load i8, ptr %248, align 4, !range !9
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %236
  %252 = getelementptr inbounds %struct.f_uac1_opts, ptr %238, i32 0, i32 8
  %253 = load i8, ptr %252, align 1, !range !9
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %251, %236
  %256 = load ptr, ptr @in_feature_unit_desc, align 4
  %257 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %256, i32 0, i32 3
  %258 = load i8, ptr %257, align 1
  %259 = zext i8 %258 to i16
  %260 = icmp eq i16 %245, %259
  br i1 %260, label %275, label %261

261:                                              ; preds = %255, %251
  %262 = getelementptr inbounds %struct.f_uac1_opts, ptr %238, i32 0, i32 12
  %263 = load i8, ptr %262, align 4, !range !9
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.f_uac1_opts, ptr %238, i32 0, i32 13
  %267 = load i8, ptr %266, align 1, !range !9
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %301, label %269

269:                                              ; preds = %265, %261
  %270 = load ptr, ptr @out_feature_unit_desc, align 4
  %271 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %270, i32 0, i32 3
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i16
  %274 = icmp eq i16 %245, %273
  br i1 %274, label %275, label %301

275:                                              ; preds = %269, %255
  br i1 %250, label %276, label %280

276:                                              ; preds = %275
  %277 = getelementptr inbounds %struct.f_uac1_opts, ptr %238, i32 0, i32 8
  %278 = load i8, ptr %277, align 1, !range !9
  %279 = icmp eq i8 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %276, %275
  %281 = load ptr, ptr @in_feature_unit_desc, align 4
  %282 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %281, i32 0, i32 3
  %283 = load i8, ptr %282, align 1
  %284 = zext i8 %283 to i16
  %285 = icmp ne i16 %245, %284
  br label %286

286:                                              ; preds = %280, %276
  %287 = phi i1 [ true, %276 ], [ %285, %280 ]
  %288 = icmp eq i16 %246, 2
  br i1 %288, label %289, label %297

289:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4)
  %290 = getelementptr inbounds %struct.f_uac1_opts, ptr %238, i32 0, i32 10
  %291 = getelementptr inbounds %struct.f_uac1_opts, ptr %238, i32 0, i32 15
  %292 = select i1 %287, ptr %291, ptr %290
  %293 = load i16, ptr %292, align 4
  store i16 %293, ptr %4, align 2
  %294 = tail call i16 @llvm.umin.i16(i16 %240, i16 2) #11
  %295 = zext i16 %294 to i32
  %296 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %296, ptr nonnull align 2 %4, i32 %295, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4)
  br label %396

297:                                              ; preds = %286
  %298 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.usb_gadget, ptr %299, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %300, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.in_rq_max, i32 noundef 533, i32 noundef %247) #13
  br label %410

301:                                              ; preds = %269, %265
  %302 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr inbounds %struct.usb_gadget, ptr %303, i32 0, i32 11
  %305 = zext i16 %245 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %304, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.in_rq_max, i32 noundef 538, i32 noundef %305, i32 noundef %247) #13
  br label %410

306:                                              ; preds = %87
  %307 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %308 = load ptr, ptr %307, align 4
  %309 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %310 = load i16, ptr %309, align 1
  %311 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %312 = load i16, ptr %311, align 1
  %313 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %314 = load i16, ptr %313, align 1
  %315 = lshr i16 %312, 8
  %316 = lshr i16 %314, 8
  %317 = zext i16 %316 to i32
  %318 = getelementptr inbounds %struct.f_uac1_opts, ptr %308, i32 0, i32 7
  %319 = load i8, ptr %318, align 4, !range !9
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %321, label %325

321:                                              ; preds = %306
  %322 = getelementptr inbounds %struct.f_uac1_opts, ptr %308, i32 0, i32 8
  %323 = load i8, ptr %322, align 1, !range !9
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %321, %306
  %326 = load ptr, ptr @in_feature_unit_desc, align 4
  %327 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %326, i32 0, i32 3
  %328 = load i8, ptr %327, align 1
  %329 = zext i8 %328 to i16
  %330 = icmp eq i16 %315, %329
  br i1 %330, label %345, label %331

331:                                              ; preds = %325, %321
  %332 = getelementptr inbounds %struct.f_uac1_opts, ptr %308, i32 0, i32 12
  %333 = load i8, ptr %332, align 4, !range !9
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.f_uac1_opts, ptr %308, i32 0, i32 13
  %337 = load i8, ptr %336, align 1, !range !9
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %371, label %339

339:                                              ; preds = %335, %331
  %340 = load ptr, ptr @out_feature_unit_desc, align 4
  %341 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %340, i32 0, i32 3
  %342 = load i8, ptr %341, align 1
  %343 = zext i8 %342 to i16
  %344 = icmp eq i16 %315, %343
  br i1 %344, label %345, label %371

345:                                              ; preds = %339, %325
  br i1 %320, label %346, label %350

346:                                              ; preds = %345
  %347 = getelementptr inbounds %struct.f_uac1_opts, ptr %308, i32 0, i32 8
  %348 = load i8, ptr %347, align 1, !range !9
  %349 = icmp eq i8 %348, 0
  br i1 %349, label %356, label %350

350:                                              ; preds = %346, %345
  %351 = load ptr, ptr @in_feature_unit_desc, align 4
  %352 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %351, i32 0, i32 3
  %353 = load i8, ptr %352, align 1
  %354 = zext i8 %353 to i16
  %355 = icmp ne i16 %315, %354
  br label %356

356:                                              ; preds = %350, %346
  %357 = phi i1 [ true, %346 ], [ %355, %350 ]
  %358 = icmp eq i16 %316, 2
  br i1 %358, label %359, label %367

359:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3)
  %360 = getelementptr inbounds %struct.f_uac1_opts, ptr %308, i32 0, i32 11
  %361 = getelementptr inbounds %struct.f_uac1_opts, ptr %308, i32 0, i32 16
  %362 = select i1 %357, ptr %361, ptr %360
  %363 = load i16, ptr %362, align 2
  store i16 %363, ptr %3, align 2
  %364 = tail call i16 @llvm.umin.i16(i16 %310, i16 2) #11
  %365 = zext i16 %364 to i32
  %366 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %366, ptr nonnull align 2 %3, i32 %365, i1 false) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3)
  br label %396

367:                                              ; preds = %356
  %368 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %369 = load ptr, ptr %368, align 4
  %370 = getelementptr inbounds %struct.usb_gadget, ptr %369, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %370, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.in_rq_res, i32 noundef 580, i32 noundef %317) #13
  br label %410

371:                                              ; preds = %339, %335
  %372 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.usb_gadget, ptr %373, i32 0, i32 11
  %375 = zext i16 %315 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %374, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.in_rq_res, i32 noundef 585, i32 noundef %375, i32 noundef %317) #13
  br label %410

376:                                              ; preds = %87
  %377 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %378 = load i16, ptr %377, align 1
  %379 = zext i16 %378 to i32
  br label %396

380:                                              ; preds = %2
  %381 = zext i8 %15 to i32
  %382 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %383 = load i16, ptr %382, align 1
  %384 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %385 = load i16, ptr %384, align 1
  %386 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %387 = load i16, ptr %386, align 1
  %388 = load ptr, ptr %12, align 4
  %389 = getelementptr inbounds %struct.usb_gadget, ptr %388, i32 0, i32 11
  %390 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %391 = load i8, ptr %390, align 1
  %392 = zext i8 %391 to i32
  %393 = zext i16 %385 to i32
  %394 = zext i16 %387 to i32
  %395 = zext i16 %383 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %389, ptr noundef nonnull @.str.53, i32 noundef %381, i32 noundef %392, i32 noundef %393, i32 noundef %394, i32 noundef %395) #13
  br label %410

396:                                              ; preds = %376, %359, %289, %219, %151, %144, %76, %29, %20
  %397 = phi i32 [ %23, %20 ], [ %32, %29 ], [ %81, %76 ], [ %379, %376 ], [ %150, %144 ], [ %155, %151 ], [ %225, %219 ], [ %295, %289 ], [ %365, %359 ]
  %398 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 6
  %399 = load i32, ptr %398, align 4
  %400 = and i32 %399, -262145
  store i32 %400, ptr %398, align 4
  %401 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 1
  store i32 %397, ptr %401, align 4
  %402 = load ptr, ptr %12, align 4
  %403 = getelementptr inbounds %struct.usb_gadget, ptr %402, i32 0, i32 3
  %404 = load ptr, ptr %403, align 8
  %405 = call i32 @usb_ep_queue(ptr noundef %404, ptr noundef %14, i32 noundef 2592) #11
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %396
  %408 = load ptr, ptr %12, align 4
  %409 = getelementptr inbounds %struct.usb_gadget, ptr %408, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %409, ptr noundef nonnull @.str.54, i32 noundef %405) #13
  br label %410

410:                                              ; preds = %407, %396, %380, %371, %367, %301, %297, %231, %227, %161, %157, %87, %82, %33, %24, %16
  %411 = phi i32 [ %405, %407 ], [ %405, %396 ], [ -95, %380 ], [ -95, %33 ], [ -95, %16 ], [ -95, %24 ], [ -95, %82 ], [ -95, %87 ], [ -95, %161 ], [ -95, %157 ], [ -95, %231 ], [ -95, %227 ], [ -95, %301 ], [ -95, %297 ], [ -95, %371 ], [ -95, %367 ]
  ret i32 %411
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_audio_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 6
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 5
  store i8 0, ptr %3, align 4
  tail call void @u_audio_stop_playback(ptr noundef %0) #11
  tail call void @u_audio_stop_capture(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @usb_ep_disable(ptr noundef nonnull %5) #11
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_audio_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.f_uac1_opts, ptr %3, i32 0, i32 19
  tail call void @mutex_lock(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.f_uac1_opts, ptr %3, i32 0, i32 20
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @setup_descriptor(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i8 1, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i32 [ 2, %5 ], [ 1, %1 ]
  %8 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %7, 1
  %13 = trunc i32 %7 to i8
  store i8 %13, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %12, %11 ], [ %7, %6 ]
  br i1 %4, label %19, label %16

16:                                               ; preds = %14
  %17 = add nuw nsw i32 %15, 1
  %18 = trunc i32 %15 to i8
  store i8 %18, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 3), align 1
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %17, %16 ], [ %15, %14 ]
  br i1 %10, label %24, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i32 %20, 1
  %23 = trunc i32 %20 to i8
  store i8 %23, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 3), align 1
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %22, %21 ], [ %20, %19 ]
  %26 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 12
  %27 = load i8, ptr %26, align 4, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 13
  %31 = load i8, ptr %30, align 1, !range !9
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29, %24
  %34 = add nuw nsw i32 %25, 1
  %35 = trunc i32 %25 to i8
  %36 = load ptr, ptr @out_feature_unit_desc, align 4
  %37 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %36, i32 0, i32 3
  store i8 %35, ptr %37, align 1
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i32 [ %34, %33 ], [ %25, %29 ]
  %40 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 7
  %41 = load i8, ptr %40, align 4, !range !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 8
  %45 = load i8, ptr %44, align 1, !range !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43, %38
  %48 = trunc i32 %39 to i8
  %49 = load ptr, ptr @in_feature_unit_desc, align 4
  %50 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %49, i32 0, i32 3
  store i8 %48, ptr %50, align 1
  %51 = load i8, ptr %40, align 4, !range !9
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47, %43
  %54 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 8
  %55 = load i8, ptr %54, align 1, !range !9
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53, %47
  %58 = load ptr, ptr @in_feature_unit_desc, align 4
  %59 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %58, i32 0, i32 3
  %60 = load i8, ptr %59, align 1
  store i8 %60, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 6), align 1
  %61 = load i8, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  %62 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %58, i32 0, i32 4
  store i8 %61, ptr %62, align 1
  br label %65

63:                                               ; preds = %53
  %64 = load i8, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  store i8 %64, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 6), align 1
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i8, ptr %26, align 4, !range !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 13
  %70 = load i8, ptr %69, align 1, !range !9
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68, %65
  %73 = load ptr, ptr @out_feature_unit_desc, align 4
  %74 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %73, i32 0, i32 3
  %75 = load i8, ptr %74, align 1
  store i8 %75, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 6), align 1
  %76 = load i8, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  %77 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %73, i32 0, i32 4
  store i8 %76, ptr %77, align 1
  br label %80

78:                                               ; preds = %68
  %79 = load i8, ptr getelementptr inbounds (%struct.uac_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  store i8 %79, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 6), align 1
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi i8 [ %79, %78 ], [ %76, %72 ]
  store i8 %81, ptr getelementptr inbounds (%struct.uac1_as_header_descriptor, ptr @as_out_header_desc, i32 0, i32 3), align 1
  %82 = load i8, ptr getelementptr inbounds (%struct.uac1_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 3), align 1
  store i8 %82, ptr getelementptr inbounds (%struct.uac1_as_header_descriptor, ptr @as_in_header_desc, i32 0, i32 3), align 1
  %83 = load ptr, ptr @ac_header_desc, align 4
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i16
  %86 = getelementptr inbounds %struct.uac1_ac_header_descriptor, ptr %83, i32 0, i32 4
  store i16 %85, ptr %86, align 1
  %87 = load i32, ptr %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %80
  %90 = add nuw nsw i16 %85, 21
  %91 = load i8, ptr %40, align 4, !range !9
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 8
  %95 = load i8, ptr %94, align 1, !range !9
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93, %89
  %98 = load ptr, ptr @in_feature_unit_desc, align 4
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i16
  %101 = add nuw nsw i16 %90, %100
  br label %102

102:                                              ; preds = %97, %93
  %103 = phi i16 [ %101, %97 ], [ %90, %93 ]
  store i16 %103, ptr %86, align 1
  br label %104

104:                                              ; preds = %102, %80
  %105 = phi i16 [ %103, %102 ], [ %85, %80 ]
  %106 = load i32, ptr %2, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store ptr @ac_interface_desc, ptr @f_audio_desc, align 4
  store ptr %83, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 1), align 4
  br label %135

109:                                              ; preds = %104
  %110 = add nuw nsw i16 %105, 21
  %111 = load i8, ptr %26, align 4, !range !9
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 13
  %115 = load i8, ptr %114, align 1, !range !9
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %113, %109
  %118 = load ptr, ptr @out_feature_unit_desc, align 4
  %119 = load i8, ptr %118, align 1
  %120 = zext i8 %119 to i16
  %121 = add nuw nsw i16 %110, %120
  br label %122

122:                                              ; preds = %117, %113
  %123 = phi i16 [ %121, %117 ], [ %110, %113 ]
  store i16 %123, ptr %86, align 1
  %124 = load i32, ptr %2, align 4
  store ptr @ac_interface_desc, ptr @f_audio_desc, align 4
  store ptr %83, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 1), align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %135, label %126

126:                                              ; preds = %122
  store ptr @usb_out_it_desc, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 2), align 4
  store ptr @io_out_ot_desc, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 3), align 4
  %127 = load i8, ptr %26, align 4, !range !9
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 13
  %131 = load i8, ptr %130, align 1, !range !9
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129, %126
  %134 = load ptr, ptr @out_feature_unit_desc, align 4
  store ptr %134, ptr getelementptr inbounds ([22 x ptr], ptr @f_audio_desc, i32 0, i32 4), align 4
  br label %135

135:                                              ; preds = %133, %129, %122, %108
  %136 = phi i32 [ 5, %133 ], [ 4, %129 ], [ 2, %122 ], [ 2, %108 ]
  %137 = load i32, ptr %8, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %135
  %140 = add nuw nsw i32 %136, 1
  %141 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %136
  store ptr @io_in_it_desc, ptr %141, align 4
  %142 = add nuw nsw i32 %136, 2
  %143 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %140
  store ptr @usb_in_ot_desc, ptr %143, align 4
  %144 = load i8, ptr %40, align 4, !range !9
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 8
  %148 = load i8, ptr %147, align 1, !range !9
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146, %139
  %151 = load ptr, ptr @in_feature_unit_desc, align 4
  %152 = add nuw nsw i32 %136, 3
  %153 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %142
  store ptr %151, ptr %153, align 4
  br label %154

154:                                              ; preds = %150, %146, %135
  %155 = phi i32 [ %152, %150 ], [ %142, %146 ], [ %136, %135 ]
  %156 = load i8, ptr %26, align 4, !range !9
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 13
  %160 = load i8, ptr %159, align 1, !range !9
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i8, ptr %40, align 4, !range !9
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.f_uac1_opts, ptr %0, i32 0, i32 8
  %167 = load i8, ptr %166, align 1, !range !9
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165, %162, %158, %154
  %170 = add nuw nsw i32 %155, 1
  %171 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %155
  store ptr @ac_int_ep_desc, ptr %171, align 4
  br label %172

172:                                              ; preds = %169, %165
  %173 = phi i32 [ %170, %169 ], [ %155, %165 ]
  %174 = load i32, ptr %2, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %189, label %176

176:                                              ; preds = %172
  %177 = add nuw nsw i32 %173, 1
  %178 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %173
  store ptr @as_out_interface_alt_0_desc, ptr %178, align 4
  %179 = add nuw nsw i32 %173, 2
  %180 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %177
  store ptr @as_out_interface_alt_1_desc, ptr %180, align 4
  %181 = add nuw nsw i32 %173, 3
  %182 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %179
  store ptr @as_out_header_desc, ptr %182, align 4
  %183 = add nuw nsw i32 %173, 4
  %184 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %181
  store ptr @as_out_type_i_desc, ptr %184, align 4
  %185 = add nuw nsw i32 %173, 5
  %186 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %183
  store ptr @as_out_ep_desc, ptr %186, align 4
  %187 = add nuw nsw i32 %173, 6
  %188 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %185
  store ptr @as_iso_out_desc, ptr %188, align 4
  br label %189

189:                                              ; preds = %176, %172
  %190 = phi i32 [ %187, %176 ], [ %173, %172 ]
  %191 = load i32, ptr %8, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %206, label %193

193:                                              ; preds = %189
  %194 = add nuw nsw i32 %190, 1
  %195 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %190
  store ptr @as_in_interface_alt_0_desc, ptr %195, align 4
  %196 = add nuw nsw i32 %190, 2
  %197 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %194
  store ptr @as_in_interface_alt_1_desc, ptr %197, align 4
  %198 = add nuw nsw i32 %190, 3
  %199 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %196
  store ptr @as_in_header_desc, ptr %199, align 4
  %200 = add nuw nsw i32 %190, 4
  %201 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %198
  store ptr @as_in_type_i_desc, ptr %201, align 4
  %202 = add nuw nsw i32 %190, 5
  %203 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %200
  store ptr @as_in_ep_desc, ptr %203, align 4
  %204 = add nuw nsw i32 %190, 6
  %205 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %202
  store ptr @as_iso_in_desc, ptr %205, align 4
  br label %206

206:                                              ; preds = %193, %189
  %207 = phi i32 [ %204, %193 ], [ %190, %189 ]
  %208 = getelementptr [22 x ptr], ptr @f_audio_desc, i32 0, i32 %207
  store ptr null, ptr %208, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @audio_notify(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 6
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_uac1, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #11, !srcloc !11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #11, !srcloc !12
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !13
  %13 = icmp sgt i32 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #11, !srcloc !11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #11, !srcloc !14
  br label %40

16:                                               ; preds = %9
  %17 = load ptr, ptr %4, align 4
  %18 = tail call ptr @usb_ep_alloc_request(ptr noundef %17, i32 noundef 2592) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2592, i32 noundef 2) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  store i8 -128, ptr %22, align 8
  %25 = trunc i32 %1 to i8
  %26 = getelementptr inbounds %struct.uac1_status_word, ptr %22, i32 0, i32 1
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 1
  store i32 2, ptr %27, align 4
  store ptr %22, ptr %18, align 4
  %28 = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 8
  store ptr %0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 7
  store ptr @audio_notify_complete, ptr %29, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = tail call i32 @usb_ep_queue(ptr noundef %30, ptr noundef nonnull %18, i32 noundef 2592) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %22) #11
  br label %34

34:                                               ; preds = %33, %20
  %35 = phi i32 [ %31, %33 ], [ -12, %20 ]
  %36 = load ptr, ptr %4, align 4
  tail call void @usb_ep_free_request(ptr noundef %36, ptr noundef nonnull %18) #11
  br label %37

37:                                               ; preds = %34, %16
  %38 = phi i32 [ %35, %34 ], [ -12, %16 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #11, !srcloc !11
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #11, !srcloc !14
  br label %40

40:                                               ; preds = %37, %24, %14, %3
  %41 = phi i32 [ 0, %14 ], [ %38, %37 ], [ 0, %3 ], [ 0, %24 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g_audio_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @audio_notify_complete(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.f_uac1, ptr %4, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #11, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #11, !srcloc !14
  %7 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %7) #11
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_queue(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_free_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @g_audio_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_ep_by_speed(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_start_capture(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @u_audio_stop_capture(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_start_playback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @u_audio_stop_playback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @out_rq_cur_complete(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_function, ptr %4, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.f_uac1, ptr %4, i32 0, i32 7, i32 3
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.f_uac1, ptr %4, i32 0, i32 7, i32 2
  %10 = load i16, ptr %9, align 1
  %11 = lshr i16 %8, 8
  %12 = lshr i16 %10, 8
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %80

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.f_uac1_opts, ptr %6, i32 0, i32 7
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.f_uac1_opts, ptr %6, i32 0, i32 8
  %23 = load i8, ptr %22, align 1, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %17
  %26 = load ptr, ptr @in_feature_unit_desc, align 4
  %27 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %26, i32 0, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i16
  %30 = icmp eq i16 %11, %29
  br i1 %30, label %45, label %31

31:                                               ; preds = %25, %21
  %32 = getelementptr inbounds %struct.f_uac1_opts, ptr %6, i32 0, i32 12
  %33 = load i8, ptr %32, align 4, !range !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.f_uac1_opts, ptr %6, i32 0, i32 13
  %37 = load i8, ptr %36, align 1, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %35, %31
  %40 = load ptr, ptr @out_feature_unit_desc, align 4
  %41 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %40, i32 0, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i16
  %44 = icmp eq i16 %11, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39, %25
  br i1 %20, label %46, label %50

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.f_uac1_opts, ptr %6, i32 0, i32 8
  %48 = load i8, ptr %47, align 1, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46, %45
  %51 = load ptr, ptr @in_feature_unit_desc, align 4
  %52 = getelementptr inbounds %struct.uac_feature_unit_descriptor, ptr %51, i32 0, i32 3
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i16
  %55 = icmp eq i16 %11, %54
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %50, %46
  %58 = phi i32 [ 0, %46 ], [ %56, %50 ]
  %59 = trunc i16 %12 to i8
  switch i8 %59, label %69 [
    i8 1, label %60
    i8 2, label %65
  ]

60:                                               ; preds = %57
  %61 = load ptr, ptr %1, align 4
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = tail call i32 @u_audio_set_mute(ptr noundef %4, i32 noundef %58, i32 noundef %63) #11
  br label %80

65:                                               ; preds = %57
  %66 = load ptr, ptr %1, align 4
  %67 = load i16, ptr %66, align 2
  %68 = tail call i32 @u_audio_set_volume(ptr noundef %4, i32 noundef %58, i16 noundef signext %67) #11
  br label %80

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.g_audio, ptr %4, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.usb_gadget, ptr %71, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.out_rq_cur_complete, i32 noundef 633, i32 noundef %13) #13
  %73 = tail call i32 @usb_ep_set_halt(ptr noundef %0) #11
  br label %80

74:                                               ; preds = %39, %35
  %75 = getelementptr inbounds %struct.g_audio, ptr %4, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.usb_gadget, ptr %76, i32 0, i32 11
  %78 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.out_rq_cur_complete, i32 noundef 639, i32 noundef %78, i32 noundef %13) #13
  %79 = tail call i32 @usb_ep_set_halt(ptr noundef %0) #11
  br label %80

80:                                               ; preds = %74, %69, %65, %60, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_set_mute(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_set_volume(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_mute(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_volume(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!10 = !{i64 2148206874}
!11 = !{i64 607642, i64 2148097613, i64 2148097639, i64 2148097686, i64 2148097708, i64 2148097736, i64 2148097756}
!12 = !{i64 2148109712, i64 2148109744, i64 2148109773, i64 2148109807, i64 2148109838, i64 2148109861}
!13 = !{i64 2148207077}
!14 = !{i64 2148111385, i64 2148111411, i64 2148111440, i64 2148111474, i64 2148111505, i64 2148111528}
