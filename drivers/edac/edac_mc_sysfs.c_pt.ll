; ModuleID = '/llk/IR/drivers/edac/edac_mc_sysfs.c_pt.bc'
source_filename = "../drivers/edac/edac_mc_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dev_ch_attribute = type { %struct.device_attribute, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.csrow_info = type { %struct.device, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.rank_info = type { i32, ptr, ptr, i32 }
%struct.edac_mc_layer = type { i32, i32, i8 }

@edac_mc_log_ue = internal global i32 1, align 4
@edac_mc_log_ce = internal global i32 1, align 4
@edac_mc_panic_on_ue = internal global i32 0, align 4
@edac_mc_poll_msec = internal global i32 1000, align 4
@__param_str_edac_mc_panic_on_ue = internal constant [30 x i8] c"edac_core.edac_mc_panic_on_ue\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_edac_mc_panic_on_ue = internal constant %struct.kernel_param { ptr @__param_str_edac_mc_panic_on_ue, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @edac_mc_panic_on_ue } }, section "__param", align 4
@__UNIQUE_ID_edac_mc_panic_on_uetype229 = internal constant [43 x i8] c"edac_core.parmtype=edac_mc_panic_on_ue:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_mc_panic_on_ue230 = internal constant [74 x i8] c"edac_core.parm=edac_mc_panic_on_ue:Panic on uncorrected error: 0=off 1=on\00", section ".modinfo", align 1
@__param_str_edac_mc_log_ue = internal constant [25 x i8] c"edac_core.edac_mc_log_ue\00", align 1
@__param_edac_mc_log_ue = internal constant %struct.kernel_param { ptr @__param_str_edac_mc_log_ue, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @edac_mc_log_ue } }, section "__param", align 4
@__UNIQUE_ID_edac_mc_log_uetype231 = internal constant [38 x i8] c"edac_core.parmtype=edac_mc_log_ue:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_mc_log_ue232 = internal constant [77 x i8] c"edac_core.parm=edac_mc_log_ue:Log uncorrectable error to console: 0=off 1=on\00", section ".modinfo", align 1
@__param_str_edac_mc_log_ce = internal constant [25 x i8] c"edac_core.edac_mc_log_ce\00", align 1
@__param_edac_mc_log_ce = internal constant %struct.kernel_param { ptr @__param_str_edac_mc_log_ce, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @edac_mc_log_ce } }, section "__param", align 4
@__UNIQUE_ID_edac_mc_log_cetype233 = internal constant [38 x i8] c"edac_core.parmtype=edac_mc_log_ce:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_mc_log_ce234 = internal constant [75 x i8] c"edac_core.parm=edac_mc_log_ce:Log correctable error to console: 0=off 1=on\00", section ".modinfo", align 1
@__param_str_edac_mc_poll_msec = internal constant [28 x i8] c"edac_core.edac_mc_poll_msec\00", align 1
@__param_ops_edac_mc_poll_msec = internal constant %struct.kernel_param_ops { i32 0, ptr @edac_set_poll_msec, ptr @param_get_uint, ptr null }, align 4
@__param_edac_mc_poll_msec = internal constant %struct.kernel_param { ptr @__param_str_edac_mc_poll_msec, ptr null, ptr @__param_ops_edac_mc_poll_msec, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @edac_mc_poll_msec } }, section "__param", align 4
@__UNIQUE_ID_edac_mc_poll_msec235 = internal constant [64 x i8] c"edac_core.parm=edac_mc_poll_msec:Polling period in milliseconds\00", section ".modinfo", align 1
@mci_attr_type = internal constant %struct.device_type { ptr null, ptr @mci_attr_groups, ptr null, ptr null, ptr null, ptr null }, align 4
@mci_pdev = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [5 x i8] c"mc%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@mci_attr_groups = internal global [2 x ptr] [ptr @mci_attr_grp, ptr null], align 4
@mci_attr_grp = internal constant %struct.attribute_group { ptr null, ptr @mci_attr_is_visible, ptr null, ptr @mci_attrs, ptr null }, align 4
@mci_attrs = internal global [11 x ptr] [ptr @dev_attr_reset_counters, ptr @dev_attr_mc_name, ptr @dev_attr_size_mb, ptr @dev_attr_seconds_since_reset, ptr @dev_attr_ue_noinfo_count, ptr @dev_attr_ce_noinfo_count, ptr @dev_attr_ue_count, ptr @dev_attr_ce_count, ptr @dev_attr_max_location, ptr @dev_attr_sdram_scrub_rate, ptr null], align 4
@dev_attr_sdram_scrub_rate = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 0 }, ptr @mci_sdram_scrub_rate_show, ptr @mci_sdram_scrub_rate_store }, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"sdram_scrub_rate\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\017EDAC MC: Error reading scrub rate\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\014EDAC MC: Error setting scrub rate to: %lu\0A\00", align 1
@dev_attr_reset_counters = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 128 }, ptr null, ptr @mci_reset_counters_store }, align 4
@dev_attr_mc_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @mci_ctl_name_show, ptr null }, align 4
@dev_attr_size_mb = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @mci_size_mb_show, ptr null }, align 4
@dev_attr_seconds_since_reset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @mci_seconds_show, ptr null }, align 4
@dev_attr_ue_noinfo_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @mci_ue_noinfo_show, ptr null }, align 4
@dev_attr_ce_noinfo_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @mci_ce_noinfo_show, ptr null }, align 4
@dev_attr_ue_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @mci_ue_count_show, ptr null }, align 4
@dev_attr_ce_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @mci_ce_count_show, ptr null }, align 4
@dev_attr_max_location = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292 }, ptr @mci_max_location_show, ptr null }, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"reset_counters\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [8 x i8] c"mc_name\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"size_mb\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"seconds_since_reset\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"ue_noinfo_count\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ce_noinfo_count\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ue_count\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"ce_count\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"max_location\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s %d \00", align 1
@edac_layer_name = external dso_local local_unnamed_addr global [0 x ptr], align 4
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@dimm_attr_type = internal constant %struct.device_type { ptr null, ptr @dimm_attr_groups, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"rank%d\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"dimm%d\00", align 1
@dimm_attr_groups = internal global [2 x ptr] [ptr @dimm_attr_grp, ptr null], align 4
@dimm_attr_grp = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dimm_attrs, ptr null }, align 4
@dimm_attrs = internal global [9 x ptr] [ptr @dev_attr_dimm_label, ptr @dev_attr_dimm_location, ptr @dev_attr_size, ptr @dev_attr_dimm_mem_type, ptr @dev_attr_dimm_dev_type, ptr @dev_attr_dimm_edac_mode, ptr @dev_attr_dimm_ce_count, ptr @dev_attr_dimm_ue_count, ptr null], align 4
@dev_attr_dimm_label = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420 }, ptr @dimmdev_label_show, ptr @dimmdev_label_store }, align 4
@dev_attr_dimm_location = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @dimmdev_location_show, ptr null }, align 4
@dev_attr_size = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @dimmdev_size_show, ptr null }, align 4
@dev_attr_dimm_mem_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292 }, ptr @dimmdev_mem_type_show, ptr null }, align 4
@dev_attr_dimm_dev_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @dimmdev_dev_type_show, ptr null }, align 4
@dev_attr_dimm_edac_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292 }, ptr @dimmdev_edac_mode_show, ptr null }, align 4
@dev_attr_dimm_ce_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @dimmdev_ce_count_show, ptr null }, align 4
@dev_attr_dimm_ue_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @dimmdev_ue_count_show, ptr null }, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"dimm_label\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"dimm_location\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"dimm_mem_type\00", align 1
@edac_mem_types = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"dimm_dev_type\00", align 1
@dev_types = internal unnamed_addr constant [8 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], align 4
@.str.27 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"x4\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"x8\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"x16\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"x32\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"x64\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"dimm_edac_mode\00", align 1
@edac_caps = internal unnamed_addr constant [10 x ptr] [ptr @.str.27, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"PARITY\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"SECDED\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"S2ECD2ED\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"S4ECD4ED\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"S8ECD8ED\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"S16ECD16ED\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"dimm_ce_count\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"dimm_ue_count\00", align 1
@csrow_attr_type = internal constant %struct.device_type { ptr null, ptr @csrow_attr_groups, ptr null, ptr null, ptr null, ptr null }, align 4
@csrow_dev_groups = internal global [3 x ptr] [ptr @csrow_dev_dimm_group, ptr @csrow_dev_ce_count_group, ptr null], align 4
@.str.47 = private unnamed_addr constant [8 x i8] c"csrow%d\00", align 1
@csrow_attr_groups = internal global [2 x ptr] [ptr @csrow_attr_grp, ptr null], align 4
@csrow_attr_grp = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @csrow_attrs, ptr null }, align 4
@csrow_attrs = internal global [7 x ptr] [ptr @dev_attr_legacy_dev_type, ptr @dev_attr_legacy_mem_type, ptr @dev_attr_legacy_edac_mode, ptr @dev_attr_legacy_size_mb, ptr @dev_attr_legacy_ue_count, ptr @dev_attr_legacy_ce_count, ptr null], align 4
@dev_attr_legacy_dev_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292 }, ptr @csrow_dev_type_show, ptr null }, align 4
@dev_attr_legacy_mem_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @csrow_mem_type_show, ptr null }, align 4
@dev_attr_legacy_edac_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @csrow_edac_mode_show, ptr null }, align 4
@dev_attr_legacy_size_mb = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @csrow_size_show, ptr null }, align 4
@dev_attr_legacy_ue_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @csrow_ue_count_show, ptr null }, align 4
@dev_attr_legacy_ce_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @csrow_ce_count_show, ptr null }, align 4
@.str.48 = private unnamed_addr constant [9 x i8] c"dev_type\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"mem_type\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"edac_mode\00", align 1
@csrow_dev_dimm_group = internal constant %struct.attribute_group { ptr null, ptr @csrow_dev_is_visible, ptr null, ptr @dynamic_csrow_dimm_attr, ptr null }, align 4
@csrow_dev_ce_count_group = internal constant %struct.attribute_group { ptr null, ptr @csrow_dev_is_visible, ptr null, ptr @dynamic_csrow_ce_count_attr, ptr null }, align 4
@dynamic_csrow_dimm_attr = internal global [9 x ptr] [ptr @dev_attr_legacy_ch0_dimm_label, ptr @dev_attr_legacy_ch1_dimm_label, ptr @dev_attr_legacy_ch2_dimm_label, ptr @dev_attr_legacy_ch3_dimm_label, ptr @dev_attr_legacy_ch4_dimm_label, ptr @dev_attr_legacy_ch5_dimm_label, ptr @dev_attr_legacy_ch6_dimm_label, ptr @dev_attr_legacy_ch7_dimm_label, ptr null], align 4
@csrow_dev_is_visible.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"drivers/edac/edac_mc_sysfs.c\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"idx: %d\0A\00", align 1
@dev_attr_legacy_ch0_dimm_label = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420 }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 0 }, align 4
@dev_attr_legacy_ch1_dimm_label = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420 }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 1 }, align 4
@dev_attr_legacy_ch2_dimm_label = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420 }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 2 }, align 4
@dev_attr_legacy_ch3_dimm_label = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420 }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 3 }, align 4
@dev_attr_legacy_ch4_dimm_label = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420 }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 4 }, align 4
@dev_attr_legacy_ch5_dimm_label = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420 }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 5 }, align 4
@dev_attr_legacy_ch6_dimm_label = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420 }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 6 }, align 4
@dev_attr_legacy_ch7_dimm_label = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420 }, ptr @channel_dimm_label_show, ptr @channel_dimm_label_store }, i32 7 }, align 4
@.str.53 = private unnamed_addr constant [15 x i8] c"ch0_dimm_label\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"ch1_dimm_label\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"ch2_dimm_label\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"ch3_dimm_label\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"ch4_dimm_label\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"ch5_dimm_label\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"ch6_dimm_label\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"ch7_dimm_label\00", align 1
@dynamic_csrow_ce_count_attr = internal global [9 x ptr] [ptr @dev_attr_legacy_ch0_ce_count, ptr @dev_attr_legacy_ch1_ce_count, ptr @dev_attr_legacy_ch2_ce_count, ptr @dev_attr_legacy_ch3_ce_count, ptr @dev_attr_legacy_ch4_ce_count, ptr @dev_attr_legacy_ch5_ce_count, ptr @dev_attr_legacy_ch6_ce_count, ptr @dev_attr_legacy_ch7_ce_count, ptr null], align 4
@dev_attr_legacy_ch0_ce_count = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292 }, ptr @channel_ce_count_show, ptr null }, i32 0 }, align 4
@dev_attr_legacy_ch1_ce_count = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292 }, ptr @channel_ce_count_show, ptr null }, i32 1 }, align 4
@dev_attr_legacy_ch2_ce_count = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292 }, ptr @channel_ce_count_show, ptr null }, i32 2 }, align 4
@dev_attr_legacy_ch3_ce_count = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292 }, ptr @channel_ce_count_show, ptr null }, i32 3 }, align 4
@dev_attr_legacy_ch4_ce_count = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292 }, ptr @channel_ce_count_show, ptr null }, i32 4 }, align 4
@dev_attr_legacy_ch5_ce_count = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292 }, ptr @channel_ce_count_show, ptr null }, i32 5 }, align 4
@dev_attr_legacy_ch6_ce_count = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292 }, ptr @channel_ce_count_show, ptr null }, i32 6 }, align 4
@dev_attr_legacy_ch7_ce_count = internal global %struct.dev_ch_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292 }, ptr @channel_ce_count_show, ptr null }, i32 7 }, align 4
@.str.61 = private unnamed_addr constant [13 x i8] c"ch0_ce_count\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"ch1_ce_count\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"ch2_ce_count\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"ch3_ce_count\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"ch4_ce_count\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"ch5_ce_count\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"ch6_ce_count\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"ch7_ce_count\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_edac_mc_log_ce234, ptr @__UNIQUE_ID_edac_mc_log_cetype233, ptr @__UNIQUE_ID_edac_mc_log_ue232, ptr @__UNIQUE_ID_edac_mc_log_uetype231, ptr @__UNIQUE_ID_edac_mc_panic_on_ue230, ptr @__UNIQUE_ID_edac_mc_panic_on_uetype229, ptr @__UNIQUE_ID_edac_mc_poll_msec235, ptr @__param_edac_mc_log_ce, ptr @__param_edac_mc_log_ue, ptr @__param_edac_mc_panic_on_ue, ptr @__param_edac_mc_poll_msec], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_mc_get_log_ue() local_unnamed_addr #0 {
  %1 = load i32, ptr @edac_mc_log_ue, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_mc_get_log_ce() local_unnamed_addr #0 {
  %1 = load i32, ptr @edac_mc_log_ce, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_mc_get_panic_on_ue() local_unnamed_addr #0 {
  %1 = load i32, ptr @edac_mc_panic_on_ue, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @edac_mc_get_poll_msec() local_unnamed_addr #0 {
  %1 = load i32, ptr @edac_mc_poll_msec, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_create_sysfs_mci_device(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  store ptr @mci_attr_type, ptr %3, align 8
  %4 = load ptr, ptr @mci_pdev, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 32
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %8) #16
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %0, ptr %10, align 8
  tail call void @pm_runtime_forbid(ptr noundef %0) #16
  %11 = tail call i32 @device_add(ptr noundef %0) #16
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %117, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 21
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 19
  %20 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 20
  br label %21

21:                                               ; preds = %47, %18
  %22 = phi ptr [ %16, %18 ], [ %50, %47 ]
  %23 = getelementptr inbounds %struct.dimm_info, ptr %22, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.dimm_info, ptr %22, i32 0, i32 3
  store ptr %0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 4
  store ptr @dimm_attr_type, ptr %28, align 8
  %29 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 33
  store ptr @dimm_release, ptr %29, align 4
  tail call void @device_initialize(ptr noundef nonnull %22) #16
  %30 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 1
  store ptr %0, ptr %30, align 4
  %31 = load i8, ptr %19, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.dimm_info, ptr %22, i32 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = select i1 %32, ptr @.str.21, ptr @.str.20
  %36 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %22, ptr noundef nonnull %35, i32 noundef %34) #16
  %37 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  store ptr %22, ptr %37, align 8
  tail call void @pm_runtime_forbid(ptr noundef %0) #16
  %38 = tail call i32 @device_add(ptr noundef nonnull %22) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  tail call void @put_device(ptr noundef nonnull %22) #16
  br label %115

41:                                               ; preds = %26, %21
  %42 = getelementptr inbounds %struct.dimm_info, ptr %22, i32 0, i32 4
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, 1
  %45 = load i32, ptr %20, align 8
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load ptr, ptr %14, align 4
  %49 = getelementptr ptr, ptr %48, i32 %44
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %21

52:                                               ; preds = %47, %41, %13
  %53 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 15
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %117, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 14
  br label %58

58:                                               ; preds = %98, %56
  %59 = phi i32 [ 0, %56 ], [ %99, %98 ]
  %60 = load ptr, ptr %57, align 8
  %61 = getelementptr ptr, ptr %60, i32 %59
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.csrow_info, ptr %62, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %98, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.csrow_info, ptr %62, i32 0, i32 9
  %68 = load ptr, ptr %67, align 8
  br label %69

69:                                               ; preds = %69, %66
  %70 = phi i32 [ 0, %66 ], [ %78, %69 ]
  %71 = phi i32 [ 0, %66 ], [ %79, %69 ]
  %72 = getelementptr ptr, ptr %68, i32 %71
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.rank_info, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.dimm_info, ptr %75, i32 0, i32 9
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %70
  %79 = add nuw i32 %71, 1
  %80 = icmp eq i32 %79, %64
  br i1 %80, label %81, label %69

81:                                               ; preds = %69
  %82 = icmp eq i32 %78, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 4
  store ptr @csrow_attr_type, ptr %84, align 8
  %85 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 32
  store ptr @csrow_dev_groups, ptr %85, align 8
  %86 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 33
  store ptr @csrow_release, ptr %86, align 4
  tail call void @device_initialize(ptr noundef %62) #16
  %87 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 1
  store ptr %0, ptr %87, align 4
  %88 = getelementptr inbounds %struct.csrow_info, ptr %62, i32 0, i32 7
  store ptr %0, ptr %88, align 8
  %89 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %62, ptr noundef nonnull @.str.47, i32 noundef %59) #16
  %90 = getelementptr inbounds %struct.device, ptr %62, i32 0, i32 8
  store ptr %62, ptr %90, align 8
  %91 = tail call i32 @device_add(ptr noundef %62) #16
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %83
  tail call void @put_device(ptr noundef %62) #16
  %94 = icmp slt i32 %91, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = add i32 %59, -1
  %97 = icmp sgt i32 %96, -1
  br i1 %97, label %102, label %115

98:                                               ; preds = %93, %83, %81, %58
  %99 = add nuw i32 %59, 1
  %100 = load i32, ptr %53, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %58, label %117

102:                                              ; preds = %112, %95
  %103 = phi i32 [ %113, %112 ], [ %96, %95 ]
  %104 = load ptr, ptr %57, align 8
  %105 = getelementptr ptr, ptr %104, i32 %103
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.kobject, ptr %106, i32 0, i32 7
  %108 = load i8, ptr %107, align 8
  %109 = and i8 %108, 2
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  tail call void @device_unregister(ptr noundef %106) #16
  br label %112

112:                                              ; preds = %111, %102
  %113 = add i32 %103, -1
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %102, label %115

115:                                              ; preds = %112, %95, %40
  %116 = phi i32 [ %38, %40 ], [ %91, %95 ], [ %91, %112 ]
  tail call void @edac_remove_sysfs_mci_device(ptr noundef %0)
  br label %117

117:                                              ; preds = %115, %98, %52, %2
  %118 = phi i32 [ %116, %115 ], [ %11, %2 ], [ 0, %52 ], [ 0, %98 ]
  ret i32 %118
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_remove_sysfs_mci_device(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 14
  br label %12

12:                                               ; preds = %24, %10
  %13 = phi i32 [ %8, %10 ], [ %25, %24 ]
  %14 = phi i32 [ 0, %10 ], [ %26, %24 ]
  %15 = load ptr, ptr %11, align 8
  %16 = getelementptr ptr, ptr %15, i32 %14
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.kobject, ptr %17, i32 0, i32 7
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  tail call void @device_unregister(ptr noundef %17) #16
  %23 = load i32, ptr %7, align 4
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi i32 [ %13, %12 ], [ %23, %22 ]
  %26 = add nuw i32 %14, 1
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %12, label %28

28:                                               ; preds = %24, %6
  %29 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 21
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 20
  br label %35

35:                                               ; preds = %48, %33
  %36 = phi ptr [ %31, %33 ], [ %51, %48 ]
  %37 = getelementptr inbounds %struct.kobject, ptr %36, i32 0, i32 7
  %38 = load i8, ptr %37, align 8
  %39 = and i8 %38, 2
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void @device_unregister(ptr noundef nonnull %36) #16
  br label %42

42:                                               ; preds = %41, %35
  %43 = getelementptr inbounds %struct.dimm_info, ptr %36, i32 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = add i32 %44, 1
  %46 = load i32, ptr %34, align 8
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load ptr, ptr %29, align 4
  %50 = getelementptr ptr, ptr %49, i32 %45
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %35

53:                                               ; preds = %48, %42, %28
  tail call void @device_del(ptr noundef %0) #16
  br label %54

54:                                               ; preds = %53, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @edac_mc_sysfs_init() local_unnamed_addr #4 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 472) #17
  store ptr %2, ptr @mci_pdev, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = tail call ptr @edac_get_sysfs_subsys() #16
  %6 = load ptr, ptr @mci_pdev, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5
  store ptr %5, ptr %7, align 4
  %8 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 33
  store ptr @mc_attr_release, ptr %8, align 4
  %9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  store ptr @.str.1, ptr %9, align 4
  %10 = tail call i32 @device_register(ptr noundef %6) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load ptr, ptr @mci_pdev, align 4
  tail call void @put_device(ptr noundef %13) #16
  br label %14

14:                                               ; preds = %12, %4, %0
  %15 = phi i32 [ %10, %12 ], [ -12, %0 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_get_sysfs_subsys() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mc_attr_release(ptr noundef %0) #1 {
  tail call void @kfree(ptr noundef %0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_mc_sysfs_exit() local_unnamed_addr #1 {
  %1 = load ptr, ptr @mci_pdev, align 4
  tail call void @device_unregister(ptr noundef %1) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edac_set_poll_msec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = call i32 @kstrtouint(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %3) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, ptr %3, align 4
  %10 = icmp ult i32 %9, 1000
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  store i32 %9, ptr %13, align 4
  %14 = load i32, ptr %3, align 4
  call void @edac_mc_reset_delay_period(i32 noundef %14) #16
  br label %15

15:                                               ; preds = %11, %8, %5, %2
  %16 = phi i32 [ 0, %11 ], [ -22, %2 ], [ %6, %5 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_reset_delay_period(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mci_attr_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp eq ptr %1, @dev_attr_sdram_scrub_rate
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  br label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, i16 0, i16 292
  %13 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = or i16 %12, 128
  %17 = select i1 %15, i16 %12, i16 %16
  br label %18

18:                                               ; preds = %8, %5
  %19 = phi i16 [ %7, %5 ], [ %17, %8 ]
  ret i16 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_sdram_scrub_rate_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #1 {
  %4 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 %5(ptr noundef %0) #16
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #18
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %6)
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %6, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_sdram_scrub_rate_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #16
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %5, align 4
  %12 = call i32 %10(ptr noundef %0, i32 noundef %11) #16
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, ptr %5, align 4
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %15) #18
  br label %17

17:                                               ; preds = %14, %8, %4
  %18 = phi i32 [ -22, %14 ], [ -22, %4 ], [ %3, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_reset_counters_store(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #8 {
  %5 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 28
  %6 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 15
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 14
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi i32 [ 0, %9 ], [ %33, %32 ]
  %13 = load ptr, ptr %10, align 8
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.csrow_info, ptr %15, i32 0, i32 5
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.csrow_info, ptr %15, i32 0, i32 6
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.csrow_info, ptr %15, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.csrow_info, ptr %15, i32 0, i32 9
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %29, %23 ]
  %25 = load ptr, ptr %22, align 8
  %26 = getelementptr ptr, ptr %25, i32 %24
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.rank_info, ptr %27, i32 0, i32 3
  store i32 0, ptr %28, align 4
  %29 = add nuw i32 %24, 1
  %30 = load i32, ptr %18, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %23, label %32

32:                                               ; preds = %23, %11
  %33 = add nuw i32 %12, 1
  %34 = load i32, ptr %6, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %11, label %36

36:                                               ; preds = %32, %4
  %37 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 21
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 20
  br label %43

43:                                               ; preds = %52, %41
  %44 = phi ptr [ %39, %41 ], [ %55, %52 ]
  %45 = getelementptr inbounds %struct.dimm_info, ptr %44, i32 0, i32 14
  store i32 0, ptr %45, align 8
  %46 = getelementptr inbounds %struct.dimm_info, ptr %44, i32 0, i32 13
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dimm_info, ptr %44, i32 0, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = add i32 %48, 1
  %50 = load i32, ptr %42, align 8
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load ptr, ptr %37, align 4
  %54 = getelementptr ptr, ptr %53, i32 %49
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %43

57:                                               ; preds = %52, %43, %36
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 27
  store i32 %58, ptr %59, align 4
  ret i32 %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_ctl_name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_size_mb_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 15
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %33, %7
  %11 = phi i32 [ 0, %7 ], [ %35, %33 ]
  %12 = phi i32 [ 0, %7 ], [ %34, %33 ]
  %13 = getelementptr ptr, ptr %9, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.csrow_info, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.csrow_info, ptr %14, i32 0, i32 9
  %20 = load ptr, ptr %19, align 8
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ 0, %18 ], [ %31, %21 ]
  %23 = phi i32 [ %12, %18 ], [ %30, %21 ]
  %24 = getelementptr ptr, ptr %20, i32 %22
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rank_info, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dimm_info, ptr %27, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %23
  %31 = add nuw i32 %22, 1
  %32 = icmp eq i32 %31, %16
  br i1 %32, label %33, label %21

33:                                               ; preds = %21, %10
  %34 = phi i32 [ %12, %10 ], [ %30, %21 ]
  %35 = add nuw i32 %11, 1
  %36 = icmp eq i32 %35, %5
  br i1 %36, label %37, label %10

37:                                               ; preds = %33, %3
  %38 = phi i32 [ 0, %3 ], [ %34, %33 ]
  %39 = ashr i32 %38, 8
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %39)
  ret i32 %40
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_seconds_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = load volatile i32, ptr @jiffies, align 64
  %5 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 27
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = udiv i32 %7, 100
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_ue_noinfo_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 29
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_ce_noinfo_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_ue_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 30
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_ce_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 31
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mci_max_location_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 17
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.mem_ctl_info, ptr %0, i32 0, i32 18
  br label %9

9:                                                ; preds = %24, %7
  %10 = phi i32 [ 0, %7 ], [ %26, %24 ]
  %11 = phi ptr [ %2, %7 ], [ %25, %24 ]
  %12 = phi i32 [ 4096, %7 ], [ %22, %24 ]
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr %struct.edac_mc_layer, ptr %13, i32 %10
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [0 x ptr], ptr @edac_layer_name, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.edac_mc_layer, ptr %13, i32 %10, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %11, i32 noundef %12, ptr noundef nonnull @.str.18, ptr noundef %17, i32 noundef %20) #16
  %22 = sub i32 %12, %21
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %34, label %24

24:                                               ; preds = %9
  %25 = getelementptr i8, ptr %11, i32 %21
  %26 = add nuw i32 %10, 1
  %27 = load i32, ptr %4, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %9, label %29

29:                                               ; preds = %24, %3
  %30 = phi i32 [ 4096, %3 ], [ %22, %24 ]
  %31 = phi ptr [ %2, %3 ], [ %25, %24 ]
  %32 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %31, i32 noundef %30, ptr noundef nonnull @.str.19) #16
  %33 = getelementptr i8, ptr %31, i32 %32
  br label %34

34:                                               ; preds = %29, %9
  %35 = phi ptr [ %33, %29 ], [ %11, %9 ]
  %36 = ptrtoint ptr %35 to i32
  %37 = ptrtoint ptr %2 to i32
  %38 = sub i32 %36, %37
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @dimm_release(ptr nocapture noundef %0) #10 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dimmdev_label_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.dimm_info, ptr %0, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 33, ptr noundef nonnull @.str.8, ptr noundef %4)
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %8, %7 ], [ 0, %3 ]
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @dimmdev_label_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #11 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = add i32 %3, -1
  %8 = getelementptr i8, ptr %2, i32 %7
  %9 = load i8, ptr %8, align 1
  switch i8 %9, label %11 [
    i8 0, label %10
    i8 10, label %10
  ]

10:                                               ; preds = %6, %6
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i32 [ %7, %10 ], [ %3, %6 ]
  %13 = add i32 %12, -32
  %14 = icmp ult i32 %13, -31
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dimm_info, ptr %0, i32 0, i32 1
  %17 = tail call ptr @strncpy(ptr noundef %16, ptr noundef %2, i32 noundef %12)
  %18 = getelementptr %struct.dimm_info, ptr %0, i32 0, i32 1, i32 %12
  store i8 0, ptr %18, align 1
  br label %19

19:                                               ; preds = %15, %11, %4
  %20 = phi i32 [ %3, %15 ], [ -22, %4 ], [ -22, %11 ]
  ret i32 %20
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dimmdev_location_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #1 {
  %4 = tail call i32 @edac_dimm_info_location(ptr noundef %0, ptr noundef %2, i32 noundef 4096) #16
  %5 = getelementptr i8, ptr %2, i32 %4
  %6 = sub i32 4096, %4
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %5, i32 noundef %6, ptr noundef nonnull @.str.19) #16
  %8 = add i32 %7, %4
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_dimm_info_location(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dimmdev_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.dimm_info, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 8
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dimmdev_mem_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.dimm_info, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [0 x ptr], ptr @edac_mem_types, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dimmdev_dev_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.dimm_info, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [8 x ptr], ptr @dev_types, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dimmdev_edac_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.dimm_info, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr [10 x ptr], ptr @edac_caps, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dimmdev_ce_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.dimm_info, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dimmdev_ue_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.dimm_info, ptr %0, i32 0, i32 14
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @csrow_release(ptr nocapture noundef %0) #10 {
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @csrow_dev_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rank_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dimm_info, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr [8 x ptr], ptr @dev_types, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %12)
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @csrow_mem_type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rank_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dimm_info, ptr %8, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr [0 x ptr], ptr @edac_mem_types, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %12)
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @csrow_edac_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rank_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dimm_info, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr [10 x ptr], ptr @edac_caps, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %12)
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @csrow_size_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 0, %7 ], [ %19, %10 ]
  %12 = phi i32 [ 0, %7 ], [ %20, %10 ]
  %13 = getelementptr ptr, ptr %9, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rank_info, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dimm_info, ptr %16, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %11
  %20 = add nuw i32 %12, 1
  %21 = icmp eq i32 %20, %5
  br i1 %21, label %22, label %10

22:                                               ; preds = %10
  %23 = lshr i32 %19, 8
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi i32 [ 0, %3 ], [ %23, %22 ]
  %26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %25)
  ret i32 %26
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @csrow_ue_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @csrow_ce_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @csrow_dev_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = icmp ugt i32 %2, 7
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load i1, ptr @csrow_dev_is_visible.__already_done, align 1
  br i1 %10, label %25, label %11, !prof !10

11:                                               ; preds = %9
  store i1 true, ptr @csrow_dev_is_visible.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 356, i32 noundef 9, ptr noundef nonnull @.str.52, i32 noundef %2) #16
  br label %25

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr ptr, ptr %14, i32 %2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.rank_info, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dimm_info, ptr %18, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %24 = load i16, ptr %23, align 4
  br label %25

25:                                               ; preds = %22, %12, %11, %9, %3
  %26 = phi i16 [ %24, %22 ], [ 0, %3 ], [ 0, %11 ], [ 0, %9 ], [ 0, %12 ]
  ret i16 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @channel_dimm_label_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.dev_ch_attribute, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr ptr, ptr %7, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rank_info, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dimm_info, ptr %11, i32 0, i32 1
  %13 = load i8, ptr %12, align 8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 33, ptr noundef nonnull @.str.8, ptr noundef %12)
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i32 [ %16, %15 ], [ 0, %3 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @channel_dimm_label_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #13 {
  %5 = getelementptr inbounds %struct.dev_ch_attribute, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr ptr, ptr %8, i32 %6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq i32 %3, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %4
  %13 = add i32 %3, -1
  %14 = getelementptr i8, ptr %2, i32 %13
  %15 = load i8, ptr %14, align 1
  switch i8 %15, label %17 [
    i8 0, label %16
    i8 10, label %16
  ]

16:                                               ; preds = %12, %12
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi i32 [ %13, %16 ], [ %3, %12 ]
  %19 = add i32 %18, -32
  %20 = icmp ult i32 %19, -31
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rank_info, ptr %10, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dimm_info, ptr %23, i32 0, i32 1
  %25 = tail call ptr @strncpy(ptr noundef %24, ptr noundef %2, i32 noundef %18)
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr %struct.dimm_info, ptr %26, i32 0, i32 1, i32 %18
  store i8 0, ptr %27, align 1
  br label %28

28:                                               ; preds = %21, %17, %4
  %29 = phi i32 [ %3, %21 ], [ -22, %4 ], [ -22, %17 ]
  ret i32 %29
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @channel_ce_count_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = getelementptr inbounds %struct.dev_ch_attribute, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.csrow_info, ptr %0, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr ptr, ptr %7, i32 %5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rank_info, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind willreturn writeonly }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
