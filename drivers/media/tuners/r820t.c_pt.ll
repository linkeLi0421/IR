; ModuleID = '/llk/IR/drivers/media/tuners/r820t.c_pt.bc'
source_filename = "../drivers/media/tuners/r820t.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_r820t_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22r820t_attach\22\09\09\09\09\09"
module asm "__kstrtabns_r820t_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.lock_class_key = type {}
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.r820t_freq_range = type { i32, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.r820t_priv = type { %struct.list_head, ptr, %struct.tuner_i2c_props, %struct.mutex, [27 x i8], [28 x i8], i32, i16, i32, i8, i8, i8, i8, [5 x %struct.r820t_sect_type], i32, i32, i64, i32 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.r820t_sect_type = type { i8, i8, i16 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.r820t_config = type { i8, i32, i32, i32, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_no_imr_cal = internal constant [11 x i8] c"no_imr_cal\00", align 1
@no_imr_cal = internal global i32 0, align 4
@__param_no_imr_cal = internal constant %struct.kernel_param { ptr @__param_str_no_imr_cal, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @no_imr_cal } }, section "__param", align 4
@__UNIQUE_ID_no_imr_caltype251 = internal constant [24 x i8] c"parmtype=no_imr_cal:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_imr_cal252 = internal constant [55 x i8] c"parm=no_imr_cal:Disable IMR calibration at module init\00", section ".modinfo", align 1
@r820t_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @r820t_list_mutex, i64 12), ptr getelementptr (i8, ptr @r820t_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"r820t\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@r820t_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"\016%s %d-%04x: Rafael Micro r820t successfully identified, chip type: %s\0A\00", align 1
@r820t_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Rafael Micro R820T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 42000000, i32 1002000000, i32 0, i32 0, i32 0, i32 0 }, ptr @r820t_release, ptr @r820t_init, ptr @r820t_sleep, ptr null, ptr null, ptr @r820t_set_params, ptr @r820t_set_analog_freq, ptr null, ptr null, ptr null, ptr @r820t_get_if_frequency, ptr null, ptr @r820t_signal, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"\016r820t: %s: failed=%d\0A\00", align 1
@__func__.r820t_attach = private unnamed_addr constant [13 x i8] c"r820t_attach\00", align 1
@__kstrtab_r820t_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_r820t_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_r820t_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @r820t_attach to i32), ptr @__kstrtab_r820t_attach, ptr @__kstrtabns_r820t_attach }, section "___ksymtab_gpl+r820t_attach", align 4
@__UNIQUE_ID_description253 = internal constant [52 x i8] c"description=Rafael Micro r820t silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [29 x i8] c"author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"\016%s %d-%04x: %s: i2c rd failed=%d reg=%02x len=%d: %*ph\0A\00", align 1
@__func__.r820t_read = private unnamed_addr constant [11 x i8] c"r820t_read\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\017%s %d-%04x: %s: i2c rd reg=%02x len=%d: %*ph\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"\017%s %d-%04x: %s:\0A\00", align 1
@__func__.r820t_sleep = private unnamed_addr constant [12 x i8] c"r820t_sleep\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"\017%s %d-%04x: %s: failed=%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"\016%s %d-%04x: %s: i2c wr failed=%d reg=%02x len=%d: %*ph\0A\00", align 1
@__func__.r820t_write = private unnamed_addr constant [12 x i8] c"r820t_write\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"\017%s %d-%04x: %s: i2c wr reg=%02x len=%d: %*ph\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"\017%s %d-%04x: %s: prev  reg=%02x len=%d: %*ph\0A\00", align 1
@__func__.shadow_store = private unnamed_addr constant [13 x i8] c"shadow_store\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"R820T\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"R620D\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"R828D\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"R828\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"R828S\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"R820C\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@__func__.r820t_init = private unnamed_addr constant [11 x i8] c"r820t_init\00", align 1
@r820t_init_array = internal constant [27 x i8] c"\832u\C0@\D6l\F5cuhl\83\80\00\0F\00\C00H\CC`\00T\AEJ\C0", align 1
@r820t_xtal_capacitor = internal unnamed_addr constant [5 x [2 x i32]] [[2 x i32] [i32 11, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 3], [2 x i32] [i32 16, i32 4]], align 4
@freq_ranges = internal unnamed_addr constant [21 x %struct.r820t_freq_range] [%struct.r820t_freq_range { i32 0, i8 8, i8 2, i8 -33, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 50, i8 8, i8 2, i8 -66, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 55, i8 8, i8 2, i8 -117, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 60, i8 8, i8 2, i8 123, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 65, i8 8, i8 2, i8 105, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 70, i8 8, i8 2, i8 88, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 75, i8 0, i8 2, i8 68, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 80, i8 0, i8 2, i8 68, i8 2, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 90, i8 0, i8 2, i8 52, i8 1, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 100, i8 0, i8 2, i8 52, i8 1, i8 1, i8 0, i8 0 }, %struct.r820t_freq_range { i32 110, i8 0, i8 2, i8 36, i8 1, i8 1, i8 0, i8 1 }, %struct.r820t_freq_range { i32 120, i8 0, i8 2, i8 36, i8 1, i8 1, i8 0, i8 1 }, %struct.r820t_freq_range { i32 140, i8 0, i8 2, i8 20, i8 1, i8 1, i8 0, i8 1 }, %struct.r820t_freq_range { i32 180, i8 0, i8 2, i8 19, i8 0, i8 0, i8 0, i8 1 }, %struct.r820t_freq_range { i32 220, i8 0, i8 2, i8 19, i8 0, i8 0, i8 0, i8 2 }, %struct.r820t_freq_range { i32 250, i8 0, i8 2, i8 17, i8 0, i8 0, i8 0, i8 2 }, %struct.r820t_freq_range { i32 280, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 2 }, %struct.r820t_freq_range { i32 310, i8 0, i8 65, i8 0, i8 0, i8 0, i8 0, i8 2 }, %struct.r820t_freq_range { i32 450, i8 0, i8 65, i8 0, i8 0, i8 0, i8 0, i8 3 }, %struct.r820t_freq_range { i32 588, i8 0, i8 64, i8 0, i8 0, i8 0, i8 0, i8 3 }, %struct.r820t_freq_range { i32 650, i8 0, i8 64, i8 0, i8 0, i8 0, i8 0, i8 4 }], align 4
@.str.20 = private unnamed_addr constant [55 x i8] c"\017%s %d-%04x: set r820t range#%d for frequency %d MHz\0A\00", align 1
@.str.21 = private unnamed_addr constant [54 x i8] c"\017%s %d-%04x: mix_div=%d div_num=%d vco_fine_tune=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [53 x i8] c"\017%s %d-%04x: freq %d kHz, pll ref %d%s, sdm=0x%04x\0A\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"\017%s %d-%04x: tuner has lock at frequency %d kHz\0A\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"\017%s %d-%04x: %s: delivery_system=%d frequency=%d bandwidth_hz=%d\0A\00", align 1
@__func__.r820t_set_params = private unnamed_addr constant [17 x i8] c"r820t_set_params\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"\017%s %d-%04x: should set frequency to %d kHz, bw %d MHz\0A\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"\017%s %d-%04x: %s: PLL locked on frequency %d Hz, gain=%d\0A\00", align 1
@__func__.generic_set_freq = private unnamed_addr constant [17 x i8] c"generic_set_freq\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"\017%s %d-%04x: selecting the delivery system\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"\017%s %d-%04x: calibrating the tuner\0A\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"\017%s %d-%04x: adjusting tuner parameters for the standard\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"\017%s %d-%04x: adjusting LNA parameters\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"\017%s %d-%04x: %s called\0A\00", align 1
@__func__.r820t_set_analog_freq = private unnamed_addr constant [22 x i8] c"r820t_set_analog_freq\00", align 1
@__func__.r820t_get_if_frequency = private unnamed_addr constant [23 x i8] c"r820t_get_if_frequency\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"\017%s %d-%04x: %s: %s, gain=%d strength=%d\0A\00", align 1
@__func__.r820t_signal = private unnamed_addr constant [13 x i8] c"r820t_signal\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"PLL locked\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"no signal\00", align 1
@__func__.r820t_release = private unnamed_addr constant [14 x i8] c"r820t_release\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__UNIQUE_ID_no_imr_cal252, ptr @__UNIQUE_ID_no_imr_caltype251, ptr @__ksymtab_r820t_attach, ptr @__param_debug, ptr @__param_no_imr_cal], section "llvm.metadata"
@switch.table.r820t_attach = private unnamed_addr constant [6 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @r820t_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %4, i8 0, i32 5, i1 false), !annotation !8
  tail call void @mutex_lock(ptr noundef nonnull @r820t_list_mutex) #8
  %5 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %6 = icmp eq ptr %5, @hybrid_tuner_instance_list
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  br label %10

10:                                               ; preds = %26, %7
  %11 = phi ptr [ %5, %7 ], [ %27, %26 ]
  br i1 %8, label %26, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.r820t_priv, ptr %11, i32 0, i32 2
  %14 = getelementptr inbounds %struct.r820t_priv, ptr %11, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %9, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8, ptr %2, align 4
  %24 = load i8, ptr %13, align 4
  %25 = icmp eq i8 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %17, %12, %10
  %27 = load ptr, ptr %11, align 4
  %28 = icmp eq ptr %27, @hybrid_tuner_instance_list
  br i1 %28, label %38, label %10

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.r820t_priv, ptr %11, i32 0, i32 2, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = zext i8 %23 to i32
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %31, i32 noundef %19, i32 noundef %32) #9
  %34 = getelementptr inbounds %struct.r820t_priv, ptr %11, i32 0, i32 2, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %29, %26, %3
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 168) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %68, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %2, align 4
  %44 = getelementptr inbounds %struct.r820t_priv, ptr %40, i32 0, i32 2
  store i8 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.r820t_priv, ptr %40, i32 0, i32 2, i32 1
  store ptr %1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.r820t_priv, ptr %40, i32 0, i32 2, i32 3
  store ptr @.str.1, ptr %46, align 8
  %47 = icmp eq ptr %1, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i32 [ %50, %48 ], [ -1, %42 ]
  %53 = zext i8 %43 to i32
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %52, i32 noundef %53) #9
  %55 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %40, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %40, align 8
  %56 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %55, ptr %56, align 4
  store volatile ptr %40, ptr %55, align 4
  %57 = getelementptr inbounds %struct.r820t_priv, ptr %40, i32 0, i32 2, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 4
  br label %60

60:                                               ; preds = %51, %29
  %61 = phi i32 [ %59, %51 ], [ %36, %29 ]
  %62 = phi ptr [ %40, %51 ], [ %11, %29 ]
  switch i32 %61, label %68 [
    i32 0, label %116
    i32 1, label %63
    i32 2, label %66
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.r820t_priv, ptr %62, i32 0, i32 1
  store ptr %2, ptr %64, align 8
  %65 = getelementptr inbounds %struct.r820t_priv, ptr %62, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %65, ptr noundef nonnull @.str.3, ptr noundef nonnull @r820t_attach.__key) #8
  br label %66

66:                                               ; preds = %63, %60
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %62, ptr %67, align 4
  br label %68

68:                                               ; preds = %66, %60, %38
  %69 = phi ptr [ %62, %60 ], [ null, %38 ], [ %62, %66 ]
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = tail call i32 %71(ptr noundef %0, i32 noundef 1) #8
  br label %75

75:                                               ; preds = %73, %68
  %76 = call fastcc i32 @r820t_read(ptr noundef %69, ptr noundef nonnull %4, i32 noundef 5)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %110, label %78

78:                                               ; preds = %75
  %79 = call i32 @r820t_sleep(ptr noundef %0)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %110, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.r820t_priv, ptr %69, i32 0, i32 2
  %83 = getelementptr inbounds %struct.r820t_priv, ptr %69, i32 0, i32 2, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.r820t_priv, ptr %69, i32 0, i32 2, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 11
  %90 = load i32, ptr %89, align 4
  br label %91

91:                                               ; preds = %88, %81
  %92 = phi i32 [ %90, %88 ], [ -1, %81 ]
  %93 = load i8, ptr %82, align 4
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds %struct.r820t_config, ptr %2, i32 0, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = icmp ult i32 %96, 6
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = getelementptr inbounds [6 x ptr], ptr @switch.table.r820t_attach, i32 0, i32 %96
  %100 = load ptr, ptr %99, align 4
  br label %101

101:                                              ; preds = %98, %91
  %102 = phi ptr [ %100, %98 ], [ @.str.19, %91 ]
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %84, i32 noundef %92, i32 noundef %94, ptr noundef nonnull %102) #9
  %104 = load ptr, ptr %70, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = call i32 %104(ptr noundef %0, i32 noundef 0) #8
  br label %108

108:                                              ; preds = %106, %101
  call void @mutex_unlock(ptr noundef nonnull @r820t_list_mutex) #8
  %109 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %109, ptr noundef nonnull align 4 dereferenceable(220) @r820t_tuner_ops, i32 220, i1 false)
  br label %119

110:                                              ; preds = %78, %75
  %111 = phi i32 [ %76, %75 ], [ %79, %78 ]
  %112 = load ptr, ptr %70, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call i32 %112(ptr noundef %0, i32 noundef 0) #8
  br label %116

116:                                              ; preds = %114, %110, %60
  %117 = phi i32 [ %111, %114 ], [ %111, %110 ], [ -19, %60 ]
  call void @mutex_unlock(ptr noundef nonnull @r820t_list_mutex) #8
  %118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.r820t_attach, i32 noundef %117) #9
  call void @r820t_release(ptr noundef %0)
  br label %119

119:                                              ; preds = %116, %108
  %120 = phi ptr [ null, %116 ], [ %0, %108 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %4) #8
  ret ptr %120
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_read(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 5
  %6 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 5, i32 1
  store i8 0, ptr %5, align 1
  %7 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %8 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #8, !annotation !8
  %9 = load i8, ptr %7, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %11, align 2
  store i16 1, ptr %8, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  %16 = trunc i32 %2 to i16
  store i16 %16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %4, i32 noundef 2) #8
  %21 = icmp eq i32 %20, 2
  %22 = select i1 %21, i32 %2, i32 %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = icmp sgt i32 %2, 0
  br i1 %25, label %41, label %52

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %18, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi i32 [ %33, %31 ], [ -1, %26 ]
  %36 = load i8, ptr %7, align 4
  %37 = zext i8 %36 to i32
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %28, i32 noundef %35, i32 noundef %37, ptr noundef nonnull @__func__.r820t_read, i32 noundef %22, i32 noundef 0, i32 noundef %2, i32 noundef %2, ptr noundef %6) #9
  %39 = icmp slt i32 %22, 0
  %40 = select i1 %39, i32 %22, i32 -121
  br label %68

41:                                               ; preds = %41, %24
  %42 = phi i32 [ %50, %41 ], [ 0, %24 ]
  %43 = getelementptr i8, ptr %6, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 asm "rbit $0, $1", "=r,r"(i32 %45) #11, !srcloc !9
  %47 = lshr i32 %46, 24
  %48 = trunc i32 %47 to i8
  %49 = getelementptr i8, ptr %1, i32 %42
  store i8 %48, ptr %49, align 1
  %50 = add nuw nsw i32 %42, 1
  %51 = icmp eq i32 %50, %2
  br i1 %51, label %52, label %41

52:                                               ; preds = %41, %24
  %53 = load i32, ptr @debug, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %18, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.i2c_adapter, ptr %58, i32 0, i32 11
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i32 [ %62, %60 ], [ -1, %55 ]
  %65 = load i8, ptr %7, align 4
  %66 = zext i8 %65 to i32
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %57, i32 noundef %64, i32 noundef %66, ptr noundef nonnull @__func__.r820t_read, i32 noundef 0, i32 noundef %2, i32 noundef %2, ptr noundef %1) #9
  br label %68

68:                                               ; preds = %63, %52, %34
  %69 = phi i32 [ %40, %34 ], [ 0, %63 ], [ 0, %52 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r820t_sleep(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.r820t_priv, ptr %14, i32 0, i32 2
  %19 = getelementptr inbounds %struct.r820t_priv, ptr %14, i32 0, i32 2, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.r820t_priv, ptr %14, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ %26, %24 ], [ -1, %17 ]
  %29 = load i8, ptr %18, align 4
  %30 = zext i8 %29 to i32
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %20, i32 noundef %28, i32 noundef %30, ptr noundef nonnull @__func__.r820t_sleep) #9
  br label %32

32:                                               ; preds = %27, %1
  %33 = getelementptr inbounds %struct.r820t_priv, ptr %14, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %33) #8
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = tail call i32 %35(ptr noundef %0, i32 noundef 1) #8
  br label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds %struct.r820t_priv, ptr %14, i32 0, i32 12
  %41 = load i8, ptr %40, align 1, !range !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %76, label %43

43:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  store i8 -79, ptr %12, align 1
  %44 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 6, ptr noundef nonnull %12, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 3, ptr %11, align 1
  %47 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 5, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 58, ptr %10, align 1
  %50 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 7, ptr noundef nonnull %10, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %76, label %52

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  store i8 64, ptr %9, align 1
  %53 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 8, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 -64, ptr %8, align 1
  %56 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 9, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %76, label %58

58:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 54, ptr %7, align 1
  %59 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 10, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %76, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 53, ptr %6, align 1
  %62 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 12, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 104, ptr %5, align 1
  %65 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 15, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 3, ptr %4, align 1
  %68 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 17, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 -12, ptr %3, align 1
  %71 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 23, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 12, ptr %2, align 1
  %74 = call fastcc i32 @r820t_write(ptr noundef %14, i8 noundef zeroext 25, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %75 = getelementptr inbounds %struct.r820t_priv, ptr %14, i32 0, i32 15
  store i32 -1, ptr %75, align 8
  br label %76

76:                                               ; preds = %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43, %39
  %77 = phi i32 [ %74, %73 ], [ 0, %39 ], [ %44, %43 ], [ %47, %46 ], [ %50, %49 ], [ %53, %52 ], [ %56, %55 ], [ %59, %58 ], [ %62, %61 ], [ %65, %64 ], [ %68, %67 ], [ %71, %70 ]
  %78 = load ptr, ptr %34, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 %78(ptr noundef %0, i32 noundef 0) #8
  br label %82

82:                                               ; preds = %80, %76
  call void @mutex_unlock(ptr noundef %33) #8
  %83 = load i32, ptr @debug, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.r820t_priv, ptr %14, i32 0, i32 2
  %87 = getelementptr inbounds %struct.r820t_priv, ptr %14, i32 0, i32 2, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.r820t_priv, ptr %14, i32 0, i32 2, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.i2c_adapter, ptr %90, i32 0, i32 11
  %94 = load i32, ptr %93, align 4
  br label %95

95:                                               ; preds = %92, %85
  %96 = phi i32 [ %94, %92 ], [ -1, %85 ]
  %97 = load i8, ptr %86, align 4
  %98 = zext i8 %97 to i32
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %88, i32 noundef %96, i32 noundef %98, ptr noundef nonnull @__func__.r820t_sleep, i32 noundef %77) #9
  br label %100

100:                                              ; preds = %95, %82
  ret i32 %77
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @r820t_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2
  %8 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %15, %13 ], [ -1, %6 ]
  %18 = load i8, ptr %7, align 4
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %9, i32 noundef %17, i32 noundef %19, ptr noundef nonnull @__func__.r820t_release) #9
  br label %21

21:                                               ; preds = %16, %1
  tail call void @mutex_lock(ptr noundef nonnull @r820t_list_mutex) #8
  %22 = icmp eq ptr %3, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2
  %25 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 11
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i32 [ %37, %35 ], [ -1, %29 ]
  %40 = load i8, ptr %24, align 4
  %41 = zext i8 %40 to i32
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %31, i32 noundef %39, i32 noundef %41) #9
  %43 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %47

47:                                               ; preds = %38, %23, %21
  tail call void @mutex_unlock(ptr noundef nonnull @r820t_list_mutex) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = zext i8 %1 to i32
  %7 = add nsw i32 %6, -5
  %8 = icmp ult i8 %1, 5
  %9 = select i1 %8, i32 0, i32 %7
  %10 = select i1 %8, i32 %7, i32 0
  %11 = add i32 %10, %3
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %36, label %13

13:                                               ; preds = %4
  %14 = sub nsw i32 27, %9
  %15 = tail call i32 @llvm.smin.i32(i32 %11, i32 %14) #8
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2
  %20 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %18
  %29 = phi i32 [ %27, %25 ], [ -1, %18 ]
  %30 = load i8, ptr %19, align 4
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %9, 5
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %21, i32 noundef %29, i32 noundef %31, ptr noundef nonnull @__func__.shadow_store, i32 noundef %32, i32 noundef %15, i32 noundef %15, ptr noundef %2) #9
  br label %34

34:                                               ; preds = %28, %13
  %35 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %2, i32 %15, i1 false) #8
  br label %36

36:                                               ; preds = %34, %4
  %37 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 1
  %38 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 5
  %39 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 5, i32 1
  %40 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2
  %41 = getelementptr inbounds i8, ptr %5, i32 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %44 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 1
  %45 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 3
  br label %46

46:                                               ; preds = %96, %36
  %47 = phi i32 [ %3, %36 ], [ %99, %96 ]
  %48 = phi i32 [ 0, %36 ], [ %100, %96 ]
  %49 = phi i8 [ %1, %36 ], [ %98, %96 ]
  %50 = load ptr, ptr %37, align 8
  %51 = getelementptr inbounds %struct.r820t_config, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, -1
  %54 = call i32 @llvm.umin.i32(i32 %47, i32 %53)
  store i8 %49, ptr %38, align 1
  %55 = getelementptr i8, ptr %2, i32 %48
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %39, ptr align 1 %55, i32 %54, i1 false)
  %56 = add i32 %54, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  store i32 0, ptr %41, align 4, !annotation !8
  %57 = load i8, ptr %40, align 4
  %58 = zext i8 %57 to i16
  store i16 %58, ptr %5, align 4
  store i16 0, ptr %42, align 2
  %59 = trunc i32 %56 to i16
  store i16 %59, ptr %41, align 4
  store ptr %38, ptr %43, align 4
  %60 = load ptr, ptr %44, align 4
  %61 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %5, i32 noundef 1) #8
  %62 = icmp eq i32 %61, 1
  %63 = select i1 %62, i32 %56, i32 %61
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  %64 = icmp eq i32 %63, %56
  br i1 %64, label %80, label %65

65:                                               ; preds = %46
  %66 = load ptr, ptr %45, align 4
  %67 = load ptr, ptr %44, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 11
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i32 [ %71, %69 ], [ -1, %65 ]
  %74 = load i8, ptr %40, align 4
  %75 = zext i8 %74 to i32
  %76 = zext i8 %49 to i32
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %66, i32 noundef %73, i32 noundef %75, ptr noundef nonnull @__func__.r820t_write, i32 noundef %63, i32 noundef %76, i32 noundef %54, i32 noundef %54, ptr noundef %39) #9
  %78 = icmp slt i32 %63, 0
  %79 = select i1 %78, i32 %63, i32 -121
  br label %102

80:                                               ; preds = %46
  %81 = load i32, ptr @debug, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %45, align 4
  %85 = load ptr, ptr %44, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.i2c_adapter, ptr %85, i32 0, i32 11
  %89 = load i32, ptr %88, align 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i32 [ %89, %87 ], [ -1, %83 ]
  %92 = load i8, ptr %40, align 4
  %93 = zext i8 %92 to i32
  %94 = zext i8 %49 to i32
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %84, i32 noundef %91, i32 noundef %93, ptr noundef nonnull @__func__.r820t_write, i32 noundef %94, i32 noundef %54, i32 noundef %54, ptr noundef %39) #9
  br label %96

96:                                               ; preds = %90, %80
  %97 = trunc i32 %54 to i8
  %98 = add i8 %49, %97
  %99 = sub i32 %47, %54
  %100 = add i32 %54, %48
  %101 = icmp sgt i32 %99, 0
  br i1 %101, label %46, label %102

102:                                              ; preds = %96, %72
  %103 = phi i32 [ %79, %72 ], [ 0, %96 ]
  ret i32 %103
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r820t_init(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca [3 x i8], align 1
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr @debug, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 2
  %24 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 2, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i32 [ %31, %29 ], [ -1, %22 ]
  %34 = load i8, ptr %23, align 4
  %35 = zext i8 %34 to i32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %25, i32 noundef %33, i32 noundef %35, ptr noundef nonnull @__func__.r820t_init) #9
  br label %37

37:                                               ; preds = %32, %1
  %38 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %38) #8
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = tail call i32 %40(ptr noundef %0, i32 noundef 1) #8
  br label %44

44:                                               ; preds = %42, %37
  %45 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 12
  %46 = load i8, ptr %45, align 1, !range !10
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %209

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.r820t_config, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  switch i32 %52, label %53 [
    i32 0, label %122
    i32 4, label %122
    i32 5, label %122
  ]

53:                                               ; preds = %48
  %54 = tail call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 5, ptr noundef nonnull @r820t_init_array, i32 noundef 27) #8
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %211, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 4
  %58 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 11
  %59 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 21
  %60 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 14
  %61 = getelementptr inbounds [3 x i8], ptr %17, i32 0, i32 2
  br label %62

62:                                               ; preds = %113, %56
  %63 = phi i32 [ 0, %56 ], [ %119, %113 ]
  %64 = phi i32 [ 0, %56 ], [ %120, %113 ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %17) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %17, i8 0, i32 3, i1 false) #8, !annotation !8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(27) %57, ptr noundef nonnull align 1 dereferenceable(27) @r820t_init_array, i32 27, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #8
  store i8 111, ptr %16, align 1
  %65 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 16, ptr noundef nonnull %16, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %111, label %67

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #8
  %68 = load i8, ptr %59, align 1
  %69 = and i8 %68, -13
  store i8 %69, ptr %15, align 1
  %70 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 26, ptr noundef nonnull %15, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %111, label %72

72:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #8
  %73 = load i8, ptr %60, align 1
  %74 = or i8 %73, 127
  store i8 %74, ptr %14, align 1
  %75 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 19, ptr noundef nonnull %14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #8
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %111, label %77

77:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  %78 = load i8, ptr %60, align 1
  %79 = and i8 %78, -65
  store i8 %79, ptr %13, align 1
  %80 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 19, ptr noundef nonnull %13, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %111, label %82

82:                                               ; preds = %108, %77
  %83 = phi i32 [ %109, %108 ], [ 0, %77 ]
  %84 = getelementptr [5 x [2 x i32]], ptr @r820t_xtal_capacitor, i32 0, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = trunc i32 %85 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  %87 = load i8, ptr %58, align 1
  %88 = and i8 %87, -28
  %89 = and i8 %86, 27
  %90 = or i8 %88, %89
  store i8 %90, ptr %12, align 1
  %91 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 16, ptr noundef nonnull %12, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %82
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #8
  %94 = call fastcc i32 @r820t_read(ptr noundef %19, ptr noundef nonnull %17, i32 noundef 3) #8
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %93
  %97 = load i8, ptr %61, align 1
  %98 = and i8 %97, 64
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load ptr, ptr %49, align 8
  %102 = getelementptr inbounds %struct.r820t_config, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = icmp ne i32 %103, 16000000
  %105 = and i8 %97, 63
  %106 = icmp eq i8 %105, 63
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %113

108:                                              ; preds = %100, %96
  %109 = add nuw nsw i32 %83, 1
  %110 = icmp eq i32 %109, 5
  br i1 %110, label %111, label %82

111:                                              ; preds = %108, %93, %82, %77, %72, %67, %62
  %112 = phi i32 [ -22, %108 ], [ %91, %82 ], [ %94, %93 ], [ %80, %77 ], [ %75, %72 ], [ %70, %67 ], [ %65, %62 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %17) #8
  br label %211

113:                                              ; preds = %100
  %114 = getelementptr [5 x [2 x i32]], ptr @r820t_xtal_capacitor, i32 0, i32 %83, i32 1
  %115 = load i32, ptr %114, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %17) #8
  %116 = icmp eq i32 %64, 0
  %117 = icmp sgt i32 %115, %63
  %118 = select i1 %116, i1 true, i1 %117
  %119 = select i1 %118, i32 %115, i32 %63
  %120 = add nuw nsw i32 %64, 1
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %122, label %62

122:                                              ; preds = %113, %48, %48, %48
  %123 = phi i32 [ 4, %48 ], [ 4, %48 ], [ 4, %48 ], [ %119, %113 ]
  %124 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 6
  store i32 %123, ptr %124, align 8
  %125 = load i32, ptr @no_imr_cal, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %207

127:                                              ; preds = %122
  %128 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 5, ptr noundef nonnull @r820t_init_array, i32 noundef 27) #8
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %211, label %130

130:                                              ; preds = %127
  %131 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(27) %131, ptr noundef nonnull align 1 dereferenceable(27) @r820t_init_array, i32 27, i1 false) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 -93, ptr %11, align 1
  %132 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 5, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %211, label %134

134:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  %135 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 2
  %136 = load i8, ptr %135, align 1
  %137 = and i8 %136, -17
  store i8 %137, ptr %10, align 1
  %138 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 7, ptr noundef nonnull %10, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %211, label %140

140:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  %141 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 5
  %142 = load i8, ptr %141, align 1
  %143 = or i8 %142, 15
  store i8 %143, ptr %9, align 1
  %144 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 10, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %211, label %146

146:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  %147 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 6
  %148 = load i8, ptr %147, align 1
  %149 = and i8 %148, -112
  %150 = or i8 %149, 96
  store i8 %150, ptr %8, align 1
  %151 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 11, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %211, label %153

153:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  %154 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 7
  %155 = load i8, ptr %154, align 1
  %156 = and i8 %155, 96
  %157 = or i8 %156, 11
  store i8 %157, ptr %7, align 1
  %158 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 12, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %211, label %160

160:                                              ; preds = %153
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  %161 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 10
  %162 = load i8, ptr %161, align 1
  %163 = and i8 %162, -9
  store i8 %163, ptr %6, align 1
  %164 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 15, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %211, label %166

166:                                              ; preds = %160
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  %167 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 19
  %168 = load i8, ptr %167, align 1
  %169 = or i8 %168, 16
  store i8 %169, ptr %5, align 1
  %170 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 24, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %211, label %172

172:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  %173 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 23
  %174 = load i8, ptr %173, align 1
  %175 = or i8 %174, 2
  store i8 %175, ptr %4, align 1
  %176 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 28, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %211, label %178

178:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  %179 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 25
  %180 = load i8, ptr %179, align 1
  %181 = or i8 %180, -128
  store i8 %181, ptr %3, align 1
  %182 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 30, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %211, label %184

184:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  %185 = getelementptr %struct.r820t_priv, ptr %19, i32 0, i32 4, i32 1
  %186 = load i8, ptr %185, align 1
  %187 = or i8 %186, 32
  store i8 %187, ptr %2, align 1
  %188 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 6, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %211, label %190

190:                                              ; preds = %184
  %191 = call fastcc i32 @r820t_imr(ptr noundef %19, i32 noundef 3, i1 noundef zeroext true) #8
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %211, label %193

193:                                              ; preds = %190
  %194 = call fastcc i32 @r820t_imr(ptr noundef %19, i32 noundef 1, i1 noundef zeroext false) #8
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %193
  %197 = call fastcc i32 @r820t_imr(ptr noundef %19, i32 noundef 0, i1 noundef zeroext false) #8
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %211, label %199

199:                                              ; preds = %196
  %200 = call fastcc i32 @r820t_imr(ptr noundef %19, i32 noundef 2, i1 noundef zeroext false) #8
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %199
  %203 = call fastcc i32 @r820t_imr(ptr noundef %19, i32 noundef 4, i1 noundef zeroext false) #8
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %202
  store i8 1, ptr %45, align 1
  %206 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 10
  br label %207

207:                                              ; preds = %205, %122
  %208 = phi ptr [ %206, %205 ], [ %45, %122 ]
  store i8 1, ptr %208, align 1
  br label %209

209:                                              ; preds = %207, %44
  %210 = call fastcc i32 @r820t_write(ptr noundef %19, i8 noundef zeroext 5, ptr noundef nonnull @r820t_init_array, i32 noundef 27)
  br label %211

211:                                              ; preds = %209, %202, %199, %196, %193, %190, %184, %178, %172, %166, %160, %153, %146, %140, %134, %130, %127, %111, %53
  %212 = phi i32 [ %210, %209 ], [ %132, %130 ], [ %138, %134 ], [ %144, %140 ], [ %151, %146 ], [ %158, %153 ], [ %164, %160 ], [ %170, %166 ], [ %176, %172 ], [ %182, %178 ], [ %112, %111 ], [ %203, %202 ], [ %200, %199 ], [ %197, %196 ], [ %194, %193 ], [ %191, %190 ], [ %188, %184 ], [ %128, %127 ], [ %54, %53 ]
  %213 = load ptr, ptr %39, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %217, label %215

215:                                              ; preds = %211
  %216 = call i32 %213(ptr noundef %0, i32 noundef 0) #8
  br label %217

217:                                              ; preds = %215, %211
  call void @mutex_unlock(ptr noundef %38) #8
  %218 = icmp slt i32 %212, 0
  %219 = load i32, ptr @debug, align 4
  %220 = icmp ne i32 %219, 0
  %221 = select i1 %218, i1 %220, i1 false
  br i1 %221, label %222, label %237

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 2
  %224 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 2, i32 3
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.r820t_priv, ptr %19, i32 0, i32 2, i32 1
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.i2c_adapter, ptr %227, i32 0, i32 11
  %231 = load i32, ptr %230, align 4
  br label %232

232:                                              ; preds = %229, %222
  %233 = phi i32 [ %231, %229 ], [ -1, %222 ]
  %234 = load i8, ptr %223, align 4
  %235 = zext i8 %234 to i32
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %225, i32 noundef %233, i32 noundef %235, ptr noundef nonnull @__func__.r820t_init, i32 noundef %212) #9
  br label %237

237:                                              ; preds = %232, %217
  ret i32 %212
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r820t_set_params(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2
  %9 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %16, %14 ], [ -1, %7 ]
  %19 = load i8, ptr %8, align 4
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %22 = load i32, ptr %21, align 4
  %23 = load i32, ptr %4, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %10, i32 noundef %18, i32 noundef %20, ptr noundef nonnull @__func__.r820t_set_params, i32 noundef %22, i32 noundef %23, i32 noundef %25) #9
  br label %27

27:                                               ; preds = %17, %1
  %28 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %28) #8
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call i32 %30(ptr noundef %0, i32 noundef 1) #8
  br label %34

34:                                               ; preds = %32, %27
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 500000
  %38 = udiv i32 %37, 1000000
  %39 = icmp ult i32 %37, 1000000
  %40 = select i1 %39, i32 8, i32 %38
  %41 = load i32, ptr %4, align 4
  %42 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %43 = load i32, ptr %42, align 4
  %44 = tail call fastcc i32 @generic_set_freq(ptr noundef %0, i32 noundef %41, i32 noundef %40, i32 noundef 3, i64 noundef 0, i32 noundef %43)
  %45 = load ptr, ptr %29, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %34
  %48 = tail call i32 %45(ptr noundef %0, i32 noundef 0) #8
  br label %49

49:                                               ; preds = %47, %34
  tail call void @mutex_unlock(ptr noundef %28) #8
  %50 = icmp ne i32 %44, 0
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2
  %56 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.r820t_priv, ptr %3, i32 0, i32 2, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi i32 [ %63, %61 ], [ -1, %54 ]
  %66 = load i8, ptr %55, align 4
  %67 = zext i8 %66 to i32
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %57, i32 noundef %65, i32 noundef %67, ptr noundef nonnull @__func__.r820t_set_params, i32 noundef %44) #9
  br label %69

69:                                               ; preds = %64, %49
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r820t_set_analog_freq(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.r820t_priv, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.r820t_priv, ptr %4, i32 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.r820t_priv, ptr %4, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %16, %14 ], [ -1, %7 ]
  %19 = load i8, ptr %8, align 4
  %20 = zext i8 %19 to i32
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %10, i32 noundef %18, i32 noundef %20, ptr noundef nonnull @__func__.r820t_set_analog_freq) #9
  br label %22

22:                                               ; preds = %17, %2
  %23 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %24 = load i64, ptr %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i64 46848, ptr %23, align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i64 [ 46848, %26 ], [ %24, %22 ]
  %29 = icmp eq i64 %28, 256
  %30 = icmp eq i64 %28, 45056
  %31 = or i1 %29, %30
  %32 = select i1 %31, i32 6, i32 8
  %33 = getelementptr inbounds %struct.r820t_priv, ptr %4, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %33) #8
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = tail call i32 %35(ptr noundef %0, i32 noundef 1) #8
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i32, ptr %1, align 8
  %41 = mul i32 %40, 62500
  %42 = load i64, ptr %23, align 8
  %43 = tail call fastcc i32 @generic_set_freq(ptr noundef %0, i32 noundef %41, i32 noundef %32, i32 noundef 2, i64 noundef %42, i32 noundef 0)
  %44 = load ptr, ptr %34, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = tail call i32 %44(ptr noundef %0, i32 noundef 0) #8
  br label %48

48:                                               ; preds = %46, %39
  tail call void @mutex_unlock(ptr noundef %33) #8
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r820t_get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.r820t_priv, ptr %4, i32 0, i32 2
  %9 = getelementptr inbounds %struct.r820t_priv, ptr %4, i32 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.r820t_priv, ptr %4, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %16, %14 ], [ -1, %7 ]
  %19 = load i8, ptr %8, align 4
  %20 = zext i8 %19 to i32
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %10, i32 noundef %18, i32 noundef %20, ptr noundef nonnull @__func__.r820t_get_if_frequency) #9
  br label %22

22:                                               ; preds = %17, %2
  %23 = getelementptr inbounds %struct.r820t_priv, ptr %4, i32 0, i32 8
  %24 = load i32, ptr %23, align 8
  store i32 %24, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @r820t_signal(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.r820t_priv, ptr %5, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 %8(ptr noundef %0, i32 noundef 1) #8
  br label %12

12:                                               ; preds = %10, %2
  %13 = getelementptr inbounds %struct.r820t_priv, ptr %5, i32 0, i32 11
  %14 = load i8, ptr %13, align 2, !range !10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %17 = call fastcc i32 @r820t_read(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 4) #8
  %18 = icmp slt i32 %17, 0
  %19 = getelementptr inbounds [4 x i8], ptr %3, i32 0, i32 3
  %20 = load i8, ptr %19, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br i1 %18, label %36, label %21

21:                                               ; preds = %16
  %22 = zext i8 %20 to i32
  %23 = shl nuw nsw i32 %22, 1
  %24 = and i32 %23, 16
  %25 = lshr i32 %22, 4
  %26 = or i32 %24, %25
  %27 = trunc i32 %26 to i16
  %28 = mul nsw i16 %27, -16
  %29 = add nsw i16 %28, 720
  %30 = or i16 %29, 255
  %31 = icmp ult i16 %29, 256
  %32 = select i1 %31, i16 0, i16 %30
  br label %33

33:                                               ; preds = %21, %12
  %34 = phi i16 [ %32, %21 ], [ 0, %12 ]
  %35 = phi i32 [ %26, %21 ], [ 0, %12 ]
  store i16 %34, ptr %1, align 2
  br label %36

36:                                               ; preds = %33, %16
  %37 = phi i32 [ %17, %16 ], [ %35, %33 ]
  %38 = load ptr, ptr %7, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 %38(ptr noundef %0, i32 noundef 0) #8
  br label %42

42:                                               ; preds = %40, %36
  call void @mutex_unlock(ptr noundef %6) #8
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.r820t_priv, ptr %5, i32 0, i32 2
  %47 = getelementptr inbounds %struct.r820t_priv, ptr %5, i32 0, i32 2, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.r820t_priv, ptr %5, i32 0, i32 2, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = phi i32 [ %54, %52 ], [ -1, %45 ]
  %57 = load i8, ptr %46, align 4
  %58 = zext i8 %57 to i32
  %59 = load i8, ptr %13, align 2, !range !10
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, ptr @.str.36, ptr @.str.35
  %62 = load i16, ptr %1, align 2
  %63 = zext i16 %62 to i32
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %48, i32 noundef %56, i32 noundef %58, ptr noundef nonnull @__func__.r820t_signal, ptr noundef nonnull %61, i32 noundef %37, i32 noundef %63) #9
  br label %65

65:                                               ; preds = %55, %42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_imr(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [5 x %struct.r820t_sect_type], align 4
  %9 = alloca [3 x %struct.r820t_sect_type], align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %struct.r820t_sect_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.r820t_config, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 24000000
  %19 = select i1 %18, i32 2000, i32 1000
  %20 = udiv i32 %17, %19
  %21 = icmp ugt i32 %20, 24218
  br i1 %21, label %65, label %22

22:                                               ; preds = %3
  %23 = mul nuw nsw i32 %20, 136
  %24 = icmp ugt i32 %23, 3099999
  br i1 %24, label %65, label %25

25:                                               ; preds = %22
  %26 = mul nuw nsw i32 %20, 144
  %27 = icmp ugt i32 %26, 3099999
  br i1 %27, label %65, label %28

28:                                               ; preds = %25
  %29 = mul nuw nsw i32 %20, 152
  %30 = icmp ugt i32 %29, 3099999
  br i1 %30, label %65, label %31

31:                                               ; preds = %28
  %32 = mul nuw nsw i32 %20, 160
  %33 = icmp ugt i32 %32, 3099999
  br i1 %33, label %65, label %34

34:                                               ; preds = %31
  %35 = mul nuw nsw i32 %20, 168
  %36 = icmp ugt i32 %35, 3099999
  br i1 %36, label %65, label %37

37:                                               ; preds = %34
  %38 = mul nuw nsw i32 %20, 176
  %39 = icmp ugt i32 %38, 3099999
  br i1 %39, label %65, label %40

40:                                               ; preds = %37
  %41 = mul nuw nsw i32 %20, 184
  %42 = icmp ugt i32 %41, 3099999
  br i1 %42, label %65, label %43

43:                                               ; preds = %40
  %44 = mul nuw nsw i32 %20, 192
  %45 = icmp ugt i32 %44, 3099999
  br i1 %45, label %65, label %46

46:                                               ; preds = %43
  %47 = mul nuw nsw i32 %20, 200
  %48 = icmp ugt i32 %47, 3099999
  br i1 %48, label %65, label %49

49:                                               ; preds = %46
  %50 = mul nuw nsw i32 %20, 208
  %51 = icmp ugt i32 %50, 3099999
  br i1 %51, label %65, label %52

52:                                               ; preds = %49
  %53 = mul nuw nsw i32 %20, 216
  %54 = icmp ugt i32 %53, 3099999
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = mul nuw nsw i32 %20, 224
  %57 = icmp ugt i32 %56, 3099999
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = mul nuw nsw i32 %20, 232
  %60 = icmp ugt i32 %59, 3099999
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = mul nuw nsw i32 %20, 240
  %63 = icmp ugt i32 %62, 3099999
  %64 = select i1 %63, i32 14, i32 15
  br label %65

65:                                               ; preds = %61, %58, %55, %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22, %3
  %66 = phi i32 [ 0, %3 ], [ 1, %22 ], [ 2, %25 ], [ 3, %28 ], [ 4, %31 ], [ 5, %34 ], [ 6, %37 ], [ 7, %40 ], [ 8, %43 ], [ 9, %46 ], [ 10, %49 ], [ 11, %52 ], [ 12, %55 ], [ 13, %58 ], [ %64, %61 ]
  %67 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 19
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 20
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 26
  %72 = load i8, ptr %71, align 1
  %73 = and i8 %68, -48
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %66, 3
  %76 = or i32 %75, 128
  %77 = mul nuw nsw i32 %76, %20
  %78 = or i32 %66, %74
  %79 = and i8 %70, -4
  %80 = and i8 %72, -4
  switch i32 %1, label %100 [
    i32 0, label %81
    i32 1, label %86
    i32 2, label %89
    i32 3, label %93
    i32 4, label %97
  ]

81:                                               ; preds = %65
  %82 = udiv i32 %77, 48
  %83 = or i32 %78, 32
  %84 = or i8 %70, 3
  %85 = or i8 %80, 2
  br label %103

86:                                               ; preds = %65
  %87 = lshr i32 %77, 4
  %88 = or i8 %79, 2
  br label %103

89:                                               ; preds = %65
  %90 = lshr exact i32 %77, 3
  %91 = or i8 %79, 1
  %92 = or i8 %72, 3
  br label %103

93:                                               ; preds = %65
  %94 = udiv i32 %77, 6
  %95 = or i32 %78, 32
  %96 = or i8 %72, 3
  br label %103

97:                                               ; preds = %65
  %98 = lshr exact i32 %77, 2
  %99 = or i8 %80, 1
  br label %103

100:                                              ; preds = %65
  %101 = lshr exact i32 %77, 2
  %102 = or i8 %80, 1
  br label %103

103:                                              ; preds = %100, %97, %93, %89, %86, %81
  %104 = phi i32 [ %101, %100 ], [ %98, %97 ], [ %94, %93 ], [ %90, %89 ], [ %87, %86 ], [ %82, %81 ]
  %105 = phi i32 [ %78, %100 ], [ %78, %97 ], [ %95, %93 ], [ %78, %89 ], [ %78, %86 ], [ %83, %81 ]
  %106 = phi i8 [ %79, %100 ], [ %79, %97 ], [ %79, %93 ], [ %91, %89 ], [ %88, %86 ], [ %84, %81 ]
  %107 = phi i8 [ %102, %100 ], [ %99, %97 ], [ %96, %93 ], [ %92, %89 ], [ %80, %86 ], [ %85, %81 ]
  %108 = trunc i32 %105 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  store i8 %108, ptr %12, align 1
  %109 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 24, ptr noundef nonnull %12, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %345, label %111

111:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 %106, ptr %11, align 1
  %112 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 25, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %345, label %114

114:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  store i8 %107, ptr %10, align 1
  %115 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 31, ptr noundef nonnull %10, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %345, label %117

117:                                              ; preds = %114
  %118 = mul i32 %104, 1000
  %119 = add i32 %118, -5300000
  %120 = call fastcc i32 @r820t_set_mux(ptr noundef %0, i32 noundef %119)
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %345, label %122

122:                                              ; preds = %117
  %123 = call fastcc i32 @r820t_set_pll(ptr noundef %0, i32 noundef %119)
  %124 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 11
  %125 = load i8, ptr %124, align 2, !range !10
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i32 -22, i32 %123
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %345, label %129

129:                                              ; preds = %122
  br i1 %2, label %130, label %276

130:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false) #8, !annotation !8
  call fastcc void @r820t_vga_adjust(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false) #8, !annotation !8
  %131 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 3
  %132 = load i8, ptr %131, align 1
  %133 = and i8 %132, -64
  %134 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 4
  %135 = load i8, ptr %134, align 1
  %136 = and i8 %135, -64
  %137 = or i8 %133, 1
  %138 = or i8 %136, 33
  %139 = or i8 %136, 1
  %140 = or i8 %133, 33
  %141 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 3
  %142 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 3, i32 1
  %143 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 2
  %144 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 2, i32 1
  %145 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 1
  %146 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 1, i32 1
  %147 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 0, i32 1
  br label %148

148:                                              ; preds = %172, %130
  %149 = phi i32 [ 0, %130 ], [ %180, %172 ]
  %150 = phi i16 [ 255, %130 ], [ %179, %172 ]
  %151 = phi i8 [ 0, %130 ], [ %178, %172 ]
  switch i32 %149, label %156 [
    i32 0, label %152
    i32 1, label %153
    i32 2, label %154
    i32 3, label %155
  ]

152:                                              ; preds = %148
  store i8 %133, ptr %147, align 1
  store i8 %136, ptr %8, align 4
  br label %159

153:                                              ; preds = %148
  store i8 %133, ptr %146, align 1
  store i8 %139, ptr %145, align 4
  br label %159

154:                                              ; preds = %148
  store i8 %133, ptr %144, align 1
  store i8 %138, ptr %143, align 4
  br label %159

155:                                              ; preds = %148
  store i8 %137, ptr %142, align 1
  store i8 %136, ptr %141, align 4
  br label %159

156:                                              ; preds = %148
  %157 = getelementptr [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 %149
  %158 = getelementptr [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 %149, i32 1
  store i8 %140, ptr %158, align 1
  store i8 %136, ptr %157, align 4
  br label %159

159:                                              ; preds = %156, %155, %154, %153, %152
  %160 = getelementptr [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 %149, i32 1
  %161 = load i8, ptr %160, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 %161, ptr %7, align 1
  %162 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %205, label %164

164:                                              ; preds = %159
  %165 = getelementptr [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 %149
  %166 = load i8, ptr %165, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 %166, ptr %6, align 1
  %167 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 9, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %205, label %169

169:                                              ; preds = %164
  %170 = call fastcc i32 @r820t_multi_read(ptr noundef %0) #8
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %205, label %172

172:                                              ; preds = %169
  %173 = trunc i32 %170 to i16
  %174 = getelementptr [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 %149, i32 2
  store i16 %173, ptr %174, align 2
  %175 = and i32 %170, 65535
  %176 = zext i16 %150 to i32
  %177 = icmp ult i32 %175, %176
  %178 = select i1 %177, i8 %166, i8 %151
  %179 = select i1 %177, i16 %173, i16 %150
  %180 = add nuw nsw i32 %149, 1
  %181 = icmp eq i32 %180, 5
  br i1 %181, label %182, label %148

182:                                              ; preds = %172
  %183 = and i8 %178, 31
  %184 = icmp eq i8 %183, 1
  %185 = select i1 %184, i32 1, i32 3
  %186 = select i1 %184, i32 2, i32 4
  %187 = load i32, ptr %8, align 4
  store i32 %187, ptr %9, align 4
  %188 = getelementptr inbounds %struct.r820t_sect_type, ptr %9, i32 1
  %189 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 %185
  %190 = load i32, ptr %189, align 4
  store i32 %190, ptr %188, align 4
  %191 = getelementptr inbounds %struct.r820t_sect_type, ptr %9, i32 2
  %192 = getelementptr inbounds [5 x %struct.r820t_sect_type], ptr %8, i32 0, i32 %186
  %193 = load i32, ptr %192, align 4
  store i32 %193, ptr %191, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #8
  %194 = select i1 %184, i8 9, i8 8
  %195 = select i1 %184, i8 8, i8 9
  %196 = getelementptr inbounds %struct.r820t_sect_type, ptr %9, i32 0, i32 2
  %197 = lshr i32 %187, 16
  %198 = trunc i32 %197 to i16
  %199 = getelementptr inbounds %struct.r820t_sect_type, ptr %9, i32 2, i32 2
  %200 = lshr i32 %193, 16
  %201 = trunc i32 %200 to i16
  %202 = icmp ugt i16 %198, %201
  %203 = lshr i32 %190, 16
  %204 = trunc i32 %203 to i16
  br i1 %202, label %207, label %208

205:                                              ; preds = %169, %164, %159
  %206 = phi i32 [ %162, %159 ], [ %167, %164 ], [ %170, %169 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #8
  br label %274

207:                                              ; preds = %182
  store i32 %193, ptr %9, align 4
  store i32 %187, ptr %191, align 4
  br label %208

208:                                              ; preds = %207, %182
  %209 = phi i32 [ %187, %182 ], [ %193, %207 ]
  %210 = phi i16 [ %198, %182 ], [ %201, %207 ]
  %211 = getelementptr inbounds %struct.r820t_sect_type, ptr %9, i32 1, i32 2
  %212 = icmp ugt i16 %210, %204
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  store i32 %190, ptr %9, align 4
  store i32 %209, ptr %188, align 4
  br label %214

214:                                              ; preds = %213, %208
  %215 = call fastcc i32 @r820t_compre_step(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %194) #8
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %274, label %217

217:                                              ; preds = %214
  %218 = getelementptr inbounds %struct.r820t_sect_type, ptr %9, i32 0, i32 1
  %219 = load i8, ptr %218, align 1
  %220 = load i8, ptr %9, align 4
  %221 = call fastcc i32 @r820t_iq_tree(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %219, i8 noundef zeroext %220, i8 noundef zeroext %194) #8
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %274, label %223

223:                                              ; preds = %217
  %224 = load i16, ptr %196, align 2
  %225 = load i16, ptr %199, align 2
  %226 = icmp ugt i16 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  %228 = load i32, ptr %9, align 4
  %229 = load i32, ptr %191, align 4
  store i32 %229, ptr %9, align 4
  store i32 %228, ptr %191, align 4
  %230 = lshr i32 %229, 16
  %231 = trunc i32 %230 to i16
  br label %232

232:                                              ; preds = %227, %223
  %233 = phi i16 [ %224, %223 ], [ %231, %227 ]
  %234 = load i16, ptr %211, align 2
  %235 = icmp ugt i16 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load i32, ptr %9, align 4
  %238 = load i32, ptr %188, align 4
  store i32 %238, ptr %9, align 4
  store i32 %237, ptr %188, align 4
  br label %239

239:                                              ; preds = %236, %232
  %240 = call fastcc i32 @r820t_compre_step(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %195) #8
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %274, label %242

242:                                              ; preds = %239
  %243 = load i8, ptr %218, align 1
  %244 = load i8, ptr %9, align 4
  %245 = call fastcc i32 @r820t_iq_tree(ptr noundef %0, ptr noundef nonnull %9, i8 noundef zeroext %243, i8 noundef zeroext %244, i8 noundef zeroext %195) #8
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %274, label %247

247:                                              ; preds = %242
  %248 = load i16, ptr %196, align 2
  %249 = load i16, ptr %199, align 2
  %250 = icmp ugt i16 %248, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %247
  %252 = load i32, ptr %9, align 4
  %253 = load i32, ptr %191, align 4
  store i32 %253, ptr %9, align 4
  store i32 %252, ptr %191, align 4
  %254 = lshr i32 %253, 16
  %255 = trunc i32 %254 to i16
  br label %256

256:                                              ; preds = %251, %247
  %257 = phi i16 [ %248, %247 ], [ %255, %251 ]
  %258 = load i16, ptr %211, align 2
  %259 = icmp ugt i16 %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i32, ptr %9, align 4
  %262 = load i32, ptr %188, align 4
  store i32 %262, ptr %9, align 4
  store i32 %261, ptr %188, align 4
  br label %263

263:                                              ; preds = %260, %256
  %264 = call fastcc i32 @r820t_section(ptr noundef %0, ptr noundef nonnull %9) #8
  %265 = load i32, ptr %9, align 4
  store i32 %265, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  %266 = load i8, ptr %131, align 1
  %267 = and i8 %266, -64
  store i8 %267, ptr %5, align 1
  %268 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  %271 = load i8, ptr %134, align 1
  %272 = and i8 %271, -64
  store i8 %272, ptr %4, align 1
  %273 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 9, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  br label %274

274:                                              ; preds = %270, %263, %242, %239, %217, %214, %205
  %275 = phi i32 [ %273, %270 ], [ %215, %214 ], [ %221, %217 ], [ %240, %239 ], [ %245, %242 ], [ %268, %263 ], [ %206, %205 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  br label %287

276:                                              ; preds = %129
  %277 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 3
  %278 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 3, i32 1
  %279 = load i8, ptr %278, align 1
  %280 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 1
  store i8 %279, ptr %280, align 1
  %281 = load i8, ptr %277, align 4
  store i8 %281, ptr %13, align 4
  %282 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 3, i32 2
  %283 = load i16, ptr %282, align 2
  %284 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 2
  store i16 %283, ptr %284, align 2
  call fastcc void @r820t_vga_adjust(ptr noundef %0) #8
  %285 = call fastcc i32 @r820t_section(ptr noundef %0, ptr noundef nonnull %13) #8
  %286 = call i32 @llvm.smin.i32(i32 %285, i32 0) #8
  br label %287

287:                                              ; preds = %276, %274
  %288 = phi i32 [ %275, %274 ], [ %286, %276 ]
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %345, label %290

290:                                              ; preds = %287
  switch i32 %1, label %336 [
    i32 0, label %291
    i32 1, label %300
    i32 2, label %309
    i32 3, label %318
    i32 4, label %327
  ]

291:                                              ; preds = %290
  %292 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 1
  %293 = load i8, ptr %292, align 1
  %294 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 13
  %295 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 0, i32 1
  store i8 %293, ptr %295, align 1
  %296 = load i8, ptr %13, align 4
  store i8 %296, ptr %294, align 8
  %297 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 2
  %298 = load i16, ptr %297, align 2
  %299 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 0, i32 2
  store i16 %298, ptr %299, align 2
  br label %345

300:                                              ; preds = %290
  %301 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 1
  %302 = load i8, ptr %301, align 1
  %303 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 1
  %304 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 1, i32 1
  store i8 %302, ptr %304, align 1
  %305 = load i8, ptr %13, align 4
  store i8 %305, ptr %303, align 4
  %306 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 2
  %307 = load i16, ptr %306, align 2
  %308 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 1, i32 2
  store i16 %307, ptr %308, align 2
  br label %345

309:                                              ; preds = %290
  %310 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 1
  %311 = load i8, ptr %310, align 1
  %312 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 2
  %313 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 2, i32 1
  store i8 %311, ptr %313, align 1
  %314 = load i8, ptr %13, align 4
  store i8 %314, ptr %312, align 8
  %315 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 2
  %316 = load i16, ptr %315, align 2
  %317 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 2, i32 2
  store i16 %316, ptr %317, align 2
  br label %345

318:                                              ; preds = %290
  %319 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 1
  %320 = load i8, ptr %319, align 1
  %321 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 3
  %322 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 3, i32 1
  store i8 %320, ptr %322, align 1
  %323 = load i8, ptr %13, align 4
  store i8 %323, ptr %321, align 4
  %324 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 2
  %325 = load i16, ptr %324, align 2
  %326 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 3, i32 2
  store i16 %325, ptr %326, align 2
  br label %345

327:                                              ; preds = %290
  %328 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 1
  %329 = load i8, ptr %328, align 1
  %330 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 4
  %331 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 4, i32 1
  store i8 %329, ptr %331, align 1
  %332 = load i8, ptr %13, align 4
  store i8 %332, ptr %330, align 8
  %333 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 2
  %334 = load i16, ptr %333, align 2
  %335 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 4, i32 2
  store i16 %334, ptr %335, align 2
  br label %345

336:                                              ; preds = %290
  %337 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 1
  %338 = load i8, ptr %337, align 1
  %339 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 4
  %340 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 4, i32 1
  store i8 %338, ptr %340, align 1
  %341 = load i8, ptr %13, align 4
  store i8 %341, ptr %339, align 8
  %342 = getelementptr inbounds %struct.r820t_sect_type, ptr %13, i32 0, i32 2
  %343 = load i16, ptr %342, align 2
  %344 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 4, i32 2
  store i16 %343, ptr %344, align 2
  br label %345

345:                                              ; preds = %336, %327, %318, %309, %300, %291, %287, %122, %117, %114, %111, %103
  %346 = phi i32 [ %109, %103 ], [ %112, %111 ], [ %115, %114 ], [ %120, %117 ], [ %127, %122 ], [ %288, %287 ], [ 0, %336 ], [ 0, %327 ], [ 0, %318 ], [ 0, %309 ], [ 0, %300 ], [ 0, %291 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  ret i32 %346
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_set_mux(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = udiv i32 %1, 1000000
  %10 = icmp ult i32 %1, 50000000
  br i1 %10, label %50, label %11

11:                                               ; preds = %2
  %12 = icmp ult i32 %1, 55000000
  br i1 %12, label %50, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %1, 60000000
  br i1 %14, label %50, label %15

15:                                               ; preds = %13
  %16 = icmp ult i32 %1, 65000000
  br i1 %16, label %50, label %17

17:                                               ; preds = %15
  %18 = icmp ult i32 %1, 70000000
  br i1 %18, label %50, label %19

19:                                               ; preds = %17
  %20 = icmp ult i32 %1, 75000000
  br i1 %20, label %50, label %21

21:                                               ; preds = %19
  %22 = icmp ult i32 %1, 80000000
  br i1 %22, label %50, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %1, 90000000
  br i1 %24, label %50, label %25

25:                                               ; preds = %23
  %26 = icmp ult i32 %1, 100000000
  br i1 %26, label %50, label %27

27:                                               ; preds = %25
  %28 = icmp ult i32 %1, 110000000
  br i1 %28, label %50, label %29

29:                                               ; preds = %27
  %30 = icmp ult i32 %1, 120000000
  br i1 %30, label %50, label %31

31:                                               ; preds = %29
  %32 = icmp ult i32 %1, 140000000
  br i1 %32, label %50, label %33

33:                                               ; preds = %31
  %34 = icmp ult i32 %1, 180000000
  br i1 %34, label %50, label %35

35:                                               ; preds = %33
  %36 = icmp ult i32 %1, 220000000
  br i1 %36, label %50, label %37

37:                                               ; preds = %35
  %38 = icmp ult i32 %1, 250000000
  br i1 %38, label %50, label %39

39:                                               ; preds = %37
  %40 = icmp ult i32 %1, 280000000
  br i1 %40, label %50, label %41

41:                                               ; preds = %39
  %42 = icmp ult i32 %1, 310000000
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = icmp ult i32 %1, 450000000
  br i1 %44, label %50, label %45

45:                                               ; preds = %43
  %46 = icmp ult i32 %1, 588000000
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = icmp ult i32 %1, 650000000
  %49 = select i1 %48, i32 19, i32 20
  br label %50

50:                                               ; preds = %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %2
  %51 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 2, %13 ], [ 3, %15 ], [ 4, %17 ], [ 5, %19 ], [ 6, %21 ], [ 7, %23 ], [ 8, %25 ], [ 9, %27 ], [ 10, %29 ], [ 11, %31 ], [ 12, %33 ], [ 13, %35 ], [ 14, %37 ], [ 15, %39 ], [ 16, %41 ], [ 17, %43 ], [ 18, %45 ], [ %49, %47 ]
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2
  %56 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi i32 [ %63, %61 ], [ -1, %54 ]
  %66 = load i8, ptr %55, align 4
  %67 = zext i8 %66 to i32
  %68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %57, i32 noundef %65, i32 noundef %67, i32 noundef %51, i32 noundef %9) #9
  br label %69

69:                                               ; preds = %64, %50
  %70 = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %51, i32 1
  %71 = load i8, ptr %70, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  %72 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 18
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, -9
  %75 = and i8 %71, 8
  %76 = or i8 %74, %75
  store i8 %76, ptr %8, align 1
  %77 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 23, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %150, label %79

79:                                               ; preds = %69
  %80 = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %51, i32 2
  %81 = load i8, ptr %80, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  %82 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 21
  %83 = load i8, ptr %82, align 1
  %84 = and i8 %83, 60
  %85 = and i8 %81, -61
  %86 = or i8 %84, %85
  store i8 %86, ptr %7, align 1
  %87 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 26, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %150, label %89

89:                                               ; preds = %79
  %90 = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %51, i32 3
  %91 = load i8, ptr %90, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 %91, ptr %6, align 1
  %92 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 27, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %150, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 6
  %96 = load i32, ptr %95, align 8
  switch i32 %96, label %108 [
    i32 0, label %97
    i32 1, label %97
    i32 2, label %101
    i32 4, label %105
  ]

97:                                               ; preds = %94, %94
  %98 = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %51, i32 4
  %99 = load i8, ptr %98, align 1
  %100 = or i8 %99, 8
  br label %112

101:                                              ; preds = %94
  %102 = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %51, i32 5
  %103 = load i8, ptr %102, align 4
  %104 = or i8 %103, 8
  br label %112

105:                                              ; preds = %94
  %106 = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %51, i32 6
  %107 = load i8, ptr %106, align 1
  br label %112

108:                                              ; preds = %94
  %109 = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %51, i32 6
  %110 = load i8, ptr %109, align 1
  %111 = or i8 %110, 8
  br label %112

112:                                              ; preds = %108, %105, %101, %97
  %113 = phi i8 [ %111, %108 ], [ %107, %105 ], [ %104, %101 ], [ %100, %97 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  %114 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 11
  %115 = load i8, ptr %114, align 1
  %116 = and i8 %115, -12
  %117 = and i8 %113, 11
  %118 = or i8 %116, %117
  store i8 %118, ptr %5, align 1
  %119 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 16, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %150, label %121

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 10
  %123 = load i8, ptr %122, align 1, !range !10
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = getelementptr [21 x %struct.r820t_freq_range], ptr @freq_ranges, i32 0, i32 %51, i32 7
  %127 = load i8, ptr %126, align 2
  %128 = zext i8 %127 to i32
  %129 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 %128
  %130 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 13, i32 %128, i32 1
  %131 = load i8, ptr %130, align 1
  %132 = load i8, ptr %129, align 4
  %133 = and i8 %131, 63
  %134 = and i8 %132, 63
  br label %135

135:                                              ; preds = %125, %121
  %136 = phi i8 [ %133, %125 ], [ 0, %121 ]
  %137 = phi i8 [ %134, %125 ], [ 0, %121 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  %138 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 3
  %139 = load i8, ptr %138, align 1
  %140 = and i8 %139, -64
  %141 = or i8 %140, %136
  store i8 %141, ptr %4, align 1
  %142 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  %145 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 4
  %146 = load i8, ptr %145, align 1
  %147 = and i8 %146, -64
  %148 = or i8 %147, %137
  store i8 %148, ptr %3, align 1
  %149 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 9, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %150

150:                                              ; preds = %144, %135, %112, %89, %79, %69
  %151 = phi i32 [ %149, %144 ], [ %77, %69 ], [ %87, %79 ], [ %92, %89 ], [ %119, %112 ], [ %142, %135 ]
  ret i32 %151
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_set_pll(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %13) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %13, i8 0, i32 5, i1 false), !annotation !8
  %14 = udiv i32 %1, 1000
  %15 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.r820t_config, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = udiv i32 %18, 1000
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  %20 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 11
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, -17
  store i8 %22, ptr %12, align 1
  %23 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 16, ptr noundef nonnull %12, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %266, label %25

25:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  %26 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 21
  %27 = load i8, ptr %26, align 1
  %28 = and i8 %27, -13
  store i8 %28, ptr %11, align 1
  %29 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 26, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %266, label %31

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  %32 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 13
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 31
  %35 = or i8 %34, -128
  store i8 %35, ptr %10, align 1
  %36 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 18, ptr noundef nonnull %10, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %266, label %38

38:                                               ; preds = %31
  %39 = shl nuw nsw i32 %14, 1
  %40 = add nsw i32 %39, -1770000
  %41 = icmp ult i32 %40, 1770000
  br i1 %41, label %71, label %51

42:                                               ; preds = %67, %63, %59, %55, %51
  %43 = phi i32 [ 64, %67 ], [ 32, %63 ], [ 16, %59 ], [ 8, %55 ], [ 4, %51 ]
  %44 = phi i8 [ 64, %67 ], [ 32, %63 ], [ 16, %59 ], [ 8, %55 ], [ 4, %51 ]
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi i8 [ %49, %45 ], [ 0, %42 ]
  %47 = phi i8 [ %48, %45 ], [ %44, %42 ]
  %48 = lshr i8 %47, 1
  %49 = add nuw nsw i8 %46, 1
  %50 = icmp ugt i8 %47, 5
  br i1 %50, label %45, label %71

51:                                               ; preds = %38
  %52 = shl nuw nsw i32 %14, 2
  %53 = add nsw i32 %52, -1770000
  %54 = icmp ult i32 %53, 1770000
  br i1 %54, label %42, label %55

55:                                               ; preds = %51
  %56 = shl nuw nsw i32 %14, 3
  %57 = add nsw i32 %56, -1770000
  %58 = icmp ult i32 %57, 1770000
  br i1 %58, label %42, label %59

59:                                               ; preds = %55
  %60 = shl nuw nsw i32 %14, 4
  %61 = add nsw i32 %60, -1770000
  %62 = icmp ult i32 %61, 1770000
  br i1 %62, label %42, label %63

63:                                               ; preds = %59
  %64 = shl nuw nsw i32 %14, 5
  %65 = add nsw i32 %64, -1770000
  %66 = icmp ult i32 %65, 1770000
  br i1 %66, label %42, label %67

67:                                               ; preds = %63
  %68 = shl nuw nsw i32 %14, 6
  %69 = add nsw i32 %68, -1770000
  %70 = icmp ult i32 %69, 1770000
  br i1 %70, label %42, label %71

71:                                               ; preds = %67, %45, %38
  %72 = phi i32 [ 2, %38 ], [ 128, %67 ], [ %43, %45 ]
  %73 = phi i8 [ 0, %38 ], [ 0, %67 ], [ %49, %45 ]
  %74 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 5)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %266, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds [5 x i8], ptr %13, i32 0, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = lshr i8 %78, 4
  %80 = and i8 %79, 3
  %81 = load i32, ptr @debug, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %100, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2
  %85 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.i2c_adapter, ptr %88, i32 0, i32 11
  %92 = load i32, ptr %91, align 4
  br label %93

93:                                               ; preds = %90, %83
  %94 = phi i32 [ %92, %90 ], [ -1, %83 ]
  %95 = load i8, ptr %84, align 4
  %96 = zext i8 %95 to i32
  %97 = zext i8 %73 to i32
  %98 = zext i8 %80 to i32
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %86, i32 noundef %94, i32 noundef %96, i32 noundef %72, i32 noundef %97, i32 noundef %98) #9
  br label %100

100:                                              ; preds = %93, %76
  %101 = load ptr, ptr %15, align 8
  %102 = getelementptr inbounds %struct.r820t_config, ptr %101, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = icmp eq i8 %80, 3
  br i1 %106, label %107, label %109

107:                                              ; preds = %105
  %108 = add i8 %73, -1
  br label %113

109:                                              ; preds = %105
  %110 = icmp ult i8 %80, 2
  %111 = zext i1 %110 to i8
  %112 = add i8 %73, %111
  br label %113

113:                                              ; preds = %109, %107, %100
  %114 = phi i8 [ %108, %107 ], [ %73, %100 ], [ %112, %109 ]
  %115 = shl i8 %114, 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  %116 = load i8, ptr %20, align 1
  %117 = and i8 %116, 31
  %118 = or i8 %117, %115
  store i8 %118, ptr %9, align 1
  %119 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 16, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %266, label %121

121:                                              ; preds = %113
  %122 = mul nuw nsw i32 %72, %14
  %123 = shl nuw nsw i32 %19, 1
  %124 = udiv i32 %122, %123
  %125 = and i32 %124, 255
  %126 = mul nuw i32 %125, %123
  %127 = sub i32 %122, %126
  %128 = udiv i32 %18, 64000
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %147, label %130

130:                                              ; preds = %121
  %131 = mul nuw nsw i32 %19, 127
  %132 = lshr i32 %131, 6
  %133 = icmp ugt i32 %127, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = add nuw i32 %124, 1
  br label %147

136:                                              ; preds = %130
  %137 = lshr i32 %131, 7
  %138 = icmp ugt i32 %127, %137
  %139 = icmp ult i32 %127, %19
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = icmp ugt i32 %127, %19
  br i1 %142, label %143, label %147

143:                                              ; preds = %141
  %144 = mul nuw nsw i32 %19, 129
  %145 = lshr i32 %144, 7
  %146 = call i32 @llvm.umax.i32(i32 %127, i32 %145)
  br label %147

147:                                              ; preds = %143, %141, %136, %134, %121
  %148 = phi i32 [ 0, %134 ], [ %127, %141 ], [ 0, %121 ], [ %137, %136 ], [ %146, %143 ]
  %149 = phi i32 [ %135, %134 ], [ %124, %141 ], [ %124, %121 ], [ %124, %136 ], [ %124, %143 ]
  %150 = trunc i32 %149 to i16
  %151 = and i16 %150, 255
  %152 = add nsw i16 %151, -13
  %153 = sdiv i16 %152, 4
  %154 = zext i16 %153 to i32
  %155 = shl i32 %149, 6
  %156 = add i32 %155, 192
  %157 = add i32 %156, %154
  %158 = trunc i32 %157 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  store i8 %158, ptr %8, align 1
  %159 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 20, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %266, label %161

161:                                              ; preds = %147
  %162 = icmp eq i32 %148, 0
  %163 = select i1 %162, i8 8, i8 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  %164 = load i8, ptr %32, align 1
  %165 = and i8 %164, -9
  %166 = or i8 %165, %163
  store i8 %166, ptr %7, align 1
  %167 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 18, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %266, label %169

169:                                              ; preds = %161
  %170 = icmp ugt i32 %148, 1
  br i1 %170, label %171, label %190

171:                                              ; preds = %185, %169
  %172 = phi i16 [ %187, %185 ], [ 0, %169 ]
  %173 = phi i32 [ %188, %185 ], [ 2, %169 ]
  %174 = phi i32 [ %186, %185 ], [ %148, %169 ]
  %175 = and i32 %173, 65534
  %176 = udiv i32 %123, %175
  %177 = icmp ugt i32 %174, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %171
  %179 = lshr exact i32 %175, 1
  %180 = udiv i32 32768, %179
  %181 = trunc i32 %180 to i16
  %182 = add i16 %172, %181
  %183 = sub i32 %174, %176
  %184 = icmp ugt i32 %175, 32767
  br i1 %184, label %190, label %185

185:                                              ; preds = %178, %171
  %186 = phi i32 [ %183, %178 ], [ %174, %171 ]
  %187 = phi i16 [ %182, %178 ], [ %172, %171 ]
  %188 = shl nuw nsw i32 %175, 1
  %189 = icmp ugt i32 %186, 1
  br i1 %189, label %171, label %190

190:                                              ; preds = %185, %178, %169
  %191 = phi i16 [ 0, %169 ], [ %187, %185 ], [ %182, %178 ]
  %192 = load i32, ptr @debug, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %210, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2
  %196 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 3
  %197 = load ptr, ptr %196, align 4
  %198 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 1
  %199 = load ptr, ptr %198, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %204, label %201

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.i2c_adapter, ptr %199, i32 0, i32 11
  %203 = load i32, ptr %202, align 4
  br label %204

204:                                              ; preds = %201, %194
  %205 = phi i32 [ %203, %201 ], [ -1, %194 ]
  %206 = load i8, ptr %195, align 4
  %207 = zext i8 %206 to i32
  %208 = zext i16 %191 to i32
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %197, i32 noundef %205, i32 noundef %207, i32 noundef %14, i32 noundef %19, ptr noundef nonnull @.str.24, i32 noundef %208) #9
  br label %210

210:                                              ; preds = %204, %190
  %211 = lshr i16 %191, 8
  %212 = trunc i16 %211 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 %212, ptr %6, align 1
  %213 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 22, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %266, label %215

215:                                              ; preds = %210
  %216 = trunc i16 %191 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 %216, ptr %5, align 1
  %217 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 21, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %266, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds [5 x i8], ptr %13, i32 0, i32 2
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %221 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 3)
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %266, label %223

223:                                              ; preds = %219
  %224 = load i8, ptr %220, align 1
  %225 = and i8 %224, 64
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  %228 = load i8, ptr %32, align 1
  %229 = and i8 %228, 31
  %230 = or i8 %229, 96
  store i8 %230, ptr %4, align 1
  %231 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 18, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %266, label %233

233:                                              ; preds = %227
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %234 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %13, i32 noundef 3)
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %266, label %236

236:                                              ; preds = %233
  %237 = load i8, ptr %220, align 1
  br label %238

238:                                              ; preds = %236, %223
  %239 = phi i8 [ %224, %223 ], [ %237, %236 ]
  %240 = and i8 %239, 64
  %241 = icmp eq i8 %240, 0
  %242 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 11
  br i1 %241, label %243, label %244

243:                                              ; preds = %238
  store i8 0, ptr %242, align 2
  br label %266

244:                                              ; preds = %238
  store i8 1, ptr %242, align 2
  %245 = load i32, ptr @debug, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %262, label %247

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2
  %249 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 3
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.r820t_priv, ptr %0, i32 0, i32 2, i32 1
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.i2c_adapter, ptr %252, i32 0, i32 11
  %256 = load i32, ptr %255, align 4
  br label %257

257:                                              ; preds = %254, %247
  %258 = phi i32 [ %256, %254 ], [ -1, %247 ]
  %259 = load i8, ptr %248, align 4
  %260 = zext i8 %259 to i32
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %250, i32 noundef %258, i32 noundef %260, i32 noundef %14) #9
  br label %262

262:                                              ; preds = %257, %244
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  %263 = load i8, ptr %26, align 1
  %264 = or i8 %263, 8
  store i8 %264, ptr %3, align 1
  %265 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 26, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  br label %266

266:                                              ; preds = %262, %243, %233, %227, %219, %215, %210, %161, %147, %113, %71, %31, %25, %2
  %267 = phi i32 [ %265, %262 ], [ 0, %243 ], [ %23, %2 ], [ %29, %25 ], [ %36, %31 ], [ %74, %71 ], [ %119, %113 ], [ %159, %147 ], [ %167, %161 ], [ %213, %210 ], [ %217, %215 ], [ %221, %219 ], [ %231, %227 ], [ %234, %233 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %13) #8
  ret i32 %267
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @r820t_vga_adjust(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr %struct.r820t_priv, ptr %0, i32 0, i32 4, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, -16
  %6 = or i8 %5, 12
  store i8 %6, ptr %2, align 1
  %7 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 12, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %37, label %34

9:                                                ; preds = %34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  %10 = load i8, ptr %3, align 1
  %11 = and i8 %10, -16
  %12 = or i8 %11, 13
  store i8 %12, ptr %2, align 1
  %13 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 12, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %9
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %16 = call fastcc i32 @r820t_multi_read(ptr noundef %0)
  %17 = icmp ugt i32 %16, 160
  br i1 %17, label %37, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  %19 = load i8, ptr %3, align 1
  %20 = and i8 %19, -16
  %21 = or i8 %20, 14
  store i8 %21, ptr %2, align 1
  %22 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 12, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %18
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %25 = call fastcc i32 @r820t_multi_read(ptr noundef %0)
  %26 = icmp ugt i32 %25, 160
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  %28 = load i8, ptr %3, align 1
  %29 = or i8 %28, 15
  store i8 %29, ptr %2, align 1
  %30 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 12, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %33 = call fastcc i32 @r820t_multi_read(ptr noundef %0)
  br label %37

34:                                               ; preds = %1
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %35 = call fastcc i32 @r820t_multi_read(ptr noundef %0)
  %36 = icmp ugt i32 %35, 160
  br i1 %36, label %37, label %9

37:                                               ; preds = %34, %32, %27, %24, %18, %15, %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_compre_step(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = load i8, ptr %1, align 2
  %7 = getelementptr inbounds %struct.r820t_sect_type, ptr %1, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %2, 8
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i8
  %12 = and i8 %8, 31
  %13 = icmp ult i8 %12, 9
  %14 = and i8 %6, 31
  %15 = icmp ult i8 %14, 9
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %45

17:                                               ; preds = %3
  %18 = zext i1 %9 to i8
  %19 = getelementptr inbounds %struct.r820t_sect_type, ptr %1, i32 0, i32 2
  br label %20

20:                                               ; preds = %38, %17
  %21 = phi i8 [ %8, %17 ], [ %24, %38 ]
  %22 = phi i8 [ %6, %17 ], [ %23, %38 ]
  %23 = add i8 %22, %11
  %24 = add i8 %21, %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 %24, ptr %5, align 1
  %25 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 %23, ptr %4, align 1
  %28 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext 9, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = call fastcc i32 @r820t_multi_read(ptr noundef %0)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = and i32 %31, 65535
  %35 = load i16, ptr %19, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp ugt i32 %34, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = trunc i32 %31 to i16
  store i8 %24, ptr %7, align 1
  store i8 %23, ptr %1, align 2
  store i16 %39, ptr %19, align 2
  %40 = and i8 %24, 31
  %41 = icmp ult i8 %40, 9
  %42 = and i8 %23, 31
  %43 = icmp ult i8 %42, 9
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %20, label %45

45:                                               ; preds = %38, %33, %30, %27, %20, %3
  %46 = phi i32 [ 0, %3 ], [ 0, %38 ], [ 0, %33 ], [ %31, %30 ], [ %28, %27 ], [ %25, %20 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_iq_tree(ptr noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = icmp eq i8 %4, 8
  %9 = select i1 %8, i8 9, i8 8
  br label %10

10:                                               ; preds = %49, %5
  %11 = phi i32 [ 0, %5 ], [ %51, %49 ]
  %12 = phi i8 [ %3, %5 ], [ %50, %49 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 %2, ptr %7, align 1
  %13 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext %4, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 %12, ptr %6, align 1
  %16 = call fastcc i32 @r820t_write(ptr noundef %0, i8 noundef zeroext %9, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %15
  %19 = call fastcc i32 @r820t_multi_read(ptr noundef %0)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %18
  %22 = trunc i32 %19 to i16
  %23 = getelementptr %struct.r820t_sect_type, ptr %1, i32 %11
  %24 = getelementptr %struct.r820t_sect_type, ptr %1, i32 %11, i32 2
  store i16 %22, ptr %24, align 2
  br i1 %8, label %25, label %27

25:                                               ; preds = %21
  %26 = getelementptr %struct.r820t_sect_type, ptr %1, i32 %11, i32 1
  store i8 %2, ptr %26, align 1
  store i8 %12, ptr %23, align 2
  br label %29

27:                                               ; preds = %21
  store i8 %2, ptr %23, align 2
  %28 = getelementptr %struct.r820t_sect_type, ptr %1, i32 %11, i32 1
  store i8 %12, ptr %28, align 1
  br label %29

29:                                               ; preds = %27, %25
  switch i32 %11, label %49 [
    i32 0, label %30
    i32 1, label %32
  ]

30:                                               ; preds = %29
  %31 = add i8 %12, 1
  br label %49

32:                                               ; preds = %29
  %33 = zext i8 %12 to i32
  %34 = and i32 %33, 31
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = trunc i32 %34 to i8
  %38 = sub nuw nsw i8 2, %37
  %39 = and i32 %33, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = and i8 %12, -64
  %43 = or i8 %38, %42
  br label %49

44:                                               ; preds = %36
  %45 = or i8 %12, %38
  %46 = or i8 %45, 32
  br label %49

47:                                               ; preds = %32
  %48 = add i8 %12, -2
  br label %49

49:                                               ; preds = %47, %44, %41, %30, %29
  %50 = phi i8 [ %31, %30 ], [ %43, %41 ], [ %46, %44 ], [ %48, %47 ], [ %12, %29 ]
  %51 = add nuw nsw i32 %11, 1
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %10

53:                                               ; preds = %49, %18, %15, %10
  %54 = phi i32 [ %13, %10 ], [ %16, %15 ], [ %19, %18 ], [ 0, %49 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_section(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x %struct.r820t_sect_type], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.r820t_sect_type, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = and i8 %5, 31
  %7 = icmp eq i8 %6, 0
  %8 = and i8 %5, -33
  %9 = add nuw nsw i8 %8, 1
  %10 = add i8 %5, -1
  %11 = select i1 %7, i8 %9, i8 %10
  %12 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = load i8, ptr %1, align 2
  store i8 %13, ptr %3, align 4
  %14 = call fastcc i32 @r820t_iq_tree(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %11, i8 noundef zeroext %13, i8 noundef zeroext 8)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %109, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  %19 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 2, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = icmp ugt i16 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 2
  %24 = load i32, ptr %3, align 4
  %25 = load i32, ptr %23, align 4
  store i32 %25, ptr %3, align 4
  store i32 %24, ptr %23, align 4
  %26 = lshr i32 %25, 16
  %27 = trunc i32 %26 to i16
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i16 [ %18, %16 ], [ %27, %22 ]
  %30 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 1, i32 2
  %31 = load i16, ptr %30, align 2
  %32 = icmp ugt i16 %29, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, ptr %3, align 4
  br label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 1
  %37 = load i32, ptr %3, align 4
  %38 = load i32, ptr %36, align 4
  store i32 %38, ptr %3, align 4
  store i32 %37, ptr %36, align 4
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i32 [ %34, %33 ], [ %38, %35 ]
  %41 = lshr i32 %40, 16
  %42 = trunc i32 %41 to i16
  %43 = load i8, ptr %4, align 1
  store i8 %43, ptr %12, align 1
  %44 = load i8, ptr %1, align 2
  store i8 %44, ptr %3, align 4
  %45 = call fastcc i32 @r820t_iq_tree(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %43, i8 noundef zeroext %44, i8 noundef zeroext 8)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %109, label %47

47:                                               ; preds = %39
  %48 = load i16, ptr %17, align 2
  %49 = load i16, ptr %19, align 2
  %50 = icmp ugt i16 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 2
  %53 = load i32, ptr %3, align 4
  %54 = load i32, ptr %52, align 4
  store i32 %54, ptr %3, align 4
  store i32 %53, ptr %52, align 4
  %55 = lshr i32 %54, 16
  %56 = trunc i32 %55 to i16
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i16 [ %48, %47 ], [ %56, %51 ]
  %59 = load i16, ptr %30, align 2
  %60 = icmp ugt i16 %58, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i32, ptr %3, align 4
  br label %67

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 1
  %65 = load i32, ptr %3, align 4
  %66 = load i32, ptr %64, align 4
  store i32 %66, ptr %3, align 4
  store i32 %65, ptr %64, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = phi i32 [ %62, %61 ], [ %66, %63 ]
  %69 = lshr i32 %68, 16
  %70 = trunc i32 %69 to i16
  %71 = load i8, ptr %4, align 1
  %72 = and i8 %71, 31
  %73 = icmp eq i8 %72, 0
  %74 = or i8 %71, 32
  %75 = select i1 %73, i8 %74, i8 %71
  %76 = add i8 %75, 1
  store i8 %76, ptr %12, align 1
  %77 = load i8, ptr %1, align 2
  store i8 %77, ptr %3, align 4
  %78 = call fastcc i32 @r820t_iq_tree(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %76, i8 noundef zeroext %77, i8 noundef zeroext 8)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %109, label %80

80:                                               ; preds = %67
  %81 = load i16, ptr %17, align 2
  %82 = load i16, ptr %19, align 2
  %83 = icmp ugt i16 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 2
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %3, align 4
  %87 = lshr i32 %86, 16
  %88 = trunc i32 %87 to i16
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i16 [ %81, %80 ], [ %88, %84 ]
  %91 = load i16, ptr %30, align 2
  %92 = icmp ugt i16 %90, %91
  %93 = load i32, ptr %3, align 4
  %94 = getelementptr inbounds %struct.r820t_sect_type, ptr %3, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = select i1 %92, i32 %95, i32 %93
  %97 = lshr i32 %96, 16
  %98 = trunc i32 %97 to i16
  %99 = icmp ugt i16 %42, %98
  %100 = select i1 %99, i32 %96, i32 %40
  %101 = call i16 @llvm.umin.i16(i16 %42, i16 %98)
  %102 = icmp ugt i16 %101, %70
  %103 = select i1 %102, i32 %68, i32 %100
  %104 = call i16 @llvm.umin.i16(i16 %101, i16 %70)
  %105 = zext i16 %104 to i32
  %106 = shl nuw i32 %105, 16
  %107 = and i32 %103, 65535
  %108 = or i32 %106, %107
  store i32 %108, ptr %1, align 2
  br label %109

109:                                              ; preds = %89, %67, %39, %2
  %110 = phi i32 [ 0, %89 ], [ %14, %2 ], [ %45, %39 ], [ %78, %67 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  ret i32 %110
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_multi_read(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 0, ptr %2, align 2, !annotation !8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #8
  %3 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %4 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %53, label %6

6:                                                ; preds = %1
  %7 = load i8, ptr %3, align 1
  %8 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %3, align 1
  %12 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %53, label %14

14:                                               ; preds = %10
  %15 = load i8, ptr %3, align 1
  %16 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %14
  %19 = load i8, ptr %3, align 1
  %20 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %3, align 1
  %24 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %22
  %27 = zext i8 %7 to i32
  %28 = zext i8 %11 to i32
  %29 = add nuw nsw i32 %27, %28
  %30 = zext i8 %15 to i32
  %31 = add nuw nsw i32 %29, %30
  %32 = zext i8 %19 to i32
  %33 = add nuw nsw i32 %31, %32
  %34 = zext i8 %23 to i32
  %35 = add nuw nsw i32 %33, %34
  %36 = call i8 @llvm.umax.i8(i8 %11, i8 %7)
  %37 = call i8 @llvm.umax.i8(i8 %15, i8 %36)
  %38 = call i8 @llvm.umax.i8(i8 %19, i8 %37)
  %39 = call i8 @llvm.umax.i8(i8 %23, i8 %38)
  %40 = call i8 @llvm.umin.i8(i8 %11, i8 %7)
  %41 = call i8 @llvm.umin.i8(i8 %15, i8 %40)
  %42 = call i8 @llvm.umin.i8(i8 %19, i8 %41)
  %43 = call i8 @llvm.umin.i8(i8 %23, i8 %42)
  %44 = load i8, ptr %3, align 1
  %45 = zext i8 %44 to i32
  %46 = add nuw nsw i32 %35, %45
  %47 = call i8 @llvm.umin.i8(i8 %44, i8 %43)
  %48 = call i8 @llvm.umax.i8(i8 %44, i8 %39)
  %49 = zext i8 %48 to i32
  %50 = zext i8 %47 to i32
  %51 = add nuw nsw i32 %50, %49
  %52 = sub nsw i32 %46, %51
  br label %53

53:                                               ; preds = %26, %22, %18, %14, %10, %6, %1
  %54 = phi i32 [ %52, %26 ], [ %4, %1 ], [ %8, %6 ], [ %12, %10 ], [ %16, %14 ], [ %20, %18 ], [ %24, %22 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @generic_set_freq(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  %37 = alloca i8, align 1
  %38 = alloca i8, align 1
  %39 = alloca i8, align 1
  %40 = alloca i8, align 1
  %41 = alloca i8, align 1
  %42 = alloca i8, align 1
  %43 = alloca i8, align 1
  %44 = alloca i8, align 1
  %45 = alloca i8, align 1
  %46 = alloca i8, align 1
  %47 = alloca i8, align 1
  %48 = alloca i8, align 1
  %49 = alloca [5 x i8], align 1
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %49) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %49, i8 0, i32 5, i1 false) #8, !annotation !8
  br label %85

55:                                               ; preds = %6
  %56 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2
  %57 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 11
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %55
  %66 = phi i32 [ %64, %62 ], [ -1, %55 ]
  %67 = load i8, ptr %56, align 4
  %68 = zext i8 %67 to i32
  %69 = udiv i32 %1, 1000
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %58, i32 noundef %66, i32 noundef %68, i32 noundef %69, i32 noundef %2) #9
  %71 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %49) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %49, i8 0, i32 5, i1 false) #8, !annotation !8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %65
  %74 = load ptr, ptr %57, align 4
  %75 = load ptr, ptr %59, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %75, i32 0, i32 11
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi i32 [ %79, %77 ], [ -1, %73 ]
  %82 = load i8, ptr %56, align 4
  %83 = zext i8 %82 to i32
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %74, i32 noundef %81, i32 noundef %83) #9
  br label %85

85:                                               ; preds = %80, %65, %54
  switch i32 %5, label %88 [
    i32 8, label %94
    i32 1, label %86
    i32 18, label %87
  ]

86:                                               ; preds = %85
  br label %94

87:                                               ; preds = %85
  br label %94

88:                                               ; preds = %85
  %89 = icmp ult i32 %2, 7
  br i1 %89, label %94, label %90

90:                                               ; preds = %88
  %91 = icmp eq i32 %2, 7
  %92 = select i1 %91, i32 63000000, i32 68500000
  %93 = select i1 %91, i8 42, i8 11
  br label %94

94:                                               ; preds = %90, %88, %87, %86, %85
  %95 = phi i32 [ 5070000, %86 ], [ 4063000, %87 ], [ 4063000, %85 ], [ 3570000, %88 ], [ 4570000, %90 ]
  %96 = phi i32 [ 73500000, %86 ], [ 55000000, %87 ], [ 59000000, %85 ], [ 56000000, %88 ], [ %92, %90 ]
  %97 = phi i8 [ 11, %86 ], [ 106, %87 ], [ 106, %85 ], [ 107, %88 ], [ %93, %90 ]
  %98 = phi i8 [ 64, %86 ], [ 64, %87 ], [ 64, %85 ], [ 96, %88 ], [ 96, %90 ]
  %99 = phi i8 [ 0, %86 ], [ -128, %87 ], [ -128, %85 ], [ 0, %88 ], [ 0, %90 ]
  %100 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(27) %100, ptr noundef nonnull align 1 dereferenceable(27) @r820t_init_array, i32 27, i1 false) #8
  %101 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 10
  %102 = load i8, ptr %101, align 1, !range !10
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 6
  %106 = load i32, ptr %105, align 8
  %107 = trunc i32 %106 to i8
  %108 = shl i8 %107, 1
  %109 = or i8 %108, -15
  br label %110

110:                                              ; preds = %104, %94
  %111 = phi i8 [ %109, %104 ], [ -16, %94 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %48) #8
  store i8 %111, ptr %48, align 1
  %112 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 12, ptr noundef nonnull %48, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %48) #8
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %289, label %114

114:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %47) #8
  %115 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 14
  %116 = load i8, ptr %115, align 1
  %117 = and i8 %116, -64
  %118 = or i8 %117, 49
  store i8 %118, ptr %47, align 1
  %119 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 19, ptr noundef nonnull %47, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %47) #8
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %289, label %121

121:                                              ; preds = %114
  %122 = icmp eq i32 %3, 2
  br i1 %122, label %130, label %123

123:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %46) #8
  %124 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 24
  %125 = load i8, ptr %124, align 1
  %126 = and i8 %125, -57
  store i8 %126, ptr %46, align 1
  %127 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 29, ptr noundef nonnull %46, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %46) #8
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %289, label %129

129:                                              ; preds = %123
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  br label %130

130:                                              ; preds = %129, %121
  %131 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 8
  store i32 %95, ptr %131, align 8
  %132 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 15
  %133 = load i32, ptr %132, align 8
  %134 = icmp eq i32 %133, %3
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  switch i32 %3, label %223 [
    i32 2, label %136
    i32 3, label %140
  ]

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 16
  %138 = load i64, ptr %137, align 8
  %139 = icmp eq i64 %138, %4
  br i1 %139, label %223, label %148

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 14
  %142 = load i32, ptr %141, align 4
  %143 = icmp eq i32 %142, %5
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 17
  %146 = load i32, ptr %145, align 8
  %147 = icmp eq i32 %146, %2
  br i1 %147, label %223, label %148

148:                                              ; preds = %144, %140, %136, %130
  %149 = load i32, ptr @debug, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %166, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2
  %153 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.i2c_adapter, ptr %156, i32 0, i32 11
  %160 = load i32, ptr %159, align 4
  br label %161

161:                                              ; preds = %158, %151
  %162 = phi i32 [ %160, %158 ], [ -1, %151 ]
  %163 = load i8, ptr %152, align 4
  %164 = zext i8 %163 to i32
  %165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %154, i32 noundef %162, i32 noundef %164) #9
  br label %166

166:                                              ; preds = %161, %148
  %167 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 6
  %168 = and i8 %97, 96
  %169 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 10
  %170 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 11
  %171 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 11
  %172 = getelementptr inbounds [5 x i8], ptr %49, i32 0, i32 4
  %173 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 9
  br label %174

174:                                              ; preds = %219, %166
  %175 = phi i1 [ true, %166 ], [ false, %219 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %45) #8
  %176 = load i8, ptr %167, align 1
  %177 = and i8 %176, -97
  %178 = or i8 %177, %168
  store i8 %178, ptr %45, align 1
  %179 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 11, ptr noundef nonnull %45, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %45) #8
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %289, label %181

181:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %44) #8
  %182 = load i8, ptr %169, align 1
  %183 = or i8 %182, 4
  store i8 %183, ptr %44, align 1
  %184 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 15, ptr noundef nonnull %44, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %44) #8
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %289, label %186

186:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %43) #8
  %187 = load i8, ptr %170, align 1
  %188 = and i8 %187, -4
  store i8 %188, ptr %43, align 1
  %189 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 16, ptr noundef nonnull %43, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %43) #8
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %289, label %191

191:                                              ; preds = %186
  %192 = call fastcc i32 @r820t_set_pll(ptr noundef %51, i32 noundef %96) #8
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %289, label %194

194:                                              ; preds = %191
  %195 = load i8, ptr %171, align 2, !range !10
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %291, label %197

197:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %42) #8
  %198 = load i8, ptr %167, align 1
  %199 = or i8 %198, 16
  store i8 %199, ptr %42, align 1
  %200 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 11, ptr noundef nonnull %42, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %42) #8
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %289, label %202

202:                                              ; preds = %197
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %41) #8
  %203 = load i8, ptr %167, align 1
  %204 = and i8 %203, -17
  store i8 %204, ptr %41, align 1
  %205 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 11, ptr noundef nonnull %41, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %41) #8
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %289, label %207

207:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %40) #8
  %208 = load i8, ptr %169, align 1
  %209 = and i8 %208, -5
  store i8 %209, ptr %40, align 1
  %210 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 15, ptr noundef nonnull %40, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %40) #8
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %289, label %212

212:                                              ; preds = %207
  %213 = call fastcc i32 @r820t_read(ptr noundef %51, ptr noundef nonnull %49, i32 noundef 5) #8
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %289, label %215

215:                                              ; preds = %212
  %216 = load i8, ptr %172, align 1
  %217 = and i8 %216, 15
  store i8 %217, ptr %173, align 4
  %218 = trunc i8 %216 to i4
  switch i4 %218, label %220 [
    i4 0, label %219
    i4 -1, label %219
  ]

219:                                              ; preds = %215, %215
  br i1 %175, label %174, label %220

220:                                              ; preds = %219, %215
  %221 = icmp eq i8 %217, 15
  br i1 %221, label %222, label %223

222:                                              ; preds = %220
  store i8 0, ptr %173, align 4
  br label %223

223:                                              ; preds = %222, %220, %144, %136, %135
  %224 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 9
  %225 = load i8, ptr %224, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %39) #8
  %226 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 5
  %227 = load i8, ptr %226, align 1
  %228 = and i8 %227, -32
  %229 = and i8 %225, 15
  %230 = or i8 %229, %228
  %231 = or i8 %230, 16
  store i8 %231, ptr %39, align 1
  %232 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 10, ptr noundef nonnull %39, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %39) #8
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %289, label %234

234:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %38) #8
  %235 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 6
  %236 = load i8, ptr %235, align 1
  %237 = and i8 %236, 16
  %238 = or i8 %237, %97
  store i8 %238, ptr %38, align 1
  %239 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 11, ptr noundef nonnull %38, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %38) #8
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %289, label %241

241:                                              ; preds = %234
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #8
  %242 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 2
  %243 = load i8, ptr %242, align 1
  %244 = and i8 %243, 127
  store i8 %244, ptr %37, align 1
  %245 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 7, ptr noundef nonnull %37, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #8
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %289, label %247

247:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %36) #8
  %248 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 1
  %249 = load i8, ptr %248, align 1
  %250 = and i8 %249, -49
  %251 = or i8 %250, 16
  store i8 %251, ptr %36, align 1
  %252 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 6, ptr noundef nonnull %36, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %36) #8
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %289, label %254

254:                                              ; preds = %247
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #8
  %255 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 25
  %256 = load i8, ptr %255, align 1
  %257 = and i8 %256, -97
  %258 = or i8 %257, %98
  store i8 %258, ptr %35, align 1
  %259 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 30, ptr noundef nonnull %35, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #8
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %289, label %261

261:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %34) #8
  %262 = load i8, ptr %100, align 1
  %263 = and i8 %262, 127
  store i8 %263, ptr %34, align 1
  %264 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 5, ptr noundef nonnull %34, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #8
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %289, label %266

266:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %33) #8
  %267 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 26
  %268 = load i8, ptr %267, align 1
  %269 = and i8 %268, 127
  store i8 %269, ptr %33, align 1
  %270 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 31, ptr noundef nonnull %33, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #8
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %289, label %272

272:                                              ; preds = %266
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %32) #8
  %273 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 10
  %274 = load i8, ptr %273, align 1
  %275 = and i8 %274, 127
  %276 = or i8 %275, %99
  store i8 %276, ptr %32, align 1
  %277 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 15, ptr noundef nonnull %32, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %32) #8
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %289, label %279

279:                                              ; preds = %272
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %31) #8
  %280 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 20
  %281 = load i8, ptr %280, align 1
  %282 = or i8 %281, 96
  store i8 %282, ptr %31, align 1
  %283 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 25, ptr noundef nonnull %31, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #8
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 14
  store i32 %5, ptr %286, align 4
  store i32 %3, ptr %132, align 8
  %287 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 16
  store i64 %4, ptr %287, align 8
  %288 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 17
  store i32 %2, ptr %288, align 8
  br label %291

289:                                              ; preds = %279, %272, %266, %261, %254, %247, %241, %234, %223, %212, %207, %202, %197, %191, %186, %181, %174, %123, %114, %110
  %290 = phi i32 [ %283, %279 ], [ %277, %272 ], [ %270, %266 ], [ %264, %261 ], [ %259, %254 ], [ %252, %247 ], [ %245, %241 ], [ %239, %234 ], [ %232, %223 ], [ %127, %123 ], [ %119, %114 ], [ %112, %110 ], [ %213, %212 ], [ %210, %207 ], [ %205, %202 ], [ %200, %197 ], [ %192, %191 ], [ %189, %186 ], [ %184, %181 ], [ %179, %174 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %49) #8
  br label %530

291:                                              ; preds = %285, %194
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %49) #8
  %292 = icmp eq i64 %4, 8388608
  %293 = and i1 %122, %292
  %294 = load i32, ptr %131, align 8
  %295 = sub i32 0, %294
  %296 = select i1 %293, i32 %295, i32 %294
  %297 = add i32 %296, %1
  %298 = call fastcc i32 @r820t_set_mux(ptr noundef %51, i32 noundef %297)
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %530, label %300

300:                                              ; preds = %291
  %301 = call fastcc i32 @r820t_set_pll(ptr noundef %51, i32 noundef %297)
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %530, label %303

303:                                              ; preds = %300
  %304 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 11
  %305 = load i8, ptr %304, align 2, !range !10
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %549, label %307

307:                                              ; preds = %303
  %308 = load i32, ptr @debug, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %325, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2
  %312 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 3
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = icmp eq ptr %315, null
  br i1 %316, label %320, label %317

317:                                              ; preds = %310
  %318 = getelementptr inbounds %struct.i2c_adapter, ptr %315, i32 0, i32 11
  %319 = load i32, ptr %318, align 4
  br label %320

320:                                              ; preds = %317, %310
  %321 = phi i32 [ %319, %317 ], [ -1, %310 ]
  %322 = load i8, ptr %311, align 4
  %323 = zext i8 %322 to i32
  %324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %313, i32 noundef %321, i32 noundef %323) #9
  br label %325

325:                                              ; preds = %320, %307
  switch i32 %5, label %330 [
    i32 3, label %326
    i32 1, label %329
    i32 8, label %328
  ]

326:                                              ; preds = %325
  switch i32 %1, label %327 [
    i32 818000000, label %330
    i32 666000000, label %330
    i32 506000000, label %330
  ]

327:                                              ; preds = %326
  br label %330

328:                                              ; preds = %325
  br label %330

329:                                              ; preds = %325
  br label %330

330:                                              ; preds = %329, %328, %327, %326, %326, %326, %325
  %331 = phi i8 [ 32, %329 ], [ 32, %328 ], [ 32, %327 ], [ 16, %326 ], [ 16, %326 ], [ 16, %326 ], [ 32, %325 ]
  %332 = phi i8 [ 56, %329 ], [ 56, %328 ], [ 56, %327 ], [ 40, %326 ], [ 40, %326 ], [ 40, %326 ], [ 56, %325 ]
  %333 = phi i8 [ 48, %329 ], [ 48, %328 ], [ 48, %327 ], [ 32, %326 ], [ 32, %326 ], [ 32, %326 ], [ 48, %325 ]
  %334 = phi i8 [ 98, %329 ], [ 117, %328 ], [ 83, %327 ], [ 83, %326 ], [ 83, %326 ], [ 83, %326 ], [ 83, %325 ]
  %335 = phi i8 [ 96, %329 ], [ 0, %328 ], [ 0, %327 ], [ 0, %326 ], [ 0, %326 ], [ 0, %326 ], [ 0, %325 ]
  %336 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 1
  %337 = load ptr, ptr %336, align 8
  %338 = getelementptr inbounds %struct.r820t_config, ptr %337, i32 0, i32 4
  %339 = load i8, ptr %338, align 4, !range !10
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %347, label %341

341:                                              ; preds = %330
  %342 = getelementptr inbounds %struct.r820t_config, ptr %337, i32 0, i32 2
  %343 = load i32, ptr %342, align 4
  switch i32 %343, label %347 [
    i32 0, label %344
    i32 4, label %344
    i32 5, label %344
  ]

344:                                              ; preds = %341, %341, %341
  %345 = icmp ugt i32 %1, 32000000
  %346 = select i1 %345, i8 0, i8 96
  br label %347

347:                                              ; preds = %344, %341, %330
  %348 = phi i8 [ %346, %344 ], [ %335, %330 ], [ %335, %341 ]
  %349 = getelementptr inbounds %struct.r820t_config, ptr %337, i32 0, i32 5
  %350 = load i8, ptr %349, align 1, !range !10
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %358, label %352

352:                                              ; preds = %347
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %30) #8
  %353 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 1
  %354 = load i8, ptr %353, align 1
  %355 = or i8 %354, 64
  store i8 %355, ptr %30, align 1
  %356 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 6, ptr noundef nonnull %30, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %30) #8
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %530, label %358

358:                                              ; preds = %352, %347
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #8
  %359 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 24
  %360 = load i8, ptr %359, align 1
  %361 = and i8 %360, 56
  %362 = or i8 %361, -59
  store i8 %362, ptr %29, align 1
  %363 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 29, ptr noundef nonnull %29, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #8
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %530, label %365

365:                                              ; preds = %358
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #8
  %366 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 23
  %367 = load i8, ptr %366, align 1
  %368 = and i8 %367, 7
  %369 = or i8 %368, %331
  store i8 %369, ptr %28, align 1
  %370 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 28, ptr noundef nonnull %28, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #8
  %371 = icmp slt i32 %370, 0
  br i1 %371, label %530, label %372

372:                                              ; preds = %365
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27) #8
  store i8 %334, ptr %27, align 1
  %373 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 13, ptr noundef nonnull %27, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27) #8
  %374 = icmp slt i32 %373, 0
  br i1 %374, label %530, label %375

375:                                              ; preds = %372
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #8
  store i8 117, ptr %26, align 1
  %376 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 14, ptr noundef nonnull %26, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #8
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %530, label %378

378:                                              ; preds = %375
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #8
  %379 = load i8, ptr %100, align 1
  %380 = and i8 %379, -97
  %381 = and i8 %348, 96
  %382 = or i8 %380, %381
  store i8 %382, ptr %25, align 1
  %383 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 5, ptr noundef nonnull %25, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #8
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %530, label %385

385:                                              ; preds = %378
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #8
  %386 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 1
  %387 = load i8, ptr %386, align 1
  %388 = and i8 %387, -9
  store i8 %388, ptr %24, align 1
  %389 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 6, ptr noundef nonnull %24, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #8
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %530, label %391

391:                                              ; preds = %385
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #8
  %392 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 12
  %393 = load i8, ptr %392, align 1
  %394 = and i8 %393, -57
  %395 = or i8 %394, %332
  store i8 %395, ptr %23, align 1
  %396 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 17, ptr noundef nonnull %23, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #8
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %530, label %398

398:                                              ; preds = %391
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #8
  %399 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 18
  %400 = load i8, ptr %399, align 1
  %401 = and i8 %400, -49
  %402 = or i8 %401, %333
  store i8 %402, ptr %22, align 1
  %403 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 23, ptr noundef nonnull %22, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #8
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %530, label %405

405:                                              ; preds = %398
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #8
  %406 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 5
  %407 = load i8, ptr %406, align 1
  %408 = and i8 %407, -97
  %409 = or i8 %408, 64
  store i8 %409, ptr %21, align 1
  %410 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 10, ptr noundef nonnull %21, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #8
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %530, label %412

412:                                              ; preds = %405
  %413 = load i32, ptr @debug, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %430, label %415

415:                                              ; preds = %412
  %416 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2
  %417 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 3
  %418 = load ptr, ptr %417, align 4
  %419 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 1
  %420 = load ptr, ptr %419, align 4
  %421 = icmp eq ptr %420, null
  br i1 %421, label %425, label %422

422:                                              ; preds = %415
  %423 = getelementptr inbounds %struct.i2c_adapter, ptr %420, i32 0, i32 11
  %424 = load i32, ptr %423, align 4
  br label %425

425:                                              ; preds = %422, %415
  %426 = phi i32 [ %424, %422 ], [ -1, %415 ]
  %427 = load i8, ptr %416, align 4
  %428 = zext i8 %427 to i32
  %429 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %418, i32 noundef %426, i32 noundef %428) #9
  br label %430

430:                                              ; preds = %425, %412
  br i1 %122, label %476, label %431

431:                                              ; preds = %430
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #8
  %432 = load i8, ptr %359, align 1
  %433 = and i8 %432, -57
  store i8 %433, ptr %20, align 1
  %434 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 29, ptr noundef nonnull %20, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #8
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %530, label %436

436:                                              ; preds = %431
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #8
  %437 = load i8, ptr %366, align 1
  %438 = and i8 %437, -5
  store i8 %438, ptr %19, align 1
  %439 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 28, ptr noundef nonnull %19, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #8
  %440 = icmp slt i32 %439, 0
  br i1 %440, label %530, label %441

441:                                              ; preds = %436
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #8
  %442 = load i8, ptr %386, align 1
  %443 = and i8 %442, -65
  store i8 %443, ptr %18, align 1
  %444 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 6, ptr noundef nonnull %18, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #8
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %530, label %446

446:                                              ; preds = %441
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #8
  %447 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 21
  %448 = load i8, ptr %447, align 1
  %449 = or i8 %448, 48
  store i8 %449, ptr %17, align 1
  %450 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 26, ptr noundef nonnull %17, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #8
  %451 = icmp slt i32 %450, 0
  br i1 %451, label %530, label %452

452:                                              ; preds = %446
  call void @msleep(i32 noundef 250) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #8
  %453 = load i8, ptr %359, align 1
  %454 = and i8 %453, -57
  %455 = or i8 %454, 24
  store i8 %455, ptr %16, align 1
  %456 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 29, ptr noundef nonnull %16, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #8
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %530, label %458

458:                                              ; preds = %452
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #8
  %459 = load i8, ptr %366, align 1
  %460 = or i8 %459, 4
  store i8 %460, ptr %15, align 1
  %461 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 28, ptr noundef nonnull %15, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #8
  %462 = icmp slt i32 %461, 0
  br i1 %462, label %530, label %463

463:                                              ; preds = %458
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #8
  %464 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 25
  %465 = load i8, ptr %464, align 1
  %466 = and i8 %465, -32
  %467 = or i8 %466, 14
  store i8 %467, ptr %14, align 1
  %468 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 30, ptr noundef nonnull %14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #8
  %469 = icmp slt i32 %468, 0
  br i1 %469, label %530, label %470

470:                                              ; preds = %463
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #8
  %471 = load i8, ptr %447, align 1
  %472 = and i8 %471, -49
  %473 = or i8 %472, 32
  store i8 %473, ptr %13, align 1
  %474 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 26, ptr noundef nonnull %13, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #8
  %475 = icmp slt i32 %474, 0
  br i1 %475, label %530, label %511

476:                                              ; preds = %430
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  %477 = load i8, ptr %386, align 1
  %478 = and i8 %477, -65
  store i8 %478, ptr %12, align 1
  %479 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 6, ptr noundef nonnull %12, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  %480 = icmp slt i32 %479, 0
  br i1 %480, label %530, label %481

481:                                              ; preds = %476
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  %482 = load i8, ptr %359, align 1
  %483 = and i8 %482, -57
  %484 = or i8 %483, 32
  store i8 %484, ptr %11, align 1
  %485 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 29, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  %486 = icmp slt i32 %485, 0
  br i1 %486, label %530, label %487

487:                                              ; preds = %481
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #8
  %488 = load i8, ptr %366, align 1
  %489 = or i8 %488, 4
  store i8 %489, ptr %10, align 1
  %490 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 28, ptr noundef nonnull %10, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #8
  %491 = icmp slt i32 %490, 0
  br i1 %491, label %530, label %492

492:                                              ; preds = %487
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #8
  %493 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 25
  %494 = load i8, ptr %493, align 1
  %495 = and i8 %494, -32
  %496 = or i8 %495, 14
  store i8 %496, ptr %9, align 1
  %497 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 30, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #8
  %498 = icmp slt i32 %497, 0
  br i1 %498, label %530, label %499

499:                                              ; preds = %492
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #8
  %500 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 21
  %501 = load i8, ptr %500, align 1
  %502 = and i8 %501, -49
  store i8 %502, ptr %8, align 1
  %503 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 26, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #8
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %530, label %505

505:                                              ; preds = %499
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  %506 = getelementptr %struct.r820t_priv, ptr %51, i32 0, i32 4, i32 11
  %507 = load i8, ptr %506, align 1
  %508 = and i8 %507, -5
  store i8 %508, ptr %7, align 1
  %509 = call fastcc i32 @r820t_write(ptr noundef %51, i8 noundef zeroext 16, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %530, label %511

511:                                              ; preds = %505, %470
  %512 = load i32, ptr @debug, align 4
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %549, label %514

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2
  %516 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 3
  %517 = load ptr, ptr %516, align 4
  %518 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 1
  %519 = load ptr, ptr %518, align 4
  %520 = icmp eq ptr %519, null
  br i1 %520, label %524, label %521

521:                                              ; preds = %514
  %522 = getelementptr inbounds %struct.i2c_adapter, ptr %519, i32 0, i32 11
  %523 = load i32, ptr %522, align 4
  br label %524

524:                                              ; preds = %521, %514
  %525 = phi i32 [ %523, %521 ], [ -1, %514 ]
  %526 = load i8, ptr %515, align 4
  %527 = zext i8 %526 to i32
  %528 = call fastcc i32 @r820t_read_gain(ptr noundef %51)
  %529 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %517, i32 noundef %525, i32 noundef %527, ptr noundef nonnull @__func__.generic_set_freq, i32 noundef %1, i32 noundef %528) #9
  br label %549

530:                                              ; preds = %505, %499, %492, %487, %481, %476, %470, %463, %458, %452, %446, %441, %436, %431, %405, %398, %391, %385, %378, %375, %372, %365, %358, %352, %300, %291, %289
  %531 = phi i32 [ %298, %291 ], [ %301, %300 ], [ %290, %289 ], [ %509, %505 ], [ %503, %499 ], [ %497, %492 ], [ %490, %487 ], [ %485, %481 ], [ %479, %476 ], [ %474, %470 ], [ %468, %463 ], [ %461, %458 ], [ %456, %452 ], [ %450, %446 ], [ %444, %441 ], [ %439, %436 ], [ %434, %431 ], [ %410, %405 ], [ %403, %398 ], [ %396, %391 ], [ %389, %385 ], [ %383, %378 ], [ %376, %375 ], [ %373, %372 ], [ %370, %365 ], [ %363, %358 ], [ %356, %352 ]
  %532 = load i32, ptr @debug, align 4
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %549, label %534

534:                                              ; preds = %530
  %535 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2
  %536 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 3
  %537 = load ptr, ptr %536, align 4
  %538 = getelementptr inbounds %struct.r820t_priv, ptr %51, i32 0, i32 2, i32 1
  %539 = load ptr, ptr %538, align 4
  %540 = icmp eq ptr %539, null
  br i1 %540, label %544, label %541

541:                                              ; preds = %534
  %542 = getelementptr inbounds %struct.i2c_adapter, ptr %539, i32 0, i32 11
  %543 = load i32, ptr %542, align 4
  br label %544

544:                                              ; preds = %541, %534
  %545 = phi i32 [ %543, %541 ], [ -1, %534 ]
  %546 = load i8, ptr %535, align 4
  %547 = zext i8 %546 to i32
  %548 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %537, i32 noundef %545, i32 noundef %547, ptr noundef nonnull @__func__.generic_set_freq, i32 noundef %531) #9
  br label %549

549:                                              ; preds = %544, %530, %524, %511, %303
  %550 = phi i32 [ %531, %544 ], [ %531, %530 ], [ 0, %524 ], [ 0, %511 ], [ 0, %303 ]
  ret i32 %550
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @r820t_read_gain(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call fastcc i32 @r820t_read(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4)
  %4 = icmp slt i32 %3, 0
  %5 = getelementptr inbounds [4 x i8], ptr %2, i32 0, i32 3
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 1
  %9 = and i32 %8, 16
  %10 = lshr i32 %7, 4
  %11 = or i32 %9, %10
  %12 = select i1 %4, i32 %3, i32 %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 2851674}
!10 = !{i8 0, i8 2}
