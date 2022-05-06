; ModuleID = '/llk/IR/drivers/media/dvb-frontends/au8522_common.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/au8522_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_writereg:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_writereg\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_writereg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_readreg:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_readreg\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_readreg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_i2c_gate_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_i2c_gate_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_i2c_gate_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_analog_i2c_gate_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_analog_i2c_gate_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_analog_i2c_gate_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_get_state\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_get_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_release_state:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_release_state\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_release_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_led_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_led_ctrl\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_led_ctrl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_init:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_init\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_au8522_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22au8522_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_au8522_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.65], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.65 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.66 }>
%union.anon.66 = type { i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.70 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.au8522_led_config = type { i16, i16, i16, i16, i16, i16, i16, ptr, i32 }

@.str = private unnamed_addr constant [62 x i8] c"%s: writereg error (reg == 0x%02x, val == 0x%04x, ret == %i)\0A\00", align 1
@__func__.au8522_writereg = private unnamed_addr constant [16 x i8] c"au8522_writereg\00", align 1
@__kstrtab_au8522_writereg = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_writereg = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_writereg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_writereg to i32), ptr @__kstrtab_au8522_writereg, ptr @__kstrtabns_au8522_writereg }, section "___ksymtab+au8522_writereg", align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"\013%s: readreg error (ret == %i)\0A\00", align 1
@__func__.au8522_readreg = private unnamed_addr constant [15 x i8] c"au8522_readreg\00", align 1
@__kstrtab_au8522_readreg = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_readreg = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_readreg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_readreg to i32), ptr @__kstrtab_au8522_readreg, ptr @__kstrtabns_au8522_readreg }, section "___ksymtab+au8522_readreg", align 4
@debug = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"%s(%d)\0A\00", align 1
@__func__.au8522_i2c_gate_ctrl = private unnamed_addr constant [21 x i8] c"au8522_i2c_gate_ctrl\00", align 1
@__kstrtab_au8522_i2c_gate_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_i2c_gate_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_i2c_gate_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_i2c_gate_ctrl to i32), ptr @__kstrtab_au8522_i2c_gate_ctrl, ptr @__kstrtabns_au8522_i2c_gate_ctrl }, section "___ksymtab+au8522_i2c_gate_ctrl", align 4
@__func__.au8522_analog_i2c_gate_ctrl = private unnamed_addr constant [28 x i8] c"au8522_analog_i2c_gate_ctrl\00", align 1
@__kstrtab_au8522_analog_i2c_gate_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_analog_i2c_gate_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_analog_i2c_gate_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_analog_i2c_gate_ctrl to i32), ptr @__kstrtab_au8522_analog_i2c_gate_ctrl, ptr @__kstrtabns_au8522_analog_i2c_gate_ctrl }, section "___ksymtab+au8522_analog_i2c_gate_ctrl", align 4
@au8522_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @au8522_list_mutex, i64 12), ptr getelementptr (i8, ptr @au8522_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"au8522\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@__kstrtab_au8522_get_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_get_state = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_get_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_get_state to i32), ptr @__kstrtab_au8522_get_state, ptr @__kstrtabns_au8522_get_state }, section "___ksymtab+au8522_get_state", align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@__kstrtab_au8522_release_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_release_state = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_release_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_release_state to i32), ptr @__kstrtab_au8522_release_state, ptr @__kstrtabns_au8522_release_state }, section "___ksymtab+au8522_release_state", align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@__func__.au8522_led_ctrl = private unnamed_addr constant [16 x i8] c"au8522_led_ctrl\00", align 1
@__kstrtab_au8522_led_ctrl = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_led_ctrl = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_led_ctrl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_led_ctrl to i32), ptr @__kstrtab_au8522_led_ctrl, ptr @__kstrtabns_au8522_led_ctrl }, section "___ksymtab+au8522_led_ctrl", align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"%s()\0A\00", align 1
@__func__.au8522_init = private unnamed_addr constant [12 x i8] c"au8522_init\00", align 1
@__kstrtab_au8522_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_init = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_init to i32), ptr @__kstrtab_au8522_init, ptr @__kstrtabns_au8522_init }, section "___ksymtab+au8522_init", align 4
@__func__.au8522_sleep = private unnamed_addr constant [13 x i8] c"au8522_sleep\00", align 1
@__kstrtab_au8522_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_au8522_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_au8522_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @au8522_sleep to i32), ptr @__kstrtab_au8522_sleep, ptr @__kstrtabns_au8522_sleep }, section "___ksymtab+au8522_sleep", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [41 x i8] c"parm=debug:Enable verbose debug messages\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [57 x i8] c"description=Auvitek AU8522 QAM-B/ATSC Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [19 x i8] c"author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_au8522_analog_i2c_gate_ctrl, ptr @__ksymtab_au8522_get_state, ptr @__ksymtab_au8522_i2c_gate_ctrl, ptr @__ksymtab_au8522_init, ptr @__ksymtab_au8522_led_ctrl, ptr @__ksymtab_au8522_readreg, ptr @__ksymtab_au8522_release_state, ptr @__ksymtab_au8522_sleep, ptr @__ksymtab_au8522_writereg, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @au8522_writereg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #6
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  %8 = or i8 %7, -128
  store i8 %8, ptr %4, align 1
  %9 = getelementptr inbounds i8, ptr %4, i32 1
  %10 = trunc i16 %1 to i8
  store i8 %10, ptr %9, align 1
  %11 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %2, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 5
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 1) #6
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = zext i16 %1 to i32
  %25 = zext i8 %2 to i32
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.au8522_writereg, i32 noundef %24, i32 noundef %25, i32 noundef %21) #7
  br label %27

27:                                               ; preds = %23, %3
  %28 = xor i1 %22, true
  %29 = sext i1 %28 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #6
  ret i32 %29
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @au8522_readreg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #6
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  %8 = or i8 %7, 64
  store i8 %8, ptr %3, align 2
  %9 = getelementptr inbounds i8, ptr %3, i32 1
  %10 = trunc i16 %1 to i8
  store i8 %10, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 5
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %5, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %14, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %21, align 4
  %22 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %5, i32 noundef 2) #6
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.au8522_readreg, i32 noundef %24) #7
  br label %28

28:                                               ; preds = %26, %2
  %29 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #6
  ret i8 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @au8522_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.au8522_i2c_gate_ctrl, i32 noundef %1) #7
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 2
  %15 = load i8, ptr %14, align 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %1, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #6
  store i8 -127, ptr %5, align 1
  %20 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 6, ptr %20, align 1
  %21 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 1, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %22 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %22, align 4, !annotation !8
  %23 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 5
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %6, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %6, i32 noundef 1) #6
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %34, label %32

32:                                               ; preds = %19
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.au8522_writereg, i32 noundef 262, i32 noundef 1, i32 noundef %30) #7
  br label %34

34:                                               ; preds = %32, %19
  %35 = xor i1 %31, true
  %36 = sext i1 %35 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #6
  br label %55

37:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  store i8 -127, ptr %3, align 1
  %38 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 6, ptr %38, align 1
  %39 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %40 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %40, align 4, !annotation !8
  %41 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 5
  %42 = load i8, ptr %41, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %4, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %4, i32 noundef 1) #6
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %52, label %50

50:                                               ; preds = %37
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.au8522_writereg, i32 noundef 262, i32 noundef 0, i32 noundef %48) #7
  br label %52

52:                                               ; preds = %50, %37
  %53 = xor i1 %49, true
  %54 = sext i1 %53 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  br label %55

55:                                               ; preds = %52, %34, %13
  %56 = phi i32 [ %36, %34 ], [ %54, %52 ], [ 0, %13 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @au8522_analog_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.au8522_analog_i2c_gate_ctrl, i32 noundef %1) #7
  br label %13

13:                                               ; preds = %11, %2
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #6
  store i8 -127, ptr %5, align 1
  %16 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 6, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 1, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %18 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %18, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %6, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %6, i32 noundef 1) #6
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %15
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.au8522_writereg, i32 noundef 262, i32 noundef 1, i32 noundef %26) #7
  br label %30

30:                                               ; preds = %28, %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #6
  br label %47

31:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  store i8 -127, ptr %3, align 1
  %32 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 6, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 0, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %34 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %34, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 5
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i16
  store i16 %37, ptr %4, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.au8522_state, ptr %8, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %4, i32 noundef 1) #6
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %46, label %44

44:                                               ; preds = %31
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.au8522_writereg, i32 noundef 262, i32 noundef 0, i32 noundef %42) #7
  br label %46

46:                                               ; preds = %44, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  br label %47

47:                                               ; preds = %46, %30
  %48 = phi i1 [ %27, %30 ], [ %43, %46 ]
  %49 = xor i1 %48, true
  %50 = sext i1 %49 to i32
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @au8522_get_state(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @au8522_list_mutex) #6
  %4 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %5 = getelementptr i8, ptr %4, i32 -28
  store ptr %5, ptr %0, align 4
  %6 = icmp eq ptr %4, @hybrid_tuner_instance_list
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  br label %10

10:                                               ; preds = %25, %7
  %11 = phi ptr [ %4, %7 ], [ %26, %25 ]
  br i1 %8, label %25, label %12

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %11, i32 -12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %9, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %11, i32 -16
  %23 = load i8, ptr %22, align 4
  %24 = icmp eq i8 %23, %2
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %16, %12, %10
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i8, ptr %26, i32 -28
  store ptr %27, ptr %0, align 4
  %28 = icmp eq ptr %26, @hybrid_tuner_instance_list
  br i1 %28, label %42, label %10

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %11, i32 -4
  %31 = load ptr, ptr %30, align 4
  %32 = zext i8 %2 to i32
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %31, i32 noundef %18, i32 noundef %32) #7
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.au8522_state, ptr %34, i32 0, i32 3, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  %38 = load ptr, ptr %0, align 4
  %39 = getelementptr inbounds %struct.au8522_state, ptr %38, i32 0, i32 3, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %29, %25, %3
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 1536) #8
  store ptr %44, ptr %0, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %69, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.au8522_state, ptr %44, i32 0, i32 3
  store i8 %2, ptr %47, align 4
  %48 = getelementptr inbounds %struct.au8522_state, ptr %44, i32 0, i32 3, i32 1
  store ptr %1, ptr %48, align 8
  %49 = getelementptr inbounds %struct.au8522_state, ptr %44, i32 0, i32 3, i32 3
  store ptr @.str.4, ptr %49, align 8
  %50 = icmp eq ptr %1, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %53, %51 ], [ -1, %46 ]
  %56 = zext i8 %2 to i32
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %55, i32 noundef %56) #7
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.au8522_state, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %59, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %59, align 4
  %61 = getelementptr inbounds %struct.au8522_state, ptr %58, i32 0, i32 4, i32 1
  store ptr %60, ptr %61, align 4
  store volatile ptr %59, ptr %60, align 4
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.au8522_state, ptr %62, i32 0, i32 3, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 4
  %66 = load ptr, ptr %0, align 4
  %67 = getelementptr inbounds %struct.au8522_state, ptr %66, i32 0, i32 3, i32 2
  %68 = load i32, ptr %67, align 4
  br label %69

69:                                               ; preds = %54, %42, %29
  %70 = phi i32 [ %68, %54 ], [ %40, %29 ], [ -12, %42 ]
  tail call void @mutex_unlock(ptr noundef nonnull @au8522_list_mutex) #6
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @au8522_release_state(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @au8522_list_mutex) #6
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 3, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 3, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 3, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %17 = load i32, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %17, %15 ], [ -1, %9 ]
  %20 = load i8, ptr %4, align 4
  %21 = zext i8 %20 to i32
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %19, i32 noundef %21) #7
  %23 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 4
  %24 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 4, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  tail call void @kfree(ptr noundef nonnull %0) #6
  br label %28

28:                                               ; preds = %18, %3, %1
  tail call void @mutex_unlock(ptr noundef nonnull @au8522_list_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @au8522_led_ctrl(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 5, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %124, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.au8522_led_config, ptr %9, i32 0, i32 6
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %124, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.au8522_led_config, ptr %9, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %124, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.au8522_led_config, ptr %9, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %124, label %23

23:                                               ; preds = %19
  %24 = icmp slt i32 %1, 0
  %25 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 10
  %26 = load i32, ptr %25, align 8
  br i1 %24, label %27, label %31

27:                                               ; preds = %23
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %29, label %124

29:                                               ; preds = %27
  %30 = sub i32 0, %1
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi i32 [ 0, %29 ], [ %26, %23 ]
  %33 = phi i32 [ %30, %29 ], [ %1, %23 ]
  %34 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 10
  %35 = icmp eq i32 %32, %33
  br i1 %35, label %124, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.au8522_led_ctrl, i32 noundef %33) #7
  br label %41

41:                                               ; preds = %39, %36
  tail call fastcc void @au8522_led_gpio_enable(ptr noundef %0, i32 noundef 1)
  %42 = load i16, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #6
  %43 = lshr i16 %42, 8
  %44 = trunc i16 %43 to i8
  %45 = and i8 %44, 63
  %46 = or i8 %45, 64
  store i8 %46, ptr %5, align 2
  %47 = getelementptr inbounds i8, ptr %5, i32 1
  %48 = trunc i16 %42 to i8
  store i8 %48, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  %49 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %49, i8 0, i32 16, i1 false) #6, !annotation !8
  %50 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 5
  %51 = load i8, ptr %50, align 4
  %52 = zext i8 %51 to i16
  store i16 %52, ptr %7, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %53, align 2
  store i16 2, ptr %49, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %54, align 4
  %55 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %52, ptr %55, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %57, align 4
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %58, align 4
  %59 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %7, i32 noundef 2) #6
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %65, label %63

63:                                               ; preds = %41
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.au8522_readreg, i32 noundef %61) #7
  br label %65

65:                                               ; preds = %63, %41
  %66 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #6
  %67 = load i32, ptr %16, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %20, align 4
  br label %71

71:                                               ; preds = %71, %69
  %72 = phi i8 [ %66, %69 ], [ %77, %71 ]
  %73 = phi i32 [ 0, %69 ], [ %78, %71 ]
  %74 = getelementptr i8, ptr %70, i32 %73
  %75 = load i8, ptr %74, align 1
  %76 = xor i8 %75, -1
  %77 = and i8 %72, %76
  %78 = add nuw i32 %73, 1
  %79 = icmp eq i32 %78, %67
  br i1 %79, label %80, label %71

80:                                               ; preds = %71
  %81 = icmp ult i32 %33, %67
  br i1 %81, label %84, label %88

82:                                               ; preds = %65
  %83 = icmp ult i32 %33, %67
  br i1 %83, label %84, label %98

84:                                               ; preds = %82, %80
  %85 = phi i8 [ %66, %82 ], [ %77, %80 ]
  %86 = load ptr, ptr %20, align 4
  %87 = getelementptr i8, ptr %86, i32 %33
  br label %93

88:                                               ; preds = %80
  br i1 %68, label %98, label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %20, align 4
  %91 = add i32 %67, -1
  %92 = getelementptr i8, ptr %90, i32 %91
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi ptr [ %92, %89 ], [ %87, %84 ]
  %95 = phi i8 [ %77, %89 ], [ %85, %84 ]
  %96 = load i8, ptr %94, align 1
  %97 = or i8 %96, %95
  br label %98

98:                                               ; preds = %93, %88, %82
  %99 = phi i8 [ %77, %88 ], [ %66, %82 ], [ %97, %93 ]
  %100 = load i16, ptr %12, align 4
  %101 = and i16 %100, 16383
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  %102 = lshr i16 %101, 8
  %103 = trunc i16 %102 to i8
  %104 = or i8 %103, -128
  store i8 %104, ptr %3, align 1
  %105 = getelementptr inbounds i8, ptr %3, i32 1
  %106 = trunc i16 %100 to i8
  store i8 %106, ptr %105, align 1
  %107 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %99, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %108 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %108, align 4, !annotation !8
  %109 = load i8, ptr %50, align 4
  %110 = zext i8 %109 to i16
  store i16 %110, ptr %4, align 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %111, align 2
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %112, align 4
  %113 = load ptr, ptr %59, align 4
  %114 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %4, i32 noundef 1) #6
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %121, label %116

116:                                              ; preds = %98
  %117 = or i16 %101, -32768
  %118 = zext i16 %117 to i32
  %119 = zext i8 %99 to i32
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.au8522_writereg, i32 noundef %118, i32 noundef %119, i32 noundef %114) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  br label %124

121:                                              ; preds = %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  store i32 %33, ptr %34, align 8
  %122 = icmp eq i32 %33, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %121
  call fastcc void @au8522_led_gpio_enable(ptr noundef %0, i32 noundef 0)
  br label %124

124:                                              ; preds = %123, %121, %116, %31, %27, %19, %15, %11, %2
  %125 = phi i32 [ 0, %19 ], [ 0, %15 ], [ 0, %11 ], [ 0, %2 ], [ 0, %27 ], [ 0, %123 ], [ 0, %31 ], [ 0, %121 ], [ -1, %116 ]
  ret i32 %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @au8522_led_gpio_enable(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [1 x i8], align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 5, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %79, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.au8522_led_config, ptr %9, i32 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %79, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.au8522_led_config, ptr %9, i32 0, i32 4
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %79, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.au8522_led_config, ptr %9, i32 0, i32 5
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #6
  %24 = lshr i16 %13, 8
  %25 = trunc i16 %24 to i8
  %26 = and i8 %25, 63
  %27 = or i8 %26, 64
  store i8 %27, ptr %5, align 2
  %28 = getelementptr inbounds i8, ptr %5, i32 1
  %29 = trunc i16 %13 to i8
  store i8 %29, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #6
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  %30 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %30, i8 0, i32 16, i1 false) #6, !annotation !8
  %31 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 5
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %7, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %34, align 2
  store i16 2, ptr %30, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %5, ptr %35, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %6, ptr %39, align 4
  %40 = getelementptr inbounds %struct.au8522_state, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %7, i32 noundef 2) #6
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %46, label %44

44:                                               ; preds = %23
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.au8522_readreg, i32 noundef %42) #7
  br label %46

46:                                               ; preds = %44, %23
  %47 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #6
  %48 = icmp eq i32 %1, 0
  %49 = select i1 %48, ptr %20, ptr %16
  %50 = load i16, ptr %49, align 2
  %51 = lshr i16 %50, 8
  %52 = trunc i16 %51 to i8
  %53 = xor i8 %52, -1
  %54 = and i8 %47, %53
  %55 = trunc i16 %50 to i8
  %56 = or i8 %54, %55
  %57 = load i16, ptr %12, align 2
  %58 = and i16 %57, 16383
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  %59 = lshr i16 %58, 8
  %60 = trunc i16 %59 to i8
  %61 = or i8 %60, -128
  store i8 %61, ptr %3, align 1
  %62 = getelementptr inbounds i8, ptr %3, i32 1
  %63 = trunc i16 %57 to i8
  store i8 %63, ptr %62, align 1
  %64 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %56, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  %65 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %65, align 4, !annotation !8
  %66 = load i8, ptr %31, align 4
  %67 = zext i8 %66 to i16
  store i16 %67, ptr %4, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %68, align 2
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %69, align 4
  %70 = load ptr, ptr %40, align 4
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %4, i32 noundef 1) #6
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %78, label %73

73:                                               ; preds = %46
  %74 = or i16 %58, -32768
  %75 = zext i16 %74 to i32
  %76 = zext i8 %56 to i32
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.au8522_writereg, i32 noundef %75, i32 noundef %76, i32 noundef %71) #7
  br label %78

78:                                               ; preds = %73, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  br label %79

79:                                               ; preds = %78, %19, %15, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @au8522_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.au8522_init) #7
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 2
  store i8 1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 7
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 8
  store i32 7, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #6
  store i8 -128, ptr %2, align 1
  %14 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -92, ptr %14, align 1
  %15 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 32, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %16 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %16, align 4, !annotation !8
  %17 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 5
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %3, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %3, i32 noundef 1) #6
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %28, label %26

26:                                               ; preds = %10
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.au8522_writereg, i32 noundef 164, i32 noundef 32, i32 noundef %24) #7
  br label %28

28:                                               ; preds = %26, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #6
  %29 = call i32 @au8522_i2c_gate_ctrl(ptr noundef %0, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @au8522_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.au8522_sleep) #7
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 2
  %12 = load i8, ptr %11, align 8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @au8522_led_ctrl(ptr noundef %5, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #6
  store i8 -128, ptr %2, align 1
  %16 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 -92, ptr %16, align 1
  %17 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 32, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %18 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %18, align 4, !annotation !8
  %19 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %3, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %3, i32 noundef 1) #6
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %30, label %28

28:                                               ; preds = %14
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.au8522_writereg, i32 noundef 164, i32 noundef 32, i32 noundef %26) #7
  br label %30

30:                                               ; preds = %28, %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #6
  %31 = getelementptr inbounds %struct.au8522_state, ptr %5, i32 0, i32 7
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
