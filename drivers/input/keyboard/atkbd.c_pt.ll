; ModuleID = '/llk/IR/drivers/input/keyboard/atkbd.c_pt.bc'
source_filename = "../drivers/input/keyboard/atkbd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atkbd = type { %struct.ps2dev, ptr, [64 x i8], [32 x i8], i16, [512 x i16], [16 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, i32, i32, %struct.mutex, [24 x i32], i32 }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author210 = internal constant [46 x i8] c"atkbd.author=Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [46 x i8] c"atkbd.description=AT and PS/2 keyboard driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [40 x i8] c"atkbd.file=drivers/input/keyboard/atkbd\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [18 x i8] c"atkbd.license=GPL\00", section ".modinfo", align 1
@__param_str_set = internal constant [10 x i8] c"atkbd.set\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@atkbd_set = internal global i32 2, align 4
@__param_set = internal constant %struct.kernel_param { ptr @__param_str_set, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.57 { ptr @atkbd_set } }, section "__param", align 4
@__UNIQUE_ID_settype214 = internal constant [23 x i8] c"atkbd.parmtype=set:int\00", section ".modinfo", align 1
@__UNIQUE_ID_set215 = internal constant [71 x i8] c"atkbd.parm=set:Select keyboard code set (2 = default, 3 = PS/2 native)\00", section ".modinfo", align 1
@__param_str_reset = internal constant [12 x i8] c"atkbd.reset\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@atkbd_reset = internal global i8 1, align 1
@__param_reset = internal constant %struct.kernel_param { ptr @__param_str_reset, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.57 { ptr @atkbd_reset } }, section "__param", align 4
@__UNIQUE_ID_resettype216 = internal constant [26 x i8] c"atkbd.parmtype=reset:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reset217 = internal constant [54 x i8] c"atkbd.parm=reset:Reset keyboard during initialization\00", section ".modinfo", align 1
@__param_str_softrepeat = internal constant [17 x i8] c"atkbd.softrepeat\00", align 1
@atkbd_softrepeat = internal global i8 0, align 1
@__param_softrepeat = internal constant %struct.kernel_param { ptr @__param_str_softrepeat, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.57 { ptr @atkbd_softrepeat } }, section "__param", align 4
@__UNIQUE_ID_softrepeattype218 = internal constant [31 x i8] c"atkbd.parmtype=softrepeat:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_softrepeat219 = internal constant [51 x i8] c"atkbd.parm=softrepeat:Use software keyboard repeat\00", section ".modinfo", align 1
@__param_str_softraw = internal constant [14 x i8] c"atkbd.softraw\00", align 1
@atkbd_softraw = internal global i8 1, align 1
@__param_softraw = internal constant %struct.kernel_param { ptr @__param_str_softraw, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.57 { ptr @atkbd_softraw } }, section "__param", align 4
@__UNIQUE_ID_softrawtype220 = internal constant [28 x i8] c"atkbd.parmtype=softraw:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_softraw221 = internal constant [50 x i8] c"atkbd.parm=softraw:Use software generated rawmode\00", section ".modinfo", align 1
@__param_str_scroll = internal constant [13 x i8] c"atkbd.scroll\00", align 1
@atkbd_scroll = internal global i8 0, align 1
@__param_scroll = internal constant %struct.kernel_param { ptr @__param_str_scroll, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.57 { ptr @atkbd_scroll } }, section "__param", align 4
@__UNIQUE_ID_scrolltype222 = internal constant [27 x i8] c"atkbd.parmtype=scroll:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_scroll223 = internal constant [73 x i8] c"atkbd.parm=scroll:Enable scroll-wheel on MS Office and similar keyboards\00", section ".modinfo", align 1
@__param_str_extra = internal constant [12 x i8] c"atkbd.extra\00", align 1
@atkbd_extra = internal global i8 0, align 1
@__param_extra = internal constant %struct.kernel_param { ptr @__param_str_extra, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.57 { ptr @atkbd_extra } }, section "__param", align 4
@__UNIQUE_ID_extratype224 = internal constant [26 x i8] c"atkbd.parmtype=extra:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_extra225 = internal constant [91 x i8] c"atkbd.parm=extra:Enable extra LEDs and keys on IBM RapidAcces, EzKey and similar keyboards\00", section ".modinfo", align 1
@__param_str_terminal = internal constant [15 x i8] c"atkbd.terminal\00", align 1
@atkbd_terminal = internal global i8 0, align 1
@__param_terminal = internal constant %struct.kernel_param { ptr @__param_str_terminal, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.57 { ptr @atkbd_terminal } }, section "__param", align 4
@__UNIQUE_ID_terminaltype226 = internal constant [29 x i8] c"atkbd.parmtype=terminal:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_terminal227 = internal constant [88 x i8] c"atkbd.parm=terminal:Enable break codes on an IBM Terminal keyboard connected via AT/PS2\00", section ".modinfo", align 1
@atkbd_drv = internal global %struct.serio_driver { ptr @.str, ptr @atkbd_serio_ids, i8 0, ptr null, ptr @atkbd_interrupt, ptr @atkbd_connect, ptr @atkbd_reconnect, ptr null, ptr @atkbd_disconnect, ptr @atkbd_cleanup, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 4
@__initcall__kmod_atkbd__228_1913_atkbd_init6 = internal global ptr @atkbd_init, section ".initcall6.init", align 4
@__exitcall_atkbd_exit = internal global ptr @atkbd_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [28 x i8] c"AT and PS/2 keyboard driver\00", align 1
@atkbd_serio_ids = internal constant [4 x %struct.serio_device_id] [%struct.serio_device_id { i8 1, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id { i8 6, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 34 }, %struct.serio_device_id zeroinitializer], align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"atkbd\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Frame/parity error: %02x\0A\00", align 1
@atkbd_platform_scancode_fixup = internal unnamed_addr global ptr null, align 4
@__func__.atkbd_interrupt = private unnamed_addr constant [16 x i8] c"atkbd_interrupt\00", align 1
@.str.3 = private unnamed_addr constant [78 x i8] c"Spurious %s on %s. Some program might be trying to access hardware directly.\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"NAK\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Unknown key %s (%s set %d, code %#x on %s).\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"translated\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"Use 'setkeycodes %s%02x <keycode>' to make it known.\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"e0\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@atkbd_connect.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"&atkbd->mutex\00", align 1
@atkbd_attribute_group = internal global %struct.attribute_group { ptr null, ptr @atkbd_attr_is_visible, ptr null, ptr @atkbd_attributes, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__const.atkbd_set_repeat_rate.period = private unnamed_addr constant [32 x i16] [i16 33, i16 37, i16 42, i16 46, i16 50, i16 54, i16 58, i16 63, i16 67, i16 75, i16 83, i16 92, i16 100, i16 109, i16 116, i16 125, i16 133, i16 149, i16 167, i16 182, i16 200, i16 217, i16 232, i16 250, i16 270, i16 303, i16 333, i16 370, i16 400, i16 435, i16 470, i16 500], align 2
@__const.atkbd_set_repeat_rate.delay = private unnamed_addr constant [4 x i16] [i16 250, i16 500, i16 750, i16 1000], align 2
@.str.15 = private unnamed_addr constant [29 x i8] c"keyboard reset failed on %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [118 x i8] c"NCD terminal keyboards are only supported on non-translating controllers. Use i8042.direct=1 to disable translation.\0A\00", align 1
@atkbd_skip_deactivate = internal unnamed_addr global i1 false, align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Failed to deactivate keyboard on %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"function-row-physmap\00", align 1
@atkbd_unxlate_table = internal unnamed_addr constant [128 x i16] [i16 0, i16 118, i16 22, i16 30, i16 38, i16 37, i16 46, i16 54, i16 61, i16 62, i16 70, i16 69, i16 78, i16 85, i16 102, i16 13, i16 21, i16 29, i16 36, i16 45, i16 44, i16 53, i16 60, i16 67, i16 68, i16 77, i16 84, i16 91, i16 90, i16 20, i16 28, i16 27, i16 35, i16 43, i16 52, i16 51, i16 59, i16 66, i16 75, i16 76, i16 82, i16 14, i16 18, i16 93, i16 26, i16 34, i16 33, i16 42, i16 50, i16 49, i16 58, i16 65, i16 73, i16 74, i16 89, i16 124, i16 17, i16 41, i16 88, i16 5, i16 6, i16 4, i16 12, i16 3, i16 11, i16 2, i16 10, i16 1, i16 9, i16 119, i16 126, i16 108, i16 117, i16 125, i16 123, i16 107, i16 115, i16 116, i16 121, i16 105, i16 114, i16 122, i16 112, i16 113, i16 127, i16 96, i16 97, i16 120, i16 7, i16 15, i16 23, i16 31, i16 39, i16 47, i16 55, i16 63, i16 71, i16 79, i16 86, i16 94, i16 8, i16 16, i16 24, i16 32, i16 40, i16 48, i16 56, i16 64, i16 72, i16 80, i16 87, i16 111, i16 19, i16 25, i16 57, i16 81, i16 83, i16 92, i16 95, i16 98, i16 99, i16 100, i16 101, i16 103, i16 104, i16 106, i16 109, i16 110], align 2
@atkbd_platform_fixup = internal unnamed_addr global ptr null, align 4
@atkbd_platform_fixup_data = internal unnamed_addr global ptr null, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"linux,keymap\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"problem parsing FW keymap property\0A\00", align 1
@atkbd_set2_keycode = internal unnamed_addr constant <{ [261 x i16], [251 x i16] }> <{ [261 x i16] [i16 0, i16 67, i16 65, i16 63, i16 61, i16 59, i16 60, i16 88, i16 0, i16 68, i16 66, i16 64, i16 62, i16 15, i16 41, i16 117, i16 0, i16 56, i16 42, i16 93, i16 29, i16 16, i16 2, i16 0, i16 0, i16 0, i16 44, i16 31, i16 30, i16 17, i16 3, i16 0, i16 0, i16 46, i16 45, i16 32, i16 18, i16 5, i16 4, i16 95, i16 0, i16 57, i16 47, i16 33, i16 20, i16 19, i16 6, i16 183, i16 0, i16 49, i16 48, i16 35, i16 34, i16 21, i16 7, i16 184, i16 0, i16 0, i16 50, i16 36, i16 22, i16 8, i16 9, i16 185, i16 0, i16 51, i16 37, i16 23, i16 24, i16 11, i16 10, i16 0, i16 0, i16 52, i16 53, i16 38, i16 39, i16 25, i16 12, i16 0, i16 0, i16 89, i16 40, i16 0, i16 26, i16 13, i16 0, i16 0, i16 58, i16 54, i16 28, i16 27, i16 0, i16 43, i16 0, i16 85, i16 0, i16 86, i16 91, i16 90, i16 92, i16 0, i16 14, i16 94, i16 0, i16 79, i16 124, i16 75, i16 71, i16 121, i16 0, i16 0, i16 82, i16 83, i16 80, i16 76, i16 77, i16 72, i16 1, i16 69, i16 87, i16 78, i16 81, i16 74, i16 55, i16 73, i16 70, i16 99, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 217, i16 100, i16 255, i16 0, i16 97, i16 165, i16 0, i16 0, i16 156, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 125, i16 173, i16 114, i16 0, i16 113, i16 0, i16 0, i16 0, i16 126, i16 128, i16 0, i16 0, i16 140, i16 0, i16 0, i16 0, i16 127, i16 159, i16 0, i16 115, i16 0, i16 164, i16 0, i16 0, i16 116, i16 158, i16 0, i16 172, i16 166, i16 0, i16 0, i16 0, i16 142, i16 157, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 155, i16 0, i16 98, i16 0, i16 0, i16 163, i16 0, i16 0, i16 226, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 255, i16 96, i16 0, i16 0, i16 0, i16 143, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 107, i16 0, i16 105, i16 102, i16 0, i16 0, i16 112, i16 110, i16 111, i16 108, i16 112, i16 106, i16 103, i16 0, i16 119, i16 0, i16 118, i16 109, i16 0, i16 99, i16 104, i16 119, i16 0, i16 0, i16 0, i16 0, i16 65, i16 99], [251 x i16] zeroinitializer }>, align 2
@atkbd_set3_keycode = internal unnamed_addr constant <{ [164 x i16], [348 x i16] }> <{ [164 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 59, i16 1, i16 138, i16 128, i16 129, i16 130, i16 15, i16 41, i16 60, i16 131, i16 29, i16 42, i16 86, i16 58, i16 16, i16 2, i16 61, i16 133, i16 56, i16 44, i16 31, i16 30, i16 17, i16 3, i16 62, i16 134, i16 46, i16 45, i16 32, i16 18, i16 5, i16 4, i16 63, i16 135, i16 57, i16 47, i16 33, i16 20, i16 19, i16 6, i16 64, i16 136, i16 49, i16 48, i16 35, i16 34, i16 21, i16 7, i16 65, i16 137, i16 100, i16 50, i16 36, i16 22, i16 8, i16 9, i16 66, i16 125, i16 51, i16 37, i16 23, i16 24, i16 11, i16 10, i16 67, i16 126, i16 52, i16 53, i16 38, i16 39, i16 25, i16 12, i16 68, i16 113, i16 114, i16 40, i16 43, i16 26, i16 13, i16 87, i16 99, i16 97, i16 54, i16 28, i16 27, i16 43, i16 43, i16 88, i16 70, i16 108, i16 105, i16 119, i16 103, i16 111, i16 107, i16 14, i16 110, i16 0, i16 79, i16 106, i16 75, i16 71, i16 109, i16 102, i16 104, i16 82, i16 83, i16 80, i16 76, i16 77, i16 72, i16 69, i16 98, i16 0, i16 96, i16 81, i16 0, i16 78, i16 73, i16 55, i16 183, i16 184, i16 185, i16 186, i16 187, i16 74, i16 94, i16 92, i16 93, i16 0, i16 0, i16 0, i16 125, i16 126, i16 127, i16 112, i16 0, i16 0, i16 139, i16 172, i16 163, i16 165, i16 115, i16 152, i16 172, i16 166, i16 140, i16 160, i16 154, i16 113, i16 114, i16 167, i16 168, i16 148, i16 149, i16 147, i16 140], [348 x i16] zeroinitializer }>, align 2
@.str.23 = private unnamed_addr constant [24 x i8] c"AT Set 2 Extra keyboard\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"AT %s Set %d keyboard\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Translated\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"Raw\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@atkbd_attributes = internal global [9 x ptr] [ptr @atkbd_attr_extra, ptr @atkbd_attr_force_release, ptr @atkbd_attr_scroll, ptr @atkbd_attr_set, ptr @atkbd_attr_softrepeat, ptr @atkbd_attr_softraw, ptr @atkbd_attr_err_count, ptr @atkbd_attr_function_row_physmap, ptr null], align 4
@atkbd_attr_function_row_physmap = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @atkbd_do_show_function_row_physmap, ptr null }, align 4
@.str.28 = private unnamed_addr constant [21 x i8] c"function_row_physmap\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@atkbd_attr_extra = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420 }, ptr @atkbd_do_show_extra, ptr @atkbd_do_set_extra }, align 4
@atkbd_attr_force_release = internal global %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420 }, ptr @atkbd_do_show_force_release, ptr @atkbd_do_set_force_release }, align 4
@atkbd_attr_scroll = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420 }, ptr @atkbd_do_show_scroll, ptr @atkbd_do_set_scroll }, align 4
@atkbd_attr_set = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420 }, ptr @atkbd_do_show_set, ptr @atkbd_do_set_set }, align 4
@atkbd_attr_softrepeat = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420 }, ptr @atkbd_do_show_softrepeat, ptr @atkbd_do_set_softrepeat }, align 4
@atkbd_attr_softraw = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420 }, ptr @atkbd_do_show_softraw, ptr @atkbd_do_set_softraw }, align 4
@atkbd_attr_err_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292 }, ptr @atkbd_do_show_err_count, ptr null }, align 4
@.str.31 = private unnamed_addr constant [6 x i8] c"extra\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"force_release\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"%*pbl\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"scroll\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"softrepeat\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"softraw\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"err_count\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"Failed to enable keyboard on %s\0A\00", align 1
@atkbd_dmi_quirk_table = internal constant [18 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 19, [79 x i8] c"8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_dell_laptop_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Computer Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 19, [79 x i8] c"8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_dell_laptop_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"HP 2133\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_hp_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Pavilion ZV6100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_volume_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Presario R4000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_volume_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Presario R4100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_volume_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Hewlett-Packard\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Presario R4200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_volume_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"INVENTEC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"SYMPHONY 6.0/7.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_volume_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"SAMSUNG ELECTRONICS CO., LTD.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"NC10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_samsung_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"SAMSUNG ELECTRONICS CO., LTD.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"NC20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_samsung_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"SAMSUNG ELECTRONICS CO., LTD.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"SQ45S70S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_samsung_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"FUJITSU SIEMENS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"AMILO Pa 1510\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_volume_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"FUJITSU SIEMENS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"AMILO Pi 3525\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_amilo_pi3525_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"FUJITSU SIEMENS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"AMILO Xi 3650\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_amilo_xi3650_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_forced_release, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Soltech Corporation\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"TA12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkdb_soltech_ta12_forced_release_keys }, %struct.dmi_system_id { ptr @atkbd_setup_scancode_fixup, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"OQO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"ZEPTO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @atkbd_oqo_01plus_scancode_fixup }, %struct.dmi_system_id { ptr @atkbd_deactivate_fixup, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LG Electronics\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 4
@atkbd_dell_laptop_forced_release_keys = internal global [10 x i32] [i32 133, i32 134, i32 135, i32 136, i32 137, i32 138, i32 139, i32 143, i32 147, i32 -1], align 4
@atkbd_hp_forced_release_keys = internal global [2 x i32] [i32 148, i32 -1], align 4
@atkbd_volume_forced_release_keys = internal global [3 x i32] [i32 174, i32 176, i32 -1], align 4
@atkbd_samsung_forced_release_keys = internal global [10 x i32] [i32 130, i32 131, i32 132, i32 134, i32 136, i32 137, i32 179, i32 247, i32 249, i32 -1], align 4
@atkbd_amilo_pi3525_forced_release_keys = internal global [7 x i32] [i32 32, i32 160, i32 46, i32 174, i32 48, i32 176, i32 -1], align 4
@atkbd_amilo_xi3650_forced_release_keys = internal global [9 x i32] [i32 103, i32 237, i32 144, i32 162, i32 153, i32 164, i32 174, i32 176, i32 -1], align 4
@atkdb_soltech_ta12_forced_release_keys = internal global [4 x i32] [i32 160, i32 174, i32 176, i32 -1], align 4
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_extra225, ptr @__UNIQUE_ID_extratype224, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__UNIQUE_ID_reset217, ptr @__UNIQUE_ID_resettype216, ptr @__UNIQUE_ID_scroll223, ptr @__UNIQUE_ID_scrolltype222, ptr @__UNIQUE_ID_set215, ptr @__UNIQUE_ID_settype214, ptr @__UNIQUE_ID_softraw221, ptr @__UNIQUE_ID_softrawtype220, ptr @__UNIQUE_ID_softrepeat219, ptr @__UNIQUE_ID_softrepeattype218, ptr @__UNIQUE_ID_terminal227, ptr @__UNIQUE_ID_terminaltype226, ptr @__exitcall_atkbd_exit, ptr @__initcall__kmod_atkbd__228_1913_atkbd_init6, ptr @__param_extra, ptr @__param_reset, ptr @__param_scroll, ptr @__param_set, ptr @__param_softraw, ptr @__param_softrepeat, ptr @__param_terminal, ptr @atkbd_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @atkbd_exit() #0 section ".exit.text" {
  tail call void @serio_unregister_driver(ptr noundef nonnull @atkbd_drv) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @atkbd_init() #0 section ".init.text" {
  %1 = tail call i32 @dmi_check_system(ptr noundef nonnull @atkbd_dmi_quirk_table) #16
  %2 = tail call i32 @__serio_register_driver(ptr noundef nonnull @atkbd_drv, ptr noundef null, ptr noundef nonnull @.str.1) #16
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_interrupt(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = zext i8 %1 to i32
  %10 = and i32 %2, 6
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %2, 1
  %13 = icmp eq i32 %12, 0
  %14 = and i1 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 16
  %17 = load i8, ptr %16, align 1, !range !8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 10
  %21 = load i8, ptr %20, align 1, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef %2) #17
  %25 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 7
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = tail call i32 %26(ptr noundef %0, i8 noundef zeroext -2) #16
  br label %30

30:                                               ; preds = %28, %23
  store i8 1, ptr %16, align 1
  br label %290

31:                                               ; preds = %19, %15
  %32 = icmp eq i8 %1, -6
  br label %39

33:                                               ; preds = %3
  %34 = icmp eq i32 %2, 0
  %35 = icmp eq i8 %1, -6
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 16
  store i8 0, ptr %38, align 1
  br label %39

39:                                               ; preds = %37, %33, %31
  %40 = phi i1 [ %32, %31 ], [ true, %37 ], [ %35, %33 ]
  %41 = getelementptr inbounds %struct.ps2dev, ptr %6, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45, !prof !9

45:                                               ; preds = %39
  %46 = tail call zeroext i1 @ps2_handle_ack(ptr noundef %6, i8 noundef zeroext %1) #16
  br i1 %46, label %290, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %41, align 4
  br label %49

49:                                               ; preds = %47, %39
  %50 = phi i32 [ %48, %47 ], [ %42, %39 ]
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !9

53:                                               ; preds = %49
  %54 = tail call zeroext i1 @ps2_handle_response(ptr noundef %6, i8 noundef zeroext %1) #16
  br i1 %54, label %290, label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  tail call void @pm_wakeup_dev_event(ptr noundef %56, i32 noundef 0, i1 noundef zeroext false) #16
  %57 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 14
  %58 = load i8, ptr %57, align 1, !range !8
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %290, label %60

60:                                               ; preds = %55
  tail call void @input_event(ptr noundef %8, i32 noundef 4, i32 noundef 3, i32 noundef %9) #16
  %61 = load ptr, ptr @atkbd_platform_scancode_fixup, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = tail call i32 %61(ptr noundef %6, i32 noundef %9) #16
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i32 [ %64, %63 ], [ %9, %60 ]
  %67 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 8
  %68 = load i8, ptr %67, align 1, !range !8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %127, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 15
  %72 = load i8, ptr %71, align 4
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 18
  %76 = load i32, ptr %75, align 4
  %77 = trunc i32 %66 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %76, ptr %4, align 4
  %78 = and i8 %77, -2
  %79 = icmp eq i8 %78, -32
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %104

81:                                               ; preds = %74
  switch i8 %77, label %82 [
    i8 -86, label %88
    i8 -1, label %83
    i8 -6, label %84
    i8 -2, label %85
    i8 -15, label %86
    i8 -14, label %87
  ]

82:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %94

83:                                               ; preds = %81
  br label %88

84:                                               ; preds = %81
  br label %88

85:                                               ; preds = %81
  br label %88

86:                                               ; preds = %81
  br label %88

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %86, %85, %84, %83, %81
  %89 = phi i32 [ 0, %81 ], [ 1, %83 ], [ 2, %84 ], [ 3, %85 ], [ 4, %86 ], [ 5, %87 ]
  %90 = load volatile i32, ptr %4, align 4
  %91 = shl nuw nsw i32 1, %89
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %93, label %104, label %94

94:                                               ; preds = %88, %82
  %95 = icmp ugt i32 %66, 127
  %96 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 17
  %97 = zext i1 %95 to i8
  store i8 %97, ptr %96, align 2
  %98 = and i32 %66, 127
  br label %104

99:                                               ; preds = %70
  %100 = icmp ugt i32 %66, 127
  %101 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 17
  %102 = zext i1 %100 to i8
  store i8 %102, ptr %101, align 2
  %103 = and i32 %66, 127
  br label %127

104:                                              ; preds = %94, %88, %80
  %105 = phi i32 [ %98, %94 ], [ %66, %80 ], [ %66, %88 ]
  %106 = and i32 %9, 127
  switch i32 %106, label %127 [
    i32 42, label %112
    i32 127, label %107
    i32 122, label %108
    i32 126, label %109
    i32 113, label %110
    i32 114, label %111
  ]

107:                                              ; preds = %104
  br label %112

108:                                              ; preds = %104
  br label %112

109:                                              ; preds = %104
  br label %112

110:                                              ; preds = %104
  br label %112

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %110, %109, %108, %107, %104
  %113 = phi i32 [ 0, %104 ], [ 1, %107 ], [ 2, %108 ], [ 3, %109 ], [ 4, %110 ], [ 5, %111 ]
  %114 = and i32 %9, 128
  %115 = icmp eq i32 %114, 0
  %116 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 18
  %117 = shl nuw nsw i32 1, %113
  br i1 %115, label %122, label %118

118:                                              ; preds = %112
  %119 = xor i32 %117, -1
  %120 = load i32, ptr %116, align 4
  %121 = and i32 %120, %119
  br label %125

122:                                              ; preds = %112
  %123 = load i32, ptr %116, align 4
  %124 = or i32 %123, %117
  br label %125

125:                                              ; preds = %122, %118
  %126 = phi i32 [ %121, %118 ], [ %124, %122 ]
  store i32 %126, ptr %116, align 4
  br label %127

127:                                              ; preds = %125, %104, %99, %65
  %128 = phi i32 [ %103, %99 ], [ %66, %65 ], [ %105, %125 ], [ %105, %104 ]
  switch i32 %128, label %147 [
    i32 170, label %129
    i32 224, label %131
    i32 225, label %133
    i32 240, label %135
    i32 250, label %137
    i32 254, label %137
    i32 255, label %143
  ]

129:                                              ; preds = %127
  store i8 0, ptr %57, align 1
  %130 = load ptr, ptr %6, align 4
  tail call void @serio_reconnect(ptr noundef %130) #16
  br label %290

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 15
  store i8 1, ptr %132, align 4
  br label %290

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 15
  store i8 2, ptr %134, align 4
  br label %290

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 17
  store i8 1, ptr %136, align 2
  br label %290

137:                                              ; preds = %127, %127
  %138 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.atkbd_interrupt) #16
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %290, label %140

140:                                              ; preds = %137
  %141 = select i1 %40, ptr @.str.4, ptr @.str.5
  %142 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.3, ptr noundef nonnull %141, ptr noundef %142) #17
  br label %290

143:                                              ; preds = %127
  %144 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 21
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, 1
  store i32 %146, ptr %144, align 4
  br label %290

147:                                              ; preds = %127
  %148 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 7
  %149 = load i8, ptr %148, align 4
  %150 = icmp eq i8 %149, 3
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 15
  %153 = load i8, ptr %152, align 4
  %154 = icmp eq i8 %153, 1
  %155 = or i32 %128, 256
  %156 = select i1 %154, i32 %155, i32 %128
  br label %167

157:                                              ; preds = %147
  %158 = and i32 %128, 127
  %159 = shl i32 %128, 1
  %160 = and i32 %159, 256
  %161 = or i32 %160, %158
  %162 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 15
  %163 = load i8, ptr %162, align 4
  %164 = icmp eq i8 %163, 1
  %165 = or i32 %161, 128
  %166 = select i1 %164, i32 %165, i32 %161
  br label %167

167:                                              ; preds = %157, %151
  %168 = phi i8 [ %153, %151 ], [ %163, %157 ]
  %169 = phi i32 [ %156, %151 ], [ %166, %157 ]
  %170 = icmp eq i8 %168, 0
  br i1 %170, label %175, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 15
  %173 = add i8 %168, -1
  store i8 %173, ptr %172, align 4
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %290

175:                                              ; preds = %171, %167
  %176 = getelementptr %struct.atkbd, ptr %6, i32 0, i32 5, i32 %169
  %177 = load i16, ptr %176, align 2
  %178 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 17
  %179 = load i8, ptr %178, align 2, !range !8
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 6
  %183 = lshr i32 %169, 5
  %184 = getelementptr i32, ptr %182, i32 %183
  %185 = load volatile i32, ptr %184, align 4
  %186 = and i32 %169, 31
  %187 = shl nuw i32 1, %186
  %188 = and i32 %185, %187
  %189 = icmp eq i32 %188, 0
  %190 = icmp ne i16 %177, 255
  %191 = select i1 %189, i1 %190, i1 false
  br i1 %191, label %194, label %195

192:                                              ; preds = %175
  %193 = icmp eq i16 %177, 255
  br i1 %193, label %272, label %194

194:                                              ; preds = %192, %181
  tail call void @input_event(ptr noundef %8, i32 noundef 4, i32 noundef 4, i32 noundef %169) #16
  br label %195

195:                                              ; preds = %194, %181
  %196 = zext i16 %177 to i32
  switch i16 %177, label %221 [
    i16 255, label %272
    i16 0, label %197
    i16 -2, label %211
    i16 -3, label %212
    i16 -4, label %213
    i16 -5, label %214
    i16 -6, label %215
    i16 -7, label %219
    i16 -8, label %220
  ]

197:                                              ; preds = %195
  %198 = load i8, ptr %178, align 2, !range !8
  %199 = icmp eq i8 %198, 0
  %200 = select i1 %199, ptr @.str.8, ptr @.str.7
  %201 = load i8, ptr %67, align 1, !range !8
  %202 = icmp eq i8 %201, 0
  %203 = select i1 %202, ptr @.str.10, ptr @.str.9
  %204 = load i8, ptr %148, align 4
  %205 = zext i8 %204 to i32
  %206 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.6, ptr noundef nonnull %200, ptr noundef nonnull %203, i32 noundef %205, i32 noundef %169, ptr noundef %206) #17
  %207 = and i32 %169, 128
  %208 = icmp eq i32 %207, 0
  %209 = select i1 %208, ptr @.str.13, ptr @.str.12
  %210 = and i32 %169, 127
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.11, ptr noundef nonnull %209, i32 noundef %210) #17
  tail call void @input_event(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %272

211:                                              ; preds = %195
  br label %272

212:                                              ; preds = %195
  br label %272

213:                                              ; preds = %195
  br label %272

214:                                              ; preds = %195
  br label %272

215:                                              ; preds = %195
  %216 = load i8, ptr %178, align 2, !range !8
  %217 = xor i8 %216, 1
  %218 = zext i8 %217 to i32
  br label %272

219:                                              ; preds = %195
  br label %272

220:                                              ; preds = %195
  br label %272

221:                                              ; preds = %195
  %222 = load i8, ptr %178, align 2, !range !8
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 19
  store i32 0, ptr %225, align 4
  br label %259

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 11
  %228 = load i8, ptr %227, align 4, !range !8
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %230, label %250

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 27
  %232 = lshr i32 %196, 5
  %233 = getelementptr i32, ptr %231, i32 %232
  %234 = load volatile i32, ptr %233, align 4
  %235 = and i32 %196, 31
  %236 = shl nuw i32 1, %235
  %237 = and i32 %234, %236
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %250, label %239

239:                                              ; preds = %230
  %240 = load volatile i32, ptr @jiffies, align 64
  %241 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 20
  %242 = load i32, ptr %241, align 4
  %243 = sub i32 %240, %242
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 19
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, %169
  %249 = select i1 %248, i32 1, i32 2
  br label %259

250:                                              ; preds = %230, %226
  %251 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 19
  store i32 %169, ptr %251, align 4
  %252 = load volatile i32, ptr @jiffies, align 64
  %253 = getelementptr inbounds %struct.input_dev, ptr %8, i32 0, i32 24
  %254 = load i32, ptr %253, align 8
  %255 = tail call i32 @__msecs_to_jiffies(i32 noundef %254) #16
  %256 = lshr i32 %255, 1
  %257 = add i32 %256, %252
  %258 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 20
  store i32 %257, ptr %258, align 4
  br label %259

259:                                              ; preds = %250, %245, %239, %224
  %260 = phi i32 [ 0, %224 ], [ 1, %250 ], [ 2, %239 ], [ %249, %245 ]
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef %196, i32 noundef %260) #16
  tail call void @input_event(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %272, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 6
  %264 = lshr i32 %169, 5
  %265 = getelementptr i32, ptr %263, i32 %264
  %266 = load volatile i32, ptr %265, align 4
  %267 = and i32 %169, 31
  %268 = shl nuw i32 1, %267
  %269 = and i32 %266, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %262
  tail call void @input_event(ptr noundef %8, i32 noundef 4, i32 noundef 4, i32 noundef %169) #16
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef %196, i32 noundef 0) #16
  tail call void @input_event(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %272

272:                                              ; preds = %271, %262, %259, %220, %219, %215, %214, %213, %212, %211, %197, %195, %192
  %273 = phi i32 [ 0, %271 ], [ 0, %262 ], [ 0, %259 ], [ 0, %220 ], [ 0, %219 ], [ 0, %215 ], [ 8, %214 ], [ 4, %213 ], [ 2, %212 ], [ 1, %211 ], [ 0, %197 ], [ 0, %195 ], [ 0, %192 ]
  %274 = phi i32 [ 0, %271 ], [ 0, %262 ], [ 0, %259 ], [ 1, %220 ], [ -1, %219 ], [ 0, %215 ], [ 0, %214 ], [ 0, %213 ], [ 0, %212 ], [ 0, %211 ], [ 0, %197 ], [ 0, %195 ], [ 0, %192 ]
  %275 = phi i32 [ -1, %271 ], [ -1, %262 ], [ -1, %259 ], [ -1, %220 ], [ -1, %219 ], [ %218, %215 ], [ -1, %214 ], [ -1, %213 ], [ -1, %212 ], [ -1, %211 ], [ -1, %197 ], [ -1, %195 ], [ -1, %192 ]
  %276 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 13
  %277 = load i8, ptr %276, align 2, !range !8
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %289, label %279

279:                                              ; preds = %272
  %280 = icmp eq i32 %275, -1
  br i1 %280, label %284, label %281

281:                                              ; preds = %279
  %282 = icmp ne i32 %275, 0
  %283 = zext i1 %282 to i32
  tail call void @input_event(ptr noundef %8, i32 noundef 1, i32 noundef 274, i32 noundef %283) #16
  br label %284

284:                                              ; preds = %281, %279
  %285 = load i8, ptr %178, align 2, !range !8
  %286 = icmp eq i8 %285, 0
  %287 = sub nsw i32 0, %273
  %288 = select i1 %286, i32 %273, i32 %287
  tail call void @input_event(ptr noundef %8, i32 noundef 2, i32 noundef 8, i32 noundef %288) #16
  tail call void @input_event(ptr noundef %8, i32 noundef 2, i32 noundef 6, i32 noundef %274) #16
  tail call void @input_event(ptr noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %289

289:                                              ; preds = %284, %272
  store i8 0, ptr %178, align 2
  br label %290

290:                                              ; preds = %289, %171, %143, %140, %137, %135, %133, %131, %129, %55, %53, %45, %30
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_connect(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [1 x i8], align 1
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1444) #18
  %6 = tail call ptr @input_allocate_device() #16
  %7 = icmp ne ptr %5, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %105

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 1
  store ptr %6, ptr %11, align 4
  tail call void @ps2_init(ptr noundef nonnull %5, ptr noundef %0) #16
  %12 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 22
  store i32 -32, ptr %12, align 8
  %13 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 22, i32 0, i32 1
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 22, i32 0, i32 1, i32 1
  store ptr %13, ptr %14, align 8
  %15 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 22, i32 0, i32 2
  store ptr @atkbd_event_work, ptr %15, align 4
  %16 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 22, i32 1
  tail call void @init_timer_key(ptr noundef %16, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #16
  %17 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.14, ptr noundef nonnull @atkbd_connect.__key) #16
  %18 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 5
  %19 = load i8, ptr %18, align 1
  switch i8 %19, label %28 [
    i8 6, label %20
    i8 1, label %22
  ]

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 8
  store i8 1, ptr %21, align 1
  br label %22

22:                                               ; preds = %20, %10
  %23 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 10
  store i8 1, ptr %27, align 1
  br label %28

28:                                               ; preds = %26, %22, %10
  %29 = load i8, ptr @atkbd_softraw, align 1, !range !8
  %30 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 12
  store i8 %29, ptr %30, align 1
  %31 = load i8, ptr @atkbd_softrepeat, align 1, !range !8
  %32 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 11
  store i8 %31, ptr %32, align 8
  %33 = load i8, ptr @atkbd_scroll, align 1, !range !8
  %34 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 13
  store i8 %33, ptr %34, align 2
  %35 = icmp eq i8 %31, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  store i8 1, ptr %30, align 1
  br label %37

37:                                               ; preds = %36, %28
  %38 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  store ptr %5, ptr %38, align 8
  %39 = tail call i32 @serio_open(ptr noundef %0, ptr noundef %1) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %103

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 10
  %43 = load i8, ptr %42, align 1, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @atkbd_probe(ptr noundef nonnull %5)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %101

48:                                               ; preds = %45
  %49 = load i32, ptr @atkbd_set, align 4
  %50 = load i8, ptr @atkbd_extra, align 1, !range !8
  %51 = zext i8 %50 to i32
  %52 = tail call fastcc i32 @atkbd_select_set(ptr noundef nonnull %5, i32 noundef %49, i32 noundef %51)
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 7
  store i8 %53, ptr %54, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 0, ptr %3, align 1
  %55 = call i32 @ps2_command(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 4333) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  store i8 0, ptr %3, align 1
  %58 = call i32 @ps2_command(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 4339) #16
  br label %59

59:                                               ; preds = %57, %48
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %63

60:                                               ; preds = %41
  %61 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 7
  store i8 2, ptr %61, align 4
  %62 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 4
  store i16 -21760, ptr %62, align 8
  br label %63

63:                                               ; preds = %60, %59
  %64 = load ptr, ptr %38, align 8
  %65 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  %66 = call i32 @device_property_read_u32_array(ptr noundef %65, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0) #16
  %67 = add i32 %66, -1
  %68 = icmp ult i32 %67, 24
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.atkbd, ptr %64, i32 0, i32 26
  %71 = call i32 @device_property_read_u32_array(ptr noundef %65, ptr noundef nonnull @.str.18, ptr noundef %70, i32 noundef %66) #16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.atkbd, ptr %64, i32 0, i32 27
  store i32 %66, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %69, %63
  call fastcc void @atkbd_set_keycode_table(ptr noundef nonnull %5)
  call fastcc void @atkbd_set_device_attrs(ptr noundef nonnull %5)
  %76 = call i32 @sysfs_create_group(ptr noundef %65, ptr noundef nonnull @atkbd_attribute_group) #16
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr inbounds %struct.serio, ptr %79, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %80) #16
  %81 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 14
  store i8 1, ptr %81, align 1
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds %struct.serio, ptr %82, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %84 = load i16, ptr %83, align 4
  %85 = add i16 %84, 1
  store i16 %85, ptr %83, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %86 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 7
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %78
  %90 = call i32 @ps2_command(ptr noundef nonnull %5, ptr noundef null, i32 noundef 244) #16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds %struct.serio, ptr %93, i32 0, i32 18
  %95 = getelementptr inbounds %struct.serio, ptr %93, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.41, ptr noundef %95) #17
  br label %96

96:                                               ; preds = %92, %89, %78
  %97 = load ptr, ptr %11, align 4
  %98 = call i32 @input_register_device(ptr noundef %97) #16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %96
  call void @sysfs_remove_group(ptr noundef %65, ptr noundef nonnull @atkbd_attribute_group) #16
  br label %101

101:                                              ; preds = %100, %75, %45
  %102 = phi i32 [ %76, %75 ], [ %98, %100 ], [ -19, %45 ]
  call void @serio_close(ptr noundef %0) #16
  br label %103

103:                                              ; preds = %101, %37
  %104 = phi i32 [ %39, %37 ], [ %102, %101 ]
  store ptr null, ptr %38, align 8
  br label %105

105:                                              ; preds = %103, %2
  %106 = phi i32 [ %104, %103 ], [ -12, %2 ]
  call void @input_free_device(ptr noundef %6) #16
  call void @kfree(ptr noundef %5) #16
  br label %107

107:                                              ; preds = %105, %96
  %108 = phi i32 [ %106, %105 ], [ 0, %96 ]
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_reconnect(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %4, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %94

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.atkbd, ptr %4, i32 0, i32 25
  tail call void @mutex_lock(ptr noundef %11) #16
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #16
  %14 = getelementptr inbounds %struct.atkbd, ptr %4, i32 0, i32 14
  store i8 0, ptr %14, align 1
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %19 = getelementptr inbounds %struct.atkbd, ptr %4, i32 0, i32 10
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %74, label %22

22:                                               ; preds = %10
  %23 = tail call fastcc i32 @atkbd_probe(ptr noundef nonnull %4)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %92

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.atkbd, ptr %4, i32 0, i32 7
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.atkbd, ptr %4, i32 0, i32 9
  %30 = load i8, ptr %29, align 2, !range !8
  %31 = zext i8 %30 to i32
  %32 = tail call fastcc i32 @atkbd_select_set(ptr noundef nonnull %4, i32 noundef %28, i32 noundef %31)
  %33 = icmp eq i32 %32, %28
  br i1 %33, label %34, label %92

34:                                               ; preds = %25
  tail call fastcc void @atkbd_set_leds(ptr noundef nonnull %4)
  %35 = getelementptr inbounds %struct.atkbd, ptr %4, i32 0, i32 11
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.atkbd, ptr %4, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  %41 = getelementptr %struct.input_dev, ptr %40, i32 0, i32 24, i32 1
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %49, %38
  %44 = phi i32 [ 0, %38 ], [ %50, %49 ]
  %45 = getelementptr [32 x i16], ptr @__const.atkbd_set_repeat_rate.period, i32 0, i32 %44
  %46 = load i16, ptr %45, align 2
  %47 = sext i16 %46 to i32
  %48 = icmp sgt i32 %42, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = add nuw nsw i32 %44, 1
  %51 = icmp eq i32 %50, 31
  br i1 %51, label %54, label %43

52:                                               ; preds = %43
  %53 = sext i16 %46 to i32
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi i32 [ %53, %52 ], [ 500, %49 ]
  %56 = phi i32 [ %44, %52 ], [ 31, %49 ]
  %57 = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 24
  store i32 %55, ptr %41, align 4
  %58 = load i32, ptr %57, align 8
  %59 = icmp sgt i32 %58, 250
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = icmp ugt i32 %58, 500
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = icmp ugt i32 %58, 750
  %64 = select i1 %63, i32 3, i32 2
  br label %65

65:                                               ; preds = %62, %60, %54
  %66 = phi i32 [ 0, %54 ], [ 1, %60 ], [ %64, %62 ]
  %67 = getelementptr [4 x i16], ptr @__const.atkbd_set_repeat_rate.delay, i32 0, i32 %66
  %68 = load i16, ptr %67, align 2
  %69 = sext i16 %68 to i32
  store i32 %69, ptr %57, align 8
  %70 = shl nuw nsw i32 %66, 5
  %71 = or i32 %70, %56
  %72 = trunc i32 %71 to i8
  store i8 %72, ptr %2, align 1
  %73 = call i32 @ps2_command(ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef 4339) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  br label %74

74:                                               ; preds = %65, %34, %10
  %75 = getelementptr inbounds %struct.atkbd, ptr %4, i32 0, i32 18
  store i32 0, ptr %75, align 4
  %76 = getelementptr inbounds %struct.atkbd, ptr %4, i32 0, i32 15
  store i8 0, ptr %76, align 4
  %77 = load ptr, ptr %4, align 4
  %78 = getelementptr inbounds %struct.serio, ptr %77, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %78) #16
  store i8 1, ptr %14, align 1
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr inbounds %struct.serio, ptr %79, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %81 = load i16, ptr %80, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %80, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %83 = load i8, ptr %19, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %74
  %86 = call i32 @ps2_command(ptr noundef nonnull %4, ptr noundef null, i32 noundef 244) #16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %4, align 4
  %90 = getelementptr inbounds %struct.serio, ptr %89, i32 0, i32 18
  %91 = getelementptr inbounds %struct.serio, ptr %89, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.41, ptr noundef %91) #17
  br label %92

92:                                               ; preds = %88, %85, %74, %25, %22
  %93 = phi i32 [ -1, %22 ], [ -1, %25 ], [ 0, %74 ], [ 0, %85 ], [ 0, %88 ]
  call void @mutex_unlock(ptr noundef %11) #16
  br label %94

94:                                               ; preds = %92, %1
  %95 = phi i32 [ %93, %92 ], [ -1, %1 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atkbd_disconnect(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %4, ptr noundef nonnull @atkbd_attribute_group) #16
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.atkbd, ptr %3, i32 0, i32 14
  store i8 0, ptr %7, align 1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %10 = load i16, ptr %9, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %12 = getelementptr inbounds %struct.atkbd, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @input_unregister_device(ptr noundef %13) #16
  %14 = getelementptr inbounds %struct.atkbd, ptr %3, i32 0, i32 22
  %15 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %14) #16
  tail call void @serio_close(ptr noundef %0) #16
  store ptr null, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atkbd_cleanup(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #16
  %6 = getelementptr inbounds %struct.atkbd, ptr %3, i32 0, i32 14
  store i8 0, ptr %6, align 1
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %11 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 246) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_handle_ack(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_handle_response(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_reconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atkbd_event_work(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = getelementptr i8, ptr %0, i32 -1272
  %4 = getelementptr i8, ptr %0, i32 52
  tail call void @mutex_lock(ptr noundef %4) #16
  %5 = getelementptr i8, ptr %0, i32 -21
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %0, i32 noundef 10) #16
  br label %55

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 48
  %13 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %12) #16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call fastcc void @atkbd_set_leds(ptr noundef %3)
  br label %16

16:                                               ; preds = %15, %11
  %17 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %12) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %55, label %19

19:                                               ; preds = %16
  %20 = getelementptr i8, ptr %0, i32 -1220
  %21 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  %22 = getelementptr %struct.input_dev, ptr %21, i32 0, i32 24, i32 1
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %30, %19
  %25 = phi i32 [ 0, %19 ], [ %31, %30 ]
  %26 = getelementptr [32 x i16], ptr @__const.atkbd_set_repeat_rate.period, i32 0, i32 %25
  %27 = load i16, ptr %26, align 2
  %28 = sext i16 %27 to i32
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = add nuw nsw i32 %25, 1
  %32 = icmp eq i32 %31, 31
  br i1 %32, label %35, label %24

33:                                               ; preds = %24
  %34 = sext i16 %27 to i32
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ 500, %30 ]
  %37 = phi i32 [ %25, %33 ], [ 31, %30 ]
  %38 = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 24
  store i32 %36, ptr %22, align 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp sgt i32 %39, 250
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = icmp ugt i32 %39, 500
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = icmp ugt i32 %39, 750
  %45 = select i1 %44, i32 3, i32 2
  br label %46

46:                                               ; preds = %43, %41, %35
  %47 = phi i32 [ 0, %35 ], [ 1, %41 ], [ %45, %43 ]
  %48 = getelementptr [4 x i16], ptr @__const.atkbd_set_repeat_rate.delay, i32 0, i32 %47
  %49 = load i16, ptr %48, align 2
  %50 = sext i16 %49 to i32
  store i32 %50, ptr %38, align 8
  %51 = shl nuw nsw i32 %47, 5
  %52 = or i32 %51, %37
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %2, align 1
  %54 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 4339) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  br label %55

55:                                               ; preds = %46, %16, %8
  call void @mutex_unlock(ptr noundef %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atkbd_probe(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 -23131, ptr %2, align 2, !annotation !15
  %3 = load i8, ptr @atkbd_reset, align 1, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 767) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  %11 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.15, ptr noundef %11) #17
  br label %12

12:                                               ; preds = %8, %5, %1
  %13 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %14 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 754) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  store i8 0, ptr %2, align 2
  %17 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4333) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 4
  store i16 -21574, ptr %20, align 4
  br label %49

21:                                               ; preds = %12
  %22 = load i8, ptr %2, align 2
  %23 = call zeroext i1 @ps2_is_keyboard_id(i8 noundef zeroext %22) #16
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i8, ptr %2, align 2
  %26 = zext i8 %25 to i16
  %27 = shl nuw i16 %26, 8
  %28 = load i8, ptr %13, align 1
  %29 = zext i8 %28 to i16
  %30 = or i16 %27, %29
  %31 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 4
  store i16 %30, ptr %31, align 4
  %32 = icmp eq i16 %30, -21343
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 8
  %35 = load i8, ptr %34, align 1, !range !8
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.16) #17
  br label %49

40:                                               ; preds = %33, %24
  %41 = load i1, ptr @atkbd_skip_deactivate, align 1
  br i1 %41, label %49, label %42

42:                                               ; preds = %40
  %43 = call i32 @ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 245) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %0, align 4
  %47 = getelementptr inbounds %struct.serio, ptr %46, i32 0, i32 18
  %48 = getelementptr inbounds %struct.serio, ptr %46, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.17, ptr noundef %48) #17
  br label %49

49:                                               ; preds = %45, %42, %40, %37, %21, %19, %16
  %50 = phi i32 [ 0, %19 ], [ -1, %37 ], [ -1, %16 ], [ -1, %21 ], [ 0, %40 ], [ 0, %42 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atkbd_select_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 0, ptr %4, align 2, !annotation !15
  %5 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 9
  store i8 0, ptr %5, align 2
  %6 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 8
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, -21343
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  store i8 3, ptr %4, align 2
  %14 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4336) #16
  br label %53

15:                                               ; preds = %9
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  store i8 113, ptr %4, align 2
  %18 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4330) #16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i8 1, ptr %5, align 2
  br label %53

21:                                               ; preds = %17, %15
  %22 = load i8, ptr @atkbd_terminal, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 248) #16
  br label %53

26:                                               ; preds = %21
  %27 = icmp eq i32 %1, 3
  br i1 %27, label %28, label %53

28:                                               ; preds = %26
  %29 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 744) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i8, ptr %4, align 2
  %33 = zext i8 %32 to i16
  %34 = shl nuw i16 %33, 8
  %35 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  %38 = or i16 %34, %37
  store i16 %38, ptr %10, align 4
  br label %53

39:                                               ; preds = %28
  store i8 3, ptr %4, align 2
  %40 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4336) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  store i8 0, ptr %4, align 2
  %43 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4592) #16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i8, ptr %4, align 2
  %47 = icmp eq i8 %46, 3
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  store i8 2, ptr %4, align 2
  %49 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4336) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %45
  %52 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 250) #16
  br label %53

53:                                               ; preds = %51, %48, %42, %39, %31, %26, %24, %20, %13, %3
  %54 = phi i32 [ 3, %13 ], [ 3, %24 ], [ 3, %51 ], [ 2, %31 ], [ 2, %20 ], [ 2, %3 ], [ 2, %26 ], [ 2, %39 ], [ 2, %42 ], [ 2, %48 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atkbd_set_keycode_table(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(1024) %2, i8 0, i32 1024, i1 false)
  %3 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #16
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 18
  %6 = tail call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0) #16
  %7 = add i32 %6, -513
  %8 = icmp ult i32 %7, -512
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = shl nuw nsw i32 %6, 2
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @device_property_read_u32_array(ptr noundef %5, ptr noundef nonnull @.str.19, ptr noundef nonnull %11, i32 noundef %6) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  tail call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(1024) %2, i8 0, i32 1024, i1 false) #16
  br label %17

17:                                               ; preds = %17, %16
  %18 = phi i32 [ %24, %17 ], [ 0, %16 ]
  %19 = getelementptr i32, ptr %11, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = trunc i32 %20 to i16
  %23 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 %21
  store i16 %22, ptr %23, align 2
  %24 = add nuw nsw i32 %18, 1
  %25 = icmp eq i32 %24, %6
  br i1 %25, label %26, label %17

26:                                               ; preds = %17
  tail call void @kfree(ptr noundef nonnull %11) #16
  br label %79

27:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.20) #17
  tail call void @kfree(ptr noundef nonnull %11) #16
  br label %28

28:                                               ; preds = %27, %9, %1
  %29 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 8
  %30 = load i8, ptr %29, align 1, !range !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 13
  br label %34

34:                                               ; preds = %59, %32
  %35 = phi i32 [ 0, %32 ], [ %60, %59 ]
  %36 = getelementptr [128 x i16], ptr @atkbd_unxlate_table, i32 0, i32 %35
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr [512 x i16], ptr @atkbd_set2_keycode, i32 0, i32 %38
  %40 = load i16, ptr %39, align 2
  %41 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 %35
  store i16 %40, ptr %41, align 2
  %42 = or i32 %38, 128
  %43 = getelementptr [512 x i16], ptr @atkbd_set2_keycode, i32 0, i32 %42
  %44 = load i16, ptr %43, align 2
  %45 = or i32 %35, 128
  %46 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 %45
  store i16 %44, ptr %46, align 2
  %47 = load i8, ptr %33, align 2, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %34
  %50 = trunc i32 %42 to i16
  switch i16 %50, label %59 [
    i16 197, label %57
    i16 157, label %51
    i16 164, label %52
    i16 155, label %53
    i16 224, label %54
    i16 203, label %55
    i16 210, label %56
  ]

51:                                               ; preds = %49
  br label %57

52:                                               ; preds = %49
  br label %57

53:                                               ; preds = %49
  br label %57

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %55, %54, %53, %52, %51, %49
  %58 = phi i16 [ -6, %54 ], [ -5, %53 ], [ -4, %52 ], [ -3, %51 ], [ -8, %56 ], [ -7, %55 ], [ -2, %49 ]
  store i16 %58, ptr %46, align 2
  br label %59

59:                                               ; preds = %57, %49, %34
  %60 = add nuw nsw i32 %35, 1
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %79, label %34

62:                                               ; preds = %28
  %63 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 7
  %64 = load i8, ptr %63, align 4
  %65 = icmp eq i8 %64, 3
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(1024) %2, ptr noundef nonnull align 2 dereferenceable(1024) @atkbd_set3_keycode, i32 1024, i1 false)
  br label %79

67:                                               ; preds = %62
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(1024) %2, ptr noundef nonnull align 2 dereferenceable(1024) @atkbd_set2_keycode, i32 1024, i1 false)
  %68 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 13
  %69 = load i8, ptr %68, align 2, !range !8
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 197
  store i16 -2, ptr %72, align 2
  %73 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 157
  store i16 -3, ptr %73, align 2
  %74 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 164
  store i16 -4, ptr %74, align 2
  %75 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 155
  store i16 -5, ptr %75, align 2
  %76 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 224
  store i16 -6, ptr %76, align 2
  %77 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 203
  store i16 -7, ptr %77, align 2
  %78 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 210
  store i16 -8, ptr %78, align 2
  br label %79

79:                                               ; preds = %71, %67, %66, %59, %26
  %80 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 7
  %81 = load i8, ptr %80, align 4
  %82 = icmp eq i8 %81, 3
  %83 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 15
  %84 = load i8, ptr %83, align 4
  %85 = icmp eq i8 %84, 1
  %86 = select i1 %82, i32 242, i32 370
  %87 = select i1 %82, i32 241, i32 369
  %88 = select i1 %85, i32 498, i32 %86
  %89 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 %88
  store i16 122, ptr %89, align 2
  %90 = lshr i32 %88, 5
  %91 = getelementptr i32, ptr %3, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = or i32 %92, 262144
  store i32 %93, ptr %91, align 4
  %94 = select i1 %85, i32 497, i32 %87
  %95 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 %94
  store i16 123, ptr %95, align 2
  %96 = lshr i32 %94, 5
  %97 = getelementptr i32, ptr %3, i32 %96
  %98 = load i32, ptr %97, align 4
  %99 = or i32 %98, 131072
  store i32 %99, ptr %97, align 4
  %100 = load ptr, ptr @atkbd_platform_fixup, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %79
  %103 = load ptr, ptr @atkbd_platform_fixup_data, align 4
  tail call void %100(ptr noundef %0, ptr noundef %103) #16, !callees !16
  br label %104

104:                                              ; preds = %102, %79
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atkbd_set_device_attrs(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 9
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 2
  br i1 %6, label %9, label %8

8:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(24) @.str.23, i32 24, i1 false)
  br label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 8
  %11 = load i8, ptr %10, align 1, !range !8
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr @.str.26, ptr @.str.25
  %14 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 7
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %7, i32 noundef 64, ptr noundef nonnull @.str.24, ptr noundef nonnull %13, i32 noundef %16)
  br label %18

18:                                               ; preds = %9, %8
  %19 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 2
  %22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %19, i32 noundef 32, ptr noundef nonnull @.str.27, ptr noundef %21)
  %23 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 2
  store ptr %23, ptr %3, align 8
  %24 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 1
  store ptr %19, ptr %24, align 4
  %25 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3
  store i16 17, ptr %25, align 4
  %26 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 8
  %28 = load i8, ptr %27, align 1, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 7
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i16
  br label %34

34:                                               ; preds = %30, %18
  %35 = phi i16 [ %33, %30 ], [ 1, %18 ]
  %36 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 2
  store i16 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 4
  %38 = load i16, ptr %37, align 4
  %39 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 3
  store i16 %38, ptr %39, align 2
  %40 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 34
  store ptr @atkbd_event, ptr %40, align 8
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.serio, ptr %41, i32 0, i32 18
  %43 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 8
  store ptr %0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5
  store i32 1048594, ptr %45, align 8
  %46 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 10
  %47 = load i8, ptr %46, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %34
  store i32 1179666, ptr %45, align 8
  %50 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 10
  store i32 7, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %34
  %52 = phi i32 [ 1179670, %49 ], [ 1048598, %34 ]
  %53 = load i8, ptr %4, align 2, !range !8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 10
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 488
  store i32 %58, ptr %56, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 11
  %61 = load i8, ptr %60, align 4, !range !8
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 24
  store i32 250, ptr %64, align 8
  %65 = getelementptr %struct.input_dev, ptr %3, i32 0, i32 24, i32 1
  store i32 33, ptr %65, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 12
  %68 = load i8, ptr %67, align 1, !range !8
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i32 24, i32 16
  %71 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 9
  store i32 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 13
  %73 = load i8, ptr %72, align 2, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %66
  store i32 %52, ptr %45, align 8
  %76 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 7
  store i32 320, ptr %76, align 4
  %77 = getelementptr %struct.input_dev, ptr %3, i32 0, i32 6, i32 8
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %78, 262144
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %75, %66
  %81 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 5
  %82 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 17
  store ptr %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 16
  store i32 2, ptr %83, align 8
  %84 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 15
  store i32 512, ptr %84, align 4
  %85 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 6
  br label %86

86:                                               ; preds = %100, %80
  %87 = phi i32 [ 0, %80 ], [ %101, %100 ]
  %88 = getelementptr %struct.atkbd, ptr %0, i32 0, i32 5, i32 %87
  %89 = load i16, ptr %88, align 2
  %90 = zext i16 %89 to i32
  switch i16 %89, label %91 [
    i16 0, label %100
    i16 255, label %100
  ]

91:                                               ; preds = %86
  %92 = icmp ult i16 %89, -8
  br i1 %92, label %93, label %100

93:                                               ; preds = %91
  %94 = and i32 %90, 31
  %95 = shl nuw i32 1, %94
  %96 = lshr i32 %90, 5
  %97 = getelementptr i32, ptr %85, i32 %96
  %98 = load i32, ptr %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, ptr %97, align 4
  br label %100

100:                                              ; preds = %93, %91, %86, %86
  %101 = add nuw nsw i32 %87, 1
  %102 = icmp eq i32 %101, 512
  br i1 %102, label %103, label %86

103:                                              ; preds = %100
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atkbd_set_leds(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #16
  store i16 0, ptr %2, align 2, !annotation !15
  %5 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 28
  %6 = load volatile i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 2
  %9 = and i8 %8, 1
  %10 = load volatile i32, ptr %5, align 4
  %11 = trunc i32 %10 to i8
  %12 = shl i8 %11, 1
  %13 = and i8 %12, 2
  %14 = or i8 %13, %9
  %15 = load volatile i32, ptr %5, align 4
  %16 = trunc i32 %15 to i8
  %17 = shl i8 %16, 1
  %18 = and i8 %17, 4
  %19 = or i8 %14, %18
  store i8 %19, ptr %2, align 2
  %20 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4333) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 9
  %24 = load i8, ptr %23, align 2, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %22
  store i8 0, ptr %2, align 2
  %27 = load volatile i32, ptr %5, align 4
  %28 = trunc i32 %27 to i8
  %29 = lshr i8 %28, 3
  %30 = and i8 %29, 1
  %31 = load volatile i32, ptr %5, align 4
  %32 = trunc i32 %31 to i8
  %33 = lshr i8 %32, 4
  %34 = and i8 %33, 2
  %35 = or i8 %34, %30
  %36 = load volatile i32, ptr %5, align 4
  %37 = trunc i32 %36 to i8
  %38 = lshr i8 %37, 4
  %39 = and i8 %38, 4
  %40 = or i8 %35, %39
  %41 = load volatile i32, ptr %5, align 4
  %42 = lshr i32 %41, 4
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 16
  %45 = or i8 %40, %44
  %46 = load volatile i32, ptr %5, align 4
  %47 = trunc i32 %46 to i8
  %48 = lshr i8 %47, 2
  %49 = and i8 %48, 32
  %50 = or i8 %45, %49
  %51 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %50, ptr %51, align 1
  %52 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 8427) #16
  br label %53

53:                                               ; preds = %26, %22, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_is_keyboard_id(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_event(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 10
  %8 = load i8, ptr %7, align 1, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %4
  switch i32 %1, label %40 [
    i32 17, label %11
    i32 20, label %21
  ]

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 23
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 5
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = sub i32 %14, %15
  %17 = icmp slt i32 %16, 0
  %18 = select i1 %17, i32 0, i32 5
  %19 = load volatile i32, ptr @jiffies, align 64
  store i32 %19, ptr %12, align 4
  %20 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 0, ptr noundef %20) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !17
  br label %35

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 11
  %23 = load i8, ptr %22, align 4, !range !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 23
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 5
  %29 = load volatile i32, ptr @jiffies, align 64
  %30 = sub i32 %28, %29
  %31 = icmp slt i32 %30, 0
  %32 = select i1 %31, i32 0, i32 5
  %33 = load volatile i32, ptr @jiffies, align 64
  store i32 %33, ptr %26, align 4
  %34 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 24
  tail call void @_set_bit(i32 noundef 1, ptr noundef %34) #16
  tail call void asm sideeffect "dsb ", "~{memory}"() #16, !srcloc !17
  br label %35

35:                                               ; preds = %25, %11
  %36 = phi i32 [ %32, %25 ], [ %18, %11 ]
  tail call void @arm_heavy_mb() #16
  %37 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 22
  %38 = load ptr, ptr @system_wq, align 4
  %39 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %38, ptr noundef %37, i32 noundef %36) #16
  br label %40

40:                                               ; preds = %35, %21, %10, %4
  %41 = phi i32 [ -1, %4 ], [ 0, %21 ], [ -1, %10 ], [ 0, %35 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @atkbd_attr_is_visible(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2) #11 {
  %4 = icmp eq ptr %1, @atkbd_attr_function_row_physmap
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 64
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.atkbd, ptr %7, i32 0, i32 27
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5, %3
  %12 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i16 [ %13, %11 ], [ 0, %5 ]
  ret i16 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_function_row_physmap(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 27
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %20, %11 ], [ 0, %9 ]
  %13 = phi i32 [ %19, %11 ], [ 0, %9 ]
  %14 = getelementptr i8, ptr %2, i32 %13
  %15 = sub i32 4096, %13
  %16 = getelementptr %struct.atkbd, ptr %5, i32 0, i32 26, i32 %12
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.29, i32 noundef %17) #16
  %19 = add i32 %18, %13
  %20 = add nuw nsw i32 %12, 1
  %21 = load i32, ptr %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %11, label %23

23:                                               ; preds = %11, %9
  %24 = phi i32 [ 0, %9 ], [ %19, %11 ]
  %25 = getelementptr i8, ptr %2, i32 %24
  %26 = sub i32 4096, %24
  %27 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %25, i32 noundef %26, ptr noundef nonnull @.str.30) #16
  %28 = add i32 %27, %24
  br label %29

29:                                               ; preds = %23, %3
  %30 = phi i32 [ %28, %23 ], [ 0, %3 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_extra(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 9
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_extra(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @atkbd_set_extra)
  ret i32 %5
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @atkbd_attr_set_helper(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 25
  %8 = tail call i32 @mutex_lock_interruptible(ptr noundef %7) #16
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #16
  %13 = getelementptr inbounds %struct.atkbd, ptr %6, i32 0, i32 14
  store i8 0, ptr %13, align 1
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %18 = tail call i32 %3(ptr noundef %6, ptr noundef %1, i32 noundef %2) #16
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr inbounds %struct.serio, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %20) #16
  store i8 1, ptr %13, align 1
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.serio, ptr %21, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  tail call void @mutex_unlock(ptr noundef %7) #16
  br label %25

25:                                               ; preds = %10, %4
  %26 = phi i32 [ %18, %10 ], [ %8, %4 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_set_extra(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !15
  %6 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 10
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %53, label %9

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %53, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 9
  %17 = load i8, ptr %16, align 2, !range !8
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %13, %18
  br i1 %19, label %53, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 7
  %24 = load i8, ptr %23, align 4
  %25 = call ptr @input_allocate_device() #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %20
  store ptr %25, ptr %21, align 4
  %28 = load i8, ptr %23, align 4
  %29 = zext i8 %28 to i32
  %30 = load i32, ptr %5, align 4
  %31 = call fastcc i32 @atkbd_select_set(ptr noundef %0, i32 noundef %29, i32 noundef %30)
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1
  %33 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4333) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  store i8 0, ptr %4, align 1
  %36 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4339) #16
  br label %37

37:                                               ; preds = %35, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  %38 = call i32 @ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 244) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 4
  %42 = getelementptr inbounds %struct.serio, ptr %41, i32 0, i32 18
  %43 = getelementptr inbounds %struct.serio, ptr %41, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.41, ptr noundef %43) #17
  br label %44

44:                                               ; preds = %40, %37
  call fastcc void @atkbd_set_keycode_table(ptr noundef %0)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  %45 = load ptr, ptr %21, align 4
  %46 = call i32 @input_register_device(ptr noundef %45) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  call void @input_free_device(ptr noundef nonnull %25) #16
  store ptr %22, ptr %21, align 4
  %49 = zext i8 %24 to i32
  %50 = call fastcc i32 @atkbd_select_set(ptr noundef %0, i32 noundef %49, i32 noundef %18)
  %51 = trunc i32 %50 to i8
  store i8 %51, ptr %23, align 4
  call fastcc void @atkbd_set_keycode_table(ptr noundef %0)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  br label %53

52:                                               ; preds = %44
  call void @input_unregister_device(ptr noundef %22) #16
  br label %53

53:                                               ; preds = %52, %48, %20, %15, %12, %9, %3
  %54 = phi i32 [ %46, %48 ], [ -5, %3 ], [ %10, %9 ], [ -22, %12 ], [ -12, %20 ], [ %2, %52 ], [ %2, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_force_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 6
  %7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.34, i32 noundef 512, ptr noundef %6) #16
  %8 = add i32 %7, 1
  %9 = getelementptr i8, ptr %2, i32 %7
  store i8 10, ptr %9, align 1
  %10 = getelementptr i8, ptr %2, i32 %8
  store i8 0, ptr %10, align 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_force_release(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca [16 x i32], align 4
  %6 = getelementptr i8, ptr %0, i32 64
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.atkbd, ptr %7, i32 0, i32 25
  %9 = tail call i32 @mutex_lock_interruptible(ptr noundef %8) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %4
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %13) #16
  %14 = getelementptr inbounds %struct.atkbd, ptr %7, i32 0, i32 14
  store i8 0, ptr %14, align 1
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #16, !annotation !15
  %19 = call i32 @bitmap_parselist(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 512) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.atkbd, ptr %7, i32 0, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %22, ptr noundef nonnull align 4 dereferenceable(64) %5, i32 64, i1 false) #16
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i32 [ %3, %21 ], [ %19, %11 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %26) #16
  store i8 1, ptr %14, align 1
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr inbounds %struct.serio, ptr %27, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !10
  %29 = load i16, ptr %28, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %28, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !11
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !13
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  call void @mutex_unlock(ptr noundef %8) #16
  br label %31

31:                                               ; preds = %23, %4
  %32 = phi i32 [ %24, %23 ], [ %9, %4 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_scroll(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 13
  %7 = load i8, ptr %6, align 2, !range !8
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_scroll(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @atkbd_set_scroll)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_set_scroll(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !15
  %5 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 13
  %12 = load i8, ptr %11, align 2, !range !8
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call ptr @input_allocate_device() #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  store ptr %18, ptr %16, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i8
  store i8 %23, ptr %11, align 2
  call fastcc void @atkbd_set_keycode_table(ptr noundef %0)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  %24 = load ptr, ptr %16, align 4
  %25 = call i32 @input_register_device(ptr noundef %24) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  call void @input_free_device(ptr noundef nonnull %18) #16
  store i8 %12, ptr %11, align 2
  store ptr %17, ptr %16, align 4
  call fastcc void @atkbd_set_keycode_table(ptr noundef %0)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  br label %29

28:                                               ; preds = %20
  call void @input_unregister_device(ptr noundef %17) #16
  br label %29

29:                                               ; preds = %28, %27, %15, %10, %7, %3
  %30 = phi i32 [ %25, %27 ], [ %5, %3 ], [ -22, %7 ], [ -12, %15 ], [ %2, %28 ], [ %2, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %30
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 7
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @atkbd_set_set)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_set_set(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !15
  %6 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 10
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %3
  %10 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %9
  %13 = load i32, ptr %5, align 4
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %54, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 7
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %13, %19
  br i1 %20, label %54, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 9
  %25 = load i8, ptr %24, align 2, !range !8
  %26 = call ptr @input_allocate_device() #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %21
  store ptr %26, ptr %22, align 4
  %29 = load i32, ptr %5, align 4
  %30 = load i8, ptr %24, align 2, !range !8
  %31 = zext i8 %30 to i32
  %32 = call fastcc i32 @atkbd_select_set(ptr noundef %0, i32 noundef %29, i32 noundef %31)
  %33 = trunc i32 %32 to i8
  store i8 %33, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 0, ptr %4, align 1
  %34 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4333) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  store i8 0, ptr %4, align 1
  %37 = call i32 @ps2_command(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 4339) #16
  br label %38

38:                                               ; preds = %36, %28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  %39 = call i32 @ps2_command(ptr noundef %0, ptr noundef null, i32 noundef 244) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 18
  %44 = getelementptr inbounds %struct.serio, ptr %42, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.41, ptr noundef %44) #17
  br label %45

45:                                               ; preds = %41, %38
  call fastcc void @atkbd_set_keycode_table(ptr noundef %0)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  %46 = load ptr, ptr %22, align 4
  %47 = call i32 @input_register_device(ptr noundef %46) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  call void @input_free_device(ptr noundef nonnull %26) #16
  store ptr %23, ptr %22, align 4
  %50 = zext i8 %25 to i32
  %51 = call fastcc i32 @atkbd_select_set(ptr noundef %0, i32 noundef %19, i32 noundef %50)
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %17, align 4
  call fastcc void @atkbd_set_keycode_table(ptr noundef %0)
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  br label %54

53:                                               ; preds = %45
  call void @input_unregister_device(ptr noundef %23) #16
  br label %54

54:                                               ; preds = %53, %49, %21, %16, %12, %9, %3
  %55 = phi i32 [ %47, %49 ], [ -5, %3 ], [ %10, %9 ], [ -22, %12 ], [ -12, %21 ], [ %2, %53 ], [ %2, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %55
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_softrepeat(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 11
  %7 = load i8, ptr %6, align 4, !range !8
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_softrepeat(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @atkbd_set_softrepeat)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_set_softrepeat(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !15
  %5 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 10
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %37, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 11
  %16 = load i8, ptr %15, align 4, !range !8
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %12, %17
  br i1 %18, label %37, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 12
  %23 = load i8, ptr %22, align 1, !range !8
  %24 = call ptr @input_allocate_device() #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  store ptr %24, ptr %20, align 4
  %27 = load i32, ptr %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i8
  store i8 %29, ptr %15, align 4
  br i1 %28, label %30, label %31

30:                                               ; preds = %26
  store i8 1, ptr %22, align 1
  br label %31

31:                                               ; preds = %30, %26
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  %32 = load ptr, ptr %20, align 4
  %33 = call i32 @input_register_device(ptr noundef %32) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call void @input_free_device(ptr noundef nonnull %24) #16
  store ptr %21, ptr %20, align 4
  store i8 %16, ptr %15, align 4
  store i8 %23, ptr %22, align 1
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  br label %37

36:                                               ; preds = %31
  call void @input_unregister_device(ptr noundef %21) #16
  br label %37

37:                                               ; preds = %36, %35, %19, %14, %11, %8, %3
  %38 = phi i32 [ %33, %35 ], [ -5, %3 ], [ %9, %8 ], [ -22, %11 ], [ -12, %19 ], [ %2, %36 ], [ %2, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %38
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_softraw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 12
  %7 = load i8, ptr %6, align 1, !range !8
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %8) #16
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_set_softraw(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = tail call fastcc i32 @atkbd_attr_set_helper(ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @atkbd_set_softraw)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_set_softraw(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store i32 0, ptr %4, align 4, !annotation !15
  %5 = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %29, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 12
  %12 = load i8, ptr %11, align 1, !range !8
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call ptr @input_allocate_device() #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  store ptr %18, ptr %16, align 4
  %21 = load i32, ptr %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i8
  store i8 %23, ptr %11, align 1
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  %24 = load ptr, ptr %16, align 4
  %25 = call i32 @input_register_device(ptr noundef %24) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  call void @input_free_device(ptr noundef nonnull %18) #16
  store ptr %17, ptr %16, align 4
  store i8 %12, ptr %11, align 1
  call fastcc void @atkbd_set_device_attrs(ptr noundef %0)
  br label %29

28:                                               ; preds = %20
  call void @input_unregister_device(ptr noundef %17) #16
  br label %29

29:                                               ; preds = %28, %27, %15, %10, %7, %3
  %30 = phi i32 [ %25, %27 ], [ %5, %3 ], [ -22, %7 ], [ -12, %15 ], [ %2, %28 ], [ %2, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i32 %30
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atkbd_do_show_err_count(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.atkbd, ptr %5, i32 0, i32 21
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.40, i32 noundef %7) #16
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @atkbd_setup_forced_release(ptr nocapture noundef readonly %0) #12 section ".init.text" {
  store ptr @atkbd_apply_forced_release_keylist, ptr @atkbd_platform_fixup, align 4
  %2 = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  store ptr %3, ptr @atkbd_platform_fixup_data, align 4
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @atkbd_setup_scancode_fixup(ptr nocapture noundef readonly %0) #12 section ".init.text" {
  %2 = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  store ptr %3, ptr @atkbd_platform_scancode_fixup, align 4
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atkbd_oqo_01plus_scancode_fixup(ptr nocapture noundef %0, i32 noundef %1) #13 {
  %3 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 8
  %4 = load i8, ptr %3, align 1, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 15
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 1
  %10 = add i32 %1, -100
  %11 = icmp ult i32 %10, 3
  %12 = and i1 %11, %9
  br i1 %12, label %13, label %15

13:                                               ; preds = %6
  store i8 0, ptr %7, align 4
  %14 = or i32 %1, 128
  br label %15

15:                                               ; preds = %13, %6, %2
  %16 = phi i32 [ %14, %13 ], [ %1, %6 ], [ %1, %2 ]
  ret i32 %16
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @atkbd_deactivate_fixup(ptr nocapture noundef readnone %0) #14 section ".init.text" {
  store i1 true, ptr @atkbd_skip_deactivate, align 1
  ret i32 1
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atkbd_apply_forced_release_keylist(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #15 {
  %3 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 7
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.atkbd, ptr %0, i32 0, i32 6
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %7, %9 ], [ %22, %11 ]
  %13 = phi i32 [ 0, %9 ], [ %20, %11 ]
  %14 = and i32 %12, 31
  %15 = shl nuw i32 1, %14
  %16 = lshr i32 %12, 5
  %17 = getelementptr i32, ptr %10, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, ptr %17, align 4
  %20 = add i32 %13, 1
  %21 = getelementptr i32, ptr %1, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %11

24:                                               ; preds = %11, %6, %2
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2149213718}
!11 = !{i64 2149209542}
!12 = !{i64 2149209617, i64 2149209644, i64 2149209691, i64 2149209713, i64 2149209741, i64 2149209761}
!13 = !{i64 331376}
!14 = !{i64 2149237862}
!15 = !{!"auto-init"}
!16 = !{ptr @atkbd_apply_forced_release_keylist}
!17 = !{i64 2152457641}
