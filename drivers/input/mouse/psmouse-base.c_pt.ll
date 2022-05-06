; ModuleID = '/llk/IR/drivers/input/mouse/psmouse-base.c_pt.bc'
source_filename = "../drivers/input/mouse/psmouse-base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.57 }
%union.anon.57 = type { ptr }
%struct.psmouse_attribute = type { %struct.device_attribute, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psmouse_protocol = type { i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.psmouse = type { ptr, ptr, %struct.ps2dev, %struct.delayed_work, ptr, ptr, ptr, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author210 = internal constant [48 x i8] c"psmouse.author=Vojtech Pavlik <vojtech@suse.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [38 x i8] c"psmouse.description=PS/2 mouse driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [41 x i8] c"psmouse.file=drivers/input/mouse/psmouse\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [20 x i8] c"psmouse.license=GPL\00", section ".modinfo", align 1
@__param_str_proto = internal constant [14 x i8] c"psmouse.proto\00", align 1
@param_ops_proto_abbrev = internal constant %struct.kernel_param_ops { i32 0, ptr @psmouse_set_maxproto, ptr @psmouse_get_maxproto, ptr null }, align 4
@psmouse_max_proto = internal global i32 23, align 4
@__param_proto = internal constant %struct.kernel_param { ptr @__param_str_proto, ptr null, ptr @param_ops_proto_abbrev, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @psmouse_max_proto } }, section "__param", align 4
@__UNIQUE_ID_prototype214 = internal constant [36 x i8] c"psmouse.parmtype=proto:proto_abbrev\00", section ".modinfo", align 1
@__UNIQUE_ID_proto215 = internal constant [105 x i8] c"psmouse.parm=proto:Highest protocol extension to probe (bare, imps, exps, any). Useful for KVM switches.\00", section ".modinfo", align 1
@__param_str_resolution = internal constant [19 x i8] c"psmouse.resolution\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@psmouse_resolution = internal global i32 200, align 4
@__param_resolution = internal constant %struct.kernel_param { ptr @__param_str_resolution, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @psmouse_resolution } }, section "__param", align 4
@__UNIQUE_ID_resolutiontype216 = internal constant [33 x i8] c"psmouse.parmtype=resolution:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_resolution217 = internal constant [44 x i8] c"psmouse.parm=resolution:Resolution, in dpi.\00", section ".modinfo", align 1
@__param_str_rate = internal constant [13 x i8] c"psmouse.rate\00", align 1
@psmouse_rate = internal global i32 100, align 4
@__param_rate = internal constant %struct.kernel_param { ptr @__param_str_rate, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @psmouse_rate } }, section "__param", align 4
@__UNIQUE_ID_ratetype218 = internal constant [27 x i8] c"psmouse.parmtype=rate:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rate219 = internal constant [54 x i8] c"psmouse.parm=rate:Report rate, in reports per second.\00", section ".modinfo", align 1
@__param_str_smartscroll = internal constant [20 x i8] c"psmouse.smartscroll\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@psmouse_smartscroll = internal global i8 1, align 1
@__param_smartscroll = internal constant %struct.kernel_param { ptr @__param_str_smartscroll, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @psmouse_smartscroll } }, section "__param", align 4
@__UNIQUE_ID_smartscrolltype220 = internal constant [34 x i8] c"psmouse.parmtype=smartscroll:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_smartscroll221 = internal constant [95 x i8] c"psmouse.parm=smartscroll:Logitech Smartscroll autorepeat, 1 = enabled (default), 0 = disabled.\00", section ".modinfo", align 1
@__param_str_a4tech_workaround = internal constant [26 x i8] c"psmouse.a4tech_workaround\00", align 1
@psmouse_a4tech_2wheels = internal global i8 0, align 1
@__param_a4tech_workaround = internal constant %struct.kernel_param { ptr @__param_str_a4tech_workaround, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @psmouse_a4tech_2wheels } }, section "__param", align 4
@__UNIQUE_ID_a4tech_workaroundtype222 = internal constant [40 x i8] c"psmouse.parmtype=a4tech_workaround:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_a4tech_workaround223 = internal constant [107 x i8] c"psmouse.parm=a4tech_workaround:A4Tech second scroll wheel workaround, 1 = enabled, 0 = disabled (default).\00", section ".modinfo", align 1
@__param_str_resetafter = internal constant [19 x i8] c"psmouse.resetafter\00", align 1
@psmouse_resetafter = internal global i32 5, align 4
@__param_resetafter = internal constant %struct.kernel_param { ptr @__param_str_resetafter, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @psmouse_resetafter } }, section "__param", align 4
@__UNIQUE_ID_resetaftertype224 = internal constant [33 x i8] c"psmouse.parmtype=resetafter:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_resetafter225 = internal constant [76 x i8] c"psmouse.parm=resetafter:Reset device after so many bad packets (0 = never).\00", section ".modinfo", align 1
@__param_str_resync_time = internal constant [20 x i8] c"psmouse.resync_time\00", align 1
@psmouse_resync_time = internal global i32 0, align 4
@__param_resync_time = internal constant %struct.kernel_param { ptr @__param_str_resync_time, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.57 { ptr @psmouse_resync_time } }, section "__param", align 4
@__UNIQUE_ID_resync_timetype226 = internal constant [34 x i8] c"psmouse.parmtype=resync_time:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_resync_time227 = internal constant [101 x i8] c"psmouse.parm=resync_time:How long can mouse stay idle before forcing resync (in seconds, 0 = never).\00", section ".modinfo", align 1
@kpsmoused_wq = internal unnamed_addr global ptr null, align 4
@psmouse_set_resolution.params = internal unnamed_addr constant [5 x i8] c"\00\01\02\02\03", align 1
@.str = private unnamed_addr constant [6 x i8] c"PNP: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to enable mouse on %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to deactivate mouse on %s: %d\0A\00", align 1
@psmouse_attr_protocol = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr null, ptr @psmouse_attr_show_protocol, ptr @psmouse_attr_set_protocol, i8 1 }, align 4
@psmouse_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @psmouse_mutex, i64 12), ptr getelementptr (i8, ptr @psmouse_mutex, i64 12) } }, align 4
@psmouse_drv = internal global %struct.serio_driver { ptr @.str.54, ptr @psmouse_serio_ids, i8 0, ptr null, ptr @psmouse_interrupt, ptr @psmouse_connect, ptr @psmouse_reconnect, ptr @psmouse_fast_reconnect, ptr @psmouse_disconnect, ptr @psmouse_cleanup, %struct.device_driver { ptr @.str.55, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, align 4
@__initcall__kmod_psmouse__228_2087_psmouse_init6 = internal global ptr @psmouse_init, section ".initcall6.init", align 4
@__exitcall_psmouse_exit = internal global ptr @psmouse_exit, section ".exitcall.exit", align 4
@psmouse_protocols = internal constant [18 x %struct.psmouse_protocol] [%struct.psmouse_protocol { i32 1, i8 1, i8 1, i8 1, i8 0, ptr @.str.4, ptr @.str.5, ptr @ps2bare_detect, ptr null }, %struct.psmouse_protocol { i32 2, i8 0, i8 0, i8 0, i8 0, ptr @.str.6, ptr @.str.7, ptr @ps2pp_detect, ptr null }, %struct.psmouse_protocol { i32 3, i8 0, i8 0, i8 0, i8 0, ptr @.str.8, ptr @.str.9, ptr @thinking_detect, ptr null }, %struct.psmouse_protocol { i32 17, i8 0, i8 0, i8 0, i8 0, ptr @.str.10, ptr @.str.11, ptr @cypress_detect, ptr @cypress_init }, %struct.psmouse_protocol { i32 4, i8 0, i8 0, i8 0, i8 0, ptr @.str.12, ptr @.str.13, ptr @genius_detect, ptr null }, %struct.psmouse_protocol { i32 5, i8 1, i8 1, i8 1, i8 0, ptr @.str.14, ptr @.str.15, ptr @intellimouse_detect, ptr null }, %struct.psmouse_protocol { i32 6, i8 1, i8 1, i8 1, i8 0, ptr @.str.16, ptr @.str.17, ptr @im_explorer_detect, ptr null }, %struct.psmouse_protocol { i32 7, i8 0, i8 0, i8 0, i8 0, ptr @.str.18, ptr @.str.19, ptr @synaptics_detect, ptr @synaptics_init_absolute }, %struct.psmouse_protocol { i32 16, i8 0, i8 0, i8 0, i8 0, ptr @.str.20, ptr @.str.21, ptr @synaptics_detect, ptr @synaptics_init_relative }, %struct.psmouse_protocol { i32 21, i8 0, i8 0, i8 0, i8 1, ptr @.str.22, ptr @.str.23, ptr @synaptics_detect, ptr @synaptics_init_smbus }, %struct.psmouse_protocol { i32 8, i8 0, i8 0, i8 0, i8 0, ptr @.str.24, ptr @.str.25, ptr @alps_detect, ptr @alps_init }, %struct.psmouse_protocol { i32 10, i8 0, i8 0, i8 1, i8 0, ptr @.str.26, ptr @.str.27, ptr @trackpoint_detect, ptr null }, %struct.psmouse_protocol { i32 14, i8 0, i8 0, i8 0, i8 0, ptr @.str.28, ptr @.str.29, ptr @elantech_detect, ptr @elantech_init_ps2 }, %struct.psmouse_protocol { i32 22, i8 0, i8 0, i8 0, i8 1, ptr @.str.30, ptr @.str.31, ptr @elantech_detect, ptr @elantech_init_smbus }, %struct.psmouse_protocol { i32 12, i8 0, i8 0, i8 0, i8 0, ptr @.str.32, ptr @.str.33, ptr @cortron_detect, ptr null }, %struct.psmouse_protocol { i32 18, i8 0, i8 0, i8 0, i8 0, ptr @.str.34, ptr @.str.35, ptr @focaltech_detect, ptr @focaltech_init }, %struct.psmouse_protocol { i32 20, i8 0, i8 0, i8 0, i8 0, ptr @.str.36, ptr @.str.37, ptr @byd_detect, ptr @byd_init }, %struct.psmouse_protocol { i32 23, i8 1, i8 0, i8 0, i8 0, ptr @.str.38, ptr @.str.39, ptr null, ptr null }], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"PS/2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"bare\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"PS2++\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"logitech\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ThinkPS/2\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"thinkps\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"CyPS/2\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"cypress\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"GenPS/2\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"genius\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ImPS/2\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"imps\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"ImExPS/2\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"exps\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"SynPS/2\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"synaptics\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"SynRelPS/2\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"synaptics-relative\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"SynSMBus\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"synaptics-smbus\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"AlpsPS/2\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"alps\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"TPPS/2\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"trackpoint\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"ETPS/2\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"elantech\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"ETSMBus\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"elantech-smbus\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"CortronPS/2\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"cortps\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"FocalTechPS/2\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"focaltech\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"BYDPS/2\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"byd\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Generic\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Kensington\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"ThinkingMouse\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Genius\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"Wheel Mouse\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"Explorer Mouse\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"Cortron\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"PS/2 Trackball\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"drivers/input/mouse/psmouse-base.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.51 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.52 = private unnamed_addr constant [60 x i8] c"failed to destroy children ports, protocol change aborted.\0A\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@psmouse_set_rate.rates = internal unnamed_addr constant [8 x i8] c"\C8dP<(\14\0A\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"PS/2 mouse driver\00", align 1
@psmouse_serio_ids = internal global [3 x %struct.serio_device_id] [%struct.serio_device_id { i8 1, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id { i8 5, i8 -1, i8 -1, i8 -1 }, %struct.serio_device_id zeroinitializer], align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"psmouse\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"bad data from KBC -%s%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c" timeout\00", align 1
@.str.58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.59 = private unnamed_addr constant [12 x i8] c" bad parity\00", align 1
@.str.60 = private unnamed_addr constant [56 x i8] c"%s at %s lost synchronization, throwing %d bytes away.\0A\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"unknown OOB_DATA type: 0x%02x\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"%s at %s lost sync at byte %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"issuing reconnect request\0A\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"%s at %s - driver resynced.\0A\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@psmouse_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @psmouse_attributes, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.66 = private unnamed_addr constant [33 x i8] c"failed to re-enable mouse on %s\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"resync failed, issuing reconnect request\0A\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"Failed to reset mouse on %s: %d\0A\00", align 1
@psmouse_attributes = internal global [6 x ptr] [ptr @psmouse_attr_protocol, ptr @psmouse_attr_rate, ptr @psmouse_attr_resolution, ptr @psmouse_attr_resetafter, ptr @psmouse_attr_resync_time, ptr null], align 4
@psmouse_attr_rate = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr inttoptr (i32 248 to ptr), ptr @psmouse_show_int_attr, ptr @psmouse_attr_set_rate, i8 1 }, align 4
@psmouse_attr_resolution = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr inttoptr (i32 252 to ptr), ptr @psmouse_show_int_attr, ptr @psmouse_attr_set_resolution, i8 1 }, align 4
@psmouse_attr_resetafter = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr inttoptr (i32 256 to ptr), ptr @psmouse_show_int_attr, ptr @psmouse_set_int_attr, i8 1 }, align 4
@psmouse_attr_resync_time = internal global %struct.psmouse_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420 }, ptr @psmouse_attr_show_helper, ptr @psmouse_attr_set_helper }, ptr inttoptr (i32 260 to ptr), ptr @psmouse_show_int_attr, ptr @psmouse_set_int_attr, i8 1 }, align 4
@.str.69 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"resetafter\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"resync_time\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"Failed to disable mouse on %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"kpsmoused\00", align 1
@.str.76 = private unnamed_addr constant [49 x i8] c"\013psmouse: failed to create kpsmoused workqueue\0A\00", align 1
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_a4tech_workaround223, ptr @__UNIQUE_ID_a4tech_workaroundtype222, ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__UNIQUE_ID_proto215, ptr @__UNIQUE_ID_prototype214, ptr @__UNIQUE_ID_rate219, ptr @__UNIQUE_ID_ratetype218, ptr @__UNIQUE_ID_resetafter225, ptr @__UNIQUE_ID_resetaftertype224, ptr @__UNIQUE_ID_resolution217, ptr @__UNIQUE_ID_resolutiontype216, ptr @__UNIQUE_ID_resync_time227, ptr @__UNIQUE_ID_resync_timetype226, ptr @__UNIQUE_ID_smartscroll221, ptr @__UNIQUE_ID_smartscrolltype220, ptr @__exitcall_psmouse_exit, ptr @__initcall__kmod_psmouse__228_2087_psmouse_init6, ptr @__param_a4tech_workaround, ptr @__param_proto, ptr @__param_rate, ptr @__param_resetafter, ptr @__param_resolution, ptr @__param_resync_time, ptr @__param_smartscroll, ptr @psmouse_exit], section "llvm.metadata"
@switch.table.psmouse_try_protocol = private unnamed_addr constant [23 x ptr] [ptr @psmouse_protocols, ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 1), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 2), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 4), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 5), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 6), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 7), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 10), ptr @psmouse_protocols, ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 11), ptr @psmouse_protocols, ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 14), ptr @psmouse_protocols, ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 12), ptr @psmouse_protocols, ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 8), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 3), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 15), ptr @psmouse_protocols, ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 16), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 9), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 13), ptr getelementptr inbounds ([18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 17)], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psmouse_report_standard_buttons(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = zext i8 %1 to i32
  %4 = and i32 %3, 1
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 272, i32 noundef %4) #13
  %5 = lshr i32 %3, 2
  %6 = and i32 %5, 1
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 274, i32 noundef %6) #13
  %7 = lshr i32 %3, 1
  %8 = and i32 %7, 1
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 273, i32 noundef %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psmouse_report_standard_motion(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32
  %8 = load i8, ptr %1, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 4
  %11 = and i32 %10, 256
  %12 = sub nsw i32 %7, %11
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ %12, %6 ], [ 0, %2 ]
  %15 = getelementptr i8, ptr %1, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = zext i8 %16 to i32
  %20 = load i8, ptr %1, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 3
  %23 = and i32 %22, 256
  %24 = sub nsw i32 %23, %19
  br label %25

25:                                               ; preds = %18, %13
  %26 = phi i32 [ %24, %18 ], [ 0, %13 ]
  tail call void @input_event(ptr noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef %14) #13
  tail call void @input_event(ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef %26) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psmouse_report_standard_packet(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i32
  %5 = and i32 %4, 1
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 272, i32 noundef %5) #13
  %6 = lshr i32 %4, 2
  %7 = and i32 %6, 1
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 274, i32 noundef %7) #13
  %8 = lshr i32 %4, 1
  %9 = and i32 %8, 1
  tail call void @input_event(ptr noundef %0, i32 noundef 1, i32 noundef 273, i32 noundef %9) #13
  %10 = getelementptr i8, ptr %1, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = zext i8 %11 to i32
  %15 = load i8, ptr %1, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 4
  %18 = and i32 %17, 256
  %19 = sub nsw i32 %14, %18
  br label %20

20:                                               ; preds = %13, %2
  %21 = phi i32 [ %19, %13 ], [ 0, %2 ]
  %22 = getelementptr i8, ptr %1, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = zext i8 %23 to i32
  %27 = load i8, ptr %1, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 3
  %30 = and i32 %29, 256
  %31 = sub nsw i32 %30, %26
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi i32 [ %31, %25 ], [ 0, %20 ]
  tail call void @input_event(ptr noundef %0, i32 noundef 2, i32 noundef 0, i32 noundef %21) #13
  tail call void @input_event(ptr noundef %0, i32 noundef 2, i32 noundef 1, i32 noundef %33) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @psmouse_process_byte(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  %8 = load i8, ptr %7, align 2
  %9 = icmp ult i8 %6, %8
  br i1 %9, label %91, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %86 [
    i32 5, label %14
    i32 6, label %19
    i32 4, label %56
    i32 3, label %68
    i32 12, label %79
  ]

14:                                               ; preds = %10
  %15 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = sext i8 %16 to i32
  %18 = sub nsw i32 0, %17
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 8, i32 noundef %18) #13
  br label %86

19:                                               ; preds = %10
  %20 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = lshr i32 %22, 6
  switch i32 %23, label %55 [
    i32 2, label %24
    i32 1, label %28
    i32 0, label %32
    i32 3, label %32
  ]

24:                                               ; preds = %19
  %25 = shl i32 %22, 26
  %26 = ashr exact i32 %25, 26
  %27 = sub nsw i32 0, %26
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 8, i32 noundef %27) #13
  br label %86

28:                                               ; preds = %19
  %29 = shl i32 %22, 26
  %30 = ashr exact i32 %29, 26
  %31 = sub nsw i32 0, %30
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 6, i32 noundef %31) #13
  br label %86

32:                                               ; preds = %19, %19
  %33 = shl i32 %22, 28
  %34 = ashr exact i32 %33, 28
  %35 = load i8, ptr @psmouse_a4tech_2wheels, align 1, !range !8
  %36 = icmp ne i8 %35, 0
  %37 = tail call i32 @llvm.abs.i32(i32 %34, i1 true)
  %38 = icmp ugt i32 %37, 1
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = trunc i32 %34 to i8
  %42 = sdiv i8 %41, 2
  %43 = sext i8 %42 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 6, i32 noundef %43) #13
  br label %46

44:                                               ; preds = %32
  %45 = sub nsw i32 0, %34
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 8, i32 noundef %45) #13
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i8, ptr %20, align 1
  %48 = lshr i8 %47, 4
  %49 = and i8 %48, 1
  %50 = zext i8 %49 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 275, i32 noundef %50) #13
  %51 = load i8, ptr %20, align 1
  %52 = lshr i8 %51, 5
  %53 = and i8 %52, 1
  %54 = zext i8 %53 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 276, i32 noundef %54) #13
  br label %86

55:                                               ; preds = %19
  unreachable

56:                                               ; preds = %10
  %57 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = sext i8 %58 to i32
  %60 = sub nsw i32 0, %59
  tail call void @input_event(ptr noundef %3, i32 noundef 2, i32 noundef 8, i32 noundef %60) #13
  %61 = load i8, ptr %4, align 1
  %62 = lshr i8 %61, 6
  %63 = and i8 %62, 1
  %64 = zext i8 %63 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 275, i32 noundef %64) #13
  %65 = load i8, ptr %4, align 1
  %66 = lshr i8 %65, 7
  %67 = zext i8 %66 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 276, i32 noundef %67) #13
  br label %86

68:                                               ; preds = %10
  %69 = load i8, ptr %4, align 1
  %70 = lshr i8 %69, 3
  %71 = and i8 %70, 1
  %72 = zext i8 %71 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 276, i32 noundef %72) #13
  %73 = load i8, ptr %4, align 1
  %74 = shl i8 %73, 1
  %75 = and i8 %74, -128
  %76 = getelementptr %struct.psmouse, ptr %0, i32 0, i32 7, i32 1
  %77 = load i8, ptr %76, align 1
  %78 = or i8 %75, %77
  store i8 %78, ptr %76, align 1
  br label %86

79:                                               ; preds = %10
  %80 = load i8, ptr %4, align 1
  %81 = lshr i8 %80, 3
  %82 = and i8 %81, 1
  %83 = zext i8 %82 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 275, i32 noundef %83) #13
  %84 = load i8, ptr %4, align 1
  %85 = or i8 %84, 8
  store i8 %85, ptr %4, align 1
  br label %86

86:                                               ; preds = %79, %68, %56, %46, %28, %24, %14, %10
  %87 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 12
  %88 = load i8, ptr %87, align 4
  %89 = load i8, ptr %4, align 1
  %90 = or i8 %89, %88
  store i8 %90, ptr %4, align 1
  tail call void @psmouse_report_standard_packet(ptr noundef %3, ptr noundef %4)
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  br label %91

91:                                               ; preds = %86, %1
  %92 = phi i32 [ 2, %86 ], [ 1, %1 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psmouse_queue_work(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @kpsmoused_wq, align 4
  %5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psmouse_set_state(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 18
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 16
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  store i8 0, ptr %8, align 1
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, i32 3
  store i32 0, ptr %9, align 4
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 15
  store i32 %10, ptr %11, align 4
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %13, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @psmouse_reset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  store i16 0, ptr %2, align 2, !annotation !14
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %4 = call i32 @ps2_command(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 767) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i8, ptr %2, align 2
  %8 = icmp ne i8 %7, -86
  %9 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = select i1 %8, i1 %11, i1 false
  %13 = select i1 %12, i32 -5, i32 0
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi i32 [ %4, %1 ], [ %13, %6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_command(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @psmouse_set_resolution(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  %4 = add i32 %1, -201
  %5 = icmp ult i32 %4, -200
  %6 = udiv i32 %1, 50
  %7 = select i1 %5, i32 4, i32 %6
  %8 = getelementptr [5 x i8], ptr @psmouse_set_resolution.params, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %3, align 1
  %10 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %11 = call i32 @ps2_command(ptr noundef %10, ptr noundef nonnull %3, i32 noundef 4328) #13
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i32
  %14 = shl i32 25, %13
  %15 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 22
  store i32 %14, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @psmouse_matches_pnp_id(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %6 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 3
  %7 = tail call i32 @strncmp(ptr noundef %6, ptr noundef nonnull dereferenceable(6) @.str, i32 noundef 5)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = getelementptr %struct.serio, ptr %5, i32 0, i32 3, i32 5
  %11 = tail call ptr @kstrndup(ptr noundef %10, i32 noundef 123, i32 noundef 3264) #13
  store ptr %11, ptr %3, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.1) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %33, label %16

16:                                               ; preds = %30, %13
  %17 = phi ptr [ %31, %30 ], [ %14, %13 ]
  %18 = load ptr, ptr %1, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %25

20:                                               ; preds = %25
  %21 = add i32 %27, 1
  %22 = getelementptr ptr, ptr %1, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20, %16
  %26 = phi ptr [ %23, %20 ], [ %18, %16 ]
  %27 = phi i32 [ %21, %20 ], [ 0, %16 ]
  %28 = call i32 @strcasecmp(ptr noundef nonnull %17, ptr noundef nonnull %26) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %20

30:                                               ; preds = %20, %16
  %31 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.1) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %16

33:                                               ; preds = %30, %25, %13
  %34 = phi i1 [ false, %13 ], [ true, %25 ], [ false, %30 ]
  call void @kfree(ptr noundef nonnull %11) #13
  br label %35

35:                                               ; preds = %33, %9, %2
  %36 = phi i1 [ %34, %33 ], [ false, %2 ], [ false, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i1 %36
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @psmouse_activate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %3 = tail call i32 @ps2_command(ptr noundef %2, ptr noundef null, i32 noundef 244) #13
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  br i1 %4, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18
  %8 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef %8) #14
  br label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 18
  store i32 4, ptr %11, align 4
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 16
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, i32 3
  store i32 0, ptr %14, align 4
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 15
  store i32 %15, ptr %16, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %19 = load i16, ptr %18, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %21

21:                                               ; preds = %9, %6
  %22 = phi i32 [ -1, %6 ], [ 0, %9 ]
  ret i32 %22
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @psmouse_deactivate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %3 = tail call i32 @ps2_command(ptr noundef %2, ptr noundef null, i32 noundef 245) #13
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %2, align 4
  br i1 %4, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18
  %8 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %8, i32 noundef %3) #14
  br label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %10) #13
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 18
  store i32 3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 16
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, i32 3
  store i32 0, ptr %14, align 4
  %15 = load volatile i32, ptr @jiffies, align 64
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 15
  store i32 %15, ptr %16, align 4
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %19 = load i16, ptr %18, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %18, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %21

21:                                               ; preds = %9, %6
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @psmouse_attr_show_helper(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.psmouse_protocol, ptr %7, i32 0, i32 4
  %9 = load i8, ptr %8, align 1, !range !8
  %10 = icmp ne i8 %9, 0
  %11 = icmp ne ptr %1, @psmouse_attr_protocol
  %12 = and i1 %11, %10
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.psmouse_attribute, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.psmouse_attribute, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %15(ptr noundef %5, ptr noundef %17, ptr noundef %2) #13
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi i32 [ %18, %13 ], [ -2, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @psmouse_attr_set_helper(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef nonnull @psmouse_mutex) #13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %122

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 64
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.psmouse_protocol, ptr %11, i32 0, i32 4
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp ne i8 %13, 0
  %15 = icmp ne ptr %1, @psmouse_attr_protocol
  %16 = and i1 %15, %14
  br i1 %16, label %120, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.psmouse_attribute, ptr %1, i32 0, i32 4
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %80, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 18
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %120, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %0, i32 -52
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %0, i32 -83
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 5
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.serio, ptr %27, i32 0, i32 18, i32 8
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.psmouse, ptr %35, i32 0, i32 2
  %37 = tail call i32 @ps2_command(ptr noundef %36, ptr noundef null, i32 noundef 245) #13
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %36, align 4
  br i1 %38, label %43, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.serio, ptr %39, i32 0, i32 18
  %42 = getelementptr inbounds %struct.serio, ptr %39, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef %42, i32 noundef %37) #14
  br label %55

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.serio, ptr %39, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %44) #13
  %45 = getelementptr inbounds %struct.psmouse, ptr %35, i32 0, i32 18
  store i32 3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.psmouse, ptr %35, i32 0, i32 16
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.psmouse, ptr %35, i32 0, i32 9
  store i8 0, ptr %47, align 1
  %48 = getelementptr inbounds %struct.psmouse, ptr %35, i32 0, i32 2, i32 3
  store i32 0, ptr %48, align 4
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = getelementptr inbounds %struct.psmouse, ptr %35, i32 0, i32 15
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %36, align 4
  %52 = getelementptr inbounds %struct.serio, ptr %51, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %53 = load i16, ptr %52, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %52, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %55

55:                                               ; preds = %43, %40, %29, %25
  %56 = phi ptr [ null, %29 ], [ null, %25 ], [ %35, %40 ], [ %35, %43 ]
  %57 = load ptr, ptr %10, align 4
  %58 = getelementptr inbounds %struct.psmouse_protocol, ptr %57, i32 0, i32 4
  %59 = load i8, ptr %58, align 1, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2
  %63 = tail call i32 @ps2_command(ptr noundef %62, ptr noundef null, i32 noundef 245) #13
  %64 = icmp eq i32 %63, 0
  %65 = load ptr, ptr %62, align 4
  br i1 %64, label %69, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.serio, ptr %65, i32 0, i32 18
  %68 = getelementptr inbounds %struct.serio, ptr %65, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.3, ptr noundef %68, i32 noundef %63) #14
  br label %80

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.serio, ptr %65, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %70) #13
  store i32 3, ptr %22, align 4
  %71 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 16
  store i32 0, ptr %71, align 4
  %72 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 9
  store i8 0, ptr %72, align 1
  %73 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 2, i32 3
  store i32 0, ptr %73, align 4
  %74 = load volatile i32, ptr @jiffies, align 64
  %75 = getelementptr inbounds %struct.psmouse, ptr %9, i32 0, i32 15
  store i32 %74, ptr %75, align 4
  %76 = load ptr, ptr %62, align 4
  %77 = getelementptr inbounds %struct.serio, ptr %76, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %78 = load i16, ptr %77, align 4
  %79 = add i16 %78, 1
  store i16 %79, ptr %77, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %80

80:                                               ; preds = %69, %66, %55, %17
  %81 = phi ptr [ %56, %55 ], [ null, %17 ], [ %56, %66 ], [ %56, %69 ]
  %82 = getelementptr inbounds %struct.psmouse_attribute, ptr %1, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.psmouse_attribute, ptr %1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 %83(ptr noundef %9, ptr noundef %85, ptr noundef %2, i32 noundef %3) #13
  %87 = load i8, ptr %18, align 4, !range !8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %120, label %89

89:                                               ; preds = %80
  %90 = icmp eq i32 %86, -19
  br i1 %90, label %98, label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %10, align 4
  %93 = getelementptr inbounds %struct.psmouse_protocol, ptr %92, i32 0, i32 4
  %94 = load i8, ptr %93, align 1, !range !8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = tail call i32 @psmouse_activate(ptr noundef %9)
  br label %98

98:                                               ; preds = %96, %91, %89
  %99 = icmp eq ptr %81, null
  br i1 %99, label %120, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.psmouse, ptr %81, i32 0, i32 2
  %102 = tail call i32 @ps2_command(ptr noundef %101, ptr noundef null, i32 noundef 244) #13
  %103 = icmp eq i32 %102, 0
  %104 = load ptr, ptr %101, align 4
  br i1 %103, label %108, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.serio, ptr %104, i32 0, i32 18
  %107 = getelementptr inbounds %struct.serio, ptr %104, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.2, ptr noundef %107) #14
  br label %120

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.serio, ptr %104, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %109) #13
  %110 = getelementptr inbounds %struct.psmouse, ptr %81, i32 0, i32 18
  store i32 4, ptr %110, align 4
  %111 = getelementptr inbounds %struct.psmouse, ptr %81, i32 0, i32 16
  store i32 0, ptr %111, align 4
  %112 = getelementptr inbounds %struct.psmouse, ptr %81, i32 0, i32 9
  store i8 0, ptr %112, align 1
  %113 = getelementptr inbounds %struct.psmouse, ptr %81, i32 0, i32 2, i32 3
  store i32 0, ptr %113, align 4
  %114 = load volatile i32, ptr @jiffies, align 64
  %115 = getelementptr inbounds %struct.psmouse, ptr %81, i32 0, i32 15
  store i32 %114, ptr %115, align 4
  %116 = load ptr, ptr %101, align 4
  %117 = getelementptr inbounds %struct.serio, ptr %116, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %118 = load i16, ptr %117, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %117, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %120

120:                                              ; preds = %108, %105, %98, %80, %21, %7
  %121 = phi i32 [ %86, %98 ], [ %86, %80 ], [ -2, %7 ], [ -19, %21 ], [ %86, %105 ], [ %86, %108 ]
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  br label %122

122:                                              ; preds = %120, %4
  %123 = phi i32 [ %5, %4 ], [ %121, %120 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @psmouse_exit() #5 section ".exit.text" {
  tail call void @serio_unregister_driver(ptr noundef nonnull @psmouse_drv) #13
  %1 = load ptr, ptr @kpsmoused_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #13
  tail call void @psmouse_smbus_module_exit() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psmouse_smbus_module_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @psmouse_init() #5 section ".init.text" {
  tail call void @synaptics_module_init() #13
  %1 = tail call i32 @psmouse_smbus_module_init() #13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.75, i32 noundef 655362, i32 noundef 1) #13
  store ptr %4, ptr @kpsmoused_wq, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #14
  br label %13

8:                                                ; preds = %3
  %9 = tail call i32 @__serio_register_driver(ptr noundef nonnull @psmouse_drv, ptr noundef null, ptr noundef nonnull @.str.55) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @kpsmoused_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %12) #13
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %9, %11 ], [ -12, %6 ]
  tail call void @psmouse_smbus_module_exit() #13
  br label %15

15:                                               ; preds = %13, %8, %0
  %16 = phi i32 [ %14, %13 ], [ %1, %0 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_set_maxproto(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @strlen(ptr noundef nonnull %0)
  br label %6

6:                                                ; preds = %23, %4
  %7 = phi i32 [ 0, %4 ], [ %24, %23 ]
  %8 = getelementptr [18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %7, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strlen(ptr noundef %9) #13
  %11 = icmp eq i32 %10, %5
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = tail call i32 @strncmp(ptr noundef %9, ptr noundef nonnull %0, i32 noundef %5) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %6
  %16 = getelementptr [18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %7, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @strlen(ptr noundef %17) #13
  %19 = icmp eq i32 %18, %5
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call i32 @strncmp(ptr noundef %17, ptr noundef nonnull %0, i32 noundef %5) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %15
  %24 = add nuw nsw i32 %7, 1
  %25 = icmp eq i32 %24, 18
  br i1 %25, label %38, label %6

26:                                               ; preds = %20, %12
  %27 = getelementptr [18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = and i32 %7, 536870911
  %31 = lshr i32 130974, %30
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, ptr %27, align 4
  %36 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  store i32 %35, ptr %37, align 4
  br label %38

38:                                               ; preds = %34, %29, %26, %23, %2
  %39 = phi i32 [ 0, %34 ], [ -22, %2 ], [ -22, %29 ], [ -22, %26 ], [ -22, %23 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_get_maxproto(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 23
  br i1 %7, label %9, label %8

8:                                                ; preds = %9, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 939, i32 noundef 9, ptr noundef null) #13
  br label %16

9:                                                ; preds = %2
  %10 = lshr i32 8104703, %6
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %8, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds [23 x ptr], ptr @switch.table.psmouse_try_protocol, i32 0, i32 %6
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ @psmouse_protocols, %8 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.psmouse_protocol, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef %19)
  ret i32 %20
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps2bare_detect(ptr nocapture noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %3, label %16

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @.str.40, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store ptr @.str.41, ptr %9, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @input_set_capability(ptr noundef %15, i32 noundef 1, i32 noundef 274) #13
  br label %16

16:                                               ; preds = %13, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2pp_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @thinking_detect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 10, ptr %3, align 2, !annotation !14
  %5 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 0, ptr %3, align 2
  %6 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #13
  store i8 20, ptr %3, align 2
  %7 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 60, ptr %3, align 2
  %8 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 40, ptr %3, align 2
  %9 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 20, ptr %3, align 2
  %10 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 20, ptr %3, align 2
  %11 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 60, ptr %3, align 2
  %12 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 40, ptr %3, align 2
  %13 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 20, ptr %3, align 2
  %14 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 20, ptr %3, align 2
  %15 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  %16 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 754) #13
  %17 = load i8, ptr %3, align 2
  %18 = icmp ne i8 %17, 2
  %19 = xor i1 %1, true
  %20 = or i1 %18, %19
  %21 = select i1 %18, i32 -19, i32 0
  br i1 %20, label %34, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr %struct.input_dev, ptr %24, i32 0, i32 6, i32 8
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %26, 262144
  store i32 %27, ptr %25, align 4
  %28 = load ptr, ptr %23, align 4
  %29 = getelementptr %struct.input_dev, ptr %28, i32 0, i32 6, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 1048576
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str.42, ptr %32, align 4
  %33 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str.43, ptr %33, align 4
  br label %34

34:                                               ; preds = %22, %2
  %35 = phi i32 [ %21, %2 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cypress_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @genius_detect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 3, ptr %3, align 4, !annotation !14
  %5 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4328) #13
  %6 = call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 230) #13
  %7 = call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 230) #13
  %8 = call i32 @ps2_command(ptr noundef %4, ptr noundef null, i32 noundef 230) #13
  %9 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 1001) #13
  %10 = load i8, ptr %3, align 4
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp ne i8 %13, 51
  %15 = select i1 %11, i1 true, i1 %14
  %16 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 2
  %17 = load i8, ptr %16, align 2
  %18 = icmp ne i8 %17, 85
  %19 = select i1 %15, i1 true, i1 %18
  %20 = xor i1 %1, true
  %21 = or i1 %19, %20
  %22 = select i1 %19, i32 -19, i32 0
  br i1 %21, label %44, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.input_dev, ptr %25, i32 0, i32 6, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 262144
  store i32 %28, ptr %26, align 4
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr %struct.input_dev, ptr %29, i32 0, i32 6, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = or i32 %31, 1048576
  store i32 %32, ptr %30, align 4
  %33 = load ptr, ptr %24, align 4
  %34 = getelementptr %struct.input_dev, ptr %33, i32 0, i32 6, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = or i32 %35, 524288
  store i32 %36, ptr %34, align 4
  %37 = load ptr, ptr %24, align 4
  %38 = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 256
  store i32 %40, ptr %38, align 4
  %41 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str.44, ptr %41, align 4
  %42 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str.41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 4, ptr %43, align 2
  br label %44

44:                                               ; preds = %23, %2
  %45 = phi i32 [ %22, %2 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @intellimouse_detect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 200, ptr %3, align 2, !annotation !14
  %5 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 100, ptr %3, align 2
  %6 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 80, ptr %3, align 2
  %7 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 4339) #13
  %8 = call i32 @ps2_command(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 754) #13
  %9 = load i8, ptr %3, align 2
  %10 = icmp ne i8 %9, 3
  %11 = xor i1 %1, true
  %12 = or i1 %10, %11
  %13 = select i1 %10, i32 -19, i32 0
  br i1 %12, label %35, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.input_dev, ptr %16, i32 0, i32 6, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 262144
  store i32 %19, ptr %17, align 4
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 256
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store ptr @.str.40, ptr %24, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr @.str.45, ptr %29, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 4, ptr %34, align 2
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi i32 [ %13, %2 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @im_explorer_detect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 200, ptr %4, align 2, !annotation !14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 200, ptr %3, align 2, !annotation !14
  %6 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 100, ptr %3, align 2
  %7 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 4339) #13
  store i8 80, ptr %3, align 2
  %8 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 4339) #13
  %9 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 754) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %10 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 4339) #13
  store i8 -56, ptr %4, align 2
  %11 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 4339) #13
  store i8 80, ptr %4, align 2
  %12 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 4339) #13
  %13 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 754) #13
  %14 = load i8, ptr %4, align 2
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %53

16:                                               ; preds = %2
  store i8 -56, ptr %4, align 2
  %17 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 4339) #13
  store i8 80, ptr %4, align 2
  %18 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 4339) #13
  store i8 40, ptr %4, align 2
  %19 = call i32 @ps2_command(ptr noundef %5, ptr noundef nonnull %4, i32 noundef 4339) #13
  br i1 %1, label %20, label %53

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.input_dev, ptr %22, i32 0, i32 6, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 262144
  store i32 %25, ptr %23, align 4
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr inbounds %struct.input_dev, ptr %26, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 256
  store i32 %29, ptr %27, align 4
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr inbounds %struct.input_dev, ptr %30, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = or i32 %32, 64
  store i32 %33, ptr %31, align 4
  %34 = load ptr, ptr %21, align 4
  %35 = getelementptr %struct.input_dev, ptr %34, i32 0, i32 6, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, 524288
  store i32 %37, ptr %35, align 4
  %38 = load ptr, ptr %21, align 4
  %39 = getelementptr %struct.input_dev, ptr %38, i32 0, i32 6, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = or i32 %40, 1048576
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %20
  store ptr @.str.40, ptr %42, align 4
  br label %46

46:                                               ; preds = %45, %20
  %47 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store ptr @.str.46, ptr %47, align 4
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 4, ptr %52, align 2
  br label %53

53:                                               ; preds = %51, %16, %2
  %54 = phi i32 [ -19, %2 ], [ 0, %51 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_init_absolute(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_init_relative(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_init_smbus(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alps_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alps_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trackpoint_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elantech_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elantech_init_ps2(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elantech_init_smbus(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @cortron_detect(ptr nocapture noundef %0, i1 noundef zeroext %1) #7 {
  br i1 %1, label %3, label %15

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  store ptr @.str.47, ptr %4, align 4
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  store ptr @.str.48, ptr %5, align 4
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.input_dev, ptr %7, i32 0, i32 6, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = or i32 %9, 262144
  store i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr %struct.input_dev, ptr %11, i32 0, i32 6, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 524288
  store i32 %14, ptr %12, align 4
  br label %15

15:                                               ; preds = %3, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @focaltech_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @focaltech_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @byd_detect(ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @byd_init(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_attr_show_protocol(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.psmouse_protocol, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.49, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_attr_set_protocol(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %25, %4
  %9 = phi i32 [ 0, %4 ], [ %26, %25 ]
  %10 = getelementptr [18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %9, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @strlen(ptr noundef %11) #13
  %13 = icmp eq i32 %12, %3
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = tail call i32 @strncmp(ptr noundef %11, ptr noundef %2, i32 noundef %3) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %8
  %18 = getelementptr [18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %9, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @strlen(ptr noundef %19) #13
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = tail call i32 @strncmp(ptr noundef %19, ptr noundef %2, i32 noundef %3) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %17
  %26 = add nuw nsw i32 %9, 1
  %27 = icmp eq i32 %26, 18
  br i1 %27, label %171, label %8

28:                                               ; preds = %22, %14
  %29 = getelementptr [18 x %struct.psmouse_protocol], ptr @psmouse_protocols, i32 0, i32 %9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %171, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %29
  br i1 %34, label %171, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @input_allocate_device() #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %171, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 14
  %40 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 16
  %41 = load volatile ptr, ptr %39, align 4
  %42 = icmp eq ptr %41, %39
  br i1 %42, label %75, label %43

43:                                               ; preds = %38
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  tail call void @serio_unregister_child_port(ptr noundef %7) #13
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_mutex) #13
  %44 = load ptr, ptr %40, align 4
  %45 = icmp eq ptr %44, @psmouse_drv
  br i1 %45, label %50, label %49

46:                                               ; preds = %71
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.serio, ptr %47, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.52) #14
  tail call void @input_free_device(ptr noundef nonnull %36) #13
  br label %171

49:                                               ; preds = %65, %56, %43
  tail call void @input_free_device(ptr noundef nonnull %36) #13
  br label %171

50:                                               ; preds = %43
  %51 = load ptr, ptr %32, align 4
  %52 = icmp eq ptr %51, %29
  br i1 %52, label %74, label %53

53:                                               ; preds = %50
  %54 = load volatile ptr, ptr %39, align 4
  %55 = icmp eq ptr %54, %39
  br i1 %55, label %75, label %56

56:                                               ; preds = %53
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  tail call void @serio_unregister_child_port(ptr noundef %7) #13
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_mutex) #13
  %57 = load ptr, ptr %40, align 4
  %58 = icmp eq ptr %57, @psmouse_drv
  br i1 %58, label %59, label %49

59:                                               ; preds = %56
  %60 = load ptr, ptr %32, align 4
  %61 = icmp eq ptr %60, %29
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load volatile ptr, ptr %39, align 4
  %64 = icmp eq ptr %63, %39
  br i1 %64, label %75, label %65

65:                                               ; preds = %62
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  tail call void @serio_unregister_child_port(ptr noundef %7) #13
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_mutex) #13
  %66 = load ptr, ptr %40, align 4
  %67 = icmp eq ptr %66, @psmouse_drv
  br i1 %67, label %68, label %49

68:                                               ; preds = %65
  %69 = load ptr, ptr %32, align 4
  %70 = icmp eq ptr %69, %29
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load volatile ptr, ptr %39, align 4
  %73 = icmp eq ptr %72, %39
  br i1 %73, label %75, label %46

74:                                               ; preds = %68, %59, %50
  tail call void @input_free_device(ptr noundef nonnull %36) #13
  br label %171

75:                                               ; preds = %71, %62, %53, %38
  %76 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 12
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %90, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 5
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 5
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.serio, ptr %77, i32 0, i32 18, i32 8
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds %struct.psmouse, ptr %85, i32 0, i32 36
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  tail call void %87(ptr noundef %85) #13
  br label %90

90:                                               ; preds = %89, %83, %79, %75
  %91 = phi ptr [ %85, %89 ], [ %85, %83 ], [ null, %79 ], [ null, %75 ]
  %92 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %32, align 4
  %95 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 32
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  tail call void %96(ptr noundef %0) #13
  br label %99

99:                                               ; preds = %98, %90
  %100 = load ptr, ptr %6, align 4
  %101 = getelementptr inbounds %struct.serio, ptr %100, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %101) #13
  %102 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 18
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 16
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  store i8 0, ptr %104, align 1
  %105 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, i32 3
  store i32 0, ptr %105, align 4
  %106 = load volatile i32, ptr @jiffies, align 64
  %107 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 15
  store i32 %106, ptr %107, align 4
  %108 = load ptr, ptr %6, align 4
  %109 = getelementptr inbounds %struct.serio, ptr %108, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %110 = load i16, ptr %109, align 4
  %111 = add i16 %110, 1
  store i16 %111, ptr %109, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  store ptr %36, ptr %92, align 4
  %112 = load ptr, ptr %6, align 4
  %113 = getelementptr inbounds %struct.serio, ptr %112, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %113) #13
  store i32 1, ptr %102, align 4
  store i32 0, ptr %103, align 4
  store i8 0, ptr %104, align 1
  store i32 0, ptr %105, align 4
  %114 = load volatile i32, ptr @jiffies, align 64
  store i32 %114, ptr %107, align 4
  %115 = load ptr, ptr %6, align 4
  %116 = getelementptr inbounds %struct.serio, ptr %115, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %117 = load i16, ptr %116, align 4
  %118 = add i16 %117, 1
  store i16 %118, ptr %116, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %119 = tail call fastcc i32 @psmouse_switch_protocol(ptr noundef %0, ptr noundef nonnull %29)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #13
  store i16 0, ptr %5, align 2, !annotation !14
  %122 = call i32 @ps2_command(ptr noundef %6, ptr noundef nonnull %5, i32 noundef 767) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #13
  %123 = call fastcc i32 @psmouse_switch_protocol(ptr noundef %0, ptr noundef nonnull @psmouse_protocols)
  br label %124

124:                                              ; preds = %121, %99
  %125 = load i32, ptr @psmouse_max_proto, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %138, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 21
  %131 = load i32, ptr %130, align 4
  call void %129(ptr noundef %0, i32 noundef %131) #13
  %132 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 22
  %135 = load i32, ptr %134, align 4
  call void %133(ptr noundef %0, i32 noundef %135) #13
  %136 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 29
  %137 = load ptr, ptr %136, align 4
  call void %137(ptr noundef %0, i32 noundef 0) #13
  br label %138

138:                                              ; preds = %127, %124
  %139 = load ptr, ptr %6, align 4
  %140 = getelementptr inbounds %struct.serio, ptr %139, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %140) #13
  store i32 3, ptr %102, align 4
  store i32 0, ptr %103, align 4
  store i8 0, ptr %104, align 1
  store i32 0, ptr %105, align 4
  %141 = load volatile i32, ptr @jiffies, align 64
  store i32 %141, ptr %107, align 4
  %142 = load ptr, ptr %6, align 4
  %143 = getelementptr inbounds %struct.serio, ptr %142, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %144 = load i16, ptr %143, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr %143, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %146 = load ptr, ptr %32, align 4
  %147 = getelementptr inbounds %struct.psmouse_protocol, ptr %146, i32 0, i32 4
  %148 = load i8, ptr %147, align 1, !range !8
  %149 = icmp eq i8 %148, 0
  %150 = load ptr, ptr %92, align 4
  br i1 %149, label %152, label %151

151:                                              ; preds = %138
  call void @input_free_device(ptr noundef %150) #13
  store ptr null, ptr %92, align 4
  br label %161

152:                                              ; preds = %138
  %153 = call i32 @input_register_device(ptr noundef %150) #13
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %95, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  call void %156(ptr noundef %0) #13
  br label %159

159:                                              ; preds = %158, %155
  call void @psmouse_set_state(ptr noundef %0, i32 noundef 0)
  call void @input_free_device(ptr noundef nonnull %36) #13
  store ptr %93, ptr %92, align 4
  call void @psmouse_set_state(ptr noundef %0, i32 noundef 1)
  %160 = call fastcc i32 @psmouse_switch_protocol(ptr noundef %0, ptr noundef %94)
  call fastcc void @psmouse_initialize(ptr noundef %0)
  call void @psmouse_set_state(ptr noundef %0, i32 noundef 3)
  br label %171

161:                                              ; preds = %152, %151
  %162 = icmp eq ptr %93, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %161
  call void @input_unregister_device(ptr noundef nonnull %93) #13
  br label %164

164:                                              ; preds = %163, %161
  %165 = icmp eq ptr %91, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.psmouse, ptr %91, i32 0, i32 35
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  call void %168(ptr noundef nonnull %91) #13
  br label %171

171:                                              ; preds = %170, %166, %164, %159, %74, %49, %46, %35, %31, %28, %25
  %172 = phi i32 [ -5, %46 ], [ -19, %49 ], [ %3, %74 ], [ %153, %159 ], [ -22, %28 ], [ %3, %31 ], [ -12, %35 ], [ %3, %170 ], [ %3, %166 ], [ %3, %164 ], [ -22, %25 ]
  ret i32 %172
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_child_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @psmouse_switch_protocol(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 18
  %8 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 40, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.psmouse_protocol, ptr %1, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.psmouse_protocol, ptr %1, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %14, %10
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %20, i8 0, i64 116, i1 false) #13
  tail call void @input_set_capability(ptr noundef %19, i32 noundef 1, i32 noundef 272) #13
  tail call void @input_set_capability(ptr noundef %19, i32 noundef 1, i32 noundef 273) #13
  tail call void @input_set_capability(ptr noundef %19, i32 noundef 2, i32 noundef 0) #13
  tail call void @input_set_capability(ptr noundef %19, i32 noundef 2, i32 noundef 1) #13
  %21 = getelementptr inbounds %struct.input_dev, ptr %19, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = or i32 %22, 1
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  store ptr @psmouse_protocols, ptr %24, align 4
  %25 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  store ptr @psmouse_set_rate, ptr %25, align 4
  %26 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  store ptr @psmouse_set_resolution, ptr %26, align 4
  %27 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 29
  store ptr @psmouse_set_scale, ptr %27, align 4
  %28 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 34
  store ptr @psmouse_poll, ptr %28, align 4
  %29 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @psmouse_process_byte, ptr %29, align 4
  %30 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 3, ptr %30, align 2
  %31 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  %32 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 35
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 36
  store ptr null, ptr %33, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %31, i8 0, i64 16, i1 false) #13
  %34 = load ptr, ptr %11, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = tail call i32 %34(ptr noundef %0, i1 noundef zeroext true) #13
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %98, label %39

39:                                               ; preds = %36, %18
  %40 = getelementptr inbounds %struct.psmouse_protocol, ptr %1, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = tail call i32 %41(ptr noundef %0) #13
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %98, label %59

46:                                               ; preds = %14, %2
  %47 = load i32, ptr @psmouse_max_proto, align 4
  %48 = tail call fastcc i32 @psmouse_extensions(ptr noundef %0, i32 noundef %47, i1 noundef zeroext true)
  %49 = add i32 %48, -1
  %50 = icmp ult i32 %49, 23
  br i1 %50, label %52, label %51

51:                                               ; preds = %52, %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 939, i32 noundef 9, ptr noundef null) #13
  br label %59

52:                                               ; preds = %46
  %53 = lshr i32 8104703, %49
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %51, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds [23 x ptr], ptr @switch.table.psmouse_try_protocol, i32 0, i32 %49
  %58 = load ptr, ptr %57, align 4
  br label %59

59:                                               ; preds = %56, %51, %43, %39
  %60 = phi ptr [ %1, %43 ], [ %1, %39 ], [ @psmouse_protocols, %51 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  %63 = load i8, ptr %62, align 2
  %64 = icmp eq i8 %63, 3
  %65 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 24
  br i1 %64, label %75, label %66

66:                                               ; preds = %59
  %67 = load i32, ptr %65, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 24
  %71 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 34
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef %0) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %69, %59
  %76 = phi ptr [ %65, %59 ], [ %70, %69 ]
  store i32 0, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %69, %66
  %78 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 19
  %79 = getelementptr inbounds %struct.psmouse_protocol, ptr %60, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %78, i32 noundef 64, ptr noundef nonnull @.str.53, ptr noundef %80, ptr noundef %82, ptr noundef %84)
  store ptr %78, ptr %4, align 8
  %86 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 20
  %87 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 3
  store i16 17, ptr %88, align 4
  %89 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 3, i32 1
  store i16 2, ptr %89, align 2
  %90 = load ptr, ptr %61, align 4
  %91 = load i32, ptr %90, align 4
  %92 = trunc i32 %91 to i16
  %93 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 3, i32 2
  store i16 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 14
  %95 = load i32, ptr %94, align 4
  %96 = trunc i32 %95 to i16
  %97 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 3, i32 3
  store i16 %96, ptr %97, align 2
  br label %98

98:                                               ; preds = %77, %43, %36
  %99 = phi i32 [ 0, %77 ], [ -1, %36 ], [ -1, %43 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @psmouse_initialize(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @psmouse_max_proto, align 4
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 21
  %8 = load i32, ptr %7, align 4
  tail call void %6(ptr noundef %0, i32 noundef %8) #13
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  tail call void %10(ptr noundef %0, i32 noundef %12) #13
  %13 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 29
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %0, i32 noundef 0) #13
  br label %15

15:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @psmouse_extensions(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 5
  br i1 %9, label %38, label %10

10:                                               ; preds = %3
  br i1 %2, label %11, label %28

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %14, i8 0, i64 116, i1 false) #13
  tail call void @input_set_capability(ptr noundef %13, i32 noundef 1, i32 noundef 272) #13
  tail call void @input_set_capability(ptr noundef %13, i32 noundef 1, i32 noundef 273) #13
  tail call void @input_set_capability(ptr noundef %13, i32 noundef 2, i32 noundef 0) #13
  tail call void @input_set_capability(ptr noundef %13, i32 noundef 2, i32 noundef 1) #13
  %15 = getelementptr inbounds %struct.input_dev, ptr %13, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  store ptr @psmouse_protocols, ptr %18, align 4
  %19 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  store ptr @psmouse_set_rate, ptr %19, align 4
  %20 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  store ptr @psmouse_set_resolution, ptr %20, align 4
  %21 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 29
  store ptr @psmouse_set_scale, ptr %21, align 4
  %22 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 34
  store ptr @psmouse_poll, ptr %22, align 4
  %23 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @psmouse_process_byte, ptr %23, align 4
  %24 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 3, ptr %24, align 2
  %25 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  %26 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 35
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 36
  store ptr null, ptr %27, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %25, i8 0, i64 16, i1 false) #13
  br label %28

28:                                               ; preds = %11, %10
  %29 = tail call i32 @focaltech_detect(ptr noundef %0, i1 noundef zeroext %2) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = icmp ugt i32 %1, 6
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  br i1 %2, label %34, label %213

34:                                               ; preds = %33
  %35 = tail call i32 @focaltech_init(ptr noundef %0) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %213, label %37

37:                                               ; preds = %34, %31
  store i32 1, ptr %4, align 4
  store i32 1, ptr @psmouse_max_proto, align 4
  br label %194

38:                                               ; preds = %28, %3
  %39 = icmp ugt i32 %1, 6
  br i1 %39, label %40, label %42

40:                                               ; preds = %38
  %41 = tail call fastcc zeroext i1 @psmouse_do_detect(ptr noundef nonnull @thinking_detect, ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %2) #13
  br i1 %41, label %213, label %44

42:                                               ; preds = %38
  %43 = icmp ugt i32 %1, 1
  br i1 %43, label %44, label %194

44:                                               ; preds = %42, %40
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr inbounds %struct.serio, ptr %45, i32 0, i32 5
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 5
  br i1 %48, label %78, label %49

49:                                               ; preds = %44
  br i1 %2, label %50, label %67

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %53, i8 0, i64 116, i1 false) #13
  tail call void @input_set_capability(ptr noundef %52, i32 noundef 1, i32 noundef 272) #13
  tail call void @input_set_capability(ptr noundef %52, i32 noundef 1, i32 noundef 273) #13
  tail call void @input_set_capability(ptr noundef %52, i32 noundef 2, i32 noundef 0) #13
  tail call void @input_set_capability(ptr noundef %52, i32 noundef 2, i32 noundef 1) #13
  %54 = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = or i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  store ptr @psmouse_protocols, ptr %57, align 4
  %58 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  store ptr @psmouse_set_rate, ptr %58, align 4
  %59 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  store ptr @psmouse_set_resolution, ptr %59, align 4
  %60 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 29
  store ptr @psmouse_set_scale, ptr %60, align 4
  %61 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 34
  store ptr @psmouse_poll, ptr %61, align 4
  %62 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @psmouse_process_byte, ptr %62, align 4
  %63 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 3, ptr %63, align 2
  %64 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  %65 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 35
  store ptr null, ptr %65, align 4
  %66 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 36
  store ptr null, ptr %66, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %64, i8 0, i64 16, i1 false) #13
  br label %67

67:                                               ; preds = %50, %49
  %68 = tail call i32 @synaptics_detect(ptr noundef %0, i1 noundef zeroext %2) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  br i1 %39, label %71, label %76

71:                                               ; preds = %70
  br i1 %2, label %72, label %213

72:                                               ; preds = %71
  %73 = tail call i32 @synaptics_init(ptr noundef %0) #13
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %213, label %75

75:                                               ; preds = %72
  store i32 6, ptr %4, align 4
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i32 [ 6, %75 ], [ %1, %70 ]
  tail call void @synaptics_reset(ptr noundef %0) #13
  br label %194

78:                                               ; preds = %67, %44
  %79 = icmp ugt i32 %1, 6
  br i1 %79, label %80, label %194

80:                                               ; preds = %78
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr inbounds %struct.serio, ptr %81, i32 0, i32 5
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 5
  br i1 %84, label %112, label %85

85:                                               ; preds = %80
  br i1 %2, label %89, label %86

86:                                               ; preds = %85
  %87 = tail call i32 @cypress_detect(ptr noundef %0, i1 noundef zeroext false) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %213, label %112

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %92, i8 0, i64 116, i1 false) #13
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 272) #13
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 1, i32 noundef 273) #13
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 2, i32 noundef 0) #13
  tail call void @input_set_capability(ptr noundef %91, i32 noundef 2, i32 noundef 1) #13
  %93 = getelementptr inbounds %struct.input_dev, ptr %91, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = or i32 %94, 1
  store i32 %95, ptr %93, align 4
  %96 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  store ptr @psmouse_protocols, ptr %96, align 4
  %97 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  store ptr @psmouse_set_rate, ptr %97, align 4
  %98 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  store ptr @psmouse_set_resolution, ptr %98, align 4
  %99 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 29
  store ptr @psmouse_set_scale, ptr %99, align 4
  %100 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 34
  store ptr @psmouse_poll, ptr %100, align 4
  %101 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @psmouse_process_byte, ptr %101, align 4
  %102 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 3, ptr %102, align 2
  %103 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  %104 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 35
  store ptr null, ptr %104, align 4
  %105 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 36
  store ptr null, ptr %105, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %103, i8 0, i64 16, i1 false) #13
  %106 = tail call i32 @cypress_detect(ptr noundef %0, i1 noundef zeroext true) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %89
  %109 = tail call i32 @cypress_init(ptr noundef %0) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %213, label %111

111:                                              ; preds = %108
  store i32 6, ptr %4, align 4
  br label %194

112:                                              ; preds = %89, %86, %80
  %113 = tail call i32 @ps2_command(ptr noundef %5, ptr noundef null, i32 noundef 246) #13
  %114 = load ptr, ptr %5, align 4
  %115 = getelementptr inbounds %struct.serio, ptr %114, i32 0, i32 5
  %116 = load i8, ptr %115, align 1
  %117 = icmp eq i8 %116, 5
  br i1 %117, label %145, label %118

118:                                              ; preds = %112
  br i1 %2, label %122, label %119

119:                                              ; preds = %118
  %120 = tail call i32 @alps_detect(ptr noundef %0, i1 noundef zeroext false) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %213, label %155

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.input_dev, ptr %124, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %125, i8 0, i64 116, i1 false) #13
  tail call void @input_set_capability(ptr noundef %124, i32 noundef 1, i32 noundef 272) #13
  tail call void @input_set_capability(ptr noundef %124, i32 noundef 1, i32 noundef 273) #13
  tail call void @input_set_capability(ptr noundef %124, i32 noundef 2, i32 noundef 0) #13
  tail call void @input_set_capability(ptr noundef %124, i32 noundef 2, i32 noundef 1) #13
  %126 = getelementptr inbounds %struct.input_dev, ptr %124, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  %128 = or i32 %127, 1
  store i32 %128, ptr %126, align 4
  %129 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  store ptr @psmouse_protocols, ptr %129, align 4
  %130 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  store ptr @psmouse_set_rate, ptr %130, align 4
  %131 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  store ptr @psmouse_set_resolution, ptr %131, align 4
  %132 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 29
  store ptr @psmouse_set_scale, ptr %132, align 4
  %133 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 34
  store ptr @psmouse_poll, ptr %133, align 4
  %134 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @psmouse_process_byte, ptr %134, align 4
  %135 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 3, ptr %135, align 2
  %136 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  %137 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 35
  store ptr null, ptr %137, align 4
  %138 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 36
  store ptr null, ptr %138, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %136, i8 0, i64 16, i1 false) #13
  %139 = tail call i32 @alps_detect(ptr noundef %0, i1 noundef zeroext true) #13
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %122
  %142 = tail call i32 @alps_init(ptr noundef %0) #13
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %213, label %144

144:                                              ; preds = %141
  store i32 6, ptr %4, align 4
  br label %194

145:                                              ; preds = %112
  %146 = load ptr, ptr %5, align 4
  %147 = getelementptr inbounds %struct.serio, ptr %146, i32 0, i32 5
  %148 = load i8, ptr %147, align 1
  %149 = icmp eq i8 %148, 5
  br i1 %149, label %186, label %160

150:                                              ; preds = %122
  %151 = load ptr, ptr %5, align 4
  %152 = getelementptr inbounds %struct.serio, ptr %151, i32 0, i32 5
  %153 = load i8, ptr %152, align 1
  %154 = icmp eq i8 %153, 5
  br i1 %154, label %186, label %164

155:                                              ; preds = %119
  %156 = load ptr, ptr %5, align 4
  %157 = getelementptr inbounds %struct.serio, ptr %156, i32 0, i32 5
  %158 = load i8, ptr %157, align 1
  %159 = icmp eq i8 %158, 5
  br i1 %159, label %186, label %161

160:                                              ; preds = %145
  br i1 %2, label %164, label %161

161:                                              ; preds = %160, %155
  %162 = tail call i32 @elantech_detect(ptr noundef %0, i1 noundef zeroext false) #13
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %213, label %186

164:                                              ; preds = %160, %150
  %165 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.input_dev, ptr %166, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %167, i8 0, i64 116, i1 false) #13
  tail call void @input_set_capability(ptr noundef %166, i32 noundef 1, i32 noundef 272) #13
  tail call void @input_set_capability(ptr noundef %166, i32 noundef 1, i32 noundef 273) #13
  tail call void @input_set_capability(ptr noundef %166, i32 noundef 2, i32 noundef 0) #13
  tail call void @input_set_capability(ptr noundef %166, i32 noundef 2, i32 noundef 1) #13
  %168 = getelementptr inbounds %struct.input_dev, ptr %166, i32 0, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = or i32 %169, 1
  store i32 %170, ptr %168, align 4
  %171 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 6
  store ptr @psmouse_protocols, ptr %171, align 4
  %172 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  store ptr @psmouse_set_rate, ptr %172, align 4
  %173 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  store ptr @psmouse_set_resolution, ptr %173, align 4
  %174 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 29
  store ptr @psmouse_set_scale, ptr %174, align 4
  %175 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 34
  store ptr @psmouse_poll, ptr %175, align 4
  %176 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  store ptr @psmouse_process_byte, ptr %176, align 4
  %177 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  store i8 3, ptr %177, align 2
  %178 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 30
  %179 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 35
  store ptr null, ptr %179, align 4
  %180 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 36
  store ptr null, ptr %180, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %178, i8 0, i64 16, i1 false) #13
  %181 = tail call i32 @elantech_detect(ptr noundef %0, i1 noundef zeroext true) #13
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %164
  %184 = tail call i32 @elantech_init(ptr noundef %0) #13
  %185 = icmp sgt i32 %184, -1
  br i1 %185, label %213, label %186

186:                                              ; preds = %183, %164, %161, %155, %150, %145
  %187 = tail call fastcc zeroext i1 @psmouse_do_detect(ptr noundef nonnull @genius_detect, ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %2) #13
  br i1 %187, label %213, label %188

188:                                              ; preds = %186
  %189 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4, i1 noundef zeroext %2, i1 noundef zeroext true)
  br i1 %189, label %213, label %190

190:                                              ; preds = %188
  %191 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %4, i1 noundef zeroext %2, i1 noundef zeroext true)
  br i1 %191, label %213, label %192

192:                                              ; preds = %190
  %193 = load i32, ptr %4, align 4
  br label %194

194:                                              ; preds = %192, %144, %111, %78, %76, %42, %37
  %195 = phi i32 [ 6, %111 ], [ %1, %78 ], [ 1, %37 ], [ 6, %144 ], [ %193, %192 ], [ %77, %76 ], [ %1, %42 ]
  %196 = phi i1 [ false, %111 ], [ false, %78 ], [ false, %37 ], [ false, %144 ], [ false, %192 ], [ true, %76 ], [ false, %42 ]
  %197 = tail call i32 @ps2_command(ptr noundef %5, ptr noundef null, i32 noundef 246) #13
  %198 = tail call i32 @psmouse_reset(ptr noundef %0)
  %199 = icmp ugt i32 %195, 5
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %4, i1 noundef zeroext %2, i1 noundef zeroext true)
  br i1 %201, label %213, label %202

202:                                              ; preds = %200
  %203 = load i32, ptr %4, align 4
  br label %204

204:                                              ; preds = %202, %194
  %205 = phi i32 [ %203, %202 ], [ %195, %194 ]
  %206 = icmp ugt i32 %205, 4
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %4, i1 noundef zeroext %2, i1 noundef zeroext true)
  br i1 %208, label %213, label %209

209:                                              ; preds = %207, %204
  %210 = call fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %4, i1 noundef zeroext %2, i1 noundef zeroext true)
  br i1 %196, label %211, label %213

211:                                              ; preds = %209
  %212 = tail call i32 @psmouse_reset(ptr noundef %0)
  br label %213

213:                                              ; preds = %211, %209, %207, %200, %190, %188, %186, %183, %161, %141, %119, %108, %86, %72, %71, %40, %34, %33
  %214 = phi i32 [ 18, %34 ], [ 18, %33 ], [ 7, %71 ], [ %73, %72 ], [ %184, %183 ], [ 2, %188 ], [ 10, %190 ], [ 6, %200 ], [ 5, %207 ], [ 1, %211 ], [ 1, %209 ], [ 17, %86 ], [ 8, %119 ], [ 14, %161 ], [ 3, %40 ], [ 17, %108 ], [ 8, %141 ], [ 4, %186 ]
  ret i32 %214
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @psmouse_set_rate(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ 0, %2 ], [ %10, %4 ]
  %6 = getelementptr [8 x i8], ptr @psmouse_set_rate.rates, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp ugt i32 %8, %1
  %10 = add i32 %5, 1
  br i1 %9, label %4, label %11

11:                                               ; preds = %4
  store i8 %7, ptr %3, align 1
  %12 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %13 = call i32 @ps2_command(ptr noundef %12, ptr noundef nonnull %3, i32 noundef 4339) #13
  %14 = load i8, ptr %3, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 21
  store i32 %15, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @psmouse_set_scale(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 231, i32 230
  %6 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_poll(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 7
  %4 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 10
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = or i32 %7, 235
  %9 = tail call i32 @ps2_command(ptr noundef %2, ptr noundef %3, i32 noundef %8) #13
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @psmouse_do_detect(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = icmp ne i8 %8, 5
  %10 = or i1 %9, %2
  br i1 %10, label %11, label %32

11:                                               ; preds = %4
  br i1 %3, label %12, label %29

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(116) %15, i8 0, i64 116, i1 false) #13
  tail call void @input_set_capability(ptr noundef %14, i32 noundef 1, i32 noundef 272) #13
  tail call void @input_set_capability(ptr noundef %14, i32 noundef 1, i32 noundef 273) #13
  tail call void @input_set_capability(ptr noundef %14, i32 noundef 2, i32 noundef 0) #13
  tail call void @input_set_capability(ptr noundef %14, i32 noundef 2, i32 noundef 1) #13
  %16 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 6
  store ptr @psmouse_protocols, ptr %19, align 4
  %20 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 27
  store ptr @psmouse_set_rate, ptr %20, align 4
  %21 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 28
  store ptr @psmouse_set_resolution, ptr %21, align 4
  %22 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 29
  store ptr @psmouse_set_scale, ptr %22, align 4
  %23 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 34
  store ptr @psmouse_poll, ptr %23, align 4
  %24 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 26
  store ptr @psmouse_process_byte, ptr %24, align 4
  %25 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 10
  store i8 3, ptr %25, align 2
  %26 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 30
  %27 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 35
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds %struct.psmouse, ptr %1, i32 0, i32 36
  store ptr null, ptr %28, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %26, i8 0, i64 16, i1 false) #13
  br label %29

29:                                               ; preds = %12, %11
  %30 = tail call i32 %0(ptr noundef %1, i1 noundef zeroext %3) #13
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %29, %4
  %33 = phi i1 [ %31, %29 ], [ false, %4 ]
  ret i1 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @psmouse_try_protocol(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
  %6 = add i32 %1, -1
  %7 = icmp ult i32 %6, 23
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = lshr i32 8104703, %6
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds [23 x ptr], ptr @switch.table.psmouse_try_protocol, i32 0, i32 %6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.psmouse_protocol, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.psmouse_protocol, ptr %14, i32 0, i32 3
  %18 = load i8, ptr %17, align 2, !range !8
  %19 = icmp ne i8 %18, 0
  %20 = tail call fastcc zeroext i1 @psmouse_do_detect(ptr noundef %16, ptr noundef %0, i1 noundef zeroext %19, i1 noundef zeroext %3)
  %21 = and i1 %20, %3
  br i1 %21, label %22, label %34

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.psmouse_protocol, ptr %14, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp ne ptr %24, null
  %26 = and i1 %25, %4
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = tail call i32 %24(ptr noundef %0) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %2, align 4
  %32 = icmp ugt i32 %31, 6
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 6, ptr %2, align 4
  br label %34

34:                                               ; preds = %33, %30, %27, %22, %12, %8, %5
  %35 = phi i1 [ %20, %12 ], [ false, %33 ], [ false, %30 ], [ true, %22 ], [ true, %27 ], [ false, %5 ], [ false, %8 ]
  ret i1 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synaptics_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synaptics_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elantech_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_interrupt(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %175, label %9

9:                                                ; preds = %3
  %10 = and i32 %2, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21, !prof !15

12:                                               ; preds = %9
  %13 = and i32 %2, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %33, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.psmouse_protocol, ptr %17, i32 0, i32 2
  %19 = load i8, ptr %18, align 1, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %33, !prof !16

21:                                               ; preds = %15, %9
  %22 = icmp eq i32 %7, 4
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.serio, ptr %25, i32 0, i32 18
  %27 = select i1 %11, ptr @.str.58, ptr @.str.57
  %28 = and i32 %2, 2
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.58, ptr @.str.59
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.56, ptr noundef nonnull %27, ptr noundef nonnull %30) #14
  br label %31

31:                                               ; preds = %23, %21
  %32 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2
  tail call void @ps2_cmd_aborted(ptr noundef %32) #13
  br label %175

33:                                               ; preds = %15, %12
  %34 = and i32 %2, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 11
  %38 = load i8, ptr %37, align 1
  switch i8 %38, label %50 [
    i8 0, label %55
    i8 1, label %39
  ]

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = zext i8 %1 to i32
  %43 = and i32 %42, 1
  tail call void @input_event(ptr noundef %41, i32 noundef 1, i32 noundef 272, i32 noundef %43) #13
  %44 = lshr i32 %42, 2
  %45 = and i32 %44, 1
  tail call void @input_event(ptr noundef %41, i32 noundef 1, i32 noundef 274, i32 noundef %45) #13
  %46 = lshr i32 %42, 1
  %47 = and i32 %46, 1
  tail call void @input_event(ptr noundef %41, i32 noundef 1, i32 noundef 273, i32 noundef %47) #13
  %48 = load ptr, ptr %40, align 4
  tail call void @input_event(ptr noundef %48, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %49 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 12
  store i8 %1, ptr %49, align 4
  br label %55

50:                                               ; preds = %36
  %51 = zext i8 %38 to i32
  %52 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.serio, ptr %53, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.61, i32 noundef %51) #14
  br label %55

55:                                               ; preds = %50, %39, %36
  %56 = phi i8 [ 0, %50 ], [ 0, %39 ], [ %1, %36 ]
  store i8 %56, ptr %37, align 1
  br label %175

57:                                               ; preds = %33
  %58 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2
  %59 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 2, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63, !prof !15

63:                                               ; preds = %57
  %64 = tail call zeroext i1 @ps2_handle_ack(ptr noundef %58, i8 noundef zeroext %1) #13
  br i1 %64, label %175, label %65

65:                                               ; preds = %63
  %66 = load i32, ptr %59, align 4
  br label %67

67:                                               ; preds = %65, %57
  %68 = phi i32 [ %66, %65 ], [ %60, %57 ]
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !15

71:                                               ; preds = %67
  %72 = tail call zeroext i1 @ps2_handle_response(ptr noundef %58, i8 noundef zeroext %1) #13
  br i1 %72, label %175, label %73

73:                                               ; preds = %71, %67
  %74 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  tail call void @pm_wakeup_dev_event(ptr noundef %74, i32 noundef 0, i1 noundef zeroext false) #13
  %75 = load i32, ptr %6, align 4
  %76 = icmp ult i32 %75, 3
  br i1 %76, label %175, label %77

77:                                               ; preds = %73
  %78 = icmp eq i32 %75, 4
  %79 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 9
  %80 = load i8, ptr %79, align 1
  br i1 %78, label %81, label %105

81:                                               ; preds = %77
  %82 = icmp eq i8 %80, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 15
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 50
  %87 = load volatile i32, ptr @jiffies, align 64
  %88 = sub i32 %86, %87
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load ptr, ptr %58, align 4
  %92 = getelementptr inbounds %struct.serio, ptr %91, i32 0, i32 18
  %93 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 5
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 20
  %96 = zext i8 %80 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.60, ptr noundef %94, ptr noundef %95, i32 noundef %96) #14
  %97 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 7
  %98 = load i8, ptr %97, align 4
  %99 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 8
  store i8 %98, ptr %99, align 4
  store i32 2, ptr %6, align 4
  %100 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 16
  store i32 0, ptr %100, align 4
  store i8 0, ptr %79, align 1
  store i32 0, ptr %59, align 4
  %101 = load volatile i32, ptr @jiffies, align 64
  store i32 %101, ptr %84, align 4
  %102 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 3
  %103 = load ptr, ptr @kpsmoused_wq, align 4
  %104 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %103, ptr noundef %102, i32 noundef 0) #13
  br label %175

105:                                              ; preds = %83, %81, %77
  %106 = phi i8 [ %80, %83 ], [ 0, %81 ], [ %80, %77 ]
  %107 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 7
  %108 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 9
  %109 = add i8 %106, 1
  store i8 %109, ptr %108, align 1
  %110 = zext i8 %106 to i32
  %111 = getelementptr %struct.psmouse, ptr %5, i32 0, i32 7, i32 %110
  store i8 %1, ptr %111, align 1
  %112 = load i8, ptr %107, align 4
  %113 = icmp eq i8 %112, -86
  br i1 %113, label %114, label %145

114:                                              ; preds = %105
  %115 = load i8, ptr %108, align 1
  %116 = icmp ult i8 %115, 3
  br i1 %116, label %117, label %145, !prof !16

117:                                              ; preds = %114
  %118 = icmp eq i8 %115, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load volatile i32, ptr @jiffies, align 64
  %121 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 15
  store i32 %120, ptr %121, align 4
  br label %175

122:                                              ; preds = %117
  %123 = getelementptr %struct.psmouse, ptr %5, i32 0, i32 7, i32 1
  %124 = load i8, ptr %123, align 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 6
  %128 = load ptr, ptr %127, align 4
  %129 = load i32, ptr %128, align 4
  %130 = icmp eq i32 %129, 13
  %131 = icmp eq i8 %124, -86
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %137

133:                                              ; preds = %126, %122
  store i32 0, ptr %6, align 4
  %134 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 16
  store i32 0, ptr %134, align 4
  store i8 0, ptr %108, align 1
  store i32 0, ptr %59, align 4
  %135 = load volatile i32, ptr @jiffies, align 64
  %136 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 15
  store i32 %135, ptr %136, align 4
  tail call void @serio_reconnect(ptr noundef %0) #13
  br label %175

137:                                              ; preds = %126
  store i8 1, ptr %108, align 1
  %138 = tail call fastcc i32 @psmouse_handle_byte(ptr noundef %5)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %175

140:                                              ; preds = %137
  %141 = load i8, ptr %108, align 1
  %142 = add i8 %141, 1
  store i8 %142, ptr %108, align 1
  %143 = zext i8 %141 to i32
  %144 = getelementptr %struct.psmouse, ptr %5, i32 0, i32 7, i32 %143
  store i8 %1, ptr %144, align 1
  br label %145

145:                                              ; preds = %140, %114, %105
  %146 = load i32, ptr %6, align 4
  %147 = icmp eq i32 %146, 4
  br i1 %147, label %148, label %171

148:                                              ; preds = %145
  %149 = load i8, ptr %108, align 1
  %150 = icmp eq i8 %149, 1
  br i1 %150, label %151, label %171

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 24
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %171, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 15
  %157 = load i32, ptr %156, align 4
  %158 = mul i32 %153, 100
  %159 = add i32 %157, %158
  %160 = load volatile i32, ptr @jiffies, align 64
  %161 = sub i32 %159, %160
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %155
  %164 = load i8, ptr %107, align 4
  %165 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 8
  store i8 %164, ptr %165, align 4
  store i32 2, ptr %6, align 4
  %166 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 16
  store i32 0, ptr %166, align 4
  store i8 0, ptr %108, align 1
  store i32 0, ptr %59, align 4
  %167 = load volatile i32, ptr @jiffies, align 64
  store i32 %167, ptr %156, align 4
  %168 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 3
  %169 = load ptr, ptr @kpsmoused_wq, align 4
  %170 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %169, ptr noundef %168, i32 noundef 0) #13
  br label %175

171:                                              ; preds = %155, %151, %148, %145
  %172 = load volatile i32, ptr @jiffies, align 64
  %173 = getelementptr inbounds %struct.psmouse, ptr %5, i32 0, i32 15
  store i32 %172, ptr %173, align 4
  %174 = tail call fastcc i32 @psmouse_handle_byte(ptr noundef %5)
  br label %175

175:                                              ; preds = %171, %163, %137, %133, %119, %90, %73, %71, %63, %55, %31, %3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_connect(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_mutex) #13
  %4 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 5
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 2
  %15 = tail call i32 @ps2_command(ptr noundef %14, ptr noundef null, i32 noundef 245) #13
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr %14, align 4
  br i1 %16, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18
  %20 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef %20, i32 noundef %15) #14
  br label %33

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %22) #13
  %23 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 18
  store i32 3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 16
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 9
  store i8 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 2, i32 3
  store i32 0, ptr %26, align 4
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %33

33:                                               ; preds = %21, %18, %7, %2
  %34 = phi ptr [ null, %7 ], [ null, %2 ], [ %13, %18 ], [ %13, %21 ]
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 312) #15
  %37 = tail call ptr @input_allocate_device() #13
  %38 = icmp ne ptr %36, null
  %39 = icmp ne ptr %37, null
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %41, label %206

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 2
  tail call void @ps2_init(ptr noundef %42, ptr noundef %0) #13
  %43 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 3
  store i32 -32, ptr %43, align 4
  %44 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %44, ptr %44, align 8
  %45 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 3, i32 0, i32 2
  store ptr @psmouse_resync, ptr %46, align 8
  %47 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %47, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #13
  %48 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 1
  store ptr %37, ptr %48, align 4
  %49 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 20
  %50 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 2
  %51 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %49, i32 noundef 32, ptr noundef nonnull @.str.65, ptr noundef %50)
  %52 = load ptr, ptr %42, align 8
  %53 = getelementptr inbounds %struct.serio, ptr %52, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %53) #13
  %54 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 18
  store i32 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 16
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 9
  store i8 0, ptr %56, align 1
  %57 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 2, i32 3
  store i32 0, ptr %57, align 4
  %58 = load volatile i32, ptr @jiffies, align 64
  %59 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 15
  store i32 %58, ptr %59, align 8
  %60 = load ptr, ptr %42, align 8
  %61 = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %62 = load i16, ptr %61, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %64 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  store ptr %36, ptr %64, align 8
  %65 = tail call i32 @serio_open(ptr noundef %0, ptr noundef %1) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %203

67:                                               ; preds = %41
  %68 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 5
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 5
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #13
  br label %72

72:                                               ; preds = %71, %67
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 165, ptr %3, align 2, !annotation !14
  %73 = call i32 @ps2_command(ptr noundef %42, ptr noundef nonnull %3, i32 noundef 754) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i8, ptr %3, align 2
  switch i8 %76, label %77 [
    i8 -1, label %78
    i8 4, label %78
    i8 3, label %78
    i8 0, label %78
  ]

77:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  br label %200

78:                                               ; preds = %75, %75, %75, %75
  %79 = call i32 @ps2_command(ptr noundef %42, ptr noundef null, i32 noundef 246) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %42, align 8
  %83 = getelementptr inbounds %struct.serio, ptr %82, i32 0, i32 18
  %84 = getelementptr inbounds %struct.serio, ptr %82, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.68, ptr noundef %84, i32 noundef %79) #14
  br label %85

85:                                               ; preds = %81, %78
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  br label %88

86:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %87 = icmp slt i32 %73, 0
  br i1 %87, label %200, label %88

88:                                               ; preds = %86, %85
  %89 = load i32, ptr @psmouse_rate, align 4
  %90 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 21
  store i32 %89, ptr %90, align 8
  %91 = load i32, ptr @psmouse_resolution, align 4
  %92 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 22
  store i32 %91, ptr %92, align 4
  %93 = load i32, ptr @psmouse_resetafter, align 4
  %94 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 23
  store i32 %93, ptr %94, align 8
  %95 = icmp eq ptr %34, null
  %96 = load i32, ptr @psmouse_resync_time, align 4
  %97 = select i1 %95, i32 %96, i32 0
  %98 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 24
  store i32 %97, ptr %98, align 4
  %99 = load i8, ptr @psmouse_smartscroll, align 1, !range !8
  %100 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 25
  store i8 %99, ptr %100, align 8
  %101 = call fastcc i32 @psmouse_switch_protocol(ptr noundef nonnull %36, ptr noundef null)
  %102 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 6
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.psmouse_protocol, ptr %103, i32 0, i32 4
  %105 = load i8, ptr %104, align 1, !range !8
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %88
  %108 = load ptr, ptr %42, align 8
  %109 = getelementptr inbounds %struct.serio, ptr %108, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %109) #13
  store i32 3, ptr %54, align 4
  store i32 0, ptr %55, align 4
  store i8 0, ptr %56, align 1
  store i32 0, ptr %57, align 4
  %110 = load volatile i32, ptr @jiffies, align 64
  store i32 %110, ptr %59, align 8
  %111 = load ptr, ptr %42, align 8
  %112 = getelementptr inbounds %struct.serio, ptr %111, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %113 = load i16, ptr %112, align 4
  %114 = add i16 %113, 1
  store i16 %114, ptr %112, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %115 = load i32, ptr @psmouse_max_proto, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %126, label %117

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 27
  %119 = load ptr, ptr %118, align 8
  %120 = load i32, ptr %90, align 8
  call void %119(ptr noundef nonnull %36, i32 noundef %120) #13
  %121 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 28
  %122 = load ptr, ptr %121, align 4
  %123 = load i32, ptr %92, align 4
  call void %122(ptr noundef nonnull %36, i32 noundef %123) #13
  %124 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 29
  %125 = load ptr, ptr %124, align 8
  call void %125(ptr noundef nonnull %36, i32 noundef 0) #13
  br label %126

126:                                              ; preds = %117, %107
  %127 = call i32 @input_register_device(ptr noundef nonnull %37) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %185

129:                                              ; preds = %88
  call void @input_free_device(ptr noundef nonnull %37) #13
  store ptr null, ptr %48, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = phi ptr [ null, %129 ], [ %37, %126 ]
  br i1 %95, label %141, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 35
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  call void %134(ptr noundef nonnull %34) #13
  br label %137

137:                                              ; preds = %136, %132
  %138 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  %139 = call i32 @sysfs_create_group(ptr noundef %138, ptr noundef nonnull @psmouse_attribute_group) #13
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %145, label %176

141:                                              ; preds = %130
  %142 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  %143 = call i32 @sysfs_create_group(ptr noundef %142, ptr noundef nonnull @psmouse_attribute_group) #13
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %181

145:                                              ; preds = %141, %137
  %146 = load ptr, ptr %102, align 8
  %147 = getelementptr inbounds %struct.psmouse_protocol, ptr %146, i32 0, i32 4
  %148 = load i8, ptr %147, align 1, !range !8
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 @psmouse_activate(ptr noundef nonnull %36)
  br label %152

152:                                              ; preds = %206, %150, %145
  %153 = phi i32 [ %208, %206 ], [ 0, %145 ], [ 0, %150 ]
  %154 = icmp eq ptr %34, null
  br i1 %154, label %175, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 2
  %157 = call i32 @ps2_command(ptr noundef %156, ptr noundef null, i32 noundef 244) #13
  %158 = icmp eq i32 %157, 0
  %159 = load ptr, ptr %156, align 4
  br i1 %158, label %163, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.serio, ptr %159, i32 0, i32 18
  %162 = getelementptr inbounds %struct.serio, ptr %159, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %161, ptr noundef nonnull @.str.2, ptr noundef %162) #14
  br label %175

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.serio, ptr %159, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %164) #13
  %165 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 18
  store i32 4, ptr %165, align 4
  %166 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 16
  store i32 0, ptr %166, align 4
  %167 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 9
  store i8 0, ptr %167, align 1
  %168 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 2, i32 3
  store i32 0, ptr %168, align 4
  %169 = load volatile i32, ptr @jiffies, align 64
  %170 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 15
  store i32 %169, ptr %170, align 4
  %171 = load ptr, ptr %156, align 4
  %172 = getelementptr inbounds %struct.serio, ptr %171, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %173 = load i16, ptr %172, align 4
  %174 = add i16 %173, 1
  store i16 %174, ptr %172, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %175

175:                                              ; preds = %163, %160, %152
  call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  ret i32 %153

176:                                              ; preds = %137
  %177 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 36
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  call void %178(ptr noundef nonnull %34) #13
  br label %181

181:                                              ; preds = %180, %176, %141
  %182 = phi i32 [ %139, %180 ], [ %139, %176 ], [ %143, %141 ]
  %183 = icmp eq ptr %131, null
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  call void @input_unregister_device(ptr noundef nonnull %131) #13
  br label %185

185:                                              ; preds = %184, %181, %126
  %186 = phi ptr [ null, %184 ], [ null, %181 ], [ %37, %126 ]
  %187 = phi i32 [ %182, %184 ], [ %182, %181 ], [ %127, %126 ]
  %188 = getelementptr inbounds %struct.psmouse, ptr %36, i32 0, i32 32
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  call void %189(ptr noundef nonnull %36) #13
  br label %192

192:                                              ; preds = %191, %185
  %193 = load ptr, ptr %42, align 8
  %194 = getelementptr inbounds %struct.serio, ptr %193, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %194) #13
  store i32 0, ptr %54, align 4
  store i32 0, ptr %55, align 4
  store i8 0, ptr %56, align 1
  store i32 0, ptr %57, align 4
  %195 = load volatile i32, ptr @jiffies, align 64
  store i32 %195, ptr %59, align 8
  %196 = load ptr, ptr %42, align 8
  %197 = getelementptr inbounds %struct.serio, ptr %196, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %198 = load i16, ptr %197, align 4
  %199 = add i16 %198, 1
  store i16 %199, ptr %197, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %200

200:                                              ; preds = %192, %86, %77
  %201 = phi ptr [ %186, %192 ], [ %37, %86 ], [ %37, %77 ]
  %202 = phi i32 [ %187, %192 ], [ -19, %86 ], [ -19, %77 ]
  call void @serio_close(ptr noundef %0) #13
  br label %203

203:                                              ; preds = %200, %41
  %204 = phi ptr [ %37, %41 ], [ %201, %200 ]
  %205 = phi i32 [ %65, %41 ], [ %202, %200 ]
  store ptr null, ptr %64, align 8
  br label %206

206:                                              ; preds = %203, %33
  %207 = phi ptr [ %204, %203 ], [ %37, %33 ]
  %208 = phi i32 [ %205, %203 ], [ -12, %33 ]
  call void @input_free_device(ptr noundef %207) #13
  call void @kfree(ptr noundef %36) #13
  br label %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_reconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @__psmouse_reconnect(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_fast_reconnect(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @__psmouse_reconnect(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @psmouse_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  tail call void @sysfs_remove_group(ptr noundef %4, ptr noundef nonnull @psmouse_attribute_group) #13
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_mutex) #13
  %5 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.serio, ptr %6, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 18
  store i32 3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 16
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 9
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2, i32 3
  store i32 0, ptr %11, align 4
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 15
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr inbounds %struct.serio, ptr %14, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  %18 = load ptr, ptr @kpsmoused_wq, align 4
  tail call void @flush_workqueue(ptr noundef %18) #13
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_mutex) #13
  %19 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 5
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.serio, ptr %20, i32 0, i32 18, i32 8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.psmouse, ptr %28, i32 0, i32 2
  %30 = tail call i32 @ps2_command(ptr noundef %29, ptr noundef null, i32 noundef 245) #13
  %31 = icmp eq i32 %30, 0
  %32 = load ptr, ptr %29, align 4
  br i1 %31, label %36, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 18
  %35 = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef %35, i32 noundef %30) #14
  br label %48

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.serio, ptr %32, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %37) #13
  %38 = getelementptr inbounds %struct.psmouse, ptr %28, i32 0, i32 18
  store i32 3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.psmouse, ptr %28, i32 0, i32 16
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.psmouse, ptr %28, i32 0, i32 9
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.psmouse, ptr %28, i32 0, i32 2, i32 3
  store i32 0, ptr %41, align 4
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = getelementptr inbounds %struct.psmouse, ptr %28, i32 0, i32 15
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %29, align 4
  %45 = getelementptr inbounds %struct.serio, ptr %44, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %46 = load i16, ptr %45, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %48

48:                                               ; preds = %36, %33, %22, %1
  %49 = phi ptr [ null, %22 ], [ null, %1 ], [ %28, %33 ], [ %28, %36 ]
  %50 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 32
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void %51(ptr noundef %3) #13
  br label %54

54:                                               ; preds = %53, %48
  %55 = icmp eq ptr %49, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.psmouse, ptr %49, i32 0, i32 36
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void %58(ptr noundef nonnull %49) #13
  br label %61

61:                                               ; preds = %60, %56, %54
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr inbounds %struct.serio, ptr %62, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %63) #13
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  store i8 0, ptr %10, align 1
  store i32 0, ptr %11, align 4
  %64 = load volatile i32, ptr @jiffies, align 64
  store i32 %64, ptr %13, align 4
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr inbounds %struct.serio, ptr %65, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %67 = load i16, ptr %66, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %66, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  tail call void @serio_close(ptr noundef %0) #13
  store ptr null, ptr %2, align 8
  %69 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  tail call void @input_unregister_device(ptr noundef nonnull %70) #13
  br label %73

73:                                               ; preds = %72, %61
  tail call void @kfree(ptr noundef %3) #13
  br i1 %55, label %94, label %74

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.psmouse, ptr %49, i32 0, i32 2
  %76 = tail call i32 @ps2_command(ptr noundef %75, ptr noundef null, i32 noundef 244) #13
  %77 = icmp eq i32 %76, 0
  %78 = load ptr, ptr %75, align 4
  br i1 %77, label %82, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.serio, ptr %78, i32 0, i32 18
  %81 = getelementptr inbounds %struct.serio, ptr %78, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %80, ptr noundef nonnull @.str.2, ptr noundef %81) #14
  br label %94

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.serio, ptr %78, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %83) #13
  %84 = getelementptr inbounds %struct.psmouse, ptr %49, i32 0, i32 18
  store i32 4, ptr %84, align 4
  %85 = getelementptr inbounds %struct.psmouse, ptr %49, i32 0, i32 16
  store i32 0, ptr %85, align 4
  %86 = getelementptr inbounds %struct.psmouse, ptr %49, i32 0, i32 9
  store i8 0, ptr %86, align 1
  %87 = getelementptr inbounds %struct.psmouse, ptr %49, i32 0, i32 2, i32 3
  store i32 0, ptr %87, align 4
  %88 = load volatile i32, ptr @jiffies, align 64
  %89 = getelementptr inbounds %struct.psmouse, ptr %49, i32 0, i32 15
  store i32 %88, ptr %89, align 4
  %90 = load ptr, ptr %75, align 4
  %91 = getelementptr inbounds %struct.serio, ptr %90, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %92 = load i16, ptr %91, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %91, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %94

94:                                               ; preds = %82, %79, %73
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @psmouse_cleanup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_mutex) #13
  %4 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 5
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 18, i32 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 2
  %15 = tail call i32 @ps2_command(ptr noundef %14, ptr noundef null, i32 noundef 245) #13
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr %14, align 4
  br i1 %16, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18
  %20 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.3, ptr noundef %20, i32 noundef %15) #14
  br label %33

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %22) #13
  %23 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 18
  store i32 3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 16
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 9
  store i8 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 2, i32 3
  store i32 0, ptr %26, align 4
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = getelementptr inbounds %struct.psmouse, ptr %13, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %31 = load i16, ptr %30, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr %30, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %33

33:                                               ; preds = %21, %18, %7, %1
  %34 = phi ptr [ null, %7 ], [ null, %1 ], [ %13, %18 ], [ %13, %21 ]
  %35 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.serio, ptr %36, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %37) #13
  %38 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 18
  store i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 16
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 9
  store i8 0, ptr %40, align 1
  %41 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 2, i32 3
  store i32 0, ptr %41, align 4
  %42 = load volatile i32, ptr @jiffies, align 64
  %43 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 15
  store i32 %42, ptr %43, align 4
  %44 = load ptr, ptr %35, align 4
  %45 = getelementptr inbounds %struct.serio, ptr %44, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %46 = load i16, ptr %45, align 4
  %47 = add i16 %46, 1
  store i16 %47, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %48 = tail call i32 @ps2_command(ptr noundef %35, ptr noundef null, i32 noundef 245) #13
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %33
  %51 = load ptr, ptr %35, align 4
  %52 = getelementptr inbounds %struct.serio, ptr %51, i32 0, i32 18
  %53 = getelementptr inbounds %struct.serio, ptr %51, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.74, ptr noundef %53) #14
  br label %54

54:                                               ; preds = %50, %33
  %55 = getelementptr inbounds %struct.psmouse, ptr %3, i32 0, i32 33
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  tail call void %56(ptr noundef %3) #13
  br label %59

59:                                               ; preds = %58, %54
  %60 = tail call i32 @ps2_command(ptr noundef %35, ptr noundef null, i32 noundef 246) #13
  %61 = tail call i32 @ps2_command(ptr noundef %35, ptr noundef null, i32 noundef 244) #13
  %62 = icmp eq ptr %34, null
  br i1 %62, label %88, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 36
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call void %65(ptr noundef nonnull %34) #13
  br label %68

68:                                               ; preds = %67, %63
  %69 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 2
  %70 = tail call i32 @ps2_command(ptr noundef %69, ptr noundef null, i32 noundef 244) #13
  %71 = icmp eq i32 %70, 0
  %72 = load ptr, ptr %69, align 4
  br i1 %71, label %76, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.serio, ptr %72, i32 0, i32 18
  %75 = getelementptr inbounds %struct.serio, ptr %72, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.2, ptr noundef %75) #14
  br label %88

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.serio, ptr %72, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %77) #13
  %78 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 18
  store i32 4, ptr %78, align 4
  %79 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 16
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 9
  store i8 0, ptr %80, align 1
  %81 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 2, i32 3
  store i32 0, ptr %81, align 4
  %82 = load volatile i32, ptr @jiffies, align 64
  %83 = getelementptr inbounds %struct.psmouse, ptr %34, i32 0, i32 15
  store i32 %82, ptr %83, align 4
  %84 = load ptr, ptr %69, align 4
  %85 = getelementptr inbounds %struct.serio, ptr %84, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %86 = load i16, ptr %85, align 4
  %87 = add i16 %86, 1
  store i16 %87, ptr %85, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %88

88:                                               ; preds = %76, %73, %59
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_cmd_aborted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_handle_ack(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ps2_handle_response(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_reconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @psmouse_handle_byte(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 %3(ptr noundef %0) #13
  switch i32 %4, label %46 [
    i32 0, label %5
    i32 2, label %34
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 18
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.serio, ptr %11, i32 0, i32 18
  %13 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 20
  %16 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.62, ptr noundef %14, ptr noundef %15, i32 noundef %18) #14
  %19 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 16
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 23
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %9
  store i32 0, ptr %6, align 4
  store i32 0, ptr %19, align 4
  store i8 0, ptr %16, align 1
  %26 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2, i32 3
  store i32 0, ptr %26, align 4
  %27 = load volatile i32, ptr @jiffies, align 64
  %28 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = load ptr, ptr %10, align 4
  %30 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %30, ptr noundef nonnull @.str.63) #14
  %31 = load ptr, ptr %10, align 4
  tail call void @serio_reconnect(ptr noundef %31) #13
  br label %46

32:                                               ; preds = %9, %5
  %33 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  store i8 0, ptr %33, align 1
  br label %46

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 9
  store i8 0, ptr %35, align 1
  %36 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 16
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  store i32 0, ptr %36, align 4
  %40 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.serio, ptr %41, i32 0, i32 18
  %43 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 20
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %42, ptr noundef nonnull @.str.64, ptr noundef %44, ptr noundef %45) #14
  br label %46

46:                                               ; preds = %39, %34, %32, %25, %1
  %47 = phi i32 [ -5, %25 ], [ 0, %34 ], [ 0, %39 ], [ 0, %1 ], [ 0, %32 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ps2_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @psmouse_resync(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -60
  %3 = getelementptr i8, ptr %0, i32 -52
  %4 = load ptr, ptr %3, align 4
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_mutex) #13
  %5 = getelementptr i8, ptr %0, i32 88
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %166

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 5
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18, i32 8
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 2
  %20 = tail call i32 @ps2_command(ptr noundef %19, ptr noundef null, i32 noundef 245) #13
  %21 = icmp eq i32 %20, 0
  %22 = load ptr, ptr %19, align 4
  br i1 %21, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 18
  %25 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef %25, i32 noundef %20) #14
  br label %38

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.serio, ptr %22, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %27) #13
  %28 = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 18
  store i32 3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 16
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 9
  store i8 0, ptr %30, align 1
  %31 = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 2, i32 3
  store i32 0, ptr %31, align 4
  %32 = load volatile i32, ptr @jiffies, align 64
  %33 = getelementptr inbounds %struct.psmouse, ptr %18, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr inbounds %struct.serio, ptr %34, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %36 = load i16, ptr %35, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %35, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %38

38:                                               ; preds = %26, %23, %12, %8
  %39 = phi ptr [ null, %12 ], [ null, %8 ], [ %18, %23 ], [ %18, %26 ]
  %40 = getelementptr i8, ptr %0, i32 84
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = tail call i32 @ps2_sendbyte(ptr noundef %3, i8 noundef zeroext -11, i32 noundef 20) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load i32, ptr %40, align 4
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %97, label %48

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %0, i32 69
  %50 = load i8, ptr %49, align 1, !range !8
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %97

52:                                               ; preds = %38
  %53 = getelementptr i8, ptr %0, i32 69
  store i8 1, ptr %53, align 1
  br label %54

54:                                               ; preds = %52, %48
  %55 = getelementptr i8, ptr %0, i32 240
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 %56(ptr noundef %2) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %54
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.serio, ptr %60, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %61) #13
  store i32 3, ptr %5, align 4
  %62 = getelementptr i8, ptr %0, i32 80
  store i32 0, ptr %62, align 4
  %63 = getelementptr i8, ptr %0, i32 65
  store i8 0, ptr %63, align 1
  %64 = getelementptr i8, ptr %0, i32 -16
  store i32 0, ptr %64, align 4
  %65 = load volatile i32, ptr @jiffies, align 64
  %66 = getelementptr i8, ptr %0, i32 76
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %3, align 4
  %68 = getelementptr inbounds %struct.serio, ptr %67, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %69 = load i16, ptr %68, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %68, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %71 = getelementptr i8, ptr %0, i32 66
  %72 = load i8, ptr %71, align 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %59
  %75 = getelementptr i8, ptr %0, i32 208
  br label %76

76:                                               ; preds = %82, %74
  %77 = phi i32 [ 0, %74 ], [ %83, %82 ]
  %78 = load i8, ptr %63, align 1
  %79 = add i8 %78, 1
  store i8 %79, ptr %63, align 1
  %80 = load ptr, ptr %75, align 4
  %81 = tail call i32 %80(ptr noundef %2) #13
  switch i32 %81, label %87 [
    i32 1, label %82
    i32 2, label %88
  ]

82:                                               ; preds = %76
  %83 = add nuw nsw i32 %77, 1
  %84 = load i8, ptr %71, align 2
  %85 = zext i8 %84 to i32
  %86 = icmp ult i32 %83, %85
  br i1 %86, label %76, label %87

87:                                               ; preds = %82, %76
  br label %88

88:                                               ; preds = %87, %76, %59
  %89 = phi i1 [ true, %59 ], [ true, %87 ], [ false, %76 ]
  %90 = load ptr, ptr %3, align 4
  %91 = getelementptr inbounds %struct.serio, ptr %90, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %91) #13
  store i32 2, ptr %5, align 4
  store i32 0, ptr %62, align 4
  store i8 0, ptr %63, align 1
  store i32 0, ptr %64, align 4
  %92 = load volatile i32, ptr @jiffies, align 64
  store i32 %92, ptr %66, align 4
  %93 = load ptr, ptr %3, align 4
  %94 = getelementptr inbounds %struct.serio, ptr %93, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %95 = load i16, ptr %94, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr %94, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %97

97:                                               ; preds = %88, %54, %48, %45
  %98 = phi i1 [ %89, %88 ], [ true, %54 ], [ true, %45 ], [ true, %48 ]
  %99 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 244) #13
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %97
  tail call void @msleep(i32 noundef 200) #13
  %102 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 244) #13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %101
  tail call void @msleep(i32 noundef 200) #13
  %105 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 244) #13
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %104
  tail call void @msleep(i32 noundef 200) #13
  %108 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 244) #13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %107
  tail call void @msleep(i32 noundef 200) #13
  %111 = tail call i32 @ps2_command(ptr noundef %3, ptr noundef null, i32 noundef 244) #13
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  tail call void @msleep(i32 noundef 200) #13
  %114 = load ptr, ptr %3, align 4
  %115 = getelementptr inbounds %struct.serio, ptr %114, i32 0, i32 18
  %116 = getelementptr inbounds %struct.serio, ptr %114, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.66, ptr noundef %116) #14
  br label %118

117:                                              ; preds = %110, %107, %104, %101, %97
  br i1 %98, label %118, label %132

118:                                              ; preds = %117, %113
  %119 = load ptr, ptr %3, align 4
  %120 = getelementptr inbounds %struct.serio, ptr %119, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %120) #13
  store i32 0, ptr %5, align 4
  %121 = getelementptr i8, ptr %0, i32 80
  store i32 0, ptr %121, align 4
  %122 = getelementptr i8, ptr %0, i32 65
  store i8 0, ptr %122, align 1
  %123 = getelementptr i8, ptr %0, i32 -16
  store i32 0, ptr %123, align 4
  %124 = load volatile i32, ptr @jiffies, align 64
  %125 = getelementptr i8, ptr %0, i32 76
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %3, align 4
  %127 = getelementptr inbounds %struct.serio, ptr %126, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %128 = load i16, ptr %127, align 4
  %129 = add i16 %128, 1
  store i16 %129, ptr %127, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %130 = load ptr, ptr %3, align 4
  %131 = getelementptr inbounds %struct.serio, ptr %130, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %131, ptr noundef nonnull @.str.67) #14
  tail call void @serio_reconnect(ptr noundef %4) #13
  br label %144

132:                                              ; preds = %117
  %133 = load ptr, ptr %3, align 4
  %134 = getelementptr inbounds %struct.serio, ptr %133, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %134) #13
  store i32 4, ptr %5, align 4
  %135 = getelementptr i8, ptr %0, i32 80
  store i32 0, ptr %135, align 4
  %136 = getelementptr i8, ptr %0, i32 65
  store i8 0, ptr %136, align 1
  %137 = getelementptr i8, ptr %0, i32 -16
  store i32 0, ptr %137, align 4
  %138 = load volatile i32, ptr @jiffies, align 64
  %139 = getelementptr i8, ptr %0, i32 76
  store i32 %138, ptr %139, align 4
  %140 = load ptr, ptr %3, align 4
  %141 = getelementptr inbounds %struct.serio, ptr %140, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %142 = load i16, ptr %141, align 4
  %143 = add i16 %142, 1
  store i16 %143, ptr %141, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %144

144:                                              ; preds = %132, %118
  %145 = icmp eq ptr %39, null
  br i1 %145, label %166, label %146

146:                                              ; preds = %144
  %147 = getelementptr inbounds %struct.psmouse, ptr %39, i32 0, i32 2
  %148 = tail call i32 @ps2_command(ptr noundef %147, ptr noundef null, i32 noundef 244) #13
  %149 = icmp eq i32 %148, 0
  %150 = load ptr, ptr %147, align 4
  br i1 %149, label %154, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.serio, ptr %150, i32 0, i32 18
  %153 = getelementptr inbounds %struct.serio, ptr %150, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull @.str.2, ptr noundef %153) #14
  br label %166

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.serio, ptr %150, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %155) #13
  %156 = getelementptr inbounds %struct.psmouse, ptr %39, i32 0, i32 18
  store i32 4, ptr %156, align 4
  %157 = getelementptr inbounds %struct.psmouse, ptr %39, i32 0, i32 16
  store i32 0, ptr %157, align 4
  %158 = getelementptr inbounds %struct.psmouse, ptr %39, i32 0, i32 9
  store i8 0, ptr %158, align 1
  %159 = getelementptr inbounds %struct.psmouse, ptr %39, i32 0, i32 2, i32 3
  store i32 0, ptr %159, align 4
  %160 = load volatile i32, ptr @jiffies, align 64
  %161 = getelementptr inbounds %struct.psmouse, ptr %39, i32 0, i32 15
  store i32 %160, ptr %161, align 4
  %162 = load ptr, ptr %147, align 4
  %163 = getelementptr inbounds %struct.serio, ptr %162, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %164 = load i16, ptr %163, align 4
  %165 = add i16 %164, 1
  store i16 %165, ptr %163, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %166

166:                                              ; preds = %154, %151, %144, %1
  tail call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ps2_sendbyte(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_show_int_attr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = ptrtoint ptr %1 to i32
  %5 = getelementptr i8, ptr %0, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.70, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_attr_set_rate(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !14
  %6 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 27
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %5, align 4
  call void %10(ptr noundef %0, i32 noundef %11) #13
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %3, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_attr_set_resolution(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !14
  %6 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.psmouse, ptr %0, i32 0, i32 28
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %5, align 4
  call void %10(ptr noundef %0, i32 noundef %11) #13
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %3, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @psmouse_set_int_attr(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !14
  %6 = call i32 @kstrtouint(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = ptrtoint ptr %1 to i32
  %10 = getelementptr i8, ptr %0, i32 %9
  %11 = load i32, ptr %5, align 4
  store i32 %11, ptr %10, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %3, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__psmouse_reconnect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18, i32 8
  %6 = load ptr, ptr %5, align 8
  tail call void @mutex_lock(ptr noundef nonnull @psmouse_mutex) #13
  br i1 %1, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 31
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %167, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 30
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %9, %7 ], [ %13, %11 ]
  %16 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 12
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %45, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 5
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.serio, ptr %17, i32 0, i32 18, i32 8
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.psmouse, ptr %25, i32 0, i32 2
  %27 = tail call i32 @ps2_command(ptr noundef %26, ptr noundef null, i32 noundef 245) #13
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr %26, align 4
  br i1 %28, label %33, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 18
  %32 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef %32, i32 noundef %27) #14
  br label %45

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.serio, ptr %29, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %34) #13
  %35 = getelementptr inbounds %struct.psmouse, ptr %25, i32 0, i32 18
  store i32 3, ptr %35, align 4
  %36 = getelementptr inbounds %struct.psmouse, ptr %25, i32 0, i32 16
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.psmouse, ptr %25, i32 0, i32 9
  store i8 0, ptr %37, align 1
  %38 = getelementptr inbounds %struct.psmouse, ptr %25, i32 0, i32 2, i32 3
  store i32 0, ptr %38, align 4
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = getelementptr inbounds %struct.psmouse, ptr %25, i32 0, i32 15
  store i32 %39, ptr %40, align 4
  %41 = load ptr, ptr %26, align 4
  %42 = getelementptr inbounds %struct.serio, ptr %41, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %43 = load i16, ptr %42, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %42, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %45

45:                                               ; preds = %33, %30, %19, %14
  %46 = phi ptr [ null, %19 ], [ null, %14 ], [ %25, %30 ], [ %25, %33 ]
  %47 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.serio, ptr %48, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %49) #13
  %50 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 18
  store i32 1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 16
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 9
  store i8 0, ptr %52, align 1
  %53 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 2, i32 3
  store i32 0, ptr %53, align 4
  %54 = load volatile i32, ptr @jiffies, align 64
  %55 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 15
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %47, align 4
  %57 = getelementptr inbounds %struct.serio, ptr %56, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %58 = load i16, ptr %57, align 4
  %59 = add i16 %58, 1
  store i16 %59, ptr %57, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %60 = icmp eq ptr %15, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %45
  %62 = tail call i32 %15(ptr noundef %6) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %144

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  br label %91

67:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  store i16 0, ptr %4, align 2, !annotation !14
  %68 = call i32 @ps2_command(ptr noundef %47, ptr noundef nonnull %4, i32 noundef 767) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  store i16 165, ptr %3, align 2, !annotation !14
  %69 = call i32 @ps2_command(ptr noundef %47, ptr noundef nonnull %3, i32 noundef 754) #13
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i8, ptr %3, align 2
  switch i8 %72, label %73 [
    i8 -1, label %74
    i8 4, label %74
    i8 3, label %74
    i8 0, label %74
  ]

73:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  br label %144

74:                                               ; preds = %71, %71, %71, %71
  %75 = call i32 @ps2_command(ptr noundef %47, ptr noundef null, i32 noundef 246) #13
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %47, align 4
  %79 = getelementptr inbounds %struct.serio, ptr %78, i32 0, i32 18
  %80 = getelementptr inbounds %struct.serio, ptr %78, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %79, ptr noundef nonnull @.str.68, ptr noundef %80, i32 noundef %75) #14
  br label %81

81:                                               ; preds = %77, %74
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  br label %84

82:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %83 = icmp slt i32 %69, 0
  br i1 %83, label %144, label %84

84:                                               ; preds = %82, %81
  %85 = load i32, ptr @psmouse_max_proto, align 4
  %86 = call fastcc i32 @psmouse_extensions(ptr noundef %6, i32 noundef %85, i1 noundef zeroext false)
  %87 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 6
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, %86
  br i1 %90, label %91, label %144

91:                                               ; preds = %84, %64
  %92 = phi ptr [ %66, %64 ], [ %88, %84 ]
  %93 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 6
  %94 = getelementptr inbounds %struct.psmouse_protocol, ptr %92, i32 0, i32 4
  %95 = load i8, ptr %94, align 1, !range !8
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %91
  %98 = load ptr, ptr %47, align 4
  %99 = getelementptr inbounds %struct.serio, ptr %98, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %99) #13
  store i32 3, ptr %50, align 4
  store i32 0, ptr %51, align 4
  store i8 0, ptr %52, align 1
  store i32 0, ptr %53, align 4
  %100 = load volatile i32, ptr @jiffies, align 64
  store i32 %100, ptr %55, align 4
  %101 = load ptr, ptr %47, align 4
  %102 = getelementptr inbounds %struct.serio, ptr %101, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %103 = load i16, ptr %102, align 4
  %104 = add i16 %103, 1
  store i16 %104, ptr %102, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  %105 = load i32, ptr @psmouse_max_proto, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %118, label %107

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 27
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 21
  %111 = load i32, ptr %110, align 4
  call void %109(ptr noundef %6, i32 noundef %111) #13
  %112 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 28
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 22
  %115 = load i32, ptr %114, align 4
  call void %113(ptr noundef %6, i32 noundef %115) #13
  %116 = getelementptr inbounds %struct.psmouse, ptr %6, i32 0, i32 29
  %117 = load ptr, ptr %116, align 4
  call void %117(ptr noundef %6, i32 noundef 0) #13
  br label %118

118:                                              ; preds = %107, %97, %91
  %119 = icmp eq ptr %46, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.psmouse, ptr %46, i32 0, i32 35
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void %122(ptr noundef nonnull %46) #13
  br label %125

125:                                              ; preds = %124, %120, %118
  %126 = load ptr, ptr %93, align 4
  %127 = getelementptr inbounds %struct.psmouse_protocol, ptr %126, i32 0, i32 4
  %128 = load i8, ptr %127, align 1, !range !8
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %125
  %131 = call i32 @ps2_command(ptr noundef %47, ptr noundef null, i32 noundef 244) #13
  %132 = icmp eq i32 %131, 0
  %133 = load ptr, ptr %47, align 4
  br i1 %132, label %137, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.serio, ptr %133, i32 0, i32 18
  %136 = getelementptr inbounds %struct.serio, ptr %133, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %135, ptr noundef nonnull @.str.2, ptr noundef %136) #14
  br label %144

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.serio, ptr %133, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %138) #13
  store i32 4, ptr %50, align 4
  store i32 0, ptr %51, align 4
  store i8 0, ptr %52, align 1
  store i32 0, ptr %53, align 4
  %139 = load volatile i32, ptr @jiffies, align 64
  store i32 %139, ptr %55, align 4
  %140 = load ptr, ptr %47, align 4
  %141 = getelementptr inbounds %struct.serio, ptr %140, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %142 = load i16, ptr %141, align 4
  %143 = add i16 %142, 1
  store i16 %143, ptr %141, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %144

144:                                              ; preds = %137, %134, %125, %84, %82, %73, %61
  %145 = phi i32 [ -1, %61 ], [ -1, %82 ], [ -1, %84 ], [ 0, %125 ], [ -1, %73 ], [ 0, %134 ], [ 0, %137 ]
  %146 = icmp eq ptr %46, null
  br i1 %146, label %167, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.psmouse, ptr %46, i32 0, i32 2
  %149 = call i32 @ps2_command(ptr noundef %148, ptr noundef null, i32 noundef 244) #13
  %150 = icmp eq i32 %149, 0
  %151 = load ptr, ptr %148, align 4
  br i1 %150, label %155, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.serio, ptr %151, i32 0, i32 18
  %154 = getelementptr inbounds %struct.serio, ptr %151, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %153, ptr noundef nonnull @.str.2, ptr noundef %154) #14
  br label %167

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.serio, ptr %151, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %156) #13
  %157 = getelementptr inbounds %struct.psmouse, ptr %46, i32 0, i32 18
  store i32 4, ptr %157, align 4
  %158 = getelementptr inbounds %struct.psmouse, ptr %46, i32 0, i32 16
  store i32 0, ptr %158, align 4
  %159 = getelementptr inbounds %struct.psmouse, ptr %46, i32 0, i32 9
  store i8 0, ptr %159, align 1
  %160 = getelementptr inbounds %struct.psmouse, ptr %46, i32 0, i32 2, i32 3
  store i32 0, ptr %160, align 4
  %161 = load volatile i32, ptr @jiffies, align 64
  %162 = getelementptr inbounds %struct.psmouse, ptr %46, i32 0, i32 15
  store i32 %161, ptr %162, align 4
  %163 = load ptr, ptr %148, align 4
  %164 = getelementptr inbounds %struct.serio, ptr %163, i32 0, i32 6
  call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !9
  %165 = load i16, ptr %164, align 4
  %166 = add i16 %165, 1
  store i16 %166, ptr %164, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #13, !srcloc !10
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #13, !srcloc !11
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #13, !srcloc !12
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !13
  br label %167

167:                                              ; preds = %155, %152, %144, %7
  %168 = phi i32 [ %145, %144 ], [ -2, %7 ], [ %145, %152 ], [ %145, %155 ]
  call void @mutex_unlock(ptr noundef nonnull @psmouse_mutex) #13
  ret i32 %168
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synaptics_module_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @psmouse_smbus_module_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{i64 2149218145}
!10 = !{i64 2149213969}
!11 = !{i64 2149214044, i64 2149214071, i64 2149214118, i64 2149214140, i64 2149214168, i64 2149214188}
!12 = !{i64 309357}
!13 = !{i64 2149242289}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 1, i32 2000}
