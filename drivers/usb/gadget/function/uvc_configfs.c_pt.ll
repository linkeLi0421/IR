; ModuleID = '/llk/IR/drivers/usb/gadget/function/uvc_configfs.c_pt.bc'
source_filename = "../drivers/usb/gadget/function/uvc_configfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.uvcg_config_group_type = type { %struct.config_item_type, ptr, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.f_uvc_opts = type { %struct.usb_function_instance, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.uvc_camera_terminal_descriptor, %struct.uvc_processing_unit_descriptor, %struct.uvc_output_terminal_descriptor, %struct.uvc_color_matching_descriptor, [5 x ptr], [5 x ptr], ptr, ptr, ptr, %struct.mutex, i32 }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.uvc_camera_terminal_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16, i16, i16, i8, [3 x i8] }
%struct.uvc_processing_unit_descriptor = type <{ i8, i8, i8, i8, i8, i16, i8, [2 x i8], i8, i8 }>
%struct.uvc_output_terminal_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.uvc_color_matching_descriptor = type { i8, i8, i8, i8, i8, i8 }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.uvcg_control_header = type { %struct.config_item, %struct.uvc_header_descriptor_1, i32 }
%struct.uvc_header_descriptor_1 = type <{ i8, i8, i8, i16, i16, i32, i8, [1 x i8] }>
%struct.uvcg_control_class_group = type { %struct.config_group, ptr }
%struct.uvcg_streaming_header = type { %struct.config_item, %struct.uvc_input_header_descriptor, i32, %struct.list_head, i32 }
%struct.uvc_input_header_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }>
%struct.uvcg_format_ptr = type { ptr, %struct.list_head }
%struct.uvcg_format = type { %struct.config_group, i32, i32, i32, [1 x i8] }
%struct.uvcg_frame = type { %struct.config_item, i32, %struct.anon.65, ptr }
%struct.anon.65 = type <{ i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i8 }>
%struct.uvcg_uncompressed = type { %struct.uvcg_format, %struct.uvc_format_uncompressed }
%struct.uvc_format_uncompressed = type { i8, i8, i8, i8, i8, [16 x i8], i8, i8, i8, i8, i8, i8 }
%struct.uvcg_mjpeg = type { %struct.uvcg_format, %struct.uvc_format_mjpeg }
%struct.uvc_format_mjpeg = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.uvcg_streaming_class_group = type { %struct.config_group, ptr }

@uvc_func_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvc_func_item_ops, ptr null, ptr @uvc_attrs, ptr null }, ptr @.str, ptr @.compoundliteral, ptr null }, align 4
@__this_module = external dso_local global %struct.module, align 64
@uvc_func_item_ops = internal global %struct.configfs_item_operations { ptr @uvc_func_item_release, ptr null, ptr null }, align 4
@uvc_attrs = internal global [4 x ptr] [ptr @f_uvc_opts_attr_streaming_interval, ptr @f_uvc_opts_attr_streaming_maxpacket, ptr @f_uvc_opts_attr_streaming_maxburst, ptr null], align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@uvcg_control_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_control_attrs, ptr null }, ptr @.str.5, ptr @.compoundliteral.6, ptr null }, align 4
@uvcg_streaming_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_streaming_attrs, ptr null }, ptr @.str.35, ptr @.compoundliteral.36, ptr null }, align 4
@.compoundliteral = internal global [3 x ptr] [ptr @uvcg_control_grp_type, ptr @uvcg_streaming_grp_type, ptr null], align 4
@f_uvc_opts_attr_streaming_interval = internal global %struct.configfs_attribute { ptr @.str.1, ptr @__this_module, i16 438, ptr @f_uvc_opts_streaming_interval_show, ptr @f_uvc_opts_streaming_interval_store }, align 4
@f_uvc_opts_attr_streaming_maxpacket = internal global %struct.configfs_attribute { ptr @.str.3, ptr @__this_module, i16 438, ptr @f_uvc_opts_streaming_maxpacket_show, ptr @f_uvc_opts_streaming_maxpacket_store }, align 4
@f_uvc_opts_attr_streaming_maxburst = internal global %struct.configfs_attribute { ptr @.str.4, ptr @__this_module, i16 438, ptr @f_uvc_opts_streaming_maxburst_show, ptr @f_uvc_opts_streaming_maxburst_store }, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"streaming_interval\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"streaming_maxpacket\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"streaming_maxburst\00", align 1
@uvcg_config_item_ops = internal global %struct.configfs_item_operations { ptr @uvcg_config_item_release, ptr null, ptr null }, align 4
@uvcg_default_control_attrs = internal global [2 x ptr] [ptr @uvcg_default_control_attr_b_interface_number, ptr null], align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@uvcg_control_header_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr @uvcg_control_header_grp_ops, ptr null, ptr null }, ptr @.str.8, ptr null, ptr null }, align 4
@uvcg_processing_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.11, ptr @.compoundliteral.12, ptr null }, align 4
@uvcg_terminal_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.19, ptr @.compoundliteral.20, ptr null }, align 4
@uvcg_control_class_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.32, ptr null, ptr @uvcg_control_class_create_children }, align 4
@.compoundliteral.6 = internal global [5 x ptr] [ptr @uvcg_control_header_grp_type, ptr @uvcg_processing_grp_type, ptr @uvcg_terminal_grp_type, ptr @uvcg_control_class_grp_type, ptr null], align 4
@uvcg_default_control_attr_b_interface_number = internal global %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 292, ptr @uvcg_default_control_b_interface_number_show, ptr null }, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"bInterfaceNumber\00", align 1
@uvcg_control_header_grp_ops = internal global %struct.configfs_group_operations { ptr @uvcg_control_header_make, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@uvcg_control_header_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_control_header_attrs, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@uvcg_control_header_attrs = internal global [3 x ptr] [ptr @uvcg_control_header_attr_bcd_uvc, ptr @uvcg_control_header_attr_dw_clock_frequency, ptr null], align 4
@uvcg_control_header_attr_bcd_uvc = internal global %struct.configfs_attribute { ptr @.str.9, ptr @__this_module, i16 438, ptr @uvcg_control_header_bcd_uvc_show, ptr @uvcg_control_header_bcd_uvc_store }, align 4
@uvcg_control_header_attr_dw_clock_frequency = internal global %struct.configfs_attribute { ptr @.str.10, ptr @__this_module, i16 438, ptr @uvcg_control_header_dw_clock_frequency_show, ptr @uvcg_control_header_dw_clock_frequency_store }, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"bcdUVC\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"dwClockFrequency\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"processing\00", align 1
@uvcg_default_processing_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_processing_attrs, ptr null }, ptr @.str.13, ptr null, ptr null }, align 4
@.compoundliteral.12 = internal global [2 x ptr] [ptr @uvcg_default_processing_type, ptr null], align 4
@uvcg_default_processing_attrs = internal global [6 x ptr] [ptr @uvcg_default_processing_attr_b_unit_id, ptr @uvcg_default_processing_attr_b_source_id, ptr @uvcg_default_processing_attr_w_max_multiplier, ptr @uvcg_default_processing_attr_bm_controls, ptr @uvcg_default_processing_attr_i_processing, ptr null], align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@uvcg_default_processing_attr_b_unit_id = internal global %struct.configfs_attribute { ptr @.str.14, ptr @__this_module, i16 292, ptr @uvcg_default_processing_b_unit_id_show, ptr null }, align 4
@uvcg_default_processing_attr_b_source_id = internal global %struct.configfs_attribute { ptr @.str.15, ptr @__this_module, i16 292, ptr @uvcg_default_processing_b_source_id_show, ptr null }, align 4
@uvcg_default_processing_attr_w_max_multiplier = internal global %struct.configfs_attribute { ptr @.str.16, ptr @__this_module, i16 292, ptr @uvcg_default_processing_w_max_multiplier_show, ptr null }, align 4
@uvcg_default_processing_attr_bm_controls = internal global %struct.configfs_attribute { ptr @.str.17, ptr @__this_module, i16 292, ptr @uvcg_default_processing_bm_controls_show, ptr null }, align 4
@uvcg_default_processing_attr_i_processing = internal global %struct.configfs_attribute { ptr @.str.18, ptr @__this_module, i16 292, ptr @uvcg_default_processing_i_processing_show, ptr null }, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"bUnitID\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"bSourceID\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"wMaxMultiplier\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"bmControls\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"iProcessing\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@uvcg_camera_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.21, ptr @.compoundliteral.22, ptr null }, align 4
@uvcg_output_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.30, ptr @.compoundliteral.31, ptr null }, align 4
@.compoundliteral.20 = internal global [3 x ptr] [ptr @uvcg_camera_grp_type, ptr @uvcg_output_grp_type, ptr null], align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@uvcg_default_camera_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_camera_attrs, ptr null }, ptr @.str.13, ptr null, ptr null }, align 4
@.compoundliteral.22 = internal global [2 x ptr] [ptr @uvcg_default_camera_type, ptr null], align 4
@uvcg_default_camera_attrs = internal global [9 x ptr] [ptr @uvcg_default_camera_attr_b_terminal_id, ptr @uvcg_default_camera_attr_w_terminal_type, ptr @uvcg_default_camera_attr_b_assoc_terminal, ptr @uvcg_default_camera_attr_i_terminal, ptr @uvcg_default_camera_attr_w_objective_focal_length_min, ptr @uvcg_default_camera_attr_w_objective_focal_length_max, ptr @uvcg_default_camera_attr_w_ocular_focal_length, ptr @uvcg_default_camera_attr_bm_controls, ptr null], align 4
@uvcg_default_camera_attr_b_terminal_id = internal global %struct.configfs_attribute { ptr @.str.23, ptr @__this_module, i16 292, ptr @uvcg_default_camera_b_terminal_id_show, ptr null }, align 4
@uvcg_default_camera_attr_w_terminal_type = internal global %struct.configfs_attribute { ptr @.str.24, ptr @__this_module, i16 292, ptr @uvcg_default_camera_w_terminal_type_show, ptr null }, align 4
@uvcg_default_camera_attr_b_assoc_terminal = internal global %struct.configfs_attribute { ptr @.str.25, ptr @__this_module, i16 292, ptr @uvcg_default_camera_b_assoc_terminal_show, ptr null }, align 4
@uvcg_default_camera_attr_i_terminal = internal global %struct.configfs_attribute { ptr @.str.26, ptr @__this_module, i16 292, ptr @uvcg_default_camera_i_terminal_show, ptr null }, align 4
@uvcg_default_camera_attr_w_objective_focal_length_min = internal global %struct.configfs_attribute { ptr @.str.27, ptr @__this_module, i16 292, ptr @uvcg_default_camera_w_objective_focal_length_min_show, ptr null }, align 4
@uvcg_default_camera_attr_w_objective_focal_length_max = internal global %struct.configfs_attribute { ptr @.str.28, ptr @__this_module, i16 292, ptr @uvcg_default_camera_w_objective_focal_length_max_show, ptr null }, align 4
@uvcg_default_camera_attr_w_ocular_focal_length = internal global %struct.configfs_attribute { ptr @.str.29, ptr @__this_module, i16 292, ptr @uvcg_default_camera_w_ocular_focal_length_show, ptr null }, align 4
@uvcg_default_camera_attr_bm_controls = internal global %struct.configfs_attribute { ptr @.str.17, ptr @__this_module, i16 292, ptr @uvcg_default_camera_bm_controls_show, ptr null }, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"bTerminalID\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"wTerminalType\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"bAssocTerminal\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"iTerminal\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"wObjectiveFocalLengthMin\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"wObjectiveFocalLengthMax\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"wOcularFocalLength\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@uvcg_default_output_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_output_attrs, ptr null }, ptr @.str.13, ptr null, ptr null }, align 4
@.compoundliteral.31 = internal global [2 x ptr] [ptr @uvcg_default_output_type, ptr null], align 4
@uvcg_default_output_attrs = internal global [6 x ptr] [ptr @uvcg_default_output_attr_b_terminal_id, ptr @uvcg_default_output_attr_w_terminal_type, ptr @uvcg_default_output_attr_b_assoc_terminal, ptr @uvcg_default_output_attr_b_source_id, ptr @uvcg_default_output_attr_i_terminal, ptr null], align 4
@uvcg_default_output_attr_b_terminal_id = internal global %struct.configfs_attribute { ptr @.str.23, ptr @__this_module, i16 292, ptr @uvcg_default_output_b_terminal_id_show, ptr null }, align 4
@uvcg_default_output_attr_w_terminal_type = internal global %struct.configfs_attribute { ptr @.str.24, ptr @__this_module, i16 292, ptr @uvcg_default_output_w_terminal_type_show, ptr null }, align 4
@uvcg_default_output_attr_b_assoc_terminal = internal global %struct.configfs_attribute { ptr @.str.25, ptr @__this_module, i16 292, ptr @uvcg_default_output_b_assoc_terminal_show, ptr null }, align 4
@uvcg_default_output_attr_b_source_id = internal global %struct.configfs_attribute { ptr @.str.15, ptr @__this_module, i16 292, ptr @uvcg_default_output_b_source_id_show, ptr null }, align 4
@uvcg_default_output_attr_i_terminal = internal global %struct.configfs_attribute { ptr @.str.26, ptr @__this_module, i16 292, ptr @uvcg_default_output_i_terminal_show, ptr null }, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@uvcg_control_class_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @uvcg_control_class_item_ops, ptr null, ptr null, ptr null }, align 4
@uvcg_control_class_item_ops = internal global %struct.configfs_item_operations { ptr @uvcg_config_item_release, ptr @uvcg_control_class_allow_link, ptr @uvcg_control_class_drop_link }, align 4
@uvcg_default_streaming_attrs = internal global [2 x ptr] [ptr @uvcg_default_streaming_attr_b_interface_number, ptr null], align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"streaming\00", align 1
@uvcg_streaming_header_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr @uvcg_streaming_header_grp_ops, ptr null, ptr null }, ptr @.str.8, ptr null, ptr null }, align 4
@uvcg_uncompressed_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr @uvcg_uncompressed_grp_ops, ptr null, ptr null }, ptr @.str.37, ptr null, ptr null }, align 4
@uvcg_mjpeg_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr @uvcg_mjpeg_grp_ops, ptr null, ptr null }, ptr @.str.38, ptr null, ptr null }, align 4
@uvcg_color_matching_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.64, ptr @.compoundliteral.65, ptr null }, align 4
@uvcg_streaming_class_grp_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr null, ptr null }, ptr @.str.32, ptr null, ptr @uvcg_streaming_class_create_children }, align 4
@.compoundliteral.36 = internal global [6 x ptr] [ptr @uvcg_streaming_header_grp_type, ptr @uvcg_uncompressed_grp_type, ptr @uvcg_mjpeg_grp_type, ptr @uvcg_color_matching_grp_type, ptr @uvcg_streaming_class_grp_type, ptr null], align 4
@uvcg_default_streaming_attr_b_interface_number = internal global %struct.configfs_attribute { ptr @.str.7, ptr @__this_module, i16 292, ptr @uvcg_default_streaming_b_interface_number_show, ptr null }, align 4
@uvcg_streaming_header_grp_ops = internal global %struct.configfs_group_operations { ptr @uvcg_streaming_header_make, ptr null, ptr null, ptr null, ptr null }, align 4
@uvcg_streaming_header_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @uvcg_streaming_header_item_ops, ptr null, ptr @uvcg_streaming_header_attrs, ptr null }, align 4
@uvcg_streaming_header_item_ops = internal global %struct.configfs_item_operations { ptr @uvcg_config_item_release, ptr @uvcg_streaming_header_allow_link, ptr @uvcg_streaming_header_drop_link }, align 4
@uvcg_streaming_header_attrs = internal global [6 x ptr] [ptr @uvcg_streaming_header_attr_bm_info, ptr @uvcg_streaming_header_attr_b_terminal_link, ptr @uvcg_streaming_header_attr_b_still_capture_method, ptr @uvcg_streaming_header_attr_b_trigger_support, ptr @uvcg_streaming_header_attr_b_trigger_usage, ptr null], align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"mjpeg\00", align 1
@uvcg_frame_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_frame_attrs, ptr null }, align 4
@uvcg_frame_attrs = internal global [10 x ptr] [ptr @uvcg_frame_attr_b_frame_index, ptr @uvcg_frame_attr_bm_capabilities, ptr @uvcg_frame_attr_w_width, ptr @uvcg_frame_attr_w_height, ptr @uvcg_frame_attr_dw_min_bit_rate, ptr @uvcg_frame_attr_dw_max_bit_rate, ptr @uvcg_frame_attr_dw_max_video_frame_buffer_size, ptr @uvcg_frame_attr_dw_default_frame_interval, ptr @uvcg_frame_attr_dw_frame_interval, ptr null], align 4
@uvcg_frame_attr_b_frame_index = internal global %struct.configfs_attribute { ptr @.str.39, ptr @__this_module, i16 292, ptr @uvcg_frame_b_frame_index_show, ptr null }, align 4
@uvcg_frame_attr_bm_capabilities = internal global %struct.configfs_attribute { ptr @.str.40, ptr @__this_module, i16 438, ptr @uvcg_frame_bm_capabilities_show, ptr @uvcg_frame_bm_capabilities_store }, align 4
@uvcg_frame_attr_w_width = internal global %struct.configfs_attribute { ptr @.str.41, ptr @__this_module, i16 438, ptr @uvcg_frame_w_width_show, ptr @uvcg_frame_w_width_store }, align 4
@uvcg_frame_attr_w_height = internal global %struct.configfs_attribute { ptr @.str.42, ptr @__this_module, i16 438, ptr @uvcg_frame_w_height_show, ptr @uvcg_frame_w_height_store }, align 4
@uvcg_frame_attr_dw_min_bit_rate = internal global %struct.configfs_attribute { ptr @.str.43, ptr @__this_module, i16 438, ptr @uvcg_frame_dw_min_bit_rate_show, ptr @uvcg_frame_dw_min_bit_rate_store }, align 4
@uvcg_frame_attr_dw_max_bit_rate = internal global %struct.configfs_attribute { ptr @.str.44, ptr @__this_module, i16 438, ptr @uvcg_frame_dw_max_bit_rate_show, ptr @uvcg_frame_dw_max_bit_rate_store }, align 4
@uvcg_frame_attr_dw_max_video_frame_buffer_size = internal global %struct.configfs_attribute { ptr @.str.45, ptr @__this_module, i16 438, ptr @uvcg_frame_dw_max_video_frame_buffer_size_show, ptr @uvcg_frame_dw_max_video_frame_buffer_size_store }, align 4
@uvcg_frame_attr_dw_default_frame_interval = internal global %struct.configfs_attribute { ptr @.str.46, ptr @__this_module, i16 438, ptr @uvcg_frame_dw_default_frame_interval_show, ptr @uvcg_frame_dw_default_frame_interval_store }, align 4
@uvcg_frame_attr_dw_frame_interval = internal global %struct.configfs_attribute { ptr @.str.47, ptr @__this_module, i16 438, ptr @uvcg_frame_dw_frame_interval_show, ptr @uvcg_frame_dw_frame_interval_store }, align 4
@.str.39 = private unnamed_addr constant [12 x i8] c"bFrameIndex\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"bmCapabilities\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"wWidth\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"wHeight\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"dwMinBitRate\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"dwMaxBitRate\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"dwMaxVideoFrameBufferSize\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"dwDefaultFrameInterval\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"dwFrameInterval\00", align 1
@uvcg_streaming_header_attr_bm_info = internal global %struct.configfs_attribute { ptr @.str.48, ptr @__this_module, i16 292, ptr @uvcg_streaming_header_bm_info_show, ptr null }, align 4
@uvcg_streaming_header_attr_b_terminal_link = internal global %struct.configfs_attribute { ptr @.str.49, ptr @__this_module, i16 292, ptr @uvcg_streaming_header_b_terminal_link_show, ptr null }, align 4
@uvcg_streaming_header_attr_b_still_capture_method = internal global %struct.configfs_attribute { ptr @.str.50, ptr @__this_module, i16 292, ptr @uvcg_streaming_header_b_still_capture_method_show, ptr null }, align 4
@uvcg_streaming_header_attr_b_trigger_support = internal global %struct.configfs_attribute { ptr @.str.51, ptr @__this_module, i16 292, ptr @uvcg_streaming_header_b_trigger_support_show, ptr null }, align 4
@uvcg_streaming_header_attr_b_trigger_usage = internal global %struct.configfs_attribute { ptr @.str.52, ptr @__this_module, i16 292, ptr @uvcg_streaming_header_b_trigger_usage_show, ptr null }, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"bmInfo\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"bTerminalLink\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"bStillCaptureMethod\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"bTriggerSupport\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"bTriggerUsage\00", align 1
@uvcg_uncompressed_grp_ops = internal global %struct.configfs_group_operations { ptr null, ptr @uvcg_uncompressed_make, ptr null, ptr null, ptr null }, align 4
@uvcg_uncompressed_make.guid = internal unnamed_addr constant [16 x i8] c"YUY2\00\00\10\00\80\00\00\AA\008\9Bq", align 1
@uvcg_uncompressed_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr @uvcg_uncompressed_group_ops, ptr @uvcg_uncompressed_attrs, ptr null }, align 4
@uvcg_uncompressed_group_ops = internal global %struct.configfs_group_operations { ptr @uvcg_frame_make, ptr null, ptr null, ptr null, ptr @uvcg_frame_drop }, align 4
@uvcg_uncompressed_attrs = internal global [9 x ptr] [ptr @uvcg_uncompressed_attr_b_format_index, ptr @uvcg_uncompressed_attr_guid_format, ptr @uvcg_uncompressed_attr_b_bits_per_pixel, ptr @uvcg_uncompressed_attr_b_default_frame_index, ptr @uvcg_uncompressed_attr_b_aspect_ratio_x, ptr @uvcg_uncompressed_attr_b_aspect_ratio_y, ptr @uvcg_uncompressed_attr_bm_interface_flags, ptr @uvcg_uncompressed_attr_bma_controls, ptr null], align 4
@uvcg_uncompressed_attr_b_format_index = internal global %struct.configfs_attribute { ptr @.str.53, ptr @__this_module, i16 292, ptr @uvcg_uncompressed_b_format_index_show, ptr null }, align 4
@uvcg_uncompressed_attr_guid_format = internal global %struct.configfs_attribute { ptr @.str.54, ptr @__this_module, i16 438, ptr @uvcg_uncompressed_guid_format_show, ptr @uvcg_uncompressed_guid_format_store }, align 4
@uvcg_uncompressed_attr_b_bits_per_pixel = internal global %struct.configfs_attribute { ptr @.str.55, ptr @__this_module, i16 438, ptr @uvcg_uncompressed_b_bits_per_pixel_show, ptr @uvcg_uncompressed_b_bits_per_pixel_store }, align 4
@uvcg_uncompressed_attr_b_default_frame_index = internal global %struct.configfs_attribute { ptr @.str.56, ptr @__this_module, i16 438, ptr @uvcg_uncompressed_b_default_frame_index_show, ptr @uvcg_uncompressed_b_default_frame_index_store }, align 4
@uvcg_uncompressed_attr_b_aspect_ratio_x = internal global %struct.configfs_attribute { ptr @.str.57, ptr @__this_module, i16 292, ptr @uvcg_uncompressed_b_aspect_ratio_x_show, ptr null }, align 4
@uvcg_uncompressed_attr_b_aspect_ratio_y = internal global %struct.configfs_attribute { ptr @.str.58, ptr @__this_module, i16 292, ptr @uvcg_uncompressed_b_aspect_ratio_y_show, ptr null }, align 4
@uvcg_uncompressed_attr_bm_interface_flags = internal global %struct.configfs_attribute { ptr @.str.59, ptr @__this_module, i16 292, ptr @uvcg_uncompressed_bm_interface_flags_show, ptr null }, align 4
@uvcg_uncompressed_attr_bma_controls = internal global %struct.configfs_attribute { ptr @.str.60, ptr @__this_module, i16 438, ptr @uvcg_uncompressed_bma_controls_show, ptr @uvcg_uncompressed_bma_controls_store }, align 4
@.str.53 = private unnamed_addr constant [13 x i8] c"bFormatIndex\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"guidFormat\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"bBitsPerPixel\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"bDefaultFrameIndex\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"bAspectRatioX\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"bAspectRatioY\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"bmInterfaceFlags\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"bmaControls\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@uvcg_mjpeg_grp_ops = internal global %struct.configfs_group_operations { ptr null, ptr @uvcg_mjpeg_make, ptr null, ptr null, ptr null }, align 4
@uvcg_mjpeg_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr @uvcg_mjpeg_group_ops, ptr @uvcg_mjpeg_attrs, ptr null }, align 4
@uvcg_mjpeg_group_ops = internal global %struct.configfs_group_operations { ptr @uvcg_frame_make, ptr null, ptr null, ptr null, ptr @uvcg_frame_drop }, align 4
@uvcg_mjpeg_attrs = internal global [8 x ptr] [ptr @uvcg_mjpeg_attr_b_format_index, ptr @uvcg_mjpeg_attr_b_default_frame_index, ptr @uvcg_mjpeg_attr_bm_flags, ptr @uvcg_mjpeg_attr_b_aspect_ratio_x, ptr @uvcg_mjpeg_attr_b_aspect_ratio_y, ptr @uvcg_mjpeg_attr_bm_interface_flags, ptr @uvcg_mjpeg_attr_bma_controls, ptr null], align 4
@uvcg_mjpeg_attr_b_format_index = internal global %struct.configfs_attribute { ptr @.str.53, ptr @__this_module, i16 292, ptr @uvcg_mjpeg_b_format_index_show, ptr null }, align 4
@uvcg_mjpeg_attr_b_default_frame_index = internal global %struct.configfs_attribute { ptr @.str.56, ptr @__this_module, i16 438, ptr @uvcg_mjpeg_b_default_frame_index_show, ptr @uvcg_mjpeg_b_default_frame_index_store }, align 4
@uvcg_mjpeg_attr_bm_flags = internal global %struct.configfs_attribute { ptr @.str.63, ptr @__this_module, i16 292, ptr @uvcg_mjpeg_bm_flags_show, ptr null }, align 4
@uvcg_mjpeg_attr_b_aspect_ratio_x = internal global %struct.configfs_attribute { ptr @.str.57, ptr @__this_module, i16 292, ptr @uvcg_mjpeg_b_aspect_ratio_x_show, ptr null }, align 4
@uvcg_mjpeg_attr_b_aspect_ratio_y = internal global %struct.configfs_attribute { ptr @.str.58, ptr @__this_module, i16 292, ptr @uvcg_mjpeg_b_aspect_ratio_y_show, ptr null }, align 4
@uvcg_mjpeg_attr_bm_interface_flags = internal global %struct.configfs_attribute { ptr @.str.59, ptr @__this_module, i16 292, ptr @uvcg_mjpeg_bm_interface_flags_show, ptr null }, align 4
@uvcg_mjpeg_attr_bma_controls = internal global %struct.configfs_attribute { ptr @.str.60, ptr @__this_module, i16 438, ptr @uvcg_mjpeg_bma_controls_show, ptr @uvcg_mjpeg_bma_controls_store }, align 4
@.str.63 = private unnamed_addr constant [8 x i8] c"bmFlags\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"color_matching\00", align 1
@uvcg_default_color_matching_type = internal constant %struct.uvcg_config_group_type { %struct.config_item_type { ptr @__this_module, ptr @uvcg_config_item_ops, ptr null, ptr @uvcg_default_color_matching_attrs, ptr null }, ptr @.str.13, ptr null, ptr null }, align 4
@.compoundliteral.65 = internal global [2 x ptr] [ptr @uvcg_default_color_matching_type, ptr null], align 4
@uvcg_default_color_matching_attrs = internal global [4 x ptr] [ptr @uvcg_default_color_matching_attr_b_color_primaries, ptr @uvcg_default_color_matching_attr_b_transfer_characteristics, ptr @uvcg_default_color_matching_attr_b_matrix_coefficients, ptr null], align 4
@uvcg_default_color_matching_attr_b_color_primaries = internal global %struct.configfs_attribute { ptr @.str.66, ptr @__this_module, i16 292, ptr @uvcg_default_color_matching_b_color_primaries_show, ptr null }, align 4
@uvcg_default_color_matching_attr_b_transfer_characteristics = internal global %struct.configfs_attribute { ptr @.str.67, ptr @__this_module, i16 292, ptr @uvcg_default_color_matching_b_transfer_characteristics_show, ptr null }, align 4
@uvcg_default_color_matching_attr_b_matrix_coefficients = internal global %struct.configfs_attribute { ptr @.str.68, ptr @__this_module, i16 292, ptr @uvcg_default_color_matching_b_matrix_coefficients_show, ptr null }, align 4
@.str.66 = private unnamed_addr constant [16 x i8] c"bColorPrimaries\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"bTransferCharacteristics\00", align 1
@.str.68 = private unnamed_addr constant [20 x i8] c"bMatrixCoefficients\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@uvcg_streaming_class_type = internal constant %struct.config_item_type { ptr @__this_module, ptr @uvcg_streaming_class_item_ops, ptr null, ptr null, ptr null }, align 4
@uvcg_streaming_class_item_ops = internal global %struct.configfs_item_operations { ptr @uvcg_config_item_release, ptr @uvcg_streaming_class_allow_link, ptr @uvcg_streaming_class_drop_link }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @uvcg_attach_configfs(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @config_group_init_type_name(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @uvc_func_type) #13
  %2 = tail call fastcc i32 @uvcg_config_create_children(ptr noundef %0, ptr noundef nonnull @uvc_func_type)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @config_item_put(ptr noundef %0) #13
  br label %5

5:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvcg_config_create_children(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.uvcg_config_group_type, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0) #13
  br label %34

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.uvcg_config_group_type, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3, i32 1
  br label %18

15:                                               ; preds = %26
  %16 = getelementptr ptr, ptr %19, i32 1
  %17 = icmp eq ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %15, %12
  %19 = phi ptr [ %10, %12 ], [ %16, %15 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 80) #14
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.uvcg_config_group_type, ptr %20, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %24, ptr noundef %28, ptr noundef nonnull %20) #13
  %29 = getelementptr inbounds %struct.config_group, ptr %24, i32 0, i32 4
  %30 = load ptr, ptr %14, align 4
  store ptr %29, ptr %14, align 4
  store ptr %13, ptr %29, align 8
  %31 = getelementptr inbounds %struct.config_group, ptr %24, i32 0, i32 4, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %29, ptr %30, align 4
  %32 = tail call fastcc i32 @uvcg_config_create_children(ptr noundef nonnull %24, ptr noundef nonnull %20) #13
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %15

34:                                               ; preds = %26, %22, %18, %15, %8, %6
  %35 = phi i32 [ %7, %6 ], [ 0, %8 ], [ -12, %22 ], [ 0, %18 ], [ 0, %15 ], [ %32, %26 ]
  ret i32 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvc_func_item_release(ptr noundef %0) #0 {
  tail call fastcc void @uvcg_config_remove_children(ptr noundef %0)
  tail call void @usb_put_function_instance(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @uvcg_config_remove_children(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -72
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call fastcc void @uvcg_config_remove_children(ptr noundef %7)
  tail call void @config_item_put(ptr noundef %7) #13
  %12 = icmp eq ptr %8, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_interval_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_interval_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 21
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = icmp ugt i32 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 1
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_maxpacket_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_maxpacket_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 21
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = icmp ugt i32 %13, 3072
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 2
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_maxburst_show(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %3) #13
  %4 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %5)
  tail call void @mutex_unlock(ptr noundef %3) #13
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_uvc_opts_streaming_maxburst_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 21
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i32, ptr %4, align 4
  %14 = icmp ugt i32 %13, 15
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %0, i32 0, i32 3
  store i32 %13, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %9, %3
  %18 = phi i32 [ %10, %9 ], [ %2, %15 ], [ -16, %3 ], [ -22, %12 ]
  call void @mutex_unlock(ptr noundef %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvcg_config_item_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_control_b_interface_number_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %10)
  tail call void @mutex_unlock(ptr noundef %8) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uvcg_control_header_make(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 72) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uvcg_control_header, ptr %4, i32 0, i32 1
  store i8 13, ptr %7, align 4
  %8 = getelementptr inbounds %struct.uvcg_control_header, ptr %4, i32 0, i32 1, i32 1
  store i8 36, ptr %8, align 1
  %9 = getelementptr inbounds %struct.uvcg_control_header, ptr %4, i32 0, i32 1, i32 2
  store i8 1, ptr %9, align 2
  %10 = getelementptr inbounds %struct.uvcg_control_header, ptr %4, i32 0, i32 1, i32 3
  store i16 272, ptr %10, align 1
  %11 = getelementptr inbounds %struct.uvcg_control_header, ptr %4, i32 0, i32 1, i32 5
  store i32 48000000, ptr %11, align 1
  tail call void @config_item_init_type_name(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @uvcg_control_header_type) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_control_header_bcd_uvc_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_control_header, ptr %0, i32 0, i32 1, i32 3
  %16 = load i16, ptr %15, align 1
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_control_header_bcd_uvc_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_control_header, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 21
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i16, ptr %4, align 2
  %29 = getelementptr inbounds %struct.uvcg_control_header, ptr %0, i32 0, i32 1, i32 3
  store i16 %28, ptr %29, align 1
  br label %30

30:                                               ; preds = %27, %24, %20, %3
  %31 = phi i32 [ %25, %24 ], [ %2, %27 ], [ -16, %20 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %16) #13
  call void @mutex_unlock(ptr noundef %9) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_control_header_dw_clock_frequency_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_control_header, ptr %0, i32 0, i32 1, i32 5
  %16 = load i32, ptr %15, align 1
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %16)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_control_header_dw_clock_frequency_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_control_header, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 21
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, ptr %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.uvcg_control_header, ptr %0, i32 0, i32 1, i32 5
  store i32 %28, ptr %31, align 1
  br label %32

32:                                               ; preds = %30, %27, %24, %20, %3
  %33 = phi i32 [ %25, %24 ], [ %2, %30 ], [ -16, %20 ], [ -16, %3 ], [ -22, %27 ]
  call void @mutex_unlock(ptr noundef %16) #13
  call void @mutex_unlock(ptr noundef %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_b_unit_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 12, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_b_source_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 12, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_w_max_multiplier_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 12, i32 5
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_bm_controls_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 12, i32 6
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %16, %2
  %17 = phi ptr [ %25, %16 ], [ %1, %2 ]
  %18 = phi i32 [ %26, %16 ], [ 0, %2 ]
  %19 = phi i32 [ %24, %16 ], [ 0, %2 ]
  %20 = getelementptr %struct.f_uvc_opts, ptr %11, i32 0, i32 12, i32 7, i32 %18
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %17, ptr noundef nonnull @.str.2, i32 noundef %22)
  %24 = add i32 %23, %19
  %25 = getelementptr i8, ptr %1, i32 %24
  %26 = add nuw nsw i32 %18, 1
  %27 = load i8, ptr %13, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %16, label %30

30:                                               ; preds = %16, %2
  %31 = phi i32 [ 0, %2 ], [ %24, %16 ]
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_processing_i_processing_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 12, i32 8
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_b_terminal_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 11, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_w_terminal_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 11, i32 4
  %16 = load i16, ptr %15, align 1
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_b_assoc_terminal_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 11, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_i_terminal_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 11, i32 6
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_w_objective_focal_length_min_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 11, i32 7
  %16 = load i16, ptr %15, align 1
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_w_objective_focal_length_max_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 11, i32 8
  %16 = load i16, ptr %15, align 1
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_w_ocular_focal_length_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 11, i32 9
  %16 = load i16, ptr %15, align 1
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_camera_bm_controls_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 11, i32 10
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %18, %2
  %19 = phi ptr [ %27, %18 ], [ %1, %2 ]
  %20 = phi i32 [ %28, %18 ], [ 0, %2 ]
  %21 = phi i32 [ %26, %18 ], [ 0, %2 ]
  %22 = getelementptr %struct.f_uvc_opts, ptr %13, i32 0, i32 11, i32 11, i32 %20
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %19, ptr noundef nonnull @.str.2, i32 noundef %24)
  %26 = add i32 %25, %21
  %27 = getelementptr i8, ptr %1, i32 %26
  %28 = add nuw nsw i32 %20, 1
  %29 = load i8, ptr %15, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %18, label %32

32:                                               ; preds = %18, %2
  %33 = phi i32 [ 0, %2 ], [ %26, %18 ]
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_b_terminal_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 13, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_w_terminal_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 13, i32 4
  %16 = load i16, ptr %15, align 1
  %17 = zext i16 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_b_assoc_terminal_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 13, i32 5
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_b_source_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 13, i32 6
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_output_i_terminal_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 13, i32 7
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_control_class_create_children(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 84) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uvcg_control_class_group, ptr %5, i32 0, i32 1
  store ptr @.str.33, ptr %8, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.33, ptr noundef nonnull @uvcg_control_class_type) #13
  %9 = getelementptr inbounds %struct.config_group, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %3, align 4
  store ptr %9, ptr %3, align 4
  store ptr %2, ptr %9, align 8
  %11 = getelementptr inbounds %struct.config_group, ptr %5, i32 0, i32 4, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %9, ptr %10, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 84) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.uvcg_control_class_group, ptr %13, i32 0, i32 1
  store ptr @.str.34, ptr %16, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %13, ptr noundef nonnull @.str.34, ptr noundef nonnull @uvcg_control_class_type) #13
  %17 = getelementptr inbounds %struct.config_group, ptr %13, i32 0, i32 4
  %18 = load ptr, ptr %3, align 4
  store ptr %17, ptr %3, align 4
  store ptr %2, ptr %17, align 8
  %19 = getelementptr inbounds %struct.config_group, ptr %13, i32 0, i32 4, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %17, ptr %18, align 4
  br label %20

20:                                               ; preds = %15, %7, %1
  %21 = phi i32 [ -12, %1 ], [ -12, %7 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_control_class_allow_link(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @config_group_find_item(ptr noundef %11, ptr noundef nonnull @.str.8) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_control_class_group, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(3) @.str.33) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 15
  br label %32

28:                                               ; preds = %18
  %29 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(3) @.str.34) #13
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 16
  br i1 %30, label %32, label %47

32:                                               ; preds = %28, %26
  %33 = phi ptr [ %27, %26 ], [ %31, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load ptr, ptr %33, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.uvcg_control_header, ptr %1, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  %46 = getelementptr inbounds %struct.uvcg_control_header, ptr %1, i32 0, i32 1
  store ptr %46, ptr %33, align 4
  br label %47

47:                                               ; preds = %42, %39, %35, %32, %28
  %48 = phi i32 [ 0, %42 ], [ -22, %32 ], [ -16, %39 ], [ -16, %35 ], [ -22, %28 ]
  tail call void @mutex_unlock(ptr noundef %21) #13
  br label %49

49:                                               ; preds = %47, %14, %2
  %50 = phi i32 [ -22, %14 ], [ %48, %47 ], [ -22, %2 ]
  tail call void @config_item_put(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvcg_control_class_drop_link(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @config_group_find_item(ptr noundef %11, ptr noundef nonnull @.str.8) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %44, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_control_class_group, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(3) @.str.33) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 15
  br label %32

28:                                               ; preds = %18
  %29 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(3) @.str.34) #13
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 16
  br i1 %30, label %32, label %43

32:                                               ; preds = %28, %26
  %33 = phi ptr [ %27, %26 ], [ %31, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.uvcg_control_header, ptr %1, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -1
  store i32 %42, ptr %40, align 4
  store ptr null, ptr %33, align 4
  br label %43

43:                                               ; preds = %39, %35, %32, %28
  tail call void @mutex_unlock(ptr noundef %21) #13
  br label %44

44:                                               ; preds = %43, %14, %2
  tail call void @config_item_put(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_group_find_item(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_streaming_b_interface_number_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.f_uvc_opts, ptr %7, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %10)
  tail call void @mutex_unlock(ptr noundef %8) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uvcg_streaming_header_make(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 84) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %4, i32 0, i32 3
  store volatile ptr %7, ptr %7, align 8
  %8 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %4, i32 0, i32 3, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %4, i32 0, i32 1, i32 1
  store i8 36, ptr %9, align 1
  %10 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %4, i32 0, i32 1, i32 2
  store i8 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %4, i32 0, i32 1, i32 7
  store i8 3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %4, i32 0, i32 1, i32 11
  store i8 1, ptr %12, align 8
  tail call void @config_item_init_type_name(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @uvcg_streaming_header_type) #13
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_allow_link(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %68

18:                                               ; preds = %2
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr inbounds %struct.config_item, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.config_item, ptr %23, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %21, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %18
  %28 = load ptr, ptr %23, align 4
  %29 = tail call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(13) @.str.37)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @strcmp(ptr noundef %28, ptr noundef nonnull dereferenceable(6) @.str.38)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %35
  br i1 %37, label %52, label %38

38:                                               ; preds = %48, %34
  %39 = phi ptr [ %50, %48 ], [ %36, %34 ]
  %40 = phi i32 [ %49, %48 ], [ 1, %34 ]
  %41 = getelementptr i8, ptr %39, i32 16
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, @uvcg_frame_type
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = add i32 %40, 1
  %46 = trunc i32 %40 to i8
  %47 = getelementptr i8, ptr %39, i32 31
  store i8 %46, ptr %47, align 1
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i32 [ %45, %44 ], [ %40, %38 ]
  %50 = load ptr, ptr %39, align 4
  %51 = icmp eq ptr %50, %35
  br i1 %51, label %52, label %38

52:                                               ; preds = %48, %34
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 12) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  store ptr %1, ptr %54, align 8
  %57 = getelementptr inbounds %struct.uvcg_format_ptr, ptr %54, i32 0, i32 1
  %58 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 3
  %59 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 3, i32 1
  %60 = load ptr, ptr %59, align 4
  store ptr %57, ptr %59, align 4
  store ptr %58, ptr %57, align 4
  %61 = getelementptr inbounds %struct.uvcg_format_ptr, ptr %54, i32 0, i32 1, i32 1
  store ptr %60, ptr %61, align 8
  store volatile ptr %57, ptr %60, align 4
  %62 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 4
  %65 = getelementptr inbounds %struct.uvcg_format, ptr %1, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  br label %68

68:                                               ; preds = %56, %52, %31, %18, %2
  %69 = phi i32 [ -22, %18 ], [ 0, %56 ], [ -16, %2 ], [ -12, %52 ], [ -22, %31 ]
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvcg_streaming_header_drop_link(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %20, %2
  %18 = phi ptr [ %16, %2 ], [ %21, %20 ]
  %19 = icmp eq ptr %18, %15
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %18, i32 -4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %25, label %17

25:                                               ; preds = %20
  %26 = getelementptr i8, ptr %18, i32 -4
  %27 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %21, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %18, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  tail call void @kfree(ptr noundef %26) #13
  %30 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %25, %17
  %34 = getelementptr inbounds %struct.uvcg_format, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_b_frame_index_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.uvcg_format, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.config_item, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.config_item, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.f_uvc_opts, ptr %19, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %20) #13
  %21 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %23)
  tail call void @mutex_unlock(ptr noundef %20) #13
  br label %25

25:                                               ; preds = %13, %2
  %26 = phi i32 [ %24, %13 ], [ -16, %2 ]
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_bm_capabilities_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 4
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %19)
  tail call void @mutex_unlock(ptr noundef %16) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_bm_capabilities_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  %10 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  call void @mutex_lock(ptr noundef %9) #13
  %13 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.config_item, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.config_item, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_format, ptr %14, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8, ptr %4, align 1
  %31 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 4
  store i8 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %29, %25, %12
  %33 = phi i32 [ %2, %29 ], [ -16, %25 ], [ -16, %12 ]
  call void @mutex_unlock(ptr noundef %21) #13
  call void @mutex_unlock(ptr noundef %9) #13
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i32 [ %33, %32 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_w_width_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 5
  %18 = load i16, ptr %17, align 1
  %19 = zext i16 %18 to i32
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %19)
  tail call void @mutex_unlock(ptr noundef %16) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_w_width_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %10 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  call void @mutex_lock(ptr noundef %9) #13
  %13 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.config_item, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.config_item, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_format, ptr %14, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i16, ptr %4, align 2
  %31 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 5
  store i16 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %25, %12
  %33 = phi i32 [ %2, %29 ], [ -16, %25 ], [ -16, %12 ]
  call void @mutex_unlock(ptr noundef %21) #13
  call void @mutex_unlock(ptr noundef %9) #13
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i32 [ %33, %32 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_w_height_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 6
  %18 = load i16, ptr %17, align 1
  %19 = zext i16 %18 to i32
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %19)
  tail call void @mutex_unlock(ptr noundef %16) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_w_height_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !8
  %10 = call i32 @kstrtou16(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  call void @mutex_lock(ptr noundef %9) #13
  %13 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.config_item, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.config_item, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_format, ptr %14, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i16, ptr %4, align 2
  %31 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 6
  store i16 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %25, %12
  %33 = phi i32 [ %2, %29 ], [ -16, %25 ], [ -16, %12 ]
  call void @mutex_unlock(ptr noundef %21) #13
  call void @mutex_unlock(ptr noundef %9) #13
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i32 [ %33, %32 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_min_bit_rate_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 7
  %18 = load i32, ptr %17, align 1
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %18)
  tail call void @mutex_unlock(ptr noundef %16) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_min_bit_rate_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  call void @mutex_lock(ptr noundef %9) #13
  %13 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.config_item, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.config_item, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_format, ptr %14, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, ptr %4, align 4
  %31 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 7
  store i32 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %25, %12
  %33 = phi i32 [ %2, %29 ], [ -16, %25 ], [ -16, %12 ]
  call void @mutex_unlock(ptr noundef %21) #13
  call void @mutex_unlock(ptr noundef %9) #13
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i32 [ %33, %32 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_max_bit_rate_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 8
  %18 = load i32, ptr %17, align 1
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %18)
  tail call void @mutex_unlock(ptr noundef %16) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_max_bit_rate_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  call void @mutex_lock(ptr noundef %9) #13
  %13 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.config_item, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.config_item, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_format, ptr %14, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, ptr %4, align 4
  %31 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 8
  store i32 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %25, %12
  %33 = phi i32 [ %2, %29 ], [ -16, %25 ], [ -16, %12 ]
  call void @mutex_unlock(ptr noundef %21) #13
  call void @mutex_unlock(ptr noundef %9) #13
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i32 [ %33, %32 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_max_video_frame_buffer_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 9
  %18 = load i32, ptr %17, align 1
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %18)
  tail call void @mutex_unlock(ptr noundef %16) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_max_video_frame_buffer_size_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  call void @mutex_lock(ptr noundef %9) #13
  %13 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.config_item, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.config_item, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_format, ptr %14, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, ptr %4, align 4
  %31 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 9
  store i32 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %25, %12
  %33 = phi i32 [ %2, %29 ], [ -16, %25 ], [ -16, %12 ]
  call void @mutex_unlock(ptr noundef %21) #13
  call void @mutex_unlock(ptr noundef %9) #13
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i32 [ %33, %32 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_default_frame_interval_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 10
  %18 = load i32, ptr %17, align 1
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %18)
  tail call void @mutex_unlock(ptr noundef %16) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_default_frame_interval_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  call void @mutex_lock(ptr noundef %9) #13
  %13 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.config_item, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.config_item, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_format, ptr %14, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, ptr %4, align 4
  %31 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 10
  store i32 %30, ptr %31, align 1
  br label %32

32:                                               ; preds = %29, %25, %12
  %33 = phi i32 [ %2, %29 ], [ -16, %25 ], [ -16, %12 ]
  call void @mutex_unlock(ptr noundef %21) #13
  call void @mutex_unlock(ptr noundef %9) #13
  br label %34

34:                                               ; preds = %32, %3
  %35 = phi i32 [ %33, %32 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_frame_interval_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.f_uvc_opts, ptr %15, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %16) #13
  %17 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 11
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 3
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi ptr [ %1, %20 ], [ %31, %22 ]
  %24 = phi i32 [ 0, %20 ], [ %32, %22 ]
  %25 = phi i32 [ 0, %20 ], [ %30, %22 ]
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr i32, ptr %26, i32 %24
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %23, ptr noundef nonnull @.str.2, i32 noundef %28)
  %30 = add i32 %29, %25
  %31 = getelementptr i8, ptr %1, i32 %30
  %32 = add nuw nsw i32 %24, 1
  %33 = load i8, ptr %17, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %22, label %36

36:                                               ; preds = %22, %2
  %37 = phi i32 [ 0, %2 ], [ %30, %22 ]
  tail call void @mutex_unlock(ptr noundef %16) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_frame_dw_frame_interval_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [35 x i8], align 1
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_group, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.configfs_subsystem, ptr %9, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.config_item, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.config_item, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.f_uvc_opts, ptr %18, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %19) #13
  %20 = getelementptr inbounds %struct.uvcg_format, ptr %12, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %146

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.f_uvc_opts, ptr %18, i32 0, i32 21
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %146

27:                                               ; preds = %23
  %28 = ptrtoint ptr %1 to i32
  %29 = add i32 %28, %2
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %78, label %31

31:                                               ; preds = %73, %27
  %32 = phi ptr [ %75, %73 ], [ %1, %27 ]
  %33 = phi i32 [ %76, %73 ], [ 0, %27 ]
  br label %34

34:                                               ; preds = %38, %31
  %35 = phi i32 [ %40, %38 ], [ 0, %31 ]
  %36 = phi ptr [ %39, %38 ], [ %32, %31 ]
  %37 = load i8, ptr %36, align 1
  switch i8 %37, label %38 [
    i8 0, label %49
    i8 10, label %49
  ]

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %36, i32 1
  %40 = add nuw nsw i32 %35, 1
  %41 = icmp ult i32 %35, 34
  %42 = ptrtoint ptr %39 to i32
  %43 = sub i32 %42, %28
  %44 = icmp ult i32 %43, %2
  %45 = and i1 %41, %44
  br i1 %45, label %34, label %46

46:                                               ; preds = %38
  %47 = ptrtoint ptr %39 to i32
  %48 = icmp eq i32 %40, 35
  br i1 %48, label %146, label %52

49:                                               ; preds = %34, %34
  %50 = ptrtoint ptr %36 to i32
  %51 = sub i32 %50, %28
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %51, %49 ], [ %43, %46 ]
  %54 = phi i32 [ %50, %49 ], [ %47, %46 ]
  %55 = phi ptr [ %36, %49 ], [ %39, %46 ]
  %56 = icmp ult i32 %53, %2
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %55, i32 %29
  %59 = sub i32 0, %54
  %60 = getelementptr i8, ptr %58, i32 %59
  br label %61

61:                                               ; preds = %64, %57
  %62 = phi ptr [ %65, %64 ], [ %55, %57 ]
  %63 = load i8, ptr %62, align 1
  switch i8 %63, label %69 [
    i8 0, label %64
    i8 10, label %64
  ]

64:                                               ; preds = %61, %61
  %65 = getelementptr i8, ptr %62, i32 1
  %66 = ptrtoint ptr %65 to i32
  %67 = sub i32 %66, %28
  %68 = icmp ult i32 %67, %2
  br i1 %68, label %61, label %69

69:                                               ; preds = %64, %61
  %70 = phi ptr [ %62, %61 ], [ %60, %64 ]
  %71 = ptrtoint ptr %70 to i32
  %72 = sub i32 %71, %28
  br label %73

73:                                               ; preds = %69, %52
  %74 = phi i32 [ %72, %69 ], [ %53, %52 ]
  %75 = phi ptr [ %70, %69 ], [ %55, %52 ]
  %76 = add i32 %33, 1
  %77 = icmp ult i32 %74, %2
  br i1 %77, label %31, label %78

78:                                               ; preds = %73, %27
  %79 = phi i32 [ 0, %27 ], [ %76, %73 ]
  %80 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %79, i32 4) #13
  %81 = extractvalue { i32, i1 } %80, 1
  br i1 %81, label %146, label %82, !prof !9

82:                                               ; preds = %78
  %83 = extractvalue { i32, i1 } %80, 0
  %84 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %83, i32 noundef 3520) #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %146, label %86

86:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %5, i8 0, i32 35, i1 false) #13, !annotation !8
  br i1 %30, label %141, label %87

87:                                               ; preds = %133, %86
  %88 = phi ptr [ %128, %133 ], [ %1, %86 ]
  %89 = phi ptr [ %135, %133 ], [ %84, %86 ]
  br label %90

90:                                               ; preds = %94, %87
  %91 = phi i32 [ %96, %94 ], [ 0, %87 ]
  %92 = phi ptr [ %95, %94 ], [ %88, %87 ]
  %93 = load i8, ptr %92, align 1
  switch i8 %93, label %94 [
    i8 0, label %106
    i8 10, label %106
  ]

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %92, i32 1
  %96 = add nuw nsw i32 %91, 1
  %97 = getelementptr [35 x i8], ptr %5, i32 0, i32 %91
  store i8 %93, ptr %97, align 1
  %98 = icmp ult i32 %91, 34
  %99 = ptrtoint ptr %95 to i32
  %100 = sub i32 %99, %28
  %101 = icmp ult i32 %100, %2
  %102 = and i1 %98, %101
  br i1 %102, label %90, label %103

103:                                              ; preds = %94
  %104 = ptrtoint ptr %95 to i32
  %105 = icmp eq i32 %96, 35
  br i1 %105, label %139, label %109

106:                                              ; preds = %90, %90
  %107 = ptrtoint ptr %92 to i32
  %108 = sub i32 %107, %28
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i32 [ %108, %106 ], [ %100, %103 ]
  %111 = phi i32 [ %107, %106 ], [ %104, %103 ]
  %112 = phi i32 [ %91, %106 ], [ %96, %103 ]
  %113 = phi ptr [ %92, %106 ], [ %95, %103 ]
  %114 = icmp ult i32 %110, %2
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = getelementptr i8, ptr %113, i32 %29
  %117 = sub i32 0, %111
  %118 = getelementptr i8, ptr %116, i32 %117
  br label %119

119:                                              ; preds = %122, %115
  %120 = phi ptr [ %123, %122 ], [ %113, %115 ]
  %121 = load i8, ptr %120, align 1
  switch i8 %121, label %127 [
    i8 0, label %122
    i8 10, label %122
  ]

122:                                              ; preds = %119, %119
  %123 = getelementptr i8, ptr %120, i32 1
  %124 = ptrtoint ptr %123 to i32
  %125 = sub i32 %124, %28
  %126 = icmp ult i32 %125, %2
  br i1 %126, label %119, label %127

127:                                              ; preds = %122, %119, %109
  %128 = phi ptr [ %113, %109 ], [ %118, %122 ], [ %120, %119 ]
  %129 = getelementptr [35 x i8], ptr %5, i32 0, i32 %112
  store i8 0, ptr %129, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %130 = call i32 @kstrtouint(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %4) #13
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %139

133:                                              ; preds = %127
  %134 = load i32, ptr %4, align 4
  store i32 %134, ptr %89, align 4
  %135 = getelementptr i32, ptr %89, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  %136 = ptrtoint ptr %128 to i32
  %137 = sub i32 %136, %28
  %138 = icmp ult i32 %137, %2
  br i1 %138, label %87, label %141

139:                                              ; preds = %132, %103
  %140 = phi i32 [ %130, %132 ], [ -22, %103 ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %5) #13
  call void @kfree(ptr noundef nonnull %84) #13
  br label %146

141:                                              ; preds = %133, %86
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %5) #13
  %142 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 3
  %143 = load ptr, ptr %142, align 4
  call void @kfree(ptr noundef %143) #13
  store ptr %84, ptr %142, align 4
  %144 = trunc i32 %79 to i8
  %145 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 11
  store i8 %144, ptr %145, align 1
  call void @sort(ptr noundef nonnull %84, i32 noundef %79, i32 noundef 4, ptr noundef nonnull @uvcg_config_compare_u32, ptr noundef null) #13
  br label %146

146:                                              ; preds = %141, %139, %82, %78, %46, %23, %3
  %147 = phi i32 [ %140, %139 ], [ %2, %141 ], [ -16, %23 ], [ -16, %3 ], [ -12, %82 ], [ -12, %78 ], [ -22, %46 ]
  call void @mutex_unlock(ptr noundef %19) #13
  call void @mutex_unlock(ptr noundef %10) #13
  ret i32 %147
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @uvcg_config_compare_u32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load i32, ptr %0, align 4
  %4 = load i32, ptr %1, align 4
  %5 = icmp ult i32 %3, %4
  %6 = icmp ne i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_bm_info_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 1, i32 6
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_b_terminal_link_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 1, i32 7
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_b_still_capture_method_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 1, i32 8
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_b_trigger_support_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 1, i32 9
  %16 = load i8, ptr %15, align 2
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_header_b_trigger_usage_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 1, i32 10
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %17)
  tail call void @mutex_unlock(ptr noundef %14) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uvcg_uncompressed_make(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 124) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %4, i32 0, i32 1
  store i8 27, ptr %7, align 8
  %8 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %4, i32 0, i32 1, i32 1
  store i8 36, ptr %8, align 1
  %9 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %4, i32 0, i32 1, i32 2
  store i8 4, ptr %9, align 2
  %10 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %4, i32 0, i32 1, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %10, ptr noundef nonnull align 1 dereferenceable(16) @uvcg_uncompressed_make.guid, i32 16, i1 false)
  %11 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %4, i32 0, i32 1, i32 6
  store i8 16, ptr %11, align 1
  %12 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %4, i32 0, i32 1, i32 7
  store i8 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %4, i32 0, i32 1, i32 8
  %14 = getelementptr inbounds %struct.uvcg_format, ptr %4, i32 0, i32 1
  store i32 0, ptr %14, align 8
  store i32 0, ptr %13, align 1
  tail call void @config_group_init_type_name(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @uvcg_uncompressed_type) #13
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %16
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uvcg_frame_make(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 88) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 2, i32 1
  store i8 36, ptr %7, align 1
  %8 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 2, i32 3
  store i8 1, ptr %8, align 1
  %9 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 2, i32 5
  store i16 640, ptr %9, align 1
  %10 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 2, i32 6
  store i16 360, ptr %10, align 1
  %11 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 2, i32 7
  store i32 18432000, ptr %11, align 1
  %12 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 2, i32 8
  store i32 55296000, ptr %12, align 1
  %13 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 2, i32 9
  store i32 460800, ptr %13, align 1
  %14 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 2, i32 10
  store i32 666666, ptr %14, align 1
  %15 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.config_item, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.config_item, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %25 [
    i32 0, label %26
    i32 1, label %24
  ]

24:                                               ; preds = %6
  br label %26

25:                                               ; preds = %6
  tail call void @mutex_unlock(ptr noundef %21) #13
  tail call void @kfree(ptr noundef nonnull %4) #13
  br label %33

26:                                               ; preds = %24, %6
  %27 = phi i8 [ 7, %24 ], [ 5, %6 ]
  %28 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 2, i32 2
  store i8 %27, ptr %28, align 2
  %29 = getelementptr inbounds %struct.uvcg_frame, ptr %4, i32 0, i32 1
  store i32 %23, ptr %29, align 4
  %30 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  tail call void @mutex_unlock(ptr noundef %21) #13
  tail call void @config_item_init_type_name(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @uvcg_frame_type) #13
  br label %33

33:                                               ; preds = %26, %25, %2
  %34 = phi ptr [ %4, %26 ], [ inttoptr (i32 -22 to ptr), %25 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvcg_frame_drop(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_item, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_item, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.f_uvc_opts, ptr %8, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  tail call void @mutex_unlock(ptr noundef %9) #13
  tail call void @config_item_put(ptr noundef %1) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_format_index_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_guid_format_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %1, ptr noundef align 1 dereferenceable(16) %13, i32 16, i1 false)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_guid_format_store(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.configfs_subsystem, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 5
  %23 = tail call i32 @llvm.umin.i32(i32 %2, i32 16)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %22, ptr align 1 %1, i32 %23, i1 false)
  br label %24

24:                                               ; preds = %21, %17, %3
  %25 = phi i32 [ 16, %21 ], [ -16, %17 ], [ -16, %3 ]
  tail call void @mutex_unlock(ptr noundef %13) #13
  tail call void @mutex_unlock(ptr noundef %6) #13
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_bits_per_pixel_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 6
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_bits_per_pixel_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 21
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8, ptr %4, align 1
  %27 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 6
  store i8 %26, ptr %27, align 1
  br label %28

28:                                               ; preds = %25, %22, %18, %3
  %29 = phi i32 [ %23, %22 ], [ %2, %25 ], [ -16, %18 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %14) #13
  call void @mutex_unlock(ptr noundef %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_default_frame_index_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 7
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_default_frame_index_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 21
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8, ptr %4, align 1
  %27 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 7
  store i8 %26, ptr %27, align 2
  br label %28

28:                                               ; preds = %25, %22, %18, %3
  %29 = phi i32 [ %23, %22 ], [ %2, %25 ], [ -16, %18 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %14) #13
  call void @mutex_unlock(ptr noundef %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_aspect_ratio_x_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 8
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_b_aspect_ratio_y_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 9
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_bm_interface_flags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 10
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_bma_controls_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.61, i32 3, i1 false) #13
  %13 = getelementptr i8, ptr %1, i32 2
  %14 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef nonnull @.str.62, i32 noundef %16) #13
  %18 = add i32 %17, 2
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_uncompressed_bma_controls_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11 {
  %4 = tail call fastcc i32 @uvcg_format_bma_controls_store(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @uvcg_format_bma_controls_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.configfs_subsystem, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.config_item, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.config_item, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.f_uvc_opts, ptr %12, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = icmp ult i32 %2, 4
  br i1 %22, label %35, label %23

23:                                               ; preds = %21
  %24 = load i8, ptr %1, align 1
  %25 = icmp eq i8 %24, 48
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = getelementptr i8, ptr %1, i32 1
  %28 = load i8, ptr %27, align 1
  switch i8 %28, label %35 [
    i8 120, label %29
    i8 88, label %29
  ]

29:                                               ; preds = %26, %26
  %30 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 4
  %31 = getelementptr i8, ptr %1, i32 2
  %32 = tail call i32 @hex2bin(ptr noundef %30, ptr noundef %31, i32 noundef 1) #13
  %33 = icmp slt i32 %32, 0
  %34 = select i1 %33, i32 %32, i32 %2
  br label %35

35:                                               ; preds = %29, %26, %23, %21, %17, %3
  %36 = phi i32 [ -22, %21 ], [ -22, %23 ], [ -16, %17 ], [ -16, %3 ], [ -22, %26 ], [ %34, %29 ]
  tail call void @mutex_unlock(ptr noundef %13) #13
  tail call void @mutex_unlock(ptr noundef %6) #13
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @uvcg_mjpeg_make(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 108) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %4, i32 0, i32 1
  store i8 11, ptr %7, align 8
  %8 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %4, i32 0, i32 1, i32 1
  store i8 36, ptr %8, align 1
  %9 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %4, i32 0, i32 1, i32 2
  store i8 6, ptr %9, align 2
  %10 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %4, i32 0, i32 1, i32 6
  store i8 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %4, i32 0, i32 1, i32 7
  %12 = getelementptr inbounds %struct.uvcg_format, ptr %4, i32 0, i32 1
  store i32 0, ptr %11, align 1
  store i32 1, ptr %12, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @uvcg_mjpeg_type) #13
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi ptr [ %4, %6 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_format_index_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_default_frame_index_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1, i32 6
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_default_frame_index_store(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !8
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %14) #13
  %15 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.f_uvc_opts, ptr %13, i32 0, i32 21
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = call i32 @kstrtou8(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8, ptr %4, align 1
  %27 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1, i32 6
  store i8 %26, ptr %27, align 2
  br label %28

28:                                               ; preds = %25, %22, %18, %3
  %29 = phi i32 [ %23, %22 ], [ %2, %25 ], [ -16, %18 ], [ -16, %3 ]
  call void @mutex_unlock(ptr noundef %14) #13
  call void @mutex_unlock(ptr noundef %7) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_bm_flags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_aspect_ratio_x_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1, i32 7
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_b_aspect_ratio_y_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1, i32 8
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_bm_interface_flags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1, i32 9
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_bma_controls_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #11 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %1, ptr noundef nonnull align 1 dereferenceable(3) @.str.61, i32 3, i1 false) #13
  %13 = getelementptr i8, ptr %1, i32 2
  %14 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef nonnull @.str.62, i32 noundef %16) #13
  %18 = add i32 %17, 2
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %18
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_mjpeg_bma_controls_store(ptr noundef %0, ptr noundef %1, i32 noundef %2) #11 {
  %4 = tail call fastcc i32 @uvcg_format_bma_controls_store(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_color_matching_b_color_primaries_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 14, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_color_matching_b_transfer_characteristics_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 14, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_default_color_matching_b_matrix_coefficients_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.configfs_subsystem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.config_item, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %12) #13
  %13 = getelementptr inbounds %struct.f_uvc_opts, ptr %11, i32 0, i32 14, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %15)
  tail call void @mutex_unlock(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %5) #13
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_class_create_children(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 84) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %5, i32 0, i32 1
  store ptr @.str.33, ptr %8, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.33, ptr noundef nonnull @uvcg_streaming_class_type) #13
  %9 = getelementptr inbounds %struct.config_group, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %3, align 4
  store ptr %9, ptr %3, align 4
  store ptr %2, ptr %9, align 8
  %11 = getelementptr inbounds %struct.config_group, ptr %5, i32 0, i32 4, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %9, ptr %10, align 4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 84) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %13, i32 0, i32 1
  store ptr @.str.69, ptr %16, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %13, ptr noundef nonnull @.str.69, ptr noundef nonnull @uvcg_streaming_class_type) #13
  %17 = getelementptr inbounds %struct.config_group, ptr %13, i32 0, i32 4
  %18 = load ptr, ptr %3, align 4
  store ptr %17, ptr %3, align 4
  store ptr %2, ptr %17, align 8
  %19 = getelementptr inbounds %struct.config_group, ptr %13, i32 0, i32 4, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %17, ptr %18, align 4
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 84) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %21, i32 0, i32 1
  store ptr @.str.34, ptr %24, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %21, ptr noundef nonnull @.str.34, ptr noundef nonnull @uvcg_streaming_class_type) #13
  %25 = getelementptr inbounds %struct.config_group, ptr %21, i32 0, i32 4
  %26 = load ptr, ptr %3, align 4
  store ptr %25, ptr %3, align 4
  store ptr %2, ptr %25, align 8
  %27 = getelementptr inbounds %struct.config_group, ptr %21, i32 0, i32 4, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %25, ptr %26, align 4
  br label %28

28:                                               ; preds = %23, %15, %7, %1
  %29 = phi i32 [ -12, %1 ], [ -12, %7 ], [ -12, %15 ], [ 0, %23 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uvcg_streaming_class_allow_link(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.config_group, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.configfs_subsystem, ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !8
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @config_group_find_item(ptr noundef %13, ptr noundef nonnull @.str.8) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %119, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %14
  br i1 %19, label %20, label %119

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.config_item, ptr %13, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.f_uvc_opts, ptr %22, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %23) #13
  %24 = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(3) @.str.33) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.f_uvc_opts, ptr %22, i32 0, i32 17
  br label %39

30:                                               ; preds = %20
  %31 = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(3) @.str.69) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.f_uvc_opts, ptr %22, i32 0, i32 18
  br label %39

35:                                               ; preds = %30
  %36 = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(3) @.str.34) #13
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.f_uvc_opts, ptr %22, i32 0, i32 19
  br i1 %37, label %39, label %117

39:                                               ; preds = %35, %33, %28
  %40 = phi ptr [ %34, %33 ], [ %29, %28 ], [ %38, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %117, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %40, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %117

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.f_uvc_opts, ptr %22, i32 0, i32 21
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %117

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %1, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 13
  %53 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %1, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %90, label %61

56:                                               ; preds = %77, %70
  %57 = phi i32 [ %72, %70 ], [ %86, %77 ]
  %58 = phi i32 [ %73, %70 ], [ %87, %77 ]
  %59 = load ptr, ptr %64, align 4
  %60 = icmp eq ptr %59, %53
  br i1 %60, label %90, label %61

61:                                               ; preds = %56, %49
  %62 = phi i32 [ %57, %56 ], [ %52, %49 ]
  %63 = phi i32 [ %58, %56 ], [ 1, %49 ]
  %64 = phi ptr [ %59, %56 ], [ %54, %49 ]
  %65 = getelementptr i8, ptr %64, i32 -4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.uvcg_format, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  switch i32 %68, label %117 [
    i32 0, label %70
    i32 1, label %69
  ]

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %61
  %71 = phi i32 [ 11, %69 ], [ 27, %61 ]
  %72 = add i32 %71, %62
  %73 = add i32 %63, 1
  %74 = getelementptr inbounds %struct.config_group, ptr %66, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %74
  br i1 %76, label %56, label %77

77:                                               ; preds = %77, %70
  %78 = phi i32 [ %86, %77 ], [ %72, %70 ]
  %79 = phi i32 [ %87, %77 ], [ %73, %70 ]
  %80 = phi ptr [ %88, %77 ], [ %75, %70 ]
  %81 = add i32 %78, 26
  %82 = getelementptr i8, ptr %80, i32 53
  %83 = load i8, ptr %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 2
  %86 = add i32 %81, %85
  %87 = add i32 %79, 1
  %88 = load ptr, ptr %80, align 4
  %89 = icmp eq ptr %88, %74
  br i1 %89, label %56, label %77

90:                                               ; preds = %56, %49
  %91 = phi i32 [ %52, %49 ], [ %57, %56 ]
  %92 = phi i32 [ 1, %49 ], [ %58, %56 ]
  %93 = add i32 %92, 2
  %94 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %93, i32 4) #13
  %95 = extractvalue { i32, i1 } %94, 1
  br i1 %95, label %96, label %97, !prof !9

96:                                               ; preds = %90
  store ptr null, ptr %40, align 4
  br label %117

97:                                               ; preds = %90
  %98 = extractvalue { i32, i1 } %94, 0
  %99 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %98, i32 noundef 3520) #15
  store ptr %99, ptr %40, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %117, label %101

101:                                              ; preds = %97
  %102 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %91, i32 noundef 3520) #15
  store ptr %102, ptr %4, align 4
  %103 = icmp eq ptr %102, null
  %104 = load ptr, ptr %40, align 4
  br i1 %103, label %105, label %106

105:                                              ; preds = %101
  tail call void @kfree(ptr noundef %104) #13
  store ptr null, ptr %40, align 4
  br label %117

106:                                              ; preds = %101
  store ptr %104, ptr %3, align 4
  %107 = call fastcc i32 @__uvcg_iter_strm_cls(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull @__uvcg_fill_strm)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %106
  %110 = load ptr, ptr %40, align 4
  call void @kfree(ptr noundef %110) #13
  store ptr null, ptr %40, align 4
  call void @kfree(ptr noundef nonnull %102) #13
  br label %117

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.f_uvc_opts, ptr %22, i32 0, i32 14
  %113 = load ptr, ptr %3, align 4
  store ptr %112, ptr %113, align 4
  %114 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %1, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 4
  br label %117

117:                                              ; preds = %111, %109, %105, %97, %96, %61, %45, %42, %39, %35
  %118 = phi i32 [ %107, %109 ], [ 0, %111 ], [ -12, %105 ], [ -16, %45 ], [ -16, %42 ], [ -16, %39 ], [ -12, %97 ], [ -12, %96 ], [ -16, %35 ], [ -22, %61 ]
  call void @mutex_unlock(ptr noundef %23) #13
  br label %119

119:                                              ; preds = %117, %16, %2
  %120 = phi i32 [ -22, %16 ], [ %118, %117 ], [ -22, %2 ]
  call void @config_item_put(ptr noundef %14) #13
  call void @mutex_unlock(ptr noundef %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @uvcg_streaming_class_drop_link(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.config_item, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.config_item, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @config_group_find_item(ptr noundef %11, ptr noundef nonnull @.str.8) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %55, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.config_item, ptr %1, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %12
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.config_item, ptr %11, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %21) #13
  %22 = getelementptr inbounds %struct.uvcg_streaming_class_group, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(3) @.str.33) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 17
  br label %37

28:                                               ; preds = %18
  %29 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(3) @.str.69) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 18
  br label %37

33:                                               ; preds = %28
  %34 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(3) @.str.34) #13
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 19
  br i1 %35, label %37, label %54

37:                                               ; preds = %33, %31, %26
  %38 = phi ptr [ %32, %31 ], [ %27, %26 ], [ %36, %33 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.f_uvc_opts, ptr %20, i32 0, i32 21
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %1, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1
  store i32 %50, ptr %48, align 4
  %51 = load ptr, ptr %38, align 4
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #13
  %53 = load ptr, ptr %38, align 4
  tail call void @kfree(ptr noundef %53) #13
  store ptr null, ptr %38, align 4
  br label %54

54:                                               ; preds = %47, %43, %40, %37, %33
  tail call void @mutex_unlock(ptr noundef %21) #13
  br label %55

55:                                               ; preds = %54, %14, %2
  tail call void @config_item_put(ptr noundef %12) #13
  tail call void @mutex_unlock(ptr noundef %7) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__uvcg_iter_strm_cls(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %4
  %7 = tail call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 0) #13, !callees !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %41, label %17

13:                                               ; preds = %37, %26
  %14 = phi i32 [ %20, %26 ], [ %38, %37 ]
  %15 = load ptr, ptr %18, align 4
  %16 = icmp eq ptr %15, %10
  br i1 %16, label %41, label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ %15, %13 ], [ %11, %9 ]
  %19 = phi i32 [ %23, %13 ], [ 0, %9 ]
  %20 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %21 = getelementptr i8, ptr %18, i32 -4
  %22 = load ptr, ptr %21, align 4
  %23 = add i32 %19, 1
  %24 = tail call i32 %3(ptr noundef %22, ptr noundef %1, ptr noundef %2, i32 noundef %19, i32 noundef 1) #13, !callees !10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr inbounds %struct.config_group, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %13, label %31

31:                                               ; preds = %37, %26
  %32 = phi ptr [ %39, %37 ], [ %29, %26 ]
  %33 = phi i32 [ %38, %37 ], [ %20, %26 ]
  %34 = getelementptr i8, ptr %32, i32 -28
  %35 = tail call i32 %3(ptr noundef %34, ptr noundef %1, ptr noundef %2, i32 noundef %33, i32 noundef 2) #13, !callees !10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = add i32 %33, 1
  %39 = load ptr, ptr %32, align 4
  %40 = icmp eq ptr %39, %28
  br i1 %40, label %13, label %31

41:                                               ; preds = %31, %17, %13, %9, %6, %4
  %42 = phi i32 [ -22, %4 ], [ %7, %6 ], [ 0, %9 ], [ %35, %31 ], [ %24, %17 ], [ 0, %13 ]
  ret i32 %42
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__uvcg_fill_strm(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) #12 {
  %6 = load ptr, ptr %1, align 4
  %7 = load ptr, ptr %2, align 4
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr ptr, ptr %8, i32 1
  store ptr %9, ptr %2, align 4
  switch i32 %4, label %87 [
    i32 0, label %10
    i32 1, label %37
    i32 2, label %64
  ]

10:                                               ; preds = %5
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %11, ptr noundef align 4 dereferenceable(13) %12, i32 13, i1 false)
  %13 = load ptr, ptr %1, align 4
  %14 = getelementptr i8, ptr %13, i32 13
  store ptr %14, ptr %1, align 4
  %15 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %29, label %18

18:                                               ; preds = %18, %10
  %19 = phi ptr [ %26, %18 ], [ %14, %10 ]
  %20 = phi ptr [ %27, %18 ], [ %16, %10 ]
  %21 = getelementptr i8, ptr %20, i32 -4
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.uvcg_format, ptr %22, i32 0, i32 4
  %24 = load i8, ptr %23, align 4
  store i8 %24, ptr %19, align 1
  %25 = load ptr, ptr %1, align 4
  %26 = getelementptr i8, ptr %25, i32 1
  store ptr %26, ptr %1, align 4
  %27 = load ptr, ptr %20, align 4
  %28 = icmp eq ptr %27, %15
  br i1 %28, label %29, label %18

29:                                               ; preds = %18, %10
  %30 = getelementptr inbounds %struct.uvcg_streaming_header, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = trunc i32 %31 to i8
  %33 = add i8 %32, 13
  store i8 %33, ptr %11, align 1
  %34 = load i32, ptr %30, align 4
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.uvc_input_header_descriptor, ptr %11, i32 0, i32 3
  store i8 %35, ptr %36, align 1
  br label %87

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  switch i32 %39, label %87 [
    i32 0, label %40
    i32 1, label %50
  ]

40:                                               ; preds = %37
  %41 = trunc i32 %3 to i8
  %42 = add i8 %41, 1
  %43 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1
  %44 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 3
  store i8 %42, ptr %44, align 1
  %45 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds %struct.uvcg_uncompressed, ptr %0, i32 0, i32 1, i32 4
  store i8 %47, ptr %48, align 4
  %49 = load ptr, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(27) %49, ptr noundef align 4 dereferenceable(27) %43, i32 27, i1 false)
  br label %60

50:                                               ; preds = %37
  %51 = trunc i32 %3 to i8
  %52 = add i8 %51, 1
  %53 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1
  %54 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1, i32 3
  store i8 %52, ptr %54, align 1
  %55 = getelementptr inbounds %struct.uvcg_format, ptr %0, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds %struct.uvcg_mjpeg, ptr %0, i32 0, i32 1, i32 4
  store i8 %57, ptr %58, align 4
  %59 = load ptr, ptr %1, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(11) %59, ptr noundef align 4 dereferenceable(11) %53, i32 11, i1 false)
  br label %60

60:                                               ; preds = %50, %40
  %61 = phi i32 [ 11, %50 ], [ 27, %40 ]
  %62 = load ptr, ptr %1, align 4
  %63 = getelementptr i8, ptr %62, i32 %61
  store ptr %63, ptr %1, align 4
  br label %87

64:                                               ; preds = %5
  %65 = load ptr, ptr %1, align 4
  %66 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(26) %65, ptr noundef align 4 dereferenceable(26) %66, i32 26, i1 false)
  %67 = load ptr, ptr %1, align 4
  %68 = getelementptr i8, ptr %67, i32 26
  store ptr %68, ptr %1, align 4
  %69 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 2, i32 11
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 2
  %73 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 4 %74, i32 %72, i1 false)
  %75 = load ptr, ptr %1, align 4
  %76 = getelementptr i8, ptr %75, i32 %72
  store ptr %76, ptr %1, align 4
  %77 = getelementptr inbounds %struct.uvcg_frame, ptr %0, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  switch i32 %78, label %87 [
    i32 0, label %79
    i32 1, label %83
  ]

79:                                               ; preds = %64
  %80 = load i8, ptr %69, align 1
  %81 = shl i8 %80, 2
  %82 = add i8 %81, 26
  store i8 %82, ptr %65, align 1
  br label %87

83:                                               ; preds = %64
  %84 = load i8, ptr %69, align 1
  %85 = shl i8 %84, 2
  %86 = add i8 %85, 26
  store i8 %86, ptr %65, align 1
  br label %87

87:                                               ; preds = %83, %79, %64, %60, %37, %29, %5
  %88 = phi i32 [ -22, %37 ], [ 0, %79 ], [ 0, %83 ], [ 0, %64 ], [ 0, %60 ], [ 0, %5 ], [ 0, %29 ]
  ret i32 %88
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = distinct !{null, ptr @__uvcg_fill_strm}
