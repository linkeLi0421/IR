; ModuleID = '/llk/IR/drivers/media/dvb-frontends/au8522_decoder.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/au8522_decoder.c"
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
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.au8522_register_config = type { i16, [8 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.au8522_state = type { ptr, ptr, i8, %struct.tuner_i2c_props, %struct.list_head, %struct.au8522_config, %struct.dvb_frontend, i32, i32, i32, i32, %struct.v4l2_subdev, i64, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, [3 x %struct.media_pad] }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.au8522_config = type { i8, i8, ptr, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.78 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.80, %union.anon.81, i32, ptr, i32, %struct.anon.82, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.80 = type { i64 }
%union.anon.81 = type { ptr }
%struct.anon.82 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author251 = internal constant [25 x i8] c"author=Devin Heitmueller\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__param_str_analog_debug = internal constant [13 x i8] c"analog_debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@au8522_analog_debug = internal global i32 0, align 4
@__param_analog_debug = internal constant %struct.kernel_param { ptr @__param_str_analog_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @au8522_analog_debug } }, section "__param", align 4
@__UNIQUE_ID_analog_debugtype253 = internal constant [26 x i8] c"parmtype=analog_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_analog_debug254 = internal constant [67 x i8] c"parm=analog_debug:Analog debugging messages [0=Off (default) 1=On]\00", section ".modinfo", align 1
@au8522_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"au8522\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@au8522_driver = internal global %struct.i2c_driver { i32 0, ptr @au8522_probe, ptr @au8522_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @au8522_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [7 x i8] c"au8522\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\013au8522_decoder allocation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\016au8522_decoder creating new instance...\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\016au8522_decoder attach existing instance.\0A\00", align 1
@au8522_ops = internal constant %struct.v4l2_subdev_ops { ptr @au8522_core_ops, ptr @au8522_tuner_ops, ptr @au8522_audio_ops, ptr @au8522_video_ops, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"\016%s %d-%04x: failed to initialize media entity!\0A\00", align 1
@au8522_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @au8522_s_ctrl }, align 4
@au8522_core_ops = internal constant %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@au8522_tuner_ops = internal constant %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au8522_g_tuner, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@au8522_audio_ops = internal constant %struct.v4l2_subdev_audio_ops { ptr null, ptr null, ptr @au8522_s_audio_routing, ptr null }, align 4
@au8522_video_ops = internal constant %struct.v4l2_subdev_video_ops { ptr @au8522_s_video_routing, ptr null, ptr null, ptr @au8522_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au8522_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"\013Unsupported audio mode requested! mode=%d\0A\00", align 1
@lpfilter_coef = internal unnamed_addr constant [72 x %struct.au8522_register_config] [%struct.au8522_register_config { i16 1547, [8 x i8] c"!\0B\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1548, [8 x i8] c"\AD\AD\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1549, [8 x i8] c"p\F0\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1550, [8 x i8] c"\EA\E9\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1551, [8 x i8] c"\DD\DD\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1552, [8 x i8] c"\08d\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1553, [8 x i8] c"``\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1554, [8 x i8] c"\F8\B2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1555, [8 x i8] c"\01\02\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1556, [8 x i8] c"\E4\B4\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1557, [8 x i8] c"\19\02\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1558, [8 x i8] c"\AE.\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1559, [8 x i8] c"\EE\C5\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1560, [8 x i8] c"VV\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1561, [8 x i8] c"0X\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1562, [8 x i8] c"\F9\F8\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1563, [8 x i8] c"$d\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1564, [8 x i8] c"\07\07\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1565, [8 x i8] c"00\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1566, [8 x i8] c"\A9\ED\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1567, [8 x i8] c"\09\0B\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1568, [8 x i8] c"B\C2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1569, [8 x i8] c"\1D*\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1570, [8 x i8] c"\D6V\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1571, [8 x i8] c"\95\8B\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1572, [8 x i8] c"++\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1573, [8 x i8] c"0$\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1574, [8 x i8] c">>\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1575, [8 x i8] c"b\E2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1576, [8 x i8] c"\E9\F5\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1577, [8 x i8] c"\99\19\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1578, [8 x i8] c"\D4\11\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1579, [8 x i8] c"\03\04\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1580, [8 x i8] c"\B5\85\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1581, [8 x i8] c"\1E \00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1582, [8 x i8] c"*\EA\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1583, [8 x i8] c"\D7\D2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1584, [8 x i8] c"\15\15\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1585, [8 x i8] c"\A3\A9\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1586, [8 x i8] c"\1F\1F\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1587, [8 x i8] c"\F9\D1\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1588, [8 x i8] c"\C0\C3\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1589, [8 x i8] c"M\8D\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1590, [8 x i8] c"!1\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1591, [8 x i8] c"\83\83\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1592, [8 x i8] c"\08\8C\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1593, [8 x i8] c"\19\19\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1594, [8 x i8] c"E\A5\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1595, [8 x i8] c"\EF\EC\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1596, [8 x i8] c"\8A\8A\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1597, [8 x i8] c"\F4\F6\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1598, [8 x i8] c"\8F\8F\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1599, [8 x i8] c"D\0C\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1600, [8 x i8] c"\EF\F0\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1601, [8 x i8] c"ff\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1602, [8 x i8] c"\CC\D2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1603, [8 x i8] c"AA\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1604, [8 x i8] c"c\93\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1605, [8 x i8] c"\8E\8E\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1606, [8 x i8] c"\A2B\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1607, [8 x i8] c"{{\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1608, [8 x i8] c"\04\04\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1609, [8 x i8] zeroinitializer }, %struct.au8522_register_config { i16 1610, [8 x i8] c"@@\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1611, [8 x i8] c"\8C\98\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1612, [8 x i8] zeroinitializer }, %struct.au8522_register_config { i16 1613, [8 x i8] c"c\C3\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1614, [8 x i8] c"\04\04\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1615, [8 x i8] c"  \00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1616, [8 x i8] zeroinitializer }, %struct.au8522_register_config { i16 1617, [8 x i8] c"@@\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1618, [8 x i8] c"\01\01\00\00\00\00\00\00" }], align 2
@.str.6 = private unnamed_addr constant [39 x i8] c"\013au8522 mode not currently supported\0A\00", align 1
@filter_coef = internal unnamed_addr constant [30 x %struct.au8522_register_config] [%struct.au8522_register_config { i16 1040, [8 x i8] c"%\00%%\00\00\00\00" }, %struct.au8522_register_config { i16 1041, [8 x i8] c" \00  \00\00\00\00" }, %struct.au8522_register_config { i16 1042, [8 x i8] c"\03\00\03\03\00\00\00\00" }, %struct.au8522_register_config { i16 1043, [8 x i8] c"\E6\00\E6\E6\00\00\00\00" }, %struct.au8522_register_config { i16 1044, [8 x i8] c"@\00@@\00\00\00\00" }, %struct.au8522_register_config { i16 1045, [8 x i8] c"\1B\00\1B\1B\00\00\00\00" }, %struct.au8522_register_config { i16 1046, [8 x i8] c"\C0\00\C0\04\00\00\00\00" }, %struct.au8522_register_config { i16 1047, [8 x i8] c"\04\00\04\04\00\00\00\00" }, %struct.au8522_register_config { i16 1048, [8 x i8] c"\8C\00\8C\8C\00\00\00\00" }, %struct.au8522_register_config { i16 1049, [8 x i8] c"\A0@\A0\A0@@@\00" }, %struct.au8522_register_config { i16 1050, [8 x i8] c"!\09!!\09\09\09\00" }, %struct.au8522_register_config { i16 1051, [8 x i8] c"l8ll888\00" }, %struct.au8522_register_config { i16 1052, [8 x i8] c"\03\FF\03\03\FF\FF\FF\00" }, %struct.au8522_register_config { i16 1053, [8 x i8] c"\BF\C7\BF\BF\C7\C7\C7\00" }, %struct.au8522_register_config { i16 1054, [8 x i8] c"\A0\DF\A0\A0\DF\DF\DF\00" }, %struct.au8522_register_config { i16 1055, [8 x i8] c"\10\06\10\10\06\06\06\00" }, %struct.au8522_register_config { i16 1056, [8 x i8] c"\AE0\AE\AE000\00" }, %struct.au8522_register_config { i16 1057, [8 x i8] c"\C4\01\C4\C4\01\01\01\00" }, %struct.au8522_register_config { i16 1058, [8 x i8] c"T\DDTT\DD\DD\DD\00" }, %struct.au8522_register_config { i16 1059, [8 x i8] c"\D0\AF\D0\D0\AF\AF\AF\00" }, %struct.au8522_register_config { i16 1060, [8 x i8] c"\1C\F7\1C\1C\F7\F7\F7\00" }, %struct.au8522_register_config { i16 1061, [8 x i8] c"v\DBvv\DB\DB\DB\00" }, %struct.au8522_register_config { i16 1062, [8 x i8] c"a\C0aa\C0\C0\C0\00" }, %struct.au8522_register_config { i16 1063, [8 x i8] c"\D1/\D1\D1///\00" }, %struct.au8522_register_config { i16 1064, [8 x i8] c"\84\D8\84\84\D8\D8\D8\00" }, %struct.au8522_register_config { i16 1065, [8 x i8] c"\06\FB\06\06\FB\FB\FB\00" }, %struct.au8522_register_config { i16 1066, [8 x i8] c"!\D5!!\D5\D5\D5\00" }, %struct.au8522_register_config { i16 1067, [8 x i8] c"\0A>\0A\0A>>>\00" }, %struct.au8522_register_config { i16 1068, [8 x i8] c"\E6\15\E6\E6\15\15\15\00" }, %struct.au8522_register_config { i16 1069, [8 x i8] c"\014\01\01444\00" }], align 2
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_analog_debug254, ptr @__UNIQUE_ID_analog_debugtype253, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_license252, ptr @__param_analog_debug], section "llvm.metadata"

@__mod_i2c__au8522_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @au8522_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @au8522_driver) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @au8522_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %5) #5
  %11 = and i32 %10, 1572864
  %12 = icmp eq i32 %11, 1572864
  br i1 %12, label %13, label %78

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = trunc i16 %16 to i8
  %18 = call i32 @au8522_get_state(ptr noundef nonnull %3, ptr noundef %14, i8 noundef zeroext %17) #5
  switch i32 %18, label %21 [
    i32 0, label %19
    i32 1, label %22
  ]

19:                                               ; preds = %13
  %20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %78

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %13
  %23 = phi ptr [ @.str.3, %21 ], [ @.str.2, %13 ]
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %23) #6
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.au8522_state, ptr %25, i32 0, i32 5
  store i8 71, ptr %26, align 4
  %27 = load ptr, ptr %4, align 8
  %28 = getelementptr inbounds %struct.au8522_state, ptr %25, i32 0, i32 1
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.au8522_state, ptr %25, i32 0, i32 11
  call void @v4l2_i2c_subdev_init(ptr noundef %29, ptr noundef %0, ptr noundef nonnull @au8522_ops) #5
  %30 = load ptr, ptr %3, align 4
  %31 = getelementptr inbounds %struct.au8522_state, ptr %30, i32 0, i32 18, i32 0, i32 4
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.au8522_state, ptr %30, i32 0, i32 18, i32 0, i32 3
  store i32 1, ptr %32, align 8
  %33 = getelementptr %struct.au8522_state, ptr %30, i32 0, i32 18, i32 1, i32 4
  store i32 2, ptr %33, align 4
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr %struct.au8522_state, ptr %34, i32 0, i32 18, i32 1, i32 3
  store i32 2, ptr %35, align 8
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr %struct.au8522_state, ptr %36, i32 0, i32 18, i32 2, i32 4
  store i32 2, ptr %37, align 4
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr %struct.au8522_state, ptr %38, i32 0, i32 18, i32 2, i32 3
  store i32 3, ptr %39, align 8
  %40 = getelementptr inbounds %struct.au8522_state, ptr %25, i32 0, i32 11, i32 0, i32 3
  store i32 131076, ptr %40, align 4
  %41 = load ptr, ptr %3, align 4
  %42 = getelementptr inbounds %struct.au8522_state, ptr %41, i32 0, i32 18
  %43 = call i32 @media_entity_pads_init(ptr noundef %29, i16 noundef zeroext 3, ptr noundef %42) #5
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %22
  %46 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 11
  %51 = load i32, ptr %50, align 4
  %52 = load i16, ptr %15, align 2
  %53 = zext i16 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %48, i32 noundef %51, i32 noundef %53) #6
  br label %78

55:                                               ; preds = %22
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.au8522_state, ptr %56, i32 0, i32 17
  %58 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %57, i32 noundef 4, ptr noundef null, ptr noundef null) #5
  %59 = call ptr @v4l2_ctrl_new_std(ptr noundef %57, ptr noundef nonnull @au8522_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 109) #5
  %60 = call ptr @v4l2_ctrl_new_std(ptr noundef %57, ptr noundef nonnull @au8522_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 121) #5
  %61 = call ptr @v4l2_ctrl_new_std(ptr noundef %57, ptr noundef nonnull @au8522_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %62 = call ptr @v4l2_ctrl_new_std(ptr noundef %57, ptr noundef nonnull @au8522_ctrl_ops, i32 noundef 9963779, i64 noundef -32768, i64 noundef 32767, i64 noundef 1, i64 noundef 0) #5
  %63 = getelementptr inbounds %struct.au8522_state, ptr %25, i32 0, i32 11, i32 8
  store ptr %57, ptr %63, align 4
  %64 = getelementptr inbounds %struct.au8522_state, ptr %56, i32 0, i32 17, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %55
  call void @v4l2_ctrl_handler_free(ptr noundef %57) #5
  %68 = load ptr, ptr %3, align 4
  call void @au8522_release_state(ptr noundef %68) #5
  br label %78

69:                                               ; preds = %55
  %70 = load ptr, ptr %3, align 4
  store ptr %0, ptr %70, align 8
  %71 = load ptr, ptr %3, align 4
  %72 = getelementptr inbounds %struct.au8522_state, ptr %71, i32 0, i32 12
  store i64 4096, ptr %72, align 8
  %73 = getelementptr inbounds %struct.au8522_state, ptr %71, i32 0, i32 13
  store i32 1, ptr %73, align 8
  %74 = getelementptr inbounds %struct.au8522_state, ptr %71, i32 0, i32 14
  store i32 0, ptr %74, align 4
  %75 = getelementptr inbounds %struct.au8522_state, ptr %71, i32 0, i32 15
  store i32 8522, ptr %75, align 8
  %76 = getelementptr inbounds %struct.au8522_state, ptr %71, i32 0, i32 16
  store i32 0, ptr %76, align 4
  %77 = call i32 @au8522_writereg(ptr noundef %71, i16 noundef zeroext 262, i8 noundef zeroext 1) #5
  br label %78

78:                                               ; preds = %69, %67, %45, %19, %2
  %79 = phi i32 [ %43, %45 ], [ %65, %67 ], [ 0, %69 ], [ -5, %19 ], [ -5, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @v4l2_device_unregister_subdev(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %5) #5
  %6 = getelementptr i8, ptr %3, i32 -1108
  tail call void @au8522_release_state(ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_get_state(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @au8522_release_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_writereg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_g_tuner(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -1108
  %4 = tail call zeroext i8 @au8522_readreg(ptr noundef %3, i16 noundef zeroext 0) #5
  %5 = tail call zeroext i8 @au8522_readreg(ptr noundef %3, i16 noundef zeroext 126) #5
  %6 = icmp ne i8 %4, -94
  %7 = and i8 %5, 16
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = select i1 %9, i32 0, i32 65535
  %11 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 8
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, 112
  store i32 %14, ptr %12, align 4
  %15 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 6
  store i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_tuner, ptr %1, i32 0, i32 7
  store i32 1, ptr %16, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @au8522_readreg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_s_audio_routing(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 208
  store i32 %1, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 -1100
  %7 = load i8, ptr %6, align 8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 -1108
  tail call fastcc void @set_audio_input(ptr noundef %10)
  br label %11

11:                                               ; preds = %9, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_audio_input(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 14
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %11 [
    i32 0, label %4
    i32 1, label %13
  ]

4:                                                ; preds = %1
  %5 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 242, i8 noundef zeroext 0) #5
  %6 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 243, i8 noundef zeroext 0) #5
  %7 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 244, i8 noundef zeroext 0) #5
  %8 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 165, i8 noundef zeroext 4) #5
  %9 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 274, i8 noundef zeroext 2) #5
  %10 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 164, i8 noundef zeroext -100) #5
  br label %32

11:                                               ; preds = %1
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %3) #6
  br label %32

13:                                               ; preds = %13, %1
  %14 = phi i32 [ %20, %13 ], [ 0, %1 ]
  %15 = getelementptr [72 x %struct.au8522_register_config], ptr @lpfilter_coef, i32 0, i32 %14
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr [72 x %struct.au8522_register_config], ptr @lpfilter_coef, i32 0, i32 %14, i32 1
  %18 = load i8, ptr %17, align 2
  %19 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext %16, i8 noundef zeroext %18) #5
  %20 = add nuw nsw i32 %14, 1
  %21 = icmp eq i32 %20, 72
  br i1 %21, label %22, label %13

22:                                               ; preds = %13
  %23 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 242, i8 noundef zeroext 127) #5
  %24 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 243, i8 noundef zeroext 127) #5
  %25 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 244, i8 noundef zeroext -1) #5
  %26 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 249, i8 noundef zeroext 32) #5
  %27 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 241, i8 noundef zeroext -126) #5
  tail call void @msleep(i32 noundef 70) #5
  %28 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 164, i8 noundef zeroext -99) #5
  %29 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1542, i8 noundef zeroext 3) #5
  %30 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 274, i8 noundef zeroext -62) #5
  %31 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 165, i8 noundef zeroext 9) #5
  br label %32

32:                                               ; preds = %22, %11, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_s_video_routing(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr i8, ptr %0, i32 -1108
  switch i32 %1, label %11 [
    i32 1, label %6
    i32 6, label %6
    i32 5, label %6
  ]

6:                                                ; preds = %4, %4, %4
  %7 = getelementptr i8, ptr %0, i32 204
  store i32 %1, ptr %7, align 8
  %8 = getelementptr i8, ptr %0, i32 -1100
  %9 = load i8, ptr %8, align 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %14

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  br label %14

13:                                               ; preds = %6
  tail call fastcc void @au8522_video_set(ptr noundef %5)
  br label %14

14:                                               ; preds = %13, %11, %6
  %15 = phi i32 [ -22, %11 ], [ 0, %13 ], [ 0, %6 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_s_std(ptr noundef %0, i64 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -1108
  %4 = and i64 %1, 4352
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 196
  store i64 %1, ptr %7, align 8
  %8 = getelementptr i8, ptr %0, i32 -1100
  %9 = load i8, ptr %8, align 8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call fastcc void @au8522_video_set(ptr noundef %3)
  br label %12

12:                                               ; preds = %11, %6, %2
  %13 = phi i32 [ -22, %2 ], [ 0, %11 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_s_stream(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -1108
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 -16
  store i32 0, ptr %6, align 4
  %7 = tail call i32 @au8522_writereg(ptr noundef %3, i16 noundef zeroext 164, i8 noundef zeroext 1) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call fastcc void @au8522_video_set(ptr noundef %3)
  tail call fastcc void @set_audio_input(ptr noundef %3)
  br label %10

8:                                                ; preds = %2
  %9 = tail call i32 @au8522_writereg(ptr noundef %3, i16 noundef zeroext 164, i8 noundef zeroext 32) #5
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i8 [ 2, %8 ], [ 0, %5 ]
  %12 = getelementptr i8, ptr %0, i32 -1100
  store i8 %11, ptr %12, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @au8522_video_set(ptr noundef %0) unnamed_addr #2 {
  %2 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 164, i8 noundef zeroext 32) #5
  %3 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 13
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %35 [
    i32 1, label %5
    i32 2, label %10
    i32 3, label %15
    i32 4, label %20
    i32 6, label %25
    i32 7, label %30
  ]

5:                                                ; preds = %1
  %6 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %7 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %8 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  %9 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 129, i8 noundef zeroext -94) #5
  br label %41

10:                                               ; preds = %1
  %11 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %12 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %13 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  %14 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 129, i8 noundef zeroext -96) #5
  br label %41

15:                                               ; preds = %1
  %16 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %17 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %18 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  %19 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 129, i8 noundef zeroext 105) #5
  br label %41

20:                                               ; preds = %1
  %21 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %22 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %23 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  %24 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 129, i8 noundef zeroext 104) #5
  br label %41

25:                                               ; preds = %1
  %26 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 163, i8 noundef zeroext 2) #5
  %27 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 129, i8 noundef zeroext 35) #5
  %28 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %29 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  br label %41

30:                                               ; preds = %1
  %31 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 163, i8 noundef zeroext 2) #5
  %32 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 129, i8 noundef zeroext 32) #5
  %33 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %34 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  br label %41

35:                                               ; preds = %1
  %36 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %37 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %38 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 131, i8 noundef zeroext 14) #5
  %39 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 130, i8 noundef zeroext 16) #5
  %40 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 129, i8 noundef zeroext 40) #5
  br label %41

41:                                               ; preds = %35, %30, %25, %20, %15, %10, %5
  %42 = phi i1 [ false, %35 ], [ true, %30 ], [ true, %25 ], [ false, %20 ], [ false, %15 ], [ false, %10 ], [ false, %5 ]
  tail call fastcc void @setup_decoder_defaults(ptr noundef %0, i1 noundef zeroext %42) #5
  %43 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 164, i8 noundef zeroext -99) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @setup_decoder_defaults(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 9, i8 noundef zeroext 7) #5
  %4 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 10, i8 noundef zeroext -19) #5
  %5 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 11, i8 noundef zeroext 121) #5
  %6 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 12, i8 noundef zeroext -128) #5
  %7 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 13, i8 noundef zeroext -128) #5
  %8 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 14, i8 noundef zeroext 0) #5
  %9 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 15, i8 noundef zeroext 0) #5
  %10 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 16, i8 noundef zeroext 0) #5
  %11 = select i1 %1, i8 4, i8 0
  %12 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 17, i8 noundef zeroext %11) #5
  %13 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 18, i8 noundef zeroext 15) #5
  %14 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 21, i8 noundef zeroext 0) #5
  %15 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 96, i8 noundef zeroext 0) #5
  %16 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 12
  %17 = load i64, ptr %16, align 8
  %18 = icmp eq i64 %17, 256
  %19 = select i1 %18, i8 27, i8 25
  %20 = select i1 %18, i8 2, i8 1
  %21 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 97, i8 noundef zeroext %19) #5
  %22 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 98, i8 noundef zeroext %20) #5
  %23 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 99, i8 noundef zeroext 25) #5
  %24 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 100, i8 noundef zeroext -89) #5
  %25 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 101, i8 noundef zeroext 10) #5
  %26 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 102, i8 noundef zeroext 50) #5
  %27 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 103, i8 noundef zeroext 25) #5
  %28 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 104, i8 noundef zeroext 35) #5
  %29 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 105, i8 noundef zeroext 65) #5
  %30 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 106, i8 noundef zeroext 10) #5
  %31 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 107, i8 noundef zeroext 50) #5
  %32 = select i1 %1, i8 42, i8 52
  %33 = select i1 %1, i8 21, i8 5
  %34 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 108, i8 noundef zeroext %32) #5
  %35 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 109, i8 noundef zeroext %33) #5
  %36 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 110, i8 noundef zeroext 110) #5
  %37 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 111, i8 noundef zeroext 15) #5
  %38 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 112, i8 noundef zeroext -128) #5
  %39 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 113, i8 noundef zeroext 24) #5
  %40 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 114, i8 noundef zeroext 48) #5
  %41 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 115, i8 noundef zeroext -16) #5
  %42 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 116, i8 noundef zeroext -128) #5
  %43 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 117, i8 noundef zeroext -16) #5
  %44 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 119, i8 noundef zeroext -5) #5
  %45 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 120, i8 noundef zeroext 4) #5
  %46 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 121, i8 noundef zeroext 0) #5
  %47 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 122, i8 noundef zeroext 0) #5
  %48 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 123, i8 noundef zeroext -18) #5
  %49 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 228, i8 noundef zeroext -2) #5
  %50 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 229, i8 noundef zeroext 0) #5
  %51 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 22, i8 noundef zeroext 0) #5
  br label %52

52:                                               ; preds = %52, %2
  %53 = phi i32 [ 0, %2 ], [ %59, %52 ]
  %54 = getelementptr [30 x %struct.au8522_register_config], ptr @filter_coef, i32 0, i32 %53
  %55 = load i16, ptr %54, align 2
  %56 = getelementptr [30 x %struct.au8522_register_config], ptr @filter_coef, i32 0, i32 %53, i32 1, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext %55, i8 noundef zeroext %57) #5
  %59 = add nuw nsw i32 %53, 1
  %60 = icmp eq i32 %59, 30
  br i1 %60, label %61, label %52

61:                                               ; preds = %52
  %62 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1070, i8 noundef zeroext -121) #5
  %63 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1071, i8 noundef zeroext -94) #5
  %64 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1072, i8 noundef zeroext -65) #5
  %65 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1073, i8 noundef zeroext -53) #5
  %66 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1074, i8 noundef zeroext -95) #5
  %67 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1075, i8 noundef zeroext 65) #5
  %68 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1076, i8 noundef zeroext -120) #5
  %69 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1077, i8 noundef zeroext -62) #5
  %70 = tail call i32 @au8522_writereg(ptr noundef %0, i16 noundef zeroext 1078, i8 noundef zeroext 60) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @au8522_s_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -1328
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %35 [
    i32 9963776, label %7
    i32 9963777, label %13
    i32 9963778, label %18
    i32 9963779, label %26
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, -128
  %12 = tail call i32 @au8522_writereg(ptr noundef %4, i16 noundef zeroext 10, i8 noundef zeroext %11) #5
  br label %35

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = tail call i32 @au8522_writereg(ptr noundef %4, i16 noundef zeroext 11, i8 noundef zeroext %16) #5
  br label %35

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i8
  %22 = tail call i32 @au8522_writereg(ptr noundef %4, i16 noundef zeroext 12, i8 noundef zeroext %21) #5
  %23 = load i32, ptr %19, align 4
  %24 = trunc i32 %23 to i8
  %25 = tail call i32 @au8522_writereg(ptr noundef %4, i16 noundef zeroext 13, i8 noundef zeroext %24) #5
  br label %35

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 8
  %30 = trunc i32 %29 to i8
  %31 = tail call i32 @au8522_writereg(ptr noundef %4, i16 noundef zeroext 14, i8 noundef zeroext %30) #5
  %32 = load i32, ptr %27, align 4
  %33 = trunc i32 %32 to i8
  %34 = tail call i32 @au8522_writereg(ptr noundef %4, i16 noundef zeroext 15, i8 noundef zeroext %33) #5
  br label %35

35:                                               ; preds = %26, %18, %13, %7, %1
  %36 = phi i32 [ -22, %1 ], [ 0, %26 ], [ 0, %18 ], [ 0, %13 ], [ 0, %7 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
