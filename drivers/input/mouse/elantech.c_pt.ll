; ModuleID = '/llk/IR/drivers/input/mouse/elantech.c_pt.bc'
source_filename = "../drivers/input/mouse/elantech.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.35 }
%union.anon.35 = type { ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.elantech_attr_data = type { i32, i8 }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.elantech_device_info = type { [3 x i8], [3 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.72 }
%union.anon.72 = type { %union.anon.73 }
%union.anon.73 = type { [1 x i64] }
%struct.elantech_data = type { ptr, [32 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [5 x %struct.finger_pos], [256 x i8], %struct.elantech_device_info, ptr }
%struct.finger_pos = type { i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Elantech\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1
@__param_str_elantech_smbus = internal constant [23 x i8] c"psmouse.elantech_smbus\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@elantech_smbus = internal global i32 0, align 4
@__param_elantech_smbus = internal constant %struct.kernel_param { ptr @__param_str_elantech_smbus, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.35 { ptr @elantech_smbus } }, section "__param", align 4
@__UNIQUE_ID_elantech_smbustype247 = internal constant [36 x i8] c"psmouse.parmtype=elantech_smbus:int\00", section ".modinfo", align 1
@__UNIQUE_ID_elantech_smbus248 = internal constant [73 x i8] c"psmouse.parm=elantech_smbus:Use a secondary bus for the Elantech device.\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [190 x i8] c"elantech: The touchpad can support a better bus than the too old PS/2 protocol. Make sure MOUSE_PS2_ELANTECH_SMBUS and MOUSE_ELAN_I2C_SMBUS are enabled to get a better touchpad experience.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"elantech: %s query 0x%02x failed.\0A\00", align 1
@__func__.synaptics_send_cmd = private unnamed_addr constant [19 x i8] c"synaptics_send_cmd\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"elantech: failed to query firmware version.\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"elantech: unknown hardware version, aborting...\0A\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"elantech: assuming hardware version %d (with firmware version 0x%02x%02x%02x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"elantech: failed to query capabilities.\0A\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"elantech: Synaptics capabilities query result 0x%02x, 0x%02x, 0x%02x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"elantech: failed to query sample data\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"elantech: Elan sample query result %02x, %02x, %02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"elantech: failed to query ic body\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"elantech: Elan ic body: %#04x, current fw version: %#02x\0A\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"elantech: absolute mode broken, forcing standard PS/2 protocol\0A\00", align 1
@.str.14 = private unnamed_addr constant [71 x i8] c"elantech: Trackpoint report is broken, forcing standard PS/2 protocol\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"elantech: failed to query resolution data.\0A\00", align 1
@elantech_dmi_has_middle_button = internal constant [1 x %struct.dmi_system_id] zeroinitializer, align 4
@elantech_dmi_force_crc_enabled = internal constant [1 x %struct.dmi_system_id] zeroinitializer, align 4
@no_hw_res_dmi_table = internal constant [1 x %struct.dmi_system_id] zeroinitializer, align 4
@__func__.elantech_send_cmd = private unnamed_addr constant [18 x i8] c"elantech_send_cmd\00", align 1
@__const.elantech_change_report_id.param = private unnamed_addr constant [3 x i8] c"\10\03\00", align 1
@.str.16 = private unnamed_addr constant [47 x i8] c"elantech: Unable to change report ID to 0x5f.\0A\00", align 1
@.str.17 = private unnamed_addr constant [64 x i8] c"elantech: failed to write register %#02x with value %#02x%#02x\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"elantech: retrying ps2 command 0x%02x (%d).\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"elantech: ps2 command 0x%02x failed.\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"elantech: failed to read register %#02x\0A\00", align 1
@__const.elantech_create_smbus.smbus_board = private unnamed_addr constant %struct.i2c_board_info { [20 x i8] c"elan_i2c\00\00\00\00\00\00\00\00\00\00\00\00", i16 64, i16 21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"touchscreen-size-x\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"touchscreen-size-y\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"touchscreen-min-x\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"touchscreen-min-y\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"touchscreen-x-mm\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"touchscreen-y-mm\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"elan,trackpoint\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"elan,middle-button\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"elan,x_traces\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"elan,y_traces\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"elan,clickpad\00", align 1
@.str.33 = private unnamed_addr constant [54 x i8] c"elantech: failed to put touchpad into absolute mode.\0A\00", align 1
@elantech_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @elantech_attrs, ptr null }, align 4
@.str.35 = private unnamed_addr constant [57 x i8] c"elantech: failed to create sysfs attributes, error: %d.\0A\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"%s/input1\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"ETPS/2 Elantech TrackPoint\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.38 = private unnamed_addr constant [31 x i8] c"elantech: retrying read (%d).\0A\00", align 1
@.str.39 = private unnamed_addr constant [46 x i8] c"elantech: failed to read back register 0x10.\0A\00", align 1
@.str.40 = private unnamed_addr constant [56 x i8] c"elantech: touchpad refuses to switch to absolute mode.\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"elantech: failed to initialise registers.\0A\00", align 1
@.str.42 = private unnamed_addr constant [62 x i8] c"elantech: failed to write register 0x%02x with value 0x%02x.\0A\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"elantech: failed to read register 0x%02x.\0A\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"elantech: restoring reg_07 failed\0A\00", align 1
@elantech_attrs = internal global [14 x ptr] [ptr @psmouse_attr_reg_07, ptr @psmouse_attr_reg_10, ptr @psmouse_attr_reg_11, ptr @psmouse_attr_reg_20, ptr @psmouse_attr_reg_21, ptr @psmouse_attr_reg_22, ptr @psmouse_attr_reg_23, ptr @psmouse_attr_reg_24, ptr @psmouse_attr_reg_25, ptr @psmouse_attr_reg_26, ptr @psmouse_attr_debug, ptr @psmouse_attr_paritycheck, ptr @psmouse_attr_crc_enabled, ptr null], align 4
@psmouse_attr_reg_07 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_07, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_reg_10 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_10, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_reg_11 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_11, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_reg_20 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_20, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_reg_21 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_21, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_reg_22 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_22, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_reg_23 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_23, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_reg_24 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_24, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_reg_25 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_25, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_reg_26 = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_reg_26, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_debug = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_debug, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_paritycheck = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_paritycheck, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@psmouse_attr_crc_enabled = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr @elantech_attr_crc_enabled, ptr @elantech_show_int_attr, ptr @elantech_set_int_attr, i8 1 }, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"reg_07\00", align 1
@elantech_attr_reg_07 = internal global %struct.elantech_attr_data { i32 36, i8 7 }, align 4
@.str.46 = private unnamed_addr constant [8 x i8] c"0x%02x\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"reg_10\00", align 1
@elantech_attr_reg_10 = internal global %struct.elantech_attr_data { i32 37, i8 16 }, align 4
@.str.48 = private unnamed_addr constant [7 x i8] c"reg_11\00", align 1
@elantech_attr_reg_11 = internal global %struct.elantech_attr_data { i32 38, i8 17 }, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"reg_20\00", align 1
@elantech_attr_reg_20 = internal global %struct.elantech_attr_data { i32 39, i8 32 }, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"reg_21\00", align 1
@elantech_attr_reg_21 = internal global %struct.elantech_attr_data { i32 40, i8 33 }, align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"reg_22\00", align 1
@elantech_attr_reg_22 = internal global %struct.elantech_attr_data { i32 41, i8 34 }, align 4
@.str.52 = private unnamed_addr constant [7 x i8] c"reg_23\00", align 1
@elantech_attr_reg_23 = internal global %struct.elantech_attr_data { i32 42, i8 35 }, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"reg_24\00", align 1
@elantech_attr_reg_24 = internal global %struct.elantech_attr_data { i32 43, i8 36 }, align 4
@.str.54 = private unnamed_addr constant [7 x i8] c"reg_25\00", align 1
@elantech_attr_reg_25 = internal global %struct.elantech_attr_data { i32 44, i8 37 }, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"reg_26\00", align 1
@elantech_attr_reg_26 = internal global %struct.elantech_attr_data { i32 45, i8 38 }, align 4
@.str.56 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@elantech_attr_debug = internal global %struct.elantech_attr_data { i32 362, i8 0 }, align 4
@.str.57 = private unnamed_addr constant [12 x i8] c"paritycheck\00", align 1
@elantech_attr_paritycheck = internal global %struct.elantech_attr_data { i32 420, i8 0 }, align 4
@.str.58 = private unnamed_addr constant [12 x i8] c"crc_enabled\00", align 1
@elantech_attr_crc_enabled = internal global %struct.elantech_attr_data { i32 423, i8 0 }, align 4
@.str.59 = private unnamed_addr constant [30 x i8] c"elantech: PS/2 packet [%*ph]\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"elantech: discarding packet\0A\00", align 1
@elantech_debounce_check_v2.debounce_packet = internal constant [6 x i8] c"\84\FF\FF\02\FF\FF", align 1
@elantech_packet_check_v3.debounce_packet = internal constant [6 x i8] c"\C4\FF\FF\02\FF\FF", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"elantech: discarding packet [%6ph]\0A\00", align 1
@.str.62 = private unnamed_addr constant [59 x i8] c"elantech: failed to put touchpad back into absolute mode.\0A\00", align 1
@i2c_blacklist_pnp_ids = internal constant [1 x ptr] zeroinitializer, align 4
@.str.63 = private unnamed_addr constant [41 x i8] c"elantech: Trying to set up SMBus access\0A\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"elantech: SMbus companion is not ready yet\0A\00", align 1
@.str.65 = private unnamed_addr constant [46 x i8] c"elantech: unable to create intertouch device\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_elantech_smbus248, ptr @__UNIQUE_ID_elantech_smbustype247, ptr @__param_elantech_smbus], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elantech_detect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %5 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 246) #11
  %6 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 245) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %2
  %9 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 230) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 230) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 230) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %14
  %18 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1001) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i8, ptr %3, align 1
  %22 = icmp ne i8 %21, 60
  %23 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp ne i8 %24, 3
  %26 = select i1 %22, i1 true, i1 %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  switch i8 %29, label %41 [
    i8 -56, label %30
    i8 0, label %30
  ]

30:                                               ; preds = %27, %27
  %31 = call i32 @synaptics_send_cmd(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %3)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = call fastcc zeroext i1 @elantech_is_signature_valid(ptr noundef nonnull %3)
  %35 = xor i1 %34, true
  %36 = and i1 %34, %1
  %37 = sext i1 %35 to i32
  br i1 %36, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str, ptr %39, align 4
  %40 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str.1, ptr %40, align 4
  br label %41

41:                                               ; preds = %38, %33, %30, %27, %20, %17, %14, %11, %8, %2
  %42 = phi i32 [ -1, %17 ], [ -1, %14 ], [ -1, %11 ], [ -1, %8 ], [ -1, %2 ], [ -1, %27 ], [ -1, %20 ], [ -1, %30 ], [ %37, %33 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #11
  ret i32 %42
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @synaptics_send_cmd(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %5 = tail call i32 @ps2_sliced_command(ptr noundef %4, i8 noundef zeroext %1) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef %2, i32 noundef 1001) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %3
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  %13 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.synaptics_send_cmd, i32 noundef %13) #12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i32 [ -1, %10 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i1 @elantech_is_signature_valid(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = and i8 %2, 14
  %10 = icmp ugt i8 %9, 5
  %11 = and i8 %6, -81
  %12 = icmp eq i8 %11, 15
  %13 = select i1 %10, i1 %12, i1 false
  %14 = getelementptr i8, ptr %0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp ult i8 %15, 40
  %17 = select i1 %13, i1 %16, i1 false
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  switch i8 %15, label %19 [
    i8 -56, label %20
    i8 100, label %20
    i8 80, label %20
    i8 60, label %20
    i8 40, label %20
    i8 20, label %20
    i8 10, label %20
  ]

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19, %18, %18, %18, %18, %18, %18, %18, %8, %4, %1
  %21 = phi i1 [ false, %1 ], [ true, %4 ], [ false, %18 ], [ true, %19 ], [ true, %8 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ]
  ret i1 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elantech_init_smbus(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.elantech_device_info, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i32 76, i1 false), !annotation !8
  %3 = tail call i32 @psmouse_reset(ptr noundef %0) #11
  %4 = call fastcc i32 @elantech_query_info(ptr noundef %0, ptr noundef nonnull %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.elantech_device_info, ptr %2, i32 0, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = call fastcc i32 @elantech_create_smbus(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false)
  br label %15

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %4, %1 ], [ -6, %6 ]
  %14 = call i32 @psmouse_reset(ptr noundef %0) #11
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %13, %12 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %2) #11
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elantech_query_info(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(76) %1, i8 0, i32 76, i1 false)
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %7 = tail call i32 @ps2_sliced_command(ptr noundef %6, i8 noundef zeroext 1) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 1001) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9, %2
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.synaptics_send_cmd, i32 noundef 1) #12
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.4) #12
  br label %368

17:                                               ; preds = %9
  %18 = load i8, ptr %4, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %24, %20
  %26 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %25, %28
  %30 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = and i32 %19, 15
  %32 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = icmp ult i32 %29, 131120
  %34 = icmp eq i32 %29, 132608
  %35 = or i1 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %17
  switch i32 %31, label %72 [
    i32 2, label %38
    i32 4, label %38
    i32 5, label %37
    i32 6, label %42
    i32 7, label %42
    i32 8, label %42
    i32 9, label %42
    i32 10, label %42
    i32 11, label %42
    i32 12, label %42
    i32 13, label %42
    i32 14, label %42
    i32 15, label %42
  ]

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37, %36, %36
  %39 = phi i8 [ 3, %37 ], [ 2, %36 ], [ 2, %36 ]
  %40 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 3
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 4
  store i8 0, ptr %41, align 4
  br label %50

42:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36, %36, %17
  %43 = phi i8 [ 1, %17 ], [ 4, %36 ], [ 4, %36 ], [ 4, %36 ], [ 4, %36 ], [ 4, %36 ], [ 4, %36 ], [ 4, %36 ], [ 4, %36 ], [ 4, %36 ], [ 4, %36 ]
  %44 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 3
  store i8 %43, ptr %44, align 1
  %45 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 4
  %46 = icmp eq i32 %31, 15
  %47 = icmp ult i8 %27, 3
  %48 = select i1 %46, i1 %47, i1 false
  %49 = select i1 %48, i8 %27, i8 0
  store i8 %49, ptr %45, align 4
  br label %50

50:                                               ; preds = %42, %38
  %51 = phi i8 [ %39, %38 ], [ %43, %42 ]
  %52 = icmp ugt i8 %51, 2
  %53 = select i1 %52, ptr @elantech_send_cmd, ptr @synaptics_send_cmd
  %54 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 25
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 18
  store i8 1, ptr %55, align 4
  %56 = icmp eq i32 %29, 131106
  %57 = or i1 %56, %34
  %58 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 19
  %59 = zext i1 %57 to i8
  store i8 %59, ptr %58, align 1
  %60 = icmp ugt i8 %51, 1
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 2
  store i8 1, ptr %62, align 2
  %63 = icmp ugt i32 %29, 133119
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 20
  store i8 1, ptr %65, align 2
  br label %66

66:                                               ; preds = %64, %61, %50
  %67 = and i32 %23, 64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = call i32 @dmi_check_system(ptr noundef nonnull @elantech_dmi_force_crc_enabled) #11
  %71 = icmp ne i32 %70, 0
  br label %75

72:                                               ; preds = %36
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.serio, ptr %73, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.5) #12
  br label %368

75:                                               ; preds = %69, %66
  %76 = phi i1 [ true, %66 ], [ %71, %69 ]
  %77 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 21
  %78 = zext i1 %76 to i8
  store i8 %78, ptr %77, align 1
  %79 = call i32 @dmi_check_system(ptr noundef nonnull @no_hw_res_dmi_table) #11
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 22
  %82 = zext i1 %80 to i8
  store i8 %82, ptr %81, align 4
  %83 = load ptr, ptr %6, align 4
  %84 = getelementptr inbounds %struct.serio, ptr %83, i32 0, i32 18
  %85 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 3
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, ptr %4, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, ptr %21, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, ptr %26, align 1
  %93 = zext i8 %92 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.6, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93) #12
  %94 = load ptr, ptr %54, align 4
  %95 = call i32 %94(ptr noundef %0, i8 noundef zeroext 2, ptr noundef %1) #11
  %96 = icmp eq i32 %95, 0
  %97 = load ptr, ptr %6, align 4
  %98 = getelementptr inbounds %struct.serio, ptr %97, i32 0, i32 18
  br i1 %96, label %100, label %99

99:                                               ; preds = %75
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.7) #12
  br label %368

100:                                              ; preds = %75
  %101 = load i8, ptr %1, align 4
  %102 = zext i8 %101 to i32
  %103 = getelementptr [3 x i8], ptr %1, i32 0, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = zext i8 %104 to i32
  %106 = getelementptr [3 x i8], ptr %1, i32 0, i32 2
  %107 = load i8, ptr %106, align 2
  %108 = zext i8 %107 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %98, ptr noundef nonnull @.str.8, i32 noundef %102, i32 noundef %105, i32 noundef %108) #12
  %109 = load i8, ptr %85, align 1
  %110 = icmp eq i8 %109, 1
  br i1 %110, label %128, label %111

111:                                              ; preds = %100
  %112 = load ptr, ptr %54, align 4
  %113 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 1
  %114 = call i32 %112(ptr noundef %0, i8 noundef zeroext 3, ptr noundef %113) #11
  %115 = icmp eq i32 %114, 0
  %116 = load ptr, ptr %6, align 4
  %117 = getelementptr inbounds %struct.serio, ptr %116, i32 0, i32 18
  br i1 %115, label %119, label %118

118:                                              ; preds = %111
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.9) #12
  br label %368

119:                                              ; preds = %111
  %120 = load i8, ptr %113, align 1
  %121 = zext i8 %120 to i32
  %122 = getelementptr %struct.elantech_device_info, ptr %1, i32 0, i32 1, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = getelementptr %struct.elantech_device_info, ptr %1, i32 0, i32 1, i32 2
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %117, ptr noundef nonnull @.str.10, i32 noundef %121, i32 noundef %124, i32 noundef %127) #12
  br label %128

128:                                              ; preds = %119, %100
  %129 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 4
  %130 = load i8, ptr %129, align 4
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %152, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %32, align 4
  %134 = icmp eq i32 %133, 15
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = load ptr, ptr %54, align 4
  %137 = call i32 %136(ptr noundef %0, i8 noundef zeroext 5, ptr noundef nonnull %5) #11
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %6, align 4
  %141 = getelementptr inbounds %struct.serio, ptr %140, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.11) #12
  br label %368

142:                                              ; preds = %135
  %143 = load i16, ptr %5, align 2
  %144 = call i16 @llvm.bswap.i16(i16 %143) #11
  %145 = zext i16 %144 to i32
  store i32 %145, ptr %32, align 4
  %146 = load ptr, ptr %6, align 4
  %147 = getelementptr inbounds %struct.serio, ptr %146, i32 0, i32 18
  %148 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %149 = load i8, ptr %148, align 2
  %150 = zext i8 %149 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %147, ptr noundef nonnull @.str.12, i32 noundef %145, i32 noundef %150) #12
  %151 = load i8, ptr %129, align 4
  br label %152

152:                                              ; preds = %142, %132, %128
  %153 = phi i8 [ %151, %142 ], [ 1, %132 ], [ 0, %128 ]
  %154 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 1
  %155 = load i16, ptr %154, align 2
  %156 = call i16 @llvm.bswap.i16(i16 %155) #11
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 7
  %159 = icmp eq i8 %153, 0
  %160 = and i32 %157, 255
  %161 = select i1 %159, i32 %160, i32 %157
  store i32 %161, ptr %158, align 4
  %162 = and i16 %155, -256
  %163 = icmp eq i16 %162, 29696
  br i1 %163, label %164, label %170

164:                                              ; preds = %152
  %165 = load i8, ptr %85, align 1
  %166 = icmp eq i8 %165, 3
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load ptr, ptr %6, align 4
  %169 = getelementptr inbounds %struct.serio, ptr %168, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %169, ptr noundef nonnull @.str.13) #12
  br label %368

170:                                              ; preds = %164, %152
  %171 = load i8, ptr %1, align 4
  %172 = icmp slt i8 %171, 0
  %173 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 23
  %174 = lshr i8 %171, 7
  store i8 %174, ptr %173, align 1
  br i1 %172, label %175, label %186

175:                                              ; preds = %170
  %176 = load i32, ptr %32, align 4
  %177 = icmp eq i32 %176, 17
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = trunc i32 %161 to i16
  switch i16 %179, label %186 [
    i16 8, label %180
    i16 9, label %180
    i16 13, label %180
    i16 14, label %180
  ]

180:                                              ; preds = %178, %178, %178, %178
  %181 = call fastcc i32 @elantech_change_report_id(ptr noundef %0)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load ptr, ptr %6, align 4
  %185 = getelementptr inbounds %struct.serio, ptr %184, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %185, ptr noundef nonnull @.str.14) #12
  br label %368

186:                                              ; preds = %180, %178, %175, %170
  %187 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 12
  store i32 31, ptr %187, align 4
  %188 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 13
  store i32 31, ptr %188, align 4
  %189 = load i8, ptr %85, align 1
  %190 = icmp eq i8 %189, 4
  br i1 %190, label %191, label %226

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #11, !annotation !8
  %193 = call i32 @ps2_command(ptr noundef %6, ptr noundef null, i32 noundef 248) #11
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %219

195:                                              ; preds = %191
  %196 = call i32 @ps2_command(ptr noundef %6, ptr noundef null, i32 noundef 4) #11
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %195
  %199 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %3, i32 noundef 1001) #11
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %219

201:                                              ; preds = %198
  %202 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %203 = load i8, ptr %202, align 1
  %204 = and i8 %203, 15
  %205 = zext i8 %204 to i16
  %206 = mul nuw nsw i16 %205, 100
  %207 = add nuw nsw i16 %206, 7900
  %208 = udiv i16 %207, 254
  %209 = zext i16 %208 to i32
  store i32 %209, ptr %187, align 4
  %210 = lshr i8 %203, 4
  %211 = zext i8 %210 to i16
  %212 = mul nuw nsw i16 %211, 100
  %213 = add nuw nsw i16 %212, 7900
  %214 = udiv i16 %213, 254
  %215 = zext i16 %214 to i32
  store i32 %215, ptr %188, align 4
  %216 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %217 = load i8, ptr %216, align 1
  %218 = zext i8 %217 to i32
  store i32 %218, ptr %192, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #11
  br label %224

219:                                              ; preds = %198, %195, %191
  %220 = load ptr, ptr %6, align 4
  %221 = getelementptr inbounds %struct.serio, ptr %220, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.elantech_send_cmd, i32 noundef 4) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #11
  %222 = load ptr, ptr %6, align 4
  %223 = getelementptr inbounds %struct.serio, ptr %222, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %223, ptr noundef nonnull @.str.15) #12
  br label %224

224:                                              ; preds = %219, %201
  %225 = load i8, ptr %85, align 1
  br label %226

226:                                              ; preds = %224, %186
  %227 = phi i8 [ %225, %224 ], [ %189, %186 ]
  switch i8 %227, label %351 [
    i8 1, label %228
    i8 2, label %233
    i8 3, label %294
    i8 4, label %314
  ]

228:                                              ; preds = %226
  %229 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 8
  store i32 32, ptr %229, align 4
  %230 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 9
  store i32 32, ptr %230, align 4
  %231 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 10
  store i32 544, ptr %231, align 4
  %232 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 11
  store i32 352, ptr %232, align 4
  br label %351

233:                                              ; preds = %226
  %234 = load i32, ptr %30, align 4
  switch i32 %234, label %240 [
    i32 133120, label %235
    i32 133888, label %235
    i32 131120, label %235
  ]

235:                                              ; preds = %233, %233, %233
  %236 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 8
  store i32 0, ptr %236, align 4
  %237 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 9
  store i32 0, ptr %237, align 4
  %238 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 10
  store i32 1152, ptr %238, align 4
  %239 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 11
  store i32 768, ptr %239, align 4
  br label %351

240:                                              ; preds = %233
  %241 = add i32 %234, -133121
  %242 = icmp ult i32 %241, 255
  %243 = select i1 %242, i32 1, i32 2
  %244 = load ptr, ptr %54, align 4
  %245 = call i32 %244(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %4) #11
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %368

247:                                              ; preds = %240
  %248 = load i8, ptr %21, align 1
  %249 = and i8 %248, 16
  %250 = load i32, ptr %30, align 4
  %251 = and i32 %250, -65536
  %252 = icmp eq i32 %251, 1310720
  %253 = icmp ne i8 %249, 0
  %254 = select i1 %252, i1 %253, i1 false
  br i1 %254, label %255, label %276

255:                                              ; preds = %247
  %256 = load ptr, ptr %54, align 4
  %257 = call i32 %256(ptr noundef %0, i8 noundef zeroext 3, ptr noundef nonnull %4) #11
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %368

259:                                              ; preds = %255
  %260 = load i8, ptr %103, align 1
  %261 = zext i8 %260 to i32
  %262 = sub nsw i32 %261, %243
  %263 = load i8, ptr %21, align 1
  %264 = zext i8 %263 to i32
  %265 = mul nsw i32 %262, %264
  %266 = sdiv i32 %265, 2
  %267 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 10
  store i32 %266, ptr %267, align 4
  %268 = load i8, ptr %106, align 2
  %269 = zext i8 %268 to i32
  %270 = sub nsw i32 %269, %243
  %271 = load i8, ptr %26, align 1
  %272 = zext i8 %271 to i32
  %273 = mul nsw i32 %270, %272
  %274 = sdiv i32 %273, 2
  %275 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 11
  store i32 %274, ptr %275, align 4
  br label %351

276:                                              ; preds = %247
  switch i32 %250, label %283 [
    i32 262678, label %277
    i32 262681, label %280
    i32 262677, label %280
  ]

277:                                              ; preds = %276
  %278 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 10
  store i32 819, ptr %278, align 4
  %279 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 11
  store i32 405, ptr %279, align 4
  br label %351

280:                                              ; preds = %276, %276
  %281 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 10
  store i32 900, ptr %281, align 4
  %282 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 11
  store i32 500, ptr %282, align 4
  br label %351

283:                                              ; preds = %276
  %284 = load i8, ptr %103, align 1
  %285 = zext i8 %284 to i32
  %286 = sub nsw i32 %285, %243
  %287 = shl nsw i32 %286, 6
  %288 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 10
  store i32 %287, ptr %288, align 4
  %289 = load i8, ptr %106, align 2
  %290 = zext i8 %289 to i32
  %291 = sub nsw i32 %290, %243
  %292 = shl nsw i32 %291, 6
  %293 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 11
  store i32 %292, ptr %293, align 4
  br label %351

294:                                              ; preds = %226
  %295 = load ptr, ptr %54, align 4
  %296 = call i32 %295(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %4) #11
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %368

298:                                              ; preds = %294
  %299 = load i8, ptr %4, align 1
  %300 = and i8 %299, 15
  %301 = zext i8 %300 to i32
  %302 = shl nuw nsw i32 %301, 8
  %303 = load i8, ptr %21, align 1
  %304 = zext i8 %303 to i32
  %305 = or i32 %302, %304
  %306 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 10
  store i32 %305, ptr %306, align 4
  %307 = and i8 %299, -16
  %308 = zext i8 %307 to i32
  %309 = shl nuw nsw i32 %308, 4
  %310 = load i8, ptr %26, align 1
  %311 = zext i8 %310 to i32
  %312 = or i32 %309, %311
  %313 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 11
  store i32 %312, ptr %313, align 4
  br label %351

314:                                              ; preds = %226
  %315 = load ptr, ptr %54, align 4
  %316 = call i32 %315(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %4) #11
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %368

318:                                              ; preds = %314
  %319 = load i8, ptr %4, align 1
  %320 = and i8 %319, 15
  %321 = zext i8 %320 to i32
  %322 = shl nuw nsw i32 %321, 8
  %323 = load i8, ptr %21, align 1
  %324 = zext i8 %323 to i32
  %325 = or i32 %322, %324
  %326 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 10
  store i32 %325, ptr %326, align 4
  %327 = and i8 %319, -16
  %328 = zext i8 %327 to i32
  %329 = shl nuw nsw i32 %328, 4
  %330 = load i8, ptr %26, align 1
  %331 = zext i8 %330 to i32
  %332 = or i32 %329, %331
  %333 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 11
  store i32 %332, ptr %333, align 4
  %334 = load i8, ptr %103, align 1
  %335 = zext i8 %334 to i32
  %336 = icmp ult i8 %334, 2
  %337 = icmp ult i32 %325, %335
  %338 = select i1 %336, i1 true, i1 %337
  br i1 %338, label %368, label %339

339:                                              ; preds = %318
  %340 = add nsw i32 %335, -1
  %341 = udiv i32 %325, %340
  %342 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 16
  store i32 %341, ptr %342, align 4
  %343 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 14
  store i32 %335, ptr %343, align 4
  %344 = load i8, ptr %106, align 2
  %345 = zext i8 %344 to i32
  %346 = icmp ult i8 %344, 2
  %347 = icmp ult i32 %332, %345
  %348 = select i1 %346, i1 true, i1 %347
  br i1 %348, label %351, label %349

349:                                              ; preds = %339
  %350 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 15
  store i32 %345, ptr %350, align 4
  br label %351

351:                                              ; preds = %349, %339, %298, %283, %280, %277, %259, %235, %228, %226
  %352 = call i32 @dmi_check_system(ptr noundef nonnull @elantech_dmi_has_middle_button) #11
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %364

354:                                              ; preds = %351
  %355 = load i32, ptr %30, align 4
  %356 = and i32 %355, 991232
  %357 = icmp ne i32 %356, 991232
  %358 = and i32 %355, 255
  %359 = icmp eq i32 %358, 0
  %360 = or i1 %357, %359
  br i1 %360, label %364, label %361

361:                                              ; preds = %354
  %362 = and i32 %355, 4096
  %363 = icmp eq i32 %362, 0
  br label %364

364:                                              ; preds = %361, %354, %351
  %365 = phi i1 [ true, %351 ], [ false, %354 ], [ %363, %361 ]
  %366 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 24
  %367 = zext i1 %365 to i8
  store i8 %367, ptr %366, align 2
  br label %368

368:                                              ; preds = %364, %318, %314, %294, %255, %240, %183, %167, %139, %118, %99, %72, %12
  %369 = phi i32 [ -22, %12 ], [ -22, %72 ], [ -22, %99 ], [ -22, %118 ], [ -22, %139 ], [ -19, %167 ], [ -19, %183 ], [ 0, %364 ], [ -22, %294 ], [ -22, %314 ], [ -22, %318 ], [ -22, %240 ], [ -22, %255 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #11
  ret i32 %369
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elantech_create_smbus(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [11 x %struct.property_entry], align 8
  %5 = alloca %struct.i2c_board_info, align 4
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %4) #11
  %6 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(264) %6, i8 0, i32 256, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %5, ptr noundef nonnull align 4 dereferenceable(56) @__const.elantech_create_smbus.smbus_board, i32 56, i1 false)
  %7 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  store ptr @.str.22, ptr %4, align 8
  %10 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %4, i32 8
  store i8 1, ptr %11, align 8
  %12 = getelementptr inbounds i8, ptr %4, i32 12
  store i32 2, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %4, i32 16
  store i32 %9, ptr %13, align 8
  %14 = getelementptr inbounds i8, ptr %4, i32 20
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  %18 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 1
  store ptr @.str.23, ptr %18, align 8
  %19 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 1, i32 1
  store i32 4, ptr %19, align 4
  %20 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 1, i32 2
  store i8 1, ptr %20, align 8
  %21 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 1, i32 3
  store i32 2, ptr %21, align 4
  %22 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 1, i32 4
  store i32 %17, ptr %22, align 8
  %23 = getelementptr inbounds i8, ptr %18, i32 20
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 2
  store ptr @.str.24, ptr %26, align 8
  %27 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 2, i32 1
  store i32 4, ptr %27, align 4
  %28 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 2, i32 2
  store i8 1, ptr %28, align 8
  %29 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 2, i32 3
  store i32 2, ptr %29, align 4
  %30 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 2, i32 4
  store i32 %25, ptr %30, align 8
  %31 = getelementptr inbounds i8, ptr %26, i32 20
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 3
  store ptr @.str.25, ptr %34, align 8
  %35 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 3, i32 1
  store i32 4, ptr %35, align 4
  %36 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 3, i32 2
  store i8 1, ptr %36, align 8
  %37 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 3, i32 3
  store i32 2, ptr %37, align 4
  %38 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 3, i32 4
  store i32 %33, ptr %38, align 8
  %39 = getelementptr inbounds i8, ptr %34, i32 20
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 12
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %3
  %44 = udiv i32 %9, %41
  %45 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 4
  store ptr @.str.26, ptr %45, align 8
  %46 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 4, i32 1
  store i32 4, ptr %46, align 4
  %47 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 4, i32 2
  store i8 1, ptr %47, align 8
  %48 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 4, i32 3
  store i32 2, ptr %48, align 4
  %49 = getelementptr inbounds [11 x %struct.property_entry], ptr %4, i32 0, i32 4, i32 4
  store i32 %44, ptr %49, align 8
  %50 = getelementptr inbounds i8, ptr %45, i32 20
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %43, %3
  %52 = phi i32 [ 5, %43 ], [ 4, %3 ]
  %53 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 13
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = add nuw nsw i32 %52, 1
  %58 = udiv i32 %17, %54
  %59 = getelementptr [11 x %struct.property_entry], ptr %4, i32 0, i32 %52
  store ptr @.str.27, ptr %59, align 8
  %60 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 4, ptr %60, align 4
  %61 = getelementptr inbounds i8, ptr %59, i32 8
  store i8 1, ptr %61, align 8
  %62 = getelementptr inbounds i8, ptr %59, i32 12
  store i32 2, ptr %62, align 4
  %63 = getelementptr inbounds i8, ptr %59, i32 16
  store i32 %58, ptr %63, align 8
  %64 = getelementptr inbounds i8, ptr %59, i32 20
  store i32 0, ptr %64, align 4
  br label %65

65:                                               ; preds = %56, %51
  %66 = phi i32 [ %57, %56 ], [ %52, %51 ]
  %67 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 23
  %68 = load i8, ptr %67, align 1, !range !9
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = add nuw nsw i32 %66, 1
  %72 = getelementptr [11 x %struct.property_entry], ptr %4, i32 0, i32 %66
  store ptr @.str.28, ptr %72, align 8
  %73 = getelementptr inbounds i8, ptr %72, i32 4
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds i8, ptr %72, i32 8
  store i8 1, ptr %74, align 8
  %75 = getelementptr inbounds i8, ptr %72, i32 9
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(15) %75, i8 0, i32 15, i1 false)
  br label %76

76:                                               ; preds = %70, %65
  %77 = phi i32 [ %71, %70 ], [ %66, %65 ]
  %78 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 24
  %79 = load i8, ptr %78, align 2, !range !9
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = add nuw nsw i32 %77, 1
  %83 = getelementptr [11 x %struct.property_entry], ptr %4, i32 0, i32 %77
  store ptr @.str.29, ptr %83, align 8
  %84 = getelementptr inbounds i8, ptr %83, i32 4
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds i8, ptr %83, i32 8
  store i8 1, ptr %85, align 8
  %86 = getelementptr inbounds i8, ptr %83, i32 9
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(15) %86, i8 0, i32 15, i1 false)
  br label %87

87:                                               ; preds = %81, %76
  %88 = phi i32 [ %82, %81 ], [ %77, %76 ]
  %89 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 14
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %87
  %93 = add nuw nsw i32 %88, 1
  %94 = getelementptr [11 x %struct.property_entry], ptr %4, i32 0, i32 %88
  store ptr @.str.30, ptr %94, align 8
  %95 = getelementptr inbounds i8, ptr %94, i32 4
  store i32 4, ptr %95, align 4
  %96 = getelementptr inbounds i8, ptr %94, i32 8
  store i8 1, ptr %96, align 8
  %97 = getelementptr inbounds i8, ptr %94, i32 12
  store i32 2, ptr %97, align 4
  %98 = getelementptr inbounds i8, ptr %94, i32 16
  store i32 %90, ptr %98, align 8
  %99 = getelementptr inbounds i8, ptr %94, i32 20
  store i32 0, ptr %99, align 4
  br label %100

100:                                              ; preds = %92, %87
  %101 = phi i32 [ %93, %92 ], [ %88, %87 ]
  %102 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 15
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = add nuw nsw i32 %101, 1
  %107 = getelementptr [11 x %struct.property_entry], ptr %4, i32 0, i32 %101
  store ptr @.str.31, ptr %107, align 8
  %108 = getelementptr inbounds i8, ptr %107, i32 4
  store i32 4, ptr %108, align 4
  %109 = getelementptr inbounds i8, ptr %107, i32 8
  store i8 1, ptr %109, align 8
  %110 = getelementptr inbounds i8, ptr %107, i32 12
  store i32 2, ptr %110, align 4
  %111 = getelementptr inbounds i8, ptr %107, i32 16
  store i32 %103, ptr %111, align 8
  %112 = getelementptr inbounds i8, ptr %107, i32 20
  store i32 0, ptr %112, align 4
  br label %113

113:                                              ; preds = %105, %100
  %114 = phi i32 [ %106, %105 ], [ %101, %100 ]
  %115 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 5
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 4096
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = getelementptr [11 x %struct.property_entry], ptr %4, i32 0, i32 %114
  store ptr @.str.32, ptr %120, align 8
  %121 = getelementptr inbounds i8, ptr %120, i32 4
  store i32 0, ptr %121, align 4
  %122 = getelementptr inbounds i8, ptr %120, i32 8
  store i8 1, ptr %122, align 8
  %123 = getelementptr inbounds i8, ptr %120, i32 9
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(15) %123, i8 0, i32 15, i1 false)
  br label %124

124:                                              ; preds = %119, %113
  %125 = call ptr @fwnode_create_software_node(ptr noundef nonnull %4, ptr noundef null) #11
  %126 = getelementptr inbounds %struct.i2c_board_info, ptr %5, i32 0, i32 6
  store ptr %125, ptr %126, align 4
  %127 = icmp ugt ptr %125, inttoptr (i32 -4096 to ptr)
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = ptrtoint ptr %125 to i32
  br label %132

130:                                              ; preds = %124
  %131 = call i32 @psmouse_smbus_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext %2) #11
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %4) #11
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elantech_init_ps2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.elantech_device_info, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i32 76, i1 false), !annotation !8
  %3 = tail call i32 @psmouse_reset(ptr noundef %0) #11
  %4 = call fastcc i32 @elantech_query_info(ptr noundef %0, ptr noundef nonnull %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call fastcc i32 @elantech_setup_ps2(ptr noundef %0, ptr noundef nonnull %2)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %4, %1 ], [ %7, %6 ]
  %11 = call i32 @psmouse_reset(ptr noundef %0) #11
  br label %12

12:                                               ; preds = %9, %6
  %13 = phi i32 [ %10, %9 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %2) #11
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elantech_setup_ps2(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 436) #13
  store ptr %4, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %213, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.elantech_data, ptr %4, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(76) %7, ptr noundef align 4 dereferenceable(76) %1, i32 76, i1 false)
  %8 = getelementptr inbounds %struct.elantech_data, ptr %4, i32 0, i32 16
  store i8 1, ptr %8, align 4
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ 1, %6 ], [ %17, %9 ]
  %11 = add nuw i32 %10, 2147483647
  %12 = and i32 %11, %10
  %13 = getelementptr %struct.elantech_data, ptr %4, i32 0, i32 16, i32 %12
  %14 = load i8, ptr %13, align 2
  %15 = xor i8 %14, 1
  %16 = getelementptr %struct.elantech_data, ptr %4, i32 0, i32 16, i32 %10
  store i8 %15, ptr %16, align 1
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 256
  br i1 %18, label %19, label %9

19:                                               ; preds = %9
  %20 = tail call fastcc i32 @elantech_set_absolute_mode(ptr noundef %0)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.serio, ptr %24, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.33) #12
  br label %211

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 3677975
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.elantech_data, ptr %4, i32 0, i32 18
  store ptr %32, ptr %33, align 8
  store ptr @elantech_set_rate_restore_reg_07, ptr %31, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %0, align 4
  %38 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17
  %39 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 10
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 11
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 16
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = or i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -15
  %55 = or i32 %54, 10
  store i32 %55, ptr %52, align 4
  %56 = getelementptr %struct.input_dev, ptr %36, i32 0, i32 6, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 65536
  store i32 %58, ptr %56, align 4
  %59 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 24
  %60 = load i8, ptr %59, align 2, !range !9
  %61 = icmp eq i8 %60, 0
  %62 = or i32 %57, 327680
  %63 = select i1 %61, i32 %58, i32 %62
  %64 = or i32 %63, 131072
  store i32 %64, ptr %56, align 4
  %65 = getelementptr %struct.input_dev, ptr %36, i32 0, i32 6, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, 25632
  store i32 %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 3
  %69 = load i8, ptr %68, align 1
  switch i8 %69, label %127 [
    i8 1, label %70
    i8 2, label %81
    i8 3, label %86
    i8 4, label %107
  ]

70:                                               ; preds = %34
  %71 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, 131072
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8, ptr %38, align 4
  %76 = and i8 %75, 4
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = or i32 %63, 6422528
  store i32 %79, ptr %56, align 4
  br label %80

80:                                               ; preds = %78, %74, %70
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 0, i32 noundef %40, i32 noundef %44, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 1, i32 noundef %42, i32 noundef %46, i32 noundef 0, i32 noundef 0) #11
  br label %127

81:                                               ; preds = %34
  %82 = or i32 %66, 58400
  store i32 %82, ptr %65, align 4
  %83 = or i32 %50, 9
  store i32 %83, ptr %49, align 4
  %84 = load i8, ptr %68, align 1
  %85 = icmp eq i8 %84, 3
  br i1 %85, label %86, label %100

86:                                               ; preds = %81, %34
  %87 = load ptr, ptr %0, align 4
  %88 = getelementptr inbounds %struct.elantech_data, ptr %87, i32 0, i32 17, i32 5
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, 4096
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %35, align 4
  %94 = getelementptr inbounds %struct.input_dev, ptr %93, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = or i32 %95, 4
  store i32 %96, ptr %94, align 4
  %97 = getelementptr %struct.input_dev, ptr %93, i32 0, i32 6, i32 8
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, -131073
  store i32 %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %92, %86, %81
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 0, i32 noundef %40, i32 noundef %44, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 1, i32 noundef %42, i32 noundef %46, i32 noundef 0, i32 noundef 0) #11
  %101 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 20
  %102 = load i8, ptr %101, align 2, !range !9
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #11
  br label %105

105:                                              ; preds = %104, %100
  %106 = tail call i32 @input_mt_init_slots(ptr noundef %36, i32 noundef 2, i32 noundef 16) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 53, i32 noundef %40, i32 noundef %44, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 54, i32 noundef %42, i32 noundef %46, i32 noundef 0, i32 noundef 0) #11
  br label %127

107:                                              ; preds = %34
  %108 = load ptr, ptr %0, align 4
  %109 = getelementptr inbounds %struct.elantech_data, ptr %108, i32 0, i32 17, i32 5
  %110 = load i32, ptr %109, align 4
  %111 = and i32 %110, 4096
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %107
  %114 = load ptr, ptr %35, align 4
  %115 = getelementptr inbounds %struct.input_dev, ptr %114, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %116, 4
  store i32 %117, ptr %115, align 4
  %118 = getelementptr %struct.input_dev, ptr %114, i32 0, i32 6, i32 8
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, -131073
  store i32 %120, ptr %118, align 4
  %121 = load i32, ptr %65, align 4
  br label %122

122:                                              ; preds = %113, %107
  %123 = phi i32 [ %67, %107 ], [ %121, %113 ]
  %124 = or i32 %123, 32768
  store i32 %124, ptr %65, align 4
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 0, i32 noundef %40, i32 noundef %44, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 1, i32 noundef %42, i32 noundef %46, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #11
  %125 = tail call i32 @input_mt_init_slots(ptr noundef %36, i32 noundef 5, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 53, i32 noundef %40, i32 noundef %44, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 54, i32 noundef %42, i32 noundef %46, i32 noundef 0, i32 noundef 0) #11
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #11
  %126 = mul i32 %48, 15
  tail call void @input_set_abs_params(ptr noundef %36, i32 noundef 48, i32 noundef 0, i32 noundef %126, i32 noundef 0, i32 noundef 0) #11
  br label %127

127:                                              ; preds = %122, %105, %80, %34
  %128 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 12
  %129 = load i32, ptr %128, align 4
  tail call void @input_alloc_absinfo(ptr noundef %36) #11
  %130 = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 26
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = getelementptr %struct.input_absinfo, ptr %131, i32 0, i32 5
  store i32 %129, ptr %134, align 4
  br label %135

135:                                              ; preds = %133, %127
  %136 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 17, i32 13
  %137 = load i32, ptr %136, align 4
  tail call void @input_alloc_absinfo(ptr noundef %36) #11
  %138 = load ptr, ptr %130, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  %141 = getelementptr %struct.input_absinfo, ptr %138, i32 1, i32 5
  store i32 %137, ptr %141, align 4
  br label %142

142:                                              ; preds = %140, %135
  %143 = load i8, ptr %68, align 1
  %144 = icmp ugt i8 %143, 1
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load i32, ptr %128, align 4
  tail call void @input_alloc_absinfo(ptr noundef %36) #11
  %147 = load ptr, ptr %130, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = getelementptr %struct.input_absinfo, ptr %147, i32 53, i32 5
  store i32 %146, ptr %150, align 4
  br label %151

151:                                              ; preds = %149, %145
  %152 = load i32, ptr %136, align 4
  tail call void @input_alloc_absinfo(ptr noundef %36) #11
  %153 = load ptr, ptr %130, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = getelementptr %struct.input_absinfo, ptr %153, i32 54, i32 5
  store i32 %152, ptr %156, align 4
  br label %157

157:                                              ; preds = %155, %151, %142
  %158 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 13
  store i32 %46, ptr %158, align 4
  %159 = getelementptr inbounds %struct.elantech_data, ptr %37, i32 0, i32 14
  store i32 %48, ptr %159, align 4
  %160 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.serio, ptr %161, i32 0, i32 18
  %163 = tail call i32 @sysfs_create_group(ptr noundef %162, ptr noundef nonnull @elantech_attr_group) #11
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %157
  %166 = load ptr, ptr %160, align 4
  %167 = getelementptr inbounds %struct.serio, ptr %166, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.35, i32 noundef %163) #12
  br label %211

168:                                              ; preds = %157
  %169 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 23
  %170 = load i8, ptr %169, align 1, !range !9
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %197, label %172

172:                                              ; preds = %168
  %173 = tail call ptr @input_allocate_device() #11
  %174 = icmp eq ptr %173, null
  br i1 %174, label %207, label %175

175:                                              ; preds = %172
  store ptr %173, ptr %4, align 8
  %176 = getelementptr inbounds %struct.elantech_data, ptr %4, i32 0, i32 1
  %177 = load ptr, ptr %160, align 4
  %178 = getelementptr inbounds %struct.serio, ptr %177, i32 0, i32 2
  %179 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %176, i32 noundef 32, ptr noundef nonnull @.str.36, ptr noundef %178)
  %180 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 1
  store ptr %176, ptr %180, align 4
  store ptr @.str.37, ptr %173, align 8
  %181 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 3
  store i16 17, ptr %181, align 4
  %182 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 3, i32 1
  store i16 2, ptr %182, align 2
  %183 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 3, i32 2
  store i16 14, ptr %183, align 4
  %184 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 3, i32 3
  store i16 0, ptr %184, align 2
  %185 = load ptr, ptr %160, align 4
  %186 = getelementptr inbounds %struct.serio, ptr %185, i32 0, i32 18
  %187 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 40, i32 1
  store ptr %186, ptr %187, align 4
  %188 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 5
  store i32 6, ptr %188, align 8
  %189 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 7
  store i32 3, ptr %189, align 4
  %190 = getelementptr %struct.input_dev, ptr %173, i32 0, i32 6, i32 8
  store i32 458752, ptr %190, align 4
  %191 = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 4
  %192 = load i32, ptr %191, align 4
  %193 = or i32 %192, 33
  store i32 %193, ptr %191, align 4
  %194 = load ptr, ptr %4, align 8
  %195 = tail call i32 @input_register_device(ptr noundef %194) #11
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %175, %168
  %198 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @elantech_process_byte, ptr %198, align 4
  %199 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  store ptr @elantech_disconnect, ptr %199, align 4
  %200 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  store ptr @elantech_reconnect, ptr %200, align 4
  %201 = getelementptr inbounds %struct.elantech_device_info, ptr %1, i32 0, i32 3
  %202 = load i8, ptr %201, align 1
  %203 = icmp ugt i8 %202, 1
  %204 = select i1 %203, i8 6, i8 4
  %205 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 %204, ptr %205, align 2
  br label %213

206:                                              ; preds = %175
  tail call void @input_free_device(ptr noundef nonnull %173) #11
  br label %207

207:                                              ; preds = %206, %172
  %208 = phi i32 [ %195, %206 ], [ -12, %172 ]
  %209 = load ptr, ptr %160, align 4
  %210 = getelementptr inbounds %struct.serio, ptr %209, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %210, ptr noundef nonnull @elantech_attr_group) #11
  br label %211

211:                                              ; preds = %207, %165, %22
  %212 = phi i32 [ -22, %22 ], [ %163, %165 ], [ %208, %207 ]
  tail call void @kfree(ptr noundef nonnull %4) #11
  br label %213

213:                                              ; preds = %211, %197, %2
  %214 = phi i32 [ %212, %211 ], [ 0, %197 ], [ -12, %2 ]
  ret i32 %214
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @elantech_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.elantech_device_info, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %2, i8 0, i32 76, i1 false), !annotation !8
  %3 = tail call i32 @psmouse_reset(ptr noundef %0) #11
  %4 = call fastcc i32 @elantech_query_info(ptr noundef %0, ptr noundef nonnull %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %48

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.elantech_device_info, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 991232
  %10 = icmp ne i32 %9, 991232
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 0
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.elantech_device_info, ptr %2, i32 0, i32 17
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -2
  %18 = and i32 %17, -3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %14, %6
  %21 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.2) #12
  %24 = load i32, ptr @elantech_smbus, align 4
  switch i32 %24, label %34 [
    i32 0, label %44
    i32 -1, label %25
  ]

25:                                               ; preds = %20
  %26 = load i32, ptr %7, align 4
  %27 = and i32 %26, 991232
  %28 = icmp ne i32 %27, 991232
  %29 = and i32 %26, 255
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %28, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @i2c_blacklist_pnp_ids) #11
  br i1 %33, label %44, label %34

34:                                               ; preds = %32, %20
  %35 = load ptr, ptr %21, align 4
  %36 = getelementptr inbounds %struct.serio, ptr %35, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.63) #12
  %37 = call fastcc i32 @elantech_create_smbus(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true) #11
  switch i32 %37, label %41 [
    i32 0, label %51
    i32 -11, label %38
  ]

38:                                               ; preds = %34
  %39 = load ptr, ptr %21, align 4
  %40 = getelementptr inbounds %struct.serio, ptr %39, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.64) #12
  br label %44

41:                                               ; preds = %34
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.65) #12
  br label %44

44:                                               ; preds = %41, %38, %32, %25, %20, %14
  %45 = call fastcc i32 @elantech_setup_ps2(ptr noundef %0, ptr noundef nonnull %2)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  call void @psmouse_smbus_cleanup(ptr noundef %0) #11
  br label %48

48:                                               ; preds = %47, %1
  %49 = phi i32 [ %4, %1 ], [ %45, %47 ]
  %50 = call i32 @psmouse_reset(ptr noundef %0) #11
  br label %51

51:                                               ; preds = %48, %44, %34
  %52 = phi i32 [ %49, %48 ], [ 14, %44 ], [ 22, %34 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %2) #11
  ret i32 %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_smbus_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sliced_command(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elantech_change_report_id(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @__const.elantech_change_report_id.param, i32 3, i1 false)
  %3 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 0) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 7) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248) #11
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 16) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248) #11
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %2, i32 1
  %25 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 3) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 230) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27, %23, %20, %17, %14, %11, %8, %5, %1
  %31 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.17, i32 noundef 7, i32 noundef 16, i32 noundef 3) #12
  br label %59

34:                                               ; preds = %27
  %35 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 0) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248) #11
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 7) #11
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1001) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %46, %43, %40, %37, %34
  %50 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.serio, ptr %51, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.21, i32 noundef 7) #12
  br label %59

53:                                               ; preds = %46
  %54 = load i8, ptr %2, align 1
  %55 = icmp ne i8 %54, 16
  %56 = load i8, ptr %24, align 1
  %57 = icmp ne i8 %56, 3
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53, %49, %30
  %60 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.serio, ptr %61, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.16) #12
  br label %63

63:                                               ; preds = %59, %53
  %64 = phi i32 [ -5, %59 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #11
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elantech_send_cmd(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %5 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 248) #11
  %6 = icmp eq i32 %5, 0
  %7 = zext i8 %1 to i32
  br i1 %6, label %8, label %14

8:                                                ; preds = %3
  %9 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef %7) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef %2, i32 noundef 1001) #11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %8, %3
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.elantech_send_cmd, i32 noundef %7) #12
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ -1, %14 ], [ 0, %11 ]
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.elantech_data, ptr %5, i32 0, i32 17, i32 2
  %7 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef %1, i32 noundef %2) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  %10 = load i8, ptr %6, align 2
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %14, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef 2) #12
  br label %15

15:                                               ; preds = %12, %9
  tail call void @msleep(i32 noundef 500) #11
  %16 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef %1, i32 noundef %2) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %6, align 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %23, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef 1) #12
  br label %24

24:                                               ; preds = %21, %18
  tail call void @msleep(i32 noundef 500) #11
  %25 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef %1, i32 noundef %2) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i8, ptr %6, align 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %4, align 4
  %32 = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %32, ptr noundef nonnull @.str.19, i32 noundef %2, i32 noundef 0) #12
  br label %33

33:                                               ; preds = %30, %27
  tail call void @msleep(i32 noundef 500) #11
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr inbounds %struct.serio, ptr %34, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.20, i32 noundef %2) #12
  br label %36

36:                                               ; preds = %33, %24, %15, %3
  %37 = phi i32 [ %25, %33 ], [ 0, %24 ], [ 0, %15 ], [ 0, %3 ]
  ret i32 %37
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_create_software_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_smbus_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elantech_set_absolute_mode(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 17, i32 3
  %5 = load i8, ptr %4, align 1
  switch i8 %5, label %37 [
    i8 1, label %6
    i8 2, label %15
    i8 3, label %29
    i8 4, label %92
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 3
  store i8 22, ptr %7, align 1
  %8 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 4
  store i8 -113, ptr %8, align 2
  %9 = tail call fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 22)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %100

11:                                               ; preds = %6
  %12 = load i8, ptr %8, align 2
  %13 = tail call fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext 17, i8 noundef zeroext %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %37, label %100

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 3
  store i8 84, ptr %16, align 1
  %17 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 4
  store i8 -120, ptr %17, align 2
  %18 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 6
  store i8 96, ptr %18, align 4
  %19 = tail call fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext 84)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %100

21:                                               ; preds = %15
  %22 = load i8, ptr %17, align 2
  %23 = tail call fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext 17, i8 noundef zeroext %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %100

25:                                               ; preds = %21
  %26 = load i8, ptr %18, align 4
  %27 = tail call fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext 33, i8 noundef zeroext %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %100

29:                                               ; preds = %1
  %30 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 17, i32 22
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %32, i8 1, i8 11
  %34 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 3
  store i8 %33, ptr %34, align 1
  %35 = tail call fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext 16, i8 noundef zeroext %33)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %100

37:                                               ; preds = %29, %25, %11, %1
  %38 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 17, i32 2
  %39 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %40 = call fastcc i32 @elantech_read_reg(ptr noundef %0, i8 noundef zeroext 16, ptr noundef nonnull %2)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %85, label %42

42:                                               ; preds = %37
  %43 = load i8, ptr %38, align 2
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %39, align 4
  %47 = getelementptr inbounds %struct.serio, ptr %46, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %47, ptr noundef nonnull @.str.38, i32 noundef 4) #12
  br label %48

48:                                               ; preds = %45, %42
  tail call void @msleep(i32 noundef 2000) #11
  %49 = call fastcc i32 @elantech_read_reg(ptr noundef %0, i8 noundef zeroext 16, ptr noundef nonnull %2)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %85, label %51

51:                                               ; preds = %48
  %52 = load i8, ptr %38, align 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %39, align 4
  %56 = getelementptr inbounds %struct.serio, ptr %55, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %56, ptr noundef nonnull @.str.38, i32 noundef 3) #12
  br label %57

57:                                               ; preds = %54, %51
  tail call void @msleep(i32 noundef 2000) #11
  %58 = call fastcc i32 @elantech_read_reg(ptr noundef %0, i8 noundef zeroext 16, ptr noundef nonnull %2)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %57
  %61 = load i8, ptr %38, align 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %39, align 4
  %65 = getelementptr inbounds %struct.serio, ptr %64, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %65, ptr noundef nonnull @.str.38, i32 noundef 2) #12
  br label %66

66:                                               ; preds = %63, %60
  tail call void @msleep(i32 noundef 2000) #11
  %67 = call fastcc i32 @elantech_read_reg(ptr noundef %0, i8 noundef zeroext 16, ptr noundef nonnull %2)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = load i8, ptr %38, align 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %39, align 4
  %74 = getelementptr inbounds %struct.serio, ptr %73, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %74, ptr noundef nonnull @.str.38, i32 noundef 1) #12
  br label %75

75:                                               ; preds = %72, %69
  tail call void @msleep(i32 noundef 2000) #11
  %76 = call fastcc i32 @elantech_read_reg(ptr noundef %0, i8 noundef zeroext 16, ptr noundef nonnull %2)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %75
  %79 = load i8, ptr %38, align 2
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %39, align 4
  %83 = getelementptr inbounds %struct.serio, ptr %82, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %83, ptr noundef nonnull @.str.38, i32 noundef 0) #12
  br label %84

84:                                               ; preds = %81, %78
  tail call void @msleep(i32 noundef 2000) #11
  br label %96

85:                                               ; preds = %75, %66, %57, %48, %37
  %86 = load i8, ptr %4, align 1
  %87 = icmp eq i8 %86, 1
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i8, ptr %2, align 1
  %90 = and i8 %89, 4
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %96, label %104

92:                                               ; preds = %1
  %93 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 2
  store i8 1, ptr %93, align 4
  %94 = tail call fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext 7, i8 noundef zeroext 1)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %100

96:                                               ; preds = %88, %84
  %97 = phi ptr [ @.str.39, %84 ], [ @.str.40, %88 ]
  %98 = load ptr, ptr %39, align 4
  %99 = getelementptr inbounds %struct.serio, ptr %98, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull %97) #12
  br label %100

100:                                              ; preds = %96, %92, %29, %25, %21, %15, %11, %6
  %101 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.serio, ptr %102, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.41) #12
  br label %104

104:                                              ; preds = %100, %92, %88, %85
  %105 = phi i32 [ -1, %100 ], [ 0, %92 ], [ 0, %85 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @elantech_set_rate_restore_reg_07(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0, i32 noundef %1) #11
  %6 = getelementptr inbounds %struct.elantech_data, ptr %3, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = tail call fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext 7, i8 noundef zeroext %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.44) #12
  br label %14

14:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elantech_process_byte(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %3 = load i8, ptr %2, align 1
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  %5 = load i8, ptr %4, align 2
  %6 = icmp ult i8 %3, %5
  br i1 %6, label %702, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.elantech_data, ptr %8, i32 0, i32 17, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = icmp ugt i8 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 18
  %16 = zext i8 %5 to i32
  %17 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %15, ptr noundef nonnull @.str.59, i32 noundef %16, ptr noundef %17) #12
  br label %18

18:                                               ; preds = %12, %7
  %19 = getelementptr inbounds %struct.elantech_data, ptr %8, i32 0, i32 17, i32 3
  %20 = load i8, ptr %19, align 1
  switch i8 %20, label %702 [
    i8 1, label %21
    i8 2, label %152
    i8 3, label %328
    i8 4, label %496
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.elantech_data, ptr %8, i32 0, i32 17, i32 18
  %23 = load i8, ptr %22, align 4, !range !9
  %24 = icmp eq i8 %23, 0
  %25 = load ptr, ptr %0, align 4
  br i1 %24, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.elantech_data, ptr %25, i32 0, i32 17, i32 5
  %28 = load i32, ptr %27, align 4
  br label %63

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %31 = getelementptr inbounds %struct.elantech_data, ptr %25, i32 0, i32 17, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %32, 131072
  %34 = load i8, ptr %30, align 1
  %35 = select i1 %33, i8 5, i8 4
  %36 = lshr i8 %34, %35
  %37 = and i8 %36, 1
  %38 = lshr i8 %34, 2
  %39 = and i8 %38, 1
  %40 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr %struct.elantech_data, ptr %25, i32 0, i32 16, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, %37
  br i1 %45, label %46, label %702

46:                                               ; preds = %29
  %47 = select i1 %33, i8 4, i8 5
  %48 = lshr i8 %34, %47
  %49 = and i8 %48, 1
  %50 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr %struct.elantech_data, ptr %25, i32 0, i32 16, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, %49
  br i1 %55, label %56, label %702

56:                                               ; preds = %46
  %57 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = getelementptr %struct.elantech_data, ptr %25, i32 0, i32 16, i32 %59
  %61 = load i8, ptr %60, align 1
  %62 = icmp eq i8 %61, %39
  br i1 %62, label %63, label %702

63:                                               ; preds = %56, %26
  %64 = phi i32 [ %28, %26 ], [ %32, %56 ]
  %65 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %68 = getelementptr inbounds %struct.elantech_data, ptr %25, i32 0, i32 17
  %69 = getelementptr inbounds %struct.elantech_data, ptr %25, i32 0, i32 17, i32 5
  %70 = icmp ult i32 %64, 131072
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = lshr i32 %74, 7
  %76 = lshr i32 %74, 4
  %77 = and i32 %76, 3
  %78 = add nuw nsw i32 %77, %75
  br label %83

79:                                               ; preds = %63
  %80 = load i8, ptr %67, align 1
  %81 = lshr i8 %80, 6
  %82 = zext i8 %81 to i32
  br label %83

83:                                               ; preds = %79, %71
  %84 = phi i32 [ %78, %71 ], [ %82, %79 ]
  %85 = getelementptr inbounds %struct.elantech_data, ptr %25, i32 0, i32 17, i32 19
  %86 = load i8, ptr %85, align 1, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %105, label %88

88:                                               ; preds = %83
  %89 = icmp eq i32 %84, 1
  %90 = getelementptr inbounds %struct.elantech_data, ptr %25, i32 0, i32 12
  br i1 %89, label %92, label %91

91:                                               ; preds = %88
  store i32 0, ptr %90, align 4
  br label %105

92:                                               ; preds = %88
  %93 = load i32, ptr %90, align 4
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 330, i32 noundef 1) #11
  br label %108

96:                                               ; preds = %92
  %97 = add nuw nsw i32 %93, 1
  store i32 %97, ptr %90, align 4
  %98 = getelementptr inbounds %struct.elantech_data, ptr %25, i32 0, i32 17, i32 2
  %99 = load i8, ptr %98, align 2
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %702, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.serio, ptr %103, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %104, ptr noundef nonnull @.str.60) #12
  br label %702

105:                                              ; preds = %91, %83
  %106 = icmp ne i32 %84, 0
  %107 = zext i1 %106 to i32
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 330, i32 noundef %107) #11
  br i1 %106, label %108, label %129

108:                                              ; preds = %105, %95
  %109 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %110 = load i8, ptr %109, align 1
  %111 = and i8 %110, 12
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 6
  %114 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %115 = load i8, ptr %114, align 1
  %116 = zext i8 %115 to i32
  %117 = or i32 %113, %116
  tail call void @input_event(ptr noundef %66, i32 noundef 3, i32 noundef 0, i32 noundef %117) #11
  %118 = getelementptr inbounds %struct.elantech_data, ptr %25, i32 0, i32 13
  %119 = load i32, ptr %118, align 4
  %120 = load i8, ptr %109, align 1
  %121 = and i8 %120, 3
  %122 = zext i8 %121 to i32
  %123 = mul nsw i32 %122, -256
  %124 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i32
  %127 = sub i32 %119, %126
  %128 = add i32 %127, %123
  tail call void @input_event(ptr noundef %66, i32 noundef 3, i32 noundef 1, i32 noundef %128) #11
  br label %129

129:                                              ; preds = %108, %105
  %130 = icmp eq i32 %84, 1
  %131 = zext i1 %130 to i32
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 325, i32 noundef %131) #11
  %132 = icmp eq i32 %84, 2
  %133 = zext i1 %132 to i32
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 333, i32 noundef %133) #11
  %134 = icmp eq i32 %84, 3
  %135 = zext i1 %134 to i32
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 334, i32 noundef %135) #11
  %136 = load i8, ptr %67, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %66, i8 noundef zeroext %136) #11
  %137 = load i32, ptr %69, align 4
  %138 = icmp ult i32 %137, 131072
  br i1 %138, label %139, label %151

139:                                              ; preds = %129
  %140 = load i8, ptr %68, align 4
  %141 = and i8 %140, 4
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = load i8, ptr %67, align 1
  %145 = lshr i8 %144, 6
  %146 = and i8 %145, 1
  %147 = zext i8 %146 to i32
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 277, i32 noundef %147) #11
  %148 = load i8, ptr %67, align 1
  %149 = lshr i8 %148, 7
  %150 = zext i8 %149 to i32
  tail call void @input_event(ptr noundef %66, i32 noundef 1, i32 noundef 278, i32 noundef %150) #11
  br label %151

151:                                              ; preds = %143, %139, %129
  tail call void @input_event(ptr noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %702

152:                                              ; preds = %18
  %153 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %154 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %153, ptr noundef nonnull dereferenceable(6) @elantech_debounce_check_v2.debounce_packet, i32 6) #11
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %702, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.elantech_data, ptr %8, i32 0, i32 17, i32 18
  %158 = load i8, ptr %157, align 4, !range !9
  %159 = icmp eq i8 %158, 0
  %160 = load ptr, ptr %0, align 4
  br i1 %159, label %161, label %163

161:                                              ; preds = %156
  %162 = load i8, ptr %153, align 1
  br label %204

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.elantech_data, ptr %160, i32 0, i32 17, i32 20
  %165 = load i8, ptr %164, align 2, !range !9
  %166 = icmp eq i8 %165, 0
  %167 = load i8, ptr %153, align 1
  br i1 %166, label %176, label %168

168:                                              ; preds = %163
  %169 = and i8 %167, 12
  %170 = icmp eq i8 %169, 4
  br i1 %170, label %171, label %702

171:                                              ; preds = %168
  %172 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %173 = load i8, ptr %172, align 1
  %174 = and i8 %173, 15
  %175 = icmp eq i8 %174, 2
  br i1 %175, label %204, label %702

176:                                              ; preds = %163
  %177 = zext i8 %167 to i32
  %178 = and i32 %177, 192
  %179 = icmp eq i32 %178, 128
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = and i32 %177, 12
  %182 = icmp eq i32 %181, 12
  br i1 %182, label %183, label %702

183:                                              ; preds = %180
  %184 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %185 = load i8, ptr %184, align 1
  %186 = and i8 %185, 14
  %187 = icmp eq i8 %186, 8
  br i1 %187, label %204, label %702

188:                                              ; preds = %176
  %189 = and i32 %177, 60
  %190 = icmp eq i32 %189, 60
  br i1 %190, label %191, label %702

191:                                              ; preds = %188
  %192 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %193 = load i8, ptr %192, align 1
  %194 = icmp ult i8 %193, 16
  br i1 %194, label %195, label %702

195:                                              ; preds = %191
  %196 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %197 = load i8, ptr %196, align 1
  %198 = and i8 %197, 62
  %199 = icmp eq i8 %198, 56
  br i1 %199, label %200, label %702

200:                                              ; preds = %195
  %201 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %202 = load i8, ptr %201, align 1
  %203 = icmp ult i8 %202, 16
  br i1 %203, label %204, label %702

204:                                              ; preds = %200, %183, %171, %161
  %205 = phi i8 [ %162, %161 ], [ %167, %200 ], [ %167, %171 ], [ %167, %183 ]
  %206 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = zext i8 %205 to i32
  %209 = lshr i32 %208, 6
  switch i32 %209, label %295 [
    i32 3, label %213
    i32 1, label %210
    i32 2, label %251
  ]

210:                                              ; preds = %204
  %211 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %212 = load i8, ptr %211, align 1
  br label %218

213:                                              ; preds = %204
  %214 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %215 = load i8, ptr %214, align 1
  %216 = icmp sgt i8 %215, -1
  %217 = select i1 %216, i32 3, i32 4
  br label %218

218:                                              ; preds = %213, %210
  %219 = phi i8 [ %212, %210 ], [ %215, %213 ]
  %220 = phi i32 [ 1, %210 ], [ %217, %213 ]
  %221 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %222 = load i8, ptr %221, align 1
  %223 = zext i8 %222 to i32
  %224 = shl nuw nsw i32 %223, 8
  %225 = and i32 %224, 3840
  %226 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %227 = load i8, ptr %226, align 1
  %228 = zext i8 %227 to i32
  %229 = or i32 %225, %228
  %230 = getelementptr inbounds %struct.elantech_data, ptr %160, i32 0, i32 13
  %231 = load i32, ptr %230, align 4
  %232 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %233 = load i8, ptr %232, align 1
  %234 = zext i8 %233 to i32
  %235 = shl nuw nsw i32 %234, 8
  %236 = and i32 %235, 3840
  %237 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %238 to i32
  %240 = or i32 %236, %239
  %241 = sub i32 %231, %240
  %242 = and i32 %223, 240
  %243 = lshr i32 %234, 4
  %244 = or i32 %243, %242
  %245 = lshr i8 %205, 2
  %246 = and i8 %245, 12
  %247 = lshr i8 %219, 4
  %248 = and i8 %247, 3
  %249 = or i8 %248, %246
  %250 = zext i8 %249 to i32
  br label %287

251:                                              ; preds = %204
  %252 = shl nuw nsw i32 %208, 4
  %253 = and i32 %252, 256
  %254 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %255 = load i8, ptr %254, align 1
  %256 = zext i8 %255 to i32
  %257 = or i32 %253, %256
  %258 = shl nuw nsw i32 %257, 2
  %259 = getelementptr inbounds %struct.elantech_data, ptr %160, i32 0, i32 13
  %260 = load i32, ptr %259, align 4
  %261 = shl nuw nsw i32 %208, 3
  %262 = and i32 %261, 256
  %263 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %264 = load i8, ptr %263, align 1
  %265 = zext i8 %264 to i32
  %266 = or i32 %262, %265
  %267 = mul nsw i32 %266, -4
  %268 = add i32 %267, %260
  %269 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %270 = load i8, ptr %269, align 1
  %271 = zext i8 %270 to i32
  %272 = shl nuw nsw i32 %271, 4
  %273 = and i32 %272, 256
  %274 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %275 = load i8, ptr %274, align 1
  %276 = zext i8 %275 to i32
  %277 = or i32 %273, %276
  %278 = shl nuw nsw i32 %277, 2
  %279 = shl nuw nsw i32 %271, 3
  %280 = and i32 %279, 256
  %281 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %282 = load i8, ptr %281, align 1
  %283 = zext i8 %282 to i32
  %284 = or i32 %280, %283
  %285 = mul nsw i32 %284, -4
  %286 = add i32 %285, %260
  br label %287

287:                                              ; preds = %251, %218
  %288 = phi i32 [ %220, %218 ], [ 2, %251 ]
  %289 = phi i32 [ %229, %218 ], [ %258, %251 ]
  %290 = phi i32 [ %241, %218 ], [ %268, %251 ]
  %291 = phi i32 [ 0, %218 ], [ %278, %251 ]
  %292 = phi i32 [ 0, %218 ], [ %286, %251 ]
  %293 = phi i32 [ %250, %218 ], [ 7, %251 ]
  %294 = phi i32 [ %244, %218 ], [ 127, %251 ]
  tail call void @input_event(ptr noundef %207, i32 noundef 1, i32 noundef 330, i32 noundef 1) #11
  br label %298

295:                                              ; preds = %204
  %296 = icmp ugt i8 %205, 63
  %297 = zext i1 %296 to i32
  tail call void @input_event(ptr noundef %207, i32 noundef 1, i32 noundef 330, i32 noundef %297) #11
  br i1 %296, label %298, label %306

298:                                              ; preds = %295, %287
  %299 = phi i32 [ %294, %287 ], [ 0, %295 ]
  %300 = phi i32 [ %293, %287 ], [ 0, %295 ]
  %301 = phi i32 [ %292, %287 ], [ 0, %295 ]
  %302 = phi i32 [ %291, %287 ], [ 0, %295 ]
  %303 = phi i32 [ %290, %287 ], [ 0, %295 ]
  %304 = phi i32 [ %289, %287 ], [ 0, %295 ]
  %305 = phi i32 [ %288, %287 ], [ %209, %295 ]
  tail call void @input_event(ptr noundef %207, i32 noundef 3, i32 noundef 0, i32 noundef %304) #11
  tail call void @input_event(ptr noundef %207, i32 noundef 3, i32 noundef 1, i32 noundef %303) #11
  br label %306

306:                                              ; preds = %298, %295
  %307 = phi i32 [ %299, %298 ], [ 0, %295 ]
  %308 = phi i32 [ %300, %298 ], [ 0, %295 ]
  %309 = phi i32 [ %301, %298 ], [ 0, %295 ]
  %310 = phi i32 [ %302, %298 ], [ 0, %295 ]
  %311 = phi i32 [ %303, %298 ], [ 0, %295 ]
  %312 = phi i32 [ %304, %298 ], [ 0, %295 ]
  %313 = phi i32 [ %305, %298 ], [ 0, %295 ]
  tail call fastcc void @elantech_report_semi_mt_data(ptr noundef %207, i32 noundef %313, i32 noundef %312, i32 noundef %311, i32 noundef %310, i32 noundef %309) #11
  %314 = icmp eq i32 %313, 1
  %315 = zext i1 %314 to i32
  tail call void @input_event(ptr noundef %207, i32 noundef 1, i32 noundef 325, i32 noundef %315) #11
  %316 = icmp eq i32 %313, 2
  %317 = zext i1 %316 to i32
  tail call void @input_event(ptr noundef %207, i32 noundef 1, i32 noundef 333, i32 noundef %317) #11
  %318 = icmp eq i32 %313, 3
  %319 = zext i1 %318 to i32
  tail call void @input_event(ptr noundef %207, i32 noundef 1, i32 noundef 334, i32 noundef %319) #11
  %320 = icmp eq i32 %313, 4
  %321 = zext i1 %320 to i32
  tail call void @input_event(ptr noundef %207, i32 noundef 1, i32 noundef 335, i32 noundef %321) #11
  %322 = load i8, ptr %153, align 1
  tail call void @psmouse_report_standard_buttons(ptr noundef %207, i8 noundef zeroext %322) #11
  %323 = getelementptr inbounds %struct.elantech_data, ptr %160, i32 0, i32 17, i32 20
  %324 = load i8, ptr %323, align 2, !range !9
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %327, label %326

326:                                              ; preds = %306
  tail call void @input_event(ptr noundef %207, i32 noundef 3, i32 noundef 24, i32 noundef %307) #11
  tail call void @input_event(ptr noundef %207, i32 noundef 3, i32 noundef 28, i32 noundef %308) #11
  br label %327

327:                                              ; preds = %326, %306
  tail call void @input_event(ptr noundef %207, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %702

328:                                              ; preds = %18
  %329 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %330 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %329, ptr noundef nonnull dereferenceable(6) @elantech_packet_check_v3.debounce_packet, i32 6) #11
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %702, label %332

332:                                              ; preds = %328
  %333 = load ptr, ptr %0, align 4
  %334 = getelementptr inbounds %struct.elantech_data, ptr %333, i32 0, i32 17, i32 21
  %335 = load i8, ptr %334, align 1, !range !9
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %349, label %337

337:                                              ; preds = %332
  %338 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %339 = load i8, ptr %338, align 1
  %340 = and i8 %339, 8
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %702, label %342

342:                                              ; preds = %337
  %343 = and i8 %339, 9
  %344 = icmp eq i8 %343, 8
  %345 = icmp eq i8 %343, 9
  %346 = select i1 %345, i32 4, i32 1
  %347 = select i1 %344, i32 3, i32 %346
  %348 = load i8, ptr %329, align 1
  br label %371

349:                                              ; preds = %332
  %350 = load i8, ptr %329, align 1
  %351 = trunc i8 %350 to i4
  %352 = and i4 %351, -4
  switch i4 %352, label %353 [
    i4 4, label %356
    i4 -4, label %361
  ]

353:                                              ; preds = %349
  %354 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %355 = load i8, ptr %354, align 1
  br label %366

356:                                              ; preds = %349
  %357 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %358 = load i8, ptr %357, align 1
  %359 = and i8 %358, -49
  %360 = icmp eq i8 %359, 2
  br i1 %360, label %371, label %366

361:                                              ; preds = %349
  %362 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %363 = load i8, ptr %362, align 1
  %364 = and i8 %363, -50
  %365 = icmp eq i8 %364, 12
  br i1 %365, label %371, label %366

366:                                              ; preds = %361, %356, %353
  %367 = phi i8 [ %355, %353 ], [ %358, %356 ], [ %363, %361 ]
  %368 = and i8 %367, 15
  %369 = icmp eq i8 %368, 6
  br i1 %369, label %370, label %702

370:                                              ; preds = %366
  tail call fastcc void @elantech_report_trackpoint(ptr noundef %0)
  br label %702

371:                                              ; preds = %361, %356, %342
  %372 = phi i8 [ %363, %361 ], [ %358, %356 ], [ %339, %342 ]
  %373 = phi i8 [ %350, %361 ], [ %350, %356 ], [ %348, %342 ]
  %374 = phi i32 [ 4, %361 ], [ 3, %356 ], [ %347, %342 ]
  %375 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %376 = load ptr, ptr %375, align 4
  %377 = lshr i8 %373, 6
  %378 = zext i8 %377 to i32
  switch i32 %378, label %379 [
    i32 3, label %384
    i32 1, label %384
    i32 2, label %406
  ]

379:                                              ; preds = %371
  %380 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %381 = load i8, ptr %380, align 1
  %382 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %383 = load i8, ptr %382, align 1
  br label %458

384:                                              ; preds = %371, %371
  %385 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %386 = load i8, ptr %385, align 1
  %387 = and i8 %386, 15
  %388 = zext i8 %387 to i32
  %389 = shl nuw nsw i32 %388, 8
  %390 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %391 = load i8, ptr %390, align 1
  %392 = zext i8 %391 to i32
  %393 = or i32 %389, %392
  %394 = getelementptr inbounds %struct.elantech_data, ptr %333, i32 0, i32 13
  %395 = load i32, ptr %394, align 4
  %396 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %397 = load i8, ptr %396, align 1
  %398 = and i8 %397, 15
  %399 = zext i8 %398 to i32
  %400 = mul nsw i32 %399, -256
  %401 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %402 = load i8, ptr %401, align 1
  %403 = zext i8 %402 to i32
  %404 = sub i32 %395, %403
  %405 = add i32 %404, %400
  br label %458

406:                                              ; preds = %371
  %407 = icmp eq i32 %374, 3
  br i1 %407, label %408, label %432

408:                                              ; preds = %406
  %409 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %410 = load i8, ptr %409, align 1
  %411 = and i8 %410, 15
  %412 = zext i8 %411 to i32
  %413 = shl nuw nsw i32 %412, 8
  %414 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %415 = load i8, ptr %414, align 1
  %416 = zext i8 %415 to i32
  %417 = or i32 %413, %416
  %418 = getelementptr inbounds %struct.elantech_data, ptr %333, i32 0, i32 15
  store i32 %417, ptr %418, align 4
  %419 = getelementptr inbounds %struct.elantech_data, ptr %333, i32 0, i32 13
  %420 = load i32, ptr %419, align 4
  %421 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %422 = load i8, ptr %421, align 1
  %423 = and i8 %422, 15
  %424 = zext i8 %423 to i32
  %425 = mul nsw i32 %424, -256
  %426 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %427 = load i8, ptr %426, align 1
  %428 = zext i8 %427 to i32
  %429 = sub i32 %420, %428
  %430 = add i32 %429, %425
  %431 = getelementptr inbounds %struct.elantech_data, ptr %333, i32 0, i32 15, i32 0, i32 1
  store i32 %430, ptr %431, align 4
  br label %702

432:                                              ; preds = %406
  %433 = getelementptr inbounds %struct.elantech_data, ptr %333, i32 0, i32 15
  %434 = load i32, ptr %433, align 4
  %435 = getelementptr inbounds %struct.elantech_data, ptr %333, i32 0, i32 15, i32 0, i32 1
  %436 = load i32, ptr %435, align 4
  %437 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %438 = load i8, ptr %437, align 1
  %439 = and i8 %438, 15
  %440 = zext i8 %439 to i32
  %441 = shl nuw nsw i32 %440, 8
  %442 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %443 = load i8, ptr %442, align 1
  %444 = zext i8 %443 to i32
  %445 = or i32 %441, %444
  %446 = getelementptr inbounds %struct.elantech_data, ptr %333, i32 0, i32 13
  %447 = load i32, ptr %446, align 4
  %448 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %449 = load i8, ptr %448, align 1
  %450 = and i8 %449, 15
  %451 = zext i8 %450 to i32
  %452 = mul nsw i32 %451, -256
  %453 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %454 = load i8, ptr %453, align 1
  %455 = zext i8 %454 to i32
  %456 = sub i32 %447, %455
  %457 = add i32 %456, %452
  br label %458

458:                                              ; preds = %432, %384, %379
  %459 = phi i8 [ %383, %379 ], [ %449, %432 ], [ %397, %384 ]
  %460 = phi i8 [ %381, %379 ], [ %438, %432 ], [ %386, %384 ]
  %461 = phi i32 [ 0, %379 ], [ %434, %432 ], [ %393, %384 ]
  %462 = phi i32 [ 0, %379 ], [ %436, %432 ], [ %405, %384 ]
  %463 = phi i32 [ 0, %379 ], [ %445, %432 ], [ 0, %384 ]
  %464 = phi i32 [ 0, %379 ], [ %457, %432 ], [ 0, %384 ]
  %465 = and i8 %460, -16
  %466 = lshr i8 %459, 4
  %467 = or i8 %465, %466
  %468 = zext i8 %467 to i32
  %469 = lshr i8 %373, 2
  %470 = and i8 %469, 12
  %471 = lshr i8 %372, 4
  %472 = and i8 %471, 3
  %473 = or i8 %472, %470
  %474 = zext i8 %473 to i32
  %475 = icmp ugt i8 %373, 63
  %476 = zext i1 %475 to i32
  tail call void @input_event(ptr noundef %376, i32 noundef 1, i32 noundef 330, i32 noundef %476) #11
  br i1 %475, label %477, label %478

477:                                              ; preds = %458
  tail call void @input_event(ptr noundef %376, i32 noundef 3, i32 noundef 0, i32 noundef %461) #11
  tail call void @input_event(ptr noundef %376, i32 noundef 3, i32 noundef 1, i32 noundef %462) #11
  br label %478

478:                                              ; preds = %477, %458
  tail call fastcc void @elantech_report_semi_mt_data(ptr noundef %376, i32 noundef %378, i32 noundef %461, i32 noundef %462, i32 noundef %463, i32 noundef %464) #11
  %479 = icmp eq i8 %377, 1
  %480 = zext i1 %479 to i32
  tail call void @input_event(ptr noundef %376, i32 noundef 1, i32 noundef 325, i32 noundef %480) #11
  %481 = icmp eq i8 %377, 2
  %482 = zext i1 %481 to i32
  tail call void @input_event(ptr noundef %376, i32 noundef 1, i32 noundef 333, i32 noundef %482) #11
  %483 = icmp eq i8 %377, 3
  %484 = zext i1 %483 to i32
  tail call void @input_event(ptr noundef %376, i32 noundef 1, i32 noundef 334, i32 noundef %484) #11
  %485 = getelementptr inbounds %struct.elantech_data, ptr %333, i32 0, i32 17, i32 5
  %486 = load i32, ptr %485, align 4
  %487 = and i32 %486, 4096
  %488 = icmp eq i32 %487, 0
  %489 = load i8, ptr %329, align 1
  br i1 %488, label %494, label %490

490:                                              ; preds = %478
  %491 = and i8 %489, 3
  %492 = icmp ne i8 %491, 0
  %493 = zext i1 %492 to i32
  tail call void @input_event(ptr noundef %376, i32 noundef 1, i32 noundef 272, i32 noundef %493) #11
  br label %495

494:                                              ; preds = %478
  tail call void @psmouse_report_standard_buttons(ptr noundef %376, i8 noundef zeroext %489) #11
  br label %495

495:                                              ; preds = %494, %490
  tail call void @input_event(ptr noundef %376, i32 noundef 3, i32 noundef 24, i32 noundef %468) #11
  tail call void @input_event(ptr noundef %376, i32 noundef 3, i32 noundef 28, i32 noundef %474) #11
  tail call void @input_event(ptr noundef %376, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %702

496:                                              ; preds = %18
  %497 = load ptr, ptr %0, align 4
  %498 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %499 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %500 = load i8, ptr %499, align 1
  %501 = and i8 %500, 3
  %502 = load ptr, ptr %497, align 4
  %503 = icmp ne ptr %502, null
  %504 = and i8 %500, 15
  %505 = icmp eq i8 %504, 6
  %506 = select i1 %503, i1 %505, i1 false
  br i1 %506, label %535, label %507

507:                                              ; preds = %496
  %508 = getelementptr inbounds %struct.elantech_data, ptr %497, i32 0, i32 17, i32 21
  %509 = load i8, ptr %508, align 1, !range !9
  %510 = icmp eq i8 %509, 0
  br i1 %510, label %514, label %511

511:                                              ; preds = %507
  %512 = and i8 %500, 8
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %533, label %702

514:                                              ; preds = %507
  %515 = getelementptr inbounds %struct.elantech_data, ptr %497, i32 0, i32 17, i32 5
  %516 = load i32, ptr %515, align 4
  %517 = and i32 %516, 983040
  %518 = icmp eq i32 %517, 458752
  br i1 %518, label %519, label %526

519:                                              ; preds = %514
  %520 = getelementptr %struct.elantech_data, ptr %497, i32 0, i32 17, i32 1, i32 1
  %521 = load i8, ptr %520, align 1
  %522 = icmp eq i8 %521, 42
  br i1 %522, label %523, label %526

523:                                              ; preds = %519
  %524 = and i8 %500, 28
  %525 = icmp eq i8 %524, 16
  br i1 %525, label %533, label %702

526:                                              ; preds = %519, %514
  %527 = load i8, ptr %498, align 1
  %528 = and i8 %527, 8
  %529 = icmp eq i8 %528, 0
  %530 = and i8 %500, 28
  %531 = icmp eq i8 %530, 16
  %532 = select i1 %529, i1 %531, i1 false
  br i1 %532, label %533, label %702

533:                                              ; preds = %526, %523, %511
  %534 = zext i8 %501 to i32
  switch i32 %534, label %702 [
    i32 0, label %536
    i32 1, label %580
    i32 2, label %638
  ]

535:                                              ; preds = %496
  tail call fastcc void @elantech_report_trackpoint(ptr noundef %0)
  br label %702

536:                                              ; preds = %533
  %537 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %538 = load ptr, ptr %537, align 4
  %539 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %540 = load i8, ptr %539, align 1
  %541 = and i8 %540, 31
  %542 = zext i8 %541 to i32
  %543 = and i32 %542, 1
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %547

545:                                              ; preds = %536
  tail call void @input_event(ptr noundef %538, i32 noundef 3, i32 noundef 47, i32 noundef 0) #11
  %546 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %538, i32 noundef 0, i1 noundef zeroext false) #11
  br label %547

547:                                              ; preds = %545, %536
  %548 = and i32 %542, 2
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %550, label %552

550:                                              ; preds = %547
  tail call void @input_event(ptr noundef %538, i32 noundef 3, i32 noundef 47, i32 noundef 1) #11
  %551 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %538, i32 noundef 0, i1 noundef zeroext false) #11
  br label %552

552:                                              ; preds = %550, %547
  %553 = and i32 %542, 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %557

555:                                              ; preds = %552
  tail call void @input_event(ptr noundef %538, i32 noundef 3, i32 noundef 47, i32 noundef 2) #11
  %556 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %538, i32 noundef 0, i1 noundef zeroext false) #11
  br label %557

557:                                              ; preds = %555, %552
  %558 = and i32 %542, 8
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %562

560:                                              ; preds = %557
  tail call void @input_event(ptr noundef %538, i32 noundef 3, i32 noundef 47, i32 noundef 3) #11
  %561 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %538, i32 noundef 0, i1 noundef zeroext false) #11
  br label %562

562:                                              ; preds = %560, %557
  %563 = and i32 %542, 16
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %567

565:                                              ; preds = %562
  tail call void @input_event(ptr noundef %538, i32 noundef 3, i32 noundef 47, i32 noundef 4) #11
  %566 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %538, i32 noundef 0, i1 noundef zeroext false) #11
  br label %567

567:                                              ; preds = %565, %562
  %568 = load ptr, ptr %537, align 4
  %569 = load ptr, ptr %0, align 4
  %570 = getelementptr inbounds %struct.elantech_data, ptr %569, i32 0, i32 17, i32 5
  %571 = load i32, ptr %570, align 4
  %572 = and i32 %571, 4096
  %573 = icmp eq i32 %572, 0
  %574 = load i8, ptr %498, align 1
  br i1 %573, label %579, label %575

575:                                              ; preds = %567
  %576 = and i8 %574, 3
  %577 = icmp ne i8 %576, 0
  %578 = zext i1 %577 to i32
  tail call void @input_event(ptr noundef %568, i32 noundef 1, i32 noundef 272, i32 noundef %578) #11
  br label %700

579:                                              ; preds = %567
  tail call void @psmouse_report_standard_buttons(ptr noundef %568, i8 noundef zeroext %574) #11
  br label %700

580:                                              ; preds = %533
  %581 = icmp ult i8 %500, 32
  br i1 %581, label %702, label %582

582:                                              ; preds = %580
  %583 = lshr i8 %500, 5
  %584 = zext i8 %583 to i32
  %585 = add nsw i32 %584, -1
  %586 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %587 = load ptr, ptr %586, align 4
  %588 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %589 = load i8, ptr %588, align 1
  %590 = and i8 %589, 15
  %591 = zext i8 %590 to i32
  %592 = shl nuw nsw i32 %591, 8
  %593 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %594 = load i8, ptr %593, align 1
  %595 = zext i8 %594 to i32
  %596 = or i32 %592, %595
  %597 = getelementptr %struct.elantech_data, ptr %497, i32 0, i32 15, i32 %585
  store i32 %596, ptr %597, align 4
  %598 = getelementptr inbounds %struct.elantech_data, ptr %497, i32 0, i32 13
  %599 = load i32, ptr %598, align 4
  %600 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %601 = load i8, ptr %600, align 1
  %602 = and i8 %601, 15
  %603 = zext i8 %602 to i32
  %604 = mul nsw i32 %603, -256
  %605 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %606 = load i8, ptr %605, align 1
  %607 = zext i8 %606 to i32
  %608 = sub i32 %599, %607
  %609 = add i32 %608, %604
  %610 = getelementptr %struct.elantech_data, ptr %497, i32 0, i32 15, i32 %585, i32 1
  store i32 %609, ptr %610, align 4
  %611 = load i8, ptr %588, align 1
  %612 = and i8 %611, -16
  %613 = load i8, ptr %600, align 1
  %614 = lshr i8 %613, 4
  %615 = or i8 %614, %612
  %616 = zext i8 %615 to i32
  %617 = load i8, ptr %498, align 1
  %618 = lshr i8 %617, 4
  %619 = zext i8 %618 to i32
  tail call void @input_event(ptr noundef %587, i32 noundef 3, i32 noundef 47, i32 noundef %585) #11
  %620 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %587, i32 noundef 0, i1 noundef zeroext true) #11
  %621 = load i32, ptr %597, align 4
  tail call void @input_event(ptr noundef %587, i32 noundef 3, i32 noundef 53, i32 noundef %621) #11
  %622 = load i32, ptr %610, align 4
  tail call void @input_event(ptr noundef %587, i32 noundef 3, i32 noundef 54, i32 noundef %622) #11
  tail call void @input_event(ptr noundef %587, i32 noundef 3, i32 noundef 58, i32 noundef %616) #11
  %623 = getelementptr inbounds %struct.elantech_data, ptr %497, i32 0, i32 14
  %624 = load i32, ptr %623, align 4
  %625 = mul i32 %624, %619
  tail call void @input_event(ptr noundef %587, i32 noundef 3, i32 noundef 48, i32 noundef %625) #11
  tail call void @input_event(ptr noundef %587, i32 noundef 3, i32 noundef 28, i32 noundef %619) #11
  %626 = load ptr, ptr %586, align 4
  %627 = load ptr, ptr %0, align 4
  %628 = getelementptr inbounds %struct.elantech_data, ptr %627, i32 0, i32 17, i32 5
  %629 = load i32, ptr %628, align 4
  %630 = and i32 %629, 4096
  %631 = icmp eq i32 %630, 0
  %632 = load i8, ptr %498, align 1
  br i1 %631, label %637, label %633

633:                                              ; preds = %582
  %634 = and i8 %632, 3
  %635 = icmp ne i8 %634, 0
  %636 = zext i1 %635 to i32
  tail call void @input_event(ptr noundef %626, i32 noundef 1, i32 noundef 272, i32 noundef %636) #11
  br label %700

637:                                              ; preds = %582
  tail call void @psmouse_report_standard_buttons(ptr noundef %626, i8 noundef zeroext %632) #11
  br label %700

638:                                              ; preds = %533
  %639 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %640 = load ptr, ptr %639, align 4
  %641 = load i8, ptr %498, align 1
  %642 = icmp ult i8 %641, 32
  br i1 %642, label %702, label %643

643:                                              ; preds = %638
  %644 = zext i8 %641 to i32
  %645 = lshr i32 %644, 5
  %646 = add nsw i32 %645, -1
  %647 = and i32 %644, 16
  %648 = icmp eq i32 %647, 0
  %649 = select i1 %648, i32 1, i32 5
  %650 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %651 = load i8, ptr %650, align 1
  %652 = sext i8 %651 to i32
  %653 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %654 = load i8, ptr %653, align 1
  %655 = sext i8 %654 to i32
  %656 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %657 = load i8, ptr %656, align 1
  %658 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %659 = load i8, ptr %658, align 1
  %660 = mul nsw i32 %649, %652
  %661 = getelementptr %struct.elantech_data, ptr %497, i32 0, i32 15, i32 %646
  %662 = load i32, ptr %661, align 4
  %663 = add i32 %662, %660
  store i32 %663, ptr %661, align 4
  %664 = mul nsw i32 %649, %655
  %665 = getelementptr %struct.elantech_data, ptr %497, i32 0, i32 15, i32 %646, i32 1
  %666 = load i32, ptr %665, align 4
  %667 = sub i32 %666, %664
  store i32 %667, ptr %665, align 4
  tail call void @input_event(ptr noundef %640, i32 noundef 3, i32 noundef 47, i32 noundef %646) #11
  %668 = load i32, ptr %661, align 4
  tail call void @input_event(ptr noundef %640, i32 noundef 3, i32 noundef 53, i32 noundef %668) #11
  %669 = load i32, ptr %665, align 4
  tail call void @input_event(ptr noundef %640, i32 noundef 3, i32 noundef 54, i32 noundef %669) #11
  %670 = icmp ult i8 %500, 32
  br i1 %670, label %687, label %671

671:                                              ; preds = %643
  %672 = lshr i8 %500, 5
  %673 = zext i8 %672 to i32
  %674 = add nsw i32 %673, -1
  %675 = sext i8 %659 to i32
  %676 = sext i8 %657 to i32
  %677 = mul nsw i32 %649, %676
  %678 = getelementptr %struct.elantech_data, ptr %497, i32 0, i32 15, i32 %674
  %679 = load i32, ptr %678, align 4
  %680 = add i32 %679, %677
  store i32 %680, ptr %678, align 4
  %681 = mul nsw i32 %649, %675
  %682 = getelementptr %struct.elantech_data, ptr %497, i32 0, i32 15, i32 %674, i32 1
  %683 = load i32, ptr %682, align 4
  %684 = sub i32 %683, %681
  store i32 %684, ptr %682, align 4
  tail call void @input_event(ptr noundef %640, i32 noundef 3, i32 noundef 47, i32 noundef %674) #11
  %685 = load i32, ptr %678, align 4
  tail call void @input_event(ptr noundef %640, i32 noundef 3, i32 noundef 53, i32 noundef %685) #11
  %686 = load i32, ptr %682, align 4
  tail call void @input_event(ptr noundef %640, i32 noundef 3, i32 noundef 54, i32 noundef %686) #11
  br label %687

687:                                              ; preds = %671, %643
  %688 = load ptr, ptr %639, align 4
  %689 = load ptr, ptr %0, align 4
  %690 = getelementptr inbounds %struct.elantech_data, ptr %689, i32 0, i32 17, i32 5
  %691 = load i32, ptr %690, align 4
  %692 = and i32 %691, 4096
  %693 = icmp eq i32 %692, 0
  %694 = load i8, ptr %498, align 1
  br i1 %693, label %699, label %695

695:                                              ; preds = %687
  %696 = and i8 %694, 3
  %697 = icmp ne i8 %696, 0
  %698 = zext i1 %697 to i32
  tail call void @input_event(ptr noundef %688, i32 noundef 1, i32 noundef 272, i32 noundef %698) #11
  br label %700

699:                                              ; preds = %687
  tail call void @psmouse_report_standard_buttons(ptr noundef %688, i8 noundef zeroext %694) #11
  br label %700

700:                                              ; preds = %699, %695, %637, %633, %579, %575
  %701 = phi ptr [ %568, %575 ], [ %568, %579 ], [ %626, %637 ], [ %626, %633 ], [ %688, %699 ], [ %688, %695 ]
  tail call void @input_mt_report_pointer_emulation(ptr noundef %701, i1 noundef zeroext true) #11
  tail call void @input_event(ptr noundef %701, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %702

702:                                              ; preds = %700, %638, %580, %535, %533, %526, %523, %511, %495, %408, %370, %366, %337, %328, %327, %200, %195, %191, %188, %183, %180, %171, %168, %152, %151, %101, %96, %56, %46, %29, %18, %1
  %703 = phi i32 [ 1, %1 ], [ 0, %56 ], [ 2, %152 ], [ 0, %200 ], [ 0, %46 ], [ 0, %29 ], [ 0, %168 ], [ 0, %180 ], [ 0, %195 ], [ 0, %191 ], [ 0, %188 ], [ 0, %366 ], [ 0, %526 ], [ 0, %511 ], [ 0, %523 ], [ 0, %533 ], [ 0, %337 ], [ 2, %328 ], [ 2, %700 ], [ 2, %638 ], [ 2, %580 ], [ 2, %495 ], [ 2, %408 ], [ 2, %151 ], [ 2, %101 ], [ 2, %96 ], [ 2, %535 ], [ 2, %370 ], [ 2, %18 ], [ 2, %327 ], [ 0, %171 ], [ 0, %183 ]
  ret i32 %703
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @elantech_disconnect(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  tail call void @psmouse_smbus_cleanup(ptr noundef %0) #11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @input_unregister_device(ptr noundef nonnull %3) #11
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %9, ptr noundef nonnull @elantech_attr_group) #11
  %10 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %10) #11
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elantech_reconnect(ptr noundef %0) #0 {
  %2 = tail call i32 @psmouse_reset(ptr noundef %0) #11
  %3 = tail call i32 @elantech_detect(ptr noundef %0, i1 noundef zeroext false)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @elantech_set_absolute_mode(ptr noundef %0)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.62) #12
  br label %12

12:                                               ; preds = %8, %5, %1
  %13 = phi i32 [ -1, %8 ], [ -1, %1 ], [ 0, %5 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = zext i8 %1 to i32
  %5 = add i8 %1, -39
  %6 = icmp ult i8 %5, -32
  %7 = add i8 %1, -18
  %8 = icmp ult i8 %7, 14
  %9 = or i1 %6, %8
  br i1 %9, label %104, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.elantech_data, ptr %11, i32 0, i32 17, i32 3
  %13 = load i8, ptr %12, align 1
  switch i8 %13, label %104 [
    i8 1, label %14
    i8 2, label %27
    i8 3, label %49
    i8 4, label %71
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %16 = tail call i32 @ps2_sliced_command(ptr noundef %15, i8 noundef zeroext 17) #11
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %99

18:                                               ; preds = %14
  %19 = tail call i32 @ps2_sliced_command(ptr noundef %15, i8 noundef zeroext %1) #11
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %99

21:                                               ; preds = %18
  %22 = tail call i32 @ps2_sliced_command(ptr noundef %15, i8 noundef zeroext %2) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %21
  %25 = tail call i32 @ps2_command(ptr noundef %15, ptr noundef null, i32 noundef 230) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %104, label %99

27:                                               ; preds = %10
  %28 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %99

30:                                               ; preds = %27
  %31 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 17)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %99

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %99

36:                                               ; preds = %33
  %37 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef %4)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %99

39:                                               ; preds = %36
  %40 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %39
  %43 = zext i8 %2 to i32
  %44 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %42
  %47 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 230)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %104, label %99

49:                                               ; preds = %10
  %50 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %49
  %53 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 0)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %99

55:                                               ; preds = %52
  %56 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %99

58:                                               ; preds = %55
  %59 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef %4)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %58
  %62 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %61
  %65 = zext i8 %2 to i32
  %66 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  %69 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 230)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %104, label %99

71:                                               ; preds = %10
  %72 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 0)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef %4)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 0)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = zext i8 %2 to i32
  %94 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 230)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96, %92, %89, %86, %83, %80, %77, %74, %71, %68, %64, %61, %58, %55, %52, %49, %46, %42, %39, %36, %33, %30, %27, %24, %21, %18, %14
  %100 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.serio, ptr %101, i32 0, i32 18
  %103 = zext i8 %2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.42, i32 noundef %4, i32 noundef %103) #12
  br label %104

104:                                              ; preds = %99, %96, %68, %46, %24, %10, %3
  %105 = phi i32 [ -1, %3 ], [ -1, %99 ], [ 0, %96 ], [ 0, %68 ], [ 0, %46 ], [ 0, %24 ], [ 0, %10 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @elantech_read_reg(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false), !annotation !8
  %6 = zext i8 %1 to i32
  %7 = add i8 %1, -39
  %8 = icmp ult i8 %7, -32
  %9 = add i8 %1, -18
  %10 = icmp ult i8 %9, 14
  %11 = or i1 %8, %10
  br i1 %11, label %69, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.elantech_data, ptr %5, i32 0, i32 17, i32 3
  %14 = load i8, ptr %13, align 1
  switch i8 %14, label %64 [
    i8 1, label %15
    i8 2, label %25
    i8 3, label %40
    i8 4, label %40
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %17 = tail call i32 @ps2_sliced_command(ptr noundef %16, i8 noundef zeroext 16) #11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = tail call i32 @ps2_sliced_command(ptr noundef %16, i8 noundef zeroext %1) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %19
  %23 = call i32 @ps2_command(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 1001) #11
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %59, label %55

25:                                               ; preds = %12
  %26 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 16)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef %6)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1001)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %59, label %55

40:                                               ; preds = %12, %12
  %41 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 0)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 248)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = tail call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef null, i32 noundef %6)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call fastcc i32 @elantech_ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1001)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %15
  %56 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.serio, ptr %57, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.43, i32 noundef %6) #12
  br label %69

59:                                               ; preds = %52, %37, %22
  %60 = load i8, ptr %13, align 1
  %61 = icmp eq i8 %60, 4
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load i8, ptr %4, align 1
  br label %64

64:                                               ; preds = %62, %12
  %65 = phi i8 [ %63, %62 ], [ 0, %12 ]
  store i8 %65, ptr %2, align 1
  br label %69

66:                                               ; preds = %59
  %67 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %68 = load i8, ptr %67, align 1
  store i8 %68, ptr %2, align 1
  br label %69

69:                                               ; preds = %66, %64, %55, %3
  %70 = phi i32 [ -1, %3 ], [ 0, %64 ], [ 0, %66 ], [ -1, %55 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #11
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elantech_show_int_attr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = getelementptr inbounds %struct.elantech_attr_data, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @elantech_read_reg(ptr noundef %0, i8 noundef zeroext %8, ptr noundef %6)
  %12 = icmp ne i32 %11, 0
  %13 = load i8, ptr %7, align 4
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %14, i1 %12, i1 false
  br i1 %15, label %19, label %16

16:                                               ; preds = %10, %3
  %17 = load i8, ptr %6, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %18, %16 ], [ -1, %10 ]
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef %20)
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @elantech_set_int_attr(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 4
  %7 = load i32, ptr %1, align 4
  %8 = getelementptr i8, ptr %6, i32 %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !8
  %9 = call i32 @kstrtou8(ptr noundef %2, i32 noundef 16, ptr noundef nonnull %5) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.elantech_data, ptr %6, i32 0, i32 17, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 1
  %15 = getelementptr inbounds %struct.elantech_attr_data, ptr %1, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  br i1 %14, label %17, label %24

17:                                               ; preds = %11
  switch i8 %16, label %26 [
    i8 16, label %18
    i8 17, label %21
    i8 0, label %31
  ]

18:                                               ; preds = %17
  %19 = load i8, ptr %5, align 1
  %20 = or i8 %19, 4
  store i8 %20, ptr %5, align 1
  br label %26

21:                                               ; preds = %17
  %22 = load i8, ptr %5, align 1
  %23 = or i8 %22, 2
  store i8 %23, ptr %5, align 1
  br label %26

24:                                               ; preds = %11
  %25 = icmp eq i8 %16, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %24, %21, %18, %17
  %27 = phi i8 [ %16, %24 ], [ 17, %21 ], [ 16, %18 ], [ %16, %17 ]
  %28 = load i8, ptr %5, align 1
  %29 = call fastcc i32 @elantech_write_reg(ptr noundef %0, i8 noundef zeroext %27, i8 noundef zeroext %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %24, %17
  %32 = load i8, ptr %5, align 1
  store i8 %32, ptr %8, align 1
  br label %33

33:                                               ; preds = %31, %26, %4
  %34 = phi i32 [ %9, %4 ], [ %3, %31 ], [ %3, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  ret i32 %34
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @elantech_report_trackpoint(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 1
  %6 = and i32 %5, -8
  %7 = lshr i32 %5, 8
  %8 = trunc i32 %7 to i8
  %9 = lshr i32 %5, 16
  %10 = trunc i32 %9 to i8
  %11 = trunc i32 %5 to i8
  switch i32 %6, label %46 [
    i32 100663344, label %12
    i32 369131552, label %12
    i32 645922832, label %12
    i32 914391040, label %12
  ]

12:                                               ; preds = %1, %1, %1, %1
  %13 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, -128
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, -128
  %21 = xor i8 %14, %8
  %22 = icmp sgt i8 %21, -1
  %23 = select i1 %20, i1 true, i1 %22
  %24 = xor i8 %19, %10
  %25 = icmp sgt i8 %24, -1
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %17, %12
  %28 = getelementptr inbounds %struct.elantech_data, ptr %2, i32 0, i32 17, i32 2
  %29 = load i8, ptr %28, align 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %57, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %34, ptr noundef nonnull @.str.61, ptr noundef %4) #12
  br label %57

35:                                               ; preds = %17
  %36 = zext i8 %19 to i32
  %37 = shl nuw nsw i32 %7, 1
  %38 = and i32 %37, 510
  %39 = xor i32 %38, -258
  %40 = add nsw i32 %39, 2
  %41 = add nsw i32 %40, %15
  %42 = shl nuw nsw i32 %9, 1
  %43 = and i32 %42, 510
  %44 = xor i32 %43, 256
  %45 = sub nsw i32 %44, %36
  tail call void @psmouse_report_standard_buttons(ptr noundef %3, i8 noundef zeroext %11) #11
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %41) #11
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 1, i32 noundef %45) #11
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %57

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.elantech_data, ptr %2, i32 0, i32 17, i32 2
  %48 = load i8, ptr %47, align 2
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.serio, ptr %52, i32 0, i32 18
  %54 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  %55 = load i8, ptr %54, align 2
  %56 = zext i8 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.18, ptr noundef %53, ptr noundef nonnull @.str.59, i32 noundef %56, ptr noundef %4) #12
  br label %57

57:                                               ; preds = %50, %46, %35, %31, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_report_standard_buttons(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @elantech_report_semi_mt_data(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp ne i32 %1, 0
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef 0) #11
  %8 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %0, i32 noundef 0, i1 noundef zeroext %7) #11
  br i1 %7, label %9, label %10

9:                                                ; preds = %6
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 53, i32 noundef %2) #11
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 54, i32 noundef %3) #11
  br label %10

10:                                               ; preds = %9, %6
  %11 = icmp ugt i32 %1, 1
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef 1) #11
  %12 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %0, i32 noundef 0, i1 noundef zeroext %11) #11
  br i1 %11, label %13, label %14

13:                                               ; preds = %10
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 53, i32 noundef %4) #11
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 54, i32 noundef %5) #11
  br label %14

14:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psmouse_matches_pnp_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
