; ModuleID = '/llk/IR/drivers/input/mouse/synaptics.c_pt.bc'
source_filename = "../drivers/input/mouse/synaptics.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.35 }
%union.anon.35 = type { ptr }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.min_max_quirk = type { ptr, %struct.anon.72, i32, i32, i32, i32 }
%struct.anon.72 = type { i32, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
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
%struct.synaptics_device_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%union.anon.73 = type { i32 }
%struct.synaptics_data = type { %struct.synaptics_device_info, i32, i8, i32, i8, i8, ptr, %struct.synaptics_hw_state, i32, i32, i8, i8, i8 }
%struct.synaptics_hw_state = type { i32, i32, i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_mt_pos = type { i16, i16 }

@.str = private unnamed_addr constant [10 x i8] c"Synaptics\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"TouchPad\00", align 1
@toshiba_dmi_table = internal constant [1 x %struct.dmi_system_id] zeroinitializer, section ".init.rodata", align 4
@impaired_toshiba_kbc = internal unnamed_addr global i8 0, align 1
@olpc_dmi_table = internal constant [1 x %struct.dmi_system_id] zeroinitializer, section ".init.rodata", align 4
@broken_olpc_ec = internal unnamed_addr global i8 0, align 1
@cr48_dmi_table = internal constant [1 x %struct.dmi_system_id] zeroinitializer, section ".init.rodata", align 4
@cr48_profile_sensor = internal unnamed_addr global i8 0, align 1
@__param_str_synaptics_intertouch = internal constant [29 x i8] c"psmouse.synaptics_intertouch\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@synaptics_intertouch = internal global i32 0, align 4
@__param_synaptics_intertouch = internal constant %struct.kernel_param { ptr @__param_str_synaptics_intertouch, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.35 { ptr @synaptics_intertouch } }, section "__param", align 4
@__UNIQUE_ID_synaptics_intertouchtype259 = internal constant [42 x i8] c"psmouse.parmtype=synaptics_intertouch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_synaptics_intertouch260 = internal constant [80 x i8] c"psmouse.parm=synaptics_intertouch:Use a secondary bus for the Synaptics device.\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"synaptics: Unable to query device: %d\0A\00", align 1
@forcepad_pnp_ids = internal constant [3 x ptr] [ptr @.str.66, ptr @.str.67, ptr null], align 4
@.str.3 = private unnamed_addr constant [180 x i8] c"synaptics: The touchpad can support a better bus than the too old PS/2 protocol. Make sure MOUSE_PS2_SYNAPTICS_SMBUS and RMI4_SMB are enabled to get a better touchpad experience.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"synaptics: Unable to initialize device.\0A\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"synaptics: Touchpad model: %lu, fw: %lu.%lu, id: %#x, caps: %#x/%#x/%#x/%#x, board id: %u, fw id: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"synaptics: failed to set up capabilities: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"synaptics: Toshiba %s detected, limiting rate to 40pps.\0A\00", align 1
@psmouse_attr_disable_gesture = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @synaptics_show_disable_gesture, ptr @synaptics_set_disable_gesture, i8 1 }, align 4
@.str.8 = private unnamed_addr constant [59 x i8] c"synaptics: Failed to create disable_gesture attribute (%d)\00", align 1
@min_max_pnpid_table = internal unnamed_addr constant [8 x %struct.min_max_quirk] [%struct.min_max_quirk { ptr @.compoundliteral, %struct.anon.72 zeroinitializer, i32 1024, i32 5052, i32 2258, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.12, %struct.anon.72 zeroinitializer, i32 1232, i32 5710, i32 1156, i32 4696 }, %struct.min_max_quirk { ptr @.compoundliteral.19, %struct.anon.72 { i32 0, i32 2961 }, i32 1024, i32 5112, i32 2024, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.21, %struct.anon.72 zeroinitializer, i32 1024, i32 5113, i32 2021, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.23, %struct.anon.72 zeroinitializer, i32 1024, i32 5022, i32 2508, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.25, %struct.anon.72 { i32 2691, i32 2691 }, i32 1024, i32 5045, i32 2457, i32 4832 }, %struct.min_max_quirk { ptr @.compoundliteral.26, %struct.anon.72 zeroinitializer, i32 1264, i32 5675, i32 1171, i32 4688 }, %struct.min_max_quirk zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [64 x i8] c"synaptics: quirked min/max coordinates: x [%d..%d], y [%d..%d]\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"LEN0033\00", align 1
@.compoundliteral = internal constant [2 x ptr] [ptr @.str.10, ptr null], align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"LEN0042\00", align 1
@.compoundliteral.12 = internal constant [2 x ptr] [ptr @.str.11, ptr null], align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"LEN0034\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"LEN0036\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"LEN0037\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"LEN0039\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"LEN2002\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"LEN2004\00", align 1
@.compoundliteral.19 = internal constant [7 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr null], align 4
@.str.20 = private unnamed_addr constant [8 x i8] c"LEN2000\00", align 1
@.compoundliteral.21 = internal constant [2 x ptr] [ptr @.str.20, ptr null], align 4
@.str.22 = private unnamed_addr constant [8 x i8] c"LEN2001\00", align 1
@.compoundliteral.23 = internal constant [2 x ptr] [ptr @.str.22, ptr null], align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"LEN2006\00", align 1
@.compoundliteral.25 = internal constant [2 x ptr] [ptr @.str.24, ptr null], align 4
@.compoundliteral.26 = internal constant [2 x ptr] [ptr @.str.24, ptr null], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.27 = private unnamed_addr constant [50 x i8] c"synaptics: Advanced gesture mode init failed: %d\0A\00", align 1
@synaptics_set_advanced_gesture_mode.param = internal global i8 -56, align 1
@topbuttonpad_pnp_ids = internal constant [33 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.10, ptr @.str.13, ptr @.str.37, ptr @.str.14, ptr @.str.15, ptr @.str.38, ptr @.str.16, ptr @.str.39, ptr @.str.11, ptr @.str.40, ptr @.str.41, ptr @.str.20, ptr @.str.22, ptr @.str.17, ptr @.str.42, ptr @.str.18, ptr @.str.43, ptr @.str.24, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr null], align 4
@.str.28 = private unnamed_addr constant [8 x i8] c"LEN0017\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"LEN0018\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"LEN0019\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"LEN0023\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"LEN002A\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"LEN002B\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"LEN002C\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"LEN002D\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"LEN002E\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"LEN0035\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"LEN0038\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"LEN0041\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"LEN0045\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"LEN0047\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"LEN2003\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"LEN2005\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"LEN2007\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"LEN2008\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"LEN2009\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"LEN200A\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"LEN200B\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"synaptics: using relaxed packet validation\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@synaptics_validate_byte.newabs_mask = internal unnamed_addr constant [5 x i8] c"\C8\00\00\C8\00", align 1
@synaptics_validate_byte.newabs_rel_mask = internal unnamed_addr constant [5 x i8] c"\C0\00\00\C0\00", align 1
@synaptics_validate_byte.newabs_rslt = internal unnamed_addr constant [5 x i8] c"\80\00\00\C0\00", align 1
@synaptics_validate_byte.oldabs_mask = internal unnamed_addr constant [5 x i8] c"\C0`\00\C0`", align 1
@synaptics_validate_byte.oldabs_rslt = internal unnamed_addr constant [5 x i8] c"\C0\00\00\80\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"synaptics: unknown packet type %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [36 x i8] c"synaptics: Unable to query device.\0A\00", align 1
@.str.52 = private unnamed_addr constant [96 x i8] c"synaptics: hardware appears to be different: id(%u-%u), model(%u-%u), caps(%x-%x), ext(%x-%x).\0A\00", align 1
@.str.53 = private unnamed_addr constant [52 x i8] c"synaptics: not enough memory for pass-through port\0A\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"Synaptics pass-through\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"synaptics-pt/serio0\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"synaptics: serio: %s port at %s\0A\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"synaptics: failed to switch guest protocol\0A\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"disable_gesture\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.60 = private unnamed_addr constant [88 x i8] c"synaptics: device claims to have extended capabilities, but I'm not able to read them.\0A\00", align 1
@.str.61 = private unnamed_addr constant [89 x i8] c"synaptics: device claims to have extended capability 0x0c, but I'm not able to read it.\0A\00", align 1
@.str.62 = private unnamed_addr constant [86 x i8] c"synaptics: device claims to have max coordinates query, but I'm not able to read it.\0A\00", align 1
@.str.63 = private unnamed_addr constant [56 x i8] c"synaptics: queried max coordinates: x [..%d], y [..%d]\0A\00", align 1
@.str.64 = private unnamed_addr constant [86 x i8] c"synaptics: device claims to have min coordinates query, but I'm not able to read it.\0A\00", align 1
@.str.65 = private unnamed_addr constant [56 x i8] c"synaptics: queried min coordinates: x [%d..], y [%d..]\0A\00", align 1
@__const.synaptics_create_intertouch.intertouch_board = private unnamed_addr constant %struct.i2c_board_info { [20 x i8] c"rmi4_smbus\00\00\00\00\00\00\00\00\00\00", i16 64, i16 44, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@.str.66 = private unnamed_addr constant [8 x i8] c"SYN300D\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"SYN3014\00", align 1
@smbus_pnp_ids = internal constant [29 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr null], align 4
@.str.68 = private unnamed_addr constant [217 x i8] c"synaptics: Your touchpad (%s) says it can support a different bus. If i2c-hid and hid-rmi are not used, you might want to try setting psmouse.synaptics_intertouch to 1 and report this to linux-input@vger.kernel.org.\0A\00", align 1
@.str.69 = private unnamed_addr constant [42 x i8] c"synaptics: Trying to set up SMBus access\0A\00", align 1
@.str.70 = private unnamed_addr constant [45 x i8] c"synaptics: SMbus companion is not ready yet\0A\00", align 1
@.str.71 = private unnamed_addr constant [47 x i8] c"synaptics: unable to create intertouch device\0A\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"LEN0048\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"LEN0046\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"LEN0049\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"LEN004a\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"LEN005b\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"LEN005e\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"LEN006c\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"LEN007a\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"LEN0071\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"LEN0072\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"LEN0073\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"LEN0091\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"LEN0092\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"LEN0093\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"LEN0096\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"LEN0097\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"LEN0099\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"LEN009b\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"LEN0402\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"LEN200f\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"LEN2044\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"LEN2054\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"LEN2055\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"LEN2068\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"SYN3052\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"SYN3221\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"SYN323d\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"SYN3257\00", align 1
@.str.100 = private unnamed_addr constant [57 x i8] c"synaptics: OLPC XO detected, forcing relative protocol.\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_synaptics_intertouch260, ptr @__UNIQUE_ID_synaptics_intertouchtype259, ptr @__param_synaptics_intertouch], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @synaptics_detect(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %5 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #12
  %6 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #12
  %7 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #12
  %8 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #12
  %9 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1001) #12
  %10 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp ne i8 %11, 71
  %13 = xor i1 %1, true
  %14 = or i1 %12, %13
  %15 = select i1 %12, i32 -19, i32 0
  br i1 %14, label %19, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str, ptr %17, align 4
  %18 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str.1, ptr %18, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i32 [ %15, %2 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %20
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @synaptics_reset(ptr noundef %0) #0 {
  %2 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %4 = tail call i32 @ps2_sliced_command(ptr noundef %3, i8 noundef zeroext 0) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  store i8 20, ptr %2, align 1
  %7 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4339) #12
  br label %8

8:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @synaptics_module_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @dmi_check_system(ptr noundef nonnull @toshiba_dmi_table) #12
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  store i8 %3, ptr @impaired_toshiba_kbc, align 1
  %4 = tail call i32 @dmi_check_system(ptr noundef nonnull @olpc_dmi_table) #12
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i8
  store i8 %6, ptr @broken_olpc_ec, align 1
  %7 = tail call i32 @dmi_check_system(ptr noundef nonnull @cr48_dmi_table) #12
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, ptr @cr48_profile_sensor, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @synaptics_init_absolute(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.synaptics_device_info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i32 56, i1 false) #12, !annotation !8
  %3 = tail call i32 @psmouse_reset(ptr noundef %0) #12
  %4 = call fastcc i32 @synaptics_query_hardware(ptr noundef %0, ptr noundef nonnull %2) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef %4) #13
  br label %12

10:                                               ; preds = %1
  %11 = call fastcc i32 @synaptics_init_ps2(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true) #12
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %4, %6 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @synaptics_init_relative(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.synaptics_device_info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %2, i8 0, i32 56, i1 false) #12, !annotation !8
  %3 = tail call i32 @psmouse_reset(ptr noundef %0) #12
  %4 = call fastcc i32 @synaptics_query_hardware(ptr noundef %0, ptr noundef nonnull %2) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef %4) #13
  br label %12

10:                                               ; preds = %1
  %11 = call fastcc i32 @synaptics_init_ps2(ptr noundef %0, ptr noundef nonnull %2, i1 noundef zeroext false) #12
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %4, %6 ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #12
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @synaptics_init_smbus(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rmi_device_platform_data, align 4
  %3 = alloca %struct.i2c_board_info, align 4
  %4 = alloca %struct.synaptics_device_info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !8
  %5 = tail call i32 @psmouse_reset(ptr noundef %0) #12
  %6 = call fastcc i32 @synaptics_query_hardware(ptr noundef %0, ptr noundef nonnull %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %6) #13
  br label %37

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.synaptics_device_info, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @topbuttonpad_pnp_ids) #12
  %19 = getelementptr inbounds %struct.synaptics_device_info, ptr %4, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 65536
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %18, i1 %22, i1 false
  %24 = zext i1 %23 to i8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #12
  %25 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %2, i8 0, i64 112, i1 false) #12
  store i8 1, ptr %25, align 2
  %26 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 3, i32 1
  store i32 2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 3, i32 6
  store i8 %24, ptr %27, align 2
  %28 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 5
  %29 = lshr i32 %14, 20
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  store i8 %31, ptr %28, align 4
  %32 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 5, i32 1
  %33 = lshr i32 %20, 16
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  store i8 %35, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(56) @__const.synaptics_create_intertouch.intertouch_board, i32 56, i1 false) #12
  %36 = call i32 @psmouse_smbus_init(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 112, i1 noundef zeroext true, i1 noundef zeroext false) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #12
  br label %37

37:                                               ; preds = %17, %12, %8
  %38 = phi i32 [ %6, %8 ], [ %36, %17 ], [ -6, %12 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #12
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_query_hardware(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %union.anon.73, align 4
  %4 = alloca %union.anon.73, align 4
  %5 = alloca %union.anon.73, align 4
  %6 = alloca %union.anon.73, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca %union.anon.73, align 4
  %9 = alloca %union.anon.73, align 4
  %10 = alloca %union.anon.73, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(56) %1, i8 0, i32 56, i1 false)
  %11 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #12
  store i32 0, ptr %10, align 4
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %13 = tail call i32 @ps2_sliced_command(ptr noundef %12, i8 noundef zeroext 0) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %10, i32 1
  %17 = call i32 @ps2_command(ptr noundef %12, ptr noundef %16, i32 noundef 1001) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %2
  %20 = phi i32 [ %13, %2 ], [ %17, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  br label %158

21:                                               ; preds = %15
  %22 = load i32, ptr %10, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #12
  store i32 %23, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #12
  %24 = and i32 %23, 65280
  %25 = icmp eq i32 %24, 18176
  br i1 %25, label %26, label %158

26:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4
  %27 = call i32 @ps2_sliced_command(ptr noundef %12, i8 noundef zeroext 3) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %9, i32 1
  %31 = call i32 @ps2_command(ptr noundef %12, ptr noundef %30, i32 noundef 1001) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29, %26
  %34 = phi i32 [ %27, %26 ], [ %31, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  br label %158

35:                                               ; preds = %29
  %36 = load i32, ptr %9, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %36) #12
  store i32 %37, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  %38 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4
  %39 = call i32 @ps2_sliced_command(ptr noundef %12, i8 noundef zeroext 10) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds i8, ptr %8, i32 1
  %43 = call i32 @ps2_command(ptr noundef %12, ptr noundef %42, i32 noundef 1001) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %35
  %46 = phi i32 [ %39, %35 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  br label %158

47:                                               ; preds = %41
  %48 = load i32, ptr %8, align 4
  %49 = call i32 @llvm.bswap.i32(i32 %48) #12
  store i32 %49, ptr %38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %7, i8 0, i32 3, i1 false) #12, !annotation !8
  %50 = load i32, ptr %11, align 4
  %51 = shl i32 %50, 8
  %52 = and i32 %51, 3840
  %53 = lshr i32 %50, 16
  %54 = and i32 %53, 255
  %55 = or i32 %52, %54
  %56 = icmp ult i32 %55, 1797
  br i1 %56, label %83, label %57

57:                                               ; preds = %47
  %58 = call i32 @ps2_sliced_command(ptr noundef %12, i8 noundef zeroext 1) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = call i32 @ps2_command(ptr noundef %12, ptr noundef nonnull %7, i32 noundef 1001) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %60
  %64 = load i8, ptr %7, align 1
  %65 = and i8 %64, -4
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 6
  %68 = getelementptr inbounds [3 x i8], ptr %7, i32 0, i32 1
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %67, %70
  %72 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 2
  store i32 %71, ptr %72, align 4
  %73 = and i8 %64, 2
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4
  %77 = call i32 @ps2_sliced_command(ptr noundef %12, i8 noundef zeroext 16) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = getelementptr inbounds i8, ptr %6, i32 1
  %81 = call i32 @ps2_command(ptr noundef %12, ptr noundef %80, i32 noundef 1001) #12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %86

83:                                               ; preds = %63, %47
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #12
  br label %91

84:                                               ; preds = %60, %57
  %85 = phi i32 [ %58, %57 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #12
  br label %158

86:                                               ; preds = %79, %75
  %87 = phi i32 [ %77, %75 ], [ %81, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #12
  br label %158

88:                                               ; preds = %79
  %89 = load i32, ptr %6, align 4
  %90 = call i32 @llvm.bswap.i32(i32 %89) #12
  store i32 %90, ptr %76, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %7) #12
  br label %91

91:                                               ; preds = %88, %83
  %92 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4
  %93 = call i32 @ps2_sliced_command(ptr noundef %12, i8 noundef zeroext 2) #12
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = getelementptr inbounds i8, ptr %5, i32 1
  %97 = call i32 @ps2_command(ptr noundef %12, ptr noundef %96, i32 noundef 1001) #12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %93, %91 ], [ %97, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %158

101:                                              ; preds = %95
  %102 = load i32, ptr %5, align 4
  %103 = call i32 @llvm.bswap.i32(i32 %102) #12
  store i32 %103, ptr %92, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %104 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %104, align 4
  %105 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 4
  store i32 0, ptr %105, align 4
  %106 = load i32, ptr %11, align 4
  %107 = shl i32 %106, 8
  %108 = and i32 %107, 3840
  %109 = lshr i32 %106, 16
  %110 = and i32 %109, 255
  %111 = or i32 %108, %110
  %112 = icmp ugt i32 %111, 1796
  %113 = and i32 %103, 65280
  %114 = icmp eq i32 %113, 18176
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %116, label %158

116:                                              ; preds = %101
  %117 = and i32 %103, 8388608
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 0, ptr %92, align 4
  br label %140

120:                                              ; preds = %116
  %121 = and i32 %103, 7340032
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %140, label %123

123:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4
  %124 = call i32 @ps2_sliced_command(ptr noundef %12, i8 noundef zeroext 9) #12
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = getelementptr inbounds i8, ptr %4, i32 1
  %128 = call i32 @ps2_command(ptr noundef %12, ptr noundef %127, i32 noundef 1001) #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %131 = load ptr, ptr %12, align 4
  %132 = getelementptr inbounds %struct.serio, ptr %131, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %132, ptr noundef nonnull @.str.60) #13
  br label %140

133:                                              ; preds = %126
  %134 = load i32, ptr %4, align 4
  %135 = call i32 @llvm.bswap.i32(i32 %134) #12
  store i32 %135, ptr %105, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %136 = and i32 %135, 61440
  %137 = icmp ugt i32 %136, 32768
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = and i32 %135, -61441
  store i32 %139, ptr %105, align 4
  br label %140

140:                                              ; preds = %138, %133, %130, %120, %119
  %141 = load i32, ptr %92, align 4
  %142 = and i32 %141, 4194304
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4
  %145 = call i32 @ps2_sliced_command(ptr noundef %12, i8 noundef zeroext 12) #12
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %3, i32 1
  %149 = call i32 @ps2_command(ptr noundef %12, ptr noundef %148, i32 noundef 1001) #12
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, ptr %3, align 4
  %153 = call i32 @llvm.bswap.i32(i32 %152) #12
  store i32 %153, ptr %104, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %157

154:                                              ; preds = %147, %144
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %155 = load ptr, ptr %12, align 4
  %156 = getelementptr inbounds %struct.serio, ptr %155, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %156, ptr noundef nonnull @.str.61) #13
  br label %157

157:                                              ; preds = %154, %151, %140
  call fastcc void @synaptics_resolution(ptr noundef %0, ptr noundef %1)
  br label %158

158:                                              ; preds = %157, %101, %99, %86, %84, %45, %33, %21, %19
  %159 = phi i32 [ 0, %157 ], [ %34, %33 ], [ %46, %45 ], [ %85, %84 ], [ %87, %86 ], [ %100, %99 ], [ -6, %101 ], [ %20, %19 ], [ -6, %21 ]
  ret i32 %159
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @synaptics_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rmi_device_platform_data, align 4
  %3 = alloca %struct.i2c_board_info, align 4
  %4 = alloca %struct.synaptics_device_info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !8
  %5 = tail call i32 @psmouse_reset(ptr noundef %0) #12
  %6 = call fastcc i32 @synaptics_query_hardware(ptr noundef %0, ptr noundef nonnull %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef %6) #13
  br label %79

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.synaptics_device_info, ptr %4, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %65, label %17

17:                                               ; preds = %12
  %18 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @forcepad_pnp_ids) #12
  br i1 %18, label %23, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.3) #13
  br label %23

23:                                               ; preds = %19, %17
  %24 = load i32, ptr @synaptics_intertouch, align 4
  switch i32 %24, label %36 [
    i32 0, label %65
    i32 -1, label %25
  ]

25:                                               ; preds = %23
  %26 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @topbuttonpad_pnp_ids) #12
  br i1 %26, label %36, label %27

27:                                               ; preds = %25
  %28 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @smbus_pnp_ids) #12
  br i1 %28, label %36, label %29

29:                                               ; preds = %27
  %30 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @forcepad_pnp_ids) #12
  br i1 %30, label %65, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 18
  %35 = getelementptr inbounds %struct.serio, ptr %33, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.68, ptr noundef %35) #13
  br label %65

36:                                               ; preds = %27, %25, %23
  %37 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.69) #13
  %40 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @topbuttonpad_pnp_ids) #12
  %41 = getelementptr inbounds %struct.synaptics_device_info, ptr %4, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 65536
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %40, i1 %44, i1 false
  %46 = zext i1 %45 to i8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #12
  %47 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %2, i8 0, i64 112, i1 false) #12
  store i8 1, ptr %47, align 2
  %48 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 3, i32 1
  store i32 2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 3, i32 6
  store i8 %46, ptr %49, align 2
  %50 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 5
  %51 = lshr i32 %14, 20
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  store i8 %53, ptr %50, align 4
  %54 = getelementptr inbounds %struct.rmi_device_platform_data, ptr %2, i32 0, i32 5, i32 1
  %55 = lshr i32 %42, 16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  store i8 %57, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, ptr noundef nonnull align 4 dereferenceable(56) @__const.synaptics_create_intertouch.intertouch_board, i32 56, i1 false) #12
  %58 = call i32 @psmouse_smbus_init(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 112, i1 noundef zeroext true, i1 noundef zeroext true) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #12
  switch i32 %58, label %62 [
    i32 0, label %79
    i32 -11, label %59
  ]

59:                                               ; preds = %36
  %60 = load ptr, ptr %37, align 4
  %61 = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.70) #13
  br label %65

62:                                               ; preds = %36
  %63 = load ptr, ptr %37, align 4
  %64 = getelementptr inbounds %struct.serio, ptr %63, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.71) #13
  br label %65

65:                                               ; preds = %62, %59, %31, %29, %23, %12
  %66 = load i8, ptr @broken_olpc_ec, align 1, !range !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.serio, ptr %70, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.100) #13
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i32 [ 16, %68 ], [ 7, %65 ]
  %74 = call fastcc i32 @synaptics_init_ps2(ptr noundef %0, ptr noundef nonnull %4, i1 noundef zeroext %67) #12
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %75, i32 %73, i32 %74
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  call void @psmouse_smbus_cleanup(ptr noundef %0) #12
  br label %79

79:                                               ; preds = %78, %72, %36, %8
  %80 = phi i32 [ %6, %8 ], [ %76, %78 ], [ %76, %72 ], [ 21, %36 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #12
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @psmouse_matches_pnp_id(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_smbus_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sliced_command(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_init_ps2(ptr noundef %0, ptr nocapture noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 2
  %5 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @.compoundliteral) #12
  br i1 %5, label %6, label %23

6:                                                ; preds = %39, %36, %32, %30, %27, %23, %3
  %7 = phi i32 [ 2, %27 ], [ 0, %3 ], [ 1, %23 ], [ 3, %30 ], [ 4, %32 ], [ 6, %39 ], [ 5, %36 ]
  %8 = getelementptr [8 x %struct.min_max_quirk], ptr @min_max_pnpid_table, i32 0, i32 %7, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 12
  store i32 %9, ptr %10, align 4
  %11 = getelementptr [8 x %struct.min_max_quirk], ptr @min_max_pnpid_table, i32 0, i32 %7, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 10
  store i32 %12, ptr %13, align 4
  %14 = getelementptr [8 x %struct.min_max_quirk], ptr @min_max_pnpid_table, i32 0, i32 %7, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 13
  store i32 %15, ptr %16, align 4
  %17 = getelementptr [8 x %struct.min_max_quirk], ptr @min_max_pnpid_table, i32 0, i32 %7, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 11
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.9, i32 noundef %9, i32 noundef %12, i32 noundef %15, i32 noundef %18) #13
  br label %41

23:                                               ; preds = %3
  %24 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @.compoundliteral.12) #12
  br i1 %24, label %6, label %25

25:                                               ; preds = %23
  %26 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @.compoundliteral.19) #12
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, ptr %4, align 4
  %29 = icmp ugt i32 %28, 2961
  br i1 %29, label %30, label %6

30:                                               ; preds = %27, %25
  %31 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @.compoundliteral.21) #12
  br i1 %31, label %6, label %32

32:                                               ; preds = %30
  %33 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @.compoundliteral.23) #12
  br i1 %33, label %6, label %34

34:                                               ; preds = %32
  %35 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @.compoundliteral.25) #12
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, ptr %4, align 4
  %38 = icmp eq i32 %37, 2691
  br i1 %38, label %6, label %39

39:                                               ; preds = %36, %34
  %40 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @.compoundliteral.26) #12
  br i1 %40, label %6, label %41

41:                                               ; preds = %39, %6
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3520, i32 noundef 108) #14
  store ptr %43, ptr %0, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %244, label %45

45:                                               ; preds = %41
  %46 = zext i1 %2 to i8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %43, ptr noundef align 4 dereferenceable(56) %1, i32 56, i1 false)
  %47 = getelementptr inbounds %struct.synaptics_data, ptr %43, i32 0, i32 4
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.synaptics_data, ptr %43, i32 0, i32 5
  store i8 1, ptr %53, align 1
  br label %54

54:                                               ; preds = %52, %45
  %55 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @forcepad_pnp_ids) #12
  %56 = getelementptr inbounds %struct.synaptics_data, ptr %43, i32 0, i32 12
  %57 = zext i1 %55 to i8
  store i8 %57, ptr %56, align 2
  %58 = tail call fastcc i32 @synaptics_set_mode(ptr noundef %0)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.serio, ptr %62, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.4) #13
  br label %242

64:                                               ; preds = %54
  %65 = load i32, ptr %1, align 4
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 3, i32 0
  %69 = getelementptr inbounds %struct.synaptics_data, ptr %43, i32 0, i32 1
  store i32 %68, ptr %69, align 8
  %70 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.serio, ptr %71, i32 0, i32 18
  %73 = load i32, ptr %48, align 4
  %74 = lshr i32 %73, 4
  %75 = and i32 %74, 15
  %76 = and i32 %73, 15
  %77 = lshr i32 %73, 16
  %78 = and i32 %77, 255
  %79 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 4
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %4, align 4
  %88 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.5, i32 noundef %75, i32 noundef %76, i32 noundef %78, i32 noundef %65, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %87, i32 noundef %89) #13
  %90 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, -5
  store i32 %94, ptr %92, align 4
  %95 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 6
  %96 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(100) %95, i8 0, i64 100, i1 false) #12
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, 1
  store i32 %98, ptr %96, align 4
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 272) #12
  %99 = getelementptr inbounds %struct.synaptics_device_info, ptr %43, i32 0, i32 5
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 1048576
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %64
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 273) #12
  %104 = getelementptr inbounds %struct.synaptics_device_info, ptr %43, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 262144
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 274) #12
  br label %109

109:                                              ; preds = %108, %103, %64
  %110 = load i8, ptr %47, align 4, !range !9
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 2, i32 noundef 0) #12
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 2, i32 noundef 1) #12
  br label %196

113:                                              ; preds = %109
  tail call fastcc void @set_abs_position_params(ptr noundef %91, ptr noundef nonnull %43, i32 noundef 0, i32 noundef 1) #12
  tail call void @input_set_abs_params(ptr noundef %91, i32 noundef 24, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #12
  %114 = load i8, ptr @cr48_profile_sensor, align 1, !range !9
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  tail call void @input_set_abs_params(ptr noundef %91, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #12
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i32, ptr %99, align 4
  %119 = and i32 %118, 2048
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  tail call fastcc void @set_abs_position_params(ptr noundef %91, ptr noundef nonnull %43, i32 noundef 53, i32 noundef 54) #12
  tail call void @input_set_abs_params(ptr noundef %91, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #12
  %122 = tail call i32 @input_mt_init_slots(ptr noundef %91, i32 noundef 2, i32 noundef 9) #12
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %192

124:                                              ; preds = %121
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 335) #12
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 328) #12
  br label %138

125:                                              ; preds = %117
  %126 = and i32 %118, 524288
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %138, label %128

128:                                              ; preds = %125
  tail call fastcc void @set_abs_position_params(ptr noundef %91, ptr noundef nonnull %43, i32 noundef 53, i32 noundef 54) #12
  %129 = load i8, ptr @cr48_profile_sensor, align 1, !range !9
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i32 17, i32 9
  %132 = tail call i32 @input_mt_init_slots(ptr noundef %91, i32 noundef 2, i32 noundef %131) #12
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %192

134:                                              ; preds = %128
  %135 = load i8, ptr @cr48_profile_sensor, align 1, !range !9
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  tail call fastcc void @set_abs_position_params(ptr noundef %91, ptr noundef nonnull %43, i32 noundef 0, i32 noundef 1) #12
  br label %138

138:                                              ; preds = %137, %134, %125, %124
  %139 = getelementptr inbounds %struct.synaptics_device_info, ptr %43, i32 0, i32 3
  %140 = load i32, ptr %139, align 4
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %138
  tail call void @input_set_abs_params(ptr noundef %91, i32 noundef 28, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #12
  br label %144

144:                                              ; preds = %143, %138
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 330) #12
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 325) #12
  %145 = load i32, ptr %139, align 4
  %146 = and i32 %145, 2
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i32, ptr %99, align 4
  %150 = and i32 %149, 526336
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %148, %144
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 333) #12
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 334) #12
  %153 = load i32, ptr %139, align 4
  br label %154

154:                                              ; preds = %152, %148
  %155 = phi i32 [ %153, %152 ], [ %145, %148 ]
  %156 = and i32 %155, 262152
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 277) #12
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 278) #12
  br label %159

159:                                              ; preds = %158, %154
  %160 = getelementptr inbounds %struct.synaptics_device_info, ptr %43, i32 0, i32 6
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65536
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.synaptics_device_info, ptr %43, i32 0, i32 4
  %166 = load i32, ptr %165, align 8
  %167 = and i32 %166, 61440
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %169, %164
  %170 = phi i32 [ %172, %169 ], [ 0, %164 ]
  %171 = add nuw nsw i32 %170, 256
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef %171) #12
  %172 = add nuw nsw i32 %170, 1
  %173 = load i32, ptr %165, align 8
  %174 = lshr i32 %173, 12
  %175 = and i32 %174, 15
  %176 = icmp ult i32 %172, %175
  br i1 %176, label %169, label %177

177:                                              ; preds = %169, %164, %159
  %178 = load i32, ptr %99, align 4
  %179 = and i32 %178, 1048576
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %196, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %96, align 4
  %183 = or i32 %182, 4
  store i32 %183, ptr %96, align 4
  %184 = tail call zeroext i1 @psmouse_matches_pnp_id(ptr noundef %0, ptr noundef nonnull @topbuttonpad_pnp_ids) #12
  br i1 %184, label %185, label %196

185:                                              ; preds = %181
  %186 = load i32, ptr %160, align 8
  %187 = and i32 %186, 65536
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i32, ptr %96, align 4
  %191 = or i32 %190, 16
  store i32 %191, ptr %96, align 4
  br label %196

192:                                              ; preds = %128, %121
  %193 = phi i32 [ %122, %121 ], [ %132, %128 ]
  %194 = load ptr, ptr %70, align 4
  %195 = getelementptr inbounds %struct.serio, ptr %194, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.6, i32 noundef %193) #13
  br label %242

196:                                              ; preds = %189, %185, %181, %177, %112
  %197 = load i32, ptr %1, align 4
  %198 = lshr i32 %197, 8
  %199 = and i32 %198, 65280
  %200 = and i32 %197, 255
  %201 = or i32 %199, %200
  %202 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 14
  store i32 %201, ptr %202, align 4
  %203 = select i1 %2, ptr @synaptics_process_byte, ptr @psmouse_process_byte
  %204 = select i1 %2, i8 6, i8 3
  %205 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr %203, ptr %205, align 4
  %206 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 %204, ptr %206, align 2
  %207 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  store ptr @synaptics_set_rate, ptr %207, align 4
  %208 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  store ptr @synaptics_disconnect, ptr %208, align 4
  %209 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  store ptr @synaptics_reconnect, ptr %209, align 4
  %210 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 33
  store ptr @synaptics_reset, ptr %210, align 4
  %211 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 24
  store i32 0, ptr %211, align 4
  %212 = load i32, ptr %79, align 4
  %213 = and i32 %212, 128
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %196
  tail call fastcc void @synaptics_pt_create(ptr noundef %0)
  br label %216

216:                                              ; preds = %215, %196
  %217 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 21
  %218 = load i32, ptr %217, align 4
  %219 = icmp ult i32 %218, 80
  %220 = load i8, ptr @impaired_toshiba_kbc, align 1
  %221 = icmp eq i8 %220, 0
  %222 = select i1 %219, i1 true, i1 %221
  br i1 %222, label %227, label %223

223:                                              ; preds = %216
  %224 = load ptr, ptr %70, align 4
  %225 = getelementptr inbounds %struct.serio, ptr %224, i32 0, i32 18
  %226 = tail call ptr @dmi_get_system_info(i32 noundef 7) #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %225, ptr noundef nonnull @.str.7, ptr noundef %226) #13
  store i32 40, ptr %217, align 4
  br label %227

227:                                              ; preds = %223, %216
  %228 = load i8, ptr %47, align 4, !range !9
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %227
  %231 = load i32, ptr %48, align 4
  %232 = and i32 %231, 12
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr %70, align 4
  %236 = getelementptr inbounds %struct.serio, ptr %235, i32 0, i32 18
  %237 = tail call i32 @device_create_file(ptr noundef %236, ptr noundef nonnull @psmouse_attr_disable_gesture) #12
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %234
  %240 = load ptr, ptr %70, align 4
  %241 = getelementptr inbounds %struct.serio, ptr %240, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %241, ptr noundef nonnull @.str.8, i32 noundef %237) #13
  br label %242

242:                                              ; preds = %239, %192, %60
  %243 = phi i32 [ %58, %60 ], [ %193, %192 ], [ %237, %239 ]
  tail call void @kfree(ptr noundef nonnull %43) #12
  br label %244

244:                                              ; preds = %242, %234, %230, %227, %41
  %245 = phi i32 [ %243, %242 ], [ -12, %41 ], [ 0, %234 ], [ 0, %230 ], [ 0, %227 ]
  ret i32 %245
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_set_mode(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [1 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.synaptics_data, ptr %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.synaptics_data, ptr %3, i32 0, i32 4
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i8 0, i8 -128
  store i8 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.synaptics_data, ptr %3, i32 0, i32 5
  %10 = load i8, ptr %9, align 1, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = or i8 %8, 4
  store i8 %13, ptr %4, align 4
  br label %14

14:                                               ; preds = %12, %1
  %15 = phi i8 [ %13, %12 ], [ %8, %1 ]
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 21
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 79
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = or i8 %15, 64
  store i8 %20, ptr %4, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i8 [ %20, %19 ], [ %15, %14 ]
  %23 = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 8388608
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = or i8 %22, 1
  store i8 %28, ptr %4, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi i8 [ %28, %27 ], [ %22, %21 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  %31 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %32 = tail call i32 @ps2_sliced_command(ptr noundef %31, i8 noundef zeroext %30) #12
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %56

35:                                               ; preds = %29
  store i8 20, ptr %2, align 1
  %36 = call i32 @ps2_command(ptr noundef %31, ptr noundef nonnull %2, i32 noundef 4339) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i8, ptr %5, align 4, !range !9
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 526336
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = call i32 @ps2_sliced_command(ptr noundef %31, i8 noundef zeroext 3) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = call i32 @ps2_command(ptr noundef %31, ptr noundef nonnull @synaptics_set_advanced_gesture_mode.param, i32 noundef 4339) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %50, %49 ], [ %47, %46 ]
  %54 = load ptr, ptr %31, align 4
  %55 = getelementptr inbounds %struct.serio, ptr %54, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.27, i32 noundef %53) #13
  br label %56

56:                                               ; preds = %52, %49, %41, %38, %35, %34
  %57 = phi i32 [ %53, %52 ], [ %36, %35 ], [ 0, %49 ], [ 0, %41 ], [ 0, %38 ], [ %32, %34 ]
  ret i32 %57
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @synaptics_process_byte(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.synaptics_hw_state, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 1
  %6 = icmp ugt i8 %5, 5
  br i1 %6, label %7, label %444

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.synaptics_data, ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !10

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @synaptics_detect_pkt_type(ptr noundef %0)
  store i32 %12, ptr %8, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 128
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, -4
  %22 = icmp eq i8 %21, -124
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, -52
  %27 = icmp eq i8 %26, -60
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.synaptics_data, ptr %3, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %486, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.serio, ptr %30, i32 0, i32 18, i32 8
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = tail call i32 @serio_interrupt(ptr noundef nonnull %30, i8 noundef zeroext %42, i32 noundef 0) #12
  %44 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %45 = load i8, ptr %44, align 1
  %46 = tail call i32 @serio_interrupt(ptr noundef nonnull %30, i8 noundef zeroext %45, i32 noundef 0) #12
  %47 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %48 = load i8, ptr %47, align 1
  %49 = tail call i32 @serio_interrupt(ptr noundef nonnull %30, i8 noundef zeroext %48, i32 noundef 0) #12
  %50 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 10
  %51 = load i8, ptr %50, align 2
  %52 = icmp eq i8 %51, 4
  br i1 %52, label %53, label %486

53:                                               ; preds = %40, %36, %32
  %54 = phi i32 [ 2, %40 ], [ 1, %36 ], [ 1, %32 ]
  %55 = getelementptr i8, ptr %19, i32 %54
  %56 = load i8, ptr %55, align 1
  %57 = tail call i32 @serio_interrupt(ptr noundef nonnull %30, i8 noundef zeroext %56, i32 noundef 0) #12
  br label %486

58:                                               ; preds = %23, %18, %13
  %59 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #12
  %62 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false) #12
  %63 = load i32, ptr %61, align 4
  %64 = and i32 %63, 128
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %261, label %66

66:                                               ; preds = %58
  %67 = load i8, ptr %62, align 1
  %68 = zext i8 %67 to i32
  %69 = lshr i32 %68, 2
  %70 = and i32 %69, 12
  %71 = lshr i32 %68, 1
  %72 = and i32 %71, 2
  %73 = or i32 %70, %72
  %74 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %75 = load i8, ptr %74, align 1
  %76 = lshr i8 %75, 2
  %77 = and i8 %76, 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %73, %78
  %80 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 3
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.synaptics_device_info, ptr %61, i32 0, i32 5
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 526336
  %84 = icmp ne i32 %83, 0
  %85 = icmp eq i32 %79, 2
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %129

87:                                               ; preds = %66
  %88 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %89 = load i8, ptr %88, align 1
  %90 = lshr i8 %89, 4
  %91 = and i8 %90, 3
  %92 = zext i8 %91 to i32
  switch i32 %92, label %443 [
    i32 1, label %93
    i32 2, label %124
  ]

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 7
  %95 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 7, i32 3
  store i32 2, ptr %95, align 4
  %96 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %97 = load i8, ptr %96, align 1
  %98 = and i8 %97, 15
  %99 = zext i8 %98 to i32
  %100 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %99, 9
  %104 = shl nuw nsw i32 %102, 1
  %105 = or i32 %103, %104
  store i32 %105, ptr %94, align 4
  %106 = load i8, ptr %96, align 1
  %107 = and i8 %106, -16
  %108 = zext i8 %107 to i32
  %109 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %110 = load i8, ptr %109, align 1
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %108, 5
  %113 = shl nuw nsw i32 %111, 1
  %114 = or i32 %112, %113
  %115 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 7, i32 1
  store i32 %114, ptr %115, align 4
  %116 = load i8, ptr %74, align 1
  %117 = and i8 %116, 48
  %118 = load i8, ptr %88, align 1
  %119 = and i8 %118, 15
  %120 = or i8 %119, %117
  %121 = shl nuw nsw i8 %120, 1
  %122 = zext i8 %121 to i32
  %123 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 7, i32 2
  store i32 %122, ptr %123, align 4
  br label %443

124:                                              ; preds = %87
  %125 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i32
  %128 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 8
  store i32 %127, ptr %128, align 4
  br label %443

129:                                              ; preds = %66
  %130 = and i8 %75, 16
  %131 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = and i8 %132, 15
  %134 = or i8 %133, %130
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 8
  %137 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %138 = load i8, ptr %137, align 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %136, %139
  store i32 %140, ptr %2, align 4
  %141 = and i8 %75, 32
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 7
  %144 = and i8 %132, -16
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 4
  %147 = or i32 %146, %143
  %148 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i32
  %151 = or i32 %147, %150
  %152 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 1
  store i32 %151, ptr %152, align 4
  %153 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %154 = load i8, ptr %153, align 1
  %155 = zext i8 %154 to i32
  %156 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 2
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 4
  %158 = and i8 %67, 2
  %159 = and i8 %67, 3
  store i8 %159, ptr %157, align 4
  %160 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 12
  %161 = load i8, ptr %160, align 2, !range !9
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %196, label %163

163:                                              ; preds = %129
  %164 = icmp eq i8 %154, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 11
  store i8 0, ptr %166, align 1
  %167 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 10
  store i8 0, ptr %167, align 4
  br label %192

168:                                              ; preds = %163
  %169 = icmp ugt i32 %79, 3
  br i1 %169, label %170, label %190

170:                                              ; preds = %168
  %171 = xor i8 %75, %67
  %172 = and i8 %171, 1
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %190, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 10
  %176 = load i8, ptr %175, align 4, !range !9
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load volatile i32, ptr @jiffies, align 64
  %180 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 9
  store i32 %179, ptr %180, align 4
  store i8 1, ptr %175, align 4
  br label %192

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 9
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %183, 5
  %185 = load volatile i32, ptr @jiffies, align 64
  %186 = sub i32 %184, %185
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 11
  store i8 1, ptr %189, align 1
  br label %192

190:                                              ; preds = %170, %168
  %191 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 10
  store i8 0, ptr %191, align 4
  br label %192

192:                                              ; preds = %190, %188, %181, %178, %165
  %193 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 11
  %194 = load i8, ptr %193, align 1, !range !9
  %195 = or i8 %194, %158
  store i8 %195, ptr %157, align 4
  br label %215

196:                                              ; preds = %129
  %197 = and i32 %82, 1048576
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = xor i8 %75, %67
  %201 = and i8 %200, 1
  %202 = or i8 %201, %158
  store i8 %202, ptr %157, align 4
  br label %215

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.synaptics_device_info, ptr %61, i32 0, i32 3
  %205 = load i32, ptr %204, align 4
  %206 = and i32 %205, 262144
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %203
  %209 = xor i8 %75, %67
  %210 = shl i8 %209, 2
  %211 = and i8 %210, 4
  %212 = or i8 %211, %159
  store i8 %212, ptr %157, align 4
  br i1 %85, label %213, label %215

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 6
  store i8 %132, ptr %214, align 2
  br label %215

215:                                              ; preds = %213, %208, %203, %199, %192
  %216 = phi i8 [ 0, %199 ], [ 0, %208 ], [ %132, %213 ], [ 0, %203 ], [ 0, %192 ]
  %217 = phi i8 [ %202, %199 ], [ %212, %208 ], [ %212, %213 ], [ %159, %203 ], [ %195, %192 ]
  %218 = getelementptr inbounds %struct.synaptics_device_info, ptr %61, i32 0, i32 3
  %219 = load i32, ptr %218, align 4
  %220 = and i32 %219, 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %232, label %222

222:                                              ; preds = %215
  %223 = load i8, ptr %62, align 1
  %224 = load i8, ptr %74, align 1
  %225 = xor i8 %224, %223
  %226 = shl i8 %225, 3
  %227 = and i8 %226, 8
  %228 = and i8 %217, -25
  %229 = or i8 %227, %228
  %230 = and i8 %226, 16
  %231 = or i8 %229, %230
  store i8 %231, ptr %157, align 4
  br label %232

232:                                              ; preds = %222, %215
  %233 = phi i8 [ %231, %222 ], [ %217, %215 ]
  %234 = getelementptr inbounds %struct.synaptics_device_info, ptr %61, i32 0, i32 4
  %235 = load i32, ptr %234, align 4
  %236 = and i32 %235, 61440
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %299, label %238

238:                                              ; preds = %232
  %239 = load i8, ptr %62, align 1
  %240 = load i8, ptr %74, align 1
  %241 = xor i8 %240, %239
  %242 = and i8 %241, 2
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %299, label %244

244:                                              ; preds = %238
  %245 = lshr i32 %235, 12
  %246 = and i32 %245, 15
  %247 = add nuw nsw i32 %246, 1
  %248 = lshr i32 %247, 1
  %249 = sub nuw nsw i32 32, %248
  %250 = lshr i32 -1, %249
  %251 = load i8, ptr %137, align 1
  %252 = trunc i32 %250 to i8
  %253 = and i8 %251, %252
  %254 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 5
  %255 = load i8, ptr %148, align 1
  %256 = zext i8 %255 to i32
  %257 = and i32 %250, %256
  %258 = shl nuw nsw i32 %257, %248
  %259 = trunc i32 %258 to i8
  %260 = or i8 %253, %259
  store i8 %260, ptr %254, align 1
  br label %299

261:                                              ; preds = %58
  %262 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %263 = load i8, ptr %262, align 1
  %264 = and i8 %263, 31
  %265 = zext i8 %264 to i32
  %266 = shl nuw nsw i32 %265, 8
  %267 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 2
  %268 = load i8, ptr %267, align 1
  %269 = zext i8 %268 to i32
  %270 = or i32 %266, %269
  store i32 %270, ptr %2, align 4
  %271 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 4
  %272 = load i8, ptr %271, align 1
  %273 = and i8 %272, 31
  %274 = zext i8 %273 to i32
  %275 = shl nuw nsw i32 %274, 8
  %276 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 5
  %277 = load i8, ptr %276, align 1
  %278 = zext i8 %277 to i32
  %279 = or i32 %275, %278
  %280 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 1
  store i32 %279, ptr %280, align 4
  %281 = load i8, ptr %62, align 1
  %282 = shl i8 %281, 2
  %283 = and i8 %282, -64
  %284 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %285 = load i8, ptr %284, align 1
  %286 = and i8 %285, 63
  %287 = or i8 %283, %286
  %288 = zext i8 %287 to i32
  %289 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 2
  store i32 %288, ptr %289, align 4
  %290 = lshr i8 %263, 4
  %291 = and i8 %290, 8
  %292 = lshr i8 %281, 1
  %293 = and i8 %292, 2
  %294 = or i8 %293, %291
  %295 = zext i8 %294 to i32
  %296 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 3
  store i32 %295, ptr %296, align 4
  %297 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 4
  %298 = and i8 %281, 3
  store i8 %298, ptr %297, align 4
  br label %299

299:                                              ; preds = %261, %244, %238, %232
  %300 = phi i8 [ %298, %261 ], [ %233, %244 ], [ %233, %238 ], [ %233, %232 ]
  %301 = phi i8 [ 0, %261 ], [ %216, %244 ], [ %216, %238 ], [ %216, %232 ]
  %302 = phi i32 [ %295, %261 ], [ %79, %244 ], [ %79, %238 ], [ %79, %232 ]
  %303 = phi i32 [ %288, %261 ], [ %155, %244 ], [ %155, %238 ], [ %155, %232 ]
  %304 = phi i32 [ %279, %261 ], [ %151, %244 ], [ %151, %238 ], [ %151, %232 ]
  %305 = phi i32 [ %270, %261 ], [ %140, %244 ], [ %140, %238 ], [ %140, %232 ]
  %306 = icmp sgt i32 %305, 8176
  br i1 %306, label %307, label %309

307:                                              ; preds = %299
  %308 = add nsw i32 %305, -8192
  br label %311

309:                                              ; preds = %299
  %310 = icmp eq i32 %305, 8176
  br i1 %310, label %311, label %313

311:                                              ; preds = %309, %307
  %312 = phi i32 [ %308, %307 ], [ 6143, %309 ]
  store i32 %312, ptr %2, align 4
  br label %313

313:                                              ; preds = %311, %309
  %314 = phi i32 [ %312, %311 ], [ %305, %309 ]
  %315 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 1
  %316 = icmp sgt i32 %304, 8176
  br i1 %316, label %317, label %319

317:                                              ; preds = %313
  %318 = add nsw i32 %304, -8192
  br label %321

319:                                              ; preds = %313
  %320 = icmp eq i32 %304, 8176
  br i1 %320, label %321, label %323

321:                                              ; preds = %319, %317
  %322 = phi i32 [ %318, %317 ], [ 6143, %319 ]
  store i32 %322, ptr %315, align 4
  br label %323

323:                                              ; preds = %321, %319
  %324 = getelementptr inbounds %struct.synaptics_device_info, ptr %61, i32 0, i32 5
  %325 = load i32, ptr %324, align 4
  %326 = and i32 %325, 2048
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %342, label %328

328:                                              ; preds = %323
  %329 = load ptr, ptr %0, align 4
  %330 = icmp eq i32 %303, 0
  br i1 %330, label %340, label %331

331:                                              ; preds = %328
  %332 = icmp sgt i32 %302, 3
  br i1 %332, label %340, label %333

333:                                              ; preds = %331
  switch i32 %302, label %339 [
    i32 0, label %340
    i32 1, label %334
  ]

334:                                              ; preds = %333
  %335 = getelementptr inbounds %struct.synaptics_data, ptr %329, i32 0, i32 8
  %336 = load i32, ptr %335, align 4
  %337 = icmp eq i32 %336, 0
  %338 = select i1 %337, i32 3, i32 %336
  br label %340

339:                                              ; preds = %333
  br label %340

340:                                              ; preds = %339, %334, %333, %331, %328
  %341 = phi i32 [ %338, %334 ], [ 4, %339 ], [ 0, %328 ], [ 1, %331 ], [ 2, %333 ]
  call fastcc void @synaptics_report_mt_data(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %341) #12
  br label %443

342:                                              ; preds = %323
  %343 = icmp eq i8 %301, 0
  br i1 %343, label %373, label %344

344:                                              ; preds = %342
  %345 = sext i8 %301 to i32
  %346 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 3
  %347 = load i32, ptr %346, align 4
  %348 = add i32 %347, %345
  store i32 %348, ptr %346, align 4
  %349 = icmp sgt i32 %348, 3
  br i1 %349, label %350, label %356

350:                                              ; preds = %344
  %351 = lshr i8 %300, 4
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  %354 = zext i8 %353 to i32
  %355 = zext i8 %352 to i32
  br label %365

356:                                              ; preds = %365, %344
  %357 = phi i32 [ %348, %344 ], [ %367, %365 ]
  %358 = icmp slt i32 %357, -3
  br i1 %358, label %359, label %443

359:                                              ; preds = %356
  %360 = lshr i8 %300, 3
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  %363 = zext i8 %362 to i32
  %364 = zext i8 %361 to i32
  br label %369

365:                                              ; preds = %365, %350
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef 278, i32 noundef %354) #12
  tail call void @input_event(ptr noundef %60, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef 278, i32 noundef %355) #12
  tail call void @input_event(ptr noundef %60, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %366 = load i32, ptr %346, align 4
  %367 = add i32 %366, -4
  store i32 %367, ptr %346, align 4
  %368 = icmp sgt i32 %367, 3
  br i1 %368, label %365, label %356

369:                                              ; preds = %369, %359
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef 277, i32 noundef %363) #12
  tail call void @input_event(ptr noundef %60, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef 277, i32 noundef %364) #12
  tail call void @input_event(ptr noundef %60, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %370 = load i32, ptr %346, align 4
  %371 = add i32 %370, 4
  store i32 %371, ptr %346, align 4
  %372 = icmp slt i32 %371, -3
  br i1 %372, label %369, label %443

373:                                              ; preds = %342
  %374 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 2
  %375 = icmp ne i32 %303, 0
  %376 = icmp sgt i32 %314, 1
  %377 = select i1 %375, i1 %376, i1 false
  br i1 %377, label %378, label %396

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.synaptics_device_info, ptr %61, i32 0, i32 3
  %380 = load i32, ptr %379, align 4
  %381 = and i32 %380, 8388608
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %396, label %383

383:                                              ; preds = %378
  switch i32 %302, label %396 [
    i32 0, label %384
    i32 1, label %384
    i32 15, label %392
    i32 4, label %392
    i32 5, label %392
    i32 6, label %392
    i32 7, label %392
    i32 8, label %392
    i32 9, label %392
    i32 10, label %392
    i32 11, label %392
    i32 12, label %392
    i32 13, label %392
    i32 14, label %392
  ]

384:                                              ; preds = %383, %383
  %385 = and i32 %380, 2
  %386 = icmp ne i32 %385, 0
  %387 = and i32 %325, 526336
  %388 = icmp ne i32 %387, 0
  %389 = select i1 %386, i1 true, i1 %388
  %390 = add nuw nsw i32 %302, 2
  %391 = select i1 %389, i32 %390, i32 1
  br label %396

392:                                              ; preds = %383, %383, %383, %383, %383, %383, %383, %383, %383, %383, %383, %383
  %393 = and i32 %380, 1
  %394 = icmp eq i32 %393, 0
  %395 = select i1 %394, i32 5, i32 %302
  br label %396

396:                                              ; preds = %392, %384, %383, %378, %373
  %397 = phi i32 [ 1, %383 ], [ 1, %378 ], [ 1, %392 ], [ 0, %373 ], [ %391, %384 ]
  %398 = phi i32 [ 5, %383 ], [ 5, %378 ], [ %395, %392 ], [ 0, %373 ], [ 5, %384 ]
  %399 = load i8, ptr @cr48_profile_sensor, align 1, !range !9
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %402, label %401

401:                                              ; preds = %396
  call fastcc void @synaptics_report_mt_data(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %397) #12
  br label %443

402:                                              ; preds = %396
  %403 = and i32 %325, 524288
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %402
  %406 = getelementptr inbounds %struct.synaptics_data, ptr %61, i32 0, i32 7
  call fastcc void @synaptics_report_semi_mt_data(ptr noundef %60, ptr noundef nonnull %2, ptr noundef %406, i32 noundef %397) #12
  %407 = load i32, ptr %374, align 4
  br label %408

408:                                              ; preds = %405, %402
  %409 = phi i32 [ %407, %405 ], [ %303, %402 ]
  %410 = icmp sgt i32 %409, 30
  br i1 %410, label %413, label %411

411:                                              ; preds = %408
  %412 = icmp slt i32 %409, 25
  br i1 %412, label %413, label %415

413:                                              ; preds = %411, %408
  %414 = phi i32 [ 1, %408 ], [ 0, %411 ]
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef 330, i32 noundef %414) #12
  br label %415

415:                                              ; preds = %413, %411
  %416 = icmp eq i32 %397, 0
  br i1 %416, label %421, label %417

417:                                              ; preds = %415
  %418 = load i32, ptr %2, align 4
  tail call void @input_event(ptr noundef %60, i32 noundef 3, i32 noundef 0, i32 noundef %418) #12
  %419 = load i32, ptr %315, align 4
  %420 = sub i32 5856, %419
  tail call void @input_event(ptr noundef %60, i32 noundef 3, i32 noundef 1, i32 noundef %420) #12
  br label %421

421:                                              ; preds = %417, %415
  tail call void @input_event(ptr noundef %60, i32 noundef 3, i32 noundef 24, i32 noundef %409) #12
  %422 = getelementptr inbounds %struct.synaptics_device_info, ptr %61, i32 0, i32 3
  %423 = load i32, ptr %422, align 4
  %424 = and i32 %423, 1
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %427, label %426

426:                                              ; preds = %421
  tail call void @input_event(ptr noundef %60, i32 noundef 3, i32 noundef 28, i32 noundef %398) #12
  br label %427

427:                                              ; preds = %426, %421
  %428 = icmp eq i32 %397, 1
  %429 = zext i1 %428 to i32
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef 325, i32 noundef %429) #12
  %430 = load i32, ptr %422, align 4
  %431 = and i32 %430, 2
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %427
  %434 = load i32, ptr %324, align 4
  %435 = and i32 %434, 526336
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %442, label %437

437:                                              ; preds = %433, %427
  %438 = icmp eq i32 %397, 2
  %439 = zext i1 %438 to i32
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef 333, i32 noundef %439) #12
  %440 = icmp eq i32 %397, 3
  %441 = zext i1 %440 to i32
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef 334, i32 noundef %441) #12
  br label %442

442:                                              ; preds = %437, %433
  call fastcc void @synaptics_report_buttons(ptr noundef %0, ptr noundef nonnull %2) #12
  tail call void @input_event(ptr noundef %60, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %443

443:                                              ; preds = %442, %401, %369, %356, %340, %124, %93, %87
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #12
  br label %486

444:                                              ; preds = %1
  %445 = zext i8 %5 to i32
  %446 = add nsw i32 %445, -1
  %447 = getelementptr inbounds %struct.synaptics_data, ptr %3, i32 0, i32 1
  %448 = load i32, ptr %447, align 4
  %449 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %450 = icmp eq i8 %5, 0
  br i1 %450, label %483, label %451

451:                                              ; preds = %444
  switch i32 %448, label %479 [
    i32 0, label %452
    i32 2, label %452
    i32 1, label %461
    i32 3, label %470
  ]

452:                                              ; preds = %451, %451
  %453 = getelementptr i8, ptr %449, i32 %446
  %454 = load i8, ptr %453, align 1
  %455 = getelementptr [5 x i8], ptr @synaptics_validate_byte.newabs_rel_mask, i32 0, i32 %446
  %456 = load i8, ptr %455, align 1
  %457 = and i8 %456, %454
  %458 = getelementptr [5 x i8], ptr @synaptics_validate_byte.newabs_rslt, i32 0, i32 %446
  %459 = load i8, ptr %458, align 1
  %460 = icmp eq i8 %457, %459
  br label %483

461:                                              ; preds = %451
  %462 = getelementptr i8, ptr %449, i32 %446
  %463 = load i8, ptr %462, align 1
  %464 = getelementptr [5 x i8], ptr @synaptics_validate_byte.newabs_mask, i32 0, i32 %446
  %465 = load i8, ptr %464, align 1
  %466 = and i8 %465, %463
  %467 = getelementptr [5 x i8], ptr @synaptics_validate_byte.newabs_rslt, i32 0, i32 %446
  %468 = load i8, ptr %467, align 1
  %469 = icmp eq i8 %466, %468
  br label %483

470:                                              ; preds = %451
  %471 = getelementptr i8, ptr %449, i32 %446
  %472 = load i8, ptr %471, align 1
  %473 = getelementptr [5 x i8], ptr @synaptics_validate_byte.oldabs_mask, i32 0, i32 %446
  %474 = load i8, ptr %473, align 1
  %475 = and i8 %474, %472
  %476 = getelementptr [5 x i8], ptr @synaptics_validate_byte.oldabs_rslt, i32 0, i32 %446
  %477 = load i8, ptr %476, align 1
  %478 = icmp eq i8 %475, %477
  br label %483

479:                                              ; preds = %451
  %480 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %481 = load ptr, ptr %480, align 4
  %482 = getelementptr inbounds %struct.serio, ptr %481, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %482, ptr noundef nonnull @.str.50, i32 noundef %448) #13
  br label %483

483:                                              ; preds = %479, %470, %461, %452, %444
  %484 = phi i1 [ false, %479 ], [ %478, %470 ], [ %469, %461 ], [ %460, %452 ], [ false, %444 ]
  %485 = zext i1 %484 to i32
  br label %486

486:                                              ; preds = %483, %443, %53, %40, %28
  %487 = phi i32 [ %485, %483 ], [ 2, %28 ], [ 2, %443 ], [ 2, %40 ], [ 2, %53 ]
  ret i32 %487
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_process_byte(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @synaptics_set_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp ugt i32 %1, 79
  %6 = getelementptr inbounds %struct.synaptics_data, ptr %4, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, -65
  %9 = select i1 %5, i8 64, i8 0
  %10 = or i8 %8, %9
  %11 = select i1 %5, i32 80, i32 40
  store i8 %10, ptr %6, align 4
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 21
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.synaptics_data, ptr %4, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  %15 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %16 = tail call i32 @ps2_sliced_command(ptr noundef %15, i8 noundef zeroext %14) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  store i8 20, ptr %3, align 1
  %19 = call i32 @ps2_command(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 4339) #12
  br label %20

20:                                               ; preds = %18, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @synaptics_disconnect(ptr noundef %0) #0 {
  %2 = alloca [1 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  tail call void @psmouse_smbus_cleanup(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.synaptics_data, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 18
  tail call void @device_remove_file(ptr noundef %15, ptr noundef nonnull @psmouse_attr_disable_gesture) #12
  br label %16

16:                                               ; preds = %12, %7, %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  %17 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %18 = tail call i32 @ps2_sliced_command(ptr noundef %17, i8 noundef zeroext 0) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  store i8 20, ptr %2, align 1
  %21 = call i32 @ps2_command(ptr noundef %17, ptr noundef nonnull %2, i32 noundef 4339) #12
  br label %22

22:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  call void @kfree(ptr noundef %3) #12
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @synaptics_reconnect(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 4
  %3 = alloca %struct.synaptics_device_info, align 4
  %4 = alloca [2 x i8], align 2
  %5 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i32 56, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #12
  store i16 0, ptr %4, align 2, !annotation !8
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 1
  %8 = call i32 @psmouse_reset(ptr noundef %0) #12
  %9 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 754) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %10 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %11 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %12 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %13 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %14 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 1001) #12
  %15 = load i8, ptr %7, align 1
  %16 = icmp eq i8 %15, 71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br i1 %16, label %39, label %17

17:                                               ; preds = %1
  %18 = call i32 @psmouse_reset(ptr noundef %0) #12
  call void @msleep(i32 noundef 1000) #12
  %19 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 754) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %20 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %21 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %22 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %23 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %24 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 1001) #12
  %25 = load i8, ptr %7, align 1
  %26 = icmp eq i8 %25, 71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br i1 %26, label %37, label %27, !llvm.loop !11

27:                                               ; preds = %17
  %28 = call i32 @psmouse_reset(ptr noundef %0) #12
  call void @msleep(i32 noundef 1000) #12
  %29 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %4, i32 noundef 754) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4
  %30 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %31 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %32 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %33 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 4328) #12
  %34 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 1001) #12
  %35 = load i8, ptr %7, align 1
  %36 = icmp eq i8 %35, 71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %37

37:                                               ; preds = %27, %17
  %38 = phi i1 [ %26, %17 ], [ %36, %27 ]
  br i1 %38, label %39, label %89

39:                                               ; preds = %37, %1
  %40 = call fastcc i32 @synaptics_query_hardware(ptr noundef %0, ptr noundef nonnull %3)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr inbounds %struct.serio, ptr %43, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.51) #13
  br label %89

45:                                               ; preds = %39
  %46 = call fastcc i32 @synaptics_set_mode(ptr noundef %0)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %6, align 4
  %50 = getelementptr inbounds %struct.serio, ptr %49, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.4) #13
  br label %89

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 7
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.synaptics_device_info, ptr %5, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, ptr %5, align 4
  %59 = load i32, ptr %3, align 4
  br label %76

60:                                               ; preds = %51
  %61 = load i32, ptr %3, align 4
  %62 = load i32, ptr %5, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.synaptics_device_info, ptr %5, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 4
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.synaptics_device_info, ptr %5, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %89, label %76

76:                                               ; preds = %70, %64, %60, %57
  %77 = phi i32 [ %59, %57 ], [ %61, %60 ], [ %61, %64 ], [ %61, %70 ]
  %78 = phi i32 [ %58, %57 ], [ %62, %60 ], [ %61, %64 ], [ %61, %70 ]
  %79 = load ptr, ptr %6, align 4
  %80 = getelementptr inbounds %struct.serio, ptr %79, i32 0, i32 18
  %81 = getelementptr inbounds %struct.synaptics_device_info, ptr %5, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.synaptics_device_info, ptr %5, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.synaptics_device_info, ptr %3, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.52, i32 noundef %55, i32 noundef %53, i32 noundef %78, i32 noundef %77, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88) #13
  br label %89

89:                                               ; preds = %76, %70, %48, %42, %37
  %90 = phi i32 [ %40, %42 ], [ %46, %48 ], [ -6, %76 ], [ -19, %37 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @synaptics_pt_create(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 768) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.53) #13
  br label %24

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 5
  store i8 5, ptr %10, align 1
  %11 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 1
  %12 = tail call i32 @strlcpy(ptr noundef %11, ptr noundef nonnull @.str.54, i32 noundef 32) #12
  %13 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 2
  %14 = tail call i32 @strlcpy(ptr noundef %13, ptr noundef nonnull @.str.55, i32 noundef 32) #12
  %15 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 7
  store ptr @synaptics_pt_write, ptr %15, align 8
  %16 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 10
  store ptr @synaptics_pt_start, ptr %16, align 4
  %17 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 11
  store ptr @synaptics_pt_stop, ptr %17, align 8
  %18 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 12
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 35
  store ptr @synaptics_pt_activate, ptr %21, align 4
  %22 = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 18
  %23 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.56, ptr noundef %11, ptr noundef %23) #13
  tail call void @__serio_register_port(ptr noundef nonnull %3, ptr noundef null) #12
  br label %24

24:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmi_get_system_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_abs_position_params(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1472, i32 %6
  %9 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 5472, i32 %10
  %13 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 13
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 1408, i32 %14
  %17 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 4448, i32 %18
  %21 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 7
  %24 = and i32 %23, 8
  tail call void @input_set_abs_params(ptr noundef %0, i32 noundef %2, i32 noundef %8, i32 noundef %12, i32 noundef %24, i32 noundef 0) #12
  tail call void @input_set_abs_params(ptr noundef %0, i32 noundef %3, i32 noundef %16, i32 noundef %20, i32 noundef %24, i32 noundef 0) #12
  %25 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  tail call void @input_alloc_absinfo(ptr noundef %0) #12
  %27 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %4
  %31 = getelementptr %struct.input_absinfo, ptr %28, i32 %2, i32 5
  store i32 %26, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %4
  %33 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  tail call void @input_alloc_absinfo(ptr noundef %0) #12
  %35 = load ptr, ptr %27, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = getelementptr %struct.input_absinfo, ptr %35, i32 %3, i32 5
  store i32 %34, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_detect_pkt_type(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 1
  %4 = and i8 %3, -56
  %5 = icmp eq i8 %4, -128
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, -56
  %10 = icmp eq i8 %9, -64
  br i1 %10, label %15, label %11

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.49) #13
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 2, %11 ], [ 1, %6 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @synaptics_report_mt_data(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x ptr], align 8
  %5 = alloca [2 x %struct.input_mt_pos], align 8
  %6 = alloca [2 x i32], align 8
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store ptr %1, ptr %4, align 8
  %10 = getelementptr inbounds ptr, ptr %4, i32 1
  %11 = getelementptr inbounds %struct.synaptics_data, ptr %9, i32 0, i32 7
  store ptr %11, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  store i64 0, ptr %6, align 8, !annotation !8
  %12 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 2)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load i32, ptr %1, align 4
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr %5, align 8
  %18 = getelementptr inbounds %struct.synaptics_hw_state, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i16
  %21 = sub i16 5856, %20
  %22 = getelementptr inbounds [2 x %struct.input_mt_pos], ptr %5, i32 0, i32 0, i32 1
  store i16 %21, ptr %22, align 2
  %23 = icmp eq i32 %13, 1
  br i1 %23, label %48, label %29

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.synaptics_device_info, ptr %9, i32 0, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, 10
  %28 = call i32 @input_mt_assign_slots(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %13, i32 noundef %27) #12
  br label %71

29:                                               ; preds = %29, %15
  %30 = phi i32 [ %41, %29 ], [ 1, %15 ]
  %31 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i16
  %35 = getelementptr [2 x %struct.input_mt_pos], ptr %5, i32 0, i32 %30
  store i16 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.synaptics_hw_state, ptr %32, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = trunc i32 %37 to i16
  %39 = sub i16 5856, %38
  %40 = getelementptr [2 x %struct.input_mt_pos], ptr %5, i32 0, i32 %30, i32 1
  store i16 %39, ptr %40, align 2
  %41 = add nuw nsw i32 %30, 1
  %42 = icmp eq i32 %41, %13
  br i1 %42, label %43, label %29

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.synaptics_device_info, ptr %9, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = mul i32 %45, 10
  %47 = call i32 @input_mt_assign_slots(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %13, i32 noundef %46) #12
  br i1 %14, label %71, label %53

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.synaptics_device_info, ptr %9, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = mul i32 %50, 10
  %52 = call i32 @input_mt_assign_slots(ptr noundef %8, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef %13, i32 noundef %51) #12
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %54, %53
  %55 = phi i32 [ %69, %54 ], [ 0, %53 ]
  %56 = getelementptr [2 x i32], ptr %6, i32 0, i32 %55
  %57 = load i32, ptr %56, align 4
  call void @input_event(ptr noundef %8, i32 noundef 3, i32 noundef 47, i32 noundef %57) #12
  %58 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %8, i32 noundef 0, i1 noundef zeroext true) #12
  %59 = getelementptr [2 x %struct.input_mt_pos], ptr %5, i32 0, i32 %55
  %60 = load i16, ptr %59, align 4
  %61 = sext i16 %60 to i32
  call void @input_event(ptr noundef %8, i32 noundef 3, i32 noundef 53, i32 noundef %61) #12
  %62 = getelementptr [2 x %struct.input_mt_pos], ptr %5, i32 0, i32 %55, i32 1
  %63 = load i16, ptr %62, align 2
  %64 = sext i16 %63 to i32
  call void @input_event(ptr noundef %8, i32 noundef 3, i32 noundef 54, i32 noundef %64) #12
  %65 = getelementptr [2 x ptr], ptr %4, i32 0, i32 %55
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.synaptics_hw_state, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  call void @input_event(ptr noundef %8, i32 noundef 3, i32 noundef 58, i32 noundef %68) #12
  %69 = add nuw nsw i32 %55, 1
  %70 = icmp eq i32 %69, %13
  br i1 %70, label %71, label %54

71:                                               ; preds = %54, %43, %24
  call void @input_mt_drop_unused(ptr noundef %8) #12
  call void @input_mt_report_pointer_emulation(ptr noundef %8, i1 noundef zeroext false) #12
  call void @input_mt_report_finger_count(ptr noundef %8, i32 noundef %2) #12
  call fastcc void @synaptics_report_buttons(ptr noundef %0, ptr noundef %1)
  call void @input_event(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @synaptics_report_semi_mt_data(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp sgt i32 %3, 1
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 4
  %8 = load i32, ptr %2, align 4
  %9 = tail call i32 @llvm.smin.i32(i32 %7, i32 %8)
  %10 = getelementptr inbounds %struct.synaptics_hw_state, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.synaptics_hw_state, ptr %2, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.smin.i32(i32 %11, i32 %13)
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef 0) #12
  %15 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #12
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 53, i32 noundef %9) #12
  %16 = sub i32 5856, %14
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 54, i32 noundef %16) #12
  %17 = load i32, ptr %1, align 4
  %18 = load i32, ptr %2, align 4
  %19 = tail call i32 @llvm.smax.i32(i32 %17, i32 %18)
  %20 = load i32, ptr %10, align 4
  %21 = load i32, ptr %12, align 4
  %22 = tail call i32 @llvm.smax.i32(i32 %20, i32 %21)
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef 1) #12
  %23 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #12
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 53, i32 noundef %19) #12
  %24 = sub i32 5856, %22
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 54, i32 noundef %24) #12
  br label %37

25:                                               ; preds = %4
  %26 = icmp eq i32 %3, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = load i32, ptr %1, align 4
  %29 = getelementptr inbounds %struct.synaptics_hw_state, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef 0) #12
  %31 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true) #12
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 53, i32 noundef %28) #12
  %32 = sub i32 5856, %30
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 54, i32 noundef %32) #12
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef 1) #12
  %33 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #12
  br label %37

34:                                               ; preds = %25
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef 0) #12
  %35 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #12
  tail call void @input_event(ptr noundef %0, i32 noundef 3, i32 noundef 47, i32 noundef 1) #12
  %36 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #12
  br label %37

37:                                               ; preds = %34, %27, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @synaptics_report_buttons(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.synaptics_hw_state, ptr %1, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 272, i32 noundef %9) #12
  %10 = load i8, ptr %6, align 4
  %11 = lshr i8 %10, 1
  %12 = and i8 %11, 1
  %13 = zext i8 %12 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 273, i32 noundef %13) #12
  %14 = getelementptr inbounds %struct.synaptics_device_info, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 262144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i8, ptr %6, align 4
  %20 = lshr i8 %19, 2
  %21 = and i8 %20, 1
  %22 = zext i8 %21 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 274, i32 noundef %22) #12
  %23 = load i32, ptr %14, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = phi i32 [ %23, %18 ], [ %15, %2 ]
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = load i8, ptr %6, align 4
  %30 = lshr i8 %29, 3
  %31 = and i8 %30, 1
  %32 = zext i8 %31 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 277, i32 noundef %32) #12
  %33 = load i8, ptr %6, align 4
  %34 = lshr i8 %33, 4
  %35 = and i8 %34, 1
  %36 = zext i8 %35 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 278, i32 noundef %36) #12
  br label %37

37:                                               ; preds = %28, %24
  %38 = load ptr, ptr %3, align 4
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.synaptics_device_info, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 12
  %43 = and i32 %42, 15
  %44 = add nuw nsw i32 %43, 1
  %45 = lshr i32 %44, 1
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %106, label %47

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.synaptics_device_info, ptr %39, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = shl i32 %49, 8
  %51 = and i32 %50, 3840
  %52 = lshr i32 %49, 16
  %53 = and i32 %52, 255
  %54 = add nuw nsw i32 %53, -2049
  %55 = add nsw i32 %54, %51
  %56 = icmp ult i32 %55, 2
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %59 = load i8, ptr %58, align 4
  %60 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = xor i8 %61, %59
  %63 = and i8 %62, 2
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %106, label %65

65:                                               ; preds = %57, %47
  %66 = getelementptr inbounds %struct.synaptics_device_info, ptr %39, i32 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 65536
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.synaptics_hw_state, ptr %1, i32 0, i32 5
  %72 = tail call i32 @llvm.umax.i32(i32 %45, i32 1) #12
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi i32 [ 0, %70 ], [ %87, %73 ]
  %75 = shl nuw i32 %74, 1
  %76 = add nuw nsw i32 %75, 256
  %77 = load i8, ptr %71, align 1
  %78 = zext i8 %77 to i32
  %79 = lshr i32 %78, %74
  %80 = and i32 %79, 1
  tail call void @input_event(ptr noundef %38, i32 noundef 1, i32 noundef %76, i32 noundef %80) #12
  %81 = add nuw nsw i32 %75, 257
  %82 = load i8, ptr %71, align 1
  %83 = zext i8 %82 to i32
  %84 = add nuw nsw i32 %74, %45
  %85 = lshr i32 %83, %84
  %86 = and i32 %85, 1
  tail call void @input_event(ptr noundef %38, i32 noundef 1, i32 noundef %81, i32 noundef %86) #12
  %87 = add nuw nsw i32 %74, 1
  %88 = icmp eq i32 %87, %72
  br i1 %88, label %106, label %73

89:                                               ; preds = %65
  %90 = getelementptr inbounds %struct.synaptics_data, ptr %39, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %106, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.synaptics_hw_state, ptr %1, i32 0, i32 5
  %95 = load i8, ptr %94, align 1
  %96 = and i8 %95, 1
  %97 = lshr i8 %95, 1
  %98 = and i8 %97, 2
  %99 = or i8 %98, %96
  %100 = shl i8 %95, 1
  %101 = and i8 %100, 4
  %102 = or i8 %99, %101
  %103 = tail call i32 @serio_interrupt(ptr noundef nonnull %91, i8 noundef zeroext 1, i32 noundef 8) #12
  %104 = load ptr, ptr %90, align 4
  %105 = tail call i32 @serio_interrupt(ptr noundef %104, i8 noundef zeroext %102, i32 noundef 8) #12
  br label %106

106:                                              ; preds = %93, %89, %73, %57, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_assign_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_drop_unused(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_finger_count(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @synaptics_pt_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  store i8 40, ptr %3, align 1
  %8 = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 2
  %9 = tail call i32 @ps2_sliced_command(ptr noundef %8, i8 noundef zeroext %1) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @ps2_command(ptr noundef %8, ptr noundef nonnull %3, i32 noundef 4339) #12
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi i32 [ %9, %2 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @synaptics_pt_start(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.synaptics_data, ptr %6, i32 0, i32 6
  store ptr %0, ptr %10, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @synaptics_pt_stop(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.synaptics_data, ptr %6, i32 0, i32 6
  store ptr null, ptr %10, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @synaptics_pt_activate(ptr noundef %0) #0 {
  %2 = alloca [1 x i8], align 1
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.synaptics_data, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.psmouse, ptr %7, i32 0, i32 10
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 4
  %13 = getelementptr inbounds %struct.synaptics_data, ptr %3, i32 0, i32 2
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, -3
  %16 = select i1 %12, i8 2, i8 0
  %17 = or i8 %15, %16
  store i8 %17, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #12
  %18 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %19 = tail call i32 @ps2_sliced_command(ptr noundef %18, i8 noundef zeroext %17) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  br label %25

22:                                               ; preds = %9
  store i8 20, ptr %2, align 1
  %23 = call i32 @ps2_command(ptr noundef %18, ptr noundef nonnull %2, i32 noundef 4339) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %21
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr inbounds %struct.serio, ptr %26, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.57) #13
  br label %28

28:                                               ; preds = %25, %22, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_show_helper(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_attr_set_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @synaptics_show_disable_gesture(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.synaptics_data, ptr %4, i32 0, i32 5
  %6 = load i8, ptr %5, align 1, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, i32 48, i32 49
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.59, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @synaptics_set_disable_gesture(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [1 x i8], align 1
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !8
  %8 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %6) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %4
  %11 = load i32, ptr %6, align 4
  %12 = icmp ugt i32 %11, 1
  br i1 %12, label %36, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.synaptics_data, ptr %7, i32 0, i32 5
  %15 = load i8, ptr %14, align 1, !range !9
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %36, label %18

18:                                               ; preds = %13
  %19 = icmp ne i32 %11, 0
  %20 = zext i1 %19 to i8
  store i8 %20, ptr %14, align 1
  %21 = icmp eq i32 %11, 0
  %22 = getelementptr inbounds %struct.synaptics_data, ptr %7, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, -5
  %25 = select i1 %21, i8 0, i8 4
  %26 = or i8 %24, %25
  store i8 %26, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  %27 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %28 = call i32 @ps2_sliced_command(ptr noundef %27, i8 noundef zeroext %26) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  store i8 20, ptr %5, align 1
  %31 = call i32 @ps2_command(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 4339) #12
  br label %32

32:                                               ; preds = %30, %18
  %33 = phi i32 [ %28, %18 ], [ %31, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 %3, i32 -5
  br label %36

36:                                               ; preds = %32, %13, %10, %4
  %37 = phi i32 [ %8, %4 ], [ -22, %10 ], [ %3, %13 ], [ %35, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret i32 %37
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @synaptics_resolution(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %117, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %10 = tail call i32 @ps2_sliced_command(ptr noundef %9, i8 noundef zeroext 8) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = call i32 @ps2_command(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1001) #12
  %14 = icmp eq i32 %13, 0
  %15 = load i8, ptr %3, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i8 %15, 0
  %18 = select i1 %14, i1 %17, i1 false
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp slt i8 %21, 0
  %23 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = icmp ne i8 %24, 0
  %26 = select i1 %22, i1 %25, i1 false
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 8
  store i32 %16, ptr %28, align 4
  %29 = zext i8 %24 to i32
  %30 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 9
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %27, %19, %12, %8
  %32 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 7340032
  %35 = icmp ugt i32 %34, 4194304
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 131072
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %36
  %42 = call fastcc i32 @synaptics_send_cmd(ptr noundef %0, i8 noundef zeroext 13, ptr noundef nonnull %3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %9, align 4
  %46 = getelementptr inbounds %struct.serio, ptr %45, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.62) #13
  br label %69

47:                                               ; preds = %41
  %48 = load i8, ptr %3, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 5
  %51 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = shl i8 %52, 1
  %54 = and i8 %53, 30
  %55 = zext i8 %54 to i32
  %56 = or i32 %50, %55
  %57 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 10
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 5
  %62 = lshr i8 %52, 3
  %63 = and i8 %62, 30
  %64 = zext i8 %63 to i32
  %65 = or i32 %61, %64
  %66 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 11
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr inbounds %struct.serio, ptr %67, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.63, i32 noundef %56, i32 noundef %65) #13
  br label %69

69:                                               ; preds = %47, %44, %36, %31
  %70 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 8192
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %117, label %74

74:                                               ; preds = %69
  %75 = load i32, ptr %32, align 4
  %76 = and i32 %75, 7340032
  %77 = icmp eq i32 %76, 7340032
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr %4, align 4
  %80 = shl i32 %79, 8
  %81 = and i32 %80, 3840
  %82 = lshr i32 %79, 16
  %83 = and i32 %82, 255
  %84 = or i32 %81, %83
  %85 = icmp eq i32 %84, 2049
  br i1 %85, label %86, label %117

86:                                               ; preds = %78, %74
  %87 = call i32 @ps2_sliced_command(ptr noundef %9, i8 noundef zeroext 15) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = call i32 @ps2_command(ptr noundef %9, ptr noundef nonnull %3, i32 noundef 1001) #12
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89, %86
  %93 = load ptr, ptr %9, align 4
  %94 = getelementptr inbounds %struct.serio, ptr %93, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.64) #13
  br label %117

95:                                               ; preds = %89
  %96 = load i8, ptr %3, align 1
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 5
  %99 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %100 = load i8, ptr %99, align 1
  %101 = shl i8 %100, 1
  %102 = and i8 %101, 30
  %103 = zext i8 %102 to i32
  %104 = or i32 %98, %103
  %105 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 12
  store i32 %104, ptr %105, align 4
  %106 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i32
  %109 = shl nuw nsw i32 %108, 5
  %110 = lshr i8 %100, 3
  %111 = and i8 %110, 30
  %112 = zext i8 %111 to i32
  %113 = or i32 %109, %112
  %114 = getelementptr inbounds %struct.synaptics_device_info, ptr %1, i32 0, i32 13
  store i32 %113, ptr %114, align 4
  %115 = load ptr, ptr %9, align 4
  %116 = getelementptr inbounds %struct.serio, ptr %115, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %116, ptr noundef nonnull @.str.65, i32 noundef %104, i32 noundef %113) #13
  br label %117

117:                                              ; preds = %95, %92, %78, %69, %2
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @synaptics_send_cmd(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %5 = tail call i32 @ps2_sliced_command(ptr noundef %4, i8 noundef zeroext %1) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 @ps2_command(ptr noundef %4, ptr noundef %2, i32 noundef 1001) #12
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi i32 [ %5, %3 ], [ %8, %7 ]
  ret i32 %10
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_smbus_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.peeled.count", i32 1}
!13 = !{i64 2148975227}
!14 = !{i64 2148971051}
!15 = !{i64 2148971126, i64 2148971153, i64 2148971200, i64 2148971222, i64 2148971250, i64 2148971270}
!16 = !{i64 496625}
!17 = !{i64 2148999371}
