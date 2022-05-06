; ModuleID = '/llk/IR/drivers/usb/gadget/function/f_uac2.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/f_uac2.c"
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
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac_clock_source_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uac2_input_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i32, i8, i16, i8 }>
%struct.uac2_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i16, i8 }>
%struct.uac2_as_header_descriptor = type <{ i8, i8, i8, i8, i8, i8, i32, i8, i32, i8 }>
%struct.uac2_format_type_i_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.uac2_ac_header_descriptor = type <{ i8, i8, i8, i16, i8, i16, i8 }>
%struct.uac2_iso_endpoint_descriptor = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.f_uac2_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i8, i8, i16, i16, i16, i32, i32, i8, %struct.mutex, i32 }
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
%struct.uac2_feature_unit_descriptor = type { i8, i8, i8, i8, i8, [0 x i8] }
%struct.f_uac2 = type { %struct.g_audio, i8, i8, i8, i8, i8, i8, %struct.usb_ctrlrequest, ptr, %struct.atomic_t }
%struct.g_audio = type { %struct.usb_function, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.uac_params }
%struct.uac_params = type { i32, i32, i32, %struct.uac_fu_params, i32, i32, i32, %struct.uac_fu_params, i32, i32 }
%struct.uac_fu_params = type { i32, i8, i8, i16, i16, i16 }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.cntrl_range_lay3 = type <{ i16, i32, i32, i32 }>
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.uac2_interrupt_data_msg = type { i8, i8, i16, i16 }

@__UNIQUE_ID_alias242 = internal constant [19 x i8] c"alias=usbfunc:uac2\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [23 x i8] c"author=Yadwinder Singh\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [23 x i8] c"author=Jaswinder Singh\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [22 x i8] c"author=Ruslan Bilovol\00", section ".modinfo", align 1
@uac2usb_func = internal global %struct.usb_function_driver { ptr @.str, ptr @__this_module, %struct.list_head zeroinitializer, ptr @afunc_alloc_inst, ptr @afunc_alloc }, align 4
@.str = private unnamed_addr constant [5 x i8] c"uac2\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@afunc_alloc_inst.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&opts->lock\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@f_uac2_func_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @f_uac2_item_ops, ptr null, ptr @f_uac2_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@f_uac2_item_ops = internal global %struct.configfs_item_operations { ptr @f_uac2_attr_release, ptr null, ptr null }, align 4
@f_uac2_attrs = internal global [20 x ptr] [ptr @f_uac2_opts_attr_p_chmask, ptr @f_uac2_opts_attr_p_srate, ptr @f_uac2_opts_attr_p_ssize, ptr @f_uac2_opts_attr_c_chmask, ptr @f_uac2_opts_attr_c_srate, ptr @f_uac2_opts_attr_c_ssize, ptr @f_uac2_opts_attr_c_sync, ptr @f_uac2_opts_attr_req_number, ptr @f_uac2_opts_attr_fb_max, ptr @f_uac2_opts_attr_p_mute_present, ptr @f_uac2_opts_attr_p_volume_present, ptr @f_uac2_opts_attr_p_volume_min, ptr @f_uac2_opts_attr_p_volume_max, ptr @f_uac2_opts_attr_p_volume_res, ptr @f_uac2_opts_attr_c_mute_present, ptr @f_uac2_opts_attr_c_volume_present, ptr @f_uac2_opts_attr_c_volume_min, ptr @f_uac2_opts_attr_c_volume_max, ptr @f_uac2_opts_attr_c_volume_res, ptr null], align 4
@f_uac2_opts_attr_p_chmask = internal global %struct.configfs_attribute { ptr @.str.3, ptr @__this_module, i16 420, ptr @f_uac2_opts_p_chmask_show, ptr @f_uac2_opts_p_chmask_store }, align 4
@f_uac2_opts_attr_p_srate = internal global %struct.configfs_attribute { ptr @.str.5, ptr @__this_module, i16 420, ptr @f_uac2_opts_p_srate_show, ptr @f_uac2_opts_p_srate_store }, align 4
@f_uac2_opts_attr_p_ssize = internal global %struct.configfs_attribute { ptr @.str.6, ptr @__this_module, i16 420, ptr @f_uac2_opts_p_ssize_show, ptr @f_uac2_opts_p_ssize_store }, align 4
@f_uac2_opts_attr_c_chmask = internal global %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 420, ptr @f_uac2_opts_c_chmask_show, ptr @f_uac2_opts_c_chmask_store }, align 4
@f_uac2_opts_attr_c_srate = internal global %struct.configfs_attribute { ptr @.str.8, ptr @__this_module, i16 420, ptr @f_uac2_opts_c_srate_show, ptr @f_uac2_opts_c_srate_store }, align 4
@f_uac2_opts_attr_c_ssize = internal global %struct.configfs_attribute { ptr @.str.9, ptr @__this_module, i16 420, ptr @f_uac2_opts_c_ssize_show, ptr @f_uac2_opts_c_ssize_store }, align 4
@f_uac2_opts_attr_c_sync = internal global %struct.configfs_attribute { ptr @.str.10, ptr @__this_module, i16 420, ptr @f_uac2_opts_c_sync_show, ptr @f_uac2_opts_c_sync_store }, align 4
@f_uac2_opts_attr_req_number = internal global %struct.configfs_attribute { ptr @.str.15, ptr @__this_module, i16 420, ptr @f_uac2_opts_req_number_show, ptr @f_uac2_opts_req_number_store }, align 4
@f_uac2_opts_attr_fb_max = internal global %struct.configfs_attribute { ptr @.str.16, ptr @__this_module, i16 420, ptr @f_uac2_opts_fb_max_show, ptr @f_uac2_opts_fb_max_store }, align 4
@f_uac2_opts_attr_p_mute_present = internal global %struct.configfs_attribute { ptr @.str.17, ptr @__this_module, i16 420, ptr @f_uac2_opts_p_mute_present_show, ptr @f_uac2_opts_p_mute_present_store }, align 4
@f_uac2_opts_attr_p_volume_present = internal global %struct.configfs_attribute { ptr @.str.18, ptr @__this_module, i16 420, ptr @f_uac2_opts_p_volume_present_show, ptr @f_uac2_opts_p_volume_present_store }, align 4
@f_uac2_opts_attr_p_volume_min = internal global %struct.configfs_attribute { ptr @.str.19, ptr @__this_module, i16 420, ptr @f_uac2_opts_p_volume_min_show, ptr @f_uac2_opts_p_volume_min_store }, align 4
@f_uac2_opts_attr_p_volume_max = internal global %struct.configfs_attribute { ptr @.str.21, ptr @__this_module, i16 420, ptr @f_uac2_opts_p_volume_max_show, ptr @f_uac2_opts_p_volume_max_store }, align 4
@f_uac2_opts_attr_p_volume_res = internal global %struct.configfs_attribute { ptr @.str.22, ptr @__this_module, i16 420, ptr @f_uac2_opts_p_volume_res_show, ptr @f_uac2_opts_p_volume_res_store }, align 4
@f_uac2_opts_attr_c_mute_present = internal global %struct.configfs_attribute { ptr @.str.23, ptr @__this_module, i16 420, ptr @f_uac2_opts_c_mute_present_show, ptr @f_uac2_opts_c_mute_present_store }, align 4
@f_uac2_opts_attr_c_volume_present = internal global %struct.configfs_attribute { ptr @.str.24, ptr @__this_module, i16 420, ptr @f_uac2_opts_c_volume_present_show, ptr @f_uac2_opts_c_volume_present_store }, align 4
@f_uac2_opts_attr_c_volume_min = internal global %struct.configfs_attribute { ptr @.str.25, ptr @__this_module, i16 420, ptr @f_uac2_opts_c_volume_min_show, ptr @f_uac2_opts_c_volume_min_store }, align 4
@f_uac2_opts_attr_c_volume_max = internal global %struct.configfs_attribute { ptr @.str.26, ptr @__this_module, i16 420, ptr @f_uac2_opts_c_volume_max_show, ptr @f_uac2_opts_c_volume_max_store }, align 4
@f_uac2_opts_attr_c_volume_res = internal global %struct.configfs_attribute { ptr @.str.27, ptr @__this_module, i16 420, ptr @f_uac2_opts_c_volume_res_show, ptr @f_uac2_opts_c_volume_res_store }, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"p_chmask\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"p_srate\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"p_ssize\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"c_chmask\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"c_srate\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"c_ssize\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"c_sync\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"async\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"adaptive\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"req_number\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"fb_max\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"p_mute_present\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"p_volume_present\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"p_volume_min\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"p_volume_max\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"p_volume_res\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"c_mute_present\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"c_volume_present\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"c_volume_min\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"c_volume_max\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"c_volume_res\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"uac2_func\00", align 1
@fn_strings = internal global [2 x ptr] [ptr @str_fn, ptr null], align 4
@out_feature_unit_desc = internal global ptr null, align 4
@in_feature_unit_desc = internal global ptr null, align 4
@iad_desc = internal global %struct.usb_interface_assoc_descriptor { i8 8, i8 11, i8 0, i8 3, i8 1, i8 0, i8 32, i8 0 }, align 1
@std_ac_if_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 1, i8 32, i8 0 }, align 1
@in_clk_src_desc = internal global %struct.uac_clock_source_descriptor { i8 8, i8 36, i8 10, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 1
@out_clk_src_desc = internal global %struct.uac_clock_source_descriptor { i8 8, i8 36, i8 10, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 1
@usb_out_it_desc = internal global %struct.uac2_input_terminal_descriptor <{ i8 17, i8 36, i8 2, i8 0, i16 257, i8 0, i8 0, i8 0, i32 0, i8 0, i16 3, i8 0 }>, align 1
@io_in_it_desc = internal global %struct.uac2_input_terminal_descriptor <{ i8 17, i8 36, i8 2, i8 0, i16 513, i8 0, i8 0, i8 0, i32 0, i8 0, i16 3, i8 0 }>, align 1
@usb_in_ot_desc = internal global %struct.uac2_output_terminal_descriptor <{ i8 12, i8 36, i8 3, i8 0, i16 257, i8 0, i8 0, i8 0, i16 3, i8 0 }>, align 1
@io_out_ot_desc = internal global %struct.uac2_output_terminal_descriptor <{ i8 12, i8 36, i8 3, i8 0, i16 769, i8 0, i8 0, i8 0, i16 3, i8 0 }>, align 1
@std_as_out_if0_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 32, i8 0 }, align 1
@std_as_out_if1_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 32, i8 0 }, align 1
@std_as_in_if0_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 0, i8 0, i8 1, i8 2, i8 32, i8 0 }, align 1
@std_as_in_if1_desc = internal global %struct.usb_interface_descriptor { i8 9, i8 4, i8 0, i8 1, i8 1, i8 1, i8 2, i8 32, i8 0 }, align 1
@as_out_hdr_desc = internal global %struct.uac2_as_header_descriptor <{ i8 16, i8 36, i8 1, i8 0, i8 0, i8 1, i32 1, i8 0, i32 0, i8 0 }>, align 1
@as_in_hdr_desc = internal global %struct.uac2_as_header_descriptor <{ i8 16, i8 36, i8 1, i8 0, i8 0, i8 1, i32 1, i8 0, i32 0, i8 0 }>, align 1
@as_out_fmt1_desc = internal global %struct.uac2_format_type_i_descriptor { i8 6, i8 36, i8 2, i8 1, i8 0, i8 0 }, align 1
@as_in_fmt1_desc = internal global %struct.uac2_format_type_i_descriptor { i8 6, i8 36, i8 2, i8 1, i8 0, i8 0 }, align 1
@clksrc_in = internal global [8 x i8] zeroinitializer, align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"%uHz\00", align 1
@clksrc_out = internal global [8 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"%s:%d Error!\0A\00", align 1
@__func__.afunc_bind = private unnamed_addr constant [11 x i8] c"afunc_bind\00", align 1
@fs_epout_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 0, i8 1, i8 0, i8 0 }>, align 1
@hs_epout_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 0, i8 4, i8 0, i8 0 }>, align 1
@ss_epout_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 0, i16 0, i8 4, i8 0, i8 0 }>, align 1
@fs_ep_int_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 6, i8 1, i8 0, i8 0 }>, align 1
@fs_epin_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 1, i8 0, i8 0 }>, align 1
@hs_epin_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 5, i16 0, i8 4, i8 0, i8 0 }>, align 1
@ss_epin_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 5, i16 0, i8 4, i8 0, i8 0 }>, align 1
@fs_epin_fback_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 17, i16 3, i8 1, i8 0, i8 0 }>, align 1
@ss_epin_desc_comp = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@ss_epout_desc_comp = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 0 }, align 1
@hs_ep_int_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 3, i16 6, i8 4, i8 0, i8 0 }>, align 1
@hs_epin_fback_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 0, i8 17, i16 4, i8 4, i8 0, i8 0 }>, align 1
@ss_epin_fback_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 17, i16 4, i8 4, i8 0, i8 0 }>, align 1
@ss_ep_int_desc = internal global %struct.usb_endpoint_descriptor <{ i8 7, i8 5, i8 -128, i8 3, i16 6, i8 4, i8 0, i8 0 }>, align 1
@fs_audio_desc = internal global [26 x ptr] [ptr @iad_desc, ptr @std_ac_if_desc, ptr @ac_hdr_desc, ptr @in_clk_src_desc, ptr @out_clk_src_desc, ptr @usb_out_it_desc, ptr @out_feature_unit_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @in_feature_unit_desc, ptr @io_out_ot_desc, ptr @fs_ep_int_desc, ptr @std_as_out_if0_desc, ptr @std_as_out_if1_desc, ptr @as_out_hdr_desc, ptr @as_out_fmt1_desc, ptr @fs_epout_desc, ptr @as_iso_out_desc, ptr @fs_epin_fback_desc, ptr @std_as_in_if0_desc, ptr @std_as_in_if1_desc, ptr @as_in_hdr_desc, ptr @as_in_fmt1_desc, ptr @fs_epin_desc, ptr @as_iso_in_desc, ptr null], align 4
@hs_audio_desc = internal global [26 x ptr] [ptr @iad_desc, ptr @std_ac_if_desc, ptr @ac_hdr_desc, ptr @in_clk_src_desc, ptr @out_clk_src_desc, ptr @usb_out_it_desc, ptr @out_feature_unit_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @in_feature_unit_desc, ptr @io_out_ot_desc, ptr @hs_ep_int_desc, ptr @std_as_out_if0_desc, ptr @std_as_out_if1_desc, ptr @as_out_hdr_desc, ptr @as_out_fmt1_desc, ptr @hs_epout_desc, ptr @as_iso_out_desc, ptr @hs_epin_fback_desc, ptr @std_as_in_if0_desc, ptr @std_as_in_if1_desc, ptr @as_in_hdr_desc, ptr @as_in_fmt1_desc, ptr @hs_epin_desc, ptr @as_iso_in_desc, ptr null], align 4
@ss_audio_desc = internal global [29 x ptr] [ptr @iad_desc, ptr @std_ac_if_desc, ptr @ac_hdr_desc, ptr @in_clk_src_desc, ptr @out_clk_src_desc, ptr @usb_out_it_desc, ptr @out_feature_unit_desc, ptr @io_in_it_desc, ptr @usb_in_ot_desc, ptr @in_feature_unit_desc, ptr @io_out_ot_desc, ptr @ss_ep_int_desc, ptr @std_as_out_if0_desc, ptr @std_as_out_if1_desc, ptr @as_out_hdr_desc, ptr @as_out_fmt1_desc, ptr @ss_epout_desc, ptr @ss_epout_desc_comp, ptr @as_iso_out_desc, ptr @ss_epin_fback_desc, ptr @ss_epin_fback_desc_comp, ptr @std_as_in_if0_desc, ptr @std_as_in_if1_desc, ptr @as_in_hdr_desc, ptr @as_in_fmt1_desc, ptr @ss_epin_desc, ptr @ss_epin_desc_comp, ptr @as_iso_in_desc, ptr null], align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"UAC2 PCM\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"UAC2_Gadget\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"Error: no playback and capture channels\0A\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"Error: unsupported playback channels mask\0A\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"Error: unsupported capture channels mask\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Error: incorrect playback sample size\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Error: incorrect capture sample size\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Error: incorrect playback sampling rate\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"Error: incorrect capture sampling rate\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"Error: incorrect playback volume max/min\0A\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"Error: incorrect capture volume max/min\0A\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"Error: negative/zero playback volume resolution\0A\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"Error: negative/zero capture volume resolution\0A\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"Error: incorrect playback volume resolution\0A\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"Error: incorrect capture volume resolution\0A\00", align 1
@str_fn = internal global %struct.usb_gadget_strings { i16 1033, ptr @strings_fn }, align 4
@strings_fn = internal global [15 x %struct.usb_string] [%struct.usb_string { i8 0, ptr @.str.46 }, %struct.usb_string { i8 0, ptr @.str.47 }, %struct.usb_string { i8 0, ptr @clksrc_in }, %struct.usb_string { i8 0, ptr @clksrc_out }, %struct.usb_string { i8 0, ptr @.str.48 }, %struct.usb_string { i8 0, ptr @.str.49 }, %struct.usb_string { i8 0, ptr @.str.50 }, %struct.usb_string { i8 0, ptr @.str.51 }, %struct.usb_string { i8 0, ptr @.str.52 }, %struct.usb_string { i8 0, ptr @.str.53 }, %struct.usb_string { i8 0, ptr @.str.54 }, %struct.usb_string { i8 0, ptr @.str.55 }, %struct.usb_string { i8 0, ptr @.str.56 }, %struct.usb_string { i8 0, ptr @.str.57 }, %struct.usb_string zeroinitializer], align 4
@.str.46 = private unnamed_addr constant [12 x i8] c"Source/Sink\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"Topology Control\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"USBH Out\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"USBD Out\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"USBH In\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"USBD In\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Capture Volume\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"Playback Volume\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"Playback Inactive\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"Playback Active\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"Capture Inactive\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"Capture Active\00", align 1
@ac_hdr_desc = internal global %struct.uac2_ac_header_descriptor <{ i8 9, i8 36, i8 1, i16 512, i8 8, i16 0, i8 0 }>, align 1
@ss_epin_fback_desc_comp = internal global %struct.usb_ss_ep_comp_descriptor { i8 6, i8 48, i8 0, i8 0, i16 4 }, align 1
@as_iso_out_desc = internal global %struct.uac2_iso_endpoint_descriptor { i8 8, i8 37, i8 1, i8 0, i8 0, i8 0, i16 0 }, align 1
@as_iso_in_desc = internal global %struct.uac2_iso_endpoint_descriptor { i8 8, i8 37, i8 1, i8 0, i8 0, i8 0, i16 0 }, align 1
@__func__.afunc_set_alt = private unnamed_addr constant [14 x i8] c"afunc_set_alt\00", align 1
@.str.58 = private unnamed_addr constant [29 x i8] c"%s:%d Invalid Interface %d!\0A\00", align 1
@__func__.afunc_get_alt = private unnamed_addr constant [14 x i8] c"afunc_get_alt\00", align 1
@__func__.afunc_setup = private unnamed_addr constant [12 x i8] c"afunc_setup\00", align 1
@__func__.setup_rq_inf = private unnamed_addr constant [13 x i8] c"setup_rq_inf\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"%s:%d control_selector=%d TODO!\0A\00", align 1
@__func__.in_rq_cur = private unnamed_addr constant [10 x i8] c"in_rq_cur\00", align 1
@.str.60 = private unnamed_addr constant [46 x i8] c"%s:%d entity_id=%d control_selector=%d TODO!\0A\00", align 1
@__func__.in_rq_range = private unnamed_addr constant [12 x i8] c"in_rq_range\00", align 1
@__func__.out_rq_cur = private unnamed_addr constant [11 x i8] c"out_rq_cur\00", align 1
@__func__.out_rq_cur_complete = private unnamed_addr constant [20 x i8] c"out_rq_cur_complete\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_license243], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @usb_function_register(ptr noundef nonnull @uac2usb_func) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @usb_function_unregister(ptr noundef nonnull @uac2usb_func) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_function_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @afunc_alloc_inst() #2 {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 180) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @afunc_alloc_inst.__key) #12
  %6 = getelementptr inbounds %struct.usb_function_instance, ptr %2, i32 0, i32 4
  store ptr @afunc_free_inst, ptr %6, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull @f_uac2_func_type) #12
  %7 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 1
  store i32 3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 2
  store i32 48000, ptr %8, align 8
  %9 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 3
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 4
  store i32 3, ptr %10, align 8
  %11 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 5
  store i32 64000, ptr %11, align 4
  %12 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 6
  store i32 2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 7
  store i32 4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 8
  store i8 1, ptr %14, align 8
  %15 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 9
  store i8 1, ptr %15, align 1
  %16 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 10
  store i16 -25600, ptr %16, align 2
  %17 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 11
  store i16 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 12
  store i16 256, ptr %18, align 2
  %19 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 13
  store i8 1, ptr %19, align 8
  %20 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 14
  store i8 1, ptr %20, align 1
  %21 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 15
  store i16 -25600, ptr %21, align 2
  %22 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 16
  store i16 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 17
  store i16 256, ptr %23, align 2
  %24 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 18
  store i32 2, ptr %24, align 8
  %25 = getelementptr inbounds %struct.f_uac2_opts, ptr %2, i32 0, i32 19
  store i32 5, ptr %25, align 4
  br label %26

26:                                               ; preds = %4, %0
  %27 = phi ptr [ %2, %4 ], [ inttoptr (i32 -12 to ptr), %0 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @afunc_alloc(ptr noundef %0) #2 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 220) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 4
  tail call void @mutex_unlock(ptr noundef %6) #12
  store ptr @.str.28, ptr %3, align 8
  %10 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 9
  store ptr @afunc_bind, ptr %10, align 4
  %11 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 10
  store ptr @afunc_unbind, ptr %11, align 8
  %12 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 13
  store ptr @afunc_set_alt, ptr %12, align 4
  %13 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 14
  store ptr @afunc_get_alt, ptr %13, align 8
  %14 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 15
  store ptr @afunc_disable, ptr %14, align 4
  %15 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 16
  store ptr @afunc_setup, ptr %15, align 8
  %16 = getelementptr inbounds %struct.usb_function, ptr %3, i32 0, i32 11
  store ptr @afunc_free, ptr %16, align 4
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
define internal void @afunc_free_inst(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #12
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
define internal void @f_uac2_attr_release(ptr noundef %0) #2 {
  tail call void @usb_put_function_instance(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_chmask_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_chmask_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
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
define internal i32 @f_uac2_opts_p_srate_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_srate_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_ssize_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_ssize_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_chmask_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_chmask_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_srate_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_srate_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 5
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_ssize_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_ssize_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 6
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_sync_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 8
  %7 = select i1 %6, ptr @.str.12, ptr @.str.13
  %8 = icmp eq i32 %5, 4
  %9 = select i1 %8, ptr @.str.11, ptr %7
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %9)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_sync_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.11, i32 noundef 5)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(9) @.str.12, i32 noundef 8)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %8
  %15 = phi i32 [ 4, %8 ], [ 8, %11 ]
  %16 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 7
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = phi i32 [ -16, %3 ], [ -22, %11 ], [ %2, %14 ]
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_req_number_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_req_number_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 18
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_fb_max_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_fb_max_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 19
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_mute_present_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 8
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_mute_present_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1, !range !9
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 8
  store i8 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_present_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_present_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1, !range !9
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 9
  store i8 %13, ptr %14, align 1
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_min_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 10
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_min_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 10
  store i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtos16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_max_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 11
  %5 = load i16, ptr %4, align 4
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_max_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 11
  store i16 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_res_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 12
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_p_volume_res_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 12
  store i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_mute_present_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 13
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_mute_present_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1, !range !9
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 13
  store i8 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_present_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 14
  %5 = load i8, ptr %4, align 1, !range !9
  %6 = zext i8 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_present_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #12
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtobool(ptr noundef %1, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i8, ptr %4, align 1, !range !9
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 14
  store i8 %13, ptr %14, align 1
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_min_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 15
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_min_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 15
  store i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_max_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 16
  %5 = load i16, ptr %4, align 4
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_max_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 16
  store i16 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_res_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 17
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef %6)
  tail call void @mutex_unlock(ptr noundef %3) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uac2_opts_c_volume_res_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 22
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = call i32 @kstrtos16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i16, ptr %4, align 2
  %14 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 17
  store i16 %13, ptr %14, align 2
  br label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i32 [ %10, %9 ], [ %2, %12 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @afunc_bind(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_configuration, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_gadget, ptr %5, i32 0, i32 11
  %7 = getelementptr inbounds %struct.usb_function, ptr %1, i32 0, i32 24
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %76, label %21

16:                                               ; preds = %2
  %17 = icmp ult i32 %10, 134217728
  br i1 %17, label %18, label %76

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %20, %18 ], [ %14, %12 ]
  %23 = icmp ult i32 %22, 134217728
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -5
  %28 = icmp ult i32 %27, -4
  br i1 %28, label %76, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -5
  %33 = icmp ult i32 %32, -4
  br i1 %33, label %76, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %76, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 11
  %44 = load i16, ptr %43, align 4
  %45 = sext i16 %44 to i32
  %46 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 10
  %47 = load i16, ptr %46, align 2
  %48 = sext i16 %47 to i32
  %49 = icmp sgt i16 %44, %47
  br i1 %49, label %50, label %76

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 16
  %52 = load i16, ptr %51, align 4
  %53 = sext i16 %52 to i32
  %54 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 15
  %55 = load i16, ptr %54, align 2
  %56 = sext i16 %55 to i32
  %57 = icmp sgt i16 %52, %55
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 12
  %60 = load i16, ptr %59, align 2
  %61 = sext i16 %60 to i32
  %62 = icmp slt i16 %60, 1
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 17
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
  %77 = phi ptr [ @.str.33, %12 ], [ @.str.34, %16 ], [ @.str.35, %21 ], [ @.str.36, %24 ], [ @.str.37, %29 ], [ @.str.38, %34 ], [ @.str.39, %38 ], [ @.str.40, %42 ], [ @.str.41, %50 ], [ @.str.42, %58 ], [ @.str.43, %63 ], [ @.str.44, %68 ], [ @.str.45, %72 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %77) #14
  br label %881

78:                                               ; preds = %72
  %79 = tail call ptr @usb_gstrings_attach(ptr noundef %4, ptr noundef nonnull @fn_strings, i32 noundef 15) #12
  %80 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = ptrtoint ptr %79 to i32
  br label %881

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 4
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %113, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 13
  %89 = load i8, ptr %88, align 4, !range !9
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %93 = load i8, ptr %92, align 1, !range !9
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %96, %95
  %97 = phi i32 [ %100, %96 ], [ 0, %95 ]
  %98 = phi i32 [ %101, %96 ], [ %85, %95 ]
  %99 = and i32 %98, 1
  %100 = add i32 %99, %97
  %101 = lshr i32 %98, 1
  %102 = icmp ult i32 %98, 2
  br i1 %102, label %103, label %96

103:                                              ; preds = %96
  %104 = shl i32 %100, 2
  %105 = add i32 %104, 10
  %106 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %105, i32 noundef 3520) #15
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store ptr null, ptr @out_feature_unit_desc, align 4
  br label %881

109:                                              ; preds = %103
  %110 = trunc i32 %105 to i8
  store i8 %110, ptr %106, align 64
  %111 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %106, i32 0, i32 1
  store i8 36, ptr %111, align 1
  %112 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %106, i32 0, i32 2
  store i8 6, ptr %112, align 2
  store ptr %106, ptr @out_feature_unit_desc, align 4
  br label %113

113:                                              ; preds = %109, %91, %83
  %114 = load i32, ptr %9, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %142, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 8
  %118 = load i8, ptr %117, align 4, !range !9
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %122 = load i8, ptr %121, align 1, !range !9
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %142, label %124

124:                                              ; preds = %120, %116
  br label %125

125:                                              ; preds = %125, %124
  %126 = phi i32 [ %129, %125 ], [ 0, %124 ]
  %127 = phi i32 [ %130, %125 ], [ %114, %124 ]
  %128 = and i32 %127, 1
  %129 = add i32 %128, %126
  %130 = lshr i32 %127, 1
  %131 = icmp ult i32 %127, 2
  br i1 %131, label %132, label %125

132:                                              ; preds = %125
  %133 = shl i32 %129, 2
  %134 = add i32 %133, 10
  %135 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %134, i32 noundef 3520) #15
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store ptr null, ptr @in_feature_unit_desc, align 4
  br label %877

138:                                              ; preds = %132
  %139 = trunc i32 %134 to i8
  store i8 %139, ptr %135, align 64
  %140 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %135, i32 0, i32 1
  store i8 36, ptr %140, align 1
  %141 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %135, i32 0, i32 2
  store i8 6, ptr %141, align 2
  store ptr %135, ptr @in_feature_unit_desc, align 4
  br label %142

142:                                              ; preds = %138, %120, %113
  %143 = load i8, ptr %79, align 4
  store i8 %143, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 7), align 1
  %144 = getelementptr %struct.usb_string, ptr %79, i32 1
  %145 = load i8, ptr %144, align 4
  store i8 %145, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_ac_if_desc, i32 0, i32 8), align 1
  %146 = getelementptr %struct.usb_string, ptr %79, i32 2
  %147 = load i8, ptr %146, align 4
  store i8 %147, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 7), align 1
  %148 = getelementptr %struct.usb_string, ptr %79, i32 3
  %149 = load i8, ptr %148, align 4
  store i8 %149, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 7), align 1
  %150 = getelementptr %struct.usb_string, ptr %79, i32 4
  %151 = load i8, ptr %150, align 4
  store i8 %151, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 11), align 1
  %152 = getelementptr %struct.usb_string, ptr %79, i32 5
  %153 = load i8, ptr %152, align 4
  store i8 %153, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 11), align 1
  %154 = getelementptr %struct.usb_string, ptr %79, i32 6
  %155 = load i8, ptr %154, align 4
  store i8 %155, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 9), align 1
  %156 = getelementptr %struct.usb_string, ptr %79, i32 7
  %157 = load i8, ptr %156, align 4
  store i8 %157, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 9), align 1
  %158 = getelementptr %struct.usb_string, ptr %79, i32 10
  %159 = load i8, ptr %158, align 4
  store i8 %159, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if0_desc, i32 0, i32 8), align 1
  %160 = getelementptr %struct.usb_string, ptr %79, i32 11
  %161 = load i8, ptr %160, align 4
  store i8 %161, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if1_desc, i32 0, i32 8), align 1
  %162 = getelementptr %struct.usb_string, ptr %79, i32 12
  %163 = load i8, ptr %162, align 4
  store i8 %163, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_in_if0_desc, i32 0, i32 8), align 1
  %164 = getelementptr %struct.usb_string, ptr %79, i32 13
  %165 = load i8, ptr %164, align 4
  store i8 %165, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_in_if1_desc, i32 0, i32 8), align 1
  %166 = load i32, ptr %84, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %142
  %169 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 13
  %170 = load i8, ptr %169, align 4, !range !9
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %174 = load i8, ptr %173, align 1, !range !9
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %172, %168
  %177 = load ptr, ptr @out_feature_unit_desc, align 4
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i32
  %180 = getelementptr i8, ptr %177, i32 %179
  %181 = getelementptr i8, ptr %180, i32 -1
  %182 = getelementptr %struct.usb_string, ptr %79, i32 9
  %183 = load i8, ptr %182, align 4
  store i8 %183, ptr %181, align 1
  br label %184

184:                                              ; preds = %176, %172, %142
  %185 = load i32, ptr %9, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %203, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 8
  %189 = load i8, ptr %188, align 4, !range !9
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %193 = load i8, ptr %192, align 1, !range !9
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %191, %187
  %196 = load ptr, ptr @in_feature_unit_desc, align 4
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i32
  %199 = getelementptr i8, ptr %196, i32 %198
  %200 = getelementptr i8, ptr %199, i32 -1
  %201 = getelementptr %struct.usb_string, ptr %79, i32 8
  %202 = load i8, ptr %201, align 4
  store i8 %202, ptr %200, align 1
  br label %203

203:                                              ; preds = %195, %191, %184
  %204 = load i32, ptr %84, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %206, %203
  %207 = phi i32 [ %210, %206 ], [ 0, %203 ]
  %208 = phi i32 [ %211, %206 ], [ %204, %203 ]
  %209 = and i32 %208, 1
  %210 = add i32 %209, %207
  %211 = lshr i32 %208, 1
  %212 = icmp ult i32 %208, 2
  br i1 %212, label %213, label %206

213:                                              ; preds = %206, %203
  %214 = phi i32 [ 0, %203 ], [ %210, %206 ]
  %215 = trunc i32 %214 to i8
  store i8 %215, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 7), align 1
  store i32 %204, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 8), align 1
  %216 = load i32, ptr %9, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %218, %213
  %219 = phi i32 [ %222, %218 ], [ 0, %213 ]
  %220 = phi i32 [ %223, %218 ], [ %216, %213 ]
  %221 = and i32 %220, 1
  %222 = add i32 %221, %219
  %223 = lshr i32 %220, 1
  %224 = icmp ult i32 %220, 2
  br i1 %224, label %225, label %218

225:                                              ; preds = %218, %213
  %226 = phi i32 [ 0, %213 ], [ %222, %218 ]
  %227 = trunc i32 %226 to i8
  store i8 %227, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 7), align 1
  store i32 %216, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 8), align 1
  br i1 %205, label %235, label %228

228:                                              ; preds = %228, %225
  %229 = phi i32 [ %232, %228 ], [ 0, %225 ]
  %230 = phi i32 [ %233, %228 ], [ %204, %225 ]
  %231 = and i32 %230, 1
  %232 = add i32 %231, %229
  %233 = lshr i32 %230, 1
  %234 = icmp ult i32 %230, 2
  br i1 %234, label %235, label %228

235:                                              ; preds = %228, %225
  %236 = phi i32 [ 0, %225 ], [ %232, %228 ]
  %237 = trunc i32 %236 to i8
  store i8 %237, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_out_hdr_desc, i32 0, i32 7), align 1
  store i32 %204, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_out_hdr_desc, i32 0, i32 8), align 1
  br i1 %217, label %245, label %238

238:                                              ; preds = %238, %235
  %239 = phi i32 [ %242, %238 ], [ 0, %235 ]
  %240 = phi i32 [ %243, %238 ], [ %216, %235 ]
  %241 = and i32 %240, 1
  %242 = add i32 %241, %239
  %243 = lshr i32 %240, 1
  %244 = icmp ult i32 %240, 2
  br i1 %244, label %245, label %238

245:                                              ; preds = %238, %235
  %246 = phi i32 [ 0, %235 ], [ %242, %238 ]
  %247 = trunc i32 %246 to i8
  store i8 %247, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_in_hdr_desc, i32 0, i32 7), align 1
  store i32 %216, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_in_hdr_desc, i32 0, i32 8), align 1
  %248 = load i32, ptr %30, align 4
  %249 = trunc i32 %248 to i8
  store i8 %249, ptr getelementptr inbounds (%struct.uac2_format_type_i_descriptor, ptr @as_out_fmt1_desc, i32 0, i32 4), align 1
  %250 = shl i8 %249, 3
  store i8 %250, ptr getelementptr inbounds (%struct.uac2_format_type_i_descriptor, ptr @as_out_fmt1_desc, i32 0, i32 5), align 1
  %251 = load i32, ptr %25, align 4
  %252 = trunc i32 %251 to i8
  store i8 %252, ptr getelementptr inbounds (%struct.uac2_format_type_i_descriptor, ptr @as_in_fmt1_desc, i32 0, i32 4), align 1
  %253 = shl i8 %252, 3
  store i8 %253, ptr getelementptr inbounds (%struct.uac2_format_type_i_descriptor, ptr @as_in_fmt1_desc, i32 0, i32 5), align 1
  br i1 %205, label %271, label %254

254:                                              ; preds = %245
  %255 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 13
  %256 = load i8, ptr %255, align 4, !range !9
  %257 = icmp eq i8 %256, 0
  %258 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %259 = load i8, ptr %258, align 1, !range !9
  br i1 %257, label %260, label %262

260:                                              ; preds = %254
  %261 = icmp eq i8 %259, 0
  br i1 %261, label %271, label %262

262:                                              ; preds = %260, %254
  %263 = phi i8 [ 1, %260 ], [ %259, %254 ]
  %264 = phi i32 [ 0, %260 ], [ 3, %254 ]
  %265 = load ptr, ptr @out_feature_unit_desc, align 4
  %266 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %265, i32 0, i32 5
  %267 = icmp eq i8 %263, 0
  %268 = or i32 %264, 12
  %269 = select i1 %267, i32 %264, i32 %268
  store i32 %269, ptr %266, align 4
  %270 = load i32, ptr %9, align 4
  br label %271

271:                                              ; preds = %262, %260, %245
  %272 = phi i32 [ %270, %262 ], [ %216, %260 ], [ %216, %245 ]
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %290, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 8
  %276 = load i8, ptr %275, align 4, !range !9
  %277 = icmp eq i8 %276, 0
  %278 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %279 = load i8, ptr %278, align 1, !range !9
  br i1 %277, label %280, label %282

280:                                              ; preds = %274
  %281 = icmp eq i8 %279, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %280, %274
  %283 = phi i8 [ 1, %280 ], [ %279, %274 ]
  %284 = phi i32 [ 0, %280 ], [ 3, %274 ]
  %285 = load ptr, ptr @in_feature_unit_desc, align 4
  %286 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %285, i32 0, i32 5
  %287 = icmp eq i8 %283, 0
  %288 = or i32 %284, 12
  %289 = select i1 %287, i32 %284, i32 %288
  store i32 %289, ptr %286, align 4
  br label %290

290:                                              ; preds = %282, %280, %271
  %291 = load i32, ptr %35, align 4
  %292 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @clksrc_in, i32 noundef 8, ptr noundef nonnull @.str.29, i32 noundef %291)
  %293 = load i32, ptr %39, align 4
  %294 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @clksrc_out, i32 noundef 8, ptr noundef nonnull @.str.29, i32 noundef %293)
  %295 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #12
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_bind, i32 noundef 1045) #14
  br label %877

298:                                              ; preds = %290
  %299 = trunc i32 %295 to i8
  store i8 %299, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 2), align 1
  store i8 %299, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_ac_if_desc, i32 0, i32 2), align 1
  %300 = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 1
  store i8 %299, ptr %300, align 4
  %301 = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 4
  store i8 0, ptr %301, align 1
  %302 = load i32, ptr %84, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %319, label %304

304:                                              ; preds = %298
  %305 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #12
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_bind, i32 noundef 1057) #14
  br label %877

308:                                              ; preds = %304
  %309 = trunc i32 %305 to i8
  store i8 %309, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if0_desc, i32 0, i32 2), align 1
  store i8 %309, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if1_desc, i32 0, i32 2), align 1
  %310 = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 3
  store i8 %309, ptr %310, align 2
  %311 = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 6
  store i8 0, ptr %311, align 1
  %312 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 7
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 4
  br i1 %314, label %315, label %318

315:                                              ; preds = %308
  store i8 5, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 3), align 1
  store i8 5, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 3), align 1
  store i8 5, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 3), align 1
  %316 = load i8, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if1_desc, i32 0, i32 4), align 1
  %317 = add i8 %316, 1
  store i8 %317, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_out_if1_desc, i32 0, i32 4), align 1
  br label %319

318:                                              ; preds = %308
  store i8 9, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 3), align 1
  store i8 9, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 3), align 1
  store i8 9, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 3), align 1
  br label %319

319:                                              ; preds = %318, %315, %298
  %320 = load i32, ptr %9, align 4
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %330, label %322

322:                                              ; preds = %319
  %323 = tail call i32 @usb_interface_id(ptr noundef %0, ptr noundef %1) #12
  %324 = icmp slt i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %322
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_bind, i32 noundef 1086) #14
  br label %877

326:                                              ; preds = %322
  %327 = trunc i32 %323 to i8
  store i8 %327, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_in_if0_desc, i32 0, i32 2), align 1
  store i8 %327, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_as_in_if1_desc, i32 0, i32 2), align 1
  %328 = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 2
  store i8 %327, ptr %328, align 1
  %329 = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 5
  store i8 0, ptr %329, align 4
  br label %330

330:                                              ; preds = %326, %319
  %331 = load i32, ptr %84, align 4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %341, label %333

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 13
  %335 = load i8, ptr %334, align 4, !range !9
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %337, label %352

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %339 = load i8, ptr %338, align 1, !range !9
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %341, label %352

341:                                              ; preds = %337, %330
  %342 = load i32, ptr %9, align 4
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %359, label %344

344:                                              ; preds = %341
  %345 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 8
  %346 = load i8, ptr %345, align 4, !range !9
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %350 = load i8, ptr %349, align 1, !range !9
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %359, label %352

352:                                              ; preds = %348, %344, %337, %333
  %353 = tail call ptr @usb_ep_autoconfig(ptr noundef %5, ptr noundef nonnull @fs_ep_int_desc) #12
  %354 = getelementptr inbounds %struct.f_uac2, ptr %1, i32 0, i32 8
  store ptr %353, ptr %354, align 4
  %355 = icmp eq ptr %353, null
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_bind, i32 noundef 1098) #14
  br label %877

357:                                              ; preds = %352
  store i8 1, ptr getelementptr inbounds (%struct.usb_interface_descriptor, ptr @std_ac_if_desc, i32 0, i32 4), align 1
  %358 = load i32, ptr %9, align 4
  br label %359

359:                                              ; preds = %357, %348, %341
  %360 = phi i32 [ 0, %341 ], [ %342, %348 ], [ %358, %357 ]
  %361 = load i32, ptr %35, align 4
  %362 = load i32, ptr %25, align 4
  %363 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 19
  %364 = load i32, ptr %363, align 4
  %365 = add i32 %364, 1000
  %366 = mul i32 %365, %361
  %367 = sdiv i32 %366, 1000
  %368 = icmp eq i32 %360, 0
  br i1 %368, label %376, label %369

369:                                              ; preds = %369, %359
  %370 = phi i32 [ %373, %369 ], [ 0, %359 ]
  %371 = phi i32 [ %374, %369 ], [ %360, %359 ]
  %372 = and i32 %371, 1
  %373 = add i32 %372, %370
  %374 = lshr i32 %371, 1
  %375 = icmp ult i32 %371, 2
  br i1 %375, label %376, label %369

376:                                              ; preds = %369, %359
  %377 = phi i32 [ 0, %359 ], [ %373, %369 ]
  %378 = mul i32 %377, %362
  %379 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_desc, i32 0, i32 5), align 1
  %380 = zext i8 %379 to i32
  %381 = add nsw i32 %380, -1
  %382 = lshr i32 1000, %381
  %383 = add nsw i32 %367, -1
  %384 = add nsw i32 %382, %383
  %385 = udiv i32 %384, %382
  %386 = mul i32 %378, %385
  %387 = and i32 %386, 65535
  %388 = tail call i32 @llvm.umin.i32(i32 %387, i32 1023) #12
  %389 = trunc i32 %388 to i16
  store i16 %389, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_desc, i32 0, i32 4), align 1
  %390 = load i32, ptr %84, align 4
  %391 = load i32, ptr %39, align 4
  %392 = load i32, ptr %30, align 4
  %393 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 7
  %394 = load i32, ptr %393, align 4
  %395 = icmp eq i32 %394, 4
  br i1 %395, label %396, label %418

396:                                              ; preds = %376
  %397 = mul i32 %391, %365
  %398 = sdiv i32 %397, 1000
  %399 = icmp eq i32 %390, 0
  br i1 %399, label %407, label %400

400:                                              ; preds = %400, %396
  %401 = phi i32 [ %404, %400 ], [ 0, %396 ]
  %402 = phi i32 [ %405, %400 ], [ %390, %396 ]
  %403 = and i32 %402, 1
  %404 = add i32 %403, %401
  %405 = lshr i32 %402, 1
  %406 = icmp ult i32 %402, 2
  br i1 %406, label %407, label %400

407:                                              ; preds = %400, %396
  %408 = phi i32 [ 0, %396 ], [ %404, %400 ]
  %409 = mul i32 %408, %392
  %410 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 5), align 1
  %411 = zext i8 %410 to i32
  %412 = add nsw i32 %411, -1
  %413 = lshr i32 1000, %412
  %414 = add nsw i32 %398, -1
  %415 = add nsw i32 %414, %413
  %416 = udiv i32 %415, %413
  %417 = mul i32 %409, %416
  br label %439

418:                                              ; preds = %376
  %419 = icmp eq i32 %390, 0
  br i1 %419, label %427, label %420

420:                                              ; preds = %420, %418
  %421 = phi i32 [ %424, %420 ], [ 0, %418 ]
  %422 = phi i32 [ %425, %420 ], [ %390, %418 ]
  %423 = and i32 %422, 1
  %424 = add i32 %423, %421
  %425 = lshr i32 %422, 1
  %426 = icmp ult i32 %422, 2
  br i1 %426, label %427, label %420

427:                                              ; preds = %420, %418
  %428 = phi i32 [ 0, %418 ], [ %424, %420 ]
  %429 = mul i32 %428, %392
  %430 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 5), align 1
  %431 = zext i8 %430 to i32
  %432 = add nsw i32 %431, -1
  %433 = lshr i32 1000, %432
  %434 = add i32 %391, -1
  %435 = add i32 %434, %433
  %436 = udiv i32 %435, %433
  %437 = add i32 %436, 1
  %438 = mul i32 %429, %437
  br label %439

439:                                              ; preds = %427, %407
  %440 = phi i32 [ %417, %407 ], [ %438, %427 ]
  %441 = and i32 %440, 65535
  %442 = tail call i32 @llvm.umin.i32(i32 %441, i32 1023) #12
  %443 = trunc i32 %442 to i16
  store i16 %443, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 4), align 1
  br i1 %368, label %451, label %444

444:                                              ; preds = %444, %439
  %445 = phi i32 [ %448, %444 ], [ 0, %439 ]
  %446 = phi i32 [ %449, %444 ], [ %360, %439 ]
  %447 = and i32 %446, 1
  %448 = add i32 %447, %445
  %449 = lshr i32 %446, 1
  %450 = icmp ult i32 %446, 2
  br i1 %450, label %451, label %444

451:                                              ; preds = %444, %439
  %452 = phi i32 [ 0, %439 ], [ %448, %444 ]
  %453 = mul i32 %452, %362
  %454 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_desc, i32 0, i32 5), align 1
  %455 = zext i8 %454 to i32
  %456 = add nsw i32 %455, -1
  %457 = lshr i32 8000, %456
  %458 = add nsw i32 %457, %383
  %459 = udiv i32 %458, %457
  %460 = mul i32 %453, %459
  %461 = and i32 %460, 65535
  %462 = tail call i32 @llvm.umin.i32(i32 %461, i32 1024) #12
  %463 = trunc i32 %462 to i16
  store i16 %463, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_desc, i32 0, i32 4), align 1
  br i1 %395, label %464, label %486

464:                                              ; preds = %451
  %465 = mul i32 %391, %365
  %466 = sdiv i32 %465, 1000
  %467 = icmp eq i32 %390, 0
  br i1 %467, label %475, label %468

468:                                              ; preds = %468, %464
  %469 = phi i32 [ %472, %468 ], [ 0, %464 ]
  %470 = phi i32 [ %473, %468 ], [ %390, %464 ]
  %471 = and i32 %470, 1
  %472 = add i32 %471, %469
  %473 = lshr i32 %470, 1
  %474 = icmp ult i32 %470, 2
  br i1 %474, label %475, label %468

475:                                              ; preds = %468, %464
  %476 = phi i32 [ 0, %464 ], [ %472, %468 ]
  %477 = mul i32 %476, %392
  %478 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 5), align 1
  %479 = zext i8 %478 to i32
  %480 = add nsw i32 %479, -1
  %481 = lshr i32 8000, %480
  %482 = add nsw i32 %466, -1
  %483 = add nsw i32 %482, %481
  %484 = udiv i32 %483, %481
  %485 = mul i32 %477, %484
  br label %507

486:                                              ; preds = %451
  %487 = icmp eq i32 %390, 0
  br i1 %487, label %495, label %488

488:                                              ; preds = %488, %486
  %489 = phi i32 [ %492, %488 ], [ 0, %486 ]
  %490 = phi i32 [ %493, %488 ], [ %390, %486 ]
  %491 = and i32 %490, 1
  %492 = add i32 %491, %489
  %493 = lshr i32 %490, 1
  %494 = icmp ult i32 %490, 2
  br i1 %494, label %495, label %488

495:                                              ; preds = %488, %486
  %496 = phi i32 [ 0, %486 ], [ %492, %488 ]
  %497 = mul i32 %496, %392
  %498 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 5), align 1
  %499 = zext i8 %498 to i32
  %500 = add nsw i32 %499, -1
  %501 = lshr i32 8000, %500
  %502 = add i32 %391, -1
  %503 = add i32 %502, %501
  %504 = udiv i32 %503, %501
  %505 = add i32 %504, 1
  %506 = mul i32 %497, %505
  br label %507

507:                                              ; preds = %495, %475
  %508 = phi i32 [ %485, %475 ], [ %506, %495 ]
  %509 = and i32 %508, 65535
  %510 = tail call i32 @llvm.umin.i32(i32 %509, i32 1024) #12
  %511 = trunc i32 %510 to i16
  store i16 %511, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 4), align 1
  br i1 %368, label %519, label %512

512:                                              ; preds = %512, %507
  %513 = phi i32 [ %516, %512 ], [ 0, %507 ]
  %514 = phi i32 [ %517, %512 ], [ %360, %507 ]
  %515 = and i32 %514, 1
  %516 = add i32 %515, %513
  %517 = lshr i32 %514, 1
  %518 = icmp ult i32 %514, 2
  br i1 %518, label %519, label %512

519:                                              ; preds = %512, %507
  %520 = phi i32 [ 0, %507 ], [ %516, %512 ]
  %521 = mul i32 %520, %362
  %522 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_desc, i32 0, i32 5), align 1
  %523 = zext i8 %522 to i32
  %524 = add nsw i32 %523, -1
  %525 = lshr i32 8000, %524
  %526 = add nsw i32 %525, %383
  %527 = udiv i32 %526, %525
  %528 = mul i32 %521, %527
  %529 = and i32 %528, 65535
  %530 = tail call i32 @llvm.umin.i32(i32 %529, i32 1024) #12
  %531 = trunc i32 %530 to i16
  store i16 %531, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_desc, i32 0, i32 4), align 1
  br i1 %395, label %532, label %554

532:                                              ; preds = %519
  %533 = mul i32 %391, %365
  %534 = sdiv i32 %533, 1000
  %535 = icmp eq i32 %390, 0
  br i1 %535, label %543, label %536

536:                                              ; preds = %536, %532
  %537 = phi i32 [ %540, %536 ], [ 0, %532 ]
  %538 = phi i32 [ %541, %536 ], [ %390, %532 ]
  %539 = and i32 %538, 1
  %540 = add i32 %539, %537
  %541 = lshr i32 %538, 1
  %542 = icmp ult i32 %538, 2
  br i1 %542, label %543, label %536

543:                                              ; preds = %536, %532
  %544 = phi i32 [ 0, %532 ], [ %540, %536 ]
  %545 = mul i32 %544, %392
  %546 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 5), align 1
  %547 = zext i8 %546 to i32
  %548 = add nsw i32 %547, -1
  %549 = lshr i32 8000, %548
  %550 = add nsw i32 %534, -1
  %551 = add nsw i32 %550, %549
  %552 = udiv i32 %551, %549
  %553 = mul i32 %545, %552
  br label %575

554:                                              ; preds = %519
  %555 = icmp eq i32 %390, 0
  br i1 %555, label %563, label %556

556:                                              ; preds = %556, %554
  %557 = phi i32 [ %560, %556 ], [ 0, %554 ]
  %558 = phi i32 [ %561, %556 ], [ %390, %554 ]
  %559 = and i32 %558, 1
  %560 = add i32 %559, %557
  %561 = lshr i32 %558, 1
  %562 = icmp ult i32 %558, 2
  br i1 %562, label %563, label %556

563:                                              ; preds = %556, %554
  %564 = phi i32 [ 0, %554 ], [ %560, %556 ]
  %565 = mul i32 %564, %392
  %566 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 5), align 1
  %567 = zext i8 %566 to i32
  %568 = add nsw i32 %567, -1
  %569 = lshr i32 8000, %568
  %570 = add i32 %391, -1
  %571 = add i32 %570, %569
  %572 = udiv i32 %571, %569
  %573 = add i32 %572, 1
  %574 = mul i32 %565, %573
  br label %575

575:                                              ; preds = %563, %543
  %576 = phi i32 [ %553, %543 ], [ %574, %563 ]
  %577 = and i32 %576, 65535
  %578 = tail call i32 @llvm.umin.i32(i32 %577, i32 1024) #12
  %579 = trunc i32 %578 to i16
  store i16 %579, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 4), align 1
  %580 = icmp eq i32 %390, 0
  br i1 %580, label %594, label %581

581:                                              ; preds = %575
  %582 = tail call ptr @usb_ep_autoconfig(ptr noundef %5, ptr noundef nonnull @fs_epout_desc) #12
  %583 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 3
  store ptr %582, ptr %583, align 4
  %584 = icmp eq ptr %582, null
  br i1 %584, label %585, label %586

585:                                              ; preds = %581
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_bind, i32 noundef 1152) #14
  br label %877

586:                                              ; preds = %581
  %587 = load i32, ptr %393, align 4
  %588 = icmp eq i32 %587, 4
  br i1 %588, label %589, label %594

589:                                              ; preds = %586
  %590 = tail call ptr @usb_ep_autoconfig(ptr noundef %5, ptr noundef nonnull @fs_epin_fback_desc) #12
  %591 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 4
  store ptr %590, ptr %591, align 4
  %592 = icmp eq ptr %590, null
  br i1 %592, label %593, label %594

593:                                              ; preds = %589
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_bind, i32 noundef 1161) #14
  br label %877

594:                                              ; preds = %589, %586, %575
  %595 = load i32, ptr %9, align 4
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %602, label %597

597:                                              ; preds = %594
  %598 = tail call ptr @usb_ep_autoconfig(ptr noundef %5, ptr noundef nonnull @fs_epin_desc) #12
  %599 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 2
  store ptr %598, ptr %599, align 4
  %600 = icmp eq ptr %598, null
  br i1 %600, label %601, label %602

601:                                              ; preds = %597
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_bind, i32 noundef 1171) #14
  br label %877

602:                                              ; preds = %597, %594
  %603 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_desc, i32 0, i32 4), align 1
  %604 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_desc, i32 0, i32 4), align 1
  %605 = tail call i16 @llvm.umax.i16(i16 %603, i16 %604)
  %606 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 5
  %607 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 4), align 1
  %608 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 4), align 1
  %609 = tail call i16 @llvm.umax.i16(i16 %607, i16 %608)
  %610 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 6
  %611 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_desc, i32 0, i32 4), align 1
  %612 = tail call i16 @llvm.umax.i16(i16 %605, i16 %611)
  %613 = zext i16 %612 to i32
  store i32 %613, ptr %606, align 4
  %614 = load i16, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 4), align 1
  %615 = tail call i16 @llvm.umax.i16(i16 %609, i16 %614)
  %616 = zext i16 %615 to i32
  store i32 %616, ptr %610, align 4
  store i16 %611, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_epin_desc_comp, i32 0, i32 4), align 1
  store i16 %614, ptr getelementptr inbounds (%struct.usb_ss_ep_comp_descriptor, ptr @ss_epout_desc_comp, i32 0, i32 4), align 1
  %617 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_ep_int_desc, i32 0, i32 2), align 1
  store i8 %617, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_ep_int_desc, i32 0, i32 2), align 1
  %618 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epout_desc, i32 0, i32 2), align 1
  store i8 %618, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epout_desc, i32 0, i32 2), align 1
  %619 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_fback_desc, i32 0, i32 2), align 1
  store i8 %619, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_fback_desc, i32 0, i32 2), align 1
  %620 = load i8, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @fs_epin_desc, i32 0, i32 2), align 1
  store i8 %620, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @hs_epin_desc, i32 0, i32 2), align 1
  store i8 %618, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epout_desc, i32 0, i32 2), align 1
  store i8 %619, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_fback_desc, i32 0, i32 2), align 1
  store i8 %620, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_epin_desc, i32 0, i32 2), align 1
  store i8 %617, ptr getelementptr inbounds (%struct.usb_endpoint_descriptor, ptr @ss_ep_int_desc, i32 0, i32 2), align 1
  %621 = load i32, ptr %84, align 4
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %624, label %623

623:                                              ; preds = %602
  store i8 1, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  br label %624

624:                                              ; preds = %623, %602
  %625 = phi i32 [ 2, %623 ], [ 1, %602 ]
  %626 = load i32, ptr %9, align 4
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %631, label %628

628:                                              ; preds = %624
  %629 = add nuw nsw i32 %625, 1
  %630 = trunc i32 %625 to i8
  store i8 %630, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  br label %631

631:                                              ; preds = %628, %624
  %632 = phi i32 [ %629, %628 ], [ %625, %624 ]
  br i1 %622, label %636, label %633

633:                                              ; preds = %631
  %634 = add nuw nsw i32 %632, 1
  %635 = trunc i32 %632 to i8
  store i8 %635, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 3), align 1
  br label %636

636:                                              ; preds = %633, %631
  %637 = phi i32 [ %634, %633 ], [ %632, %631 ]
  br i1 %627, label %641, label %638

638:                                              ; preds = %636
  %639 = add nuw nsw i32 %637, 1
  %640 = trunc i32 %637 to i8
  store i8 %640, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 3), align 1
  br label %641

641:                                              ; preds = %638, %636
  %642 = phi i32 [ %639, %638 ], [ %637, %636 ]
  br i1 %622, label %657, label %643

643:                                              ; preds = %641
  %644 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 13
  %645 = load i8, ptr %644, align 4, !range !9
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %647, label %651

647:                                              ; preds = %643
  %648 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %649 = load i8, ptr %648, align 1, !range !9
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %657, label %651

651:                                              ; preds = %647, %643
  %652 = add nuw nsw i32 %642, 1
  %653 = trunc i32 %642 to i8
  %654 = load ptr, ptr @out_feature_unit_desc, align 4
  %655 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %654, i32 0, i32 3
  store i8 %653, ptr %655, align 1
  %656 = load i32, ptr %9, align 4
  br label %657

657:                                              ; preds = %651, %647, %641
  %658 = phi i32 [ %656, %651 ], [ %626, %647 ], [ %626, %641 ]
  %659 = phi i32 [ %652, %651 ], [ %642, %647 ], [ %642, %641 ]
  %660 = icmp eq i32 %658, 0
  br i1 %660, label %674, label %661

661:                                              ; preds = %657
  %662 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 8
  %663 = load i8, ptr %662, align 4, !range !9
  %664 = icmp eq i8 %663, 0
  br i1 %664, label %665, label %669

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %667 = load i8, ptr %666, align 1, !range !9
  %668 = icmp eq i8 %667, 0
  br i1 %668, label %674, label %669

669:                                              ; preds = %665, %661
  %670 = add nuw nsw i32 %659, 1
  %671 = trunc i32 %659 to i8
  %672 = load ptr, ptr @in_feature_unit_desc, align 4
  %673 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %672, i32 0, i32 3
  store i8 %671, ptr %673, align 1
  br label %674

674:                                              ; preds = %669, %665, %657
  %675 = phi i32 [ %670, %669 ], [ %659, %665 ], [ %659, %657 ]
  %676 = load i32, ptr %84, align 4
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %681, label %678

678:                                              ; preds = %674
  %679 = add nuw nsw i32 %675, 1
  %680 = trunc i32 %675 to i8
  store i8 %680, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  br label %681

681:                                              ; preds = %678, %674
  %682 = phi i32 [ %679, %678 ], [ %675, %674 ]
  %683 = load i32, ptr %9, align 4
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %688

685:                                              ; preds = %681
  %686 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  store i8 %686, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 6), align 1
  %687 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  br label %705

688:                                              ; preds = %681
  %689 = trunc i32 %682 to i8
  store i8 %689, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  %690 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  store i8 %690, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 6), align 1
  %691 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 8
  %692 = load i8, ptr %691, align 4, !range !9
  %693 = icmp eq i8 %692, 0
  br i1 %693, label %694, label %698

694:                                              ; preds = %688
  %695 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %696 = load i8, ptr %695, align 1, !range !9
  %697 = icmp eq i8 %696, 0
  br i1 %697, label %705, label %698

698:                                              ; preds = %694, %688
  %699 = load ptr, ptr @in_feature_unit_desc, align 4
  %700 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %699, i32 0, i32 3
  %701 = load i8, ptr %700, align 1
  store i8 %701, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 6), align 1
  %702 = load i8, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  %703 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %699, i32 0, i32 4
  store i8 %702, ptr %703, align 1
  %704 = load i32, ptr %84, align 4
  br label %709

705:                                              ; preds = %694, %685
  %706 = phi i8 [ %687, %685 ], [ %689, %694 ]
  %707 = phi i8 [ %686, %685 ], [ %690, %694 ]
  %708 = load i8, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 3), align 1
  store i8 %708, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 6), align 1
  br label %709

709:                                              ; preds = %705, %698
  %710 = phi i32 [ %676, %705 ], [ %704, %698 ]
  %711 = phi i8 [ %706, %705 ], [ %689, %698 ]
  %712 = phi i8 [ %707, %705 ], [ %690, %698 ]
  store i8 %711, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 7), align 1
  store i8 %711, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @io_in_it_desc, i32 0, i32 6), align 1
  store i8 %712, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 7), align 1
  %713 = icmp eq i32 %710, 0
  br i1 %713, label %728, label %714

714:                                              ; preds = %709
  %715 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 13
  %716 = load i8, ptr %715, align 4, !range !9
  %717 = icmp eq i8 %716, 0
  br i1 %717, label %718, label %722

718:                                              ; preds = %714
  %719 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %720 = load i8, ptr %719, align 1, !range !9
  %721 = icmp eq i8 %720, 0
  br i1 %721, label %728, label %722

722:                                              ; preds = %718, %714
  %723 = load ptr, ptr @out_feature_unit_desc, align 4
  %724 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %723, i32 0, i32 3
  %725 = load i8, ptr %724, align 1
  store i8 %725, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 6), align 1
  %726 = load i8, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  %727 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %723, i32 0, i32 4
  store i8 %726, ptr %727, align 1
  br label %730

728:                                              ; preds = %718, %709
  %729 = load i8, ptr getelementptr inbounds (%struct.uac2_input_terminal_descriptor, ptr @usb_out_it_desc, i32 0, i32 3), align 1
  store i8 %729, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @io_out_ot_desc, i32 0, i32 6), align 1
  br label %730

730:                                              ; preds = %728, %722
  %731 = phi i8 [ %729, %728 ], [ %726, %722 ]
  store i8 %731, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_out_hdr_desc, i32 0, i32 3), align 1
  %732 = load i8, ptr getelementptr inbounds (%struct.uac2_output_terminal_descriptor, ptr @usb_in_ot_desc, i32 0, i32 3), align 1
  store i8 %732, ptr getelementptr inbounds (%struct.uac2_as_header_descriptor, ptr @as_in_hdr_desc, i32 0, i32 3), align 1
  store i8 1, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 3), align 1
  store i16 9, ptr getelementptr inbounds (%struct.uac2_ac_header_descriptor, ptr @ac_hdr_desc, i32 0, i32 5), align 1
  %733 = load i32, ptr %9, align 4
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %750, label %735

735:                                              ; preds = %730
  %736 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 8
  %737 = load i8, ptr %736, align 4, !range !9
  %738 = icmp eq i8 %737, 0
  br i1 %738, label %739, label %743

739:                                              ; preds = %735
  %740 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %741 = load i8, ptr %740, align 1, !range !9
  %742 = icmp eq i8 %741, 0
  br i1 %742, label %748, label %743

743:                                              ; preds = %739, %735
  %744 = load ptr, ptr @in_feature_unit_desc, align 4
  %745 = load i8, ptr %744, align 1
  %746 = zext i8 %745 to i16
  %747 = add nuw nsw i16 %746, 46
  br label %748

748:                                              ; preds = %743, %739
  %749 = phi i16 [ %747, %743 ], [ 46, %739 ]
  store i16 %749, ptr getelementptr inbounds (%struct.uac2_ac_header_descriptor, ptr @ac_hdr_desc, i32 0, i32 5), align 1
  store i8 2, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 3), align 1
  br label %750

750:                                              ; preds = %748, %730
  %751 = phi i8 [ 3, %748 ], [ 2, %730 ]
  %752 = phi i16 [ %749, %748 ], [ 9, %730 ]
  %753 = load i32, ptr %84, align 4
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %772, label %755

755:                                              ; preds = %750
  %756 = add nuw nsw i16 %752, 25
  %757 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 13
  %758 = load i8, ptr %757, align 4, !range !9
  %759 = icmp eq i8 %758, 0
  br i1 %759, label %760, label %764

760:                                              ; preds = %755
  %761 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %762 = load i8, ptr %761, align 1, !range !9
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %769, label %764

764:                                              ; preds = %760, %755
  %765 = load ptr, ptr @out_feature_unit_desc, align 4
  %766 = load i8, ptr %765, align 1
  %767 = zext i8 %766 to i16
  %768 = add nuw nsw i16 %756, %767
  br label %769

769:                                              ; preds = %764, %760
  %770 = phi i16 [ %768, %764 ], [ %756, %760 ]
  %771 = add nuw nsw i16 %770, 12
  store i16 %771, ptr getelementptr inbounds (%struct.uac2_ac_header_descriptor, ptr @ac_hdr_desc, i32 0, i32 5), align 1
  store i8 %751, ptr getelementptr inbounds (%struct.usb_interface_assoc_descriptor, ptr @iad_desc, i32 0, i32 3), align 1
  br label %772

772:                                              ; preds = %769, %750
  tail call fastcc void @setup_headers(ptr noundef %8, ptr noundef nonnull @fs_audio_desc, i32 noundef 2) #12
  tail call fastcc void @setup_headers(ptr noundef %8, ptr noundef nonnull @hs_audio_desc, i32 noundef 3) #12
  tail call fastcc void @setup_headers(ptr noundef %8, ptr noundef nonnull @ss_audio_desc, i32 noundef 5) #12
  %773 = tail call i32 @usb_assign_descriptors(ptr noundef %1, ptr noundef nonnull @fs_audio_desc, ptr noundef nonnull @hs_audio_desc, ptr noundef nonnull @ss_audio_desc, ptr noundef nonnull @ss_audio_desc) #12
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %877

775:                                              ; preds = %772
  %776 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 1
  store ptr %5, ptr %776, align 4
  %777 = load i32, ptr %9, align 4
  %778 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9
  store i32 %777, ptr %778, align 4
  %779 = load i32, ptr %35, align 4
  %780 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 1
  store i32 %779, ptr %780, align 4
  %781 = load i32, ptr %25, align 4
  %782 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 2
  store i32 %781, ptr %782, align 4
  %783 = load i32, ptr %9, align 4
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %810, label %785

785:                                              ; preds = %775
  %786 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 8
  %787 = load i8, ptr %786, align 4, !range !9
  %788 = icmp eq i8 %787, 0
  br i1 %788, label %789, label %793

789:                                              ; preds = %785
  %790 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %791 = load i8, ptr %790, align 1, !range !9
  %792 = icmp eq i8 %791, 0
  br i1 %792, label %810, label %793

793:                                              ; preds = %789, %785
  %794 = load ptr, ptr @in_feature_unit_desc, align 4
  %795 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %794, i32 0, i32 3
  %796 = load i8, ptr %795, align 1
  %797 = zext i8 %796 to i32
  %798 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3
  store i32 %797, ptr %798, align 4
  %799 = load i8, ptr %786, align 4, !range !9
  %800 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 1
  store i8 %799, ptr %800, align 4
  %801 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %802 = load i8, ptr %801, align 1, !range !9
  %803 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 2
  store i8 %802, ptr %803, align 1
  %804 = load i16, ptr %46, align 2
  %805 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 3
  store i16 %804, ptr %805, align 2
  %806 = load i16, ptr %43, align 4
  %807 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 4
  store i16 %806, ptr %807, align 4
  %808 = load i16, ptr %59, align 2
  %809 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 3, i32 5
  store i16 %808, ptr %809, align 2
  br label %810

810:                                              ; preds = %793, %789, %775
  %811 = load i32, ptr %84, align 4
  %812 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 4
  store i32 %811, ptr %812, align 4
  %813 = load i32, ptr %39, align 4
  %814 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 5
  store i32 %813, ptr %814, align 4
  %815 = load i32, ptr %30, align 4
  %816 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 6
  store i32 %815, ptr %816, align 4
  %817 = load i32, ptr %84, align 4
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %844, label %819

819:                                              ; preds = %810
  %820 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 13
  %821 = load i8, ptr %820, align 4, !range !9
  %822 = icmp eq i8 %821, 0
  br i1 %822, label %823, label %827

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %825 = load i8, ptr %824, align 1, !range !9
  %826 = icmp eq i8 %825, 0
  br i1 %826, label %844, label %827

827:                                              ; preds = %823, %819
  %828 = load ptr, ptr @out_feature_unit_desc, align 4
  %829 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %828, i32 0, i32 3
  %830 = load i8, ptr %829, align 1
  %831 = zext i8 %830 to i32
  %832 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7
  store i32 %831, ptr %832, align 4
  %833 = load i8, ptr %820, align 4, !range !9
  %834 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 1
  store i8 %833, ptr %834, align 4
  %835 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %836 = load i8, ptr %835, align 1, !range !9
  %837 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 2
  store i8 %836, ptr %837, align 1
  %838 = load i16, ptr %54, align 2
  %839 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 3
  store i16 %838, ptr %839, align 2
  %840 = load i16, ptr %51, align 4
  %841 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 4
  store i16 %840, ptr %841, align 4
  %842 = load i16, ptr %64, align 2
  %843 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 7, i32 5
  store i16 %842, ptr %843, align 2
  br label %844

844:                                              ; preds = %827, %823, %810
  %845 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 18
  %846 = load i32, ptr %845, align 4
  %847 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 8
  store i32 %846, ptr %847, align 4
  %848 = load i32, ptr %363, align 4
  %849 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 9, i32 9
  store i32 %848, ptr %849, align 4
  %850 = load i32, ptr %84, align 4
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %860, label %852

852:                                              ; preds = %844
  %853 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 13
  %854 = load i8, ptr %853, align 4, !range !9
  %855 = icmp eq i8 %854, 0
  br i1 %855, label %856, label %871

856:                                              ; preds = %852
  %857 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 14
  %858 = load i8, ptr %857, align 1, !range !9
  %859 = icmp eq i8 %858, 0
  br i1 %859, label %860, label %871

860:                                              ; preds = %856, %844
  %861 = load i32, ptr %9, align 4
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %873, label %863

863:                                              ; preds = %860
  %864 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 8
  %865 = load i8, ptr %864, align 4, !range !9
  %866 = icmp eq i8 %865, 0
  br i1 %866, label %867, label %871

867:                                              ; preds = %863
  %868 = getelementptr inbounds %struct.f_uac2_opts, ptr %8, i32 0, i32 9
  %869 = load i8, ptr %868, align 1, !range !9
  %870 = icmp eq i8 %869, 0
  br i1 %870, label %873, label %871

871:                                              ; preds = %867, %863, %856, %852
  %872 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 7
  store ptr @afunc_notify, ptr %872, align 4
  br label %873

873:                                              ; preds = %871, %867, %860
  %874 = tail call i32 @g_audio_setup(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #12
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %881, label %876

876:                                              ; preds = %873
  tail call void @usb_free_all_descriptors(ptr noundef %1) #12
  store ptr null, ptr %776, align 4
  br label %877

877:                                              ; preds = %876, %772, %601, %593, %585, %356, %325, %307, %297, %137
  %878 = phi i32 [ %295, %297 ], [ %305, %307 ], [ %323, %325 ], [ %773, %772 ], [ %874, %876 ], [ -19, %601 ], [ -19, %593 ], [ -19, %585 ], [ -19, %356 ], [ -12, %137 ]
  %879 = load ptr, ptr @out_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %879) #12
  store ptr null, ptr @out_feature_unit_desc, align 4
  %880 = load ptr, ptr @in_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %880) #12
  store ptr null, ptr @in_feature_unit_desc, align 4
  br label %881

881:                                              ; preds = %877, %873, %108, %81, %76
  %882 = phi i32 [ %82, %81 ], [ %878, %877 ], [ -22, %76 ], [ 0, %873 ], [ -12, %108 ]
  ret i32 %882
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @afunc_unbind(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  tail call void @g_audio_cleanup(ptr noundef %1) #12
  tail call void @usb_free_all_descriptors(ptr noundef %1) #12
  %3 = getelementptr inbounds %struct.g_audio, ptr %1, i32 0, i32 1
  store ptr null, ptr %3, align 4
  %4 = load ptr, ptr @out_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %4) #12
  store ptr null, ptr @out_feature_unit_desc, align 4
  %5 = load ptr, ptr @in_feature_unit_desc, align 4
  tail call void @kfree(ptr noundef %5) #12
  store ptr null, ptr @in_feature_unit_desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @afunc_set_alt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_configuration, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.usb_gadget, ptr %8, i32 0, i32 11
  %10 = icmp ugt i32 %2, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_set_alt, i32 noundef 1338) #14
  br label %55

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_set_alt, i32 noundef 1345) #14
  br label %55

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %55, label %24

24:                                               ; preds = %20
  %25 = tail call i32 @usb_ep_disable(ptr noundef nonnull %22) #12
  %26 = load ptr, ptr %21, align 4
  %27 = tail call i32 @config_ep_by_speed(ptr noundef %8, ptr noundef %0, ptr noundef %26) #12
  %28 = load ptr, ptr %21, align 4
  %29 = tail call i32 @usb_ep_enable(ptr noundef %28) #12
  br label %55

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 3
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = trunc i32 %2 to i8
  %37 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 6
  store i8 %36, ptr %37, align 1
  %38 = icmp eq i32 %2, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = tail call i32 @u_audio_start_capture(ptr noundef %0) #12
  br label %55

41:                                               ; preds = %35
  tail call void @u_audio_stop_capture(ptr noundef %0) #12
  br label %55

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 2
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = trunc i32 %2 to i8
  %49 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 5
  store i8 %48, ptr %49, align 4
  %50 = icmp eq i32 %2, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = tail call i32 @u_audio_start_playback(ptr noundef %0) #12
  br label %55

53:                                               ; preds = %47
  tail call void @u_audio_stop_playback(ptr noundef %0) #12
  br label %55

54:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_set_alt, i32 noundef 1374) #14
  br label %55

55:                                               ; preds = %54, %53, %51, %41, %39, %24, %20, %19, %11
  %56 = phi i32 [ -22, %11 ], [ -22, %19 ], [ -22, %54 ], [ 0, %24 ], [ 0, %20 ], [ %40, %39 ], [ 0, %41 ], [ %52, %51 ], [ 0, %53 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @afunc_get_alt(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  br label %33

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 6
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  br label %33

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 5
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  br label %33

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.usb_gadget, ptr %31, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.afunc_get_alt, i32 noundef 1396, i32 noundef %1) #14
  br label %33

33:                                               ; preds = %29, %25, %16, %7
  %34 = phi i32 [ %10, %7 ], [ %19, %16 ], [ %28, %25 ], [ -22, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @afunc_disable(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 5
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 6
  store i8 0, ptr %3, align 1
  tail call void @u_audio_stop_capture(ptr noundef %0) #12
  tail call void @u_audio_stop_playback(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @usb_ep_disable(ptr noundef nonnull %5) #12
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @afunc_setup(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.cntrl_range_lay3, align 2
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.usb_configuration, ptr %10, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.usb_composite_dev, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %16 = load i16, ptr %15, align 1
  %17 = load i8, ptr %1, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 96
  %20 = icmp eq i32 %19, 32
  br i1 %20, label %21, label %364

21:                                               ; preds = %2
  %22 = and i32 %18, 31
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %340

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %26 = load i16, ptr %25, align 1
  %27 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = trunc i16 %26 to i8
  %30 = icmp eq i8 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.usb_gadget, ptr %33, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.setup_rq_inf, i32 noundef 1672) #14
  br label %364

35:                                               ; preds = %24
  %36 = icmp sgt i8 %17, -1
  %37 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  br i1 %36, label %273, label %39

39:                                               ; preds = %35
  switch i8 %38, label %364 [
    i8 1, label %40
    i8 2, label %156
  ]

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %44 = load i16, ptr %43, align 1
  %45 = lshr i16 %26, 8
  %46 = zext i16 %45 to i32
  %47 = lshr i16 %44, 8
  %48 = zext i16 %47 to i32
  %49 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  %54 = zext i8 %53 to i16
  %55 = icmp eq i16 %45, %54
  %56 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  %57 = zext i8 %56 to i16
  %58 = icmp eq i16 %45, %57
  %59 = select i1 %55, i1 true, i1 %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %40
  %61 = trunc i16 %47 to i8
  switch i8 %61, label %74 [
    i8 1, label %62
    i8 2, label %70
  ]

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 0, ptr %5, align 4
  br i1 %55, label %63, label %64

63:                                               ; preds = %62
  store i32 %50, ptr %5, align 4
  br label %66

64:                                               ; preds = %62
  br i1 %58, label %65, label %66

65:                                               ; preds = %64
  store i32 %52, ptr %5, align 4
  br label %66

66:                                               ; preds = %65, %64, %63
  %67 = tail call i16 @llvm.umin.i16(i16 %16, i16 4) #12
  %68 = zext i16 %67 to i32
  %69 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %69, ptr nonnull align 4 %5, i32 %68, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %344

70:                                               ; preds = %60
  %71 = load ptr, ptr %14, align 4
  store i8 1, ptr %71, align 1
  %72 = icmp ne i16 %16, 0
  %73 = zext i1 %72 to i32
  br label %344

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.usb_gadget, ptr %76, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.in_rq_cur, i32 noundef 1450, i32 noundef %48) #14
  br label %364

78:                                               ; preds = %40
  %79 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 8
  %84 = load i8, ptr %83, align 4, !range !9
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 9
  %88 = load i8, ptr %87, align 1, !range !9
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %86, %82
  %91 = load ptr, ptr @in_feature_unit_desc, align 4
  %92 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %91, i32 0, i32 3
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i16
  %95 = icmp eq i16 %45, %94
  br i1 %95, label %118, label %96

96:                                               ; preds = %90, %86, %78
  %97 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %152, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 13
  %102 = load i8, ptr %101, align 4, !range !9
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 14
  %106 = load i8, ptr %105, align 1, !range !9
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %152, label %108

108:                                              ; preds = %104, %100
  %109 = load ptr, ptr @out_feature_unit_desc, align 4
  %110 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %109, i32 0, i32 3
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i16
  %113 = icmp eq i16 %45, %112
  br i1 %113, label %114, label %152

114:                                              ; preds = %108
  br i1 %81, label %132, label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 8
  %117 = load i8, ptr %116, align 4, !range !9
  br label %118

118:                                              ; preds = %115, %90
  %119 = phi i8 [ %117, %115 ], [ %84, %90 ]
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.f_uac2_opts, ptr %42, i32 0, i32 9
  %123 = load i8, ptr %122, align 1, !range !9
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %121, %118
  %126 = load ptr, ptr @in_feature_unit_desc, align 4
  %127 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %126, i32 0, i32 3
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i16
  %130 = icmp eq i16 %45, %129
  %131 = zext i1 %130 to i32
  br label %132

132:                                              ; preds = %125, %121, %114
  %133 = phi i32 [ 0, %121 ], [ 0, %114 ], [ %131, %125 ]
  %134 = trunc i16 %47 to i8
  switch i8 %134, label %148 [
    i8 1, label %135
    i8 2, label %142
  ]

135:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  %136 = call i32 @u_audio_get_mute(ptr noundef %0, i32 noundef %133, ptr noundef nonnull %6) #12
  %137 = load i32, ptr %6, align 4
  %138 = trunc i32 %137 to i8
  %139 = load ptr, ptr %14, align 4
  store i8 %138, ptr %139, align 1
  %140 = icmp ne i16 %16, 0
  %141 = zext i1 %140 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  br label %344

142:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #12
  store i16 0, ptr %8, align 2, !annotation !8
  %143 = call i32 @u_audio_get_volume(ptr noundef %0, i32 noundef %133, ptr noundef nonnull %8) #12
  %144 = load i16, ptr %8, align 2
  store i16 %144, ptr %7, align 2
  %145 = call i16 @llvm.umin.i16(i16 %16, i16 2) #12
  %146 = zext i16 %145 to i32
  %147 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %147, ptr nonnull align 2 %7, i32 %146, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7)
  br label %344

148:                                              ; preds = %132
  %149 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.usb_gadget, ptr %150, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.in_rq_cur, i32 noundef 1480, i32 noundef %48) #14
  br label %364

152:                                              ; preds = %108, %104, %96
  %153 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.usb_gadget, ptr %154, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %155, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.in_rq_cur, i32 noundef 1485, i32 noundef %46, i32 noundef %48) #14
  br label %364

156:                                              ; preds = %39
  %157 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %160 = load i16, ptr %159, align 1
  %161 = lshr i16 %26, 8
  %162 = zext i16 %161 to i32
  %163 = lshr i16 %160, 8
  %164 = zext i16 %163 to i32
  %165 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 5
  %168 = load i32, ptr %167, align 4
  %169 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  %170 = zext i8 %169 to i16
  %171 = icmp eq i16 %161, %170
  %172 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  %173 = zext i8 %172 to i16
  %174 = icmp eq i16 %161, %173
  %175 = select i1 %171, i1 true, i1 %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %156
  %177 = icmp eq i16 %163, 1
  br i1 %177, label %178, label %186

178:                                              ; preds = %176
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3)
  %179 = select i1 %171, i32 %166, i32 %168
  %180 = getelementptr inbounds i8, ptr %3, i32 2
  store i32 %179, ptr %180, align 2
  %181 = getelementptr inbounds i8, ptr %3, i32 6
  store i32 %179, ptr %181, align 2
  %182 = getelementptr inbounds i8, ptr %3, i32 10
  store i32 0, ptr %182, align 2
  store i16 1, ptr %3, align 2
  %183 = tail call i16 @llvm.umin.i16(i16 %16, i16 14) #12
  %184 = zext i16 %183 to i32
  %185 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %185, ptr nonnull align 2 %3, i32 %184, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3)
  br label %344

186:                                              ; preds = %176
  %187 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr inbounds %struct.usb_gadget, ptr %188, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.in_rq_range, i32 noundef 1528, i32 noundef %164) #14
  br label %364

190:                                              ; preds = %156
  %191 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 8
  %196 = load i8, ptr %195, align 4, !range !9
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 9
  %200 = load i8, ptr %199, align 1, !range !9
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %198, %194
  %203 = load ptr, ptr @in_feature_unit_desc, align 4
  %204 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %203, i32 0, i32 3
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i16
  %207 = icmp eq i16 %161, %206
  br i1 %207, label %230, label %208

208:                                              ; preds = %202, %198, %190
  %209 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 4
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %269, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 13
  %214 = load i8, ptr %213, align 4, !range !9
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 14
  %218 = load i8, ptr %217, align 1, !range !9
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %269, label %220

220:                                              ; preds = %216, %212
  %221 = load ptr, ptr @out_feature_unit_desc, align 4
  %222 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %221, i32 0, i32 3
  %223 = load i8, ptr %222, align 1
  %224 = zext i8 %223 to i16
  %225 = icmp eq i16 %161, %224
  br i1 %225, label %226, label %269

226:                                              ; preds = %220
  br i1 %193, label %243, label %227

227:                                              ; preds = %226
  %228 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 8
  %229 = load i8, ptr %228, align 4, !range !9
  br label %230

230:                                              ; preds = %227, %202
  %231 = phi i8 [ %229, %227 ], [ %196, %202 ]
  %232 = icmp eq i8 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 9
  %235 = load i8, ptr %234, align 1, !range !9
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %233, %230
  %238 = load ptr, ptr @in_feature_unit_desc, align 4
  %239 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %238, i32 0, i32 3
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i16
  %242 = icmp ne i16 %161, %241
  br label %243

243:                                              ; preds = %237, %233, %226
  %244 = phi i1 [ true, %233 ], [ true, %226 ], [ %242, %237 ]
  %245 = icmp eq i16 %163, 2
  br i1 %245, label %246, label %265

246:                                              ; preds = %243
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  %247 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 11
  %248 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 10
  %249 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 12
  %250 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 16
  %251 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 15
  %252 = getelementptr inbounds %struct.f_uac2_opts, ptr %158, i32 0, i32 17
  %253 = select i1 %244, ptr %250, ptr %247
  %254 = select i1 %244, ptr %251, ptr %248
  %255 = select i1 %244, ptr %252, ptr %249
  %256 = load i16, ptr %255, align 2
  %257 = load i16, ptr %254, align 2
  %258 = load i16, ptr %253, align 4
  %259 = getelementptr inbounds i8, ptr %4, i32 4
  store i16 %258, ptr %259, align 4
  %260 = getelementptr inbounds i8, ptr %4, i32 2
  store i16 %257, ptr %260, align 2
  %261 = getelementptr inbounds i8, ptr %4, i32 6
  store i16 %256, ptr %261, align 2
  store i16 1, ptr %4, align 8
  %262 = tail call i16 @llvm.umin.i16(i16 %16, i16 8) #12
  %263 = zext i16 %262 to i32
  %264 = load ptr, ptr %14, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %264, ptr nonnull align 8 %4, i32 %263, i1 false) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %344

265:                                              ; preds = %243
  %266 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  %268 = getelementptr inbounds %struct.usb_gadget, ptr %267, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %268, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.in_rq_range, i32 noundef 1561, i32 noundef %164) #14
  br label %364

269:                                              ; preds = %220, %216, %208
  %270 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  %272 = getelementptr inbounds %struct.usb_gadget, ptr %271, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %272, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.in_rq_range, i32 noundef 1566, i32 noundef %162, i32 noundef %164) #14
  br label %364

273:                                              ; preds = %35
  %274 = icmp eq i8 %38, 1
  br i1 %274, label %275, label %364

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %279 = load i16, ptr %278, align 1
  %280 = lshr i16 %26, 8
  %281 = zext i16 %280 to i32
  %282 = lshr i16 %279, 8
  %283 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @in_clk_src_desc, i32 0, i32 3), align 1
  %284 = zext i8 %283 to i16
  %285 = icmp eq i16 %280, %284
  %286 = load i8, ptr getelementptr inbounds (%struct.uac_clock_source_descriptor, ptr @out_clk_src_desc, i32 0, i32 3), align 1
  %287 = zext i8 %286 to i16
  %288 = icmp eq i16 %280, %287
  %289 = select i1 %285, i1 true, i1 %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %275
  %291 = icmp eq i16 %282, 1
  %292 = zext i16 %16 to i32
  br i1 %291, label %344, label %364

293:                                              ; preds = %275
  %294 = getelementptr inbounds %struct.f_uac2_opts, ptr %277, i32 0, i32 1
  %295 = load i32, ptr %294, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %311, label %297

297:                                              ; preds = %293
  %298 = getelementptr inbounds %struct.f_uac2_opts, ptr %277, i32 0, i32 8
  %299 = load i8, ptr %298, align 4, !range !9
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.f_uac2_opts, ptr %277, i32 0, i32 9
  %303 = load i8, ptr %302, align 1, !range !9
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %301, %297
  %306 = load ptr, ptr @in_feature_unit_desc, align 4
  %307 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %306, i32 0, i32 3
  %308 = load i8, ptr %307, align 1
  %309 = zext i8 %308 to i16
  %310 = icmp eq i16 %280, %309
  br i1 %310, label %329, label %311

311:                                              ; preds = %305, %301, %293
  %312 = getelementptr inbounds %struct.f_uac2_opts, ptr %277, i32 0, i32 4
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %335, label %315

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.f_uac2_opts, ptr %277, i32 0, i32 13
  %317 = load i8, ptr %316, align 4, !range !9
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.f_uac2_opts, ptr %277, i32 0, i32 14
  %321 = load i8, ptr %320, align 1, !range !9
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %335, label %323

323:                                              ; preds = %319, %315
  %324 = load ptr, ptr @out_feature_unit_desc, align 4
  %325 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %324, i32 0, i32 3
  %326 = load i8, ptr %325, align 1
  %327 = zext i8 %326 to i16
  %328 = icmp eq i16 %280, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %323, %305
  %330 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 7
  %331 = load i64, ptr %1, align 1
  store i64 %331, ptr %330, align 2
  %332 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 8
  store ptr %0, ptr %332, align 4
  %333 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 7
  store ptr @out_rq_cur_complete, ptr %333, align 4
  %334 = zext i16 %16 to i32
  br label %344

335:                                              ; preds = %323, %319, %311
  %336 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %337 = load ptr, ptr %336, align 4
  %338 = getelementptr inbounds %struct.usb_gadget, ptr %337, i32 0, i32 11
  %339 = zext i16 %282 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %338, ptr noundef nonnull @.str.60, ptr noundef nonnull @__func__.out_rq_cur, i32 noundef 1657, i32 noundef %281, i32 noundef %339) #14
  br label %364

340:                                              ; preds = %21
  %341 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = getelementptr inbounds %struct.usb_gadget, ptr %342, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %343, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_setup, i32 noundef 1701) #14
  br label %364

344:                                              ; preds = %329, %290, %246, %178, %142, %135, %70, %66
  %345 = phi i32 [ %68, %66 ], [ %73, %70 ], [ %141, %135 ], [ %146, %142 ], [ %263, %246 ], [ %184, %178 ], [ %334, %329 ], [ %292, %290 ]
  %346 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 1
  store i32 %345, ptr %346, align 4
  %347 = zext i16 %16 to i32
  %348 = icmp ult i32 %345, %347
  %349 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 6
  %350 = load i32, ptr %349, align 4
  %351 = select i1 %348, i32 262144, i32 0
  %352 = and i32 %350, -262145
  %353 = or i32 %352, %351
  store i32 %353, ptr %349, align 4
  %354 = load ptr, ptr %12, align 4
  %355 = getelementptr inbounds %struct.usb_gadget, ptr %354, i32 0, i32 3
  %356 = load ptr, ptr %355, align 8
  %357 = call i32 @usb_ep_queue(ptr noundef %356, ptr noundef %14, i32 noundef 2592) #12
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %344
  %360 = getelementptr inbounds %struct.g_audio, ptr %0, i32 0, i32 1
  %361 = load ptr, ptr %360, align 4
  %362 = getelementptr inbounds %struct.usb_gadget, ptr %361, i32 0, i32 11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %362, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.afunc_setup, i32 noundef 1709) #14
  %363 = getelementptr inbounds %struct.usb_request, ptr %14, i32 0, i32 11
  store i32 0, ptr %363, align 4
  br label %364

364:                                              ; preds = %359, %344, %340, %335, %290, %273, %269, %265, %186, %152, %148, %74, %39, %31, %2
  %365 = phi i32 [ -95, %2 ], [ %357, %359 ], [ %357, %344 ], [ -95, %340 ], [ -95, %31 ], [ -95, %273 ], [ -95, %39 ], [ -95, %74 ], [ -95, %152 ], [ -95, %148 ], [ -95, %186 ], [ -95, %269 ], [ -95, %265 ], [ -95, %335 ], [ -95, %290 ]
  ret i32 %365
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @afunc_free(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.usb_function, ptr %0, i32 0, i32 24
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.f_uac2_opts, ptr %3, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.f_uac2_opts, ptr %3, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interface_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_autoconfig(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_assign_descriptors(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @afunc_notify(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb_ep, ptr %5, i32 0, i32 6
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %49, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !11
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #12, !srcloc !12
  %12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %13 = icmp sgt i32 %12, 10
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #12, !srcloc !14
  br label %49

16:                                               ; preds = %9
  %17 = load ptr, ptr %4, align 4
  %18 = tail call ptr @usb_ep_alloc_request(ptr noundef %17, i32 noundef 2592) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2848, i32 noundef 6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %20
  %25 = shl i32 %1, 8
  %26 = getelementptr inbounds %struct.f_uac2, ptr %0, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  %30 = trunc i32 %29 to i16
  %31 = trunc i32 %2 to i16
  %32 = shl i16 %31, 8
  store i8 0, ptr %22, align 8
  %33 = getelementptr inbounds %struct.uac2_interrupt_data_msg, ptr %22, i32 0, i32 1
  store i8 1, ptr %33, align 1
  %34 = getelementptr inbounds %struct.uac2_interrupt_data_msg, ptr %22, i32 0, i32 3
  store i16 %30, ptr %34, align 4
  %35 = getelementptr inbounds %struct.uac2_interrupt_data_msg, ptr %22, i32 0, i32 2
  store i16 %32, ptr %35, align 2
  %36 = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 1
  store i32 6, ptr %36, align 4
  store ptr %22, ptr %18, align 4
  %37 = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 8
  store ptr %0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usb_request, ptr %18, i32 0, i32 7
  store ptr @afunc_notify_complete, ptr %38, align 4
  %39 = load ptr, ptr %4, align 4
  %40 = tail call i32 @usb_ep_queue(ptr noundef %39, ptr noundef nonnull %18, i32 noundef 2592) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %22) #12
  br label %43

43:                                               ; preds = %42, %20
  %44 = phi i32 [ %40, %42 ], [ -12, %20 ]
  %45 = load ptr, ptr %4, align 4
  tail call void @usb_ep_free_request(ptr noundef %45, ptr noundef nonnull %18) #12
  br label %46

46:                                               ; preds = %43, %16
  %47 = phi i32 [ %44, %43 ], [ -12, %16 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #12, !srcloc !11
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #12, !srcloc !14
  br label %49

49:                                               ; preds = %46, %24, %14, %3
  %50 = phi i32 [ 0, %14 ], [ %47, %46 ], [ 0, %3 ], [ 0, %24 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @g_audio_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_all_descriptors(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @setup_headers(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #9 {
  switch i32 %2, label %5 [
    i32 2, label %6
    i32 3, label %4
  ]

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %5, %4, %3
  %7 = phi ptr [ @ss_epout_desc_comp, %5 ], [ null, %4 ], [ null, %3 ]
  %8 = phi i1 [ false, %5 ], [ true, %4 ], [ true, %3 ]
  %9 = phi ptr [ @ss_epin_desc_comp, %5 ], [ null, %4 ], [ null, %3 ]
  %10 = phi ptr [ @ss_epin_fback_desc_comp, %5 ], [ null, %4 ], [ null, %3 ]
  %11 = phi ptr [ @ss_epout_desc, %5 ], [ @hs_epout_desc, %4 ], [ @fs_epout_desc, %3 ]
  %12 = phi ptr [ @ss_epin_desc, %5 ], [ @hs_epin_desc, %4 ], [ @fs_epin_desc, %3 ]
  %13 = phi ptr [ @ss_epin_fback_desc, %5 ], [ @hs_epin_fback_desc, %4 ], [ @fs_epin_fback_desc, %3 ]
  %14 = phi ptr [ @ss_ep_int_desc, %5 ], [ @hs_ep_int_desc, %4 ], [ @fs_ep_int_desc, %3 ]
  store ptr @iad_desc, ptr %1, align 4
  %15 = getelementptr ptr, ptr %1, i32 1
  store ptr @std_ac_if_desc, ptr %15, align 4
  %16 = getelementptr ptr, ptr %1, i32 2
  store ptr @ac_hdr_desc, ptr %16, align 4
  %17 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %6
  %21 = getelementptr ptr, ptr %1, i32 3
  store ptr @in_clk_src_desc, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ 4, %20 ], [ 3, %6 ]
  %24 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %46, label %27

27:                                               ; preds = %22
  %28 = add nuw nsw i32 %23, 1
  %29 = getelementptr ptr, ptr %1, i32 %23
  store ptr @out_clk_src_desc, ptr %29, align 4
  %30 = add nuw nsw i32 %23, 2
  %31 = getelementptr ptr, ptr %1, i32 %28
  store ptr @usb_out_it_desc, ptr %31, align 4
  %32 = load i32, ptr %24, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 13
  %36 = load i8, ptr %35, align 4, !range !9
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 14
  %40 = load i8, ptr %39, align 1, !range !9
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38, %34
  %43 = load ptr, ptr @out_feature_unit_desc, align 4
  %44 = add nuw nsw i32 %23, 3
  %45 = getelementptr ptr, ptr %1, i32 %30
  store ptr %43, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %38, %27, %22
  %47 = phi i32 [ %44, %42 ], [ %30, %38 ], [ %30, %27 ], [ %23, %22 ]
  %48 = load i32, ptr %17, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %46
  %51 = add nuw nsw i32 %47, 1
  %52 = getelementptr ptr, ptr %1, i32 %47
  store ptr @io_in_it_desc, ptr %52, align 4
  %53 = load i32, ptr %17, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 8
  %57 = load i8, ptr %56, align 4, !range !9
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 9
  %61 = load i8, ptr %60, align 1, !range !9
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %55
  %64 = load ptr, ptr @in_feature_unit_desc, align 4
  %65 = add nuw nsw i32 %47, 2
  %66 = getelementptr ptr, ptr %1, i32 %51
  store ptr %64, ptr %66, align 4
  br label %67

67:                                               ; preds = %63, %59, %50
  %68 = phi i32 [ %65, %63 ], [ %51, %59 ], [ %51, %50 ]
  %69 = add nuw nsw i32 %68, 1
  %70 = getelementptr ptr, ptr %1, i32 %68
  store ptr @usb_in_ot_desc, ptr %70, align 4
  br label %71

71:                                               ; preds = %67, %46
  %72 = phi i32 [ %69, %67 ], [ %47, %46 ]
  %73 = load i32, ptr %24, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %71
  %76 = add nuw nsw i32 %72, 1
  %77 = getelementptr ptr, ptr %1, i32 %72
  store ptr @io_out_ot_desc, ptr %77, align 4
  %78 = load i32, ptr %24, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 13
  %82 = load i8, ptr %81, align 4, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 14
  %86 = load i8, ptr %85, align 1, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %84, %75, %71
  %89 = phi i32 [ %78, %84 ], [ 0, %75 ], [ 0, %71 ]
  %90 = phi i32 [ %76, %84 ], [ %76, %75 ], [ %72, %71 ]
  %91 = load i32, ptr %17, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 8
  %95 = load i8, ptr %94, align 4, !range !9
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 9
  %99 = load i8, ptr %98, align 1, !range !9
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %97, %93, %84, %80
  %102 = phi i32 [ %90, %97 ], [ %90, %93 ], [ %76, %84 ], [ %76, %80 ]
  %103 = add nuw nsw i32 %102, 1
  %104 = getelementptr ptr, ptr %1, i32 %102
  store ptr %14, ptr %104, align 4
  %105 = load i32, ptr %24, align 4
  br label %106

106:                                              ; preds = %101, %97, %88
  %107 = phi i32 [ %105, %101 ], [ %89, %97 ], [ %89, %88 ]
  %108 = phi i32 [ %103, %101 ], [ %90, %97 ], [ %90, %88 ]
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %142, label %110

110:                                              ; preds = %106
  %111 = add nuw nsw i32 %108, 1
  %112 = getelementptr ptr, ptr %1, i32 %108
  store ptr @std_as_out_if0_desc, ptr %112, align 4
  %113 = add nuw nsw i32 %108, 2
  %114 = getelementptr ptr, ptr %1, i32 %111
  store ptr @std_as_out_if1_desc, ptr %114, align 4
  %115 = add nuw nsw i32 %108, 3
  %116 = getelementptr ptr, ptr %1, i32 %113
  store ptr @as_out_hdr_desc, ptr %116, align 4
  %117 = add nuw nsw i32 %108, 4
  %118 = getelementptr ptr, ptr %1, i32 %115
  store ptr @as_out_fmt1_desc, ptr %118, align 4
  %119 = add nuw nsw i32 %108, 5
  %120 = getelementptr ptr, ptr %1, i32 %117
  store ptr %11, ptr %120, align 4
  %121 = add nuw nsw i32 %108, 6
  %122 = getelementptr ptr, ptr %1, i32 %119
  br i1 %8, label %123, label %127

123:                                              ; preds = %110
  store ptr @as_iso_out_desc, ptr %122, align 4
  %124 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 7
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 4
  br i1 %126, label %136, label %142

127:                                              ; preds = %110
  store ptr %7, ptr %122, align 4
  %128 = add nuw nsw i32 %108, 7
  %129 = getelementptr ptr, ptr %1, i32 %121
  store ptr @as_iso_out_desc, ptr %129, align 4
  %130 = getelementptr inbounds %struct.f_uac2_opts, ptr %0, i32 0, i32 7
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %142

133:                                              ; preds = %127
  %134 = add nuw nsw i32 %108, 8
  %135 = getelementptr ptr, ptr %1, i32 %128
  store ptr %13, ptr %135, align 4
  br label %136

136:                                              ; preds = %133, %123
  %137 = phi i32 [ 9, %133 ], [ 7, %123 ]
  %138 = phi i32 [ %134, %133 ], [ %121, %123 ]
  %139 = phi ptr [ %10, %133 ], [ %13, %123 ]
  %140 = add nuw nsw i32 %108, %137
  %141 = getelementptr ptr, ptr %1, i32 %138
  store ptr %139, ptr %141, align 4
  br label %142

142:                                              ; preds = %136, %127, %123, %106
  %143 = phi i32 [ %121, %123 ], [ %108, %106 ], [ %128, %127 ], [ %140, %136 ]
  %144 = load i32, ptr %17, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %164, label %146

146:                                              ; preds = %142
  %147 = add nuw nsw i32 %143, 1
  %148 = getelementptr ptr, ptr %1, i32 %143
  store ptr @std_as_in_if0_desc, ptr %148, align 4
  %149 = add nuw nsw i32 %143, 2
  %150 = getelementptr ptr, ptr %1, i32 %147
  store ptr @std_as_in_if1_desc, ptr %150, align 4
  %151 = add nuw nsw i32 %143, 3
  %152 = getelementptr ptr, ptr %1, i32 %149
  store ptr @as_in_hdr_desc, ptr %152, align 4
  %153 = add nuw nsw i32 %143, 4
  %154 = getelementptr ptr, ptr %1, i32 %151
  store ptr @as_in_fmt1_desc, ptr %154, align 4
  %155 = add nuw nsw i32 %143, 5
  %156 = getelementptr ptr, ptr %1, i32 %153
  store ptr %12, ptr %156, align 4
  br i1 %8, label %160, label %157

157:                                              ; preds = %146
  %158 = add nuw nsw i32 %143, 6
  %159 = getelementptr ptr, ptr %1, i32 %155
  store ptr %9, ptr %159, align 4
  br label %160

160:                                              ; preds = %157, %146
  %161 = phi i32 [ %158, %157 ], [ %155, %146 ]
  %162 = add nuw nsw i32 %161, 1
  %163 = getelementptr ptr, ptr %1, i32 %161
  store ptr @as_iso_in_desc, ptr %163, align 4
  br label %164

164:                                              ; preds = %160, %142
  %165 = phi i32 [ %162, %160 ], [ %143, %142 ]
  %166 = getelementptr ptr, ptr %1, i32 %165
  store ptr null, ptr %166, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_alloc_request(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @afunc_notify_complete(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.f_uac2, ptr %4, i32 0, i32 9
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #12, !srcloc !14
  %7 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %7) #12
  tail call void @usb_ep_free_request(ptr noundef %0, ptr noundef %1) #12
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

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_mute(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_get_volume(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @out_rq_cur_complete(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.usb_function, ptr %4, i32 0, i32 24
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.f_uac2, ptr %4, i32 0, i32 7, i32 3
  %8 = load i16, ptr %7, align 1
  %9 = getelementptr inbounds %struct.f_uac2, ptr %4, i32 0, i32 7, i32 2
  %10 = load i16, ptr %9, align 1
  %11 = lshr i16 %8, 8
  %12 = lshr i16 %10, 8
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %88

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.f_uac2_opts, ptr %6, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.f_uac2_opts, ptr %6, i32 0, i32 8
  %23 = load i8, ptr %22, align 4, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.f_uac2_opts, ptr %6, i32 0, i32 9
  %27 = load i8, ptr %26, align 1, !range !9
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %25, %21
  %30 = load ptr, ptr @in_feature_unit_desc, align 4
  %31 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %30, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  %34 = icmp eq i16 %11, %33
  br i1 %34, label %57, label %35

35:                                               ; preds = %29, %25, %17
  %36 = getelementptr inbounds %struct.f_uac2_opts, ptr %6, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %88, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.f_uac2_opts, ptr %6, i32 0, i32 13
  %41 = load i8, ptr %40, align 4, !range !9
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.f_uac2_opts, ptr %6, i32 0, i32 14
  %45 = load i8, ptr %44, align 1, !range !9
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %43, %39
  %48 = load ptr, ptr @out_feature_unit_desc, align 4
  %49 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %48, i32 0, i32 3
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i16
  %52 = icmp eq i16 %11, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %47
  br i1 %20, label %71, label %54

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.f_uac2_opts, ptr %6, i32 0, i32 8
  %56 = load i8, ptr %55, align 4, !range !9
  br label %57

57:                                               ; preds = %54, %29
  %58 = phi i8 [ %56, %54 ], [ %23, %29 ]
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.f_uac2_opts, ptr %6, i32 0, i32 9
  %62 = load i8, ptr %61, align 1, !range !9
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60, %57
  %65 = load ptr, ptr @in_feature_unit_desc, align 4
  %66 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, ptr %65, i32 0, i32 3
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i16
  %69 = icmp eq i16 %11, %68
  %70 = zext i1 %69 to i32
  br label %71

71:                                               ; preds = %64, %60, %53
  %72 = phi i32 [ 0, %60 ], [ 0, %53 ], [ %70, %64 ]
  %73 = trunc i16 %12 to i8
  switch i8 %73, label %83 [
    i8 1, label %74
    i8 2, label %79
  ]

74:                                               ; preds = %71
  %75 = load ptr, ptr %1, align 4
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = tail call i32 @u_audio_set_mute(ptr noundef %4, i32 noundef %72, i32 noundef %77) #12
  br label %88

79:                                               ; preds = %71
  %80 = load ptr, ptr %1, align 4
  %81 = load i16, ptr %80, align 2
  %82 = tail call i32 @u_audio_set_volume(ptr noundef %4, i32 noundef %72, i16 noundef signext %81) #12
  br label %88

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.g_audio, ptr %4, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.usb_gadget, ptr %85, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.out_rq_cur_complete, i32 noundef 1625, i32 noundef %13) #14
  %87 = tail call i32 @usb_ep_set_halt(ptr noundef %0) #12
  br label %88

88:                                               ; preds = %83, %79, %74, %47, %43, %35, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_set_mute(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @u_audio_set_volume(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_ep_set_halt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_function_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #11

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

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
!10 = !{i64 2148234188}
!11 = !{i64 634956, i64 2148124927, i64 2148124953, i64 2148125000, i64 2148125022, i64 2148125050, i64 2148125070}
!12 = !{i64 2148137026, i64 2148137058, i64 2148137087, i64 2148137121, i64 2148137152, i64 2148137175}
!13 = !{i64 2148234391}
!14 = !{i64 2148138699, i64 2148138725, i64 2148138754, i64 2148138788, i64 2148138819, i64 2148138842}
